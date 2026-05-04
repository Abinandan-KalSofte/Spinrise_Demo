VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form frmPurchaseBill 
   Caption         =   "Purchase Bills - Single Lot"
   ClientHeight    =   8475
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8475
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command7 
      Caption         =   "&Report"
      Default         =   -1  'True
      Height          =   405
      Left            =   7170
      TabIndex        =   218
      Top             =   8445
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Frame Frame2 
      Caption         =   "old  calculation"
      Height          =   3300
      Left            =   11190
      TabIndex        =   160
      Top             =   1335
      Visible         =   0   'False
      Width           =   9765
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   177
         Top             =   1185
         Width           =   1230
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   176
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   175
         Top             =   1950
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   174
         Top             =   1545
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   173
         Top             =   2295
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   172
         Top             =   1905
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   171
         Top             =   1575
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   20
         Left            =   4830
         MaxLength       =   10
         TabIndex        =   170
         Top             =   1965
         Width           =   1275
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   18
         Left            =   4830
         MaxLength       =   9
         TabIndex        =   169
         Top             =   2325
         Width           =   1275
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   168
         Top             =   1575
         Width           =   1245
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   167
         Top             =   1185
         Width           =   1200
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   166
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   165
         Top             =   2880
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   32
         Left            =   7560
         MaxLength       =   12
         TabIndex        =   164
         Top             =   2385
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   163
         Top             =   2805
         Width           =   1170
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   162
         Top             =   1185
         Width           =   495
      End
      Begin VB.TextBox Txtfields 
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
         TabIndex        =   161
         Top             =   1185
         Width           =   450
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         Caption         =   "Spot Expenses"
         Height          =   195
         Left            =   120
         TabIndex        =   191
         Top             =   1965
         Width           =   1065
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 1"
         Height          =   195
         Left            =   135
         TabIndex        =   190
         Top             =   2355
         Width           =   1095
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Railway Freight"
         Height          =   195
         Left            =   135
         TabIndex        =   189
         Top             =   1620
         Width           =   1080
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Over Due Interest"
         Height          =   195
         Left            =   6180
         TabIndex        =   188
         Top             =   2040
         Width           =   1260
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "cen vat"
         Height          =   195
         Left            =   3405
         TabIndex        =   187
         Top             =   855
         Width           =   540
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Insurance Amount"
         Height          =   195
         Left            =   6195
         TabIndex        =   186
         Top             =   1620
         Width           =   1290
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg."
         Height          =   195
         Left            =   165
         TabIndex        =   185
         Top             =   2865
         Width           =   660
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Broker Commission"
         Height          =   195
         Left            =   3375
         TabIndex        =   184
         Top             =   1980
         Width           =   1335
      End
      Begin VB.Label Label32 
         AutoSize        =   -1  'True
         Caption         =   "AED"
         Height          =   195
         Left            =   6255
         TabIndex        =   183
         Top             =   810
         Width           =   330
      End
      Begin VB.Label Label33 
         AutoSize        =   -1  'True
         Caption         =   "Lorry Freight"
         Height          =   195
         Left            =   6225
         TabIndex        =   182
         Top             =   1260
         Width           =   870
      End
      Begin VB.Label Label34 
         AutoSize        =   -1  'True
         Caption         =   "Loading/Unloading Charges"
         Height          =   390
         Left            =   3375
         TabIndex        =   181
         Top             =   1530
         Width           =   1440
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label35 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 2"
         Height          =   195
         Left            =   3390
         TabIndex        =   180
         Top             =   2325
         Width           =   1095
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Landed Cost"
         Height          =   195
         Left            =   6225
         TabIndex        =   179
         Top             =   2430
         Width           =   900
      End
      Begin VB.Label Label50 
         AutoSize        =   -1  'True
         Caption         =   "Sales Tax Amount"
         Height          =   195
         Left            =   2130
         TabIndex        =   178
         Top             =   1245
         Width           =   1290
      End
   End
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   0
      TabIndex        =   106
      Top             =   -120
      Width           =   12030
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   5325
         Picture         =   "frmPurchaseBill.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   226
         ToolTipText     =   "List (Ctrl L)"
         Top             =   60
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":0397
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "frmPurchaseBill.frx":06A1
         Style           =   1  'Graphical
         TabIndex        =   225
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":0A1B
         Height          =   510
         Index           =   5
         Left            =   1605
         Picture         =   "frmPurchaseBill.frx":0E65
         Style           =   1  'Graphical
         TabIndex        =   224
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":11CA
         Height          =   495
         Index           =   6
         Left            =   2145
         Picture         =   "frmPurchaseBill.frx":1614
         Style           =   1  'Graphical
         TabIndex        =   223
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":1961
         Height          =   510
         Index           =   4
         Left            =   1080
         Picture         =   "frmPurchaseBill.frx":1C6B
         Style           =   1  'Graphical
         TabIndex        =   70
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":2000
         Height          =   510
         Index           =   7
         Left            =   2655
         Picture         =   "frmPurchaseBill.frx":244A
         Style           =   1  'Graphical
         TabIndex        =   71
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":279A
         Height          =   510
         Index           =   11
         Left            =   4785
         Picture         =   "frmPurchaseBill.frx":2BE4
         Style           =   1  'Graphical
         TabIndex        =   75
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":2F79
         Height          =   510
         Index           =   9
         Left            =   3720
         Picture         =   "frmPurchaseBill.frx":3283
         Style           =   1  'Graphical
         TabIndex        =   73
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":3625
         Height          =   510
         Index           =   8
         Left            =   3180
         Picture         =   "frmPurchaseBill.frx":3A6F
         Style           =   1  'Graphical
         TabIndex        =   72
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5865
         Picture         =   "frmPurchaseBill.frx":3DD1
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Puchase Bill Report Print (Ctrl P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":4213
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "frmPurchaseBill.frx":451D
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":48B0
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
         Left            =   555
         Picture         =   "frmPurchaseBill.frx":4BBA
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBill.frx":4F56
         Height          =   510
         Index           =   10
         Left            =   4245
         Picture         =   "frmPurchaseBill.frx":5260
         Style           =   1  'Graphical
         TabIndex        =   74
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   105
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
         TabIndex        =   108
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
         TabIndex        =   107
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   143
      Top             =   8175
      Width           =   11880
      _ExtentX        =   20955
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
            TextSave        =   "06/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:52 AM"
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
      Left            =   360
      TabIndex        =   109
      Top             =   930
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   11536
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "frmPurchaseBill.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame7 
         Height          =   2070
         Left            =   120
         TabIndex        =   110
         Top             =   45
         Width           =   9750
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   237
            TabStop         =   0   'False
            Top             =   1095
            Width           =   2085
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "sno"
            Height          =   300
            Index           =   45
            Left            =   4290
            MaxLength       =   5
            TabIndex        =   90
            Top             =   1410
            Width           =   1080
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Index           =   3
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   89
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1650
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00E0E0E0&
            Height          =   315
            ItemData        =   "frmPurchaseBill.frx":55F8
            Left            =   8580
            List            =   "frmPurchaseBill.frx":5605
            Style           =   2  'Dropdown List
            TabIndex        =   92
            Top             =   1410
            Width           =   1065
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "bales"
            Height          =   300
            Index           =   22
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   93
            TabStop         =   0   'False
            Top             =   1725
            Width           =   930
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "cntcode"
            Height          =   300
            Index           =   30
            Left            =   6525
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   91
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
            TabIndex        =   87
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
            TabIndex        =   85
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
            TabIndex        =   83
            TabStop         =   0   'False
            Text            =   " "
            Top             =   465
            Width           =   7755
         End
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   95
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "areacd"
            Height          =   300
            Index           =   28
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   86
            TabStop         =   0   'False
            Top             =   1095
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "brkcd"
            Height          =   300
            Index           =   27
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   84
            TabStop         =   0   'False
            Top             =   780
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            Height          =   300
            Index           =   26
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   82
            TabStop         =   0   'False
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "LOTNO"
            Height          =   300
            Index           =   2
            Left            =   2790
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   78
            TabStop         =   0   'False
            Top             =   150
            Width           =   780
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "varcode"
            Height          =   300
            Index           =   29
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   88
            TabStop         =   0   'False
            Top             =   1410
            Width           =   930
         End
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   96
            TabStop         =   0   'False
            Top             =   1740
            Width           =   1065
         End
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   94
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1080
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "CATCD"
            Height          =   300
            Index           =   0
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   77
            TabStop         =   0   'False
            Top             =   150
            Width           =   930
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            Height          =   300
            Index           =   1
            Left            =   6615
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   80
            TabStop         =   0   'False
            Top             =   150
            Width           =   945
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   300
            Index           =   0
            Left            =   8535
            TabIndex        =   81
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
            TabIndex        =   79
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
            TabIndex        =   238
            Top             =   1155
            Width           =   810
         End
         Begin VB.Label Label20 
            Caption         =   "SNo."
            Height          =   195
            Left            =   3765
            TabIndex        =   145
            Top             =   1470
            Width           =   495
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   7695
            TabIndex        =   128
            Top             =   1455
            Width           =   285
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            Height          =   195
            Left            =   5655
            TabIndex        =   127
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
            Height          =   195
            Left            =   150
            TabIndex        =   126
            Top             =   825
            Width           =   510
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            Height          =   195
            Left            =   150
            TabIndex        =   125
            Top             =   1140
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   150
            TabIndex        =   124
            Top             =   480
            Width           =   570
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            Height          =   195
            Left            =   2055
            TabIndex        =   120
            Top             =   225
            Width           =   525
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   150
            TabIndex        =   119
            Top             =   1455
            Width           =   480
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   3150
            TabIndex        =   118
            Top             =   1800
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   7680
            TabIndex        =   117
            Top             =   1785
            Width           =   810
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   5445
            TabIndex        =   116
            Top             =   1755
            Width           =   885
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   150
            TabIndex        =   115
            Top             =   1770
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   5445
            TabIndex        =   114
            Top             =   1455
            Width           =   915
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            Height          =   195
            Left            =   3705
            TabIndex        =   113
            Top             =   225
            Width           =   615
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7680
            TabIndex        =   112
            Top             =   225
            Width           =   345
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   150
            TabIndex        =   111
            Top             =   180
            Width           =   630
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   4320
         Left            =   75
         TabIndex        =   129
         Top             =   2130
         Width           =   9810
         _ExtentX        =   17304
         _ExtentY        =   7620
         _Version        =   393216
         Tabs            =   2
         Tab             =   1
         TabsPerRow      =   2
         TabHeight       =   520
         TabCaption(0)   =   "&Purchase Bill Details"
         TabPicture(0)   =   "frmPurchaseBill.frx":5619
         Tab(0).ControlEnabled=   0   'False
         Tab(0).Control(0)=   "Frame8"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "&More Details"
         TabPicture(1)   =   "frmPurchaseBill.frx":5635
         Tab(1).ControlEnabled=   -1  'True
         Tab(1).Control(0)=   "Frame4"
         Tab(1).Control(0).Enabled=   0   'False
         Tab(1).ControlCount=   1
         Begin VB.Frame Frame4 
            Height          =   3915
            Left            =   90
            TabIndex        =   192
            Top             =   330
            Width           =   9630
            Begin VB.TextBox Txtfields 
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
               Index           =   81
               Left            =   4440
               MaxLength       =   9
               TabIndex        =   239
               Top             =   3150
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   7740
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   44
               TabStop         =   0   'False
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   45
               Top             =   1305
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
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
               Left            =   7005
               MaxLength       =   9
               TabIndex        =   43
               Top             =   1305
               Width           =   720
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   63
               Top             =   2790
               Width           =   1800
            End
            Begin VB.Frame Frame22 
               Height          =   435
               Left            =   6300
               TabIndex        =   231
               Top             =   120
               Width           =   3240
               Begin VB.OptionButton optBefore 
                  Caption         =   "Before Discount"
                  Height          =   225
                  Left            =   135
                  TabIndex        =   24
                  Top             =   150
                  Value           =   -1  'True
                  Width           =   1455
               End
               Begin VB.OptionButton optAfter 
                  Caption         =   "After Discount"
                  Height          =   195
                  Left            =   1665
                  TabIndex        =   25
                  Top             =   165
                  Width           =   1455
               End
            End
            Begin VB.Frame Frame10 
               Height          =   435
               Left            =   1335
               TabIndex        =   230
               Top             =   120
               Width           =   3405
               Begin VB.TextBox Txtfields 
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
                  TabIndex        =   23
                  Top             =   120
                  Width           =   600
               End
               Begin VB.OptionButton opt_nc 
                  Caption         =   "No"
                  Height          =   195
                  Left            =   270
                  TabIndex        =   21
                  Top             =   180
                  Value           =   -1  'True
                  Width           =   855
               End
               Begin VB.OptionButton opt_c 
                  Caption         =   "Yes"
                  Height          =   225
                  Left            =   1215
                  TabIndex        =   22
                  Top             =   165
                  Width           =   660
               End
               Begin VB.Label lblDutyPer 
                  Caption         =   "Duty %"
                  Enabled         =   0   'False
                  Height          =   195
                  Left            =   2070
                  TabIndex        =   233
                  Top             =   165
                  Width           =   525
               End
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   69
               TabStop         =   0   'False
               Top             =   4245
               Visible         =   0   'False
               Width           =   1170
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   68
               Top             =   3510
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   87
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   47
               Top             =   1665
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   86
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   46
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   5085
               MaxLength       =   15
               TabIndex        =   29
               Top             =   585
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4440
               MaxLength       =   9
               TabIndex        =   28
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   30
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   31
               Top             =   585
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   83
               Left            =   3705
               MaxLength       =   9
               TabIndex        =   40
               Top             =   1305
               Width           =   720
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   26
               Top             =   585
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   27
               Top             =   585
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   58
               Top             =   2430
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   61
               Top             =   2790
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   64
               Top             =   3150
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   62
               Top             =   2790
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   60
               Top             =   2430
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   59
               Top             =   2430
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   57
               Top             =   2025
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   56
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   5100
               MaxLength       =   15
               TabIndex        =   55
               Top             =   2025
               Width           =   1140
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4440
               MaxLength       =   9
               TabIndex        =   54
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   53
               Top             =   2025
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   52
               Top             =   2025
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   51
               Top             =   1665
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   50
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   51
               Left            =   5085
               MaxLength       =   15
               TabIndex        =   49
               Top             =   1665
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   52
               Left            =   4440
               MaxLength       =   9
               TabIndex        =   48
               Top             =   1665
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   55
               Left            =   5085
               MaxLength       =   15
               TabIndex        =   42
               Top             =   1305
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   56
               Left            =   4440
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   41
               TabStop         =   0   'False
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   65
               Left            =   5085
               MaxLength       =   15
               TabIndex        =   35
               Top             =   945
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   68
               Left            =   4440
               MaxLength       =   9
               TabIndex        =   34
               Top             =   945
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   71
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   39
               Top             =   1305
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   72
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   38
               Top             =   1305
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   73
               Left            =   8385
               MaxLength       =   15
               TabIndex        =   37
               Top             =   945
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   74
               Left            =   7740
               MaxLength       =   9
               TabIndex        =   36
               Top             =   945
               Width           =   615
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   75
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   33
               Top             =   945
               Width           =   1150
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   67
               Top             =   3510
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   66
               Top             =   3510
               Width           =   1800
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   5100
               MaxLength       =   15
               TabIndex        =   65
               Top             =   3150
               Width           =   1140
            End
            Begin VB.TextBox Txtfields 
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   88
               Left            =   1335
               MaxLength       =   9
               TabIndex        =   32
               Top             =   945
               Width           =   615
            End
            Begin VB.Label lblAddTax 
               AutoSize        =   -1  'True
               Caption         =   "Add. Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6315
               TabIndex        =   236
               Top             =   1380
               Width           =   645
            End
            Begin VB.Label Label73 
               AutoSize        =   -1  'True
               Caption         =   "Others (Taxable)"
               Height          =   195
               Left            =   6315
               TabIndex        =   235
               Top             =   2850
               Width           =   1170
            End
            Begin VB.Label Label111 
               Caption         =   "Tax Calculation?"
               Height          =   285
               Left            =   4920
               TabIndex        =   232
               Top             =   270
               Width           =   1335
            End
            Begin VB.Label Label71 
               Caption         =   "Duty Claimable?"
               Height          =   270
               Left            =   105
               TabIndex        =   229
               Top             =   285
               Width           =   1365
            End
            Begin VB.Label Label48 
               AutoSize        =   -1  'True
               Caption         =   "Vat Amt"
               Height          =   195
               Left            =   7500
               TabIndex        =   217
               Top             =   4350
               Visible         =   0   'False
               Width           =   555
            End
            Begin VB.Label Label49 
               Caption         =   "Landed Cost WithTax"
               ForeColor       =   &H00FF0000&
               Height          =   360
               Left            =   6285
               TabIndex        =   216
               Top             =   3450
               Width           =   1170
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label92 
               AutoSize        =   -1  'True
               Caption         =   "CST"
               Height          =   195
               Left            =   105
               TabIndex        =   215
               Top             =   1710
               Width           =   315
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "Trade Discount"
               Height          =   195
               Left            =   3225
               TabIndex        =   214
               Top             =   645
               Width           =   1215
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label51 
               AutoSize        =   -1  'True
               Caption         =   "Lorry Freight"
               Height          =   195
               Left            =   6315
               TabIndex        =   213
               Top             =   630
               Width           =   870
            End
            Begin VB.Label Label52 
               AutoSize        =   -1  'True
               Caption         =   "Cash Discount"
               Height          =   195
               Left            =   105
               TabIndex        =   212
               Top             =   630
               Width           =   1035
            End
            Begin VB.Label Label56 
               AutoSize        =   -1  'True
               Caption         =   "Dr. Note Amount"
               Height          =   195
               Left            =   105
               TabIndex        =   211
               Top             =   2490
               Width           =   1185
            End
            Begin VB.Label Label55 
               AutoSize        =   -1  'True
               Caption         =   "Customs Duty"
               Height          =   195
               Left            =   105
               TabIndex        =   210
               Top             =   2850
               Width           =   975
            End
            Begin VB.Label Label53 
               Caption         =   "Others (Non-Taxable)"
               Height          =   390
               Left            =   105
               TabIndex        =   209
               Top             =   3105
               Width           =   1035
            End
            Begin VB.Label Label54 
               AutoSize        =   -1  'True
               Caption         =   "Clearance"
               Height          =   195
               Left            =   3225
               TabIndex        =   208
               Top             =   2790
               Width           =   720
            End
            Begin VB.Line Line2 
               X1              =   30
               X2              =   9870
               Y1              =   2385
               Y2              =   2385
            End
            Begin VB.Label Label57 
               AutoSize        =   -1  'True
               Caption         =   "Damage"
               Height          =   195
               Left            =   6315
               TabIndex        =   207
               Top             =   2490
               Width           =   600
            End
            Begin VB.Label Label58 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Left            =   3225
               TabIndex        =   206
               Top             =   2430
               Width           =   480
            End
            Begin VB.Label Label59 
               AutoSize        =   -1  'True
               Caption         =   "LC Interest"
               Height          =   330
               Left            =   6345
               TabIndex        =   205
               Top             =   2085
               Width           =   765
            End
            Begin VB.Label Label60 
               AutoSize        =   -1  'True
               Caption         =   "Commission"
               Height          =   330
               Left            =   3210
               TabIndex        =   204
               Top             =   2055
               Width           =   825
            End
            Begin VB.Label Label61 
               AutoSize        =   -1  'True
               Caption         =   "Insurance"
               Height          =   330
               Left            =   105
               TabIndex        =   203
               Top             =   2040
               Width           =   705
            End
            Begin VB.Label Label62 
               Caption         =   "Railway Freight"
               Height          =   255
               Left            =   6315
               TabIndex        =   202
               Top             =   1740
               Width           =   1200
            End
            Begin VB.Label Label63 
               AutoSize        =   -1  'True
               Caption         =   "Other Tax"
               Height          =   195
               Left            =   3225
               TabIndex        =   201
               Top             =   1740
               Width           =   705
            End
            Begin VB.Label Label64 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Left            =   3225
               TabIndex        =   200
               Top             =   1380
               Width           =   270
            End
            Begin VB.Label Label65 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Left            =   3225
               TabIndex        =   199
               Top             =   1005
               Width           =   345
            End
            Begin VB.Label Label66 
               AutoSize        =   -1  'True
               Caption         =   "Hs Cess"
               Height          =   195
               Left            =   105
               TabIndex        =   198
               Top             =   1335
               Width           =   585
            End
            Begin VB.Label Label67 
               AutoSize        =   -1  'True
               Caption         =   "Ed Cess"
               Height          =   195
               Left            =   6315
               TabIndex        =   197
               Top             =   975
               Width           =   615
            End
            Begin VB.Label Label69 
               AutoSize        =   -1  'True
               Caption         =   "Landed Cost"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   196
               Top             =   3585
               Width           =   900
            End
            Begin VB.Label Label72 
               AutoSize        =   -1  'True
               Caption         =   "Rate/Kg."
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3225
               TabIndex        =   195
               Top             =   3570
               Width           =   660
            End
            Begin VB.Label Label75 
               AutoSize        =   -1  'True
               Caption         =   "B.E.D"
               Height          =   195
               Left            =   105
               TabIndex        =   194
               Top             =   990
               Width           =   420
            End
            Begin VB.Label Label77 
               Caption         =   "Broker Commission"
               Height          =   420
               Left            =   3225
               TabIndex        =   193
               Top             =   3075
               Width           =   1185
            End
         End
         Begin VB.Frame Frame8 
            Height          =   3825
            Left            =   -74895
            TabIndex        =   130
            Top             =   330
            Width           =   9600
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   227
               Top             =   1065
               Width           =   6225
            End
            Begin VB.TextBox Txtfields 
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
               Top             =   1065
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   18
               TabStop         =   0   'False
               Top             =   2985
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   8070
               TabIndex        =   20
               Top             =   2985
               Width           =   1425
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4800
               TabIndex        =   19
               Top             =   2985
               Width           =   1230
            End
            Begin VB.TextBox txtDBCRNt 
               Alignment       =   1  'Right Justify
               DataField       =   "dbamt"
               Height          =   315
               Left            =   8055
               Locked          =   -1  'True
               TabIndex        =   10
               TabStop         =   0   'False
               Top             =   1845
               Width           =   1410
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
               Left            =   8055
               MaxLength       =   12
               TabIndex        =   13
               Top             =   2220
               Width           =   1410
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   8055
               TabIndex        =   17
               Top             =   2595
               Width           =   1410
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4800
               TabIndex        =   15
               Top             =   2595
               Width           =   1230
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   1680
               TabIndex        =   14
               Top             =   2595
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "fbillwt"
               Height          =   300
               Index           =   46
               Left            =   4830
               TabIndex        =   99
               Top             =   2985
               Visible         =   0   'False
               Width           =   1200
            End
            Begin VB.ComboBox Combo2 
               Height          =   315
               ItemData        =   "frmPurchaseBill.frx":5651
               Left            =   8040
               List            =   "frmPurchaseBill.frx":565B
               Locked          =   -1  'True
               TabIndex        =   6
               Top             =   1455
               Width           =   1440
            End
            Begin VB.TextBox Txtfields 
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
               TabIndex        =   11
               Top             =   2220
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4800
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   12
               Top             =   2220
               Width           =   1230
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "Fbillno"
               Height          =   315
               Index           =   6
               Left            =   1680
               MaxLength       =   20
               TabIndex        =   7
               Top             =   1845
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   303
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   98
               TabStop         =   0   'False
               Top             =   675
               Width           =   6225
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "ptype"
               Height          =   315
               Index           =   302
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   2
               Top             =   675
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "pjno"
               Height          =   315
               Index           =   304
               Left            =   1680
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   4
               Top             =   1455
               Width           =   1545
            End
            Begin VB.TextBox Txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   301
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   97
               TabStop         =   0   'False
               Top             =   285
               Width           =   6225
            End
            Begin VB.TextBox Txtfields 
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
               Left            =   4800
               TabIndex        =   5
               Top             =   1455
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "BILLDT"
               Height          =   315
               Index           =   2
               Left            =   4800
               TabIndex        =   8
               Top             =   1845
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSComCtl2.DTPicker DTPicker1 
               Height          =   345
               Left            =   4800
               TabIndex        =   9
               Top             =   1830
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   609
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   81068033
               CurrentDate     =   39990
            End
            Begin VB.Label Label70 
               Caption         =   "Form Type"
               Height          =   195
               Left            =   105
               TabIndex        =   228
               Top             =   1095
               Width           =   1260
            End
            Begin VB.Label Label47 
               Caption         =   "Quality Allowance"
               Height          =   390
               Left            =   3300
               TabIndex        =   159
               Top             =   3030
               Width           =   1515
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "Dr/Cr Note"
               Height          =   195
               Left            =   6405
               TabIndex        =   152
               Top             =   1875
               Width           =   780
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "Adjustment Value (+/-)"
               ForeColor       =   &H00000000&
               Height          =   195
               Left            =   6405
               TabIndex        =   151
               Top             =   2250
               Width           =   1575
            End
            Begin VB.Label Label42 
               Caption         =   "Final Net Weight"
               Height          =   180
               Left            =   6405
               TabIndex        =   150
               Top             =   2625
               Width           =   1575
            End
            Begin VB.Label Label41 
               Caption         =   "Final Tare Weight"
               Height          =   210
               Left            =   3300
               TabIndex        =   149
               Top             =   2595
               Width           =   1425
            End
            Begin VB.Label Label40 
               Caption         =   "Final Gross Weight"
               Height          =   255
               Left            =   90
               TabIndex        =   148
               Top             =   2655
               Width           =   1575
            End
            Begin VB.Label Label28 
               AutoSize        =   -1  'True
               Caption         =   "Final Bill Value"
               Height          =   195
               Left            =   6405
               TabIndex        =   147
               Top             =   3015
               Width           =   1020
            End
            Begin VB.Label Label27 
               AutoSize        =   -1  'True
               Caption         =   "Final Bill Wt."
               Height          =   195
               Left            =   3600
               TabIndex        =   146
               Top             =   3015
               Visible         =   0   'False
               Width           =   870
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "RG23A"
               Height          =   195
               Index           =   5
               Left            =   6375
               TabIndex        =   144
               Top             =   1500
               Width           =   525
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Sample Weight"
               Height          =   195
               Left            =   120
               TabIndex        =   142
               Top             =   3015
               Width           =   1080
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Net Weight"
               Height          =   195
               Left            =   90
               TabIndex        =   141
               Top             =   2265
               Width           =   1425
            End
            Begin VB.Label Label31 
               AutoSize        =   -1  'True
               Caption         =   "Assessable Value"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3300
               TabIndex        =   140
               Top             =   2220
               Width           =   1275
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Bill Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3300
               TabIndex        =   139
               Top             =   1845
               Width           =   615
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Bill Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   90
               TabIndex        =   136
               Top             =   1860
               Width           =   795
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Purchase Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   4
               Left            =   120
               TabIndex        =   135
               Top             =   705
               Width           =   1080
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3300
               TabIndex        =   133
               Top             =   1455
               Width           =   840
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   3
               Left            =   120
               TabIndex        =   132
               Top             =   1500
               Width           =   1020
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Transaction Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   2
               Left            =   120
               TabIndex        =   131
               Top             =   375
               Width           =   1245
            End
         End
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2220
      TabIndex        =   153
      Top             =   3570
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         Height          =   615
         Left            =   2955
         Style           =   1  'Graphical
         TabIndex        =   156
         Top             =   1725
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4035
         Style           =   1  'Graphical
         TabIndex        =   155
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   154
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
         TabIndex        =   158
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2595
         TabIndex        =   157
         Top             =   1005
         Width           =   570
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   750
      TabIndex        =   102
      Top             =   1920
      Visible         =   0   'False
      Width           =   8475
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3210
         Left            =   270
         TabIndex        =   138
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
         TabIndex        =   137
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
         TabIndex        =   134
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
         TabIndex        =   103
         Top             =   225
         Width           =   1380
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   420
      TabIndex        =   101
      Top             =   1245
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KslList1 
         Height          =   3375
         Left            =   840
         TabIndex        =   121
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "frmPurchaseBill.frx":5668
         Height          =   615
         Left            =   3015
         Picture         =   "frmPurchaseBill.frx":5A4E
         Style           =   1  'Graphical
         TabIndex        =   122
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "frmPurchaseBill.frx":5E14
         Height          =   615
         Left            =   4770
         Picture         =   "frmPurchaseBill.frx":61F6
         Style           =   1  'Graphical
         TabIndex        =   123
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   3255
         Left            =   840
         TabIndex        =   105
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
         TabIndex        =   104
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame5 
      Height          =   630
      Left            =   5310
      TabIndex        =   219
      Top             =   570
      Visible         =   0   'False
      Width           =   5460
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   221
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   220
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
         TabIndex        =   222
         Top             =   240
         Width           =   1425
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4455
      Left            =   330
      TabIndex        =   234
      Top             =   2040
      Visible         =   0   'False
      Width           =   4065
      _extentx        =   7170
      _extenty        =   7858
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Bills - Single Lot"
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
      Left            =   435
      TabIndex        =   100
      Top             =   585
      Width           =   3435
   End
End
Attribute VB_Name = "frmPurchaseBill"
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

Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim rstFA As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim dblDutyPer As Double
Dim Sflg As String
Dim Opt As String
Dim oText As TextBox
Dim dblTotalLC As Double
Dim strDelType As String
Dim DB As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Integer
Dim GT As Integer
Dim z As Integer
Dim qty As Integer
Dim oldgrs As Double
Dim oldtare As Double
Dim ORGAmt As Double
Dim delivery As String
Dim dblDuty, s As Double
Dim sCode As String

Dim dCashDis As Double
Dim dTradeDis As Double
Dim dLryFgt As Double
Dim DBED As Double
Dim dCess As Double
Dim dEDCess As Double
Dim dHScess As Double
Dim dTax As Double
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
Dim fbillamt As Double



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

On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
'If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("rm_purtype", "Please Define Purchase Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = False
    BUTTON(10).Enabled = False
    Set rs1 = New Recordset
    rs1.Open "select isnull(max(sno),0)+1 AS SNO from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    TXTFIELDS(45).Text = rs1("SNO")
    TXTFIELDS(45).Locked = False
    TXTFIELDS(4).Text = ""
   
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = True
    BUTTON(12).Enabled = False
    BUTTON(9).Enabled = True
    BUTTON(3).Enabled = True
     
    
    
    Set adoprimaryrs = New Recordset
    
    adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,Assvalue,form_type,dutyclaimable, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit FROM RM_LOT WHERE divcode='" & Divcode & "' and OPFLG ='N' and PJNO is null", DB, adOpenStatic, adLockOptimistic
    If adoprimaryrs.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        Set Rs = New Recordset
        Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
        LookUp.clear = True
        LookUp.query = "select lotno""Lot No."",lotdt""Lot Date"",plotno""Supplier Lot No."", inwardno ""Inward No."",b.slname ""Supplier Name"",a.billno ""Bill No."" from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and lottype='A'  AND ISNULL(FAFLAG,'')=''"
        LookUp.Caption = "Lot No. Listing"
        
        If Rs(0) = "P" Then
            LookUp.DefCol = "Supplier Lot No."
        Else
            LookUp.DefCol = "Lot No."
        End If
            
        LookUp.ALIGN = "900,1100,1400,1000,3000,1350"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then

                DTPicker1.Enabled = True
                DTPicker1.value = pdate
                TXTFIELDS(7).Locked = True
                Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))
                TXTFIELDS(7).Locked = True

        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
   Else
        MsgBox "All Lots are used. Bill Entry not allowed!", vbInformation, head
        Exit Sub
   End If
