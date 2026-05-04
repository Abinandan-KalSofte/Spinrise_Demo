VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmPurchaseBillMultiple_Saranya 
   Caption         =   "Purchase Bills - Multiple Lot(s)"
   ClientHeight    =   9060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12435
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9060
   ScaleWidth      =   12435
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   12180
      Top             =   945
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command7 
      Caption         =   "&Report"
      Default         =   -1  'True
      Height          =   405
      Left            =   9795
      TabIndex        =   224
      Top             =   9720
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Frame Frame2 
      Caption         =   "old  calculation"
      Height          =   3300
      Left            =   12840
      TabIndex        =   166
      Top             =   1320
      Visible         =   0   'False
      Width           =   9765
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   10
         Left            =   4845
         MaxLength       =   9
         TabIndex        =   183
         Top             =   1185
         Width           =   1230
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         CausesValidation=   0   'False
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   11
         Left            =   4815
         MaxLength       =   9
         TabIndex        =   182
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   12
         Left            =   7575
         MaxLength       =   10
         TabIndex        =   181
         Top             =   1950
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   14
         Left            =   2130
         MaxLength       =   9
         TabIndex        =   180
         Top             =   1545
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   17
         Left            =   2145
         MaxLength       =   9
         TabIndex        =   179
         Top             =   2295
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   13
         Left            =   0
         MaxLength       =   9
         TabIndex        =   178
         Top             =   1905
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   16
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   177
         Top             =   1575
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   20
         Left            =   4830
         MaxLength       =   10
         TabIndex        =   176
         Top             =   1965
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   18
         Left            =   4830
         MaxLength       =   9
         TabIndex        =   175
         Top             =   2325
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   15
         Left            =   4845
         MaxLength       =   9
         TabIndex        =   174
         Top             =   1575
         Width           =   1245
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   19
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   173
         Top             =   1185
         Width           =   1200
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   21
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   172
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
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
         Height          =   330
         Index           =   31
         Left            =   8520
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   171
         Top             =   2880
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   32
         Left            =   7560
         MaxLength       =   12
         TabIndex        =   170
         Top             =   2385
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   33
         Left            =   2130
         MaxLength       =   10
         TabIndex        =   169
         Top             =   2805
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   5
         Left            =   4275
         MaxLength       =   9
         TabIndex        =   168
         Top             =   1185
         Width           =   495
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   36
         Left            =   3720
         MaxLength       =   9
         TabIndex        =   167
         Top             =   1185
         Width           =   450
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         Caption         =   "Spot Expenses"
         Height          =   195
         Left            =   120
         TabIndex        =   197
         Top             =   1965
         Width           =   1065
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 1"
         Height          =   195
         Left            =   135
         TabIndex        =   196
         Top             =   2355
         Width           =   1095
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Railway Freight"
         Height          =   195
         Left            =   135
         TabIndex        =   195
         Top             =   1620
         Width           =   1080
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Over Due Interest"
         Height          =   195
         Left            =   6180
         TabIndex        =   194
         Top             =   2040
         Width           =   1260
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "cen vat"
         Height          =   195
         Left            =   3405
         TabIndex        =   193
         Top             =   855
         Width           =   540
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Insurance Amount"
         Height          =   195
         Left            =   6195
         TabIndex        =   192
         Top             =   1620
         Width           =   1290
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg."
         Height          =   195
         Left            =   165
         TabIndex        =   191
         Top             =   2865
         Width           =   660
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Broker Commission"
         Height          =   195
         Left            =   3375
         TabIndex        =   190
         Top             =   1980
         Width           =   1335
      End
      Begin VB.Label Label32 
         AutoSize        =   -1  'True
         Caption         =   "AED"
         Height          =   195
         Left            =   6255
         TabIndex        =   189
         Top             =   810
         Width           =   330
      End
      Begin VB.Label Label33 
         AutoSize        =   -1  'True
         Caption         =   "Lorry Freight"
         Height          =   195
         Left            =   6225
         TabIndex        =   188
         Top             =   1260
         Width           =   870
      End
      Begin VB.Label Label34 
         AutoSize        =   -1  'True
         Caption         =   "Loading/Unloading Charges"
         Height          =   390
         Left            =   3375
         TabIndex        =   187
         Top             =   1530
         Width           =   1440
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label35 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 2"
         Height          =   195
         Left            =   3390
         TabIndex        =   186
         Top             =   2325
         Width           =   1095
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Landed Cost"
         Height          =   195
         Left            =   6225
         TabIndex        =   185
         Top             =   2430
         Width           =   900
      End
      Begin VB.Label Label50 
         AutoSize        =   -1  'True
         Caption         =   "Sales Tax Amount"
         Height          =   195
         Left            =   2130
         TabIndex        =   184
         Top             =   1245
         Width           =   1290
      End
   End
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   0
      TabIndex        =   112
      Top             =   -120
      Width           =   12030
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   4740
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   260
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   5835
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   232
         ToolTipText     =   "List (Ctrl L)"
         Top             =   60
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":07D9
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":0AE3
         Style           =   1  'Graphical
         TabIndex        =   231
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":0E5D
         Height          =   510
         Index           =   5
         Left            =   1620
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":12A7
         Style           =   1  'Graphical
         TabIndex        =   230
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":160C
         Height          =   495
         Index           =   6
         Left            =   2160
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":1A56
         Style           =   1  'Graphical
         TabIndex        =   229
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":1DA3
         Height          =   510
         Index           =   4
         Left            =   1635
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":20AD
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":2442
         Height          =   510
         Index           =   7
         Left            =   2670
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":288C
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":2BDC
         Height          =   510
         Index           =   11
         Left            =   5280
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":3026
         Style           =   1  'Graphical
         TabIndex        =   81
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":33BB
         Height          =   510
         Index           =   9
         Left            =   3735
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":36C5
         Style           =   1  'Graphical
         TabIndex        =   79
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":3A67
         Height          =   510
         Index           =   8
         Left            =   3195
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":3EB1
         Style           =   1  'Graphical
         TabIndex        =   78
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   6360
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":4213
         Style           =   1  'Graphical
         TabIndex        =   82
         ToolTipText     =   "Puchase Bill Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":4655
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":495F
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":4CF2
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
         Left            =   1080
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":4FFC
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":5398
         Height          =   510
         Index           =   10
         Left            =   4215
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":56A2
         Style           =   1  'Graphical
         TabIndex        =   80
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
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
         Left            =   7125
         TabIndex        =   114
         Top             =   210
         Width           =   615
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   9660
         TabIndex        =   113
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   149
      Top             =   8760
      Width           =   12435
      _ExtentX        =   21934
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12348
            MinWidth        =   12348
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "04/01/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:43 AM"
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
      Height          =   8580
      Left            =   480
      TabIndex        =   115
      Top             =   945
      Width           =   10545
      _ExtentX        =   18600
      _ExtentY        =   15134
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "frmPurchaseBillMultiple_Saranya.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "FrmMultipleLot"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame FrmMultipleLot 
         Height          =   2745
         Left            =   120
         TabIndex        =   244
         Top             =   30
         Width           =   10320
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   1995
            Left            =   0
            TabIndex        =   250
            Top             =   690
            Width           =   10275
            _Version        =   524288
            _ExtentX        =   18124
            _ExtentY        =   3519
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
            SpreadDesigner  =   "frmPurchaseBillMultiple_Saranya.frx":5A3A
            AppearanceStyle =   0
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00C0C0C0&
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
            Left            =   2670
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   246
            TabStop         =   0   'False
            Text            =   " "
            Top             =   240
            Width           =   6960
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
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
            Index           =   81
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   245
            TabStop         =   0   'False
            Top             =   240
            Width           =   1275
         End
         Begin VB.Label Label74 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   240
            Left            =   120
            TabIndex        =   251
            Top             =   255
            Width           =   975
         End
      End
      Begin VB.Frame Frame7 
         Height          =   2670
         Left            =   120
         TabIndex        =   116
         Top             =   45
         Width           =   9750
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "rateunit"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   80
            Left            =   7575
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   242
            TabStop         =   0   'False
            Top             =   1095
            Width           =   2085
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "sno"
            Height          =   300
            Index           =   45
            Left            =   4290
            MaxLength       =   5
            TabIndex        =   96
            Top             =   1410
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Index           =   3
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   95
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1650
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00E0E0E0&
            Height          =   315
            ItemData        =   "frmPurchaseBillMultiple_Saranya.frx":5E8E
            Left            =   8580
            List            =   "frmPurchaseBillMultiple_Saranya.frx":5E9B
            Style           =   2  'Dropdown List
            TabIndex        =   98
            Top             =   1410
            Width           =   1065
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "bales"
            Height          =   300
            Index           =   22
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   99
            TabStop         =   0   'False
            Top             =   1725
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "cntcode"
            Height          =   300
            Index           =   30
            Left            =   6525
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   97
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1035
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   93
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1095
            Width           =   4620
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   91
            TabStop         =   0   'False
            Text            =   " "
            Top             =   780
            Width           =   7755
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   89
            TabStop         =   0   'False
            Text            =   " "
            Top             =   465
            Width           =   7755
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "TAREWT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   24
            Left            =   6525
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   101
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "areacd"
            Height          =   300
            Index           =   28
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   92
            TabStop         =   0   'False
            Top             =   1095
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "brkcd"
            Height          =   300
            Index           =   27
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   90
            TabStop         =   0   'False
            Top             =   780
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            Height          =   300
            Index           =   26
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   88
            TabStop         =   0   'False
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "LOTNO"
            Height          =   300
            Index           =   2
            Left            =   2790
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   84
            TabStop         =   0   'False
            Top             =   150
            Width           =   780
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "varcode"
            Height          =   300
            Index           =   29
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   94
            TabStop         =   0   'False
            Top             =   1410
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   300
            Index           =   25
            Left            =   8580
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   102
            TabStop         =   0   'False
            Top             =   1740
            Width           =   1065
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "GRSWT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   23
            Left            =   4290
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   100
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "CATCD"
            Height          =   300
            Index           =   0
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   83
            TabStop         =   0   'False
            Top             =   150
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            Height          =   300
            Index           =   1
            Left            =   6615
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   86
            TabStop         =   0   'False
            Top             =   150
            Width           =   945
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   300
            Index           =   0
            Left            =   8535
            TabIndex        =   87
            Top             =   150
            Width           =   1110
            _ExtentX        =   1958
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "lotdt"
            Height          =   300
            Index           =   1
            Left            =   4425
            TabIndex        =   85
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Unit"
            Height          =   195
            Index           =   6
            Left            =   6600
            TabIndex        =   243
            Top             =   1155
            Width           =   810
         End
         Begin VB.Label Label20 
            Caption         =   "SNo."
            Height          =   195
            Left            =   3765
            TabIndex        =   151
            Top             =   1470
            Width           =   495
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   7695
            TabIndex        =   134
            Top             =   1455
            Width           =   285
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            Height          =   195
            Left            =   5655
            TabIndex        =   133
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
            Height          =   195
            Index           =   0
            Left            =   150
            TabIndex        =   132
            Top             =   825
            Width           =   510
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            Height          =   195
            Left            =   150
            TabIndex        =   131
            Top             =   1140
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   150
            TabIndex        =   130
            Top             =   480
            Width           =   570
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            Height          =   195
            Left            =   2055
            TabIndex        =   126
            Top             =   225
            Width           =   525
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   150
            TabIndex        =   125
            Top             =   1455
            Width           =   480
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   3150
            TabIndex        =   124
            Top             =   1800
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   7680
            TabIndex        =   123
            Top             =   1785
            Width           =   810
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   5445
            TabIndex        =   122
            Top             =   1755
            Width           =   885
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   150
            TabIndex        =   121
            Top             =   1770
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   5445
            TabIndex        =   120
            Top             =   1455
            Width           =   915
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            Height          =   195
            Left            =   3705
            TabIndex        =   119
            Top             =   225
            Width           =   615
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7680
            TabIndex        =   118
            Top             =   225
            Width           =   345
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   150
            TabIndex        =   117
            Top             =   180
            Width           =   630
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   5715
         Left            =   120
         TabIndex        =   135
         Top             =   2760
         Width           =   10320
         _ExtentX        =   18203
         _ExtentY        =   10081
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         TabCaption(0)   =   "&Purchase Bill Details"
         TabPicture(0)   =   "frmPurchaseBillMultiple_Saranya.frx":5EAF
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "DTPicker2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame8"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).ControlCount=   2
         TabCaption(1)   =   "&More Details"
         TabPicture(1)   =   "frmPurchaseBillMultiple_Saranya.frx":5ECB
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame4"
         Tab(1).ControlCount=   1
         Begin VB.Frame Frame4 
            Height          =   5040
            Left            =   -74940
            TabIndex        =   198
            Top             =   315
            Width           =   9630
            Begin VB.Frame Frame25 
               Caption         =   "GST"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00C000C0&
               Height          =   555
               Left            =   120
               TabIndex        =   270
               Top             =   2760
               Width           =   9465
               Begin VB.TextBox txtfields 
                  DataField       =   "TCS_AMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   104
                  Left            =   8310
                  MaxLength       =   15
                  TabIndex        =   281
                  Top             =   120
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "tcs_per"
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
                  Index           =   103
                  Left            =   7680
                  MaxLength       =   9
                  TabIndex        =   280
                  Top             =   120
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   102
                  Left            =   5400
                  MaxLength       =   9
                  TabIndex        =   279
                  Top             =   165
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   101
                  Left            =   3120
                  MaxLength       =   9
                  TabIndex        =   278
                  Top             =   165
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   100
                  Left            =   720
                  MaxLength       =   9
                  TabIndex        =   277
                  Top             =   165
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "CGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   118
                  Left            =   1380
                  MaxLength       =   15
                  TabIndex        =   273
                  Top             =   150
                  Width           =   1035
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "SGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   117
                  Left            =   3750
                  MaxLength       =   15
                  TabIndex        =   272
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "IGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   116
                  Left            =   6030
                  MaxLength       =   15
                  TabIndex        =   271
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.Label Label1 
                  AutoSize        =   -1  'True
                  Caption         =   "TCS"
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
                  Index           =   1
                  Left            =   7200
                  TabIndex        =   282
                  Top             =   195
                  Width           =   315
               End
               Begin VB.Label Label1 
                  AutoSize        =   -1  'True
                  Caption         =   "CGST"
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
                  Index           =   58
                  Left            =   150
                  TabIndex        =   276
                  Top             =   210
                  Width           =   435
               End
               Begin VB.Label Label1 
                  AutoSize        =   -1  'True
                  Caption         =   "SGST"
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
                  Index           =   59
                  Left            =   2490
                  TabIndex        =   275
                  Top             =   240
                  Width           =   435
               End
               Begin VB.Label Label1 
                  AutoSize        =   -1  'True
                  Caption         =   "IGST"
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
                  Index           =   61
                  Left            =   4920
                  TabIndex        =   274
                  Top             =   240
                  Width           =   405
               End
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SICAAmt"
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
               Height          =   315
               Index           =   97
               Left            =   5310
               MaxLength       =   15
               TabIndex        =   265
               Top             =   2400
               Width           =   1125
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCPER"
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
               Index           =   94
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   47
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SCAMT"
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
               Index           =   93
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   48
               Top             =   1305
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "brkcomPer"
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
               Index           =   91
               Left            =   4455
               MaxLength       =   9
               TabIndex        =   259
               Top             =   4155
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "addtaxper"
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
               Index           =   79
               Left            =   4695
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   52
               TabStop         =   0   'False
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "addtaxamount"
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
               Index           =   77
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   53
               Top             =   1665
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "addtaxcode"
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
               Index           =   42
               Left            =   3960
               MaxLength       =   9
               TabIndex        =   51
               Top             =   1665
               Width           =   720
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "OTHERTaxableAmt"
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
               Left            =   7755
               MaxLength       =   15
               TabIndex        =   69
               Top             =   3810
               Width           =   1800
            End
            Begin VB.Frame Frame22 
               Height          =   435
               Left            =   6300
               TabIndex        =   237
               Top             =   120
               Width           =   3240
               Begin VB.OptionButton optBefore 
                  Caption         =   "Before Discount"
                  Height          =   225
                  Left            =   135
                  TabIndex        =   28
                  Top             =   150
                  Value           =   -1  'True
                  Width           =   1455
               End
               Begin VB.OptionButton optAfter 
                  Caption         =   "After Discount"
                  Height          =   195
                  Left            =   1665
                  TabIndex        =   29
                  Top             =   165
                  Width           =   1455
               End
            End
            Begin VB.Frame Frame10 
               Height          =   435
               Left            =   1335
               TabIndex        =   236
               Top             =   120
               Width           =   3405
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "DutyPer"
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
                  Height          =   285
                  Index           =   109
                  Left            =   2760
                  MaxLength       =   6
                  TabIndex        =   27
                  Top             =   120
                  Width           =   600
               End
               Begin VB.OptionButton opt_nc 
                  Caption         =   "No"
                  Height          =   195
                  Left            =   270
                  TabIndex        =   25
                  Top             =   180
                  Value           =   -1  'True
                  Width           =   855
               End
               Begin VB.OptionButton opt_c 
                  Caption         =   "Yes"
                  Height          =   225
                  Left            =   1215
                  TabIndex        =   26
                  Top             =   165
                  Width           =   660
               End
               Begin VB.Label lblDutyPer 
                  Caption         =   "Duty %"
                  Enabled         =   0   'False
                  Height          =   195
                  Left            =   2070
                  TabIndex        =   239
                  Top             =   165
                  Width           =   525
               End
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "taxamt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   330
               Index           =   34
               Left            =   8535
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   75
               TabStop         =   0   'False
               Top             =   4725
               Visible         =   0   'False
               Width           =   1170
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "LANDCOSTWITHTAX"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   330
               Index           =   35
               Left            =   7740
               MaxLength       =   15
               TabIndex        =   74
               Top             =   4530
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CSTAMT"
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
               Index           =   87
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   50
               Top             =   1665
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CSTPER"
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
               Index           =   86
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   49
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Tradedisamt"
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
               Index           =   85
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   33
               Top             =   585
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Tradedisper"
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
               Index           =   84
               Left            =   4695
               MaxLength       =   9
               TabIndex        =   32
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "LRFRTPER"
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
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   34
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "LRFRTAMT"
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
               Index           =   38
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   35
               Top             =   585
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "tax_code"
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
               Index           =   83
               Left            =   3930
               MaxLength       =   9
               TabIndex        =   44
               Top             =   1305
               Width           =   720
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "cashdisper"
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
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   30
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "cashdisamt"
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
               Index           =   54
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   31
               Top             =   585
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "DNAMT1"
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
               Left            =   1335
               MaxLength       =   15
               TabIndex        =   64
               Top             =   3450
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CUSTOMSDUTYAMT"
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
               Left            =   1335
               MaxLength       =   15
               TabIndex        =   67
               Top             =   3810
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "OTHERSAMT"
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
               Index           =   67
               Left            =   1335
               MaxLength       =   15
               TabIndex        =   70
               Top             =   4170
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CLEARANCEAMT"
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
               Left            =   4440
               MaxLength       =   15
               TabIndex        =   68
               Top             =   3810
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "DAMAGEAMT"
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
               Left            =   7755
               MaxLength       =   15
               TabIndex        =   66
               Top             =   3450
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CHARITYAMT"
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
               Left            =   4440
               MaxLength       =   15
               TabIndex        =   65
               Top             =   3450
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "LCINTAMT"
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
               Index           =   62
               Left            =   1965
               MaxLength       =   15
               TabIndex        =   63
               Top             =   2400
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "LCINTPER"
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
               Left            =   1320
               MaxLength       =   9
               TabIndex        =   62
               Top             =   2400
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "COMMAMT"
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
               Index           =   60
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   59
               Top             =   2025
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "COMMPER"
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
               Left            =   4695
               MaxLength       =   9
               TabIndex        =   58
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "INSAMT"
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
               Index           =   58
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   57
               Top             =   2025
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "INSPER"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   57
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   56
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "RLYFRTAMT"
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
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   61
               Top             =   2025
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "RLYFRTPER"
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
               Index           =   44
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   60
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "OTHTAXAMT"
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
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   55
               Top             =   1665
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "OTHTAXPER"
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
               Index           =   52
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   54
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "vatamt"
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
               Index           =   55
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   46
               Top             =   1305
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "tax_per"
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
               Index           =   56
               Left            =   4695
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   45
               TabStop         =   0   'False
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CESSAMT"
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
               Index           =   65
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   39
               Top             =   945
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "CESSPER"
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
               Index           =   68
               Left            =   4695
               MaxLength       =   9
               TabIndex        =   38
               Top             =   945
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "AEDAMT"
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
               Index           =   71
               Left            =   1995
               MaxLength       =   15
               TabIndex        =   43
               Top             =   1305
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "AEDPER"
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
               Index           =   72
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   42
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SEDAMT"
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
               Index           =   73
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   41
               Top             =   945
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "SEDPER"
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
               Index           =   74
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   40
               Top             =   945
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "bedamt"
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
               Index           =   75
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   37
               Top             =   945
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "ratekg"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.0000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   76
               Left            =   4440
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   73
               Top             =   4530
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "TOTLANDCOST"
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
               Index           =   78
               Left            =   1335
               MaxLength       =   15
               TabIndex        =   72
               Top             =   4530
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "brkcom"
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
               Index           =   82
               Left            =   5085
               MaxLength       =   15
               TabIndex        =   71
               Top             =   4170
               Width           =   1150
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "BEDPER"
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
               Index           =   88
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   36
               Top             =   945
               Width           =   615
            End
            Begin VB.Label Label82 
               AutoSize        =   -1  'True
               Caption         =   "SICA Amount"
               Height          =   195
               Left            =   3210
               TabIndex        =   266
               Top             =   2430
               Width           =   945
            End
            Begin VB.Label Label78 
               AutoSize        =   -1  'True
               Caption         =   "Surcharge"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   261
               Top             =   1373
               Width           =   735
            End
            Begin VB.Label lblAddTax 
               AutoSize        =   -1  'True
               Caption         =   "Add. Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   3210
               TabIndex        =   241
               Top             =   1740
               Width           =   645
            End
            Begin VB.Label Label73 
               AutoSize        =   -1  'True
               Caption         =   "Others (Taxable)"
               Height          =   195
               Left            =   6360
               TabIndex        =   240
               Top             =   3870
               Width           =   1170
            End
            Begin VB.Label Label111 
               Caption         =   "Tax Calculation?"
               Height          =   285
               Left            =   4920
               TabIndex        =   238
               Top             =   270
               Width           =   1335
            End
            Begin VB.Label Label71 
               Caption         =   "Duty Claimable?"
               Height          =   270
               Left            =   105
               TabIndex        =   235
               Top             =   285
               Width           =   1365
            End
            Begin VB.Label Label48 
               AutoSize        =   -1  'True
               Caption         =   "Vat Amt"
               Height          =   195
               Left            =   7500
               TabIndex        =   223
               Top             =   4830
               Visible         =   0   'False
               Width           =   555
            End
            Begin VB.Label Label49 
               Caption         =   "Landed Cost WithTax"
               ForeColor       =   &H00FF0000&
               Height          =   360
               Left            =   6360
               TabIndex        =   222
               Top             =   4470
               Width           =   1290
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label92 
               AutoSize        =   -1  'True
               Caption         =   "CST"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   221
               Top             =   1710
               Width           =   315
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "Trade Discount"
               Height          =   195
               Left            =   3225
               TabIndex        =   220
               Top             =   645
               Width           =   1215
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label51 
               AutoSize        =   -1  'True
               Caption         =   "Lorry Freight"
               Height          =   195
               Left            =   6495
               TabIndex        =   219
               Top             =   653
               Width           =   870
            End
            Begin VB.Label Label52 
               AutoSize        =   -1  'True
               Caption         =   "Cash Discount"
               Height          =   195
               Left            =   105
               TabIndex        =   218
               Top             =   630
               Width           =   1035
            End
            Begin VB.Label Label56 
               AutoSize        =   -1  'True
               Caption         =   "Dr. Note Amount"
               Height          =   195
               Left            =   105
               TabIndex        =   217
               Top             =   3510
               Width           =   1185
            End
            Begin VB.Label Label55 
               AutoSize        =   -1  'True
               Caption         =   "Customs Duty"
               Height          =   195
               Left            =   105
               TabIndex        =   216
               Top             =   3870
               Width           =   975
            End
            Begin VB.Label Label53 
               Caption         =   "Others (Non-Taxable)"
               Height          =   390
               Left            =   105
               TabIndex        =   215
               Top             =   4125
               Width           =   1035
            End
            Begin VB.Label Label54 
               AutoSize        =   -1  'True
               Caption         =   "Clearance"
               Height          =   195
               Left            =   3225
               TabIndex        =   214
               Top             =   3810
               Width           =   720
            End
            Begin VB.Line Line2 
               X1              =   15
               X2              =   9855
               Y1              =   3360
               Y2              =   3360
            End
            Begin VB.Label Label57 
               AutoSize        =   -1  'True
               Caption         =   "Damage"
               Height          =   195
               Left            =   6360
               TabIndex        =   213
               Top             =   3510
               Width           =   600
            End
            Begin VB.Label Label58 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Left            =   3225
               TabIndex        =   212
               Top             =   3450
               Width           =   480
            End
            Begin VB.Label Label59 
               AutoSize        =   -1  'True
               Caption         =   "LC Interest"
               Height          =   330
               Left            =   120
               TabIndex        =   211
               Top             =   2460
               Width           =   765
            End
            Begin VB.Label Label60 
               AutoSize        =   -1  'True
               Caption         =   "Commission"
               Height          =   330
               Left            =   3210
               TabIndex        =   210
               Top             =   2055
               Width           =   825
            End
            Begin VB.Label Label61 
               AutoSize        =   -1  'True
               Caption         =   "Insurance"
               Height          =   330
               Left            =   105
               TabIndex        =   209
               Top             =   2040
               Width           =   705
            End
            Begin VB.Label Label62 
               Caption         =   "Railway Freight"
               Height          =   255
               Left            =   6495
               TabIndex        =   208
               Top             =   2063
               Width           =   1200
            End
            Begin VB.Label Label63 
               AutoSize        =   -1  'True
               Caption         =   "Other Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   207
               Top             =   1733
               Width           =   705
            End
            Begin VB.Label Label64 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   3225
               TabIndex        =   206
               Top             =   1380
               Width           =   270
            End
            Begin VB.Label Label65 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Enabled         =   0   'False
               Height          =   195
               Left            =   3225
               TabIndex        =   205
               Top             =   1005
               Width           =   345
            End
            Begin VB.Label Label66 
               AutoSize        =   -1  'True
               Caption         =   "Hs Cess"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   204
               Top             =   1335
               Width           =   585
            End
            Begin VB.Label Label67 
               AutoSize        =   -1  'True
               Caption         =   "Ed Cess"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   203
               Top             =   1013
               Width           =   615
            End
            Begin VB.Label Label69 
               AutoSize        =   -1  'True
               Caption         =   "Landed Cost"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   202
               Top             =   4605
               Width           =   900
            End
            Begin VB.Label Label72 
               AutoSize        =   -1  'True
               Caption         =   "Rate/Kg."
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3225
               TabIndex        =   201
               Top             =   4470
               Width           =   660
            End
            Begin VB.Label Label75 
               AutoSize        =   -1  'True
               Caption         =   "B.E.D"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   200
               Top             =   990
               Width           =   420
            End
            Begin VB.Label Label77 
               Caption         =   "Broker Commission"
               Height          =   420
               Left            =   3225
               TabIndex        =   199
               Top             =   4095
               Width           =   1185
            End
         End
         Begin VB.Frame Frame8 
            Height          =   5070
            Left            =   105
            TabIndex        =   136
            Top             =   570
            Width           =   10065
            Begin VB.CheckBox Chk_TDSManual 
               Caption         =   "TDS Manual Amt"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00C00000&
               Height          =   195
               Left            =   4680
               TabIndex        =   292
               Top             =   4380
               Width           =   1575
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TDS_AssAmt"
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
               Index           =   127
               Left            =   3255
               MaxLength       =   15
               TabIndex        =   288
               Top             =   4320
               Width           =   1395
            End
            Begin VB.CheckBox Chk_TDSFLAG 
               Caption         =   "TDS Eligible"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00C00000&
               Height          =   255
               Left            =   120
               TabIndex        =   287
               Top             =   4335
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TDSAMT"
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
               Index           =   128
               Left            =   8175
               MaxLength       =   15
               TabIndex        =   286
               Top             =   4320
               Width           =   1395
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TDS_Per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   16393
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   129
               Left            =   7515
               MaxLength       =   9
               TabIndex        =   285
               Top             =   4320
               Width           =   615
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
               Index           =   131
               Left            =   3270
               TabIndex        =   284
               Top             =   4680
               Width           =   2970
            End
            Begin VB.TextBox txtfields 
               DataField       =   "TDSTypeCode"
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
               Index           =   132
               Left            =   1695
               TabIndex        =   283
               Top             =   4680
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   99
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   269
               TabStop         =   0   'False
               Top             =   600
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "glcode"
               Height          =   315
               Index           =   98
               Left            =   1665
               MaxLength       =   100
               TabIndex        =   268
               Top             =   630
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   96
               Left            =   8250
               TabIndex        =   22
               Top             =   3600
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "PNETWT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   9
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   10
               Top             =   3255
               Width           =   1545
            End
            Begin VB.TextBox txtDBCRNt 
               Alignment       =   1  'Right Justify
               DataField       =   "dbamt"
               Height          =   315
               Left            =   8250
               Locked          =   -1  'True
               TabIndex        =   18
               TabStop         =   0   'False
               Top             =   2085
               Width           =   1410
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "pgrswt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   95
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   8
               Top             =   2490
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "ptarewt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   92
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   9
               Top             =   2880
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               DataField       =   "BRKCD"
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
               Index           =   90
               Left            =   1680
               TabIndex        =   12
               Top             =   3990
               Width           =   1545
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
               Index           =   89
               Left            =   3255
               TabIndex        =   257
               Top             =   3990
               Width           =   6435
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
               Index           =   40
               Left            =   3255
               TabIndex        =   233
               Top             =   1350
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "Form_Type"
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
               Index           =   39
               Left            =   1680
               TabIndex        =   3
               Top             =   1335
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "sampwt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   8
               Left            =   1680
               MaxLength       =   10
               TabIndex        =   11
               TabStop         =   0   'False
               Top             =   3615
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "fbillvalue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   47
               Left            =   8250
               TabIndex        =   21
               Top             =   3210
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "Quality"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   315
               Index           =   4
               Left            =   4890
               TabIndex        =   16
               Top             =   3600
               Width           =   1380
            End
            Begin VB.TextBox txtAdjValue 
               Alignment       =   1  'Right Justify
               DataField       =   "AdjValue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Left            =   8250
               MaxLength       =   12
               TabIndex        =   20
               Top             =   2835
               Width           =   1410
            End
            Begin VB.TextBox txtfields 
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
               Height          =   315
               Index           =   50
               Left            =   4890
               TabIndex        =   15
               Top             =   3210
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
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
               Height          =   315
               Index           =   49
               Left            =   4890
               TabIndex        =   14
               Top             =   2835
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "grswt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   48
               Left            =   4890
               TabIndex        =   13
               Top             =   2460
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               DataField       =   "fbillwt"
               Height          =   300
               Index           =   46
               Left            =   4920
               TabIndex        =   105
               Top             =   3645
               Visible         =   0   'False
               Width           =   1200
            End
            Begin VB.ComboBox Combo2 
               Height          =   315
               ItemData        =   "frmPurchaseBillMultiple_Saranya.frx":5EE7
               Left            =   8250
               List            =   "frmPurchaseBillMultiple_Saranya.frx":5EF1
               Locked          =   -1  'True
               TabIndex        =   17
               Top             =   1725
               Width           =   1440
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   7
               Left            =   8250
               MaxLength       =   12
               TabIndex        =   19
               Top             =   2475
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               DataField       =   "Fbillno"
               Height          =   315
               Index           =   6
               Left            =   1680
               MaxLength       =   20
               TabIndex        =   6
               Top             =   2085
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   303
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   104
               TabStop         =   0   'False
               Top             =   990
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "ptype"
               Height          =   315
               Index           =   302
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   2
               Top             =   975
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               DataField       =   "pjno"
               Height          =   315
               Index           =   304
               Left            =   1680
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   4
               Top             =   1710
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   301
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   103
               TabStop         =   0   'False
               Top             =   285
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "pjtc"
               Height          =   315
               Index           =   300
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   1
               Top             =   285
               Width           =   1545
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "pjdt"
               Height          =   315
               Index           =   3
               Left            =   4890
               TabIndex        =   5
               Top             =   1725
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               Height          =   315
               Index           =   2
               Left            =   4890
               TabIndex        =   7
               Top             =   2100
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   12
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSComCtl2.DTPicker DTPicker3 
               Height          =   315
               Left            =   4920
               TabIndex        =   23
               Top             =   2100
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   556
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   147914753
               CurrentDate     =   39955
            End
            Begin VB.Label Label99 
               AutoSize        =   -1  'True
               Caption         =   "TDS Assessable Value"
               Height          =   195
               Left            =   1560
               TabIndex        =   291
               Top             =   4380
               Width           =   1620
            End
            Begin VB.Label Label100 
               AutoSize        =   -1  'True
               Caption         =   "TDS Amount"
               Height          =   195
               Left            =   6360
               TabIndex        =   290
               Top             =   4380
               Width           =   915
            End
            Begin VB.Label Label101 
               Caption         =   "TDS Type"
               Height          =   195
               Left            =   120
               TabIndex        =   289
               Top             =   4710
               Width           =   1260
            End
            Begin VB.Label Label83 
               Caption         =   "Glcode"
               ForeColor       =   &H00FF0000&
               Height          =   225
               Left            =   135
               TabIndex        =   267
               Top             =   660
               Width           =   1365
            End
            Begin VB.Label Label81 
               AutoSize        =   -1  'True
               Caption         =   "Bill Value"
               Height          =   195
               Left            =   6465
               TabIndex        =   264
               Top             =   3660
               Width           =   645
            End
            Begin VB.Label Label80 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Net Weight"
               Height          =   195
               Left            =   90
               TabIndex        =   263
               Top             =   3315
               Width           =   1425
            End
            Begin VB.Label Label79 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Tare Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   262
               Top             =   2940
               Width           =   1500
            End
            Begin VB.Label Label76 
               Caption         =   "Broker"
               Height          =   195
               Left            =   105
               TabIndex        =   258
               Top             =   4020
               Width           =   1260
            End
            Begin VB.Label Label70 
               Caption         =   "Form Type"
               Height          =   195
               Left            =   105
               TabIndex        =   234
               Top             =   1425
               Width           =   1260
            End
            Begin VB.Label Label47 
               AutoSize        =   -1  'True
               Caption         =   "Quality Allowance"
               Height          =   195
               Left            =   3345
               TabIndex        =   165
               Top             =   3660
               Width           =   1260
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "Dr/Cr Note"
               Height          =   195
               Left            =   6480
               TabIndex        =   158
               Top             =   2160
               Width           =   780
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "Adjustment Value (+/-)"
               ForeColor       =   &H00000000&
               Height          =   195
               Left            =   6495
               TabIndex        =   157
               Top             =   2880
               Width           =   1575
            End
            Begin VB.Label Label42 
               AutoSize        =   -1  'True
               Caption         =   "Mill Net Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   156
               Top             =   3270
               Width           =   1080
            End
            Begin VB.Label Label41 
               AutoSize        =   -1  'True
               Caption         =   "Mill Tare Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   155
               Top             =   2895
               Width           =   1155
            End
            Begin VB.Label Label40 
               AutoSize        =   -1  'True
               Caption         =   "Mill Gross Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   154
               Top             =   2520
               Width           =   1230
            End
            Begin VB.Label Label28 
               AutoSize        =   -1  'True
               Caption         =   "MRN Value"
               Height          =   195
               Left            =   6480
               TabIndex        =   153
               Top             =   3270
               Width           =   825
            End
            Begin VB.Label Label27 
               AutoSize        =   -1  'True
               Caption         =   "Final Bill Wt."
               Height          =   195
               Left            =   3600
               TabIndex        =   152
               Top             =   3660
               Visible         =   0   'False
               Width           =   870
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "RG23A"
               Height          =   195
               Index           =   5
               Left            =   6480
               TabIndex        =   150
               Top             =   1785
               Width           =   525
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Sample Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   148
               Top             =   3675
               Width           =   1080
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Goss Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   147
               Top             =   2550
               Width           =   1530
            End
            Begin VB.Label Label31 
               AutoSize        =   -1  'True
               Caption         =   "Assessable Value"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   6480
               TabIndex        =   146
               Top             =   2520
               Width           =   1275
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Bill Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   145
               Top             =   2115
               Width           =   615
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Bill Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   142
               Top             =   2160
               Width           =   795
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Purchase Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   4
               Left            =   105
               TabIndex        =   141
               Top             =   1050
               Width           =   1080
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   139
               Top             =   1785
               Width           =   840
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   3
               Left            =   105
               TabIndex        =   138
               Top             =   1785
               Width           =   1020
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Transaction Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   2
               Left            =   105
               TabIndex        =   137
               Top             =   345
               Width           =   1245
            End
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   375
            Left            =   5040
            TabIndex        =   256
            Top             =   2160
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            Format          =   147914753
            CurrentDate     =   39955
         End
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2220
      TabIndex        =   159
      Top             =   3570
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         Height          =   615
         Left            =   2955
         Style           =   1  'Graphical
         TabIndex        =   162
         Top             =   1725
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4035
         Style           =   1  'Graphical
         TabIndex        =   161
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   160
         Top             =   930
         Width           =   1665
      End
      Begin VB.Label Label45 
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
         TabIndex        =   164
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2595
         TabIndex        =   163
         Top             =   1005
         Width           =   570
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   1800
      TabIndex        =   108
      Top             =   1920
      Visible         =   0   'False
      Width           =   8475
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3210
         Left            =   270
         TabIndex        =   144
         Top             =   720
         Width           =   7890
         _ExtentX        =   13917
         _ExtentY        =   5662
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
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
            Name            =   "Times New Roman"
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
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   4680
         TabIndex        =   143
         Top             =   4095
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   140
         Top             =   4080
         Width           =   1140
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
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
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   3525
         TabIndex        =   109
         Top             =   225
         Width           =   1380
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   1200
      TabIndex        =   107
      Top             =   1440
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KslList1 
         Height          =   3375
         Left            =   840
         TabIndex        =   127
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":5EFE
         Height          =   615
         Left            =   3015
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":62E4
         Style           =   1  'Graphical
         TabIndex        =   128
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "frmPurchaseBillMultiple_Saranya.frx":66AA
         Height          =   615
         Left            =   4770
         Picture         =   "frmPurchaseBillMultiple_Saranya.frx":6A8C
         Style           =   1  'Graphical
         TabIndex        =   129
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   3255
         Left            =   840
         TabIndex        =   111
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Label1"
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
         TabIndex        =   110
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame5 
      Height          =   630
      Left            =   3960
      TabIndex        =   225
      Top             =   3000
      Visible         =   0   'False
      Width           =   5460
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   227
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   226
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label68 
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
         TabIndex        =   228
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame14 
      Height          =   6345
      Left            =   600
      TabIndex        =   252
      Top             =   1680
      Visible         =   0   'False
      Width           =   9765
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
         Height          =   4620
         ItemData        =   "frmPurchaseBillMultiple_Saranya.frx":6E5F
         Left            =   0
         List            =   "frmPurchaseBillMultiple_Saranya.frx":6E61
         Style           =   1  'Checkbox
         TabIndex        =   247
         Top             =   960
         Width           =   9750
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
         Left            =   3480
         TabIndex        =   248
         Top             =   5760
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
         Left            =   5280
         TabIndex        =   249
         Top             =   5760
         Width           =   945
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H0000C000&
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
         Index           =   0
         Left            =   0
         TabIndex        =   255
         Top             =   690
         Width           =   9735
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H0000C000&
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
         Left            =   0
         TabIndex        =   254
         Top             =   480
         Width           =   9735
      End
      Begin VB.Label Label107 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         Caption         =   "*** Lot No. Listing ***"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   0
         TabIndex        =   253
         Top             =   105
         Width           =   9735
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Bills - Multiple Lot(s)"
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
      Left            =   480
      TabIndex        =   106
      Top             =   585
      Width           =   4035
   End