Case 2
    'Deletion
    'If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
       
    If adoprimaryrs.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.clear = True
        LookUp.query = "select lotno""Lot No."",lotdt""Lot Date"",plotno ""Supplier Lot No."",inwardno ""Inward No."" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL and faflag<>'Y'"
        LookUp.Caption = "Lot No. Listing"
        LookUp.DefCol = "Lot No."
        LookUp.ALIGN = "2000,2000,2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))
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
   ' Open "C:\g1.TXT" For Output As #z
    Open KALFOLDERDATA & "\g1.TXT" For Output As #z
    Call header2(CInt(pg), CInt(co), Rs)
    
    co = co + 16
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO,B.CATNAME,A.BALES AS QUANTITY,a.Quality from rm_lot a,RM_CAT B " & _
            "where LOTYEAR='" & Year(yfdate) & "' AND A.CATCD=B.CATCD  AND  a.divcode='" & Divcode & "' and a.lotno='" & TXTFIELDS(2) & " ' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.dbamt is not null ", DB, adOpenStatic
   
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
'        Frame6.Visible = True
'        Frame6.ZOrder
'        txtqry.Text = ""
'        txtqry.SetFocus
'        StatusBar1.Panels(2).Text = "Enter Any Lot Number to be Found out"
          desc.Caption = "Find"
           Set adoprimaryrs = New Recordset
           adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
              
           If adoprimaryrs.RecordCount <> 0 Then
               Label15.Caption = "Lot Details"
               StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
               LookUp.clear = True
               LookUp.query = "select lotno""Lot No."",lotdt""Lot Date"",plotno ""Supplier Lot No."",inwardno ""Inward No."" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL"
               LookUp.Caption = "Lot No. Listing"
               LookUp.DefCol = "Lot No."
               LookUp.ALIGN = "2000,2000,2000,2000"
               LookUp.Show vbModal
               If LookUp.Cancel = False Then
                   Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))
                   BUTTON(0).Enabled = False
                   BUTTON(1).Enabled = False
                   BUTTON(2).Enabled = False
                   BUTTON(3).Enabled = False
                   BUTTON(4).Enabled = False
                   BUTTON(5).Enabled = False
                   BUTTON(6).Enabled = False
                   BUTTON(7).Enabled = False
                   BUTTON(8).Enabled = False
                   BUTTON(9).Enabled = False

               Else
                   MsgBox "All Lots are used. Deletion not allowed!", vbInformation, head
                   Call BUTTON_Click(10)
                   Exit Sub
               End If
          End If


Case 9                               'Save

    If Opt = "add" Then

        If Opt = "add" Then
            Set Rs = New Recordset
            Rs.Open "SELECT pjno FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and pjno =" & val(TXTFIELDS(304).Text), DB, adOpenStatic
            
            If Rs.EOF = False Then
                MsgBox "P.J.V. Number is " & val(TXTFIELDS(304).Text), vbInformation, head
            End If
            
'            Set rstFA = New Recordset
'            rstFA.Open "SELECT FAPOSTINGFLG FROM RM_PARAM", DB, adOpenStatic
'            If rstFA(0) = "N" Then

                Set Rs = New Recordset
                Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                TXTFIELDS(304).Text = Rs(0)
                
'            Else
'                Txtfields(304).Text = ""
'            End If

        End If

        If Trim(TXTFIELDS(6).Text) = "" Then
            MsgBox "Please enter the Bill Number", vbInformation, head
            SSTab2.Tab = 0
            TXTFIELDS(6).Locked = False
            TXTFIELDS(6).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(6).Text) = "" Then
            MsgBox "Please enter the Bill Number", vbInformation, head
            TXTFIELDS(6).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(39).Text) = "" Then
            MsgBox "Please enter the Form Type", vbInformation, head
            SSTab2.Tab = 0
            TXTFIELDS(39).Locked = False
            TXTFIELDS(39).SetFocus
            Exit Sub
        End If
        DB.BeginTrans
        ' COMMANDED BY VINOTH 16.06.09
        Call billamtcheck
        If fbillamt <> val(TXTFIELDS(47).Text) Then
            MsgBox "Final Bill Amount Not Tallied", vbInformation, head
            Exit Sub
        End If
        
        Set rs1 = New Recordset
        rs1.Open "select isnull(max(sno),0)+1 AS SNO from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        TXTFIELDS(45).Text = rs1("SNO")
'        adoPrimaryRS("SNO") = val(rs1(0))
'
'        Set rs1 = New Recordset
'        rs1.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'        txtfields(304).Text = rs1(0)
'        If MaskEdBox1(3).Text = "__/__/____" Then
'            adoPrimaryRS("PJdt") = Format(pdate, "yyyy-mm-dd")
'        Else
'            adoPrimaryRS("PJDT") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
'        End If
'
'        adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
'        adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'        adoPrimaryRS("FBILLNO") = Trim(txtfields(6).Text)
'        adoPrimaryRS("Form_type") = txtfields(39).Text
'        If MaskEdBox1(2).Text = "__/__/____" Then
'            adoPrimaryRS("Fbilldt") = Null
'            adoPrimaryRS("BILLDT") = Null
'        Else
'            adoPrimaryRS("Fbilldt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'            adoPrimaryRS("BILLDT") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'        End If
'
'        If Combo1.Text = "Bale" Then
'            adoPrimaryRS("BBLflG") = "B"
'        Else
'            adoPrimaryRS("BBLflG") = "R"
'        End If
'
'        If Trim(txtfields(300).Text) = "" Or IsNull(txtfields(300).Text) = True Then
'            adoPrimaryRS("pjtc") = Null
'        Else
'            adoPrimaryRS("pjtc") = val(txtfields(300).Text)
'        End If
'        If Trim(txtfields(302).Text) = "" Or IsNull(txtfields(302).Text) = True Then
'            adoPrimaryRS("ptype") = Null
'        Else
'            adoPrimaryRS("ptype") = txtfields(302).Text
'        End If
'
'        If Trim(txtfields(71).Text) = "" Then
'            adoPrimaryRS("aedamt") = 0
'        Else
'            adoPrimaryRS("aedamt") = Trim(txtfields(71).Text)
'        End If
'        adoPrimaryRS("freght") = IIf(txtfields(19).Text = "", 0, txtfields(19).Text)
'        If Combo2.Text = "Yes" Then
'            adoPrimaryRS("rg23a") = "Y"
'        ElseIf Combo2.Text = "No" Then
'            adoPrimaryRS("rg23a") = "N"
'        End If
'        'FBILLWT,FBILLVALUE
        
'        adoPrimaryRS("FBILLWT") = val(txtfields(46).Text)
'        adoPrimaryRS("FBILLVALUE") = val(txtfields(47).Text)
'        adoPrimaryRS("FGROSSWT") = val(txtfields(48).Text)
'        adoPrimaryRS("FTAREWT") = val(txtfields(49).Text)
'        adoPrimaryRS("FNETWT") = val(txtfields(50).Text)
'        adoPrimaryRS("dbamt") = val(txtDBCRNt.Text)
'        adoPrimaryRS("TOTLANDCOST") = val(txtfields(78).Text) + val(txtAdjValue.Text)
'        adoPrimaryRS("PJAMT") = val(txtfields(7).Text)
'        adoPrimaryRS("BillValue") = Format(ORGAmt, "#0.00")
'        adoPrimaryRS("tax_code") = IIf(IsNull(txtfields(83).Text) = True, 0, txtfields(83).Text)
'        adoPrimaryRS("TAX_PER") = val(txtfields(56).Text)
'        adoPrimaryRS("LANDCOSTWITHTAX") = val(txtfields(35).Text)
'        'adoPrimaryRS("VATAMT") = val(txtfields(34).Text)
'        adoPrimaryRS("VATAMT") = val(txtfields(55).Text)
'        adoPrimaryRS("Assvalue") = (val(txtfields(7).Text)) '+ val(txtAdjValue.Text)) - val(txtFields(34).Text)
        
        
'        If opt_c.value = True Then
'            adoPrimaryRS("dutyclaimable") = "Y"
'        Else
'            adoPrimaryRS("dutyclaimable") = "N"
'        End If

        'On Error Resume Next
        
        'adoPrimaryRS.UpdateBatch 'adAffectAllChapters