End
Attribute VB_Name = "frmPurchaseBillMultiple_Saranya"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'---------------------------------------------------------------------------------------
' Module    : frmPurchaseBill
' DateTime  : 07/12/2008 10:29
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoTestRs As Recordset
Dim rstFA As Recordset
Dim rstQry As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim dblDutyPer As Double
Dim iRow As Integer
Dim dSingleValue As Double
Dim ValueFLG, SuppType As String
Dim Sflg As String
Dim Opt As String
Dim DTCSAMT As Double
Dim oText As TextBox
Dim dblTotalLC As Double
Dim strDelType As String
Dim reason As String
Dim ATCS_ROFF As Integer
Dim DB As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Integer
Dim GT As Integer
Dim z As Integer
Dim QTY As Integer
Dim dLANDCOSTWITHTAX As Double
Dim oldgrs As Double
Dim oldtare As Double
Dim ORGAmt As Double
Dim delivery As String
Dim dblDuty, s As Double
Dim sCode As String
Dim GTax As String
Dim GAtax As String

Dim sLotno As String
Dim sLotDt As String
Dim sSLcode As String
Dim Scatcd As String
Dim sLotYear As String
Dim dCashDis As Double
Dim dTradeDis As Double
Dim dLryFgt As Double
Dim DBED As Double
Dim dCess As Double
Dim dEDCess As Double
Dim dHScess As Double
Dim dTax As Double
Dim dSC As Double
Dim dAddTax As Double
Dim dCST As Double
Dim dOtherTax As Double
Dim dRlyFrg As Double
Dim dInsurance As Double
Dim dComm As Double
Dim dLC As Double
Dim dDRnote As Double
Dim dDamage As Double
Dim dCustoms As Double
Dim dClearance As Double
Dim dOthersTaxable As Double
Dim dOthersNonTaxable As Double
Dim dBrokerComm As Double
Dim dFbillValue As Double
Dim dCharity As Double
Dim DDbamt As Double
Dim dSupWgt As Double
Dim dSupGWt As Double
Dim dSupTWt As Double
Dim dSupBValue As Double
Dim dFinGrsWgt As Double
Dim dFinTarWgt As Double
Dim dFinNetWgt As Double
Dim dSampleWgt As Double

Dim dAssValue As Double
Dim dADJValue As Double
Dim dCashPer As Double
Dim dTradePer As Double
Dim dLryFgtPer As Double
Dim DBEDPer As Double
Dim dCessPer As Double
Dim dEDCessPer As Double
Dim dHScessPer As Double
Dim dTaxPer As Double
Dim dAddTaxPer As Double
Dim dCSTPer As Double
Dim dOtherTaxPer As Double
Dim dRlyFrgPer As Double
Dim dInsurancePer As Double
Dim dCommPer As Double
Dim dLCPer As Double
Dim dSCper As Double
Dim DSICAAmt As Double
Dim CGSTPER, SGSTPER, IGSTPER, CGSTAMT, SGSTAMT, IGSTAMT As Double


Dim LANDCOST_ROFF As Integer
Dim ASSVAL_ROFF As Integer
Dim BED_ROFF As Integer
Dim AED_ROFF As Integer
Dim EDCESS_ROFF As Integer
Dim HSCESS_ROFF As Integer
Dim CESS_ROFF As Integer
Dim TAX_ROFF As Integer
Dim ADDTAX_ROFF As Integer
Dim SURCHARGE_ROFF As Integer

Dim dTDSAssAmt As Double
Dim DTDSAmt As Double


Const ILotNo          As Integer = 1
Const ILotdt          As Integer = 2
Const IVarcode        As Integer = 3
Const IVarName        As Integer = 4
Const Iunit           As Integer = 5
Const Icandyrate      As Integer = 6
Const IRebate         As Integer = 7
Const iQty            As Integer = 8
Const Imgrosswt       As Integer = 9
Const Imtarewt        As Integer = 10
Const Immoiturewt     As Integer = 11
Const Imnetwt         As Integer = 12
Const Ipgrosswt       As Integer = 13
Const Iptarewt        As Integer = 14
Const Ipnetwt         As Integer = 15
Const Iwbwt           As Integer = 16
Const Ipjamt          As Integer = 17
Const Icashdisper     As Integer = 18
Const Icashdisamt     As Integer = 19
Const Itradedisper    As Integer = 20
Const Itradedisamt    As Integer = 21
Const IFrtper         As Integer = 22
Const IFrtamt         As Integer = 23
Const IBedper         As Integer = 24
Const IBedamt         As Integer = 25
Const IEdper          As Integer = 26
Const IEdamt          As Integer = 27
Const IHscessper      As Integer = 28
Const IHscessamt      As Integer = 29
Const Icessper        As Integer = 30
Const Icessamt        As Integer = 31
Const ITaxCode        As Integer = 32
Const ITaxper         As Integer = 33
Const ITaxamt         As Integer = 34
Const ISCper          As Integer = 35
Const ISCamt          As Integer = 36
Const IHSN            As Integer = 37
Const ICGSTPER        As Integer = 38
Const ICGSTAMT        As Integer = 39
Const ISGSTPER        As Integer = 40
Const ISGSTAMT        As Integer = 41
Const IIGSTPER        As Integer = 42
Const IIGSTAMT        As Integer = 43

''Additional Tax Field Add For Kores

Dim IATaxCode       As Integer
Dim IATaxper        As Integer
Dim IATaxamt        As Integer

Dim IOthtaxPer      As Integer
Dim IothTaxamt      As Integer
Dim IRlyfrtper      As Integer
Dim IRlyfrtamt      As Integer
Dim IInsper         As Integer
Dim IInsamt         As Integer
Dim ICommper        As Integer
Dim ICommAMT        As Integer
Dim ILCper          As Integer
Dim ILCamt          As Integer
Dim Icharity        As Integer
Dim IOthTaxableAmt  As Integer
Dim IOthers         As Integer
Dim IcustomDuty     As Integer
Dim ILandedcost     As Integer
Dim IRateKG         As Integer
Dim IAcWgt          As Integer
Dim Iround          As Integer
Dim ISICAAmt        As Integer
Dim ITDSPER         As Integer
Dim ITDSAMT         As Integer
Dim ITDSASSAMT      As Integer

Dim itcsper As Integer
Dim itcsamt As Integer
Dim mfbillamt As Double

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Purchase Bill"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("rm_purtype", "Please Define Purchase Type") = False Then Exit Sub
    Opt = "add"
    Set rsg = New Recordset
    rsg.Open "select max(Pjdt) from Rm_Lot where divcode='" & Divcode & "' and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max PJV Date", vbInformation, head
                Screen.MousePointer = vbNormal
                Exit Sub
            End If
        End If
    End If
    Call AssignRoundoff
    desc.Caption = "Addition"
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = False
    BUTTON(10).Enabled = False
    
    Set rs1 = New Recordset
    rs1.Open "select isnull(max(sno),0)+1 AS SNO from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    txtfields(45).Text = rs1("SNO")
    txtfields(45).Locked = False
    txtfields(4).Text = ""
    txtfields(39).Locked = False
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = True
    BUTTON(12).Enabled = False
    BUTTON(9).Enabled = True
    BUTTON(3).Enabled = True
    
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,Assvalue,form_type,dutyclaimable, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SCPER,SCAMT,SuppBillValue,SICAAmt FROM RM_LOT WHERE divcode='" & Divcode & "' and OPFLG ='N' and PJNO is null", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
        DTPicker3.Enabled = True
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct a.supcd ""Supplier Code"",b.slname ""Supplier Name"" from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(PJNO,0)=0 and lottype='A'"
        ''Lookup.Query = "select lotno""Lot No."",lotdt""Lot Date"",plotno""Supplier Lot No."", inwardno ""Inward No."",a.supcd ""Supplier Code"",b.slname ""Supplier Name"",a.billno ""Bill No."" from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(PJNO,0)=0 and lottype='A' "
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        'Lookup.ALIGN = "900,1000,1200,1000,1000,2700,1000"
        LookUp.ALIGN = "1500,3500"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
                txtfields(81).Text = LookUp.Fields(0)
                Text4.Text = LookUp.Fields(1)
                Set rstQry = New Recordset
                rstQry.Open "select Fapostingflg from rm_param", DB, adOpenStatic
                qry = ""
                If rstQry(0) = "Y" Then
                    qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc,a.catcd from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.varcode=d.varcode AND e.varcode=d.varcode and a.contnum=d.contno and a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode AnD a.DIVCODE='" & Divcode & "' and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND isnull(a.PJNO,0)=0 and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' and isnull(faflag,'')<>'Y' Order by a.lotdt,a.lotno"
                Else
                    qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc,a.catcd from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.varcode=d.varcode AND e.varcode=d.varcode and a.contnum=d.contno AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode AnD a.DIVCODE='" & Divcode & "' and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND ISNULL(a.PJNO,0)=0  and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' Order by a.lotdt,a.lotno"
                End If
                
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                lblLabels(10).Caption = Space(1) & Padr("Mill", 6, " ") & Space(1) & Padr("Mill", 8, " ") & Space(2) & Padr("Supplier ", 8, " ") & Space(1) & Padr("Variety ", 14, " ") & Space(3) & Padr("Delivery", 8, " ") & Space(1) & Padr("Bill ", 6, " ") & Space(1) & Padr("Bill", 6, " ") & Space(3) & Padl("Rate/Kg", 7, " ") & Space(3) & Padl("Landed Cost", 13, " ") & Space(1) & Padr("Category", 15, " ")
                lblLabels(0).Caption = Space(1) & Padr("Lot No.", 6, " ") & Space(1) & Padr("Lot Date", 8, " ") & Space(2) & Padr("Lot No.", 8, " ") & Space(1) & Padr("Name", 14, " ") & Space(3) & Padr("Type", 8, " ") & Space(1) & Padr("No.", 6, " ") & Space(1) & Padr("Date", 9, " ") & Space(2) & Padr("", 8, " ") & Space(1) & Padr("", 12, " ")
                LstPO.Clear
                Do Until Lrs.EOF
                    LstPO.AddItem Padr(Lrs("lOTNO"), 5, " ") & Space(1) & Padr(Format(Lrs("LOTDT"), "dd/MM/yy"), 8, " ") & Space(2) & Padr(Lrs("PLOTNO"), 7, " ") & Space(1) & Padr(Lrs("Varname"), 15, " ") & Space(3) & Padr(Lrs("Deldesc"), 7, " ") & Space(1) & Padr(Lrs("bILLNO"), 6, " ") & Space(1) & Padr(Format(Lrs("BILLDT"), "dd/MM/yy"), 8, " ") & Space(1) & Padl(INF(Lrs("ratekg"), 4), 8, " ") & Space(1) & Padl(INF(Lrs("totlandcost"), 2), 14, " ") & Space(1) & Padr(Lrs("catcd"), 15, " ")
                    Lrs.MoveNext
                Loop
                
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                LstPO.SetFocus
                Exit Sub
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
   Else
        MsgBox "All Lots are used. Bill Entry not allowed!", vbInformation, head
        Exit Sub
   End If
Case 1
    'Modification
'    If UCase(CustID) <> "SKY" Then
'          Call QUERY_MODE
'          BUTTON(1).Enabled = False
'          Exit Sub
'    End If
    
    Opt = "mod"
    desc.Caption = "Modification"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Call AssignRoundoff
    'db.BeginTrans
    Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
    
    If adoPrimaryRS.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.Clear = True
        Set rstQry = New Recordset
        LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL AND isnull(AppFlg,'N') ='N' "
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and pjno=" & LookUp.Fields(0) & " and pjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))

            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            BUTTON(8).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = False
            BUTTON(6).Enabled = False
            disablcontls

        Else
            MsgBox "All Lots are used. Modification not allowed!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
   End If

Case 2
    'Deletion
    'If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    'db.BeginTrans
    Set adoPrimaryRS = New Recordset
    ''''adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and issbal is null and isswt is null and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    'adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
    
    
    If adoPrimaryRS.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL"       'KslList1.table = "rm_lot "
'        KslList1.listfield1 = "Lotno" '''''"cast(lotno as varchar) as Lotno"
'
'        'KslList1.listfield1 = "lotno"
'
'        KslList1.listfield2 = "Lotdt" '"convert(varchar,lotdt,103)"
'        Frame3.Visible = True
'        Frame3.ZOrder
        LookUp.Clear = True
        Set rstQry = New Recordset
        LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL AND isnull(AppFlg,'N') ='N' "
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
'            Opt = ""
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and pjno=" & LookUp.Fields(0) & " and pjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))

            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            BUTTON(8).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = False
        BUTTON(6).Enabled = False
        Else
            MsgBox "All Lots are used. Deletion not allowed!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
   End If
Case 3
    Opt = "Printing"
    desc.Caption = "Listing"
    Dim a, K, cou As Integer
    Dim TotAmt, totbed, totaed, tottax1, tottax2, totpkfwd1, totpkfwd2, totins1, totins2 As Double
    Dim totdis, totinvvalue, totsc, totasc, totfrgt1, totfrgt2, totroff, totnetval As Double
    Dim totwaybill, sno2 As Double
    totwaybill = 0
    sno2 = 1
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    z = 1
    'Open "C:\g1.TXT" For Output As #z
     Open KALFOLDERDATA & "\g1.TXT" For Output As #z
    Call header2(CInt(pg), CInt(co), Rs)
    
    co = co + 16
    Set Rs = New Recordset
    'rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,d.slname,f.areaname as station,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,rm_area f " & _
    '        "where  a.areacd=f.areacode and a.arrno=b.arrno and A.Catcd = c.Catcd And A.supcd = d.slcode and A.LOTNO=B.LOTNO AND A.SUPCD=B.SUPCD AND  a.divcode='" & Divcode & "' and a.lotno='" & txtfields(2) & "' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and a.arrno = '" & txtfields(1) & "' ", DB, adOpenStatic
    Rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO,B.CATNAME,A.BALES AS QUANTITY,a.Quality from rm_lot a,RM_CAT B " & _
            "where LOTYEAR='" & Year(yfdate) & "' AND A.CATCD=B.CATCD  AND  a.divcode='" & Divcode & "' and a.lotno='" & txtfields(2) & " ' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.dbamt is not null ", DB, adOpenStatic
   
Do While Not Rs.EOF
    'Set rsa = New Recordset
       
    Print #z, Space(5); Padl(sno2, 4, " "); Space(2); Padr(Rs("catname"), 8, " "); "-"; Space(1); Padr(Rs("varcode"), 12, " "); Space(1); Padl(Rs("quantity"), 10, " "); Space(1); Padl(INF(Rs("fnetwt"), 3), 12, " "); Space(2); Padl(INF(Rs("netwt"), 3), 12, " "); Space(2); Padl(INF(Rs("FBILLVALUE"), 2), 15, " "); Space(0); Padl(INF(Rs("netV"), 2), 16, " ")
    co = co + 1
    If co > PageLen Then
       pg = pg + 1
        co = 0
         Print #a, String(112, Chr(196))                    'Call header2(CInt(Pg), CInt(co))
        Print #a, Chr(12)
        co = co + 16
    End If
    Rs.MoveNext
    sno2 = sno2 + 1
    Loop
  
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z, Space(5); String(112, Chr(196))
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z, Chr(27) & "E" & Space(15) & "Prepared" & Space(15); "Checked" & Space(15) & "Manager" & Space(15) & "Director" & Chr(27) & "F"
    Print #z, Chr(12)
    Close #z
    z = FreeFile
'    Open "c:\g1.bat" For Output As #z
'    Print #z, "cd\"
'    Print #z, "c:"
'    Print #z, "cd\"
'    Print #z, "type g1.txt>prn"
'    Close #z
'    RPTV.txtfile = "c:\g1.txt"
'    RPTV.Batfile = "c:\g1.bat"
     Call KALBATPROCESS("g1")

Case 4

        Opt = "query"
        Frame6.Visible = True
        Frame6.ZOrder
        txtqry.Text = ""
        txtqry.SetFocus
        StatusBar1.Panels(2).Text = "Enter Any Lot Number to be Found out"