'        adoPrimaryRS.Update
        
        Set rs1 = New Recordset
        rs1.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        TXTFIELDS(304).Text = rs1(0)
        
        'To Update Rm_Lot.AdjValue Field
        Dim strQ1 As String
        strQ1 = "update rm_lot set PJNO=" & val(TXTFIELDS(304).Text) & ",FBILLWT = " & val(TXTFIELDS(46).Text) & ",FBILLVALUE = " & val(TXTFIELDS(47).Text) & ",FGROSSWT =" & val(TXTFIELDS(48).Text) & ",FTAREWT = " & val(TXTFIELDS(49).Text) & ",FNETWT = " & val(TXTFIELDS(50).Text) & _
                ",dbamt = " & val(txtDBCRNt.Text) & ",TOTLANDCOST = " & val(TXTFIELDS(78).Text) + val(txtAdjValue.Text) & ",PJAMT = " & val(TXTFIELDS(7).Text) & ",BillValue = " & Format(ORGAmt, "#0.00") & _
                ",tax_code = '" & IIf(IsNull(TXTFIELDS(83).Text) = True, 0, TXTFIELDS(83).Text) & "',TAX_PER = " & val(TXTFIELDS(56).Text) & ",LANDCOSTWITHTAX = " & val(TXTFIELDS(35).Text) & ",VATAMT = " & val(TXTFIELDS(55).Text) & ",Assvalue = " & (val(TXTFIELDS(7).Text)) & _
                " Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                "Divcode ='" & Divcode & "' and  " & _
                "OPFLG ='N' and " & _
                "CatCd = '" & TXTFIELDS(0) & "'"
        
        DB.Execute strQ1

        strQ1 = "update rm_lot set SNO = " & val(rs1(0)) & ",aedamt = " & val(TXTFIELDS(71).Text) & ",ptype = '" & IIf(IsNull(TXTFIELDS(302).Text), Null, TXTFIELDS(302).Text) & "',pjtc = " & IIf(IsNull(TXTFIELDS(300).Text), 0, val(TXTFIELDS(300).Text)) & _
                ",FBILLNO = '" & Trim(TXTFIELDS(6).Text) & "',Form_type = '" & TXTFIELDS(39).Text & "',freght = " & IIf(TXTFIELDS(19).Text = "", 0, val(TXTFIELDS(19).Text)) & _
                ",PJDT ='" & IIf(MaskEdBox1(3).Text = "__/__/____", Format(pdate, "yyyy-mm-dd"), Format(MaskEdBox1(3).Text, "yyyy-mm-dd")) & "'" & _
                ",Fbilldt ='" & IIf(MaskEdBox1(2).Text = "__/__/____", Format(pdate, "yyyy-mm-dd"), Format(MaskEdBox1(2).Text, "yyyy-mm-dd")) & "'" & _
                ",BILLDT ='" & IIf(MaskEdBox1(2).Text = "__/__/____", Format(pdate, "yyyy-mm-dd"), Format(MaskEdBox1(2).Text, "yyyy-mm-dd")) & "'" & _
                ",BBLflG ='" & IIf(Combo1.Text = "Bale", "B", "R") & "',rg23a ='" & IIf(Combo2.Text = "Yes", "Y", "N") & "',dutyclaimable ='" & IIf(opt_c.value = True, "Y", "N") & "'" & _
                " Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "'"
        
        DB.Execute strQ1
               
        
        strQ1 = "Update Rm_Lot Set tax_per=" & val(TXTFIELDS(56).Text) & ",vatper=" & val(TXTFIELDS(56).Text) & _
                   ",AdjValue = " & val(txtAdjValue.Text) & ",vatamt=" & val(TXTFIELDS(55).Text) & ", Form_Type = '" & Trim(TXTFIELDS(39).Text) & _
                   "',fbillno = '" & Trim(TXTFIELDS(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = " & val(TXTFIELDS(47).Text) & " Where " & _
                   "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                   "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and  " & _
                   "OPFLG ='N' and " & _
                   "CatCd = '" & TXTFIELDS(0) & "'"
        
        
        DB.Execute strQ1
        
        If val(txtDBCRNt.Text) <> 0 Then
        
            Set rsb = New Recordset
            rsb.Open "select * from rm_lot where  LOTYEAR='" & Year(yfdate) & "' AND LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  Lotno =" & TXTFIELDS(2).Text & " and Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and (dbno is null ) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            If rsb.RecordCount > 0 Then
                Set rsa = New Recordset
                'rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & txtfields(0) & "' and (dbamt is not null and dbamt<>0) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'", DB
                rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where  Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and (dbno is not null) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
                If rsa.RecordCount > 0 Then
                DB.Execute "Update Rm_Lot Set " & _
                       "dbno = " & rsa(0) & _
                       " Where " & _
                       "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                       "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                       "Divcode ='" & Divcode & "' and  " & _
                       "OPFLG ='N' and " & _
                       "CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
                End If
            
            End If
        Else
            DB.Execute "Update Rm_Lot Set " & _
                       "dbno = null  Where " & _
                       "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                       "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                       "Divcode ='" & Divcode & "' and  " & _
                       "OPFLG ='N' and " & _
                       "CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
        End If
        Assvalue = (val(TXTFIELDS(7).Text)) ' + val(txtAdjValue.Text)) - val(txtFields(34).Text)
        DB.Execute "UPDATE RM_LOT SET ASSVALUE= " & Assvalue & ",totlandcost=" & val(TXTFIELDS(78).Text) & " WHERE " & _
                    "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                    "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and  " & _
                    "OPFLG ='N' and " & _
                    "CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
                    
        Set rs1 = New Recordset
        rs1.Open "SELECT STATE_CODE FROM FA_SLMAS WHERE SLCODE='" & TXTFIELDS(26).Text & "'", DB, adOpenStatic
        Set RS2 = New Recordset
        RS2.Open "SELECT STATE_CODE FROM PP_DIVMAS WHERE divcode='" & Divcode & "'", DB, adOpenStatic
        If rs1.Fields("STATE_CODE") = RS2.Fields("STATE_CODE") Then
            DB.Execute "UPDATE RM_LOT SET vcatcd= 'R' WHERE " & _
                    "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                    "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and  " & _
                    "OPFLG ='N' and " & _
                    "CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
        Else
            DB.Execute "UPDATE RM_LOT SET vcatcd= 'O' WHERE " & _
                    "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                    "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and  " & _
                    "OPFLG ='N' and " & _
                    "CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
        End If

        sCode = IIf(IsNull(TXTFIELDS(83).Text) = True, " ", Trim(TXTFIELDS(83).Text))
        
        strSQL = "UPDATE RM_LOT SET FBILLWT = " & val(TXTFIELDS(46).Text) & ", FBILLVALUE= " & val(TXTFIELDS(47).Text) & _
                 ", dbamt = " & val(txtDBCRNt.Text) & ", TOTLANDCOST = " & val(TXTFIELDS(78).Text) & _
                 ", tax_code ='" & Trim(sCode) & "', TAX_PER = " & val(TXTFIELDS(56).Text) & ", LANDCOSTWITHTAX = " & val(TXTFIELDS(35).Text) & _
                 ", VATAMT = " & val(TXTFIELDS(55).Text) & ",Cstper=" & val(TXTFIELDS(86).Text) & ",cstamt=" & val(TXTFIELDS(87).Text) & " WHERE " & _
                 "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                 "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "'"
        DB.Execute strSQL
                 
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET Cashdisper = " & val(TXTFIELDS(53).Text) & ", CashDisAmt = " & val(TXTFIELDS(54).Text) & _
                 ", TradeDisPer = " & val(TXTFIELDS(84).Text) & ", TradedisAmt = " & val(TXTFIELDS(85).Text) & _
                 ", CessPer = " & TXTFIELDS(68).Text & ", CessAmt = " & val(TXTFIELDS(63).Text) & _
                 ", BEDPer = " & val(TXTFIELDS(83).Text) & ", BEDAMT = " & val(TXTFIELDS(75).Text) & " WHERE " & _
                 "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                 "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
        DB.Execute strSQL
                 
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET OTHTAXPER = " & val(TXTFIELDS(46).Text) & ", OTHTAXAMT = " & val(TXTFIELDS(51).Text) & _
                 ", LRFRTPER = " & val(TXTFIELDS(37).Text) & ", LRFRTAmt = " & val(TXTFIELDS(38).Text) & _
                 ", RLYFRTPER = " & TXTFIELDS(44).Text & ", RLYFRTAMT = " & val(TXTFIELDS(43).Text) & _
                 ", COMMPER = " & val(TXTFIELDS(59).Text) & ", COMMAMT = " & val(TXTFIELDS(60).Text) & _
                 ", brkcomPer = " & val(TXTFIELDS(81).Text) & " , BRKCOM = " & val(TXTFIELDS(82).Text) & " WHERE " & _
                 "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                 "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"
        DB.Execute strSQL
        
        If optAfter = True Then Sflg = "Y" Else Sflg = "N"
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET LCINTPER = " & val(TXTFIELDS(61).Text) & ", LCINTAMT = " & val(TXTFIELDS(62).Text) & _
                 ", CHARITYAMT = " & val(TXTFIELDS(63).Text) & ", CESSAMT = " & val(TXTFIELDS(65).Text) & ", DAMAGEAMT = " & val(TXTFIELDS(64).Text) & _
                 ", CLEARANCEAMT = " & TXTFIELDS(66).Text & ", OTHERSAMT = " & val(TXTFIELDS(67).Text) & _
                 ", INSPER = " & TXTFIELDS(57).Text & ", INSAMT = " & val(TXTFIELDS(58).Text) & _
                 ", AEDPER = " & TXTFIELDS(72).Text & ", AEDAMT = " & val(TXTFIELDS(71).Text) & _
                 ", SEDPER = " & TXTFIELDS(74).Text & ", SEDAMT = " & val(TXTFIELDS(73).Text) & _
                 ", CUSTOMSDUTYAMT = " & val(TXTFIELDS(69).Text) & ",DiscountFlg = '" & Sflg & "' WHERE " & _
                 "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                 "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"

        DB.Execute strSQL
                
        If opt_c = True Then Sflg = "Y" Else Sflg = "N"
        sCode = IIf(IsNull(TXTFIELDS(42).Text) = True, " ", Trim(TXTFIELDS(42).Text))
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET LANDCOSTWITHTAX = " & val(TXTFIELDS(35).Text) & " ,TOTLANDCOST = " & val(TXTFIELDS(78).Text) & ", " & _
                 "RATEKG= " & val(TXTFIELDS(76).Text) & " ,Billno= '" & Trim(TXTFIELDS(6).Text) & "'," & _
                 " tax_code = '" & IIf(IsNull(TXTFIELDS(83).Text) = True, " ", TXTFIELDS(83).Text) & "', otherTaxableAmt =" & val(TXTFIELDS(41).Text) & "," & _
                 " DutyPer =" & val(TXTFIELDS(109).Text) & ",dutyclaimable ='" & Sflg & "'," & _
                 " aDDTAXCODE='" & sCode & "', ADDTAXPER= " & val(TXTFIELDS(79).Text) & ", ADDTAXAMOUNT=" & val(TXTFIELDS(77).Text) & " WHERE " & _
                 "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                 "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and OPFLG ='N' and CatCd = '" & TXTFIELDS(0) & "' and lotyear='" & Year(yfdate) & "'"

        DB.Execute strSQL
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
         
         Set Rs = New Recordset
         Rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & TXTFIELDS(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
         If Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True Then
             thistc = 0
         Else
             thistc = val(TXTFIELDS(300).Text)
         End If
        '    Set rs1 = New Recordset
        '    rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", db, adOpenStatic
        '    thisgl = rs1(0)
        
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
                
                Narr = "Purchase Bill to " & Trim(TXTFIELDS(26)) & ". Bill No. " & val(TXTFIELDS(304)) & " Dt. " & MaskEdBox1(3).Text
                
        If val(txtDBCRNt.Text) <> 0 Then
                SSTab1.Tab = 0
                If val(txtDBCRNt.Text) > 0 Then msg = "Raise Debit Note? " & val(txtDBCRNt.Text)
                If val(txtDBCRNt.Text) < 0 Then msg = "Raise Credit Note? " & val(txtDBCRNt.Text)
                Wsh = MsgBox(msg, vbQuestion + vbYesNo, head)
                
                If Wsh = vbYes Then
                    DrCrFlag = True
                Else
                    DrCrFlag = False
                End If
        End If
        
        If DrCrFlag = True Then
                If val(txtDBCRNt.Text) > 0 Then        'Raise Debit NOte
                        
                        Set RsDrCr = New Recordset
                        RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Drtc & "' AND Divcode = '" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
                        If RsDrCr.RecordCount > 0 Then
                            Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                        Else
                            Vcno = 1
                        End If
                        
                        DB.Execute "INSERT INTO Fa_Jvhead " & _
                        "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                        Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & TXTFIELDS(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
             
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    Trim(TXTFIELDS(26)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & Left(TXTFIELDS(24).Text, 1) & "'," & val(txtDBCRNt) & ")"
             
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
             
             
                ElseIf val(txtDBCRNt.Text) < 0 Then    'Raise Credit NOte
                
                        Set RsDrCr = New Recordset
                        RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Crtc & "' AND Divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
                        If RsDrCr.RecordCount > 0 Then
                            Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                        Else
                            Vcno = 1
                        End If
                        
                        DB.Execute "INSERT INTO Fa_Jvhead " & _
                        "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                        Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & TXTFIELDS(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
             
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                    Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(TXTFIELDS(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ")"
             
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                    Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    Trim(TXTFIELDS(26)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
                
                End If
            End If
         
         
'       UPDATING DR/CR NOTE DETAILS IN RM_LOT TABLE
         
        DB.Execute "Update Rm_Lot Set " & _
                   "DBNO = " & val(Vcno) & ",DBAMT = " & Abs(val(txtDBCRNt)) & _
                   ",bILLVALUE = " & val(TXTFIELDS(7).Text) & " Where " & _
                   "LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and " & _
                   "LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and  " & _
                   "OPFLG ='N' and " & _
                   "CatCd = '" & TXTFIELDS(0) & "'"
         
         End If
         
         
        Set rstFA = New Recordset
        rstFA.Open "SELECT FAPOSTINGFLG FROM RM_PARAM", DB, adOpenStatic
        If rstFA(0) = "N" Then
       
        thispjno = 0
        Dim prs As Recordset
        Set prs = New Recordset
        thispjno = adoprimaryrs("pjno")
        
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
'        If val(txtFields(109).Text) = 0 Then
'            dblDutyPer = 100
'        Else
            dblDutyPer = val(TXTFIELDS(109).Text)
'        End If
        
                        
'        If EXIST_VAT(txtfields(26).Text) = flase Or VATFLG = "N" Then
        If frs(0) = "Y" Then
            If Not Trim(TXTFIELDS(300).Text) = "" Then
                a11 = "Pur.Bill " & adoprimaryrs("fbillno") & " Dt. " & Format(adoprimaryrs("fbilldt"), "dd-mm-yyyy") & " , " & TXTFIELDS(3).Text & " , " & TXTFIELDS(22).Text & "  " & Combo1.Text & " , " & adoprimaryrs("netwt") & " Kgs."
                a12 = Trim(Text1.Text)
                a13 = a11 & "," & a12
                Set Rs = New Recordset
                Rs.Open "Select CommInBillValue From RM_PARAM ", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoprimaryrs("PJDT"), "yyyy-mm-dd") & "','" & adoprimaryrs("supcd") & "','" & adoprimaryrs("Fbillno") & "','" & Format(adoprimaryrs("Fbilldt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoprimaryrs("taxamt")), 0, adoprimaryrs("taxamt")) & "," & IIf(IsNull(adoprimaryrs("FBillValue")), 0, adoprimaryrs("FBillValue")) & ", " & val(TXTFIELDS(54).Text) & " , " & val(TXTFIELDS(85).Text) & " , " & val(TXTFIELDS(38).Text) & ", " & val(TXTFIELDS(75).Text) & "," & val(TXTFIELDS(73).Text) & "," & val(TXTFIELDS(71).Text) & _
                             "," & val(TXTFIELDS(65).Text) & "," & val(TXTFIELDS(55).Text) & "," & val(TXTFIELDS(87).Text) & "," & val(TXTFIELDS(51).Text) & "," & val(TXTFIELDS(43).Text) & "," & val(TXTFIELDS(58).Text) & "," & val(TXTFIELDS(60).Text) & "," & val(TXTFIELDS(62).Text) & "," & val(TXTFIELDS(70).Text) & "," & val(TXTFIELDS(64).Text) & "," & val(TXTFIELDS(63).Text) & "," & val(TXTFIELDS(66).Text) & "," & (val(TXTFIELDS(67).Text)) & "," & val(TXTFIELDS(69).Text) & "," & val(TXTFIELDS(82).Text) & "," & val(TXTFIELDS(7).Text) & ",6,'" & TXTFIELDS(302).Text & "','" & TXTFIELDS(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(TXTFIELDS(41).Text) & ",'" & Trim(TXTFIELDS(42).Text) & "'," & val(TXTFIELDS(77).Text) & "," & val(txtAdjValue.Text) & ")"
                Else
                    strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt ) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoprimaryrs("PJDT"), "yyyy-mm-dd") & "','" & adoprimaryrs("supcd") & "','" & adoprimaryrs("Fbillno") & "','" & Format(adoprimaryrs("Fbilldt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoprimaryrs("taxamt")), 0, adoprimaryrs("taxamt")) & "," & IIf(IsNull(adoprimaryrs("FBillValue")), 0, adoprimaryrs("FBillValue")) & ", " & val(TXTFIELDS(54).Text) & " , " & val(TXTFIELDS(85).Text) & " , " & val(TXTFIELDS(38).Text) & ", " & val(TXTFIELDS(75).Text) & "," & val(TXTFIELDS(73).Text) & "," & val(TXTFIELDS(71).Text) & _
                             "," & val(TXTFIELDS(65).Text) & "," & val(TXTFIELDS(55).Text) & "," & val(TXTFIELDS(87).Text) & "," & val(TXTFIELDS(51).Text) & "," & val(TXTFIELDS(43).Text) & "," & val(TXTFIELDS(58).Text) & "," & val(TXTFIELDS(62).Text) & "," & val(TXTFIELDS(70).Text) & "," & val(TXTFIELDS(64).Text) & "," & val(TXTFIELDS(63).Text) & "," & val(TXTFIELDS(66).Text) & "," & (val(TXTFIELDS(67).Text)) & "," & val(TXTFIELDS(69).Text) & "," & val(TXTFIELDS(82).Text) & "," & val(TXTFIELDS(7).Text) & ",6,'" & TXTFIELDS(302).Text & "','" & TXTFIELDS(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(TXTFIELDS(41).Text) & ",'" & Trim(TXTFIELDS(42).Text) & "'," & val(TXTFIELDS(77).Text) & "," & val(txtAdjValue.Text) & ")"
                End If
                
                DB.Execute strSQL
                
            End If
            strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(adoprimaryrs("PJDT"), "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & adoprimaryrs("netwt") & "," & IIf(IsNull(adoprimaryrs("landcostwithtax")), 0, adoprimaryrs("landcostwithtax")) & "/" & adoprimaryrs("netwt") & "," & val(TXTFIELDS(7).Text) & ")"           'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
            If Not Trim(TXTFIELDS(300).Text) = "" Then DB.Execute (strSQL)
        End If
        If Not (Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True) Then
            DB.Execute ("UPDATE rm_lot SET pjtc = '" & thistc & "', pjno = " & thispjno & ", pjdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "' WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode ='" & Divcode & "' And catcd = '" & adoprimaryrs("catcd") & "' And lotno = " & adoprimaryrs("lotno") & " And lotdt = '" & Format(adoprimaryrs("lotdt"), "yyyy-mm-dd") & "'")
        End If
'        Else
'             If frs(0) = "Y" Then
'                a11 = "Pur.Bill " & adoPrimaryRS("fbillno") & " Dt. " & Format(adoPrimaryRS("fbilldt"), "dd-mm-yyyy") & " , " & txtfields(3).Text & " , " & txtfields(22).Text & "  " & Combo1.Text & " , " & adoPrimaryRS("netwt") & " Kgs."
'                a12 = Trim(Text1.Text)
'                a13 = a11 & "," & a12
'                ''If Not Trim(Txtfields(300             ).Text) = "" Then DB.Execute ("INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,vat1,VAT2,CENVAT,TAXNAME) VALUES ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoPrimaryRS("PJDT"), "yyyy-mm-dd") & "','" & adoPrimaryRS("supcd") & "','" & adoPrimaryRS("Fbillno") & "','" & Format(adoPrimaryRS("Fbilldt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & "," & IIf(IsNull(adoPrimaryRS("totlandcost")), 0, adoPrimaryRS("totlandcost")) & "," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & ",0,0,'" & Txtfields(83).Text & "')")
'                If Not Trim(txtfields(300).Text) = "" Then
'                Set Rs = New Recordset
'                Rs.Open "Select CommInBillValue From RM_PARAM ", DB, adOpenStatic
'                If Rs(0) = "Y" Then
'                    strSQL = "INSERT INTO FA_PURHD(" & _
'                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,vat1,VAT2,CENVAT,TAXNAME, CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,mODULE,PurchaseType,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt ) " & _
'                             " VALUES " & _
'                             "('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoPrimaryRS("PJDT"), "yyyy-mm-dd") & "','" & adoPrimaryRS("supcd") & "','" & adoPrimaryRS("Fbillno") & "','" & Format(adoPrimaryRS("Fbilldt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & "," & IIf(IsNull(adoPrimaryRS("FBillValue")), 0, adoPrimaryRS("FBillValue")) & "," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & ",0,0,'" & txtfields(83).Text & "', " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
'                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(60).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text)) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) & ")"
'                Else
'                    strSQL = "INSERT INTO FA_PURHD(" & _
'                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,vat1,VAT2,CENVAT,TAXNAME, CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,mODULE,PurchaseType,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt ) " & _
'                             " VALUES " & _
'                             "('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoPrimaryRS("PJDT"), "yyyy-mm-dd") & "','" & adoPrimaryRS("supcd") & "','" & adoPrimaryRS("Fbillno") & "','" & Format(adoPrimaryRS("Fbilldt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & "," & IIf(IsNull(adoPrimaryRS("FBillValue")), 0, adoPrimaryRS("FBillValue")) & "," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & ",0,0,'" & txtfields(83).Text & "', " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
'                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & val(txtfields(58).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text)) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) & ")"
'                End If
'                DB.Execute (strSQL)
'                End If
'               i = 0
'                If Not Trim(txtfields(300).Text) = "" Then DB.Execute ("INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(adoPrimaryRS("PJDT"), "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & adoPrimaryRS("netwt") & "," & IIf(IsNull(adoPrimaryRS("landcostwithtax")), 0, adoPrimaryRS("landcostwithtax")) & "/" & adoPrimaryRS("netwt") & "," & IIf(IsNull(adoPrimaryRS("fBillValue")), 0, adoPrimaryRS("fBillValue")) & ")")
'             End If
'             If Not (Trim(txtfields(300).Text) = "" Or IsNull(txtfields(300).Text) = True) Then
'                     DB.Execute ("UPDATE rm_lot SET pjtc = '" & thistc & "', pjno = " & thispjno & ", pjdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "' WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode ='" & Divcode & "' And catcd = '" & adoPrimaryRS("catcd") & "' And lotno = " & adoPrimaryRS("lotno") & " And lotdt = '" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'")
'             End If
'        End If
        
        
        Set Rs = New Recordset
        Rs.Open "select * from fa_cstrn where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thispjno & " and vocdt='" & Format(adoprimaryrs("PJDT"), "yyyy-mm-dd") & "' and trntype='PU'", DB, adOpenDynamic, adLockOptimistic
                 
        If Not Rs.EOF Then
             DB.Execute "update fa_cstrn set narration1='" & a13 & "' where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thispjno & " and vocdt='" & Format(adoprimaryrs("PJDT"), "yyyy-mm-dd") & "' and trntype='PU'"
        End If
         
        '************************************************** For Rg23a ***********************
             If Combo2.Text = "Yes" Then
                 Call Rg23A
             End If
        '************************************************** For Rg23a ***********************
            DB.Execute "UPDATE RM_LOT SET FAFLAG='Y' Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' and catCd = '" & TXTFIELDS(0) & "'"
        Else
            DB.Execute "UPDATE RM_LOT SET FAFLAG='N' Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' and catCd = '" & TXTFIELDS(0) & "'"
        End If
         
        If opt_c.value = True Then
            DB.Execute "UPDATE RM_LOT SET dutyclaimable = 'Y', LANDCOSTWITHTAX= " & val(TXTFIELDS(35).Text) & " Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' and catCd = '" & TXTFIELDS(0) & "'"
        Else
            DB.Execute "UPDATE RM_LOT SET dutyclaimable = 'N', LANDCOSTWITHTAX= " & val(TXTFIELDS(35).Text) & " Where LOTYEAR='" & Year(yfdate) & "' AND Lotno =" & TXTFIELDS(2).Text & " and LotDt ='" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' and catCd = '" & TXTFIELDS(0) & "'"
        End If
        
        'db.BeginTrans
         DB.CommitTrans
         
         MsgBox "Record(s) Saved", vbInformation, head
         Screen.MousePointer = 0
         Opt = ""
         BUTTON(2).Enabled = True
         BUTTON(10).Enabled = False
    End If

    If Opt = "del" Then
        If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
        DB.BeginTrans
        Set frs = New Recordset
        frs.Open "select fainstal from rm_param", DB
        If frs(0) = "Y" Then
            strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and pjvno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and pjvdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "'"
           DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and pjvno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and pjvdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and pjvno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and pjvdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and vocno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and vocdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "'")
'           DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
            
           Set Rs = New Recordset
           Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and vocno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and vocdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
                
           Do While Not Rs.EOF
               DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoprimaryrs("pjtc")), 0, adoprimaryrs("pjtc")) & "' and vocno = " & IIf(IsNull(adoprimaryrs("pjno")), 0, adoprimaryrs("pjno")) & " and vocdt = '" & Format(adoprimaryrs("pjdt"), "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
               Rs.MoveNext
           Loop
        
        End If
        DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,faflag=null WHERE divcode = '" & Divcode & "'  And catcd = '" & adoprimaryrs("catcd") & "' And lotno = " & adoprimaryrs("lotno") & " And lotdt = '" & Format(adoprimaryrs("lotdt"), "yyyy-mm-dd") & "'")
           '***********************Deletion********************
        Call delrg23c
           '***********************Deletion********************
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
        
        Opt = ""
    End If
    'Return to query mode
    Call Query_mode
    Call NEWFORM1(BUTTON, GSNO)
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
    BUTTON(6).Enabled = True
    BUTTON(12).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(11).Enabled = True
    Call Query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
    TXTFIELDS(7).Locked = True
    DTPicker1.Enabled = False
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
     adoprimaryrs.MoveFirst
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
      StatusBar1.Panels(2).Text = "Records : " & CStr(adoprimaryrs.RecordCount)
      On Error GoTo GoNextError
        
      If Not adoprimaryrs.EOF Then
        adoprimaryrs.MoveNext
        Call bindcontls
        Call disablcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
      End If
      If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'Call NEX(BUTTON)
        'moved off the end so go back
        adoprimaryrs.MoveLast
       ' Call bindcontls
           Beep
      End If
      
     ' show the current record
      Call navi(BUTTON)
      If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
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
     StatusBar1.Panels(2).Text = "Records : " & CStr(adoprimaryrs.RecordCount)
     On Error GoTo GoPrevError
     If Not adoprimaryrs.BOF Then
        adoprimaryrs.MovePrevious
        Call bindcontls
        Call disablcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If

    If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoprimaryrs.MoveFirst
        BUTTON(4).Enabled = True
    End If
    'show the current record
    Call navi(BUTTON)
    If adoprimaryrs.AbsolutePosition = 1 Then
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
     adoprimaryrs.MoveLast
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
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox Err.Description, vbInformation, head
'   Resume
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
        Call Query_mode
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        Call NEWFORM1(BUTTON, GSNO)
        Exit Sub
    End If

Screen.MousePointer = 0
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
Call Query_mode

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
Dim Lrs As New ADODB.Recordset
On Error GoTo Command4_Click_Error

        desc.Caption = "Query"
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,Assvalue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'and OPFLG ='N' and lotno=" & val(txtqry.Text) & " ", DB, adOpenStatic, adLockBatchOptimistic
        If adoprimaryrs.RecordCount = 0 Then
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
Select Case KslList1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    TXTFIELDS(83).Text = KslList1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & TXTFIELDS(83).Text & "'", DB
    TXTFIELDS(56).Text = val(newrs1(0))  'taxper
    TXTFIELDS(55).Text = val(TXTFIELDS(7).Text) * val(TXTFIELDS(56).Text) / 100
    TXTFIELDS(55).SetFocus

Case "Lotno"
If KslList1.Description <> "" Then
 Set adoprimaryrs = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,OtherTaxableAmt,rateunit " & _
                    "FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.Description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockBatchOptimistic
 If adoprimaryrs.RecordCount > 0 Then
 
    If UCase(adoprimaryrs("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoprimaryrs("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        TXTFIELDS(56).Text = IIf(IsNull(adoprimaryrs("vatper")), 0, adoprimaryrs("vatper"))
        TXTFIELDS(55).Text = IIf(IsNull(adoprimaryrs("vatamt")), 0, adoprimaryrs("vatamt"))
    End If
    
    
    TXTFIELDS(25).Locked = True
    TXTFIELDS(0).Locked = True
    TXTFIELDS(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = True
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(82).Text = Format(TXTFIELDS(82).Text, "#0.00")
    TXTFIELDS(23).Locked = False
    TXTFIELDS(24).Locked = False
    TXTFIELDS(25).Locked = False
    TXTFIELDS(46).Text = Format(TXTFIELDS(46).Text, "#0.000")
    TXTFIELDS(47).Text = Format(TXTFIELDS(47).Text, "#0.000")
    TXTFIELDS(48).Text = Format(TXTFIELDS(48).Text, "#0.000")
    TXTFIELDS(49).Text = Format(TXTFIELDS(49).Text, "#0.000")
    TXTFIELDS(50).Text = Format(TXTFIELDS(50).Text, "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(KslList1.Code) & " and c.lotdt='" & Format(KslList1.Description, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        opt_nc.value = True
        If opt_c.value = True Then
            If UCase(delivery) = "S" Then
                
                TXTFIELDS(35).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(60)) + val(TXTFIELDS(62)) + val(TXTFIELDS(70)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(82)) + val(TXTFIELDS(55)) + val(TXTFIELDS(87)) + val(TXTFIELDS(38)) + val(TXTFIELDS(43)) + val(TXTFIELDS(58)) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))) + (val(TXTFIELDS(75)) + (val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) * (100 - val(TXTFIELDS(109))) / 100)), "0.00")
            Else
                TXTFIELDS(35).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(60)) + val(TXTFIELDS(62)) + val(TXTFIELDS(70)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(82)) + val(TXTFIELDS(55)) + val(TXTFIELDS(87)) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))) + (val(TXTFIELDS(75)) + (val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) * (100 - val(TXTFIELDS(109))) / 100)), "0.00")
                                    
            End If
        Else
            If UCase(delivery) = "S" Then
                TXTFIELDS(35).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(60)) + val(TXTFIELDS(62)) + val(TXTFIELDS(70)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(82)) + val(TXTFIELDS(55)) + val(TXTFIELDS(87)) + val(TXTFIELDS(38)) + val(TXTFIELDS(43)) + val(TXTFIELDS(58)) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
   
            Else
                TXTFIELDS(35).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(60)) + val(TXTFIELDS(62)) + val(TXTFIELDS(70)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(82)) + val(TXTFIELDS(55)) + val(TXTFIELDS(87)) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
                                    
            End If
        End If
               
        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & TXTFIELDS(83).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                TXTFIELDS(78).Text = val(TXTFIELDS(35).Text)
            Else
                TXTFIELDS(78).Text = val(TXTFIELDS(35).Text) - val(TXTFIELDS(55).Text)
            End If
        Else
            TXTFIELDS(78).Text = val(TXTFIELDS(35).Text)
        End If
       
        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & TXTFIELDS(42).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                TXTFIELDS(78).Text = val(TXTFIELDS(35).Text)
            Else
                TXTFIELDS(78).Text = val(TXTFIELDS(35).Text) - val(TXTFIELDS(77).Text)
            End If
        Else
            TXTFIELDS(78).Text = val(TXTFIELDS(35).Text)
        End If

       
       
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
         VATFLG = rsP(0)
    End If
        
    If VATFLG = "Y" Then
        If EXIST_VAT(TXTFIELDS(26).Text) = True Then
              TXTFIELDS(78).Text = val(TXTFIELDS(78).Text) - val(TXTFIELDS(55).Text) - val(TXTFIELDS(55).Text)
        End If
    End If
    TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
    TXTFIELDS(82) = Format(TXTFIELDS(82).Text, "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            TXTFIELDS(6).Text = IIf(IsNull(adoprimaryrs("BillnO")), 0, adoprimaryrs("BillNO"))
            TXTFIELDS(7).Text = IIf(IsNull(adoprimaryrs("PJAMT")), 0, adoprimaryrs("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
            TXTFIELDS(7).Text = IIf(IsNull(adoprimaryrs("PJAMT")), 0, adoprimaryrs("PJAMT"))
        End If
   End If

''''''''''''''''''''
   TXTFIELDS(23).SetFocus
    'Frame7.Enabled = False
    If adoprimaryrs("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoprimaryrs("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoprimaryrs("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    If adoprimaryrs("dbamt") <> Null Then
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
    TXTFIELDS(300).Text = KslList1.Code
    TXTFIELDS(301).Text = KslList1.Description
    TXTFIELDS(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    TXTFIELDS(300).Text = KslList1.Code
    TXTFIELDS(301).Text = KslList1.Description
    TXTFIELDS(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    TXTFIELDS(302).Text = KslList1.Code
    TXTFIELDS(303).Text = KslList1.Description
    TXTFIELDS(304).SetFocus
End Select
Frame3.Visible = False

TXTFIELDS(300).tabIndex = 0
TXTFIELDS(300).SetFocus
SSTab2.Tab = 0
opt_nc.value = True
Call fBillValue_Calculation(strDelType)
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

Private Sub DTPicker1_Change()
    If DTPicker1.Enabled = True Then
        MaskEdBox1(2).Mask = Format(DTPicker1.value, "dd/MM/yyyy")
        MaskEdBox1(2).Text = Format(MaskEdBox1(2).Mask, "dd/MM/yyyy")
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
'  TabStrip1.Tabs.Clear
 StatusBar1.Panels(1).Text = STBARmsg
 Set Rs = New Recordset
 Rs.Open "SELECT ADDTAXREQUIRED FROM RM_PARAM", DB, adOpenStatic
 If Rs(0) = "Y" Then
    lblAddTax.Enabled = True
    TXTFIELDS(42).Enabled = True
    TXTFIELDS(79).Enabled = True
    TXTFIELDS(77).Enabled = True
 Else
    lblAddTax.Enabled = False
    TXTFIELDS(42).Enabled = False
    TXTFIELDS(79).Enabled = False
    TXTFIELDS(77).Enabled = False
 End If
 
 
  Call Query_mode
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmPurchaseBill", vbInformation, head

Screen.MousePointer = 0
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
  StatusBar1.Panels(2).Text = "Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
If Not adoprimaryrs.EOF Then
    If adoprimaryrs("bblflg") = "B" Then
      Combo1.Text = "Bale"
   '   txtfields(6).SetFocus
    ElseIf adoprimaryrs("bblflg") = "R" Then
       Combo1.Text = "Borah"
    Else
    Combo1.Text = " "
   '    txtfields(6).SetFocus
    End If
    If adoprimaryrs!discountFlg = "Y" Then optAfter = True Else optBefore = True
    
    If adoprimaryrs("dutyclaimable") = "Y" Then
        opt_c.value = True
    Else
        opt_nc.value = True
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoprimaryrs("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    MaskEdBox1(1).Text = adoprimaryrs("lotdt")
    
 TXTFIELDS(78).Text = adoprimaryrs("TOTLANDCOST")
TXTFIELDS(86) = Format(val(TXTFIELDS(86).Text), "#0.00")
 TXTFIELDS(87) = Format(val(TXTFIELDS(87).Text), "#0.00")
 TXTFIELDS(63) = Format(val(TXTFIELDS(63).Text), "#0.00")
 TXTFIELDS(74) = Format(val(TXTFIELDS(74).Text), "#0.00")
 TXTFIELDS(72) = Format(val(TXTFIELDS(72).Text), "#0.00")
 TXTFIELDS(41) = Format(val(TXTFIELDS(41).Text), "#0.00")
 TXTFIELDS(23) = Format(val(TXTFIELDS(23).Text), "#0.000")
 TXTFIELDS(24) = Format(val(TXTFIELDS(24).Text), "#0.000")
 TXTFIELDS(25) = Format(val(TXTFIELDS(25).Text), "#0.000")
 TXTFIELDS(4) = Format(val(TXTFIELDS(4).Text), "#0.00")




'''Txtfields(78).Text = adoPrimaryRS("TOTLANDCOST") - adoPrimaryRS("LDGULG")

    
If IsNull(adoprimaryrs("arrdt")) = False Or adoprimaryrs("arrdt") = "" Then
    MaskEdBox1(0).Mask = Format(adoprimaryrs("arrdt"), "dd/mm/yyyy")
    MaskEdBox1(0).Text = MaskEdBox1(0).Mask
End If
If IsNull(adoprimaryrs("lotdt")) = False Or adoprimaryrs("lotdt") = "" Then
    MaskEdBox1(1).Mask = Format(adoprimaryrs("lotdt"), "dd/mm/yyyy")
    MaskEdBox1(1).Text = MaskEdBox1(1).Mask
End If
If IsNull(adoprimaryrs("billdt")) = False Then
    MaskEdBox1(2).Mask = Format(adoprimaryrs("billdt"), "dd/mm/yyyy")
    MaskEdBox1(2).Text = MaskEdBox1(2).Mask
Else
    MaskEdBox1(2).Text = "__/__/____"
End If

If IsNull(adoprimaryrs("pjdt")) = False Then
    MaskEdBox1(3).Mask = Format(adoprimaryrs("pjdt"), "dd/mm/yyyy")
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
Else
    MaskEdBox1(3).Text = "__/__/____"
End If



TXTFIELDS(7).Text = Format(IIf(IsNull(adoprimaryrs("PJAMT")), "", adoprimaryrs("PJAMT")), "#0.00")
If Trim(TXTFIELDS(300).Text) <> "" Then Call ReturnTransType
If Trim(TXTFIELDS(301).Text) <> "" Then Call ReturnProcessType
'txtfields(83).Text = IIf(IsNull(adoPrimaryRS("TAX_CODE")), "", adoPrimaryRS("TAX_CODE"))
End If
End If

End Sub
'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoprimaryrs
Next
MaskEdBox1(0).DataField = "arrdt"
MaskEdBox1(1).DataField = "lotdt"
MaskEdBox1(2).DataField = "billdt"
TXTFIELDS(39).Text = IIf(IsNull(adoprimaryrs("form_type")) = False, adoprimaryrs("form_type"), "")
Set txtAdjValue.DataSource = adoprimaryrs
Set txtDBCRNt.DataSource = adoprimaryrs
Set MaskEdBox1(1).DataSource = adoprimaryrs

DTPicker2.maxdate = pdate
DTPicker2.MinDate = yfdate
If IsNull(adoprimaryrs("arrdt")) = False Or adoprimaryrs("arrdt") = "" Then
    MaskEdBox1(0).Mask = Format(adoprimaryrs("arrdt"), "dd/mm/yyyy")
    MaskEdBox1(0).Text = MaskEdBox1(0).Mask
End If
If IsNull(adoprimaryrs("lotdt")) = False Or adoprimaryrs("lotdt") = "" Then
    MaskEdBox1(1).Mask = Format(adoprimaryrs("lotdt"), "dd/mm/yyyy")
    MaskEdBox1(1).Text = MaskEdBox1(1).Mask
End If
If IsNull(adoprimaryrs("billdt")) = False Then
    MaskEdBox1(2).Mask = Format(adoprimaryrs("billdt"), "dd/mm/yyyy")
    MaskEdBox1(2).Text = MaskEdBox1(2).Mask
Else
    MaskEdBox1(2).Text = "__/__/____"
End If


If IsNull(adoprimaryrs("pjdt")) = False Then
    MaskEdBox1(3).Mask = Format(adoprimaryrs("pjdt"), "dd/mm/yyyy")
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
If Opt = "add" Then MaskEdBox1(3).Text = "__/__/____"
Option1.Enabled = False
Option2.Enabled = False
End Sub
Public Sub ENABLCONTLS()
On Error Resume Next
Dim i As Integer
For i = 3 To 21
    TXTFIELDS(i).Locked = False
Next
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
txtDBCRNt.Locked = False
TXTFIELDS(39).Locked = False
TXTFIELDS(56).Locked = True
'Txtfields(55).Locked = True
TXTFIELDS(34).Locked = True
'txtFields(35).Locked = True
End Sub
Public Sub disablcontls()
On Error Resume Next
Dim i As Integer
For i = 0 To 30
TXTFIELDS(i).Locked = True
Next
txtDBCRNt.Locked = True
TXTFIELDS(39).Locked = True
'txtAdjValue.Locked = True
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
Option1.Enabled = False
Option2.Enabled = False
DTPicker2.Enabled = False
Combo1.Enabled = False
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If MaskEdBox1(3).Text = "__/__/____" Then
    MaskEdBox1(3).Text = pdate
End If

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
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
        'commented on 21/04/2006 as per user's requirements
'        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
     ElseIf Not (CDate(MaskEdBox1(2).Text) <= pdate) Then
        MsgBox "Bill Date should fall with in the  processing Date", vbInformation, head
        MaskEdBox1(2).Text = pdate
    End If
    
End If
Case 3
    If (MaskEdBox1(3).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(3).Text)) Then
            MsgBox ("Please enter a valid date"), vbInformation, head
            MaskEdBox1(3).Mask = pdate
            MaskEdBox1(3).Text = MaskEdBox1(3).Mask
            MaskEdBox1(3).SetFocus
        Else
            MaskEdBox1(3).Mask = pdate
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
        TXTFIELDS(109).Enabled = False
        TXTFIELDS(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        TXTFIELDS(109).Enabled = True
        TXTFIELDS(109).Text = "100.00"
    End If
End Sub

Private Sub opt_nc_Click()
    If opt_nc.value = True Then
        lblDutyPer.Enabled = False
        TXTFIELDS(109).Enabled = False
        TXTFIELDS(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        TXTFIELDS(109).Enabled = True
        TXTFIELDS(109).Text = "100.00"
    End If
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
Call ToNumberAssign(TXTFIELDS(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub txtAdjValue_LostFocus()
    txtAdjValue.BackColor = &HFFFFFF
    Call LANDEDCOST(IIf(IsNull(adoprimaryrs("PJAMT")), 0, adoprimaryrs("PJAMT")))
End Sub

Private Sub txtAdjValue_Validate(Cancel As Boolean)
On Error GoTo txtAdjValue_Validate_Error

    txtAdjValue.Text = Format(txtAdjValue.Text, "0.00")
'    Txtfields(78).Text = Format(Val(txtfields(7).Text) + Val(txtAdjValue.Text), "0.00")

Exit Sub
txtAdjValue_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtAdjValue_Validate of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub txtDBCRNt_Change()
    txtDBCRNt.Text = Format(val(txtDBCRNt.Text), "0.00")
End Sub

Private Sub txtDBCRNt_KeyPress(KeyAscii As Integer)
    Call ToNumberAssign(TXTFIELDS(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
If Opt = "" Then
         Select Case Index
         Case 86, 87, 63, 41, 7, 47, 4
             TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.00")
         Case 9, 48, 49, 50, 8
             TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.000")
         End Select
     
     End If
     

Select Case Index
Case 81
    If val(TXTFIELDS(Index).Text) = 0 Then TXTFIELDS(82).Text = 0
Case 7, 47, 78, 55, 35
    dblTotalLC = val(TXTFIELDS(7).Text)

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

Dim rsPara As New Recordset
                            
rsPara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic

If (rsPara.BOF And rsPara.EOF) = False Then

    If rsPara("InsCalAssvalflg") = "N" Then
        TXTFIELDS(58).Text = ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) * val(TXTFIELDS(57).Text) / 100)
    Else
        TXTFIELDS(58).Text = val(TXTFIELDS(7).Text) * val((TXTFIELDS(57).Text) / 100)
    End If

End If

rsPara.Close
Set rsPara = Nothing

Case 37
     TXTFIELDS(38).Text = ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) * val(TXTFIELDS(37).Text) / 100)
     
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
        
        
    If EXIST_VAT(TXTFIELDS(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & TXTFIELDS(83).Text & "'", DB, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            TXTFIELDS(34).Text = (val(TXTFIELDS(7).Text) * val(newrs1("itcper")) / 100)
        Else
            TXTFIELDS(34).Text = 0  'vatamt
        End If
    Else
            TXTFIELDS(34).Text = 0
    End If
    
Case 5 'TAXPER
    'taxamt
    If val(TXTFIELDS(55).Text) < 0 Then TXTFIELDS(55).Text = ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) * val(TXTFIELDS(56).Text) / 100)
    'taxamt                 'pjamt
    
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
    End If
   
    If EXIST_VAT(TXTFIELDS(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & TXTFIELDS(83).Text & "'", DB, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            TXTFIELDS(34).Text = (val(TXTFIELDS(7).Text) * val(newrs1("itcper")) / 100)
        Else 'VAT AMT                       'pjamt
            TXTFIELDS(34).Text = 0
        End If
    Else
            TXTFIELDS(34).Text = 0
    End If

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
    Rs.Open "select * from po_formtype b where typecode='" & TXTFIELDS(39).Text & "'", DB, adOpenStatic
    If Rs.RecordCount <> 0 Then
        TXTFIELDS(40).Text = Rs("Description")
    Else
        TXTFIELDS(40).Text = ""
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
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   End If
   Rs.Close
Case 27
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   End If
   Rs.Close
Case 28
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(28).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   End If
   Rs.Close
'Case 7, 47, 78, 55, 35
'    dblTotalLC = val(txtFields(7).Text)
 End Select

End If


Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
'    Set rstFA = New Recordset
'    rstFA.Open "SELECT FAPOSTINGFLG FROM RM_PARAM", DB, adOpenStatic
'    If rstFA(0) = "N" Then
    If Index = 304 Then
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        TXTFIELDS(304).Text = Rs(0)
    End If
'    Else
'        Txtfields(304).Text = ""
'    End If
End If
    TXTFIELDS(Index).BackColor = &HC0FFC0

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
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
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
'    Case 304
'        Call ToAlphaNumber(txtFields(Index), 15, KeyAscii)
    Case 6
        Call ToAlphaNumber(TXTFIELDS(Index), 15, KeyAscii)
    Case 57
        Call ToNumberAssign(TXTFIELDS(Index), 3, KeyAscii, 3, 3)
    Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 59, 61
        Call ToNumberAssign(TXTFIELDS(Index), 3, KeyAscii, 3, 2)
    Case 54, 85, 38, 75, 65, 73, 71, 55, 87, 51, 43, 58, 60, 62, 70, 63, 64, 69, 66, 41, 67, 82, 78, 35, 7, 4, 77
        Call ToNumberAssign(TXTFIELDS(Index), 6, KeyAscii, 6, 2)
    Case 47
        Call ToNumberAssign(TXTFIELDS(Index), 9, KeyAscii, 9, 2)
    Case 9, 8, 48, 49, 50
        Call ToNumberAssign(TXTFIELDS(Index), 9, KeyAscii, 9, 3)
    Case 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 19
        If KeyAscii = 45 Then KeyAscii = 0
        tonum TXTFIELDS(Index), 6, KeyAscii
    Case 46, 24, 25, 23
        If KeyAscii = 45 Then KeyAscii = 0
        tonum TXTFIELDS(Index), 15, KeyAscii
    Case 33, 32, 25
        KeyAscii = 0
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then

Call fBillValue(strDelType)
Call DRCRAmt
Select Case Index
Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 57, 59, 61
    If val(TXTFIELDS(Index).Text) > 100 Then
        MsgBox "Please enter Percentage below 100", vbInformation, head
        TXTFIELDS(Index).SetFocus
        Exit Sub
    End If
    If Index <> 57 Then
     TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.00")
    Else
     TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.000")
     End If
Case 47
   If val(TXTFIELDS(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
            SSTab2.Tab = 1
            TXTFIELDS(53).SetFocus
        End If
    End If
'    Call DRCRAmt

Case 76
      TXTFIELDS(76).Text = Format(Round(val(TXTFIELDS(78)) / val(TXTFIELDS(25)), 4), "0.0000")
      If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
Case 39
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM po_formtype WHERE typecode='" & TXTFIELDS(39).Text & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
         LookUp.clear = True
         LookUp.query = " select typecode""Form Code"",description""Form Description"" from PO_FormType"
         LookUp.Caption = "Form Listing"
         LookUp.DefCol = "Form Code"
         LookUp.ALIGN = "1200,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                TXTFIELDS(39).Text = LookUp.Fields(0)
                TXTFIELDS(40).Text = LookUp.Fields(1)
                LookUp.clear = True
        
         Else
                TXTFIELDS(39).Text = ""
                TXTFIELDS(40).Text = ""
         End If
     Else
        TXTFIELDS(40).Text = Rs("description")
     End If
    If Trim(TXTFIELDS(39).Text) = "" Then
        MsgBox "Please enter the Form Type", vbInformation, head
        TXTFIELDS(39).SetFocus
        Exit Sub
    End If

Case 54, 85, 38, 75, 73, 71, 65, 55, 77, 87, 51, 43, 58, 60, 62, 63, 70, 64, 66, 67, 69, 82, 78, 76, 35, 47, 7, 41, 81
Dim dblLandedCost As Double
        Call LANDEDCOST(IIf(IsNull(adoprimaryrs("PJAMT")), 0, adoprimaryrs("PJAMT")))
      TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
      TXTFIELDS(82) = Format(TXTFIELDS(82).Text, "#0.00")
      TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.00")
 Case 4
     TXTFIELDS(4) = Format(val(TXTFIELDS(4).Text), "#0.00")
 Case 18
     TXTFIELDS(18) = Format(val(TXTFIELDS(Index).Text), "#0.00")
 Case 46
     TXTFIELDS(46) = Format(val(TXTFIELDS(Index).Text), "#0.000")
 Case 47
     TXTFIELDS(47) = Format(val(TXTFIELDS(Index).Text), "#0.00")
 Case 86
     TXTFIELDS(86) = Format(val(TXTFIELDS(Index).Text), "#0.00")
 Case 87
     TXTFIELDS(87) = Format(val(TXTFIELDS(Index).Text), "#0.00")
 Case 63
     TXTFIELDS(63) = Format(val(TXTFIELDS(63).Text), "#0.00")
 Case 48
     TXTFIELDS(48) = Format(val(TXTFIELDS(48).Text), "#0.000")
 Case 49
     TXTFIELDS(49) = Format(val(TXTFIELDS(49).Text), "#0.000")
'     Txtfields(50) = val(Txtfields(48).Text) - val(Txtfields(49).Text)
 Case 50
'     Txtfields(50) = Format(val(Txtfields(48).Text) - val(Txtfields(49).Text), "#0.000")
 Case 9, 8, 48, 49
     TXTFIELDS(Index).Text = Format(val(TXTFIELDS(Index).Text), "0.000")
 Case 109
     If val(TXTFIELDS(109).Text) > 100 Then
          MsgBox "Please enter Duty Claimable %, Below or Equal to 100", vbInformation, head
          TXTFIELDS(109).SetFocus
          Exit Sub
     End If
Case 47, 54, 85, 38, 75, 65, 73, 71, 55, 77, 87, 51, 43, 58, 60, 62, 70, 63, 64, 66, 41, 67, 82, 78, 35, 7, 4
     TXTFIELDS(Index).Text = Format(TXTFIELDS(Index).Text, "0.00")
     End Select
End If
     TXTFIELDS(86) = Format(val(TXTFIELDS(86).Text), "#0.00")
     TXTFIELDS(87) = Format(val(TXTFIELDS(87).Text), "#0.00")
     TXTFIELDS(63) = Format(val(TXTFIELDS(63).Text), "#0.00")
     TXTFIELDS(9).Text = Format(val(TXTFIELDS(9).Text), "#0.000")
     TXTFIELDS(Index).BackColor = &HFFFFFF
Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form frmPurchaseBill", vbInformation, head
End Sub
Public Sub Query_mode()
On Error GoTo query_mode_Error

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
  Set adoprimaryrs = New Recordset
  adoprimaryrs.Open "SELECT TOP 2 A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT," & _
                    " FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,AEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM," & _
                    " SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST," & _
                    " case when weightflg='M' then GRSWGT else pgrswt end as grswt,case when weightflg ='M' then A.TAREWT else ptarewt end as tarewt,case when weightflg='M' then A.NETWT else pnetwt end as netwt,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PTYPE,PJNO,PJDT,PJTC,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,AdjValue,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,cashdisper,cashdisamt," & _
                    " tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,billno,billdt,Assvalue,form_type,dutyclaimable,dutyper," & _
                    " OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,pnetwt,isnull(brkcomPer,0) as brkcomPer FROM RM_LOT A " & _
                    " WHERE ISNULL(PJNO,0)<>0 AND A.DIVCODE = '" & Divcode & "' and  A.PJDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' Order by A.lotNO DEsc", DB, adOpenStatic, adLockBatchOptimistic
    If Not adoprimaryrs.EOF Then
      adoprimaryrs.MoveLast
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     Call disablcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
    Call disablcontls
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(82).Text = Format(TXTFIELDS(82).Text, "#0.00")
    'MODIFIED
    TXTFIELDS(46).Text = Format(TXTFIELDS(46).Text, "#0.000")
    TXTFIELDS(47).Text = Format(TXTFIELDS(47).Text, "#0.00")
    TXTFIELDS(48).Text = Format(TXTFIELDS(48).Text, "#0.000")
    TXTFIELDS(49).Text = Format(TXTFIELDS(49).Text, "#0.000")
    TXTFIELDS(50).Text = Format(TXTFIELDS(50).Text, "#0.000")
    If Trim(TXTFIELDS(300).Text) <> "" Then Call ReturnTransType
    If Trim(TXTFIELDS(301).Text) <> "" Then Call ReturnProcessType
    'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
  
  End If
  Call NEWFORM1(BUTTON, GSNO)
  TXTFIELDS(7).Locked = True
DTPicker1.Enabled = False
  SSTab2.Tab = 0
End If


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

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)


On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 41
        Call CSTTaxCalc
        Call OtherTaxCal
        Call TaxCalc
        Call AddTaxCalc
        Exit Sub
    Case 88
        If val(TXTFIELDS(75).Text) = 0 Then
            If UCase(delivery) = "F" Then
                TXTFIELDS(75).Text = Round(val(TXTFIELDS(88).Text) * (val(adoprimaryrs("pjamt")) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text))) / 100, 2)
            Else
                TXTFIELDS(75).Text = Round(val(TXTFIELDS(88).Text) * (val(adoprimaryrs("pjamt")) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text))) / 100, 2)
            End If
        End If
        Exit Sub

    Case 74
         ''ed cess amt
          TXTFIELDS(73).Text = Round(val(TXTFIELDS(74).Text) * val(TXTFIELDS(75).Text) / 100, 2)
          Exit Sub
    
    Case 72
          ''Hscess
           TXTFIELDS(71).Text = Round(val(TXTFIELDS(72).Text) * val(TXTFIELDS(75).Text) / 100, 2)
           Exit Sub
    
    Case 68
            ''cessamt=cessper* val/100
            If UCase(delivery) = "F" Then
                TXTFIELDS(65).Text = Round(val(TXTFIELDS(68).Text) * (val(adoprimaryrs("pjamt")) - val(TXTFIELDS(54).Text) + val(TXTFIELDS(13).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text)) / 100, 2)
            Else
            TXTFIELDS(65).Text = Round(val(TXTFIELDS(68).Text) * (val(adoprimaryrs("pjamt")) - val(TXTFIELDS(54).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text)) / 100, 2)
            End If
            Exit Sub
    
    Case 49
'            Txtfields(50).Text = val(Txtfields(49).Text) * val(adoprimaryrs("pjamt")) / 100
            Exit Sub
    Case 83
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & TXTFIELDS(83).Text & "'", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
                 LookUp.clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                        TXTFIELDS(83).Text = LookUp.Fields(0)
                        TXTFIELDS(56).Text = LookUp.Fields(2)
                        LookUp.clear = True
                
                 Else
                        TXTFIELDS(56).Text = ""
                        TXTFIELDS(55).Text = ""
                        TXTFIELDS(83).Text = ""
            
                 End If
             Else
                TXTFIELDS(56).Text = Rs("ST_PER")
             End If
             
            Call TaxCalc
            Exit Sub
    Case 42
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & TXTFIELDS(42).Text & "'", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
                 LookUp.clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                        TXTFIELDS(42).Text = LookUp.Fields(0)
                        TXTFIELDS(79).Text = LookUp.Fields(2)
                        LookUp.clear = True
                
                 Else
                        TXTFIELDS(79).Text = ""
                        TXTFIELDS(77).Text = ""
                        TXTFIELDS(42).Text = ""
            
                 End If
             Else
                TXTFIELDS(79).Text = Rs("ST_PER")
             End If
             '''''''''''''''''''''''''''''''''''''''''Add by Vinoth As Per Kores Requiremant
            Call AddTaxCalc
            Exit Sub

    Case 53
             ''CASH discount = disper* val /100
            If val(TXTFIELDS(53).Text) <> 0 Then
             'txtFields(54).Text = val(txtFields(53).Text) * val(txtFields(25).Text)
             TXTFIELDS(54).Text = val(TXTFIELDS(53).Text) * val(TXTFIELDS(7).Text) / 100
            End If
            Exit Sub
    Case 84
            ''Trade discount = disper* val /100
            If val(TXTFIELDS(84).Text) <> 0 Then
                'txtFields(85).Text = val(txtFields(84).Text) * val(txtFields(25).Text)
                TXTFIELDS(85).Text = val(TXTFIELDS(84).Text) * val(TXTFIELDS(7).Text) / 100
            End If
            Exit Sub
    
        
    Case 52
            Call CSTTaxCalc
            Exit Sub
    Case 86
            Call OtherTaxCal
            Exit Sub

    Case 37
            ''lorry frt
            If val(TXTFIELDS(37).Text) <> 0 Then
                'txtFields(13).Text = val(txtFields(37).Text) * val(txtFields(25).Text)
                TXTFIELDS(13).Text = val(TXTFIELDS(37).Text) * val(TXTFIELDS(7).Text) / 100
            End If
            Exit Sub
    
    Case 44
            If val(TXTFIELDS(44).Text) <> 0 Then
             TXTFIELDS(43).Text = val(TXTFIELDS(44).Text) * val(adoprimaryrs("pjamt")) / 100
            End If
            Exit Sub
    
    Case 59, 60
    
            If val(TXTFIELDS(59).Text) <> 0 Then
             TXTFIELDS(60).Text = val(TXTFIELDS(59).Text) * val(adoprimaryrs("pjamt")) / 100
            End If
            Call TaxCalc
            Call AddTaxCalc
            Exit Sub
    Case 61
            If val(TXTFIELDS(61).Text) <> 0 Then
             TXTFIELDS(62).Text = val(TXTFIELDS(61).Text) * val(adoprimaryrs("pjamt")) / 100
            End If
            Exit Sub

    Case 300
        If Opt = "add" Or Opt = "mod" Then
   
            Set rsa = New Recordset
            strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(TXTFIELDS(300).Text) & "'"
            rsa.Open strSQL, DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
                    LookUp.DefCol = "Transaction Type Head"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Transaction Type Listing"
                    LookUp.Show vbModal
                    
                    If LookUp.Cancel = False Then
                      TXTFIELDS(300).Text = LookUp.Fields(0)
                      TXTFIELDS(301).Text = LookUp.Fields(1)
                      LookUp.clear = True
                      
                      Set Rs = New Recordset
                      Rs.Open "select * from RM_param_FA where TCcode= " & val(TXTFIELDS(300).Text) & " AND Divcode ='" & Divcode & "'", DB, adOpenStatic
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
                            Call Query_mode
                            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
                            Screen.MousePointer = 0
                            Opt = ""
                            BUTTON(2).Enabled = True
                            Call NEWFORM1(BUTTON, GSNO)
                            Exit Sub
   
                      End If
                      TXTFIELDS(302).SetFocus
                    Else
                       SSTab1.Visible = True
                       TXTFIELDS(300).SetFocus
                    End If
            Else
                TXTFIELDS(301).Text = rsa("tchead")
            End If
        End If

    Case 302
        If Opt = "add" Or Opt = "mod" Then
            
                Set rsa = New Recordset
                rsa.Open "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(TXTFIELDS(302).Text) & "'", DB, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype"
                    LookUp.DefCol = "Purchase Type Description"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Purchase Type Listing"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                            TXTFIELDS(302).Text = LookUp.Fields(0)
                            TXTFIELDS(303).Text = LookUp.Fields(1)
                            LookUp.clear = True
                            TXTFIELDS(88).SetFocus
                     Else
                            TXTFIELDS(302).SetFocus
                            End If
                     Else
                            TXTFIELDS(303).Text = rsa(1)
         
                     End If
         
         End If
    End Select
End If

On Error Resume Next
If Opt = "" Or Opt = " " Then
    Select Case Index
    Case 23
        TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    Case 24
        TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    Case 81
        TXTFIELDS(81).Text = Format(TXTFIELDS(81).Text, "#0.000")
    Case 82
        TXTFIELDS(82).Text = Format(TXTFIELDS(82).Text, "#0.000")
    Case 25
        TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    Case 18
        TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    Case 5
        TXTFIELDS(5).Text = Format(TXTFIELDS(5).Text, "#0.000")
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
    If val(TXTFIELDS(9).Text) = 0 Then
        MsgBox "Bill weight must be greater than zero", vbInformation, head
        TXTFIELDS(9).Text = 0#
        Cancel = True
        Exit Sub
    End If
Case 15
    TXTFIELDS(78).Text = val(TXTFIELDS(78).Text) '- Val(txtfields(15).Text)
    'Txtfields(7).Text = Val(Txtfields(78).Text) - Val(Txtfields(15).Text)
Case 7
    If val(TXTFIELDS(7).Text) = 0 Then
        MsgBox "Bill amount must be greater than zero", vbInformation, head
        TXTFIELDS(7).Text = 0#
        TXTFIELDS(7).SetFocus
        Cancel = True
        Exit Sub
    Else
        TXTFIELDS(7).Text = Format(TXTFIELDS(7).Text, "0.00")
    End If
Case 47
   If val(TXTFIELDS(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
            SSTab2.Tab = 1
            TXTFIELDS(53).SetFocus
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
Rs.Open "Select * from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "' and dutydocno is  not Null", DB, adOpenStatic
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
    " ('" & Divcode & "','" & rs3(0) & "','" & doc_no & "','" & Format(pdate, "yyyy-mm-dd") & "','O','" & TXTFIELDS(6).Text & "','" & TXTFIELDS(26).Text & "', " & val(TXTFIELDS(75).Text) & "," & val(TXTFIELDS(71).Text) & ",'" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
    DB.Execute "Update rm_lot set dutydocno='" & doc_no & "' where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "'"
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
    If (Rs.RecordCount > 0) And Not (Trim(adoprimaryrs("dutydocno")) = "") Then
        DB.Execute "Delete from ig_dutytrn where divcode='" & Divcode & "' and duty_code='" & Rs(0) & "' and DOC_NO='" & adoprimaryrs("dutydocno") & "'"
        DB.Execute "Update rm_lot set dutydocno=Null,rg23a=Null where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "'"
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
Rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,fa_slmas e,rm_area f where  a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno " & _
            "and  a.catcd=c.catcd and f.areacode=a.areacd and a.supcd=d.slcode and a.brkcd*=e.slcode and a.divcode='" & Divcode & "' and  a.arrno = '" & TXTFIELDS(1) & "' AND a.lotno='" & TXTFIELDS(2) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic


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

Private Sub fBillValue_Calculation(DeliveryType As String)
On Error GoTo fBillValue_Calculation_Error

    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    End If

Exit Sub
fBillValue_Calculation_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fBillValue_Calculation of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Function fBillValue(DeliveryType As String) As Double
    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        TXTFIELDS(47).Text = Format(IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    End If
    fBillValue = val(TXTFIELDS(47).Text)
End Function


Private Sub DRCRAmt()

On Error GoTo DRCRAmt_Error
    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) + val(TXTFIELDS(60).Text), 2), "0.00")
        Else
             txtDBCRNt.Text = Format(0, "0.00")
        End If
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
        Else
             txtDBCRNt.Text = Format(0, "0.00")
        End If
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) + val(TXTFIELDS(60).Text), 2), "0.00")
        Else
             txtDBCRNt.Text = Format(0, "0.00")
        End If
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
        Else
             txtDBCRNt.Text = Format(0, "0.00")
        End If
    End If
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
KslList1.listfield1 = "Lotno"
KslList1.Description = lotdate
KslList1.listfield1 = "Lotno"

Select Case KslList1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    TXTFIELDS(83).Text = KslList1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & TXTFIELDS(83).Text & "'", DB
    TXTFIELDS(56).Text = val(newrs1(0))  'taxper
    TXTFIELDS(55).Text = val(TXTFIELDS(7).Text) * val(TXTFIELDS(56).Text) / 100
    TXTFIELDS(55).SetFocus

Case "Lotno"
If KslList1.Description <> "" Then
 Set adoprimaryrs = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,CASE WHEN WEIGHTfLG='M' THEN GRSWGT ELSE PGRSWT END AS GRSWT,CASE WHEN WEIGHTFLG='M' THEN TAREWT ELSE PTAREWT END AS TAREWT,CASE WHEN WEIGHTFLG='M' THEN NETWT ELSE PNETWT END AS NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,Dutyper,DiscountFlg, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,PNETWT" & _
                    " ,isnull(brkcomPer,0) as brkcomPer FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(lotdate, "yyyy-mm-dd") & "' and lotno=" & Trim(lotno) & " and OPFLG ='N' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockOptimistic
 If adoprimaryrs.RecordCount > 0 Then
 
    If UCase(adoprimaryrs("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoprimaryrs("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        TXTFIELDS(56).Text = IIf(IsNull(adoprimaryrs("vatper")), 0, adoprimaryrs("vatper"))
        TXTFIELDS(55).Text = IIf(IsNull(adoprimaryrs("vatamt")), 0, adoprimaryrs("vatamt"))
    End If
    
    TXTFIELDS(109).Text = IIf(IsNull(adoprimaryrs!DutyPer), "0.00", Format(adoprimaryrs!DutyPer, "0.00"))

    
    If adoprimaryrs!dutyclaimable = "Y" Then
        opt_c.value = True
        TXTFIELDS(109).Enabled = True
        TXTFIELDS(109).Text = "100.00"
    Else
        opt_nc.value = True
        TXTFIELDS(109).Enabled = False
        TXTFIELDS(109).Text = "0.00"
    End If
    If adoprimaryrs!discountFlg = "Y" Then opt_c.value = True Else opt_nc.value = True
    
    TXTFIELDS(25).Locked = True
    TXTFIELDS(0).Locked = True
    TXTFIELDS(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = True
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(82).Text = Format(TXTFIELDS(82).Text, "#0.00")
    TXTFIELDS(23).Locked = False
    TXTFIELDS(24).Locked = False
    TXTFIELDS(25).Locked = False
    TXTFIELDS(46).Text = Format(TXTFIELDS(46).Text, "#0.000")
    TXTFIELDS(47).Text = Format(TXTFIELDS(47).Text, "#0.000")
    TXTFIELDS(48).Text = Format(val(TXTFIELDS(48).Text), "#0.000")
    TXTFIELDS(49).Text = Format(val(TXTFIELDS(49).Text), "#0.000")
    TXTFIELDS(50).Text = Format(val(TXTFIELDS(50).Text), "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno,isnull(a.Commper,0) as Commper,isnull(c.brkcom,0) as brkcom from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.arrdate=c.arrdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(lotno) & " and c.lotdt='" & Format(lotdate, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        
        If adoprimaryrs!dutyclaimable = "Y" Then opt_c.value = True Else opt_nc.value = True
        
        If adoprimaryrs!dutyclaimable = "Y" Then lblDutyPer.Enabled = True: TXTFIELDS(109).Enabled = True
        dblLandedCost = 0
        dblDuty = 0
        s = 0
        LANDEDCOST (IIf(IsNull(adoprimaryrs("pjamt")), 0, adoprimaryrs("pjamt")))

    TXTFIELDS(78).Text = Format(TXTFIELDS(78).Text, "#0.00")
    TXTFIELDS(82) = Format(TXTFIELDS(82).Text, "#0.00")
    
    TXTFIELDS(81).Text = Format(Lrs("Commper"), "#0.00")
    TXTFIELDS(82).Text = Format(Lrs("brkcom"), "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            TXTFIELDS(6).Text = IIf(IsNull(adoprimaryrs("BillnO")), 0, adoprimaryrs("BillNO"))
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))
        End If
   End If
    TXTFIELDS(7).Text = IIf(IsNull(adoprimaryrs("PJAMT")), 0, adoprimaryrs("PJAMT"))
    If val(TXTFIELDS(81).Text) > 0 Then
        TXTFIELDS(82) = Format(val(TXTFIELDS(7).Text) * val(TXTFIELDS(81).Text) / 100, "#0.00")
    End If
''''''''''''''''''''
   TXTFIELDS(23).SetFocus
    'Frame7.Enabled = False
    If adoprimaryrs("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoprimaryrs("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoprimaryrs("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    If adoprimaryrs("dbamt") <> Null Then
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
    TXTFIELDS(300).Text = KslList1.Code
    TXTFIELDS(301).Text = KslList1.Description
    TXTFIELDS(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    TXTFIELDS(300).Text = KslList1.Code
    TXTFIELDS(301).Text = KslList1.Description
    TXTFIELDS(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    TXTFIELDS(302).Text = KslList1.Code
    TXTFIELDS(303).Text = KslList1.Description
    TXTFIELDS(304).SetFocus
End Select
Frame3.Visible = False

TXTFIELDS(300).tabIndex = 0
TXTFIELDS(300).SetFocus
SSTab2.Tab = 0
Call fBillValue_Calculation(strDelType)





If Opt = "del" Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus

Exit Function
BillSelection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BillSelection of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Function

Private Function LANDEDCOST(sAssessAMOUNT As Double)
 dCashDis = 0
 dTradeDis = 0
 dLryFgt = 0
 DBED = 0
 dCess = 0
 dEDCess = 0
 dHScess = 0
 dTax = 0
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



    dOtherTax = val(TXTFIELDS(51))
    dComm = val(TXTFIELDS(60))
    dLC = val(TXTFIELDS(62))
    dDRnote = val(TXTFIELDS(70))
    dCashDis = val(TXTFIELDS(54))
    dTradeDis = val(TXTFIELDS(85))
    dLryFgt = val(TXTFIELDS(38))
    DBED = val(TXTFIELDS(75))
    dCess = val(TXTFIELDS(65))
    dEDCess = val(TXTFIELDS(73))
    dHScess = val(TXTFIELDS(71))
    dTax = val(TXTFIELDS(55))
    dAddTax = val(TXTFIELDS(77))
    dCST = val(TXTFIELDS(87))
    dRlyFrg = val(TXTFIELDS(43))
    dInsurance = val(TXTFIELDS(58))
    dDamage = val(TXTFIELDS(64))
    dCustoms = val(TXTFIELDS(69))
    dClearance = val(TXTFIELDS(66))
    dOthersTaxable = val(TXTFIELDS(41))
    dOthersNonTaxable = val(TXTFIELDS(67))
    dBrokerComm = val(TXTFIELDS(83))
    dCharity = val(TXTFIELDS(63))
    dFbillValue = 0

'val (Txtfields(82))

        dblLandedCost = 0
        dblDuty = 0
        s = 0
        If opt_c.value = True Then
            s = val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65))
            dblDuty = s * (100 - val(TXTFIELDS(109))) / 100
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis + dTax + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis + dTax + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt
            End If
        Else
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis + DBED + dEDCess + dHScess + dCess + dTax + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis + DBED + dEDCess + dHScess + dCess + dTax + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt
            End If
        End If
               
        TXTFIELDS(35).Text = dblLandedCost
       Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & TXTFIELDS(83).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dTax
            End If
        Else
            dblLandedCost = dblLandedCost
        End If
        
        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & TXTFIELDS(42).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
               dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dAddTax
            End If
        Else
            dblLandedCost = dblLandedCost
        End If
        
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        If val(TXTFIELDS(81).Text) > 0 Then
            TXTFIELDS(82) = Format(val(TXTFIELDS(7).Text) * val(TXTFIELDS(81).Text) / 100, "#0.00")
        End If
      
      If EXIST_VAT(TXTFIELDS(26).Text) = True And VATFLG = "Y" Then
'            txtFields(78).Text = val(txtFields(78).Text) - val(txtFields(55).Text)
      End If
           TXTFIELDS(78).Text = dblLandedCost
End Function
Private Sub OtherTaxCal()
     If val(TXTFIELDS(52).Text) <> 0 Then
     Set Rs = New Recordset
     Rs.Open "SELECT commtax FROM RM_PARAM", DB, adOpenStatic
        If Rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                Else
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                End If
            Else
                If delivery = "S" Then
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                Else
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text)) - (val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * (val(adoprimaryrs("pjamt")) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                Else
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * (val(adoprimaryrs("pjamt")) + val(TXTFIELDS(41).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                End If
            Else
                If delivery = "S" Then
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * (val(adoprimaryrs("pjamt")) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                Else
                    TXTFIELDS(51).Text = Round(val(TXTFIELDS(52).Text) * (val(adoprimaryrs("pjamt")) + val(TXTFIELDS(41).Text) - (val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                End If
            End If
        End If
    End If
End Sub

Private Sub CSTTaxCalc()
    If val(TXTFIELDS(86).Text) <> 0 Then
     Set Rs = New Recordset
     Rs.Open "SELECT commtax FROM RM_PARAM", DB, adOpenStatic
        If Rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                Else
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                End If
            Else
                If delivery = "S" Then
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                Else
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) - (val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * (val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                Else
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * (val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                End If
            Else
                If delivery = "S" Then
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * (val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                Else
                    TXTFIELDS(87).Text = Round(val(TXTFIELDS(86).Text) * (val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text) - (val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2)
                End If
            End If
        End If
    End If
End Sub
Private Sub TaxCalc()
        If val(TXTFIELDS(55).Text) = 0 Then
             If optAfter = True Then
             Set Rs = New Recordset
             Rs.Open "Select * from rm_param", DB, adOpenStatic
             If Rs("commtax") = "Y" Then
                If delivery = "S" Then
                  TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                Else
                   a = val(TXTFIELDS(7).Text) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                End If
             Else
                If delivery = "S" Then
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                Else
                   a = val(TXTFIELDS(7).Text) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                End If
             End If
             Else
             Set Rs = New Recordset
             Rs.Open "Select * from rm_param", DB, adOpenStatic
             If Rs("commtax") = "Y" Then
                If delivery = "S" Then
                  TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                Else
                   a = val(TXTFIELDS(7).Text) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                End If
             Else
                If delivery = "S" Then
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * (val(TXTFIELDS(7).Text) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2), "0.00")
                Else
                   a = val(TXTFIELDS(7).Text) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
                   TXTFIELDS(55).Text = Format(Round(val(TXTFIELDS(56).Text) * ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
                End If
             End If
             End If
             End If
    

End Sub
Private Sub AddTaxCalc()
    If val(TXTFIELDS(77).Text) = 0 Then
        If optAfter = True Then
         Set Rs = New Recordset
         Rs.Open "Select * from rm_param", DB, adOpenStatic
         If Rs("commtax") = "Y" Then
            If delivery = "S" Then
              TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            Else
               a = val(adoprimaryrs("pjamt")) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            End If
         Else
            If delivery = "S" Then
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * (val(adoprimaryrs("pjamt") + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            Else
               a = val(adoprimaryrs("pjamt")) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * (val(adoprimaryrs("pjamt") + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            End If
         End If
         Else
         Set Rs = New Recordset
         Rs.Open "Select * from rm_param", DB, adOpenStatic
         If Rs("commtax") = "Y" Then
            If delivery = "S" Then
              TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            Else
               a = val(adoprimaryrs("pjamt")) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * ((val(adoprimaryrs("pjamt")) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            End If
         Else
            If delivery = "S" Then
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * (val(adoprimaryrs("pjamt")) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(41).Text)) / 100, 2), "0.00")
            Else
               a = val(adoprimaryrs("pjamt")) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
               TXTFIELDS(77).Text = Format(Round(val(TXTFIELDS(79).Text) * (val(adoprimaryrs("pjamt") + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text)) / 100, 2), "0.00")
            End If
         End If
         End If
    End If
End Sub

Private Sub ReturnTransType()
   Dim trs As New ADODB.Recordset
   If Trim(TXTFIELDS(300).Text) <> "" Then
      strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(TXTFIELDS(300).Text) & "'"
      trs.Open strSQL, DB, adOpenStatic
      If trs.EOF = False Then
         TXTFIELDS(301).Text = IIf(IsNull(trs.Fields("TcHead").value), "", trs.Fields("TcHead").value)
      End If
   End If
   Set trs = Nothing
End Sub

Private Sub ReturnProcessType()
   Dim trs As New ADODB.Recordset
   On Error GoTo ReturnProcessType_Error

   If Trim(TXTFIELDS(302).Text) <> "" Then
      strSQL = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(TXTFIELDS(302).Text) & "'"
      trs.Open strSQL, DB, adOpenStatic
      If trs.EOF = False Then
         TXTFIELDS(303).Text = IIf(IsNull(trs.Fields("purChase Type Description").value), "", trs.Fields("purChase Type Description").value)
      End If
   End If
   Set trs = Nothing

   On Error GoTo 0
   Exit Sub

ReturnProcessType_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ReturnProcessType of Form frmPurchaseBill"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : billamtcheck
' DateTime  : 13/06/2009 16:12
' Author    : Rejitha
' Purpose   : Final Bill Amount Checking
'---------------------------------------------------------------------------------------
'
Private Sub billamtcheck()
   On Error GoTo billamtcheck_Error
   
    fbillamt = 0
    Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        '                 Assessable Value             OtherTaxamount        BED                 ED CESS(SED)      HS CESS                   CESS             Charity              Damage              Clearance           others(non taxable)   Customs Duty          Vat                Add. Tax amount       CST                 Others Taxable         Insurance           Commission                                   cash discount        Trade Discount
        fbillamt = Format(val(TXTFIELDS(7).Text) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        '                 Assessable Value             OtherTaxamount        BED                 ED CESS(SED)      HS CESS                   CESS             Charity              Damage              Clearance           others(non taxable)   Customs Duty          Vat                Add. Tax amount       CST                  Others Taxable           Insurance                                    cash discount        Trade Discount
        fbillamt = Format(val(TXTFIELDS(7).Text) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(66)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        '                 Assessable Value             OtherTaxamount        BED                 ED CESS(SED)      HS CESS                   CESS             Charity              Damage             others(non taxable)   Customs Duty          Vat                Add. Tax amount       CST                  Others Taxable         Insurance         Commission                                    cash discount        Trade Discount
        fbillamt = Format(val(TXTFIELDS(7).Text) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(TXTFIELDS(60)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        '                 Assessable Value             OtherTaxamount        BED                 ED CESS(SED)      HS CESS                   CESS             Charity              Damage             others(non taxable)   Customs Duty          Vat                Add. Tax amount       CST                  Others Taxable         Insurance         Commission                                    cash discount        Trade Discount
        fbillamt = Format(val(TXTFIELDS(7).Text) + val(TXTFIELDS(51)) + val(TXTFIELDS(75)) + val(TXTFIELDS(73)) + val(TXTFIELDS(71)) + val(TXTFIELDS(65)) + val(TXTFIELDS(63)) + val(TXTFIELDS(64)) + val(TXTFIELDS(67)) + val(TXTFIELDS(69)) + val(TXTFIELDS(55)) + val(TXTFIELDS(77)) + val(TXTFIELDS(87)) + val(TXTFIELDS(41)) + val(TXTFIELDS(58)) + val(txtAdjValue.Text) - (val(TXTFIELDS(54)) + val(TXTFIELDS(85))), "0.00")
    End If
   On Error GoTo 0
   Exit Sub
billamtcheck_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure billamtcheck of Form frmPurchaseBill"
End Sub