Case 9                               'Save
    
   If Opt = "add" Or Opt = "mod" Then

        If Opt = "add" Then
            Set Rs = New Recordset
            Rs.Open "SELECT pjno FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and pjno =" & val(txtfields(304).Text), DB, adOpenStatic

            If Rs.EOF = False Then
                MsgBox "P.J.V. Number is " & val(txtfields(304).Text), vbInformation, head
            End If

            Set Rs = New Recordset
            Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            txtfields(304).Text = Rs(0)
            If MaskEdBox1(3).Text = "__/__/____" Then MaskEdBox1(3).Text = pdate
            
            Set TmpRs = New Recordset
            TmpRs.Open "select count(*) from rm_lot where pjno is not NULL and SUPCD ='" & txtfields(81).Text & "' And BILLDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And BillNo ='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If TmpRs(0) > 0 Then
                MsgBox "Please enter valid Bill Number ", vbInformation, head
                SSTab2.Tab = 0
                txtfields(6).SetFocus
                Exit Sub
            End If
        End If
        
        If Trim(txtfields(6).Text) = "" Then
            MsgBox "Please enter the Bill Number", vbInformation, head
            txtfields(6).SetFocus
            Exit Sub
        End If
        If Chk_TDSFLAG.value = 1 And val(txtfields(128).Text) > 0 Then
        
            If Trim(txtfields(132).Text) = "" Then
                MsgBox "Please Select the TDS Type", vbInformation, head
                SSTab2.Tab = 0
                txtfields(132).Locked = False
                txtfields(132).SetFocus
                Exit Sub
            End If
            
            Set Rs222 = New Recordset
            Rs222.Open "select isnull(b.glcode,'') TDSGL from fa_slmas a inner join fa_tds_gl b on a.ORG_TYPE=b.ORG_TYPE where a.slcode='" & Trim(txtfields(81).Text) & "' and  tds_type='" & Trim(txtfields(132).Text) & "' ", DB, adOpenStatic
            If Rs222.EOF Then
                MsgBox "Please Map GL Code for selected TDS Type in FA Module", vbInformation, head
                SSTab2.Tab = 0
                txtfields(132).Locked = False
                txtfields(132).SetFocus
                Exit Sub
            End If
            
        End If
        
        If val(txtfields(96).Text) = 0 Then
            MsgBox "Please enter the Bill Value", vbInformation, head
            SSTab2.Tab = 0
            txtfields(96).SetFocus
            Exit Sub
        End If
        
        If Trim(txtfields(39).Text) = "" Then
            MsgBox "Please enter the Form Type", vbInformation, head
            SSTab2.Tab = 0
            txtfields(39).Locked = False
            txtfields(39).SetFocus
            Exit Sub
        End If
        DB.BeginTrans
        
        Call fbillamtcheck
        If mfbillamt <> val(txtfields(47)) Then
'            MsgBox "Final Bill Amount Not Tallied", vbInformation, head
'            Exit Sub
        End If
        intervalMinutes = -1
        Call SaveFunction

        intervalMinutes = -1
        
        'To Update Rm_Lot.AdjValue Field
                
        If Opt = "mod" Then
        
        '**************Deletetion for Modification
           'strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
           DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and pjvno = " & val(txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
           Set Rs = New Recordset
           Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
                
           Do While Not Rs.EOF
               DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
               Rs.MoveNext
           Loop

           'For i = 1 To spdVar.MaxRows
            '   DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,FAFLAG=NULL,adjvalue=0 WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, i)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, i), "yyyy-mm-dd") & "'")
           'Next
            Call delrg23c
         End If
           
           '***********************Deletion End********************
        
        '*****************   FOR VALUE ENTRY ADDITION MODE     ******************
        
        '*****************    IDENTIFY THE CORRECT FATC FROM RM_CAT****************
        Dim thistc As Integer
        Dim thisgl As String
        Dim thispjno As Integer
        Dim RsDrCr As Recordset
        Dim Drtc, Crtc
        Dim Narr, msg, Wsh
        Dim DrCrFlag As Boolean
        Dim Vcno
        
        thistc = 0
        thisgl = ""
        DrCrFlag = False
        intervalMinutes = -1
        Set Rs = New Recordset
        Rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & txtfields(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Trim(txtfields(300).Text) = "" Or IsNull(txtfields(300).Text) = True Then
            thistc = 0
        Else
            thistc = val(txtfields(300).Text)
        End If
        
        '****************** PURCHASE JOURNAL NUMBER GENERATION *********************
        Set frs = New Recordset
        frs.Open "select fainstal from rm_param", DB
        If frs(0) = "Y" Then
            Set rs1 = New Recordset
            rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", DB, adOpenStatic
            If Not rs1.EOF Then thisgl = rs1(0)
         
'               Debit/Credit Note Generation
            Set RsDrCr = New Recordset
            RsDrCr.Open "Select Drnote,CrNote From Fa_Param", DB, adOpenStatic, adLockOptimistic
            Drtc = RsDrCr("Drnote")
            Crtc = RsDrCr("Crnote")
        
            If UCase(CustID) = "SARANYA" Then
                Narr = "Purchase Bill to " & Trim(txtfields(26)) & ". Bill No. " & Trim(txtfields(6)) & " Dt. " & MaskEdBox1(2).Text
            Else
                Narr = "Purchase Bill to " & Trim(txtfields(26)) & ". Bill No. " & val(txtfields(304)) & " Dt. " & MaskEdBox1(3).Text
            End If
                
            If val(txtDBCRNt.Text) <> 0 Then
                SSTab1.Tab = 0
                If val(txtDBCRNt.Text) > 0 Then msg = "Raise Debit Note? " & val(txtDBCRNt.Text)
                If val(txtDBCRNt.Text) < 0 Then msg = "Raise Credit Note? " & val(txtDBCRNt.Text)
                Wsh = MsgBox(msg, vbQuestion + vbYesNo, head)
                
                reason = InputBox("Enrer the Reason", head, 1500, 3500)
                 '01/08/14
                 Narr = Narr & " - " & Trim(Mid(reason, 1, 100))
                                
                If Wsh = vbYes Then
                    DrCrFlag = True
                Else
                    DrCrFlag = False
                End If
            End If
            Dim DBCRAMT As Double
            Dim DCCGSTAMT As Double
            Dim DCSGSTAMT As Double
            Dim DCIGSTAMT As Double
            Dim DCCGSTAC As String
            Dim DCSGSTAC As String
            Dim DCIGSTAC As String
            
            DCCGSTAMT = (val(txtDBCRNt.Text) * val(txtfields(100).Text) / 100)
            DCSGSTAMT = (val(txtDBCRNt.Text) * val(txtfields(101).Text) / 100)
            DCIGSTAMT = (val(txtDBCRNt.Text) * val(txtfields(102).Text) / 100)
            
            Set Rs = New Recordset
            Rs.Open "SELECT CGSTGL,SGSTGL,IGSTGL FROM RM_PARAM_FA  WHERE divcode = '" & Divcode & "' and TCCODE=" & val(txtfields(300).Text) & "   ", DB
             DCCGSTAC = Rs(0)
             DCSGSTAC = Rs(1)
             DCIGSTAC = Rs(2)
            
            
            If DrCrFlag = True Then
                If val(txtDBCRNt.Text) > 0 Then        'Raise Debit NOte
                    DBCRAMT = val(val(txtDBCRNt.Text)) - (DCCGSTAMT + DCSGSTAMT + DCIGSTAMT) '27.10.17
                    
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Drtc & "' AND Divcode = '" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If

                    DB.Execute "INSERT INTO Fa_Jvhead " & _
                    "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
                    
                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,credit,crdrflg,amtdue) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                Trim(txtfields(81)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & Left(txtfields(24).Text, 1) & "'," & val(txtDBCRNt) & ")"
                    
                    If UCase(CustID) = "LMW" Then
                    '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", DB
                                If Not rscost.EOF Then
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,cccode) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & " )"
                                Else
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
                                End If
                    Else
                    
'                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
'                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
'                                thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
'                       27.10.17
                       
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',2,'" & _
                                thisgl & "','" & Narr & "'," & Abs(val(DBCRAMT)) & ")"
                    
                     If DCCGSTAMT > 0 Then
                     
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',3,'" & _
                                DCCGSTAC & "','" & Narr & "'," & Abs(val(DCCGSTAMT)) & ")"
                      
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',4,'" & _
                                DCSGSTAC & "','" & Narr & "'," & Abs(val(DCSGSTAMT)) & ")"
                    
                      Else
                         DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',3,'" & _
                                DCIGSTAC & "','" & Narr & "'," & Abs(val(DCIGSTAMT)) & ")"
                    
                      End If
                    
                    
                    
                    End If
                   
                                
                    DebitNote = True
                ElseIf val(txtDBCRNt.Text) < 0 Then    'Raise Credit NOte
                
                    DBCRAMT = val(val(txtDBCRNt.Text)) - (DCCGSTAMT + DCSGSTAMT + DCIGSTAMT) ''27.10.17
                    
                    
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Crtc & "' AND Divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If
                        
                       DB.Execute "INSERT INTO Fa_Jvhead " & _
                       "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                       Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
                       
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   Trim(txtfields(81)) & "','" & Narr & "'," & val(txtDBCRNt) & ")"  ''Trim(txtFields(26)
                                   
                       
                       
                        If UCase(CustID) = "LMW" Then
                                '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", DB
                                If Not rscost.EOF Then
                                   DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,CCCODE) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & ")"
                                Else
                                   DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ")"
                                End If
                                
                       Else
'                            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
'                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
'                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(txtFields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ")"
'
                                DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,credit,crdrflg,amtdue) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',2,'" & _
                                   thisgl & "','" & Narr & "'," & val(DBCRAMT) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(DBCRAMT)) & ")"
                                    
                                    
                                If DCCGSTAMT > 0 Then
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,credit,crdrflg,amtdue) VALUES ('" & _
                                    Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',3,'" & _
                                    DCCGSTAC & "','" & Narr & "'," & val(DCCGSTAMT) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(DCCGSTAMT)) & ")"
                
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,credit,crdrflg,amtdue) VALUES ('" & _
                                    Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',4,'" & _
                                    DCSGSTAC & "','" & Narr & "'," & val(DCSGSTAMT) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(DCSGSTAMT)) & ")"
                                Else
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,credit,crdrflg,amtdue) VALUES ('" & _
                                    Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',3,'" & _
                                    DCIGSTAC & "','" & Narr & "'," & val(DCIGSTAMT) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(DCIGSTAMT)) & ")"
                
                                End If
                                 
                                
                                
                       End If
                       
            
                      
                                   
                       CreditNote = True
                End If
            End If

'       UPDATING DR/CR NOTE DETAILS IN RM_LOT TABLE
            For iRow = 1 To spdVar.MaxRows
                Set Rs = New Recordset
                Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(GetText(spdVar, ILotdt, iRow), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(GetText(spdVar, ILotdt, iRow), "yyyy-MM-DD") & "'", DB, adOpenStatic
                If Rs.EOF = False Then
                    sLotYear = Year(Rs("AYFDATE"))
                Else
                    sLotYear = Year(GetText(spdVar, ILotdt, iC))
                End If
    
              strSQL = ""
              strSQL = " Update Rm_Lot Set SuppBillValue=" & val(txtfields(96).Text) & ",DBNO = " & val(Vcno) & ",DBAMT = " & Abs(val(txtDBCRNt)) & _
                      " ,bILLVALUE = " & val(txtfields(7).Text) & " , pjno=" & val(txtfields(304).Text) & " , pjtc='" & thistc & "' , pjdt='" & Format(MaskEdBox1(3).Text, "YYYY/MM/DD") & "',GLCODE='" & txtfields(98).Text & "' Where " & _
                      " LOTYEAR='" & sLotYear & "' AND Lotno =" & GetText(spdVar, ILotNo, iRow) & " and " & _
                      " LotDt ='" & Format(GetText(spdVar, ILotdt, iRow), "yyyy/mm/dd") & "' and  " & _
                      " Divcode ='" & Divcode & "' And OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iRow) & "' ANd lotyear='" & sLotYear & "'"
    
              DB.Execute strSQL
            Next
        End If
         
'        Set rstQry = New Recordset
'        rstQry.Open "SELECT FAPOSTINGFLG FROM RM_PARAM", db, adOpenStatic
'        If rstQry(0) = "N" Then

            thispjno = 0
            Dim prs As Recordset
            Set prs = New Recordset
            thispjno = val(txtfields(304).Text)
            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
        
            dblDutyPer = val(txtfields(109).Text)
        

            If Not Trim(txtfields(300).Text) = "" Then
                a11 = "Pur.Bill " & txtfields(6).Text & " Dt. " & Format(MaskEdBox1(2).Text, "dd-mm-yyyy") & " - " & Format(val(txtfields(50).Text), "0.000") & " Kgs."
                a12 = "" ''Trim(Text4.Text)
                a13 = a11 ''& " - " & a12
                Set Rs = New Recordset
                Rs.Open "Select CommInBillValue From RM_PARAM ", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,GLCODE,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,TCS_Amont,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(60).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & ", 0 ," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & "," & val(txtfields(98).Text) & " " & _
                               ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(104).Text)) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "')"
                     Else
                        strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,GLCODE,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,TCS_Amont,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(60).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text)) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & "," & val(txtfields(98).Text) & " " & _
                              ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(104).Text)) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "')"
                     End If
                     
                Else
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,GLCODE,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER ,TCS_Amont,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & ",0," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & "," & val(txtfields(98).Text) & "' " & _
                              ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(104).Text)) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "')"
                     Else
                      strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,GLCODE,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,TCS_Amont,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text)) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & "," & val(txtfields(98).Text) & " " & _
                             ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(104).Text)) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "')"
                    End If
                    
                End If

                DB.Execute strSQL
            End If
            
            strSQL = ""
         '   strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(Txtfields(50).Text) & "," & Round(val(Txtfields(78).Text) / val(Txtfields(50).Text), 4) & "," & val(Txtfields(7).Text) & ")"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
         '01/08/16
            strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1," & val(txtfields(98).Text) & ",'" & a13 & "'," & val(txtfields(50).Text) & "," & Round(val(txtfields(78).Text) / val(txtfields(50).Text), 4) & "," & val(txtfields(7).Text) & ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "')"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
            
            If Not Trim(txtfields(300).Text) = "" Then DB.Execute (strSQL)
'            If Not (Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True) Then
'                     DB.Execute ("UPDATE rm_lot SET pjtc = '" & thistc & "', pjno = " & thispjno & ", pjdt = '" & Format(MaskEdBox1(3).Text, "YYYY/MM/DD") & "' WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode ='" & Divcode & "' And catcd = '" & adoPrimaryRS("catcd") & "' And lotno = " & adoPrimaryRS("lotno") & " And lotdt = '" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'")
'            End If
            
'''''shiva 01.02.11
''            Set Rs = New Recordset
''            Rs.Open "select * from fa_cstrn where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thispjno & " and vocdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and trntype='PU'", db, adOpenDynamic, adLockOptimistic
''
''            If Not Rs.EOF Then
''                db.Execute "update fa_cstrn set narration1='" & a13 & "' where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thispjno & " and vocdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and trntype='PU'"
''            End If
''            db.Execute "UPDATE RM_LOT SET FAFLAG = 'Y' Where LOTYEAR='" & Year(yfdate) & "' AND PJNO =" & thispjno & " and LotDt ='" & Format(MaskEdBox1(3).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' "
''        Else
''                db.Execute "UPDATE RM_LOT SET FAFLAG = 'N' Where LOTYEAR='" & Year(yfdate) & "' AND PJNO =" & val(txtfields(304).Text) & " and PJDT ='" & Format(MaskEdBox1(3).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' "
''        End If
'''shiva 01.02.11

        '************************************************** For Rg23a ***********************
             If Combo2.Text = "Yes" Then
                 Call Rg23A
             End If
        '************************************************** For Rg23a ***********************
        'db.BeginTrans
         DB.CommitTrans
         
         '===============================================
        Dim frmFa As New frmFaPostingVerification
        frmFa.sTC = val(txtfields(300).Text)
        frmFa.sVocno = val(txtfields(304).Text)
        frmFa.sVocdt = Format(MaskEdBox1(3).Text, "dd/mm/yyyy")
        frmFa.sBillNo = txtfields(6).Text
        frmFa.sBillDt = Format(MaskEdBox1(2).Text, "dd/mm/yyyy")
        frmFa.sTrnType = "PU"
        frmFa.Show vbModal
        If Not frmFa.bolTally Then
            DB.BeginTrans
            Set frs = New Recordset
            frs.Open "select fainstal from rm_param", DB
            If frs(0) = "Y" Then
                strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
               DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               Set Rs = New Recordset
               Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
               Do While Not Rs.EOF
                   DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                   Rs.MoveNext
               Loop
            End If
            If Opt = "add" Or Opt = "mod" Then
                For I = 1 To spdVar.MaxRows
                    DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,GLCODE=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, I) & "'")
                   '***********************Deletion********************
                Next
            End If
            
            Call delrg23c
            If Opt = "add" Or Opt = "mod" Then
                MsgBox "Record(s) Deleted", vbInformation, head
            End If
            DB.CommitTrans
            Opt = ""
            Call query_mode
            Exit Sub
        End If
        '=================================================================================================================================================================================
        If DrCrFlag = True Then
            If DebitNote = True Then
                frmFa.sTC = Drtc
            ElseIf DebitNote = True Then
                frmFa.sTC = Crtc
            End If
            frmFa.sVocno = Vcno
            frmFa.sVocdt = Format(MaskEdBox1(3).Text, "dd/mm/yyyy")
            frmFa.sBillNo = val(txtfields(6).Text)
            frmFa.sBillDt = Format(MaskEdBox1(2).Text, "dd/mm/yyyy")
            frmFa.sTrnType = "JV"
            If DebitNote = True Then
                frmFa.Caption = "Debit Note Journal Posting"
            ElseIf DebitNote = True Then
                frmFa.Caption = "Credit Note Journal Posting"
            End If
            
            frmFa.Show vbModal
            If Not frmFa.bolTally Then
                DB.BeginTrans
                Set frs = New Recordset
                frs.Open "select fainstal from rm_param where divcode='" & Divcode & "'", DB
                If frs(0) = "Y" Then
                   strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
                   DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   Set Rs = New Recordset
                   Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
                   Do While Not Rs.EOF
                       DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                       Rs.MoveNext
                   Loop
                End If
                If Opt = "add" Or Opt = "mod" Then
                    For I = 1 To spdVar.MaxRows
                        DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, I) & "'")
                       '***********************Deletion********************
                    Next
                End If
                
                Call delrg23c
                If Opt = "add" Or Opt = "mod" Then
                    MsgBox "Record(s) Deleted", vbInformation, head
                End If
                DB.CommitTrans
                Opt = ""
                Call query_mode
                Exit Sub
            End If
        End If
        If Opt = "add" Then
            MsgBox "Record(s) Saved Successfully", vbInformation, head
        End If
        If Opt = "mod" Then
            MsgBox "Record(s) Modified Successfully", vbInformation, head
        End If
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        BUTTON(10).Enabled = False
    End If

    If Opt = "del" Then
        If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
        DB.BeginTrans
''        Set frs = New Recordset
''        frs.Open "select fainstal,FAPOSTINGFLG from rm_param", DB
''        If frs(0) = "Y" And frs(1) = "N" Then

           strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and pjvno = " & val(txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
           DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and pjvno = " & val(txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
           Set Rs = New Recordset
           Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
                
           Do While Not Rs.EOF
               DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(txtfields(300).Text) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
               Rs.MoveNext
           Loop
        
'''        End If
        
        For I = 1 To spdVar.MaxRows
        
            DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,FAFLAG=NULL,adjvalue=0,GLCODE=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode = '" & GetText(spdVar, IVarcode, iRow) & "' ")
           '***********************Deletion********************
        Next
        Call delrg23c
           '***********************Deletion********************
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
        
        Opt = ""
    End If
    'Return to query mode
    Call query_mode
    
    '07/06/12
    'Call NEWFORM1(BUTTON, GSNO)
    
    
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
      
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
  'GoTo gocancel
   End If
del:
If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    ' GoTo gocancel
    Exit Sub
End If
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    BUTTON(10).Enabled = False
    Opt = ""
    DTPicker3.Enabled = False
    BUTTON(6).Enabled = True
    BUTTON(12).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(11).Enabled = True
    Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
'Case 6 'movenext
'    BUTTON(5).Enabled = True
'    BUTTON(7).Enabled = True
'    If Not adoPrimaryRS.EOF Then
'    adoPrimaryRS.MoveNext
'    Else
'    BUTTON(6).Enabled = False
'    adoPrimaryRS.MoveLast
'    End If
'    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
'        BUTTON(8).Enabled = False
'        BUTTON(6).Enabled = False
'        Beep
'      Else
'        BUTTON(8).Enabled = True
'        BUTTON(6).Enabled = True
'      End If
'
'Case 5 'movefirst
'    BUTTON(5).Enabled = False
'    BUTTON(7).Enabled = False
'    If Not adoPrimaryRS.BOF Then
'        adoPrimaryRS.MoveFirst
'    End If
'    StatusBar1.Panels(2).Text = "First Record"
'Case 7 'moveprev
'    BUTTON(8).Enabled = True
'    BUTTON(6).Enabled = True
'    If Not adoPrimaryRS.EOF Then
'        adoPrimaryRS.MovePrevious
'    Else
'        adoPrimaryRS.MoveFirst
'    End If
'Case 8 'movelast
'    BUTTON(8).Enabled = False
'    BUTTON(6).Enabled = False
'    If Not adoPrimaryRS.EOF Then
'        adoPrimaryRS.MoveLast
'    End If
'    StatusBar1.Panels(2).Text = "Last Record"
Case 5
     'first
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "First Record"
     On Error GoTo GoFirstError
''   Call clear_text
     adoPrimaryRS.MoveFirst
     Call bindcontls
     Call disablcontls
    'calling fir procedure from module
     Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
      On Error GoTo GoNextError
        
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        Call disablcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
      End If
      If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
      
     ' show the current record
      Call navi(BUTTON)
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
      BUTTON(8).Enabled = False
      BUTTON(6).Enabled = False
      BUTTON(4).Enabled = True
      Beep
      Else
      BUTTON(8).Enabled = True
      BUTTON(6).Enabled = True
      BUTTON(4).Enabled = True
      End If
      Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
        Call disablcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
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
        BUTTON(4).Enabled = True
    End If
    'show the current record
    Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(4).Enabled = True
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
        End If
        
    Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     StatusBar1.Panels(2).Text = "Last Record"
     adoPrimaryRS.MoveLast
     Call bindcontls
     Call disablcontls
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head
   
   Case 13
    'report call
'    Dim clsCryRpt2 As New clsCrystal
'    Set clsCryRpt2.cryRept = RMIPurchaseBill1
'    clsCryRpt2.CrystalPrint
'
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'    CrystalReport1.SelectionFormula = "{RM_LOT.DIVCODE}='" & Divcode & "' AND {RM_LOT.PJDT} = cdate('" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "') AND {RM_LOT.PJNO}>=  " & txtfields(304) & " AND {RM_LOT.PJNO} <= " & txtfields(304) & " "
'    CrystalReport1.ParameterFields(0) = "Date;" & Format(MaskEdBox1(3), "yyyy-mm-dd") & ""
'    CrystalReport1.ParameterFields(1) = "From MRN No.;" & txtfields(304) & ""
'    CrystalReport1.ParameterFields(2) = "To MRN No.;" & txtfields(304) & ""
'    CrystalReport1.WindowShowPrintSetupBtn = True
'    CrystalReport1.WindowShowSearchBtn = True
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{ENTER}"
'    CrystalReport1.Action = 1
'    CrystalReport1.PrinterCopies = 1
'    Screen.MousePointer = 0
'intervalMinutes = -1


    Dim clsCryRpt2 As New clsCrystal
    Set clsCryRpt2.cryRept = Cry_RMI_PBill_Entry 'RMIPurchaseBill1
    
    clsCryRpt2.CrystalPrint

    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    'CrystalReport1.SelectionFormula = "{RM_LOT.DIVCODE}='" & Divcode & "' AND {RM_LOT.PJDT} = cdate('" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "') AND {RM_LOT.PJNO}>=  " & txtFields(304) & " AND {RM_LOT.PJNO} <= " & txtFields(304) & " "
     CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
    CrystalReport1.ParameterFields(1) = "@Date;" & Format(MaskEdBox1(3), "yyyy-mm-dd") & ""
    CrystalReport1.ParameterFields(2) = "@FMRNo;" & txtfields(304) & ""
    CrystalReport1.ParameterFields(3) = "@TMRNo;" & txtfields(304) & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
intervalMinutes = -1
    Exit Sub
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox Err.Description, vbInformation, head
    If Opt = "add" Then
        DB.RollbackTrans
        BUTTON(10).Enabled = False
        Opt = ""
        BUTTON(6).Enabled = True
        BUTTON(12).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(3).Enabled = True
        BUTTON(11).Enabled = True
        Call query_mode
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        Call NEWFORM1(BUTTON, GSNO)
        Exit Sub
    End If
intervalMinutes = -1
Screen.MousePointer = 0
End Sub

Private Sub Chk_TDSFLAG_Click()
If Opt = "add" Or Opt = "mod" Then
    If Chk_TDSFLAG.value = 1 And Opt = "add" Then
        Set rss = New Recordset
        rss.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur from rm_PARAM b  ", DB, adOpenStatic
        If Not rss.EOF Then
            TDSPERWP = rss(0)
            txtfields(129).Text = Format(TDSPERWP, "#0.000")
        End If
    End If
    Call LotCalculation
End If
End Sub

Private Sub Combo2_GotFocus()
On Error GoTo Combo2_GotFocus_Error

    Combo2.BackColor = &HC0FFC0

Exit Sub
Combo2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_KeyPress(KeyAscii As Integer)
On Error GoTo Combo2_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_LostFocus()
On Error GoTo Combo2_LostFocus_Error

    Combo2.BackColor = &HFFFFFF

Exit Sub
Combo2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_LostFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Frame6.Visible = False
StatusBar1.Panels(2).Text = ""
Opt = ""
Call query_mode

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
Dim Lrs As New ADODB.Recordset
On Error GoTo Command4_Click_Error

        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,Assvalue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'and OPFLG ='N' and lotno=" & val(txtqry.Text) & " ", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "Please enter the valid Lot Number", vbInformation, head
            Command4.Enabled = True
            txtqry.Text = ""
            
            StatusBar1.Panels(2).Text = "No Such Lot No. Found"
            Exit Sub
        Else
        
        Call bindcontls
        
        
'        If Lrs.State Then Lrs.Close
'        Lrs.Open "select  slname from fa_slmas where  slcode ='" & Txtfields(78).Text & "'", DB, adOpenDynamic, adLockReadOnly
'        If Not Lrs.EOF Then
'            Text1(1).Text = Lrs("slname")
'            Text1(0).Text = Lrs("slname")
'            Text1(2).Text = Lrs("slname")
'        End If
        'calling query procedure from module
        'Call Query1(BUTTON, 9)
        Frame6.Visible = False
'        Buttonframe.Enabled = True
        SSTab1.Visible = True
        End If


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub Command5_Click()    'ACTIVEX CANCEL
On Error GoTo Command5_Click_Error

StatusBar1.Panels(2).Text = ""
Frame3.Visible = False
'TabStrip1.Visible = True
SSTab1.Visible = True
'Frame5.Visible = True
Frame7.Visible = True
Frame8.Visible = True
BUTTON(0).Enabled = True
BUTTON(2).Enabled = True
Call NEWFORM1(BUTTON, GSNO)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()    'ACTIVEX OKAY
On Error GoTo Command6_Click_Error


BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
StatusBar1.Panels(2).Text = ""
Select Case Ksllist1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    txtfields(83).Text = Ksllist1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & txtfields(83).Text & "'", DB
    txtfields(56).Text = val(newrs1(0))  'taxper
    txtfields(55).Text = val(txtfields(7).Text) * val(txtfields(56).Text) / 100
    txtfields(55).SetFocus

Case "Lotno"
If Ksllist1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,OtherTaxableAmt,rateunit " & _
                    "FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(Ksllist1.Description, "yyyy-mm-dd") & "' and lotno=" & Trim(Ksllist1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N'  ", DB, adOpenStatic, adLockBatchOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
 
    If UCase(adoPrimaryRS("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoPrimaryRS("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        txtfields(56).Text = IIf(IsNull(adoPrimaryRS("vatper")), 0, adoPrimaryRS("vatper"))
        txtfields(55).Text = IIf(IsNull(adoPrimaryRS("vatamt")), 0, adoPrimaryRS("vatamt"))
    End If
    
    
    txtfields(25).Locked = True
    txtfields(0).Locked = True
    txtfields(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    txtfields(2).Locked = True
    txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
    txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
    txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
    txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    txtfields(82).Text = Format(txtfields(82).Text, "#0.00")
    txtfields(23).Locked = False
    txtfields(24).Locked = False
    txtfields(25).Locked = False
    txtfields(46).Text = Format(txtfields(46).Text, "#0.000")
    txtfields(47).Text = Format(txtfields(47).Text, "#0.000")
    txtfields(48).Text = Format(txtfields(48).Text, "#0.000")
    txtfields(49).Text = Format(txtfields(49).Text, "#0.000")
    txtfields(50).Text = Format(txtfields(50).Text, "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(Ksllist1.Code) & " and c.lotdt='" & Format(Ksllist1.Description, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        opt_nc.value = True
        If opt_c.value = True Then
            If UCase(delivery) = "S" Then
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) + val(txtfields(38)) + val(txtfields(43)) + val(txtfields(58)) - (val(txtfields(54)) + val(txtfields(85))) + (val(txtfields(75)) + (val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) * (100 - val(txtfields(109))) / 100)), "0.00")
            Else
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) - (val(txtfields(54)) + val(txtfields(85))) + (val(txtfields(75)) + (val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) * (100 - val(txtfields(109))) / 100)), "0.00")
            End If
        Else
            If UCase(delivery) = "S" Then
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) + val(txtfields(38)) + val(txtfields(43)) + val(txtfields(58)) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
   
            Else
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
                                    
            End If
        End If
               
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(83).Text & "'", DB, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                txtfields(78).Text = val(txtfields(35).Text)
            Else
                txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(55).Text)
            End If
        Else
            txtfields(78).Text = val(txtfields(35).Text)
        End If
       
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(42).Text & "'", DB, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                txtfields(78).Text = val(txtfields(35).Text)
            Else
                txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(77).Text)
            End If
        Else
            txtfields(78).Text = val(txtfields(35).Text)
        End If

       
       
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
         VATFLG = rsP(0)
    End If
        
    If VATFLG = "Y" Then
       ' If EXIST_VAT(Txtfields(26).Text) = True Then
              txtfields(78).Text = val(txtfields(78).Text) - val(txtfields(55).Text) - val(txtfields(77).Text)
       ' End If
    End If
    txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
    txtfields(82) = Format(txtfields(82).Text, "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            txtfields(6).Text = IIf(IsNull(adoPrimaryRS("BillnO")), 0, adoPrimaryRS("BillNO"))
            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))
        End If
   End If

''''''''''''''''''''
   txtfields(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        txtfields(3).Text = Rs("VARNAME")
    Else
        txtfields(3).Text = ""
    End If
    If adoPrimaryRS("dbamt") <> Null Then
    txtDBCRNt.Text = ""
    End If
 Else
    MsgBox "Since the Bale is already Issued, the Record Cannot be added or deleted ", vbInformation, head
    Frame3.Visible = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
 End If
Else
    Frame3.Visible = False
    Call BUTTON_Click(10)
    Exit Sub
End If
Case "cast(a.tc as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = Ksllist1.Code
    txtfields(301).Text = Ksllist1.Description
    txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = Ksllist1.Code
    txtfields(301).Text = Ksllist1.Description
    txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    txtfields(302).Text = Ksllist1.Code
    txtfields(303).Text = Ksllist1.Description
    txtfields(304).SetFocus
End Select
Frame3.Visible = False

txtfields(300).tabIndex = 0
txtfields(300).SetFocus
SSTab2.Tab = 0
opt_nc.value = True
Call fBillValue(dAssValue)
Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form frmPurchaseBill", vbInformation, head
End Sub



Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox1(1).Text = DTPicker2.value

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker3_Change()
    If Opt = "add" Or Opt = "mod" Then
        MaskEdBox1(2).Mask = Format(DTPicker3.value, "dd/MM/yyyy")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
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
        Call BUTTON_Click(10)  'Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command7.Visible = False
        Frame5.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If
'    If KeyCode = 13 Then SendKeys "{TAB}"

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

On Error GoTo Form_Load_Error
  opt_nc.value = True
  Call openconnection
  Opt = ""
  DATLAB.Caption = pdate
  DTPicker3.Enabled = False
  DTPicker3.value = pdate
'  TabStrip1.Tabs.Clear
 StatusBar1.Panels(1).Text = STBARmsg

 
 Set Rs = New Recordset
 Rs.Open "SELECT ADDTAXREQUIRED ,isnull(WeightFlg,'S')  WeightFlg  FROM RM_PARAM", DB, adOpenStatic
 ValueFLG = Rs(1)
 If Rs(0) = "Y" Then
    lblAddTax.Enabled = True
    txtfields(42).Enabled = True
    txtfields(79).Enabled = True
    txtfields(77).Enabled = True
 Else
    lblAddTax.Enabled = False
    txtfields(42).Enabled = False
    txtfields(79).Enabled = False
    txtfields(77).Enabled = False
 End If
   Set Rs = New Recordset
  Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
  If Not Rs.EOF Then
    If Rs(0) = "Y" Then
        'Additional Tax Field Add For Kores
        
         IATaxCode = 44
         IATaxper = 45
         IATaxamt = 46
         IOthtaxPer = 47
         IothTaxamt = 48
         IRlyfrtper = 49
         IRlyfrtamt = 50
         IInsper = 51
         IInsamt = 52
         ICommper = 53
         ICommAMT = 54
         ILCper = 55
         ILCamt = 56
         Icharity = 57
         IOthTaxableAmt = 58
         IOthers = 59
         IcustomDuty = 60
         ILandedcost = 61
         IRateKG = 62
         IAcWgt = 63
         Iround = 64
         ISICAAmt = 65
         itcsper = 66
         itcsamt = 67
         ITDSASSAMT = 68
         ITDSPER = 69
         ITDSAMT = 70
     Else
         IOthtaxPer = 44
         IothTaxamt = 45
         IRlyfrtper = 46
         IRlyfrtamt = 47
         IInsper = 48
         IInsamt = 49
         ICommper = 50
         ICommAMT = 51
         ILCper = 52
         ILCamt = 53
         Icharity = 54
         IOthTaxableAmt = 55
         IOthers = 56
         IcustomDuty = 57
         ILandedcost = 58
         IRateKG = 59
         IAcWgt = 60
         Iround = 61
         ISICAAmt = 62
         itcsper = 63
         itcsamt = 64
         ITDSASSAMT = 65
         ITDSPER = 66
         ITDSAMT = 67
    End If
  
  End If
 
  Call query_mode
  Call AssignRoundoff
  
'  Call SpreadAlign(1)
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmPurchaseBill", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Sub AssignRoundoff()
    Dim RoffRs As Recordset
    Dim sQry As String
    sQry = vbNullString
    
    Set RoffRs = New Recordset
    sQry = " Select RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF," & _
                " REDCESS_ROFF,RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,isnull(RTCS_ROFF,2) RTCS_ROFF " & _
                " From  RM_PARAM "
                
     RoffRs.Open sQry, DB, adOpenStatic
     If Not RoffRs.EOF Then
            LANDCOST_ROFF = IIf(IsNull(RoffRs("RLANDCOST_ROFF")), 2, RoffRs("RLANDCOST_ROFF"))
            ASSVAL_ROFF = IIf(IsNull(RoffRs("RASSVAL_ROFF")), 2, RoffRs("RASSVAL_ROFF"))
            BED_ROFF = IIf(IsNull(RoffRs("RBED_ROFF")), 2, RoffRs("RBED_ROFF"))
            AED_ROFF = IIf(IsNull(RoffRs("RAED_ROFF")), 2, RoffRs("RAED_ROFF"))
            EDCESS_ROFF = IIf(IsNull(RoffRs("REDCESS_ROFF")), 2, RoffRs("REDCESS_ROFF"))
            HSCESS_ROFF = IIf(IsNull(RoffRs("RHSCESS_ROFF")), 2, RoffRs("RHSCESS_ROFF"))
            CESS_ROFF = IIf(IsNull(RoffRs("RCESS_ROFF")), 2, RoffRs("RCESS_ROFF"))
            TAX_ROFF = IIf(IsNull(RoffRs("RTAX_ROFF")), 2, RoffRs("RTAX_ROFF"))
            ADDTAX_ROFF = IIf(IsNull(RoffRs("RADDTAX_ROFF")), 2, RoffRs("RADDTAX_ROFF"))
            SURCHARGE_ROFF = IIf(IsNull(RoffRs("RSURCHARGE_ROFF")), 2, RoffRs("RSURCHARGE_ROFF"))
            ATCS_ROFF = IIf(IsNull(RoffRs("RTCS_ROFF")), 2, RoffRs("RTCS_ROFF"))
            
     End If

End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'statusbar1.panels(2).text= "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
On Error Resume Next
intervalMinutes = -1
If Opt = "" Or Opt = "query" Or Opt = "del" Or Opt = "mod" Then
If Not adoPrimaryRS.EOF Then
    
       Set rstQry = New Recordset
       rstQry.Open "Select Lotno,Lotdt,Supcd,varcode from rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and Pjno='" & val(adoPrimaryRS("Pjno")) & "' and pjdt='" & Format(adoPrimaryRS("pjdt"), "YYYY/MM/DD") & "' order by lotdt,lotno", DB, adOpenStatic, adLockBatchOptimistic
       
       If rstQry.EOF = False Then
            dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
            GTax = "":    GAtax = "":       txtfields(56).Text = "":  dTax = 0:              dCashDis = 0:        dTradeDis = 0
            dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
            dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
            dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
            dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
            dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
            dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0
            dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0: DTCSAMT = 0: DTCSASSAMT = 0
            sCode = "": dADJValue = 0:: dSC = 0: DSICAAmt = 0: dTDSAssAmt = 0: DTDSAmt = 0:
            
             DCGSTAMT = 0
            DSGSTAMT = 0
            DIGSTAMT = 0
            txtfields(83).Text = ""
            txtfields(42).Text = ""
            
            txtfields(94).Text = ""
         
             Set Rs = New Recordset
             Rs.Open "sELECT slcode, slname FROM fa_slmas WHERE slcode='" & rstQry("supcd") & "'", DB, adOpenStatic
             If Rs.RecordCount > 0 Then
                 txtfields(81).Text = Rs("slcode")
                 Text4.Text = Rs("slname")
             Else
                 txtfields(81).Text = ""
                 Text4.Text = ""
             End If
             
             
             
            iRow = rstQry.RecordCount
            Call SpreadAlign(CInt(iRow))
            rstQry.MoveFirst
            Do While rstQry.EOF = False
                iRow = rstQry.AbsolutePosition
                 sLotno = ""
                 sLotDt = ""
                 sSLcode = ""
                 Scatcd = ""
                 
                 sLotno = rstQry("lotno")
                 sLotDt = rstQry("lotdt")
                 sSLcode = rstQry("supcd")
                 
                 Set Rs = New Recordset
                 Rs.Open "select catcd from rm_var where varcode='" & rstQry("varcode") & "' ", DB, adOpenStatic
                 If Rs.RecordCount > 0 Then
                    Scatcd = Rs("catcd")
                 Else
                    Scatcd = ""
                 End If
                 Call Lotdisplay(sLotno, sLotDt, sSLcode, iRow, Scatcd)
                 rstQry.MoveNext
            Loop
            
'            Txtfields(304).Text = adoPrimaryRS("Pjno")
            
        End If
        
        Call SpreadAlign(rstQry.RecordCount)

'        If adoTestRs.EOF = False Then
        
        Set rs1 = New Recordset
        '01/08/16
        rs1.Open "select Distinct pjno,pjdt,pjtc,Fbillno,fbilldt,form_type,ptype,GLCODE from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL and Pjno='" & val(adoPrimaryRS("Pjno")) & "' and pjdt='" & Format(adoPrimaryRS("pjdt"), "YYYY/MM/DD") & "'", DB, adOpenStatic
        If rs1.EOF = False Then
            txtfields(300).Text = rs1("pjtc")
            txtfields(302).Text = rs1("ptype")
            txtfields(304).Text = rs1("pjno")
            txtfields(6).Text = rs1("Fbillno")
            '
            txtfields(98).Text = rs1("GLCODE")
            '
            txtfields(39).Text = rs1("Form_type")
            If IsNull(rs1("fbilldt")) = False Then
                MaskEdBox1(2).Mask = Format(rs1("fbilldt"), "dd/mm/yyyy")
                MaskEdBox1(2).Text = MaskEdBox1(2).Mask
            Else
                MaskEdBox1(2).Text = "__/__/____"
            End If
            If IsNull(rs1("pjdt")) = False Then
                MaskEdBox1(3).Mask = Format(rs1("pjdt"), "dd/mm/yyyy")
                MaskEdBox1(3).Text = MaskEdBox1(3).Mask
            Else
                MaskEdBox1(3).Text = "__/__/____"
            End If
            If Trim(txtfields(300).Text) <> "" Then Call ReturnTransType
            If Trim(txtfields(302).Text) <> "" Then Call ReturnProcessType
            
            '
                    '01/08/16
        Set RsGL = New Recordset
        RsGL.Open "sELECT GLHEAD FROM fa_Glmas WHERE Glcode='" & rs1("GLCODE") & "'", DB, adOpenStatic
        If RsGL.RecordCount > 0 Then
            'Txtfields(98).Text = RsGL("Glcode")
            txtfields(99).Text = RsGL("GLHEAD")
        Else
            txtfields(98).Text = ""
            'Txtfields(99).Text = ""
        End If
        

            
        End If
        
        
        
        Set Rs = New Recordset
        Rs.Open "sELECT slname FROM fa_slmas WHERE slcode='" & adoTestRs("supcd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(81).Text = Rs("slcode")
            Text4.Text = Rs("slname")
        Else
            txtfields(81).Text = ""
            Text4.Text = ""
        End If
        '
        
        
        
'        If adoTestRs("bblflg") = "B" Then
'          Combo1.Text = "Bale"
'       '   txtfields(6).SetFocus
'        ElseIf adoTestRs("bblflg") = "R" Then
'           Combo1.Text = "Borah"
'        Else
'        Combo1.Text = " "
'       '    txtfields(6).SetFocus
'        End If
'        If adoTestRs!discountFlg = "Y" Then optAfter = True Else optBefore = True
'
'        If adoTestRs("dutyclaimable") = "Y" Then
'            opt_c.value = True
'        Else
'            opt_nc.value = True
'        End If
''        Set Rs = New Recordset
''        Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoTestRs("VARCODE") & "'", DB, adOpenStatic
''        If Rs.RecordCount > 0 Then
''            Txtfields(3).Text = Rs("VARNAME")
''        Else
''            Txtfields(3).Text = ""
''        End If
''        MaskEdBox1(1).Text = adoTestRs("lotdt")
    
''     Txtfields(78).Text = adoTestRs("TOTLANDCOST")
    ' Txtfields(86) = Format(val(Txtfields(86).Text), "#0.00")
    ' Txtfields(87) = Format(val(Txtfields(87).Text), "#0.00")
    ' Txtfields(63) = Format(val(Txtfields(63).Text), "#0.00")
    ' Txtfields(74) = Format(val(Txtfields(74).Text), "#0.00")
    ' Txtfields(72) = Format(val(Txtfields(72).Text), "#0.00")
    ' Txtfields(41) = Format(val(Txtfields(41).Text), "#0.00")
    ' Txtfields(23) = Format(val(Txtfields(23).Text), "#0.000")
    ' Txtfields(24) = Format(val(Txtfields(24).Text), "#0.000")
    ' Txtfields(25) = Format(val(Txtfields(25).Text), "#0.000")
    ' Txtfields(4) = Format(val(Txtfields(4).Text), "#0.00")
    
    
    
    
'    Txtfields(78).Text = adoTestRs("TOTLANDCOST") - adoTestRs("LDGULG")
    
        
'    If IsNull(adoTestRs("arrdt")) = False Or adoTestRs("arrdt") = "" Then
'        MaskEdBox1(0).Mask = Format(adoTestRs("arrdt"), "dd/mm/yyyy")
'        MaskEdBox1(0).Text = MaskEdBox1(0).Mask
'    End If
'    If IsNull(adoTestRs("lotdt")) = False Or adoTestRs("lotdt") = "" Then
'        MaskEdBox1(1).Mask = Format(adoTestRs("lotdt"), "dd/mm/yyyy")
'        MaskEdBox1(1).Text = MaskEdBox1(1).Mask
'    End If

    'txtfields(83).Text = IIf(IsNull(adoPrimaryRS("TAX_CODE")), "", adoPrimaryRS("TAX_CODE"))
    End If
'    End If
End If

End Sub
'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdt"
MaskEdBox1(1).DataField = "lotdt"
MaskEdBox1(2).DataField = "billdt"
txtfields(39).Text = IIf(IsNull(adoPrimaryRS("form_type")) = False, adoPrimaryRS("form_type"), "")
Set txtAdjValue.DataSource = adoPrimaryRS
Set txtDBCRNt.DataSource = adoPrimaryRS
Set MaskEdBox1(1).DataSource = adoPrimaryRS

DTPicker2.maxdate = pdate
DTPicker2.MinDate = yfdate
If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
    MaskEdBox1(0).Mask = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
    MaskEdBox1(0).Text = MaskEdBox1(0).Mask
End If
If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    MaskEdBox1(1).Mask = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
    MaskEdBox1(1).Text = MaskEdBox1(1).Mask
End If
If IsNull(adoPrimaryRS("billdt")) = False Then
    MaskEdBox1(2).Mask = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    MaskEdBox1(2).Text = MaskEdBox1(2).Mask
Else
    MaskEdBox1(2).Text = "__/__/____"
End If


If IsNull(adoPrimaryRS("pjdt")) = False Then
    MaskEdBox1(3).Mask = Format(adoPrimaryRS("pjdt"), "dd/mm/yyyy")
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
If Opt = "add" Then MaskEdBox1(3).Text = "__/__/____"
Option1.Enabled = False
Option2.Enabled = False
End Sub

Public Sub Unbindcontls()
On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = Nothing
Next
End Sub


Public Sub ENABLCONTLS()
On Error Resume Next
Dim I As Integer
For I = 3 To 21
    txtfields(I).Locked = False
Next
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
txtDBCRNt.Locked = False
txtfields(39).Locked = False
txtfields(56).Locked = True
'Txtfields(55).Locked = True
txtfields(34).Locked = True
'txtFields(35).Locked = True
End Sub
Public Sub disablcontls()
On Error Resume Next
Dim I As Integer
For I = 0 To 30
txtfields(I).Locked = True
Next
txtDBCRNt.Locked = True
txtfields(39).Locked = True
'txtAdjValue.Locked = True
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
Option1.Enabled = False
Option2.Enabled = False
DTPicker2.Enabled = False
Combo1.Enabled = False
If Opt = "mod" Then
    spdVar.Lock = True
    For I = 47 To 50
        txtfields(I).Locked = True
    Next
    txtfields(300).Locked = True
    txtfields(302).Locked = True
    txtfields(304).Locked = True
    txtfields(39).Locked = True
    txtfields(95).Locked = True
    txtfields(92).Locked = True
    txtfields(90).Locked = True
    MaskEdBox1(2).Enabled = True
    DTPicker3.Enabled = True
    txtfields(96).Locked = False
    txtfields(6).Locked = True
End If
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error
Select Case Index
Case 3
    
    If MaskEdBox1(3).Text = "__/__/____" Then
        MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(3).Text = MaskEdBox1(3).Mask
    End If
Case 2
    If MaskEdBox1(2).Text = "__/__/____" Then
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
End Select
Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("Please enter a valid date"), vbInformation, head
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
        MaskEdBox1(2).SetFocus
        'commented on 21/04/2006 as per user's requirements
'        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
     ElseIf Not (CDate(MaskEdBox1(2).Text) <= pdate) Then
        MsgBox "Bill Date should fall with in the  processing Date", vbInformation, head
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
End If
Case 3
    If (MaskEdBox1(3).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(3).Text)) Then
            MsgBox ("Please enter a valid date"), vbInformation, head
            MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
            MaskEdBox1(3).Text = MaskEdBox1(3).Mask
            MaskEdBox1(3).SetFocus
        Else
            MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
            MaskEdBox1(3).Text = MaskEdBox1(3).Mask
'        ElseIf CDate(MaskEdBox1(3).Text) > pdate Then
'            MsgBox "Accpt. Date should be less than processing Date", vbInformation, head
'            MaskEdBox1(3).Text = pdate
'        ElseIf CDate(MaskEdBox1(3).Text) > CDate(MaskEdBox1(2).Text) Then
'            MsgBox "Accpt.Date should be less than Bill Date", vbInformation, head
'            'MaskEdBox1(3).Text = MaskEdBox1(2).Text
'            MaskEdBox1(3).Text = "__/__/____"
'            MaskEdBox1(3).SetFocus
        End If
    End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub opt_c_Click()
    If opt_nc.value = True Then
        lblDutyPer.Enabled = False
        txtfields(109).Enabled = False
        txtfields(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        txtfields(109).Enabled = True
        txtfields(109).Text = "100.00"
    End If
End Sub

Private Sub opt_nc_Click()
    If opt_nc.value = True Then
        lblDutyPer.Enabled = False
        txtfields(109).Enabled = False
        txtfields(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        txtfields(109).Enabled = True
        txtfields(109).Text = "100.00"
    End If
End Sub

Private Sub StockClose_Click()
On Error GoTo StockClose_Click_Error

Frame14.Visible = False
Call BUTTON_Click(10)

Exit Sub
StockClose_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockClose_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtAdjValue_Change()
     If Opt = "" Then txtAdjValue.Text = Format(val(txtAdjValue.Text), "0.00")
End Sub

Private Sub txtAdjValue_GotFocus()
On Error GoTo txtAdjValue_GotFocus_Error

    txtAdjValue.BackColor = &HC0FFC0
    
Exit Sub
txtAdjValue_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtAdjValue_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtAdjValue_KeyPress(KeyAscii As Integer)
Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub txtAdjValue_LostFocus()
    txtAdjValue.BackColor = &HFFFFFF
    Call LANDEDCOST(val(txtfields(7).Text))
End Sub

Private Sub txtAdjValue_Validate(Cancel As Boolean)
On Error GoTo txtAdjValue_Validate_Error

    txtAdjValue.Text = Format(txtAdjValue.Text, "0.00")
'    Txtfields(78).Text = Format(Val(txtfields(7).Text) + Val(txtAdjValue.Text), "0.00")
    Call LotAmountAssign(val(txtAdjValue.Text), Iround, iRow)
Exit Sub
txtAdjValue_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtAdjValue_Validate of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub txtDBCRNt_Change()
    txtDBCRNt.Text = Format(val(txtDBCRNt.Text), "0.00")
End Sub

Private Sub txtDBCRNt_KeyPress(KeyAscii As Integer)
    Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
    If Opt = "" Then
         Select Case Index
         Case 86, 87, 63, 41, 7, 47, 4
             txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
         Case 9, 48, 49, 50, 8
             txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
         End Select
     
     End If
     
     
Select Case Index

Case 96
        If UCase(Trim(CustID)) = "SOUTHERN" And val(txtfields(96) & "") > 0 Then
            txtfields(76).Text = Format(Round(val(txtfields(96)) / val(txtfields(50)), 4), "0.0000")
        End If
    
Case 91
    If val(txtfields(Index).Text) = 0 Then txtfields(82).Text = 0
    
Case 7, 47, 78, 55, 35
    dblTotalLC = val(txtfields(7).Text)

'Case 82, 83, 35
'        Set rs2 = New Recordset
'        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtFields(83).Text & "'", DB, adOpenStatic
'        If opt_c.Value = True Then
'            If UCase(delivery) = "S" Then
'                txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'            Else
'                txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'            End If
'            txtFields(35).Text = val(txtFields(78).Text)
'        Else
'            If rs2.RecordCount = 0 Then
'                If UCase(delivery) = "S" Then
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            ElseIf rs2("itctaxstatus") = "N" Then
'                If UCase(delivery) = "S" Then
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            ElseIf rs2("itctaxstatus") = "Y" Then
'                If UCase(delivery) = "S" Then
'                    txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                    IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                    txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                    IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            End If
'        End If

Case 57


Case 37
     txtfields(38).Text = ((val(txtfields(7).Text) + val(txtfields(60).Text)) * val(txtfields(37).Text) / 100)
     
'Case 86
'
'     TXTFIELDS(87).Text = ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) * val(TXTFIELDS(56).Text) / 100)
'
Case 83 '4 'TAXCODE

        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
        
    If EXIST_VAT(txtfields(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & txtfields(83).Text & "'", DB, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            txtfields(34).Text = (val(txtfields(7).Text) * val(newrs1("itcper")) / 100)
        Else
            txtfields(34).Text = 0  'vatamt
        End If
    Else
            txtfields(34).Text = 0
    End If
    
Case 5 'TAXPER
    'taxamt
    If val(txtfields(55).Text) < 0 Then txtfields(55).Text = ((val(txtfields(7).Text) + val(txtfields(60).Text)) * val(txtfields(56).Text) / 100)
    'taxamt                 'pjamt
    
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
    End If
   
    If EXIST_VAT(txtfields(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & txtfields(83).Text & "'", DB, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            txtfields(34).Text = (val(txtfields(7).Text) * val(newrs1("itcper")) / 100)
        Else 'VAT AMT                       'pjamt
            txtfields(34).Text = 0
        End If
    Else
            txtfields(34).Text = 0
    End If
Case 94
    If val(txtfields(93).Text) < 0 Then txtfields(93).Text = (val(txtfields(55).Text) * val(txtfields(94).Text) / 100)
    

Case 300
'   Set Rs = New Recordset
'   If Trim(txtfields(300).Text) <> "" Then
'      Rs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc = " & val(txtfields(300).Text) & " and a.tc between b.frompurtc and b.topurtc", DB, adOpenStatic
'      If Rs.RecordCount > 0 Then
'         txtfields(300).Text = Rs(0)
'         txtfields(301).Text = Rs(1)
'      Else
'         txtfields(300).Text = ""
'         txtfields(301).Text = ""
'      End If
'   End If
'   If Rs.State > 0 Then Rs.Close
Case 39
    Set Rs = New Recordset
    Rs.Open "select * from po_formtype b where typecode='" & txtfields(39).Text & "'", DB, adOpenStatic
    If Rs.RecordCount <> 0 Then
        txtfields(40).Text = Rs("Description")
    Else
        txtfields(40).Text = ""
    End If
Case 302
   'Set Rs = New Recordset
   'Rs.Open "select purtype,purdesc from rm_purtype where purtype = '" & txtfields(302).Text & "'", DB, adOpenStatic
   'If Rs.RecordCount <> 0 Then
   '  txtfields(302).Text = Rs(0)
   '  txtfields(303).Text = Rs(1)
   'Else
   '  txtfields(302).Text = ""
   '  txtfields(303).Text = ""
   'End If
   'If Rs.State > 0 Then Rs.Close
   
Case 26
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   End If
   Rs.Close
Case 27
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(27).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   End If
   Rs.Close
Case 28
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & txtfields(28).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   End If
   Rs.Close
'Case 7, 47, 78, 55, 35
'    dblTotalLC = val(txtFields(7).Text)

Case 90

   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(90).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     txtfields(89).Text = Rs(0)
   Else
      txtfields(89).Text = ""
   End If
   Rs.Close
Case 132
    Set rsa = New Recordset
    rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        txtfields(131).Text = rsa(1)
        Else
        txtfields(131).Text = ""
    End If
 End Select
End If


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
    If Index = 304 Then
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        txtfields(304).Text = Rs(0)
    End If
End If
    txtfields(Index).BackColor = &HC0FFC0

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
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
        Call BUTTON_Click(10)  'Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form frmPurchaseBill", vbInformation, head
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
    Case 96
        Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 12, 2)
'    Case 304
'        Call ToAlphaNumber(txtFields(Index), 15, KeyAscii)
    Case 6
        txtfields(6).Enabled = True
        txtfields(6).Locked = False
        Call ToAlphaNumber(txtfields(Index), 15, KeyAscii)
    Case 57
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 3)
    Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 59, 61
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
    Case 54, 38, 75, 65, 73, 71, 55, 87, 51, 43, 58, 60, 62, 70, 63, 64, 69, 66, 41, 67, 82, 78, 35, 7, 4, 77
        Call ToNumberAssign(txtfields(Index), 6, KeyAscii, 6, 2)
    Case 47, 85
        Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 9, 2)
    Case 9, 8, 48, 49, 50
        Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 9, 3)
    Case 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 19
        If KeyAscii = 45 Then KeyAscii = 0
        tonum txtfields(Index), 6, KeyAscii
    Case 46, 24, 25, 23
        If KeyAscii = 45 Then KeyAscii = 0
        tonum txtfields(Index), 15, KeyAscii
    Case 33, 32, 25
        KeyAscii = 0
End Select
End If

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Call fBillValue(dAssValue)
Call DRCRAmt

Select Case Index
Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 57, 59, 61
    If val(txtfields(Index).Text) > 100 Then
        MsgBox "Please enter Percentage below 100", vbInformation, head
        txtfields(Index).SetFocus
        Exit Sub
    End If
    If Index <> 57 Then
     txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
    Else
     txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
     End If
Case 47
   If val(txtfields(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
            SSTab2.Tab = 1
            txtfields(53).SetFocus
        End If
    End If
'    Call DRCRAmt

Case 76
        
        If UCase(Trim(CustID)) = "SOUTHERN" And val(txtfields(96) & "") > 0 Then
            txtfields(76).Text = Format(Round(val(txtfields(96)) / val(txtfields(50)), 4), "0.0000")
        Else
         If ValueFLG = "S" Then
            txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(9)), 4), "0.0000")
            Else
            txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(50)), 4), "0.0000")
        End If
        End If
        If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
Case 39
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM po_formtype WHERE typecode='" & txtfields(39).Text & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
         LookUp.Clear = True
         LookUp.query = " select typecode""Form Code"",description""Form Description"" from PO_FormType"
         LookUp.Caption = "Form Listing"
         LookUp.DefCol = "Form Code"
         LookUp.ALIGN = "1200,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                txtfields(39).Text = LookUp.Fields(0)
                txtfields(40).Text = LookUp.Fields(1)
                LookUp.Clear = True
        
         Else
                txtfields(39).Text = ""
                txtfields(40).Text = ""
         End If
     Else
        txtfields(40).Text = Rs("description")
     End If
    If Trim(txtfields(39).Text) = "" Then
        MsgBox "Please enter the Form Type", vbInformation, head
        txtfields(39).SetFocus
        Exit Sub
    End If

Case 54, 85, 38, 75, 73, 71, 65, 55, 77, 87, 51, 43, 58, 60, 62, 63, 70, 64, 66, 67, 69, 82, 78, 76, 35, 47, 7, 41, 91, 97
Dim dblLandedCost As Double
Call LotCalculation
Call LANDEDCOST(dAssValue)
      txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
      txtfields(82) = Format(txtfields(82).Text, "#0.00")
      txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
 Case 4
     txtfields(4) = Format(val(txtfields(4).Text), "#0.00")
 Case 18
     txtfields(18) = Format(val(txtfields(Index).Text), "#0.00")
 Case 46
     txtfields(46) = Format(val(txtfields(Index).Text), "#0.000")
 Case 47
     txtfields(47) = Format(val(txtfields(Index).Text), "#0.00")
 Case 86
     txtfields(86) = Format(val(txtfields(Index).Text), "#0.00")
 Case 87
     txtfields(87) = Format(val(txtfields(Index).Text), "#0.00")
 Case 63
     txtfields(63) = Format(val(txtfields(63).Text), "#0.00")
 Case 48
     txtfields(48) = Format(val(txtfields(48).Text), "#0.000")
 Case 49
     txtfields(49) = Format(val(txtfields(49).Text), "#0.000")
'     Txtfields(50) = val(Txtfields(48).Text) - val(Txtfields(49).Text)
 Case 50
'     Txtfields(50) = Format(val(Txtfields(48).Text) - val(Txtfields(49).Text), "#0.000")
 Case 9, 8, 48, 49
     txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
 Case 109
     If val(txtfields(109).Text) > 100 Then
          MsgBox "Please enter Duty Claimable %, Below or Equal to 100", vbInformation, head
          txtfields(109).SetFocus
          Exit Sub
     End If
Case 47, 54, 85, 38, 75, 65, 73, 71, 55, 77, 87, 51, 43, 58, 60, 62, 70, 63, 64, 66, 41, 67, 82, 78, 35, 7, 4
     txtfields(Index).Text = Format(txtfields(Index).Text, "0.00")
     End Select
End If
     txtfields(86) = Format(val(txtfields(86).Text), "#0.00")
     txtfields(87) = Format(val(txtfields(87).Text), "#0.00")
     txtfields(63) = Format(val(txtfields(63).Text), "#0.00")
     txtfields(9).Text = Format(val(txtfields(9).Text), "#0.000")
     txtfields(Index).BackColor = &HFFFFFF
Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form frmPurchaseBill", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
BUTTON(0).Enabled = True
BUTTON(9).Enabled = False
BUTTON(2).Enabled = True
BUTTON(5).Enabled = True
BUTTON(6).Enabled = True
BUTTON(7).Enabled = True
BUTTON(8).Enabled = True
BUTTON(3).Enabled = True
BUTTON(11).Enabled = True

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True
  Set adoPrimaryRS = New Recordset
  
  
'  adoPrimaryRS.Open "SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,AEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,case when weightflg='M' then GRSWGT else pgrswt end as grswt,case when weightflg ='M' then A.TAREWT else ptarewt end as tarewt,case when weightflg='M' then A.NETWT else pnetwt end as netwt,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PTYPE,PJNO,PJDT,PJTC,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,AdjValue,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,billno,billdt,Assvalue,form_type,dutyclaimable,dutyper,OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,pnetwt  FROM RM_LOT A  " & _
'                    "WHERE ISNULL(PJNO,0)<>0 AND A.DIVCODE = '" & Divcode & "' and  A.PJDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
'
   
   'adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' order by pjdt,pjno", db, adOpenStatic, adLockBatchOptimistic
    
   adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' order by pjdt,pjno", DB, adOpenStatic, adLockBatchOptimistic
    
    If Not adoPrimaryRS.EOF Then
      adoPrimaryRS.MoveLast
      
     'Bind the text boxes,check boxes and option buttons to the data source
'     Call bindcontls
     Call disablcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
    Call disablcontls
    txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
    txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
    txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
    txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    txtfields(82).Text = Format(txtfields(82).Text, "#0.00")
    'MODIFIED
    txtfields(46).Text = Format(txtfields(46).Text, "#0.000")
    txtfields(47).Text = Format(txtfields(47).Text, "#0.00")
    txtfields(48).Text = Format(txtfields(48).Text, "#0.000")
    txtfields(49).Text = Format(txtfields(49).Text, "#0.000")
    txtfields(50).Text = Format(txtfields(50).Text, "#0.000")
    If Trim(txtfields(300).Text) <> "" Then Call ReturnTransType
    If Trim(txtfields(301).Text) <> "" Then Call ReturnProcessType
    'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
  
  End If
  Call NEWFORM1(BUTTON, GSNO)
  SSTab2.Tab = 0
End If
intervalMinutes = -1

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form frmPurchaseBill", vbInformation, head
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

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
intervalMinutes = -1

On Error GoTo txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Then
    If CustID = "COTTON" Then
        Call FORAmtCalculationSCM
    End If
Select Case Index
    Case 54
        Call LotAmountAssign(val(txtfields(Index).Text), Icashdisamt, iRow)
    Case 38
        Call LotAmountAssign(val(txtfields(Index).Text), IFrtamt, iRow)
    Case 85
        Call LotAmountAssign(val(txtfields(Index).Text), Itradedisamt, iRow)
    Case 75
        Call LotAmountAssign(val(txtfields(Index).Text), IBedamt, iRow)
    Case 65
        Call LotAmountAssign(val(txtfields(Index).Text), Icessamt, iRow)
    Case 73
        Call LotAmountAssign(val(txtfields(Index).Text), IEdamt, iRow)
    Case 71
        Call LotAmountAssign(val(txtfields(Index).Text), IHscessamt, iRow)
    Case 51
        Call LotAmountAssign(val(txtfields(Index).Text), IothTaxamt, iRow)
    Case 43
        Call LotAmountAssign(val(txtfields(Index).Text), IRlyfrtamt, iRow)
    Case 58
        Call LotAmountAssign(val(txtfields(Index).Text), IInsamt, iRow)
    Case 60
        Call LotAmountAssign(val(txtfields(Index).Text), ICommAMT, iRow)
    Case 62
        Call LotAmountAssign(val(txtfields(Index).Text), ILCamt, iRow)
        
    Case 63
        Call LotAmountAssign(val(txtfields(63).Text), Icharity, iRow)
    Case 69
        Call LotAmountAssign(val(txtfields(69).Text), IcustomDuty, iRow)
    Case 97
        Call LotAmountAssign(val(txtfields(97).Text), ISICAAmt, iRow)
    Case 129
        Call LotAmountAssign(val(txtfields(Index).Text), ITDSPER, iRow)
        Call LotCalculation
    Case 127
        Call LotCalculation
    Case 41
        Call CSTTaxCalc
        Call OtherTaxCal
        Call TaxCalc
        Call AddTaxCalc
        Call LotAmountAssign(val(txtfields(41).Text), IOthTaxableAmt, iRow)
        Exit Sub
    Case 67
        Call LotAmountAssign(val(txtfields(67).Text), IOthers, iRow)
    Case 88
        If val(txtfields(75).Text) = 0 Then
            If UCase(delivery) = "F" Then
                txtfields(75).Text = Round(val(txtfields(88).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text))) / 100, BED_ROFF)
            Else
                txtfields(75).Text = Round(val(txtfields(88).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(85).Text))) / 100, BED_ROFF)
            End If
        End If
        Call LotValueAssign(val(txtfields(88).Text), IBedper)
        Exit Sub
    Case 57
        Dim rsPara As New Recordset
        rsPara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
        If (rsPara.BOF And rsPara.EOF) = False Then
            If val(txtfields(58).Text) = 0 Then
                If rsPara("InsCalAssvalflg") = "N" Then
                    txtfields(58).Text = Round(((val(txtfields(7).Text) + val(txtfields(60).Text)) * val(txtfields(57).Text) / 100), 0)
                Else
                    txtfields(58).Text = Round(val(txtfields(7).Text) * (val(txtfields(57).Text) / 100), 0)
                End If
            End If
        End If
        rsPara.Close
        Set rsPara = Nothing
        Call LotValueAssign(val(txtfields(57).Text), IInsper)
    Case 74
         ''ed cess amt
          If val(txtfields(73).Text) = 0 Then txtfields(73).Text = Round(val(txtfields(74).Text) * val(txtfields(75).Text) / 100, EDCESS_ROFF)
          Call LotValueAssign(val(txtfields(74).Text), IEdper)
          Exit Sub
    
    Case 72
          ''Hscess
           If val(txtfields(71).Text) = 0 Then txtfields(71).Text = Round(val(txtfields(72).Text) * val(txtfields(75).Text) / 100, HSCESS_ROFF)
           Call LotValueAssign(val(txtfields(72).Text), IHscessper)
           Exit Sub
    
    Case 68
            ''cessamt=cessper* val/100
            If UCase(delivery) = "F" Then
                If val(txtfields(65).Text) = 0 Then txtfields(65).Text = Round(val(txtfields(68).Text) * (val(dAssValue) - val(txtfields(54).Text) + val(txtfields(13).Text) + val(txtfields(73).Text) + val(txtfields(71).Text)) / 100, CESS_ROFF)
            Else
                If val(txtfields(65).Text) = 0 Then txtfields(65).Text = Round(val(txtfields(68).Text) * (val(dAssValue) - val(txtfields(54).Text) + val(txtfields(73).Text) + val(txtfields(71).Text)) / 100, CESS_ROFF)
            End If
            Call LotValueAssign(val(txtfields(68).Text), Icessper)
            Exit Sub
    Case 57
            Call LotValueAssign(val(txtfields(57).Text), IInsper)
            Exit Sub
    Case 49
'            Txtfields(50).Text = val(Txtfields(49).Text) * val(adoprimaryrs("pjamt")) / 100
            Exit Sub
    Case 83
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & txtfields(83).Text & "'", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
                 LookUp.Clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"",isnull(sc_per,0) ""SC %"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    txtfields(83).Text = LookUp.Fields(0)
                    txtfields(56).Text = LookUp.Fields(2)
                    txtfields(94).Text = LookUp.Fields(3)
                    LookUp.Clear = True
                 Else
                    txtfields(56).Text = ""
                    txtfields(55).Text = ""
                    txtfields(83).Text = ""
                    txtfields(94).Text = ""
                    txtfields(93).Text = ""
                 End If
             Else
                txtfields(56).Text = Rs("ST_PER")
                txtfields(94).Text = Rs("SC_PER")
             End If
            Call LotStringAssign(Trim(txtfields(83).Text), ITaxCode)
            Call LotValueAssign(Trim(txtfields(56).Text), ITaxper)
            Call LotValueAssign(val(txtfields(94).Text), ISCper)
            
            Call TaxCalc
            Call LotCalculation
            Exit Sub
    Case 42
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & txtfields(42).Text & "'", DB, adOpenStatic
                                                                        If Rs.RecordCount = 0 Then
                 LookUp.Clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    txtfields(42).Text = LookUp.Fields(0)
                    txtfields(79).Text = LookUp.Fields(2)
                    LookUp.Clear = True
                 Else
                    txtfields(79).Text = ""
                    txtfields(77).Text = ""
                    txtfields(42).Text = ""
                 End If
             Else
                txtfields(79).Text = Rs("ST_PER")
             End If
             '''''''''''''''''''''''''''''''''''''''''Add by Vinoth As Per Kores Requiremant
            Call AddTaxCalc
            Exit Sub

    Case 53
             ''CASH discount = disper* val /100
            If val(txtfields(53).Text) <> 0 Then
             'txtFields(54).Text = val(txtFields(53).Text) * val(txtFields(25).Text)
             txtfields(54).Text = val(txtfields(53).Text) * val(txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(txtfields(53).Text), Icashdisper)
            
            Exit Sub
    Case 84
            ''Trade discount = disper* val /100
            If val(txtfields(84).Text) <> 0 Then
                'txtFields(85).Text = val(txtFields(84).Text) * val(txtFields(25).Text)
                txtfields(85).Text = val(txtfields(84).Text) * val(txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(txtfields(84).Text), Itradedisper)
           
            Exit Sub
    
        
    Case 52
            Call CSTTaxCalc
            Call OtherTaxCal
            Call LotValueAssign(val(txtfields(52).Text), IOthtaxPer)
            
            Exit Sub
    Case 86
            Call OtherTaxCal
            Exit Sub

    Case 37
            ''lorry frt
            If val(txtfields(37).Text) <> 0 Then
                'txtFields(13).Text = val(txtFields(37).Text) * val(txtFields(25).Text)
                txtfields(13).Text = val(txtfields(37).Text) * val(txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(txtfields(37).Text), IFrtper)
            Exit Sub
    
    Case 44
            If val(txtfields(44).Text) <> 0 Then
             txtfields(43).Text = val(txtfields(44).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(txtfields(44).Text), IRlyfrtper)
            Exit Sub
    
    Case 59, 60
    
            If val(txtfields(59).Text) <> 0 Then
             txtfields(60).Text = val(txtfields(59).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(txtfields(59).Text), ICommper)
            Call TaxCalc
            Call AddTaxCalc
            Exit Sub
    Case 94
        txtfields(93).Text = val(txtfields(94).Text) * (val(txtfields(55).Text)) / 100
    Case 61
            If val(txtfields(61).Text) <> 0 Then
             txtfields(62).Text = val(txtfields(61).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(txtfields(61).Text), ILCper)
            Exit Sub
    Case 300
        If Opt = "add" Or Opt = "mod" Then
   
            Set rsa = New Recordset
            strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,RM_param_FA b  where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "' And a.tc='" & val(txtfields(300).Text) & "'"
            rsa.Open strSQL, DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.Clear = True
                    'LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a,RM_param_FA b where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "'"
                    'LookUp.DefCol = "Transaction Type Head"
                    'LookUp.ALIGN = "2500,4500"
                    
                    '01/08/16
                    LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"",a.glcode ""GLCODE"",c.glhead ""GLHEAD"" from fa_tcmas a,RM_param_FA b,fa_glmas c where A.TC=B.TCCODE AND A.GLCODE=C.GLCODE AND B.DIVCODE ='" & Divcode & "'"
                    LookUp.DefCol = "Transaction Type Head"
                    LookUp.ALIGN = "2500,4500,2500,2500"
                    
                    
                    LookUp.Caption = "Transaction Type Listing"
                    LookUp.Show vbModal
                    
                    If LookUp.Cancel = False Then
                      txtfields(300).Text = LookUp.Fields(0)
                      txtfields(301).Text = LookUp.Fields(1)
                      '
                      txtfields(98).Text = LookUp.Fields(2)
                      txtfields(99).Text = LookUp.Fields(3)
                      
                      LookUp.Clear = True
                      
                      Set Rs = New Recordset
                      Rs.Open "select * from RM_param_FA where TCcode= " & val(txtfields(300).Text) & " AND Divcode ='" & Divcode & "'", DB, adOpenStatic
                      If Rs.EOF Then
                          MsgBox "Please Set the GL Code to Corresponding TC Code in Parameter - FA Related Detail", vbInformation, head
                            BUTTON(10).Enabled = False
                            Opt = ""
                            BUTTON(6).Enabled = True
                            BUTTON(12).Enabled = True
                            BUTTON(7).Enabled = True
                            BUTTON(8).Enabled = True
                            BUTTON(3).Enabled = True
                            BUTTON(11).Enabled = True
                            Call query_mode
                            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
                            Screen.MousePointer = 0
                            Opt = ""
                            BUTTON(2).Enabled = True
                            Call NEWFORM1(BUTTON, GSNO)
                            Exit Sub
   
                      End If
                      txtfields(302).SetFocus
                    Else
                       SSTab1.Visible = True
                       txtfields(300).SetFocus
                    End If
            Else
                txtfields(301).Text = rsa("tchead")
            End If
        End If


    Case 302
        If Opt = "add" Or Opt = "mod" Then
                Set rsa = New Recordset
                rsa.Open "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(txtfields(302).Text) & "'", DB, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.Clear = True
                    LookUp.query = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype"
                    LookUp.DefCol = "Purchase Type Description"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Purchase Type Listing"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                            txtfields(302).Text = LookUp.Fields(0)
                            txtfields(303).Text = LookUp.Fields(1)
                            LookUp.Clear = True
                            'txtfields(88).SetFocus
                     Else
                            txtfields(302).SetFocus
                            End If
                     Else
                            txtfields(303).Text = rsa(1)
                     End If
         End If
    
    '01/08/16
    Case 98
        If Opt = "add" Or Opt = "mod" Then
                Set rsa = New Recordset
                rsa.Open "select GLCODE ,GLHEAD from FA_GLMAS Where GLCODE='" & Trim(txtfields(98).Text) & "'", DB, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.Clear = True
                    LookUp.query = "select GLCODE,GLHEAD from FA_GLMAS WHERE GLCODE LIKE '5%'"
                    'LookUp.DefCol = "Purchase Type Description"
                    LookUp.DefCol = "GLHEAD"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Purchase Type Listing"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                            txtfields(98).Text = LookUp.Fields(0)
                            txtfields(99).Text = LookUp.Fields(1)
                            LookUp.Clear = True
                            txtfields(302).SetFocus
                     Else
                            txtfields(98).SetFocus
                            End If
                     Else
                            txtfields(99).Text = rsa(1)
                     End If
         End If
       Case 103
        Call LotValueAssign(val(txtfields(Index).Text), itcsper)
        Call LotCalculation

    Case 132
        If (Opt = "add" Or Opt = "mod") And Chk_TDSFLAG.value = 1 Then
            Set rsa = New Recordset
            rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Clear = True
                qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
                LookUp.query = qrl
                LookUp.Caption = "TDS Type Listing"
                LookUp.DefCol = "TDShead"
                LookUp.ALIGN = "1500,3900"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    If LookUp.Fields(0) = "" Then
                        MsgBox "No Transaction Codes found", vbInformation, head
                        Exit Sub
                    End If
                    txtfields(132).Text = LookUp.Fields(0)
                    txtfields(131).Text = LookUp.Fields(1)
                End If
            Else
                 txtfields(131).Text = rsa(1)
            End If
        End If
    End Select
End If

On Error Resume Next
If Opt = "" Or Opt = " " Then
    Select Case Index
    Case 23
        txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
    Case 24
        txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
    Case 81
        txtfields(81).Text = Format(txtfields(81).Text, "#0.000")
    Case 82
        txtfields(82).Text = Format(txtfields(82).Text, "#0.000")
    Case 25
        txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
    Case 18
        txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    Case 5
        txtfields(5).Text = Format(txtfields(5).Text, "#0.000")
    End Select
End If


If Opt = "add" Then
Select Case Index
Case 4
'    If val(TXTFIELDS(47).Text) <> val(TXTFIELDS(4).Text) + val(adoPrimaryRS("pjamt")) Then
'         txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
'    Else
'         txtDBCRNt.Text = Format(0, "0.00")
'    End If
'    If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
'         txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
'    Else
'         txtDBCRNt.Text = Format(0, "0.00")
'    End If
Case 9
    If val(txtfields(9).Text) = 0 Then
        MsgBox "Bill weight must be greater than zero", vbInformation, head
        txtfields(9).Text = 0#
        Cancel = True
        Exit Sub
    End If
Case 15
    txtfields(78).Text = val(txtfields(78).Text) '- Val(txtfields(15).Text)
    'Txtfields(7).Text = Val(Txtfields(78).Text) - Val(Txtfields(15).Text)
Case 7
    If val(txtfields(7).Text) = 0 Then
        MsgBox "Bill amount must be greater than zero", vbInformation, head
        txtfields(7).Text = 0#
        txtfields(7).SetFocus
        Cancel = True
        Exit Sub
    Else
        txtfields(7).Text = Format(txtfields(7).Text, "0.00")
    End If
Case 47
   If val(txtfields(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
            SSTab2.Tab = 1
            txtfields(53).SetFocus
        End If
    End If
    Call DRCRAmt
End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form frmPurchaseBill", vbInformation, head
End Sub


Public Sub Rg23A()
'************************************************************************
        'THIS  PROCEDURE IS USED FOR RG23A -RMI
'************************************************************************
On Error GoTo Rg23A_Error

If Combo2.Text = "Yes" Then
Set Rs = New Recordset
Rs.Open "Select * from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & txtfields(0).Text & "' and dutydocno is  not Null", DB, adOpenStatic
If Rs.RecordCount = 0 Then
    If Table_Exists("ig_dutytrn") = False Then Exit Sub
    
    Set Rs = New Recordset
    Rs.Open "Select count(*) from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", DB, adOpenStatic
    If Rs(0) > 0 Then
    Dim doc_no As String
    Set Rs = New Recordset
    Rs.Open "SELECT YEAR_CODE FROM IG_TRANYEAR WHERE '" & Format(pdate, "yyyy-mm-dd") & "' BETWEEN START_DATE AND END_DATE", DB, adOpenStatic
    Dim ls As New Recordset
    ls.Open "Select duty_code from rm_param ", DB, adOpenStatic
    Set rs1 = New Recordset
    rs1.Open "select isnull(max(LAST_NO),0)+1 from ig_doccontrol where doc_type='D' and divcode='" & Divcode & "' and DOC_REF='" & ls(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
    doc_no = Rs(0) & Padl(CStr(rs1(0)), 6, "0")
    Set rs3 = New Recordset   'For Dutycode
    rs3.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Insert into ig_dutytrn (divcode,duty_code,doc_no,date,tran_type,reference,bank_sl,bed_amt,aed_amt,ref_dt) values " & _
    " ('" & Divcode & "','" & rs3(0) & "','" & doc_no & "','" & Format(pdate, "yyyy-mm-dd") & "','O','" & txtfields(6).Text & "','" & txtfields(26).Text & "', " & val(txtfields(75).Text) & "," & val(txtfields(71).Text) & ",'" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
    DB.Execute "Update rm_lot set dutydocno='" & doc_no & "' where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & txtfields(0).Text & "'"
    Set Rs = New Recordset
    Rs.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Update ig_doccontrol set last_no ='" & rs1(0) & "' where doc_type='D' and doc_ref='" & Rs(0) & "'and divcode='" & Divcode & "'"
End If
End If
End If


Exit Sub
Rg23A_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rg23A of Form frmPurchaseBill", vbInformation, head
End Sub

Public Function Table_Exists(Table_Name As String) As Boolean
    On Error GoTo Err1
    Table_Name = UCase(Table_Name)
    Dim TDb As New Connection
    Dim trs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    trs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "'", TDb, adOpenStatic, adLockReadOnly
    If trs.RecordCount > 0 Then
        trs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    trs.Close
    TDb.Close
    Table_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function
Public Sub delrg23c()
'                ******************************************** Deletion in Duty Trn********************************************
On Error GoTo delrg23c_Error

Set Rs = New Recordset
Rs.Open "select a.duty_code from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    If (Rs.RecordCount > 0) And Not (Trim(adoPrimaryRS("dutydocno")) = "") Then
        DB.Execute "Delete from ig_dutytrn where divcode='" & Divcode & "' and duty_code='" & Rs(0) & "' and DOC_NO='" & adoPrimaryRS("dutydocno") & "'"
        DB.Execute "Update rm_lot set dutydocno=Null,rg23a=Null where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & txtfields(0).Text & "'"
    End If
End If


Exit Sub
delrg23c_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delrg23c of Form frmPurchaseBill", vbInformation, head
End Sub
Public Sub header2(pg As Integer, co As Integer, Rs As Recordset)
Set Rs = New Recordset
Dim Lrs As New ADODB.Recordset
'Developed by D.PArim
'Rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,fa_slmas e,rm_area f where  a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno " & _
'            "and  a.catcd=c.catcd and f.areacode=a.areacd and a.supcd=d.slcode and a.brkcd*=e.slcode and a.divcode='" & Divcode & "' and  a.arrno = '" & Txtfields(1) & "' AND a.lotno='" & Txtfields(2) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic, adLockBatchOptimistic
''BAlkrishna *= 28.07.16

Rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality from rm_lot a  inner join rm_arrival b on a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno inner join rm_cat c on a.catcd=c.catcd inner join fa_slmas d on a.supcd=d.slcode left join  fa_slmas e on a.brkcd = e.slcode inner join rm_area f on f.areacode=a.areacd where  " & _
            "a.divcode='" & Divcode & "' and  a.arrno = '" & txtfields(1) & "' AND a.lotno='" & txtfields(2) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic



Print #z, Space(5) & CENTRE(Chr(14) & divname & Chr(14), 74, " ")
Print #z, Chr(27) & Chr(205) & Chr(27) & Chr(77)
Print #z,
Print #z, Space(5) + Chr(27) & "E" & CENTRE("Raw Metarial Received Note", 112, " ") & Chr(27) & "F"
Print #z, Space(5) + Chr(27) & "E" & CENTRE("__________________________", 112, " ") & Chr(27) & "F"
Print #z, Space(83); Padl("M.Lot :", 7, " "); Space(1); Chr(27) + Chr(87) + "1" + Padr(Rs("lotno"), 7, " ") & Chr(27) + Chr(87) + "0"
Print #z,
'Print #z, Space(64); Padl("S.No.:", 7, " "); Space(1); Padl(rs("sno"), 5, " "); Space(6); Padl("P.Lot :", 7, " "); Space(1); Padl(rs("plotno"), 7, " ")
Print #z, Space(64); Padl("S.No.:", 7, " "); Space(1); Padl(Rs("lotno"), 5, " "); Space(6); Padl("P.Lot :", 7, " "); Space(1); Padl(Rs("plotno"), 7, " ")

Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5); "Party Name :"; Space(1); Padr(Rs("slname"), 25, " "); Chr(179); Space(1); "P.O.No.  :"; Padr(Rs("contno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(Rs("contdt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Received On   :"; Space(1); Padl(Format(Rs("lotdt"), "dd-mm-yy"), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "Broker Name:"; Space(1); Padr(Rs("broker"), 25, " "); Chr(179); Space(1); "Bill No. :"; Padr(Rs("Fbillno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(Rs("fbilldt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Lorry No      :"; Space(1); Padl(Rs("lorrynos"), 15, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)

Set Lrs = New Recordset
Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & Rs("contno") & "' ", DB, adOpenStatic
If Lrs.RecordCount > 0 Then
  If Lrs("DLYTYPE") = "F" Then
    delivery = "F"
  ElseIf Lrs("DLYTYPE") = "S" Then
    delivery = "S"
  End If
Else
  delivery = " "
End If


'Lrs.Open "select rtrim(ltrim(isnull(delivery,''))) from rm_Cont where " & _
'            " contno = (select contno from rm_arrival where lotno = " & Val(Txtfields(2).Text) & " and lotdt = '" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and divcode = " & Divcode & ") and " & _
'            " contdt = (select contdt from rm_arrival where lotno = " & Val(Txtfields(2).Text) & " and lotdt = '" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  divcode = " & Divcode & ") ", DB, adOpenDynamic, adLockReadOnly



Print #z, Space(5); "Station    :"; Space(1); Padr(Rs("station"), 25, ""); Chr(179); Space(1); "Rate/Candy : "; Padl(INF(Rs("ratecy"), 2), 10, " "); Space(1); Space(1); Space(2); Padl(delivery, 12, " "); Space(1); Chr(179); Space(1); "Lorry Freight :"; Space(1); Padl(INF(Rs("freight"), 2), 10, " ")
'Print #z, Space(5); "Station    :"; Space(1); Padr(rs("station"), 25, ""); Chr(179); Space(1); "Rate/Candy : "; Padl(INF(rs("ratecy"), 2), 10, " "); Space(1); Space(1); Space(2); Padl(IIf(Lrs(0) = "FOR MILL DELIVERY", "MILL", Lrs(0)), 12, " "); Space(1); Chr(179); Space(1); "Lorry Freight:"; Space(1); Padl(INF(rs("freight"), 2), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "            "; Space(26); Chr(179); Space(1); IIf(Rs("DBAMT") > 0, "Debit Amt  : " & Padl(INF(Rs("DBAMT"), 2), 10, " "), "Credit Amt : " & Padl(INF(Rs("DBAMT"), 2), 10, " ")); Space(17); Chr(179); Space(1); "Qlty Allowance:"; Space(1); Padl(INF(Rs("Quality"), 2), 10, " ")


Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5) + "S.No  Item                  No.of Bales    Party NWT      Mill NWT    Invoice Value       Net Value"
Print #z, Space(5) + String(112, Chr(196))
End Sub
Private Function EXIST_VAT(slcode As String)
'------------------------''To check State code is null
On Error GoTo EXIST_VAT_Error
 EXIST_VAT = True
Set rsa = New Recordset
rsa.Open "select state_code from fa_slmas where slcode='" & slcode & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    If IsNull(rsa(0)) = True Then
        EXIST_VAT = False
        Exit Function
    End If
End If

'------------------------'' To check supplier are in same state
Set staters = New Recordset
staters.Open "select a.state_code from fa_slmas a,pp_divmas b where a.state_code=b.state_code and a.slcode='" & slcode & "' and  a.state_code is not null", DB, adOpenStatic
If staters.RecordCount > 0 Then
    '''To check TINNO exist for that particular supplier
    Set NewRs = New Recordset
    NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & slcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If NewRs("TINNO") = "" Then
       'd = MsgBox("TINNO Not Exists For This Supplier [ Do You Want To Continue ]", vbYesNo)   ',vbinformation,head
       EXIST_VAT = False
    Else
       EXIST_VAT = True
    End If
End If


Exit Function
EXIST_VAT_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure EXIST_VAT of Form frmPurchaseBill", vbInformation, head
End Function

Private Function fBillValue(Assvalue As Double) As Double
    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
       If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
       Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtfields(104)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
       End If
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        End If
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        End If
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) + val(txtfields(104)) - (val(txtfields(54)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        End If
    End If
    
    txtfields(47).Text = Format(KSLRound(val(txtfields(47).Text), LANDCOST_ROFF), "0.00")
End Function
Private Sub DRCRAmt()
On Error GoTo DRCRAmt_Error
''    Set Rs = New Recordset
''    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
''    If Rs(0) = "Y" And Rs(1) = "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) - val(TXTFIELDS(60).Text), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) - val(TXTFIELDS(60).Text), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    End If
    
    'If val(TXTFIELDS(96).Text) <> 0 Then
        txtDBCRNt = val(txtfields(96).Text) - val(txtfields(47).Text)
        
    'End If
Exit Sub
DRCRAmt_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DRCRAmt of Form frmPurchaseBill", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Function BillSelection(lotno As String, lotdate As Date)

On Error GoTo BillSelection_Error

BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
StatusBar1.Panels(2).Text = ""
Ksllist1.listfield1 = "Lotno"
Ksllist1.Description = lotdate
Ksllist1.listfield1 = "Lotno"

Select Case Ksllist1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    txtfields(83).Text = Ksllist1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & txtfields(83).Text & "'", DB
    txtfields(56).Text = val(newrs1(0))  'taxper
    txtfields(55).Text = val(txtfields(7).Text) * val(txtfields(56).Text) / 100
    txtfields(94).Text = val(newrs1(1))  'SCper
    txtfields(93).Text = val(txtfields(55).Text) * val(txtfields(94).Text) / 100
    txtfields(55).SetFocus

Case "Lotno"
If Ksllist1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,CASE WHEN WEIGHTfLG='M' THEN GRSWGT ELSE PGRSWT END AS GRSWT,CASE WHEN WEIGHTFLG='M' THEN TAREWT ELSE PTAREWT END AS TAREWT,CASE WHEN WEIGHTFLG='M' THEN NETWT ELSE PNETWT END AS NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,Dutyper,DiscountFlg, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,PNETWT" & _
                    " FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(lotdate, "yyyy-mm-dd") & "' and lotno=" & Trim(lotno) & " and OPFLG ='N' ", DB, adOpenStatic, adLockBatchOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
 
    If UCase(adoPrimaryRS("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoPrimaryRS("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        txtfields(56).Text = IIf(IsNull(adoPrimaryRS("vatper")), 0, adoPrimaryRS("vatper"))
        txtfields(55).Text = IIf(IsNull(adoPrimaryRS("vatamt")), 0, adoPrimaryRS("vatamt"))
        txtfields(94).Text = IIf(IsNull(adoPrimaryRS("scper")), 0, adoPrimaryRS("scper"))
        txtfields(93).Text = IIf(IsNull(adoPrimaryRS("scamt")), 0, adoPrimaryRS("scamt"))
    End If
    
        txtfields(109).Text = IIf(IsNull(adoPrimaryRS!DutyPer), "0.00", Format(adoPrimaryRS!DutyPer, "0.00"))

    
    If adoPrimaryRS!dutyclaimable = "Y" Then
        opt_c.value = True
        txtfields(109).Enabled = True
        txtfields(109).Text = "100.00"
    Else
        opt_nc.value = True
        txtfields(109).Enabled = False
        txtfields(109).Text = "0.00"
    End If
    If adoPrimaryRS!discountFlg = "Y" Then opt_c.value = True Else opt_nc.value = True
    
    txtfields(25).Locked = True
    txtfields(0).Locked = True
    txtfields(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    txtfields(2).Locked = True
    txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
    txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
    txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
    txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    txtfields(82).Text = Format(txtfields(82).Text, "#0.00")
    txtfields(23).Locked = False
    txtfields(24).Locked = False
    txtfields(25).Locked = False
    txtfields(46).Text = Format(txtfields(46).Text, "#0.000")
    txtfields(47).Text = Format(txtfields(47).Text, "#0.000")
    txtfields(48).Text = Format(val(txtfields(48).Text), "#0.000")
    txtfields(49).Text = Format(val(txtfields(49).Text), "#0.000")
    txtfields(50).Text = Format(val(txtfields(50).Text), "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(lotno) & " and c.lotdt='" & Format(lotdate, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
            
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        
        If adoPrimaryRS!dutyclaimable = "Y" Then opt_c.value = True Else opt_nc.value = True
        
        If adoPrimaryRS!dutyclaimable = "Y" Then lblDutyPer.Enabled = True: txtfields(109).Enabled = True
        dblLandedCost = 0
        dblDuty = 0
        s = 0
        LANDEDCOST (IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")))

    txtfields(78).Text = Format(txtfields(78).Text, "#0.00")
    txtfields(82) = Format(txtfields(82).Text, "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            txtfields(6).Text = IIf(IsNull(adoPrimaryRS("BillnO")), 0, adoPrimaryRS("BillNO"))
            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))
        End If
   End If

''''''''''''''''''''
   txtfields(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        txtfields(3).Text = Rs("VARNAME")
    Else
        txtfields(3).Text = ""
    End If
    If adoPrimaryRS("dbamt") <> Null Then
    txtDBCRNt.Text = ""
    End If
 Else
    MsgBox "The Record Cannot be Add or Delete Beacuse the Bale is already Issued", vbInformation, head
    Frame3.Visible = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
 End If
Else
    Frame3.Visible = False
    Call BUTTON_Click(10)
    Exit Function
End If
Case "cast(a.tc as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = Ksllist1.Code
    txtfields(301).Text = Ksllist1.Description
    txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = Ksllist1.Code
    txtfields(301).Text = Ksllist1.Description
    txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    txtfields(302).Text = Ksllist1.Code
    txtfields(303).Text = Ksllist1.Description
    txtfields(304).SetFocus
End Select
Frame3.Visible = False

txtfields(300).tabIndex = 0
txtfields(300).SetFocus
SSTab2.Tab = 0
Call fBillValue(dAssValue)





If Opt = "del" Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus

Exit Function
BillSelection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BillSelection of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Function

Private Function LANDEDCOST(sAssessAMOUNT As Double)
intervalMinutes = -1
 dCashDis = 0
 dTradeDis = 0
 dLryFgt = 0
 DBED = 0
 dCess = 0
 dEDCess = 0
 dHScess = 0
 dTax = 0
 dSC = 0
 dAddTax = 0
 dCST = 0
 dOtherTax = 0
 dRlyFrg = 0
 dInsurance = 0
 dComm = 0
 dLC = 0
 dDRnote = 0
 dDamage = 0
 dCustoms = 0
 dClearance = 0
 dOthersTaxable = 0
 dOthersNonTaxable = 0
 dBrokerComm = 0
 dFbillValue = 0
 dCharity = 0
 DSICAAmt = 0
 DTCSAMT1 = 0

    dOtherTax = val(txtfields(51))
    dComm = val(txtfields(60))
    dLC = val(txtfields(62))
    dDRnote = val(txtfields(70))
    dCashDis = val(txtfields(54))
    dTradeDis = val(txtfields(85))
    dLryFgt = val(txtfields(38))
    DBED = val(txtfields(75))
    dCess = val(txtfields(65))
    dEDCess = val(txtfields(73))
    dHScess = val(txtfields(71))
    dTax = val(txtfields(55))
    dSC = val(txtfields(93))
    dAddTax = val(txtfields(77))
    dCST = val(txtfields(87))
    dRlyFrg = val(txtfields(43))
    dInsurance = val(txtfields(58))
    dDamage = val(txtfields(64))
    dCustoms = val(txtfields(69))
    dClearance = val(txtfields(66))
    dOthersTaxable = val(txtfields(41))
    dOthersNonTaxable = val(txtfields(67))
    dBrokerComm = val(txtfields(83))
    dCharity = val(txtfields(63))
    DSICAAmt = val(txtfields(97).Text)
    TCSLANCOST = val(txtfields(104).Text)
    dFbillValue = 0
'val (Txtfields(82))

        dblLandedCost = 0
        dblDuty = 0
        s = 0
        If opt_c.value = True Then
            s = val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65))
            dblDuty = s * (100 - val(txtfields(109))) / 100
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + TCSLANCOST
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt + TCSLANCOST
            End If
        Else
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + TCSLANCOST
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt + TCSLANCOST
            End If
        End If
               
        txtfields(35).Text = KSLRound(val(dblLandedCost), LANDCOST_ROFF)
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(83).Text & "'", DB, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dTax - dSC
            End If
        Else
           ' dblLandedCost = dblLandedCost ''sasi 30.6.17
            dblLandedCost = dblLandedCost - dTax - dSC
        End If
        
        Set rs2 = New Recordset
            rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(42).Text & "'", DB, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
               dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dAddTax
            End If
        Else
          ''  dblLandedCost = dblLandedCost'sasi 30.6.17'
           dblLandedCost = dblLandedCost - dAddTax
        End If
        
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
        
      
      If EXIST_VAT(txtfields(26).Text) = True And VATFLG = "Y" Then
            'txtFields(78).Text = val(txtFields(78).Text) - val(txtFields(55).Text)
      End If
      
      txtfields(78).Text = KSLRound(val(dblLandedCost), LANDCOST_ROFF)
End Function



Private Sub OtherTaxCal()
     If val(txtfields(52).Text) <> 0 Then
     Set Rs = New Recordset
     Rs.Open "SELECT commtax FROM RM_PARAM", DB, adOpenStatic
        If Rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    txtfields(51).Text = Round(val(txtfields(52).Text) * ((val(dAssValue) + val(txtfields(60).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF)
                Else
                    txtfields(51).Text = Round(val(txtfields(52).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    txtfields(51).Text = Round(val(txtfields(52).Text) * ((val(dAssValue) + val(txtfields(60).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF)
                Else
                    txtfields(51).Text = Round(val(txtfields(52).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    txtfields(51).Text = Round(val(txtfields(52).Text) * (val(dAssValue) + val(txtfields(41).Text) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF)
                Else
                    txtfields(51).Text = Round(val(txtfields(52).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    txtfields(51).Text = Round(val(txtfields(52).Text) * (val(dAssValue) + val(txtfields(41).Text) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF)
                Else
                    txtfields(51).Text = Round(val(txtfields(52).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF)
                End If
            End If
        End If
    End If
End Sub

Private Sub CSTTaxCalc()
    If val(txtfields(86).Text) <> 0 Then
     Set Rs = New Recordset
     Rs.Open "SELECT commtax FROM RM_PARAM", DB, adOpenStatic
        If Rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    txtfields(87).Text = Round(val(txtfields(86).Text) * ((val(dAssValue) + val(txtfields(60).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF)
                Else
                    txtfields(87).Text = Round(val(txtfields(86).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    txtfields(87).Text = Round(val(txtfields(86).Text) * ((val(dAssValue) + val(txtfields(60).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF)
                Else
                    txtfields(87).Text = Round(val(txtfields(86).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    txtfields(87).Text = Round(val(txtfields(86).Text) * (val(dAssValue) + val(txtfields(41).Text) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF)
                Else
                    txtfields(87).Text = Round(val(txtfields(86).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    txtfields(87).Text = Round(val(txtfields(86).Text) * (val(dAssValue) + val(txtfields(41).Text) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF)
                Else
                    txtfields(87).Text = Round(val(txtfields(86).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF)
                End If
            End If
        End If
    End If
End Sub
Private Sub TaxCalc()
   ' If val(txtFields(55).Text) = 0 Then
    If optAfter = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        
'        If Rs("commtax") = "Y" Then
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
'        Else
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
'        End If


         If Rs("commtax") = "Y" Then
            If delivery = "S" Then
               ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0)
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
               ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(55).Text = Format(Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0), "0.00")
               
            End If
        Else
            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0)

            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                
                
              txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
              txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
              txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
               txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0)
            End If
        End If

    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If delivery = "S" Then
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), 0), "0.00")
                txtfields(117).Text = Format(Round(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), 0), "0.00")
                txtfields(116).Text = Format(Round(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), 0), "0.00")
                txtfields(118).Text = Format(Round(txtfields(118).Text, 0), "0.00")
                txtfields(117).Text = Format(Round(txtfields(117).Text, 0), "0.00")
                txtfields(116).Text = Format(Round(txtfields(116).Text, 0), "0.00")
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                
               
            Else
                If CustID = "COTTON" Then
                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                    'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                    txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")

                Else
                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                   ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                    
                    txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                    txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                    
                End If
            End If
        Else
            If delivery = "S" Then
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(55).Text = Format(Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0), "0.00")
                
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, 2), "0.00"), 0), "0.00")
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                
            End If
        End If
    End If

    'Surcharge
    txtfields(93).Text = Format(Round((val(txtfields(55).Text) * val(txtfields(94).Text)) / 100, SURCHARGE_ROFF), "0.00")

    
End Sub
Private Sub AddTaxCalc()
If val(txtfields(79).Text) <> 0 Then
    If optAfter = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    End If
End If
End Sub

Private Sub ReturnTransType()
   Dim trs As New ADODB.Recordset
   If Trim(txtfields(300).Text) <> "" Then
      strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(txtfields(300).Text) & "'"
      trs.Open strSQL, DB, adOpenStatic
      If trs.EOF = False Then
         txtfields(301).Text = IIf(IsNull(trs.Fields("TcHead").value), "", trs.Fields("TcHead").value)
      End If
   End If
   Set trs = Nothing
End Sub

Private Sub ReturnProcessType()
   Dim trs As New ADODB.Recordset
   If Trim(txtfields(302).Text) <> "" Then
      strSQL = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(txtfields(302).Text) & "'"
      trs.Open strSQL, DB, adOpenStatic
      If trs.EOF = False Then
         txtfields(303).Text = IIf(IsNull(trs.Fields("purChase Type Description").value), "", trs.Fields("purChase Type Description").value)
      End If
   End If
   Set trs = Nothing
End Sub

Private Sub StockOk_Click()
On Error GoTo StockOk_Click_Error
Dim lRow, I As Integer
Dim dblGrWt As Double
sInwardNo = ""
sInwardDate = ""

    If LstPO.SelCount = 0 Then
        MsgBox "Select Lot(s) from the Lot No. Listing", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
            totrow = totrow + 1
        End If
    Next
                
    Call SpreadAlign(CInt(totrow))
        iRow = 0
        
        dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
        GTax = "":          txtfields(56).Text = "":  dTax = 0:     dAddTax = 0:        dCashDis = 0:        dTradeDis = 0
        dSC = 0:            txtfields(94).Text = "":  dSCper = 0: dScamt = 0
        dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
        dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
        dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
        dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
        dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
        dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0
        dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0: DSICAAmt = 0: DTCSAMT = 0: DTCSASSAMT = 0: dTDSAssAmt = 0: DTDSAmt = 0:
         sCode = ""
         txtfields(83).Text = ""
         delivery = ""
         sBrkcd = ""
         dBrkComm = 0
         
        Opt = ""
        Chk_TDSFLAG.value = 1
        Opt = "add"
        
        Set rss = New Recordset
        rss.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur from rm_PARAM b  ", DB, adOpenStatic
        If Not rss.EOF Then
            TDSGRossFixed = rss(1)
            TDSPERWP = rss(0)
            TDSPERWOP = rss(2)
            TDSCalcTotPur = rss(3)
            txtfields(129).Text = Format(TDSPERWP, "#0.000")
        End If

            

         
    '================Broker check=
     For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
         iRow = iRow + 1
            sLotno = ""
            sLotDt = ""
            sSLcode = ""
            Scatcd = ""
            
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sSLcode = Trim(txtfields(81).Text)
             Scatcd = Trim(Mid(LstPO.List(lRow), 90, 6))
             
            Set Rs = New Recordset
            Rs.Open "select isnull(a.BRKCD,'') AS BRKCD,isnull(e.CommPer,0) AS CommPer from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and a.catcd='" & Scatcd & "' ", DB, adOpenStatic
            If Not Rs.EOF Then
                
               If Not sBrkcd = "" And Not sBrkcd = Rs("BRKCD") Then
                    MsgBox "Selected Lot Agent name not equal, So select same Aagent Lot No.(s) ", vbCritical, head
                    Exit Sub
               Else
                   sBrkcd = Rs("BRKCD")
               End If
                
               If Not dBrkComm = 0 And Not dBrkComm = Rs("CommPer") Then
                    If MsgBox("Selected Lot Agent Commission not equal, So select same Agent Commission Lot No.(s) " & vbCrLf & "Do you want continue..", vbQuestion + vbYesNo, head) = vbNo Then
                        Exit Sub
                    End If
               Else
                   dBrkComm = Rs("CommPer")
               End If
               
               txtfields(91).Text = Format(dBrkComm, "#0.00")
               
            End If
            
            
        End If
    Next
    
    iRow = 0
    For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
         iRow = iRow + 1
            sLotno = ""
            sLotDt = ""
            sSLcode = ""
            
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sSLcode = Trim(txtfields(81).Text)
            Scatcd = Trim(Mid(LstPO.List(lRow), 90, 6))
            
            Set Rs = New Recordset
            Rs.Open "select e.dlytype from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and a.catcd='" & Scatcd & "' ", DB, adOpenStatic
            If Not Rs.EOF Then
                If Trim(delivery) = "" Then delivery = Rs(0)
                strDelType = Rs(0)
                If Trim(strDelType) <> Trim(delivery) Then
                    MsgBox "Please select the Lot(s), Delivery Type must be unique", vbInformation, head
                    LstPO.SetFocus
                    Exit Sub
                End If
            Else
                delivery = ""
            End If
            
            Call Lotdisplay(sLotno, sLotDt, sSLcode, iRow, Scatcd)
            
        End If
    Next
    
   Call SpreadAlign(CInt(totrow))
'   For lRow = 1 To spdVar.MaxRows
'        If sCode <> GetText(spdVar, ITaxCode, lRow) Then
'            MsgBox "Selected Lot(s) Tax is Differs", vbInformation
'        End If
'   Next
    Frame14.Visible = False
    SSTab1.Enabled = True
    SSTab2.Tab = 0
    txtfields(300).Text = ""
    txtfields(301).Text = ""
    '
    '01/08/16
    txtfields(98).Text = ""
    txtfields(99).Text = ""
    
    txtfields(302).Text = ""
    txtfields(304).Text = ""
    txtfields(6).Text = ""
    txtAdjValue.Text = "0.00"
    txtfields(6).Locked = True
    txtfields(7).Locked = True
    
    MaskEdBox1(2).Enabled = True
    MaskEdBox1(3).Enabled = True
    MaskEdBox1(2).Mask = "__/__/____"
    MaskEdBox1(3).Mask = "__/__/____"
    MaskEdBox1(3).Mask = pdate
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
    If txtfields(300).Enabled = True Then txtfields(300).SetFocus

Exit Sub
StockOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockOk_Click of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    SetSpreadCol spdVar, ILotNo, "Lot No", CellTypeStaticText
    SetSpreadCol spdVar, ILotdt, "Lot Date", CellTypeStaticText
    SetSpreadCol spdVar, IVarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol spdVar, IVarName, "Variety Name", CellTypeStaticText
    SetSpreadCol spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol spdVar, Icandyrate, "Rate/Unit", CellTypeNumber, 4
    SetSpreadCol spdVar, IRebate, "Rebate", CellTypeNumber
    SetSpreadCol spdVar, iQty, "Quantity", CellTypeNumber
    SetSpreadCol spdVar, Imgrosswt, "Mill Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imtarewt, "Mill Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Immoiturewt, "Mill Moisture Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imnetwt, "Mill Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipgrosswt, "Supplier Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Iptarewt, "Supplier Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipnetwt, "Supplier Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipjamt, "Value", CellTypeNumber, 2
    SetSpreadCol spdVar, Iwbwt, "Weighbridge Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Icashdisper, "Cash Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icashdisamt, "Cash Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisper, "Trade Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisamt, "Trade Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtper, "Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtamt, "Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedper, "B.E.D %", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedamt, "B.E.D Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdper, "E.D Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdamt, "E.D Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessper, "HS Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessamt, "HS Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessper, "Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessamt, "Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxCode, "Tax Code", CellTypeEdit
    SetSpreadCol spdVar, ITaxper, "Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxamt, "Tax Amt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, ISCper, "Surcharge %", CellTypeNumber, 2
    SetSpreadCol spdVar, ISCamt, "Surcharge Amt", CellTypeNumber, 2
    '''sasi16.6.17
    SetSpreadCol spdVar, IHSN, "HSN", CellTypeStaticText
    SetSpreadCol spdVar, ICGSTPER, "CGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICGSTAMT, "CGST Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ISGSTPER, "SGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, ISGSTAMT, "SGST Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IIGSTPER, "IGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, IIGSTAMT, "IGST Amt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, ICommper, "Commission %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICommAMT, "Commission Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCper, "LC Interest %", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCamt, "LC Interest Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 3
    SetSpreadCol spdVar, IInsamt, "Insurance Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthtaxPer, "Other Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IothTaxamt, "Other Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtper, "Rl. Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtamt, "Rl. Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icharity, "Charity Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Idamage, "Damage Amt", CellTypeNumber, 2
    'SetSpreadCol spdVar, Ishipchrg, "Shipment Charge", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthTaxableAmt, "Others (Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthers, "Others (Non-Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IcustomDuty, "Custom Duty Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Ibrkcom, "Broker Commission    ", CellTypeNumber, 2
    SetSpreadCol spdVar, ILandedcost, "Landed Cost      ", CellTypeNumber, 2
    SetSpreadCol spdVar, IRateKG, "Rate/kg    ", CellTypeNumber, 4
    SetSpreadCol spdVar, IAcWgt, "A/c Weight", CellTypeNumber, 2
    SetSpreadCol spdVar, Iround, "Adjustment", CellTypeNumber, 2
    SetSpreadCol spdVar, ISICAAmt, "SIC AAmt", CellTypeNumber, 2
    
      
    SetSpreadCol spdVar, itcsper, "TCS %", CellTypeNumber, 3
    SetSpreadCol spdVar, itcsamt, "TCS Amount", CellTypeNumber, 2
    
    SetSpreadCol spdVar, ITDSPER, "TDS_Per", CellTypeNumber, 3
    SetSpreadCol spdVar, ITDSAMT, "TDS Amount", CellTypeNumber, 2
    SetSpreadCol spdVar, ITDSASSAMT, "TDS AssAmount", CellTypeNumber, 2
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
'    spdVar.Col = 2
'    spdVar.ColHidden = True
'    spdvar.
    spdVar.ColWidth(13) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    
    
      '''sasi GST- 19.6.17
    spdVar.Col = IBedper
    spdVar.ColHidden = True
    spdVar.Col = IBedamt
    spdVar.ColHidden = True
    spdVar.Col = IHscessper
    spdVar.ColHidden = True
    spdVar.Col = IHscessamt
    spdVar.ColHidden = True
    spdVar.Col = Icessper
    spdVar.ColHidden = True
    spdVar.Col = Icessamt
    spdVar.ColHidden = True

    spdVar.Col = ITaxCode
    spdVar.ColHidden = True
    spdVar.Col = ITaxper
    spdVar.ColHidden = True
    spdVar.Col = ITaxamt
    spdVar.ColHidden = True
    spdVar.Col = IOthtaxPer
    spdVar.ColHidden = True
    spdVar.Col = IothTaxamt
    spdVar.ColHidden = True
    
    spdVar.Col = ICGSTAMT
    spdVar.Lock = True
    spdVar.Col = ICGSTPER
    spdVar.Lock = True
    spdVar.Col = ISGSTAMT
    spdVar.Lock = True
    spdVar.Col = ISGSTPER
    spdVar.Lock = True
    spdVar.Col = IIGSTPER
    spdVar.Lock = True
    spdVar.Col = IIGSTAMT
    spdVar.Lock = True
    
    spdVar.ColWidth(4) = 16
    spdVar.Col = 9
    spdVar.Lock = True
    spdVar.Col = 10
    spdVar.Lock = True
    spdVar.Col = 11
    spdVar.Lock = True
    spdVar.Col = 12
    spdVar.Lock = True
    spdVar.Col = 8
    spdVar.Lock = True
    
    spdVar.Col = itcsamt
    spdVar.Visible = True
    spdVar.Col = itcsper
    spdVar.Visible = True
    
    Set Rs = New Recordset
    Rs.Open "Select AddtaxRequired from Rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        SetSpreadCol spdVar, IATaxCode, "Add. Tax Code", CellTypeEdit
        SetSpreadCol spdVar, IATaxper, "Add. Tax %", CellTypeNumber, 2
        SetSpreadCol spdVar, IATaxamt, "Add. Tax Amt", CellTypeNumber, 2
        
        spdVar.ColWidth(IATaxCode) = 10
        spdVar.ColWidth(IATaxper) = 9
        spdVar.ColWidth(IATaxamt) = 9
    
        With spdVar
            .MaxCols = 70
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    Else

        With spdVar
            .MaxCols = 67
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub
Private Sub Lotdisplay(lotno As String, LOTDT As String, SUPCD As String, iRow As Integer, cat As String)
On Error GoTo Lotdisplay_Error
intervalMinutes = -1
    Unbindcontls
    Set RSq = New Recordset
' commented on 06-08-18 by mariyaiya
'    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,isnull(scper,0)scper,isnull(scamt,0)scamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,favaourablewgt,weightFlg,ISNULL(ADJVALUE,0) ADJVALUE,isnull(brkcd,'') as brkcd,isnull(brkcomPer,0) as brkcomPer,RateUnit,Isnull(SuppBillvalue,0)SuppBillvalue,isnull(dbamt,0)dbamt,isnull(SICAAmt,0)SICAAmt, " & _
'    " ISNULL(HSN,'') HSN,ISNULL(cgstper,0) cgstper,ISNULL(cgstamt,0)cgstamt,ISNULL(sgstper,0)sgstper,ISNULL(sgstamt,0)sgstamt,ISNULL(igstper,0) igstper,ISNULL(igstamt,0) igstamt,catcd " & _
'    " from rm_lot where lotno=" & val(LOTNO) & " and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and supcd='" & Trim(sSLcode) & "' and lottype='A' and divcode='" & Divcode & "' ORDER BY LOTYEAR asc", db, adopenstaic, adLockBatchOptimistic
    
   'added on 06-08-18 by mariyaiya
    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,isnull(scper,0)scper,isnull(scamt,0)scamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,favaourablewgt,weightFlg,ISNULL(ADJVALUE,0) ADJVALUE,isnull(brkcd,'') as brkcd,isnull(brkcomPer,0) as brkcomPer,RateUnit,Isnull(SuppBillvalue,0)SuppBillvalue,isnull(dbamt,0)dbamt,isnull(SICAAmt,0)SICAAmt, " & _
    " ISNULL(HSN,'') HSN,ISNULL(cgstper,0) cgstper,ISNULL(cgstamt,0)cgstamt,ISNULL(sgstper,0)sgstper,ISNULL(sgstamt,0)sgstamt,ISNULL(igstper,0) igstper,ISNULL(igstamt,0) igstamt,catcd,ISNULL(tcs_per,0) tcs_per,ISNULL(tcs_amt,0) tcs_amt ,isnull(TDS_AssAmt,0) TDS_AssAmt,isnull(TDS_Per,0) TDS_Per,isnull(tdsAmt,0) tdsAmt,isnull(TDSFLG,'N') TDSFLG,isnull(TDSTypeCode,'') TDSTypeCode,isnull(TDS_Manual,0) TDS_Manual " & _
    " from rm_lot where lotno=" & val(lotno) & " and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and supcd='" & Trim(sSLcode) & "' and lottype='A' and divcode='" & Divcode & "'  and catcd='" & cat & "' ORDER BY LOTYEAR asc", DB, adopenstaic, adLockBatchOptimistic
 
    q = iRow
'    Call SpreadAlign(rsq.RecordCount)
    GTax = ""
    taxcode = "Y"
    GAtax = ""
    Ataxcode = "Y"
    If Not RSq.EOF Then
            If Opt <> "add" Then
                If RSq("TDSFLG") = "Y" Then
                       Chk_TDSFLAG.value = 1
                Else
                       Chk_TDSFLAG.value = 0
                End If
                 txtfields(129).Text = IIf(IsNull(RSq("tds_per")), 0, RSq("tds_per"))
            End If
            Chk_TDSManual.value = IIf(IsNull(RSq("TDS_Manual")), 0, RSq("TDS_Manual"))
            DTCSAMT = DTCSAMT + IIf(IsNull(RSq("Tcs_Amt")), 0, RSq("Tcs_Amt"))
            txtfields(103).Text = IIf(IsNull(RSq("Tcs_per")), 0, RSq("Tcs_per"))
            
              spdVar.SetText itcsper, q, IIf(IsNull(RSq("Tcs_per")), 0, RSq("Tcs_per"))
            spdVar.SetText itcsamt, q, IIf(IsNull(RSq("Tcs_Amt")), 0, RSq("Tcs_Amt"))
            
            ''''GST SASI 16.6.17
            txtfields(118).Text = val(RSq("CGSTAMT"))
            txtfields(117).Text = val(RSq("SGSTAMT"))
            txtfields(116).Text = val(RSq("IGSTAMT"))
            txtfields(100).Text = val(RSq("CGSTPER"))
            txtfields(101).Text = val(RSq("SGSTPER"))
            txtfields(102).Text = val(RSq("IGSTPER"))
            
            
            txtfields(90).Text = RSq("brkcd")
            txtfields(91).Text = Format(RSq("brkcomPer"), "#0.00")
            
            spdVar.SetText ILotNo, q, RSq("lotno")
            spdVar.SetText ILotdt, q, RSq("lotdt")
            spdVar.SetText IVarcode, q, RSq("varcode")
            
            Set rsg = New Recordset
            rsg.Open "select * from rm_var where varcode='" & RSq("varcode") & "'", DB, adOpenStatic
            spdVar.SetText IVarName, q, rsg("varname")
            If RSq("bblflg") = "B" Then
                 spdVar.SetText Iunit, q, "Bales"
            Else
                 spdVar.SetText Iunit, q, "Borah"
            End If
            
            spdVar.SetText iQty, q, RSq("bales")
            spdVar.SetText Icandyrate, q, RSq("ratecy")
            spdVar.SetText IRebate, q, RSq("rebate")
            spdVar.SetText Imgrosswt, q, RSq("Grswgt")
            spdVar.SetText Imtarewt, q, RSq("tarewt")
            spdVar.SetText Immoiturewt, q, RSq("moisture_et")
            spdVar.SetText Imnetwt, q, RSq("Netwt")
            spdVar.SetText Ipgrosswt, q, RSq("pgrswt")
            spdVar.SetText Iptarewt, q, RSq("ptarewt")
            spdVar.SetText Ipnetwt, q, RSq("pnetwt")
            spdVar.SetText Iwbwt, q, RSq("weighbridgewt")
            spdVar.SetText Ipjamt, q, RSq("pjamt")
            spdVar.SetText Icashdisper, q, RSq("cashdisper")
            spdVar.SetText Icashdisamt, q, RSq("cashdisamt")
            spdVar.SetText Itradedisper, q, RSq("tradedisper")
            spdVar.SetText Itradedisamt, q, RSq("tradedisamt")
            spdVar.SetText IFrtper, q, RSq("lrfrtper")
            spdVar.SetText IFrtamt, q, RSq("lrfrtamt")
            spdVar.SetText IBedper, q, RSq("bedpeR")
            spdVar.SetText IBedamt, q, RSq("bedamt")
            spdVar.SetText IEdper, q, RSq("sedpeR")
            spdVar.SetText IEdamt, q, RSq("sedamt")
            spdVar.SetText IHscessper, q, RSq("aedper")
            spdVar.SetText IHscessamt, q, RSq("aedamt")
            spdVar.SetText Icessper, q, RSq("cessper")
            spdVar.SetText Icessamt, q, RSq("cessamt")
            spdVar.SetText ITaxCode, q, RSq("Tax_code")
            GTax = RSq("TAX_CODE")
            sCode = RSq("Tax_code")
            If taxcode <> RSq("TAX_CODE") And q <> 1 Then
                taxcode = "N"
            End If
            
            spdVar.SetText ITaxper, q, RSq("vatper")
            spdVar.SetText ITaxamt, q, RSq("vatamt")
            spdVar.SetText ISCper, q, RSq("scper")
            spdVar.SetText ISCamt, q, RSq("scamt")
            spdVar.SetText IOthtaxPer, q, RSq("othtaxper")
            spdVar.SetText IothTaxamt, q, RSq("othtaxamt")
            spdVar.SetText IRlyfrtper, q, RSq("rlyfrtper")
            spdVar.SetText IRlyfrtamt, q, RSq("rlyfrtamt")
            spdVar.SetText IInsper, q, RSq("insper")
            spdVar.SetText IInsamt, q, RSq("insamt")
            spdVar.SetText ICommper, q, RSq("commper")
            spdVar.SetText ICommAMT, q, RSq("commamt")
            spdVar.SetText ILCper, q, RSq("Lcintper")
            spdVar.SetText ILCamt, q, RSq("lcintamt")
            ''spdVar.SetText IDbamt, q, rsq("dnamt1")
            spdVar.SetText Icharity, q, RSq("charityamt")
'            spdVar.SetText Idamage, q, rsq("Damageamt")
            'spdVar.SetText Ishipchrg, q, rsq("shipchrg")
            spdVar.SetText IOthTaxableAmt, q, RSq("OtherTaxableAmt")
            spdVar.SetText IOthers, q, RSq("othersamt")
            spdVar.SetText IcustomDuty, q, RSq("customsdutyamt")
'            spdVar.SetText Ibrkcom, q, rsq("brkcom")
            spdVar.SetText ILandedcost, q, RSq("totlandcost")
            spdVar.SetText IRateKG, q, RSq("ratekg")
            spdVar.SetText Iround, q, RSq("ADJVALUE")
            spdVar.SetText IAcWgt, q, RSq("Favaourablewgt")
            spdVar.SetText ISICAAmt, q, RSq("SICAAmt")
            
            '''SASI 16.6.17
            
            spdVar.SetText ICGSTPER, q, RSq("cGSTper")
            spdVar.SetText ICGSTAMT, q, RSq("CGSTamt")
            spdVar.SetText ISGSTPER, q, RSq("SGSTper")
            spdVar.SetText ISGSTAMT, q, RSq("SGSTamt")
            spdVar.SetText IIGSTPER, q, RSq("IGSTper")
            spdVar.SetText IIGSTAMT, q, RSq("IGSTamt")
            spdVar.SetText IHSN, q, RSq("HSN")
            
            spdVar.SetText ITDSAMT, q, CStr(RSq("tdsamt"))
            spdVar.SetText ITDSPER, q, CStr(RSq("tds_per"))
            spdVar.SetText ITDSASSAMT, q, CStr(RSq("TDS_AssAmt"))
            
            Set Rs = New Recordset
            Rs.Open "select addtaxrequired from rm_param", DB, adOpenStatic
            If Rs(0) = "Y" Then
                spdVar.SetText IATaxCode, q, RSq("addTaxcode")
                spdVar.SetText IATaxper, q, RSq("addtaxper")
                spdVar.SetText IATaxamt, q, RSq("addtaxamount")
                  GAtax = RSq("addTaxcode")
                sCode = RSq("Tax_code")
                If Ataxcode <> RSq("addTaxcode") And q <> 1 Then
                    Ataxcode = "N"
                End If
            End If
            
            Set Rs = New Recordset
' commented on 06-08-18 by mariyaiya
'            rs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
'                & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
'                & " and a.contdt=b.contdt and C.Lotno=" & RSq("LOTNO") & " and c.lotdt='" & Format(RSq("lotdt"), "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "' and catcd='" & RSq("catcd") & "'", db, adOpenStatic
            
             ' added on 06-08-18 by mariyaiya
            Rs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode and a.divcode=c.divcode " _
                & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno and a.varcode=b.varcode and a.varcode=c.varcode " _
                & " and a.contdt=b.contdt and C.Lotno=" & RSq("LOTNO") & " and c.lotdt='" & Format(RSq("lotdt"), "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "' and c.catcd='" & RSq("catcd") & "'", DB, adOpenStatic

            If Not Rs.EOF Then
                strDelType = IIf(Rs("dlytype") = "", strDelType = "", Rs("Dlytype"))
            End If
            
            If CustID = "COTTON" Then
                If strDelType = "F" Then
                    If RSq("RateUnit") = "CANDY" Then
                        Set TmpRs = New Recordset
                        TmpRs.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", DB, adOpenDynamic, adLockReadOnly
                        If Not TmpRs.EOF Then
                           ' NoofQuantity = RSq("NetWt") / TmpRs("Value")
                            If ValueFLG = "S" Then
                            
                            NoofQuantity = RSq("pnetwt") / TmpRs("Value")
                            Else
                            NoofQuantity = RSq("NetWt") / TmpRs("Value")
                            End If
                        End If
                    End If
                    FVatPer = IIf(IsNull(RSq("Vatper")), 0, RSq("Vatper"))
                    FBEDPER = IIf(IsNull(RSq("Bedper")), 0, RSq("Bedper"))
                    If FBEDPER > 0 Then
                        FEDCESSPER = IIf(IsNull(RSq("sedper")), 0, RSq("sedper")) / FBEDPER
                        FHSCESSPER = IIf(IsNull(RSq("Aedper")), 0, RSq("Aedper")) / FBEDPER
                    End If
                    TAssValue = NoofQuantity * (RSq("RateCy") * 100) / (100 + FVatPer + FBEDPER + FEDCESSPER + FHSCESSPER + SGSTPER + CGSTPER + IGSTPER)
                    
                    dAssValue = dAssValue + TAssValue
                    
                    TVatAmt = TAssValue * RSq("Vatper") / 100
                    dTax = dTax + TVatAmt
                   
                    TVatAmt = TAssValue * RSq("addtaxper") / 100
                    dAddTax = dAddTax + TVatAmt
                    
                    TBEDAmt = TAssValue * RSq("bedper") / 100
                    DBED = DBED + RSq("bedamt")
                    
                    dEDCess = TAssValue * FEDCESSPER / 100
                    dHScess = TAssValue * FHSCESSPER / 100
                    
                    
                Else
                    dAssValue = dAssValue + RSq("pjamt")
                    dTax = dTax + RSq("vatamt")
                    DBED = DBED + RSq("bedamt")
                    dHScess = dHScess + RSq("aedamt")
                    dEDCess = dEDCess + RSq("sedamt")
                End If
            Else
                If ValueFLG = "S" Then
                   If ValueFLG = "S" Then
                        v2 = Ipnetwt
                    Else
                        v2 = Imnetwt
                    End If
                        
                    Set rsr = New Recordset
                    rsr.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", DB, adOpenDynamic, adLockReadOnly
                       
                        
                    
                    v3 = Icandyrate
                    v4 = IRebate
                    If rsr.EOF = False Then TAssValue = Round((val(GetText(spdVar, v2, q)) * (val(GetText(spdVar, v3, q)) / rsr("value"))) - val(GetText(spdVar, v4, q)), 4)
                    spdVar.SetText Ipjamt, q, CStr(TAssValue)
                    'spdVar.SetText Ipjamt, q, TAssValue
                  
                End If
                If ValueFLG = "S" Then
                dAssValue = dAssValue + val(TAssValue)
                Else
            
                dAssValue = dAssValue + RSq("pjamt")
                End If
                dTax = dTax + RSq("vatamt")
                dSC = dSC + RSq("SCAMT")
                DBED = DBED + RSq("bedamt")
                dHScess = dHScess + RSq("aedamt")
                dEDCess = dEDCess + RSq("sedamt")
            End If
            
            dSupWgt = dSupWgt + RSq("pnetwt")
            dSupGWt = dSupGWt + RSq("pgrswt")
            dSupTWt = dSupTWt + RSq("ptarewt")
            dSupBValue = dSupBValue + RSq("SuppBillvalue")
            dADJValue = dADJValue + RSq("ADJVALUE")
            dCashDis = dCashDis + RSq("cashdisamt")
            dTradeDis = dTradeDis + RSq("tradedisamt")
            dLryFgt = dLryFgt + RSq("lrfrtamt")
            DDbamt = DDbamt + RSq("dbamt")
            DSICAAmt = DSICAAmt + RSq("SICAAmt")
            
            dCess = dCess + RSq("cessamt")
            dCess = KSLRound(dCess, CESS_ROFF)
            
            dOthersTaxable = dOthersTaxable + RSq("OtherTaxableAmt")
            dOthersTaxable = KSLRound(dOthersTaxable, ADDTAX_ROFF)
            
            dOthersNonTaxable = dOthersNonTaxable + RSq("OthersAmt")
            dRlyFrg = dRlyFrg + RSq("rlyfrtamt")
            dInsurance = dInsurance + RSq("insamt")
            dComm = dComm + RSq("commamt")
            dLC = dLC + RSq("lcintamt")
            dCharity = dCharity + RSq("charityamt")
            dOtherTax = dOtherTax + RSq("othtaxAmt")
            dDamage = dDamage + RSq("DamageAmt")
            dCustoms = dCustoms + RSq("customsdutyamt")
            'dDRnote = dDRnote + rsq("DNAMT1")
            dBrokerComm = dBrokerComm + RSq("brkcom")
            DBEDPer = DBEDPer + RSq("bedper")
            dCashPer = dCashPer + RSq("cashdisper")
            dTradePer = dTradePer + RSq("tradedisper")
            dLryFgtPer = dLryFgtPer + RSq("lrfrtper")
            
            dEDCessPer = dEDCessPer + RSq("sedper")
            dHScessPer = dHScessPer + RSq("aedper")
            dCessPer = dCessPer + RSq("cessper")
            dTaxPer = dTaxPer + RSq("vatper")
            dAddTaxPer = dAddTaxPer + RSq("addtaxper")
            dSCper = dSCper + IIf(IsNull(RSq("scper")), 0, RSq("scper"))
            
            dRlyFrgPer = dRlyFrgPer + RSq("rlyfrtper")
            dInsurancePer = dInsurancePer + RSq("insper")
            dCommPer = dCommPer + RSq("commper")
            dLCPer = dLCPer + RSq("lcintper")
            dOtherTaxPer = dOtherTaxPer + RSq("othtaxper")
            
            DTDSAmt = DTDSAmt + RSq("tdsamt")
            dTDSAssAmt = dTDSAssAmt + RSq("TDS_AssAmt")
         
            dSingleValue = RSq("cashdisper")
            txtfields(53).Text = Format(ChkPerDuplicate(iRow, dCashPer, dSingleValue), "0.00")
            dSingleValue = RSq("tradedisper")
            txtfields(84).Text = Format(ChkPerDuplicate(iRow, dTradePer, dSingleValue), "0.00")
            dSingleValue = RSq("lrfrtper")
            txtfields(37).Text = Format(ChkPerDuplicate(iRow, dLryFgtPer, dSingleValue), "0.00")
            dSingleValue = RSq("bedper")
            txtfields(88).Text = Format(ChkPerDuplicate(iRow, DBEDPer, dSingleValue), "0.00")
            dSingleValue = RSq("sedper")
            txtfields(74).Text = Format(ChkPerDuplicate(iRow, dEDCess, dSingleValue), "0.00")
            dSingleValue = RSq("cessper")
            txtfields(68).Text = Format(ChkPerDuplicate(iRow, dCessPer, dSingleValue), "0.00")
            dSingleValue = RSq("aedper")
            txtfields(72).Text = Format(ChkPerDuplicate(iRow, dHScessPer, dSingleValue), "0.00")
            dSingleValue = RSq("othtaxper")
            txtfields(52).Text = Format(ChkPerDuplicate(iRow, dOtherTaxPer, dSingleValue), "0.00")
            dSingleValue = RSq("rlyfrtper")
            txtfields(44).Text = Format(ChkPerDuplicate(iRow, dRlyFrgPer, dSingleValue), "0.00")
            dSingleValue = RSq("commper")
            txtfields(59).Text = Format(ChkPerDuplicate(iRow, dCommPer, dSingleValue), "0.00")
            dSingleValue = RSq("lcintper")
            txtfields(61).Text = Format(ChkPerDuplicate(iRow, dLCPer, dSingleValue), "0.00")
            dSingleValue = RSq("insper")
            txtfields(57).Text = Format(ChkPerDuplicate(iRow, dInsurancePer, dSingleValue), "0.000")
            dSingleValue = RSq("scper")
            txtfields(94).Text = Format(ChkPerDuplicate(iRow, dSCper, dSingleValue), "0.000")
            
            If RSq("WeightFlg") = "M" Then
               If ValueFLG = "S" Then
                    dFinGrsWgt = dFinGrsWgt + RSq("Grswgt")
                    dFinTarWgt = dFinTarWgt + RSq("tarewt")
                    dFinNetWgt = dFinNetWgt + RSq("Netwt")
                
                  Else
                    dFinGrsWgt = dFinGrsWgt + RSq("pgrswt")
                    dFinTarWgt = dFinTarWgt + RSq("ptarewt")
                    dFinNetWgt = dFinNetWgt + RSq("pnetwt")
                End If
            Else
                dFinGrsWgt = dFinGrsWgt + RSq("pgrswt")
                dFinTarWgt = dFinTarWgt + RSq("ptarewt")
                dFinNetWgt = dFinNetWgt + RSq("pnetwt")
            End If
            
      End If
'      If taxcode = "Y" Then
            If Trim(txtfields(83).Text) = "" Then txtfields(83).Text = IIf(IsNull(GTax), "", GTax)
            If Trim(txtfields(42).Text) = "" Then txtfields(42).Text = IIf(IsNull(GAtax), "", GAtax)
         
             '''''''''''''''''''''''''''''''''''''''''Add by Vinoth As Per Kores Requiremant
            
            
'      Else
'            Txtfields(83).Text = ""
'      End If
      
'      adoTestRs("PJAMt").value = dAssValue
      
     
            
      Call AssignValues
       
     Call LotCalculation
     Call TaxCalc
     Call AddTaxCalc
     LANDEDCOST (val(txtfields(7).Text))
     Call fBillValue(val(txtfields(7).Text))
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub

Private Sub AssignValues()

        txtfields(128).Text = Format(DTDSAmt, "0.00")
        txtfields(127).Text = Format(dTDSAssAmt, "0.00")
        
        txtfields(104).Text = Format(DTCSAMT, "0.00")
        txtfields(48).Text = Format(dFinGrsWgt, "0.000")
        txtfields(49).Text = Format(dFinTarWgt, "0.000")
        txtfields(50).Text = Format(dFinNetWgt, "0.000")
        txtfields(9).Text = Format(dSupWgt, "0.000")
        txtfields(95).Text = Format(dSupGWt, "0.000")
        txtfields(92).Text = Format(dSupTWt, "0.000")
        If Trim(txtfields(83).Text) = "" Then txtfields(83).Text = GTax
        If Trim(txtfields(42).Text) = "" Then txtfields(42).Text = GAtax
        
        txtfields(56).Text = Format(getMasterName("ST_Per", "IG_TAX", "TAx_code", GTax), "0.00")
        txtfields(77).Text = Format(getMasterName("ST_Per", "IG_TAX", "TAx_code", GAtax), "0.00")
        
        txtfields(96).Text = Format(KSLRound(dSupBValue, LANDCOST_ROFF), "0.00")
        'txtfields(55).Text = Format(KSLRound(dTax, TAX_ROFF), "0.00") ''sasi 30.6.17
        txtfields(55).Text = Round(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0) 'Round(Format(dTax, "0.00"), 0)
        
        txtfields(77).Text = Format(KSLRound(dAddTax, ADDTAX_ROFF), "0.00")
        txtfields(93).Text = Format(KSLRound(dSC, SURCHARGE_ROFF), "0.00")
        txtfields(7).Text = Format(KSLRound(dAssValue, ASSVAL_ROFF), "0.00")
        txtfields(54).Text = Format(dCashDis, "0.00")
        txtfields(85).Text = Format(dTradeDis, "0.00")
        txtfields(38).Text = Format(dLryFgt, "0.00")
        txtfields(75).Text = Format(KSLRound(DBED, BED_ROFF), "0.00")
        txtfields(65).Text = Format(KSLRound(dCess, CESS_ROFF), "0.00")
        txtDBCRNt.Text = Format(DDbamt, "0.00")
        txtfields(73).Text = Format(KSLRound(dEDCess, EDCESS_ROFF), "0.00")
        txtfields(71).Text = Format(KSLRound(dHScess, HSCESS_ROFF), "0.00")
        txtfields(51).Text = Format(KSLRound(dOtherTax, ADDTAX_ROFF), "0.00")
        txtfields(43).Text = Format(dRlyFrg, "0.00")
        txtfields(58).Text = Format(dInsurance, "0.00")
        txtfields(60).Text = Format(dComm, "0.00")
        txtfields(62).Text = Format(dLC, "0.00")
        txtfields(63).Text = Format(dCharity, "0.00")
        txtfields(66).Text = Format(dClearance, "0.00")
        txtfields(64).Text = Format(dDamage, "0.00")
        txtfields(69).Text = Format(dCustoms, "0.00")
        
        txtfields(70).Text = Format(dDRnote, "0.00")
        txtfields(82).Text = Format(dBrokerComm, "0.00")
        
        txtfields(41).Text = Format(KSLRound(dOthersTaxable, ADDTAX_ROFF), "0.00")
        txtfields(67).Text = Format(KSLRound(dOthersNonTaxable, ADDTAX_ROFF), "0.00")
        txtfields(97).Text = Format(DSICAAmt, "0.00")
        txtAdjValue.Text = Format(dADJValue, "0.00")
        
        
        If val(txtfields(91).Text) > 0 Then
            txtfields(82).Text = Format(val(dAssValue) * val(txtfields(91).Text) / 100, "#0.00")
        End If
        
        Call LANDEDCOST(dAssValue)
        Call fBillValue(dAssValue)
         
        
        If dFinNetWgt <> 0 Then
         If ValueFLG = "S" Then
            txtfields(76).Text = Format(val(txtfields(78).Text) / dSupWgt, "0.0000")
         Else
            txtfields(76).Text = Format(val(txtfields(78).Text) / dFinNetWgt, "0.0000")
         End If
        End If
        If UCase(CustID) = UCase("Balkrishna") Then
          Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & txtfields(42).Text & "'", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
            
                txtfields(79).Text = Format(Rs("ST_PER"), "0.00")
               ' Txtfields(42).Text = Rs("TAX_CODE")
           
                Call AddTaxCalc
                txtfields(35).Text = val(txtfields(35).Text) + val(txtfields(77).Text)
             End If
        End If
End Sub
Public Function ChkPerDuplicate(Count As Integer, totalvalue As Double, ByRef SingleValue As Double) As Double
    If val(totalvalue / Count) = SingleValue Then
        ChkPerDuplicate = SingleValue
    Else
        ChkPerDuplicate = 0
    End If
End Function
Private Sub LotCalculation()
intervalMinutes = -1
Dim assper As Double
Dim Assvalue As Double
Dim CashDisamt As Double
Dim TradeDisAmt As Double
Dim Bed As Double
Dim Aed As Double
Dim SED As Double
Dim cess As Double
Dim Vatamt As Double
Dim CStamt As Double
Dim Othtax As Double
Dim Taxamt As Double
Dim Scamt As Double
Dim Lfrt As Double
Dim RlFrt As Double
Dim Insamt As Double
Dim Comamt As Double
Dim LcInt As Double
Dim DBamt As Double
Dim Charity As Double
Dim Damage As Double
Dim CLearance As Double
Dim Others As Double
Dim Brkcom As Double
Dim Cusdutyamt As Double
Dim Totland As Double
Dim sumland As Double
Dim schrg As Double
Dim Dutper As Double
Dim OtherTaxable As Double
Dim ratekg As Double
Dim TotTaxableValue As Double
Dutper = 0
Dutper = (100 - val(txtfields(109).Text))

For Lk = 1 To spdVar.MaxRows

'Assessable Value
    Assvalue = val(GetText(spdVar, Ipjamt, Lk))

' Cash Discount
    If val(GetText(spdVar, Icashdisamt, Lk)) <> 0 And val(GetText(spdVar, Icashdisper, Lk)) <> 0 Then
        CashDisamt = Assvalue * (val(GetText(spdVar, Icashdisper, Lk)) / 100)
    Else
        CashDisamt = val(GetText(spdVar, Icashdisamt, Lk))
    End If
    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
    
'Trade Discount
    If val(GetText(spdVar, Itradedisamt, Lk)) <> 0 And val(GetText(spdVar, Itradedisper, Lk)) <> 0 Then
        TradeDisAmt = Assvalue * (val(GetText(spdVar, Itradedisper, Lk)) / 100)
    Else
        TradeDisAmt = val(GetText(spdVar, Itradedisamt, Lk))
    End If
    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
    
' Lorry Freight
    If val(GetText(spdVar, IFrtamt, Lk)) = 0 Then
        Lfrt = Assvalue * (val(GetText(spdVar, IFrtper, Lk)) / 100)
    Else
        Lfrt = val(GetText(spdVar, IFrtamt, Lk))
    End If
    spdVar.SetText IFrtamt, Lk, CStr(Lfrt)
    
' Railway Freight
    If val(GetText(spdVar, IRlyfrtamt, Lk)) = 0 Then
        RlFrt = Assvalue * (val(GetText(spdVar, IRlyfrtper, Lk)) / 100)
    Else
        RlFrt = val(GetText(spdVar, IRlyfrtamt, Lk))
    End If
    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
    
' Commission
    If val(GetText(spdVar, ICommAMT, Lk)) = 0 Then
        Comamt = Assvalue * (val(GetText(spdVar, ICommper, Lk)) / 100)
    Else
        Comamt = val(GetText(spdVar, ICommAMT, Lk))
    End If
    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
    
' broker Commission
    If val(txtfields(91).Text) > 0 Then
        BrkComamt = Assvalue * (val(txtfields(91).Text) / 100)
        txtfields(82).Text = Format(BrkComamt, "#0.00")
    Else
        BrkComamt = 0
    End If
    
    
'BED
    If val(GetText(spdVar, IBedamt, Lk)) = 0 Then
        If Left(delivery, 1) = "F" Then
            Bed = (Assvalue - (CashDisamt + TradeDisAmt + Lfrt)) * val(GetText(spdVar, IBedper, Lk)) / 100
        Else
            Bed = (Assvalue - (CashDisamt + TradeDisAmt)) * val(GetText(spdVar, IBedper, Lk)) / 100
        End If
    Else
        Bed = val(GetText(spdVar, IBedamt, Lk))
    End If
    Bed = KSLRound(val(Bed), BED_ROFF)
    spdVar.SetText IBedamt, Lk, CStr(Bed)
    
'ED CESS
    If val(GetText(spdVar, IEdamt, Lk)) = 0 Then
        SED = Bed * (val(GetText(spdVar, IEdper, Lk)) / 100)
    Else
        SED = val(GetText(spdVar, IEdamt, Lk))
    End If
    SED = KSLRound(val(SED), EDCESS_ROFF)
    spdVar.SetText IEdamt, Lk, CStr(SED)
    
'HS CESS
    If val(GetText(spdVar, IHscessamt, Lk)) = 0 Then
        Aed = Bed * (val(GetText(spdVar, IHscessper, Lk)) / 100)
    Else
        Aed = val(GetText(spdVar, IHscessamt, Lk))
    End If
    Aed = KSLRound(val(Aed), AED_ROFF)
    spdVar.SetText IHscessamt, Lk, CStr(Aed)
    
' CESS
    If val(GetText(spdVar, Icessamt, Lk)) = 0 Then
        If UCase(delivery) = "F" Then
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt)) + val(Lfrt)) / 100, 2)
        Else
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt))) / 100, 2)
        End If
    Else
        cess = val(GetText(spdVar, Icessamt, Lk))
    End If
    cess = KSLRound(val(cess), CESS_ROFF)
    spdVar.SetText Icessamt, Lk, CStr(cess)
    
' Tax Calc
'    If val(GetText(spdVar, ITaxamt, Lk)) = 0 Then
        Set Rs = New Recordset
        Rs.Open "Select * from rM_param", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            If optBefore = True Then
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    Else
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                         CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    End If
                Else
                    If UCase(delivery) = "F" Then
                       ' Vatamt = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable)
                        
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    Else
                        'Vatamt = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        TotTaxableValue = (Assvalue + Bed + Aed + SED + cess + OtherTaxable)
                    End If
                End If
            Else
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                       
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    Else
'                        Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess
                        
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    End If
                Else
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    Else
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable)
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    End If
                End If
            End If
        End If
'    Else
'        Vatamt = val(GetText(spdVar, ITaxamt, Lk))
'    End If
    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
    spdVar.SetText ICGSTAMT, Lk, CStr(CGSTAMT)
    spdVar.SetText ISGSTAMT, Lk, CStr(SGSTAMT)
    spdVar.SetText IIGSTAMT, Lk, CStr(IGSTAMT)

    
'Surcharge
    Scamt = Vatamt * (val(GetText(spdVar, ISCper, Lk)) / 100)
    Scamt = KSLRound(val(Scamt), SURCHARGE_ROFF)
    
    spdVar.SetText ISCamt, Lk, CStr(Scamt)
    
'Additional Tax
    Set Rs = New Recordset
    Rs.Open "select AddtaxRequired from rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
'        If val(GetText(spdVar, IATaxamt, Lk)) = 0 Then
            Set Rs = New Recordset
            Rs.Open "Select * from rM_param", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                If optBefore = True Then
                    If Rs("commtax") = "Y" Then
                        If UCase(delivery) = "F" Then
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    Else
                        If UCase(delivery) = "F" Then
                            AVatamt = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    End If
                Else
                    If Rs("commtax") = "Y" Then
                        If UCase(delivery) = "F" Then
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    Else
                        If UCase(delivery) = "F" Then
                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    End If
                End If
            End If
'        Else
'            AVatamt = val(GetText(spdVar, IATaxamt, Lk))
'        End If
    Else
        AVatamt = 0
    End If
    AVatamt = KSLRound(val(AVatamt), ADDTAX_ROFF)
    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
'Other Tax
    If val(GetText(spdVar, IothTaxamt, Lk)) = 0 Then
        Set Rs = New Recordset
        Rs.Open "Select * from rM_param", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            If optBefore = True Then
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                    Othtax = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                Else
                    If UCase(delivery) = "F" Then
                    Othtax = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                End If
            Else
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                Else
                    If UCase(delivery) = "F" Then
                    Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                End If
            End If
        End If
    Else
        Othtax = val(GetText(spdVar, IothTaxamt, Lk))
    End If
    Othtax = KSLRound(val(Othtax), TAX_ROFF)
    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
Taxamt = val(Vatamt + CStamt + Othtax)

'Insurance

    If val(GetText(spdVar, IInsamt, Lk)) = 0 Then
        Dim rsPara As New Recordset
        rsPara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
        If (rsPara.BOF And rsPara.EOF) = False Then
            If rsPara("InsCalAssvalflg") = "N" Then
                If UCase(delivery) = "F" Then
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt) * val(GetText(spdVar, IInsper, Lk)) / 100
                Else
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt) * val(GetText(spdVar, IInsper, Lk)) / 100
                End If
            Else
                Insamt = Assvalue * (val(GetText(spdVar, IInsper, Lk)) / 100)
            End If
        End If
        rsPara.Close
        Set rsPara = Nothing
    Else
        Insamt = val(GetText(spdVar, IInsamt, Lk))
    End If
    Insamt = KSLRound(val(Insamt), TAX_ROFF)
    spdVar.SetText IInsamt, Lk, CStr(Insamt)
    
    
'LC Interest
    If val(GetText(spdVar, ILCamt, Lk)) = 0 Then
        If UCase(delivery) = "F" Then
            LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
        Else
            LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Insamt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
        End If
    Else
        LcInt = val(GetText(spdVar, ILCamt, Lk))
    End If
    LcInt = KSLRound(LcInt, TAX_ROFF)
    spdVar.SetText ILCamt, Lk, CStr(LcInt)
    
    
    DBamt = val(txtfields(70).Text) * val(assper) / 100
    
    spdVar.SetText IDbamt, Lk, CStr(DBamt)
    
    Charity = val(GetText(spdVar, Icharity, Lk))
    spdVar.SetText Icharity, Lk, CStr(Charity)
    
    Damage = val(txtfields(64).Text) * val(assper) / 100
    spdVar.SetText iDamage, Lk, CStr(Damage)
    
    CLearance = val(txtfields(66).Text) * val(assper) / 100
    spdVar.SetText Iclear, Lk, CStr(CLearance)
    
    Others = val(GetText(spdVar, IOthers, Lk))
    spdVar.SetText IOthers, Lk, CStr(Others)
    
    OtherTaxable = val(GetText(spdVar, IOthTaxableAmt, Lk))
    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
    
    Brkcom = val(txtfields(82).Text) * val(assper) / 100
'    spdVar.SetText Ibrkcom, Lk, CStr(Brkcom)
    
    Cusdutyamt = val(GetText(spdVar, IcustomDuty, Lk))
    spdVar.SetText IcustomDuty, Lk, CStr(Cusdutyamt)



    If optDCNo = True Then
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
        Else
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
        End If
    Else
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
        Else
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
        End If
    End If
    
        TCSLANCOST = 0
    Set rsP1 = New Recordset
    rsP1.Open "select isnull(tcstax,'Y') tcstax  FROM RM_PARAM", DB, adOpenStatic
    If rsP1("tcstax") = "Y" Then
        TCSLANCOST = TotTaxableValue + (Taxamt)
    Else
        TCSLANCOST = TotTaxableValue
    End If

    
    If val(GetText(spdVar, itcsper, Lk)) > 0 Then
        RTCSAMT = Round(TCSLANCOST * (val(GetText(spdVar, itcsper, Lk)) / 100), ATCS_ROFF)
    Else
        RTCSAMT = 0
    End If
    spdVar.SetText itcsamt, Lk, CStr(RTCSAMT)
    Totland = Totland + RTCSAMT
       
   If Chk_TDSFLAG.value = 1 Then

        spdVar.SetText ITDSASSAMT, Lk, KSLRound(val(GetText(spdVar, Ipjamt, Lk)), 2)
        spdVar.SetText ITDSAMT, Lk, KSLRound(KSLRound(val(GetText(spdVar, Ipjamt, Lk)), 2) * (val(GetText(spdVar, ITDSPER, Lk)) / 100), 0)
   End If
    
'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
        Set Rs = New Recordset
    Rs.Open "Select isnull(ItcTaxStatus,'N') as TaxStatus from ig_tax where tax_code ='" & Trim(GetText(spdVar, ITaxCode, Lk)) & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        If Rs(0) = "Y" Then
        Totland = Totland - Vatamt
        End If
    Else
        Totland = Totland
    End If
''Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + Cusdutyamt + packforamt + marketcomamt
    spdVar.SetText ILandedcost, Lk, CStr(Totland)
    If val(GetText(spdVar, IAcWgt, Lk)) > 0 Then
        ratekg = val(GetText(spdVar, ILandedcost, Lk)) / val(GetText(spdVar, IAcWgt, Lk))
    End If
    spdVar.SetText IRateKG, Lk, CStr(ratekg)
Next
TotTCSAMT = 0
 For I = 1 To spdVar.MaxRows
            
    TotTCSAMT = TotTCSAMT + val(GetText(spdVar, itcsamt, I))
 
Next
    txtfields(104).Text = Format(CStr(val(TotTCSAMT)), "##.00")
Call TDS_Calculation
End Sub
Public Function LotValueAssign(txtValue As Double, iColID As Integer) As Double
Dim iCount As Integer
'Precentage Field Value Assign
intervalMinutes = -1
    For iCount = 1 To spdVar.MaxRows
        spdVar.SetText iColID, iCount, CStr(txtValue)
    Next
End Function
Public Function LotAmountAssign(txtValue As Double, iColID As Integer, totalRows As Integer) As Double
Dim iCount As Integer
Dim dValue As Double
Dim dRoundValue As Double
intervalMinutes = -1
'Amount Field Value Assign
    dValue = val(txtValue) / totalRows
    
    For iCount = 1 To spdVar.MaxRows
        
        If iCount = totalRows Then dValue = txtValue - dRoundValue
        dRoundValue = Round(dRoundValue + dValue, TAX_ROFF)
        spdVar.SetText iColID, iCount, CStr(dValue)
    Next
End Function

Public Function LotStringAssign(txtValue As String, iColID As Integer) As String
Dim iCount As Integer
'Tax Code Assign

    For iCount = 1 To spdVar.MaxRows
        spdVar.SetText iColID, iCount, CStr(txtValue)
    Next
End Function
Private Sub SaveFunction()
Dim strQ1 As String
Dim iC As Integer

For iC = 1 To spdVar.MaxRows
    Set Rs = New Recordset
    Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(GetText(spdVar, ILotdt, iC), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(GetText(spdVar, ILotdt, iC), "yyyy-MM-DD") & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        sLotYear = Year(Rs("AYFDATE"))
    Else
        sLotYear = Year(GetText(spdVar, ILotdt, iC))
    End If
    
     strQ1 = "Update Rm_Lot Set TDSTypeCode='" & Trim(txtfields(132).Text) & "',TDSFLG= case when " & Chk_TDSFLAG.value & " =1 and " & val(txtfields(128).Text) & " <>0 then 'Y' else 'N' end , TDS_AssAmt='" & val(GetText(spdVar, ITDSASSAMT, iC)) & "',tdsamt='" & val(GetText(spdVar, ITDSAMT, iC)) & "',tds_per='" & val(GetText(spdVar, ITDSPER, iC)) & "' Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A'  and varcode = '" & GetText(spdVar, IVarcode, iC) & "'"
    DB.Execute strQ1
    
    strQ1 = ""
    strQ1 = "Update Rm_Lot Set tcs_per= " & val(GetText(spdVar, itcsper, iC)) & " ,tcs_amt= " & val(GetText(spdVar, itcsamt, iC)) & ",IGSTPER= " & val(GetText(spdVar, IIGSTPER, iC)) & " ,sgstper= " & val(GetText(spdVar, ISGSTPER, iC)) & " ,cgstper= " & val(GetText(spdVar, ICGSTPER, iC)) & " , tax_per=" & val(GetText(spdVar, ITaxper, iC)) & ",vatper=" & val(GetText(spdVar, ITaxper, iC)) & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",vatamt=" & val(GetText(spdVar, ITaxamt, iC)) & ", scper=" & val(GetText(spdVar, ISCper, iC)) & ", scamt=" & val(GetText(spdVar, ISCamt, iC)) & ", Form_Type = '" & Trim(txtfields(39).Text) & _
            "',fbillno = '" & Trim(txtfields(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = " & val(txtfields(47).Text) & _
            " Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                    
    DB.Execute strQ1
        
 If Opt <> "mod" Then
   
    If val(txtDBCRNt.Text) <> 0 Then
        Set rsb = New Recordset
        rsb.Open "select * from rm_lot where  LOTYEAR='" & Year(yfdate) & "' AND LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  Lotno =" & GetText(spdVar, ILotNo, iC) & " and Divcode ='" & Divcode & "' and  OPFLG ='N' and (dbno is null ) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB, adOpenStatic
        If rsb.RecordCount > 0 Then
            Set rsa = New Recordset
            'rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & txtfields(0) & "' and (dbamt is not null and dbamt<>0) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'", DB
            rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where  Divcode ='" & Divcode & "' and  OPFLG ='N' and (dbno is not null) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
            If rsa.RecordCount > 0 Then
            DB.Execute "Update Rm_Lot Set dbno = " & rsa(0) & " Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            End If
        
        End If
    Else
        DB.Execute "Update Rm_Lot Set dbno = null  Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
    End If
 End If
    
        Assvalue = (val(GetText(spdVar, Ipjamt, iC))) ' + val(txtAdjValue.Text)) - val(txtFields(34).Text)
        
        DB.Execute "UPDATE RM_LOT SET tcs_per= " & val(GetText(spdVar, itcsper, iC)) & " ,tcs_amt= " & val(GetText(spdVar, itcsamt, iC)) & ",ASSVALUE= " & Assvalue & ",totlandcost=" & val(GetText(spdVar, ILandedcost, iC)) & ",PTYPE='" & Trim(txtfields(302).Text) & "' WHERE " & _
                    " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    " Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                    
        Set rs1 = New Recordset
        rs1.Open "SELECT STATE_CODE FROM FA_SLMAS WHERE SLCODE='" & txtfields(81).Text & "'", DB, adOpenStatic
        
        Set rs2 = New Recordset
        rs2.Open "SELECT STATE_CODE FROM PP_DIVMAS WHERE divcode='" & Divcode & "'", DB, adOpenStatic
        If rs1("STATE_CODE") = rs2("STATE_CODE") Then
            DB.Execute "UPDATE RM_LOT SET vcatcd= 'R' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and  " & _
                    "  OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        Else
            DB.Execute "UPDATE RM_LOT SET vcatcd= 'O' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        End If

        sCode = IIf(IsNull(GetText(spdVar, ITaxCode, iC)) = True, " ", Trim(GetText(spdVar, ITaxCode, iC)))
        
        strSQL = "UPDATE RM_LOT SET IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",FBILLWT = " & val(GetText(spdVar, IAcWgt, iC)) & ", FBILLVALUE= " & fBillValueLot(iC) & _
                 ", dbamt = " & val(txtDBCRNt.Text) & ", TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & _
                 ", tax_code ='" & Trim(sCode) & "', TAX_PER = " & val(GetText(spdVar, ITaxper, iC)) & ", LANDCOSTWITHTAX = " & val(GetText(spdVar, ILandedcost, iC)) & _
                 ", VATAMT = " & val(GetText(spdVar, ITaxamt, iC)) & ", SCPER = " & val(GetText(spdVar, ISCper, iC)) & ", SCAMT = " & val(GetText(spdVar, ISCamt, iC)) & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
                 
        Set Rs = New Recordset
        Rs.Open "select isnull(ITCTAXSTATUS,'N') as Status from ig_tax where Tax_code='" & sCode & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            If Rs(0) = "N" Then
                dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC))
            Else
                dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC)) + val(GetText(spdVar, ITaxamt, iC))
            End If
                
        Else
            dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC))
        End If
                 
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",Cashdisper = " & val(GetText(spdVar, Icashdisper, iC)) & ", CashDisAmt = " & val(GetText(spdVar, Icashdisamt, iC)) & _
                 ", TradeDisPer = " & val(GetText(spdVar, Itradedisper, iC)) & ", TradedisAmt = " & val(GetText(spdVar, Itradedisamt, iC)) & _
                 ", CessPer = " & val(GetText(spdVar, Icessper, iC)) & ", CessAmt = " & val(GetText(spdVar, Icessamt, iC)) & _
                 ", BEDPer = " & val(GetText(spdVar, IBedper, iC)) & ", BEDAMT = " & val(GetText(spdVar, IBedamt, iC)) & ", CSTPer = " & (val(txtfields(86).Text) / spdVar.MaxRows) & ", cstamt = " & (val(txtfields(87).Text) / spdVar.MaxRows) & "  WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
                 
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",OTHTAXPER = " & val(GetText(spdVar, IOthtaxPer, iC)) & ", OTHTAXAMT = " & val(GetText(spdVar, IothTaxamt, iC)) & _
                 ", LRFRTPER = " & val(GetText(spdVar, IFrtper, iC)) & ", LRFRTAmt = " & val(GetText(spdVar, IFrtamt, iC)) & _
                 ", RLYFRTPER = " & val(GetText(spdVar, IRlyfrtper, iC)) & ", RLYFRTAMT = " & val(GetText(spdVar, IRlyfrtamt, iC)) & _
                 ", COMMPER = " & val(GetText(spdVar, ICommper, iC)) & ", COMMAMT = " & val(GetText(spdVar, ICommAMT, iC)) & _
                 ", brkcomPer = " & val(txtfields(91).Text) & " , BRKCOM = " & val(txtfields(82).Text) / spdVar.MaxRows & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
        
        If optAfter = True Then Sflg = "Y" Else Sflg = "N"
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",LCINTPER = " & val(GetText(spdVar, ILCper, iC)) & ", LCINTAMT = " & val(GetText(spdVar, ILCamt, iC)) & _
                 ", CHARITYAMT = " & val(GetText(spdVar, Icharity, iC)) & ", CESSAMT = " & val(GetText(spdVar, Icessamt, iC)) & ", DAMAGEAMT = " & val(txtfields(64).Text) / iRow & _
                 ", CLEARANCEAMT = " & val(txtfields(66).Text) / iRow & ", OTHERSAMT = " & val(GetText(spdVar, IOthers, iC)) & _
                 ", INSPER = " & val(GetText(spdVar, IInsper, iC)) & ", INSAMT = " & val(GetText(spdVar, IInsamt, iC)) & _
                 ", AEDPER = " & val(GetText(spdVar, IHscessper, iC)) & ", AEDAMT = " & val(GetText(spdVar, IHscessamt, iC)) & _
                 ", SEDPER = " & val(GetText(spdVar, IEdper, iC)) & ", SEDAMT = " & val(GetText(spdVar, IEdamt, iC)) & _
                 ", CUSTOMSDUTYAMT = " & val(GetText(spdVar, IcustomDuty, iC)) & ",DiscountFlg = '" & Sflg & "' WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"

        DB.Execute strSQL
                
        If opt_c = True Then Sflg = "Y" Else Sflg = "N"
        
        sCode = ""
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET  IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ", LANDCOSTWITHTAX = " & val(dLANDCOSTWITHTAX) & " ,TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & ", " & _
                 "RATEKG= " & val(GetText(spdVar, IRateKG, iC)) & " ,Billno= '" & Trim(txtfields(6).Text) & "',BillDt= '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "'," & _
                 " otherTaxableAmt =" & val(GetText(spdVar, IOthTaxableAmt, iC)) & "," & _
                 " DutyPer =" & val(txtfields(109).Text) & ",dutyclaimable ='" & Sflg & "'," & _
                 " aDDTAXCODE='" & Trim(txtfields(42).Text) & "', ADDTAXPER= " & val(GetText(spdVar, IATaxper, iC)) & ", ADDTAXAMOUNT=" & val(GetText(spdVar, IATaxamt, iC)) & " WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "'and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"

        DB.Execute strSQL
Next
End Sub
Private Function fBillValueLot(Row As Integer) As Double
    fBillValueLot = 0
    
    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    
    If Rs(0) = "Y" Then
        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ITaxamt, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, ICommAMT, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
    ElseIf Rs(0) <> "Y" Then
        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ITaxamt, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
    End If
    
End Function

Private Sub fbillamtcheck()
   On Error GoTo fbillamtcheck_Error
 Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance                                      cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)                            cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(85))), "0.00")
    End If

   On Error GoTo 0
   Exit Sub

fbillamtcheck_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fbillamtcheck of Form frmPurchaseBillMultiple"
End Sub

Sub FORAmtCalculationSCM()
If CustID = "COTTON" Then
    If delivery = "F" Then
        dAssValue = 0
        For RW = 1 To spdVar.MaxRows
            Set LotRs = New Recordset
            LotRs.Open "Select Rateunit,NetWt,RateCy From Rm_Lot Where Divcode ='" & Divcode & "' and LotNo =" & GetText(spdVar, ILotNo, RW) & " And LotDt ='" & Format(GetText(spdVar, ILotdt, RW), "yyyy-mm-dd") & "' and Lotyear = '" & Year(yfdate) & "'", DB, adOpenDynamic, adLockReadOnly
            If Not LotRs.EOF Then
                If LotRs("RateUnit") = "CANDY" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "Select Value From RM_RATEUNIT where UnitName = '" & LotRs("RATEUNIT") & "'", DB, adOpenDynamic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        NoofQuantity = LotRs("NetWt") / TmpRs("Value")
                    End If
                End If
                FVatPer = val(txtfields(56).Text)
                FBEDPER = val(txtfields(88).Text)
                If FBEDPER > 0 Then
                    FEDCESSPER = (val(txtfields(74).Text) / FBEDPER)
                    FHSCESSPER = (val(txtfields(72).Text) / FBEDPER)
                End If
                TAssValue = NoofQuantity * (LotRs("RateCy") * 100) / (100 + FVatPer + FBEDPER + FEDCESSPER + FHSCESSPER)
                dAssValue = dAssValue + TAssValue
            End If
        Next
        txtfields(7).Text = dAssValue
        Call TaxCalc
        txtfields(75).Text = Format(dAssValue * val(txtfields(88).Text) / 100, "##0.00")
        If val(txtfields(75).Text) > 0 Then
            txtfields(73).Text = Format(val(txtfields(75).Text) * val(txtfields(74).Text) / 100, "##0.00")
            txtfields(71).Text = Format(val(txtfields(75).Text) * val(txtfields(72).Text) / 100, "##0.00")
        End If
        Call LotValueAssign(val(txtfields(55).Text), ITaxamt)
        Call LotValueAssign(val(txtfields(35).Text), ILandedcost)
        Call LotValueAssign(val(txtfields(7).Text), Ipjamt)
    End If
End If
End Sub
Private Sub TDS_Calculation()
On Error GoTo TDS_Calculation_Error
If Opt = "mod" Or Opt = "add" Then
    Dim totalPurchaseAmt, TotvalueTDSASS, TDSGRossFixed, TDSPERWP, TDSPERWOP As Double
    Set RSCHECK = New Recordset
    RSCHECK.Open "exec KSP_TDSAmountCalculation '" & Divcode & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Trim(txtfields(81).Text) & "','" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If Not RSCHECK.EOF Then
    totalPurchaseAmt = IIf(IsNull(RSCHECK(0)), 0, RSCHECK(0))
    End If
    TotvalueTDSASS = val(txtfields(47).Text)
    TDSGRossFixed = 0
    Set rss = New Recordset
    rss.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur from rm_PARAM b  ", DB, adOpenStatic
    If Not rss.EOF Then
        TDSGRossFixed = rss(1)
        TDSPERWP = rss(0)
        TDSPERWOP = rss(2)
        TDSCalcTotPur = rss(3)
    End If
    If Opt = "mod" Then
        Set rsamt = New Recordset
        rsamt.Open "select billamt from fa_purhd where Divcode='" & Divcode & "' and slcode='" & Trim(txtfields(81).Text) & "'  and pjvno='" & val(txtfields(304).Text) & "' and tc='" & val(txtfields(300).Text) & "' and pjvdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If Not rsamt.EOF Then
            totalPurchaseAmt = totalPurchaseAmt - rsamt(0)
        End If
    End If
        If Chk_TDSFLAG.value = 1 Then
        If Chk_TDSManual.value = 0 Then
            txtfields(127).Locked = True
            If (val(TotvalueTDSASS) + val(totalPurchaseAmt)) >= val(TDSGRossFixed) Then
            
    '            Set Rs222 = New Recordset
    '            Rs222.Open "select isnull(a.Org_type,'') Org_type,isnull(pan,'') pan from fa_slmas a inner join FA_org_type b on a.ORG_TYPE=b.ORG_TYPE where a.slcode='" & Trim(txtfields(81).Text) & "'", db, adOpenStatic
    '            If Rs222.EOF Then
    '                'MsgBox "Organization Type not mapped in Supplier Master !!! Please Map Organization Type", vbInformation, head
    '              '  Call BUTTON_Click(10)
    '               ' Exit Sub
    '            Else
    '                If Len(Rs222("pan")) = 10 Then
    '                        txtfields(129).Text = Format(TDSPERWP, "#0.000")
    '                Else
    '                        txtfields(129).Text = Format(TDSPERWOP, "#0.000")
    '                End If
    '            End If
               
                
                'If TDSCalcTotPur = 0 And ((val(TDSGRossFixed) + val(TotvalueTDSASS)) - val(totalPurchaseAmt)) > 0 Then
                If TDSCalcTotPur = 0 And ((val(totalPurchaseAmt) - val(TDSGRossFixed))) < 0 Then
                    TDSAssAmt = ((val(TotvalueTDSASS)) + val(totalPurchaseAmt)) - val(TDSGRossFixed) 'val(TotvalueTDSASS) - val(TDSGRossFixed)
                    TDSAssAmt = val(txtfields(7).Text)
                     TTDS_AMT = 0
                    TTDSASSES_AMT = 0
                    For I = 1 To spdVar.MaxRows
                        TDSLANCOST = KSLRound(val(TDSAssAmt) / val(txtfields(9).Text) * val(GetText(spdVar, Ipnetwt, I)), 3)
                        spdVar.SetText ITDSASSAMT, I, CStr(TDSLANCOST)
                        spdVar.SetText ITDSAMT, I, CStr(KSLRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + TDSLANCOST
                        TTDS_AMT = TTDS_AMT + val(GetText(spdVar, ITDSAMT, I))
                    Next
                   txtfields(128).Text = Format(TTDS_AMT, "#0.00")
                   txtfields(127).Text = Format(TTDSASSES_AMT, "#0.00")
    '               Call LotAmountAssign(val(txtfields(128).Text), ITDSAMT, iRow)
    '               Call LotAmountAssign(val(TDSAssAmt), ITDSASSAMT, iRow)
                   Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
                Else
                    TDSAssAmt = val(txtfields(47).Text)
                    TTDS_AMT = 0
                    TTDSASSES_AMT = 0
                    For I = 1 To spdVar.MaxRows
    '                    TDSLANCOST = KSLRound(val(TDSAssAmt) / val(txtfields(9).Text) * val(GetText(spdVar, Ipnetwt, i)), 3)
    '                    spdVar.SetText ITDSASSAMT, i, CStr(TDSLANCOST)
    '                    spdVar.SetText ITDSAMT, i, CStr(KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + val(GetText(spdVar, ITDSASSAMT, I))
                        TTDS_AMT = TTDS_AMT + val(GetText(spdVar, ITDSAMT, I))
                    Next
                     txtfields(127).Text = Format(TTDSASSES_AMT, "#0.00")
                     txtfields(128).Text = Format(TTDS_AMT, "#0.00")
    '               Call LotAmountAssign(val(txtfields(128).Text), ITDSAMT, iRow)
    '               Call LotAmountAssign(val(TDSAssAmt), ITDSASSAMT, iRow)
                   Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
                End If
                
            Else
                txtfields(127).Text = "00.00"
                txtfields(128).Text = "00.00"
                txtfields(129).Text = "00.00"
                Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
                Call LotValueAssign(val(txtfields(128).Text), ITDSAMT)
                Call LotValueAssign(val(txtfields(127).Text), ITDSASSAMT)
            End If
        Else
                txtfields(127).Locked = False
                ''Manual TDS Assessable Amount
                TDSAssAmt = val(txtfields(127).Text)
                TTDS_AMT = 0
                TTDSASSES_AMT = 0
                For I = 1 To spdVar.MaxRows
                        TDSLANCOST = KSLRound(val(TDSAssAmt) / val(txtfields(9).Text) * val(GetText(spdVar, Ipnetwt, I)), 3)
                        spdVar.SetText ITDSASSAMT, I, CStr(TDSLANCOST)
                        spdVar.SetText ITDSAMT, I, CStr(KSLRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + TDSLANCOST
                        TTDS_AMT = TTDS_AMT + KSLRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0)
                Next
    '              txtfields(104).Text = Format(KSLRound(TDSAssAmt * val(txtfields(100).Text) / 100, 0), "#0.00")
    '              txtfields(105).Text = Format(TDSAssAmt, "#0.00")
                   If Chk_TDSManual.value = 0 Then
                    txtfields(127).Text = Format(TTDSASSES_AMT, "#0.00")
                   End If
                    txtfields(128).Text = Format(TTDS_AMT, "#0.00")
    '               Call LotAmountAssign(val(txtfields(104).Text), ITDSAMT, irow)
    '               Call LotAmountAssign(val(TDSAssAmt), ITDSASSAMT, irow)
                   Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
                            
        End If
    Else
            txtfields(127).Text = "00.00"
            txtfields(128).Text = "00.00"
            txtfields(129).Text = "00.00"
            Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
            Call LotValueAssign(val(txtfields(128).Text), ITDSAMT)
            Call LotValueAssign(val(txtfields(127).Text), ITDSASSAMT)
    End If
End If
Exit Sub
TDS_Calculation_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TDS_Calculation of Form frmPurchaseBillMultiple"
End Sub

Private Sub Chk_TDSManual_Click()
If Opt = "add" Or Opt = "mod" Then
    Call LotCalculation
End If
End Sub
