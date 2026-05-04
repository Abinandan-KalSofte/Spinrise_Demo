VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmPurchaseBillMultiple 
   Caption         =   "Purchase Bills - Multiple Lot(s)"
   ClientHeight    =   9060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9060
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   11880
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   317
      ToolTipText     =   "Select an item from list"
      Top             =   600
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CommandButton Command15 
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
         Left            =   4620
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   320
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.CommandButton Cmd_DiscountOK 
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
         Left            =   3420
         Style           =   1  'Graphical
         TabIndex        =   319
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
         TabIndex        =   318
         Top             =   600
         Visible         =   0   'False
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   321
         Top             =   480
         Width           =   8550
         _Version        =   524288
         _ExtentX        =   15081
         _ExtentY        =   9604
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
         SpreadDesigner  =   "frmPurchaseBillMultiple.frx":0000
         VScrollSpecial  =   -1  'True
         Appearance      =   2
      End
      Begin VB.Label Label58 
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
         Index           =   1
         Left            =   0
         TabIndex        =   322
         Top             =   50
         Width           =   8505
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   12360
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command7 
      Caption         =   "&Report"
      Default         =   -1  'True
      Height          =   405
      Left            =   11115
      TabIndex        =   225
      Top             =   9195
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Frame Frame2 
      Caption         =   "old  calculation"
      Height          =   3300
      Left            =   12000
      TabIndex        =   167
      Top             =   5160
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
         TabIndex        =   184
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
         TabIndex        =   183
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
         TabIndex        =   182
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
         TabIndex        =   181
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
         TabIndex        =   180
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
         TabIndex        =   179
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
         TabIndex        =   178
         Top             =   1575
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   20
         Left            =   4830
         MaxLength       =   10
         TabIndex        =   177
         Top             =   1965
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   18
         Left            =   4830
         MaxLength       =   9
         TabIndex        =   176
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
         TabIndex        =   175
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
         TabIndex        =   174
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
         TabIndex        =   173
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
         TabIndex        =   172
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
         TabIndex        =   171
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
         TabIndex        =   170
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
         TabIndex        =   169
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
         TabIndex        =   168
         Top             =   1185
         Width           =   450
      End
      Begin VB.Label Label98 
         Caption         =   "Download Bill Copy"
         Height          =   255
         Left            =   0
         TabIndex        =   335
         Top             =   0
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         Caption         =   "Spot Expenses"
         Height          =   195
         Left            =   120
         TabIndex        =   198
         Top             =   1965
         Width           =   1065
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 1"
         Height          =   195
         Left            =   135
         TabIndex        =   197
         Top             =   2355
         Width           =   1095
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Railway Freight"
         Height          =   195
         Left            =   135
         TabIndex        =   196
         Top             =   1620
         Width           =   1080
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Over Due Interest"
         Height          =   195
         Left            =   6180
         TabIndex        =   195
         Top             =   2040
         Width           =   1260
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "cen vat"
         Height          =   195
         Left            =   3405
         TabIndex        =   194
         Top             =   855
         Width           =   540
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Insurance Amount"
         Height          =   195
         Left            =   6195
         TabIndex        =   193
         Top             =   1620
         Width           =   1290
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg."
         Height          =   195
         Left            =   165
         TabIndex        =   192
         Top             =   2865
         Width           =   660
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Broker Commission"
         Height          =   195
         Left            =   3375
         TabIndex        =   191
         Top             =   1980
         Width           =   1335
      End
      Begin VB.Label Label32 
         AutoSize        =   -1  'True
         Caption         =   "AED"
         Height          =   195
         Left            =   6255
         TabIndex        =   190
         Top             =   810
         Width           =   330
      End
      Begin VB.Label Label33 
         AutoSize        =   -1  'True
         Caption         =   "Lorry Freight"
         Height          =   195
         Left            =   6225
         TabIndex        =   189
         Top             =   1260
         Width           =   870
      End
      Begin VB.Label Label34 
         AutoSize        =   -1  'True
         Caption         =   "Loading/Unloading Charges"
         Height          =   390
         Left            =   3375
         TabIndex        =   188
         Top             =   1530
         Width           =   1440
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label35 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 2"
         Height          =   195
         Left            =   3390
         TabIndex        =   187
         Top             =   2325
         Width           =   1095
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Landed Cost"
         Height          =   195
         Left            =   6225
         TabIndex        =   186
         Top             =   2430
         Width           =   900
      End
      Begin VB.Label Label50 
         AutoSize        =   -1  'True
         Caption         =   "Sales Tax Amount"
         Height          =   195
         Left            =   2130
         TabIndex        =   185
         Top             =   1245
         Width           =   1290
      End
   End
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   0
      TabIndex        =   113
      Top             =   -120
      Width           =   12030
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5220
         Picture         =   "frmPurchaseBillMultiple.frx":047D
         Style           =   1  'Graphical
         TabIndex        =   261
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   6315
         Picture         =   "frmPurchaseBillMultiple.frx":08BF
         Style           =   1  'Graphical
         TabIndex        =   233
         ToolTipText     =   "List (Ctrl L)"
         Top             =   60
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":0C56
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "frmPurchaseBillMultiple.frx":0F60
         Style           =   1  'Graphical
         TabIndex        =   232
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":12DA
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "frmPurchaseBillMultiple.frx":1724
         Style           =   1  'Graphical
         TabIndex        =   231
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":1A89
         Height          =   495
         Index           =   6
         Left            =   2640
         Picture         =   "frmPurchaseBillMultiple.frx":1ED3
         Style           =   1  'Graphical
         TabIndex        =   230
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":2220
         Height          =   510
         Index           =   4
         Left            =   1580
         Picture         =   "frmPurchaseBillMultiple.frx":252A
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":28BF
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "frmPurchaseBillMultiple.frx":2D09
         Style           =   1  'Graphical
         TabIndex        =   78
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":3059
         Height          =   510
         Index           =   11
         Left            =   5760
         Picture         =   "frmPurchaseBillMultiple.frx":34A3
         Style           =   1  'Graphical
         TabIndex        =   82
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":3838
         Height          =   510
         Index           =   9
         Left            =   4215
         Picture         =   "frmPurchaseBillMultiple.frx":3B42
         Style           =   1  'Graphical
         TabIndex        =   80
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":3EE4
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "frmPurchaseBillMultiple.frx":432E
         Style           =   1  'Graphical
         TabIndex        =   79
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   6840
         Picture         =   "frmPurchaseBillMultiple.frx":4690
         Style           =   1  'Graphical
         TabIndex        =   83
         ToolTipText     =   "Puchase Bill Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":4AD2
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "frmPurchaseBillMultiple.frx":4DDC
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":516F
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
         Picture         =   "frmPurchaseBillMultiple.frx":5479
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseBillMultiple.frx":5815
         Height          =   510
         Index           =   10
         Left            =   4695
         Picture         =   "frmPurchaseBillMultiple.frx":5B1F
         Style           =   1  'Graphical
         TabIndex        =   81
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
         Left            =   7965
         TabIndex        =   115
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
         Left            =   9900
         TabIndex        =   114
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   150
      Top             =   8760
      Width           =   11400
      _ExtentX        =   20108
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
            TextSave        =   "13/09/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "06:10 PM"
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
      Height          =   9930
      Left            =   360
      TabIndex        =   116
      Top             =   945
      Width           =   11385
      _ExtentX        =   20082
      _ExtentY        =   17515
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "frmPurchaseBillMultiple.frx":5E9B
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "FrmMultipleLot"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame FrmMultipleLot 
         Height          =   2505
         Left            =   120
         TabIndex        =   245
         Top             =   30
         Width           =   11160
         Begin VB.CheckBox Check1 
            Caption         =   "Commercial Weight"
            Enabled         =   0   'False
            Height          =   375
            Left            =   8280
            TabIndex        =   278
            Top             =   120
            Width           =   1815
         End
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   1875
            Left            =   45
            TabIndex        =   251
            Top             =   570
            Width           =   11055
            _Version        =   524288
            _ExtentX        =   19500
            _ExtentY        =   3307
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
            SpreadDesigner  =   "frmPurchaseBillMultiple.frx":5EB7
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
            TabIndex        =   247
            TabStop         =   0   'False
            Text            =   " "
            Top             =   120
            Width           =   5280
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
            TabIndex        =   246
            TabStop         =   0   'False
            Top             =   120
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
            TabIndex        =   252
            Top             =   135
            Width           =   975
         End
      End
      Begin VB.Frame Frame7 
         Height          =   2430
         Left            =   120
         TabIndex        =   117
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
            TabIndex        =   243
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
            TabIndex        =   97
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
            TabIndex        =   96
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1650
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00E0E0E0&
            Height          =   315
            ItemData        =   "frmPurchaseBillMultiple.frx":630B
            Left            =   8580
            List            =   "frmPurchaseBillMultiple.frx":6318
            Style           =   2  'Dropdown List
            TabIndex        =   99
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
            TabIndex        =   100
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
            TabIndex        =   98
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
            TabIndex        =   94
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
            TabIndex        =   92
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
            TabIndex        =   90
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
            TabIndex        =   102
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
            TabIndex        =   93
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
            TabIndex        =   91
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
            TabIndex        =   89
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
            TabIndex        =   85
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
            TabIndex        =   95
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
            TabIndex        =   103
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
            TabIndex        =   101
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
            TabIndex        =   84
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
            TabIndex        =   87
            TabStop         =   0   'False
            Top             =   150
            Width           =   945
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   300
            Index           =   0
            Left            =   8535
            TabIndex        =   88
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
            TabIndex        =   86
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
            TabIndex        =   244
            Top             =   1155
            Width           =   810
         End
         Begin VB.Label Label20 
            Caption         =   "SNo."
            Height          =   195
            Left            =   3765
            TabIndex        =   152
            Top             =   1470
            Width           =   495
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   7695
            TabIndex        =   135
            Top             =   1455
            Width           =   285
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            Height          =   195
            Left            =   5655
            TabIndex        =   134
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
            Height          =   195
            Index           =   0
            Left            =   150
            TabIndex        =   133
            Top             =   825
            Width           =   510
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            Height          =   195
            Left            =   150
            TabIndex        =   132
            Top             =   1140
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   150
            TabIndex        =   131
            Top             =   480
            Width           =   570
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            Height          =   195
            Left            =   2055
            TabIndex        =   127
            Top             =   225
            Width           =   525
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   150
            TabIndex        =   126
            Top             =   1455
            Width           =   480
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   3150
            TabIndex        =   125
            Top             =   1800
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   7680
            TabIndex        =   124
            Top             =   1785
            Width           =   810
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   5445
            TabIndex        =   123
            Top             =   1755
            Width           =   885
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   150
            TabIndex        =   122
            Top             =   1770
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   5445
            TabIndex        =   121
            Top             =   1455
            Width           =   915
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            Height          =   195
            Left            =   3705
            TabIndex        =   120
            Top             =   225
            Width           =   615
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7680
            TabIndex        =   119
            Top             =   225
            Width           =   345
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   150
            TabIndex        =   118
            Top             =   180
            Width           =   630
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   7230
         Left            =   120
         TabIndex        =   136
         Top             =   2565
         Width           =   11160
         _ExtentX        =   19685
         _ExtentY        =   12753
         _Version        =   393216
         TabHeight       =   520
         TabCaption(0)   =   "&Purchase Bill Details"
         TabPicture(0)   =   "frmPurchaseBillMultiple.frx":632C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Label93"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Label96"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "DTPicker2"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Frame8"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).Control(4)=   "btnBrowse"
         Tab(0).Control(4).Enabled=   0   'False
         Tab(0).Control(5)=   "txt_filename"
         Tab(0).Control(5).Enabled=   0   'False
         Tab(0).Control(6)=   "Command8"
         Tab(0).Control(6).Enabled=   0   'False
         Tab(0).Control(7)=   "txtfields(122)"
         Tab(0).Control(7).Enabled=   0   'False
         Tab(0).Control(8)=   "Combo4"
         Tab(0).Control(8).Enabled=   0   'False
         Tab(0).Control(9)=   "Command9"
         Tab(0).Control(9).Enabled=   0   'False
         Tab(0).ControlCount=   10
         TabCaption(1)   =   "&More Details"
         TabPicture(1)   =   "frmPurchaseBillMultiple.frx":6348
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Chk_TCSAssValFlg"
         Tab(1).Control(1)=   "Frame4"
         Tab(1).ControlCount=   2
         TabCaption(2)   =   "Discount Details"
         TabPicture(2)   =   "frmPurchaseBillMultiple.frx":6364
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "FSPDDiscount"
         Tab(2).ControlCount=   1
         Begin VB.CommandButton Command9 
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
            Left            =   9480
            Style           =   1  'Graphical
            TabIndex        =   334
            Top             =   5940
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.ComboBox Combo4 
            Height          =   315
            ItemData        =   "frmPurchaseBillMultiple.frx":6380
            Left            =   7680
            List            =   "frmPurchaseBillMultiple.frx":638A
            TabIndex        =   333
            Text            =   "Purchase Bill"
            Top             =   5940
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.CheckBox Chk_TCSAssValFlg 
            Caption         =   "Cacluated TCS Assesable Value "
            Height          =   795
            Left            =   -65280
            TabIndex        =   332
            Top             =   3660
            Width           =   1420
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "SupFileName"
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
            Left            =   5040
            TabIndex        =   323
            Top             =   5940
            Width           =   2175
         End
         Begin VB.CommandButton Command8 
            BackColor       =   &H80000003&
            Caption         =   "&Compare"
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
            Left            =   10560
            Style           =   1  'Graphical
            TabIndex        =   310
            Top             =   5580
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.TextBox txt_filename 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
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
            Left            =   1065
            Locked          =   -1  'True
            TabIndex        =   308
            Top             =   5970
            Width           =   2055
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
            Left            =   3120
            Style           =   1  'Graphical
            TabIndex        =   307
            Top             =   5940
            Width           =   975
         End
         Begin VB.Frame Frame4 
            Height          =   6720
            Left            =   -74820
            TabIndex        =   199
            Top             =   375
            Width           =   9630
            Begin VB.TextBox TxtIincidentAmt 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
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
               Left            =   1320
               MaxLength       =   10
               TabIndex        =   362
               Top             =   6240
               Width           =   1770
            End
            Begin VB.TextBox TxtSpotExpenseAmt 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
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
               Left            =   4560
               MaxLength       =   10
               TabIndex        =   361
               Top             =   6240
               Width           =   1770
            End
            Begin VB.TextBox txtspotexpense 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "lot_spotexpense"
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
               Left            =   4560
               MaxLength       =   10
               TabIndex        =   358
               Top             =   5880
               Width           =   1770
            End
            Begin VB.TextBox txtincidentcharge 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "lot_incidentcharge"
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
               Left            =   1320
               MaxLength       =   10
               TabIndex        =   357
               Top             =   5880
               Width           =   1770
            End
            Begin VB.ComboBox Combo12 
               BackColor       =   &H00FFFFFF&
               DataField       =   "TypeTruckbale"
               Enabled         =   0   'False
               Height          =   315
               ItemData        =   "frmPurchaseBillMultiple.frx":63AC
               Left            =   6480
               List            =   "frmPurchaseBillMultiple.frx":63B9
               Sorted          =   -1  'True
               Style           =   2  'Dropdown List
               TabIndex        =   356
               Top             =   5880
               Width           =   1575
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TCS_AssAmt"
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
               Index           =   130
               Left            =   8400
               MaxLength       =   9
               TabIndex        =   330
               Top             =   2800
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "shipchrg"
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
               Index           =   125
               Left            =   7755
               MaxLength       =   15
               TabIndex        =   328
               Top             =   4560
               Width           =   1800
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TotDiscAmt"
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
               Index           =   121
               Left            =   5265
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   315
               Top             =   2775
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "TotDiscRate"
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
               Index           =   120
               Left            =   4605
               MaxLength       =   9
               TabIndex        =   314
               Top             =   2775
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "AntyDumperkg"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   119
               Left            =   1320
               MaxLength       =   9
               TabIndex        =   312
               Top             =   2760
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "AntyDumAmt"
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
               Index           =   115
               Left            =   1965
               MaxLength       =   15
               TabIndex        =   311
               Top             =   2760
               Width           =   1150
            End
            Begin VB.Frame Frame11 
               Caption         =   "GST Adjust"
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
               TabIndex        =   300
               Top             =   5280
               Visible         =   0   'False
               Width           =   9465
               Begin VB.TextBox txtfields 
                  DataField       =   "ATCSAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   ".##"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   126
                  Left            =   7920
                  MaxLength       =   15
                  TabIndex        =   336
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "AIGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   ".##"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   114
                  Left            =   5520
                  MaxLength       =   15
                  TabIndex        =   303
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "ASGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   ".##"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   113
                  Left            =   3360
                  MaxLength       =   15
                  TabIndex        =   302
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "ACGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   ".##"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   112
                  Left            =   1200
                  MaxLength       =   15
                  TabIndex        =   301
                  Top             =   150
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
                  Index           =   5
                  Left            =   7200
                  TabIndex        =   337
                  Top             =   240
                  Width           =   315
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
                  Index           =   1
                  Left            =   4800
                  TabIndex        =   306
                  Top             =   240
                  Width           =   405
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
                  Index           =   2
                  Left            =   2640
                  TabIndex        =   305
                  Top             =   240
                  Width           =   435
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
                  Index           =   3
                  Left            =   150
                  TabIndex        =   304
                  Top             =   210
                  Width           =   435
               End
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "welfarePer"
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
               Index           =   105
               Left            =   7725
               MaxLength       =   9
               TabIndex        =   284
               Top             =   2400
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "welfareAmt"
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
               Index           =   104
               Left            =   8385
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   285
               Top             =   2400
               Width           =   1140
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "IDPer"
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
               Left            =   5085
               MaxLength       =   9
               TabIndex        =   282
               Top             =   2400
               Width           =   615
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "IDAmt"
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
               Index           =   99
               Left            =   5685
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   281
               Top             =   2400
               Width           =   900
            End
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
               Left            =   100
               TabIndex        =   268
               Top             =   3150
               Width           =   9465
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "tcs_per"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "0.000"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   1
                  EndProperty
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   124
                  Left            =   7680
                  MaxLength       =   9
                  TabIndex        =   326
                  Top             =   120
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "tcs_amt"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   123
                  Left            =   8310
                  Locked          =   -1  'True
                  MaxLength       =   15
                  TabIndex        =   325
                  Top             =   120
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "IGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   116
                  Left            =   5910
                  Locked          =   -1  'True
                  MaxLength       =   15
                  TabIndex        =   274
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "SGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   117
                  Left            =   3630
                  Locked          =   -1  'True
                  MaxLength       =   15
                  TabIndex        =   273
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "CGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   118
                  Left            =   1260
                  Locked          =   -1  'True
                  MaxLength       =   15
                  TabIndex        =   272
                  Top             =   150
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
                  Index           =   100
                  Left            =   600
                  Locked          =   -1  'True
                  MaxLength       =   9
                  TabIndex        =   271
                  Top             =   150
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
                  Left            =   3000
                  Locked          =   -1  'True
                  MaxLength       =   9
                  TabIndex        =   270
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
                  Index           =   102
                  Left            =   5280
                  Locked          =   -1  'True
                  MaxLength       =   9
                  TabIndex        =   269
                  Top             =   165
                  Width           =   615
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
                  Index           =   4
                  Left            =   7200
                  TabIndex        =   327
                  Top             =   195
                  Width           =   315
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
                  Left            =   4800
                  TabIndex        =   277
                  Top             =   240
                  Width           =   405
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
                  TabIndex        =   276
                  Top             =   240
                  Width           =   435
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
                  TabIndex        =   275
                  Top             =   210
                  Width           =   435
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
               Left            =   3870
               MaxLength       =   15
               TabIndex        =   266
               Top             =   2400
               Width           =   765
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
               TabIndex        =   48
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
               TabIndex        =   49
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
               TabIndex        =   260
               Top             =   4515
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
               TabIndex        =   53
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
               TabIndex        =   54
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
               TabIndex        =   52
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
               TabIndex        =   70
               Top             =   4170
               Width           =   1800
            End
            Begin VB.Frame Frame22 
               Height          =   435
               Left            =   6300
               TabIndex        =   238
               Top             =   120
               Width           =   3240
               Begin VB.OptionButton optBefore 
                  Caption         =   "Before Discount"
                  Height          =   225
                  Left            =   135
                  TabIndex        =   29
                  Top             =   150
                  Value           =   -1  'True
                  Width           =   1455
               End
               Begin VB.OptionButton optAfter 
                  Caption         =   "After Discount"
                  Height          =   195
                  Left            =   1665
                  TabIndex        =   30
                  Top             =   165
                  Width           =   1455
               End
            End
            Begin VB.Frame Frame10 
               Height          =   435
               Left            =   1335
               TabIndex        =   237
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
                  TabIndex        =   28
                  Top             =   120
                  Width           =   600
               End
               Begin VB.OptionButton opt_nc 
                  Caption         =   "No"
                  Height          =   195
                  Left            =   270
                  TabIndex        =   26
                  Top             =   180
                  Value           =   -1  'True
                  Width           =   855
               End
               Begin VB.OptionButton opt_c 
                  Caption         =   "Yes"
                  Height          =   225
                  Left            =   1215
                  TabIndex        =   27
                  Top             =   165
                  Width           =   660
               End
               Begin VB.Label lblDutyPer 
                  Caption         =   "Duty %"
                  Enabled         =   0   'False
                  Height          =   195
                  Left            =   2070
                  TabIndex        =   240
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
               TabIndex        =   76
               TabStop         =   0   'False
               Top             =   5085
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
               TabIndex        =   75
               Top             =   4890
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
               TabIndex        =   51
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
               TabIndex        =   50
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
               TabIndex        =   34
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
               TabIndex        =   33
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
               TabIndex        =   35
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
               TabIndex        =   36
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
               TabIndex        =   45
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
               TabIndex        =   31
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
               TabIndex        =   32
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
               TabIndex        =   65
               Top             =   3810
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
               TabIndex        =   68
               Top             =   4170
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
               TabIndex        =   71
               Top             =   4530
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
               TabIndex        =   69
               Top             =   4170
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
               TabIndex        =   67
               Top             =   3810
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
               TabIndex        =   66
               Top             =   3810
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
               TabIndex        =   64
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
               TabIndex        =   63
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
               TabIndex        =   60
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
               TabIndex        =   59
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
               TabIndex        =   58
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
               TabIndex        =   57
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
               TabIndex        =   62
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
               TabIndex        =   61
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
               TabIndex        =   56
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
               TabIndex        =   55
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
               TabIndex        =   47
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
               TabIndex        =   46
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   65
               Left            =   5295
               MaxLength       =   15
               TabIndex        =   40
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
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   68
               Left            =   4695
               MaxLength       =   9
               TabIndex        =   39
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
               TabIndex        =   44
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
               TabIndex        =   43
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
               TabIndex        =   42
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
               TabIndex        =   41
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
               TabIndex        =   38
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
               TabIndex        =   74
               Top             =   4890
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
               TabIndex        =   73
               Top             =   4890
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
               TabIndex        =   72
               Top             =   4530
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
               TabIndex        =   37
               Top             =   945
               Width           =   615
            End
            Begin VB.Label Label109 
               AutoSize        =   -1  'True
               Caption         =   "Incidental Amt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   120
               TabIndex        =   364
               Top             =   6240
               Width           =   1020
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label108 
               AutoSize        =   -1  'True
               Caption         =   "Spot Expenses Amt. (Rs)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   3120
               TabIndex        =   363
               Top             =   6270
               Width           =   1500
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label106 
               AutoSize        =   -1  'True
               Caption         =   "Spot Expenses (Rs)"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   465
               Left            =   3120
               TabIndex        =   360
               Top             =   5910
               Width           =   1440
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label105 
               AutoSize        =   -1  'True
               Caption         =   "Incidental Charges %"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   120
               TabIndex        =   359
               Top             =   5880
               Width           =   1020
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label130 
               AutoSize        =   -1  'True
               Caption         =   "TCS Assesable Amt"
               Height          =   465
               Left            =   6480
               TabIndex        =   331
               Top             =   2880
               Width           =   1515
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label97 
               AutoSize        =   -1  'True
               Caption         =   "Shipping Charges"
               Height          =   195
               Left            =   6360
               TabIndex        =   329
               Top             =   4570
               Width           =   1245
            End
            Begin VB.Label Label95 
               AutoSize        =   -1  'True
               Caption         =   "Fibre Discount"
               Height          =   390
               Left            =   3240
               TabIndex        =   316
               Top             =   2850
               Width           =   1065
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label94 
               AutoSize        =   -1  'True
               Caption         =   "Anti Dumping Duty Cent/Kgs"
               Height          =   390
               Left            =   120
               TabIndex        =   313
               Top             =   2700
               Width           =   1185
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label85 
               AutoSize        =   -1  'True
               Caption         =   "Social Welfare"
               Height          =   390
               Left            =   6600
               TabIndex        =   286
               Top             =   2445
               Width           =   1065
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label84 
               AutoSize        =   -1  'True
               Caption         =   "I.D.%"
               Height          =   195
               Left            =   4680
               TabIndex        =   283
               Top             =   2430
               Width           =   375
            End
            Begin VB.Label Label82 
               AutoSize        =   -1  'True
               Caption         =   "SICA Amount"
               Height          =   390
               Left            =   3210
               TabIndex        =   267
               Top             =   2430
               Width           =   585
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label78 
               AutoSize        =   -1  'True
               Caption         =   "Surcharge"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   262
               Top             =   1373
               Width           =   735
            End
            Begin VB.Label lblAddTax 
               AutoSize        =   -1  'True
               Caption         =   "Add. Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   3210
               TabIndex        =   242
               Top             =   1740
               Width           =   645
            End
            Begin VB.Label Label73 
               AutoSize        =   -1  'True
               Caption         =   "Others (Taxable)"
               Height          =   195
               Left            =   6360
               TabIndex        =   241
               Top             =   4230
               Width           =   1170
            End
            Begin VB.Label Label111 
               Caption         =   "Tax Calculation?"
               Height          =   285
               Left            =   4920
               TabIndex        =   239
               Top             =   270
               Width           =   1335
            End
            Begin VB.Label Label71 
               Caption         =   "Duty Claimable?"
               Height          =   270
               Left            =   105
               TabIndex        =   236
               Top             =   285
               Width           =   1365
            End
            Begin VB.Label Label48 
               AutoSize        =   -1  'True
               Caption         =   "Vat Amt"
               Height          =   195
               Left            =   7500
               TabIndex        =   224
               Top             =   5190
               Visible         =   0   'False
               Width           =   555
            End
            Begin VB.Label Label49 
               Caption         =   "Landed Cost WithTax"
               ForeColor       =   &H00FF0000&
               Height          =   360
               Left            =   6360
               TabIndex        =   223
               Top             =   4830
               Width           =   1290
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label92 
               AutoSize        =   -1  'True
               Caption         =   "CST"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   222
               Top             =   1710
               Width           =   315
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "Trade Discount"
               Height          =   195
               Left            =   3225
               TabIndex        =   221
               Top             =   645
               Width           =   1215
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label51 
               AutoSize        =   -1  'True
               Caption         =   "Lorry Freight"
               Height          =   195
               Left            =   6495
               TabIndex        =   220
               Top             =   653
               Width           =   870
            End
            Begin VB.Label Label52 
               AutoSize        =   -1  'True
               Caption         =   "Cash Discount"
               Height          =   195
               Left            =   105
               TabIndex        =   219
               Top             =   630
               Width           =   1035
            End
            Begin VB.Label Label56 
               AutoSize        =   -1  'True
               Caption         =   "Dr. Note Amount"
               Height          =   195
               Left            =   105
               TabIndex        =   218
               Top             =   3870
               Width           =   1185
            End
            Begin VB.Label Label55 
               AutoSize        =   -1  'True
               Caption         =   "Customs Duty"
               Height          =   195
               Left            =   105
               TabIndex        =   217
               Top             =   4230
               Width           =   975
            End
            Begin VB.Label Label53 
               Caption         =   "Others (Non-Taxable)"
               Height          =   390
               Left            =   105
               TabIndex        =   216
               Top             =   4485
               Width           =   1035
            End
            Begin VB.Label Label54 
               AutoSize        =   -1  'True
               Caption         =   "Clearance"
               Height          =   195
               Left            =   3225
               TabIndex        =   215
               Top             =   4170
               Width           =   720
            End
            Begin VB.Line Line2 
               X1              =   15
               X2              =   9855
               Y1              =   3750
               Y2              =   3750
            End
            Begin VB.Label Label57 
               AutoSize        =   -1  'True
               Caption         =   "Damage"
               Height          =   195
               Left            =   6360
               TabIndex        =   214
               Top             =   3870
               Width           =   600
            End
            Begin VB.Label Label58 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   0
               Left            =   3225
               TabIndex        =   213
               Top             =   3810
               Width           =   480
            End
            Begin VB.Label Label59 
               AutoSize        =   -1  'True
               Caption         =   "LC Interest"
               Height          =   330
               Left            =   120
               TabIndex        =   212
               Top             =   2460
               Width           =   765
            End
            Begin VB.Label Label60 
               AutoSize        =   -1  'True
               Caption         =   "Commission"
               Height          =   330
               Left            =   3210
               TabIndex        =   211
               Top             =   2055
               Width           =   825
            End
            Begin VB.Label Label61 
               AutoSize        =   -1  'True
               Caption         =   "Insurance"
               Height          =   330
               Left            =   105
               TabIndex        =   210
               Top             =   2040
               Width           =   705
            End
            Begin VB.Label Label62 
               Caption         =   "Railway Freight"
               Height          =   255
               Left            =   6495
               TabIndex        =   209
               Top             =   2063
               Width           =   1200
            End
            Begin VB.Label Label63 
               AutoSize        =   -1  'True
               Caption         =   "Other Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   208
               Top             =   1733
               Width           =   705
            End
            Begin VB.Label Label64 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Enabled         =   0   'False
               Height          =   195
               Left            =   3225
               TabIndex        =   207
               Top             =   1380
               Width           =   270
            End
            Begin VB.Label Label65 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Left            =   3225
               TabIndex        =   206
               Top             =   1005
               Width           =   345
            End
            Begin VB.Label Label66 
               AutoSize        =   -1  'True
               Caption         =   "Hs Cess"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   205
               Top             =   1335
               Width           =   585
            End
            Begin VB.Label Label67 
               AutoSize        =   -1  'True
               Caption         =   "Ed Cess"
               Enabled         =   0   'False
               Height          =   195
               Left            =   6495
               TabIndex        =   204
               Top             =   1013
               Width           =   615
            End
            Begin VB.Label Label69 
               AutoSize        =   -1  'True
               Caption         =   "Landed Cost"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   203
               Top             =   4965
               Width           =   900
            End
            Begin VB.Label Label72 
               AutoSize        =   -1  'True
               Caption         =   "Rate/Kg."
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3225
               TabIndex        =   202
               Top             =   4950
               Width           =   660
            End
            Begin VB.Label Label75 
               AutoSize        =   -1  'True
               Caption         =   "B.E.D"
               Enabled         =   0   'False
               Height          =   195
               Left            =   105
               TabIndex        =   201
               Top             =   990
               Width           =   420
            End
            Begin VB.Label Label77 
               Caption         =   "Agent Commission"
               Height          =   420
               Left            =   3225
               TabIndex        =   200
               Top             =   4455
               Width           =   1185
            End
         End
         Begin VB.Frame Frame8 
            Height          =   5415
            Left            =   225
            TabIndex        =   137
            Top             =   390
            Width           =   10065
            Begin VB.TextBox Text5 
               Alignment       =   1  'Right Justify
               DataField       =   "interest"
               Height          =   330
               Left            =   8250
               TabIndex        =   355
               Top             =   1065
               Width           =   1410
            End
            Begin VB.TextBox Text6 
               Alignment       =   1  'Right Justify
               DataField       =   "penalty"
               Height          =   330
               Left            =   8250
               TabIndex        =   354
               Top             =   285
               Width           =   1410
            End
            Begin VB.TextBox txtfields 
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
               Index           =   133
               Left            =   8295
               MaxLength       =   12
               TabIndex        =   350
               Top             =   5040
               Visible         =   0   'False
               Width           =   1410
            End
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
               Height          =   255
               Left            =   4800
               TabIndex        =   347
               Top             =   4680
               Width           =   1575
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
               TabIndex        =   345
               Top             =   5040
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
               Index           =   131
               Left            =   3270
               TabIndex        =   344
               Top             =   5040
               Width           =   2970
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
               Left            =   7635
               MaxLength       =   9
               TabIndex        =   341
               Top             =   4680
               Width           =   615
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
               Left            =   8295
               MaxLength       =   15
               TabIndex        =   340
               Top             =   4680
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
               TabIndex        =   339
               Top             =   4700
               Width           =   1215
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
               TabIndex        =   338
               Top             =   4680
               Width           =   1395
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "Advance_amt"
               Height          =   315
               Index           =   111
               Left            =   8265
               MaxLength       =   40
               TabIndex        =   296
               Top             =   3650
               Width           =   1380
            End
            Begin VB.ComboBox Combo3 
               Height          =   315
               ItemData        =   "frmPurchaseBillMultiple.frx":63DC
               Left            =   7380
               List            =   "frmPurchaseBillMultiple.frx":63EC
               TabIndex        =   295
               Text            =   "L - Domestic"
               Top             =   720
               Width           =   2295
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "DutyValue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               Height          =   315
               Index           =   110
               Left            =   8280
               MaxLength       =   10
               TabIndex        =   293
               TabStop         =   0   'False
               Top             =   4365
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "ExchangeRate"
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
               Index           =   108
               Left            =   8265
               Locked          =   -1  'True
               MaxLength       =   10
               TabIndex        =   291
               TabStop         =   0   'False
               Top             =   4010
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "duty_Wt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               Height          =   315
               Index           =   107
               Left            =   4890
               MaxLength       =   10
               TabIndex        =   289
               TabStop         =   0   'False
               Top             =   3650
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               DataField       =   "be_no"
               Height          =   330
               Index           =   106
               Left            =   1680
               TabIndex        =   13
               Top             =   4340
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "Comm_Wt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               Height          =   315
               Index           =   98
               Left            =   1680
               MaxLength       =   10
               TabIndex        =   279
               TabStop         =   0   'False
               Top             =   3650
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
               TabIndex        =   23
               Top             =   3300
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
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   10
               Top             =   2970
               Width           =   1545
            End
            Begin VB.TextBox txtDBCRNt 
               Alignment       =   1  'Right Justify
               DataField       =   "dbamt"
               Height          =   315
               Left            =   8250
               Locked          =   -1  'True
               TabIndex        =   19
               TabStop         =   0   'False
               Top             =   1827
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
               Top             =   2210
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
               Top             =   2595
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
               Top             =   4010
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
               TabIndex        =   258
               Top             =   4010
               Width           =   3020
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
               TabIndex        =   234
               Top             =   1065
               Width           =   3180
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
               Top             =   1049
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
               Top             =   3315
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
               TabIndex        =   22
               Top             =   2925
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
               TabIndex        =   17
               Top             =   3300
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
               TabIndex        =   21
               Top             =   2550
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
               Locked          =   -1  'True
               TabIndex        =   16
               Top             =   2925
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
               TabIndex        =   15
               Top             =   2550
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
               TabIndex        =   14
               Top             =   2175
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               DataField       =   "fbillwt"
               Height          =   300
               Index           =   46
               Left            =   4920
               TabIndex        =   106
               Top             =   3315
               Visible         =   0   'False
               Width           =   1200
            End
            Begin VB.ComboBox Combo2 
               Height          =   315
               ItemData        =   "frmPurchaseBillMultiple.frx":6446
               Left            =   8250
               List            =   "frmPurchaseBillMultiple.frx":6450
               Locked          =   -1  'True
               TabIndex        =   18
               Top             =   1455
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
               TabIndex        =   20
               Top             =   2190
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               DataField       =   "Fbillno"
               Height          =   315
               Index           =   6
               Left            =   1680
               MaxLength       =   40
               TabIndex        =   6
               Top             =   1828
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   303
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   105
               TabStop         =   0   'False
               Top             =   675
               Width           =   4140
            End
            Begin VB.TextBox txtfields 
               DataField       =   "ptype"
               Height          =   315
               Index           =   302
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   2
               Top             =   667
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
               Top             =   1446
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   301
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   104
               TabStop         =   0   'False
               Top             =   285
               Width           =   3180
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
               Height          =   315
               Index           =   2
               Left            =   4890
               TabIndex        =   7
               Top             =   1845
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
               TabIndex        =   24
               Top             =   1845
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   556
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   179306497
               CurrentDate     =   39955
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "be_date"
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
               Left            =   4935
               TabIndex        =   298
               TabStop         =   0   'False
               ToolTipText     =   "Transaction Doc. Date"
               Top             =   4350
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
               DataField       =   "be_date"
               Height          =   315
               Left            =   5055
               TabIndex        =   299
               TabStop         =   0   'False
               Top             =   4350
               Width           =   1320
               _ExtentX        =   2328
               _ExtentY        =   556
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   179306497
               CurrentDate     =   36218
            End
            Begin VB.Label Label104 
               AutoSize        =   -1  'True
               Caption         =   "Penalty"
               Height          =   195
               Left            =   6480
               TabIndex        =   353
               Top             =   315
               Width           =   525
            End
            Begin VB.Label Label103 
               AutoSize        =   -1  'True
               Caption         =   "Interest"
               Height          =   195
               Left            =   6480
               TabIndex        =   352
               Top             =   1155
               Width           =   525
            End
            Begin VB.Label Label102 
               AutoSize        =   -1  'True
               Caption         =   "Assessable Value (+/-)"
               ForeColor       =   &H00000000&
               Height          =   195
               Left            =   6495
               TabIndex        =   351
               Top             =   5085
               Visible         =   0   'False
               Width           =   1590
            End
            Begin VB.Label Label101 
               Caption         =   "TDS Type"
               Height          =   195
               Left            =   120
               TabIndex        =   346
               Top             =   5070
               Width           =   1260
            End
            Begin VB.Label Label100 
               AutoSize        =   -1  'True
               Caption         =   "TDS Amount"
               Height          =   195
               Left            =   6480
               TabIndex        =   343
               Top             =   4740
               Width           =   915
            End
            Begin VB.Label Label99 
               AutoSize        =   -1  'True
               Caption         =   "TDS Assessable Value"
               Height          =   195
               Left            =   1560
               TabIndex        =   342
               Top             =   4740
               Width           =   1620
            End
            Begin VB.Label Label91 
               AutoSize        =   -1  'True
               Caption         =   "Advance Amount"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   6480
               TabIndex        =   297
               Top             =   3675
               Width           =   1230
            End
            Begin VB.Label Label90 
               AutoSize        =   -1  'True
               Caption         =   "Duty Value"
               Height          =   195
               Left            =   6480
               TabIndex        =   294
               Top             =   4365
               Width           =   780
            End
            Begin VB.Label Label89 
               AutoSize        =   -1  'True
               Caption         =   "Exchange Rate"
               Height          =   195
               Left            =   6465
               TabIndex        =   292
               Top             =   4040
               Width           =   1110
            End
            Begin VB.Label Label88 
               AutoSize        =   -1  'True
               Caption         =   "Duty Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   290
               Top             =   3675
               Width           =   885
            End
            Begin VB.Label Label87 
               Caption         =   "BE Date"
               Height          =   195
               Left            =   3840
               TabIndex        =   288
               Top             =   4365
               Width           =   780
            End
            Begin VB.Label Label86 
               Caption         =   "BE No."
               Height          =   195
               Left            =   120
               TabIndex        =   287
               Top             =   4365
               Width           =   1020
            End
            Begin VB.Label Label83 
               AutoSize        =   -1  'True
               Caption         =   "Commercial Weight"
               Height          =   195
               Left            =   120
               TabIndex        =   280
               Top             =   3720
               Width           =   1365
            End
            Begin VB.Label Label81 
               AutoSize        =   -1  'True
               Caption         =   "Bill Value"
               Height          =   195
               Left            =   6465
               TabIndex        =   265
               Top             =   3360
               Width           =   645
            End
            Begin VB.Label Label80 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Net Weight"
               Height          =   195
               Left            =   90
               TabIndex        =   264
               Top             =   3030
               Width           =   1425
            End
            Begin VB.Label Label79 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Tare Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   263
               Top             =   2655
               Width           =   1500
            End
            Begin VB.Label Label76 
               Caption         =   "Agent"
               Height          =   195
               Left            =   105
               TabIndex        =   259
               Top             =   4040
               Width           =   1260
            End
            Begin VB.Label Label70 
               Caption         =   "Form Type"
               Height          =   195
               Left            =   105
               TabIndex        =   235
               Top             =   1133
               Width           =   1260
            End
            Begin VB.Label Label47 
               AutoSize        =   -1  'True
               Caption         =   "Quality Allowance"
               Height          =   195
               Left            =   3345
               TabIndex        =   166
               Top             =   3360
               Width           =   1260
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "Dr/Cr Note"
               Height          =   195
               Left            =   6480
               TabIndex        =   159
               Top             =   1905
               Width           =   780
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "Adjustment Value (+/-)"
               ForeColor       =   &H00000000&
               Height          =   195
               Left            =   6495
               TabIndex        =   158
               Top             =   2595
               Width           =   1575
            End
            Begin VB.Label Label42 
               AutoSize        =   -1  'True
               Caption         =   "Mill Net Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   157
               Top             =   2985
               Width           =   1080
            End
            Begin VB.Label Label41 
               AutoSize        =   -1  'True
               Caption         =   "Mill Tare Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   156
               Top             =   2610
               Width           =   1155
            End
            Begin VB.Label Label40 
               AutoSize        =   -1  'True
               Caption         =   "Mill Gross Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   155
               Top             =   2235
               Width           =   1230
            End
            Begin VB.Label Label28 
               AutoSize        =   -1  'True
               Caption         =   "MRN Value"
               Height          =   195
               Left            =   6480
               TabIndex        =   154
               Top             =   2985
               Width           =   825
            End
            Begin VB.Label Label27 
               AutoSize        =   -1  'True
               Caption         =   "Final Bill Wt."
               Height          =   195
               Left            =   3600
               TabIndex        =   153
               Top             =   3330
               Visible         =   0   'False
               Width           =   870
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "RG23A"
               Height          =   195
               Index           =   5
               Left            =   6480
               TabIndex        =   151
               Top             =   1515
               Width           =   525
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Sample Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   149
               Top             =   3375
               Width           =   1080
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Goss Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   148
               Top             =   2270
               Width           =   1530
            End
            Begin VB.Label Label31 
               AutoSize        =   -1  'True
               Caption         =   "Assessable Value"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   6480
               TabIndex        =   147
               Top             =   2235
               Width           =   1275
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Bill Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   146
               Top             =   1860
               Width           =   615
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Bill Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   143
               Top             =   1905
               Width           =   795
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Purchase Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   4
               Left            =   105
               TabIndex        =   142
               Top             =   735
               Width           =   1080
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   140
               Top             =   1515
               Width           =   840
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   3
               Left            =   105
               TabIndex        =   139
               Top             =   1515
               Width           =   1020
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Transaction Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   2
               Left            =   105
               TabIndex        =   138
               Top             =   345
               Width           =   1245
            End
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   375
            Left            =   5040
            TabIndex        =   257
            Top             =   2460
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            Format          =   178126849
            CurrentDate     =   39955
         End
         Begin FPSpreadADO.fpSpread FSPDDiscount 
            Height          =   4965
            Left            =   -74880
            TabIndex        =   349
            Top             =   480
            Width           =   10950
            _Version        =   524288
            _ExtentX        =   19315
            _ExtentY        =   8758
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
            SpreadDesigner  =   "frmPurchaseBillMultiple.frx":645D
            VScrollSpecial  =   -1  'True
            Appearance      =   2
         End
         Begin VB.Label Label96 
            Caption         =   "File Name"
            Height          =   255
            Left            =   4200
            TabIndex        =   324
            Top             =   6060
            Width           =   975
         End
         Begin VB.Label Label93 
            Caption         =   "Supplier Bill"
            Height          =   255
            Left            =   120
            TabIndex        =   309
            Top             =   6060
            Width           =   975
         End
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2220
      TabIndex        =   160
      Top             =   3570
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         Height          =   615
         Left            =   2955
         Style           =   1  'Graphical
         TabIndex        =   163
         Top             =   1725
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4035
         Style           =   1  'Graphical
         TabIndex        =   162
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   161
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
         TabIndex        =   165
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2595
         TabIndex        =   164
         Top             =   1005
         Width           =   570
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   1800
      TabIndex        =   109
      Top             =   1920
      Visible         =   0   'False
      Width           =   8475
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3210
         Left            =   270
         TabIndex        =   145
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
         TabIndex        =   144
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
         TabIndex        =   141
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
         TabIndex        =   110
         Top             =   225
         Width           =   1380
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   480
      TabIndex        =   108
      Top             =   1440
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KslList1 
         Height          =   3375
         Left            =   840
         TabIndex        =   128
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "frmPurchaseBillMultiple.frx":68DA
         Height          =   615
         Left            =   3015
         Picture         =   "frmPurchaseBillMultiple.frx":6CC0
         Style           =   1  'Graphical
         TabIndex        =   129
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "frmPurchaseBillMultiple.frx":7086
         Height          =   615
         Left            =   4770
         Picture         =   "frmPurchaseBillMultiple.frx":7468
         Style           =   1  'Graphical
         TabIndex        =   130
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   3255
         Left            =   840
         TabIndex        =   112
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
         TabIndex        =   111
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame5 
      Height          =   630
      Left            =   3960
      TabIndex        =   226
      Top             =   3000
      Visible         =   0   'False
      Width           =   5460
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   228
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   227
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
         TabIndex        =   229
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame14 
      Height          =   6345
      Left            =   600
      TabIndex        =   253
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
         ItemData        =   "frmPurchaseBillMultiple.frx":783B
         Left            =   0
         List            =   "frmPurchaseBillMultiple.frx":783D
         Style           =   1  'Checkbox
         TabIndex        =   248
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
         TabIndex        =   249
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
         TabIndex        =   250
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
         TabIndex        =   256
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
         TabIndex        =   255
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
         TabIndex        =   254
         Top             =   105
         Width           =   9735
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   450
      Index           =   7
      Left            =   11880
      TabIndex        =   348
      Top             =   8760
      Visible         =   0   'False
      Width           =   9900
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
      TabIndex        =   107
      Top             =   585
      Width           =   4035
   End
End
Attribute VB_Name = "frmPurchaseBillMultiple"
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
Dim ADOSECONDARYRS As Recordset
Dim adoTestRs As Recordset
Dim rstFA As Recordset
Dim rstQry As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim dblDutyPer As Double
Dim iRow As Integer
Dim dSingleValue As Double
Dim STATEFLAG, SuppType, ValueFLG As String
Dim Sflg As String
Dim Opt As String
Dim FtFlg, BVLotUpdateFlg As String
Dim ftamt As Double
Dim oText As TextBox
Dim dblTotalLC As Double
Dim strDelType As String
Dim reason As String
Dim DAntDumValue As Double
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
Dim TDSCalcTotPur As Integer
Dim CandyRateRoff As Integer
Dim sLotno As String
Dim sLotDt As String
Dim sSLcode As String
Dim sLotYear As String
Dim dCashDis As Double
Dim dTradeDis As Double
Dim dLryFgt As Double
Dim DBED As Double
Dim dCess As Double
Dim dEDCess As Double
Dim dHScess As Double
Dim DTCSAMT As Double
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
Dim dSampleWgt, dCOMMWTWgt, DDutyWgt, DDutyAmt, DTotDiscRate, DTotDiscAmt As Double
Dim DelReasonCode As String
Dim RateUnit As String
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
Dim dShippingCharges As Double
Dim dRlyFrgPer As Double
Dim dInsurancePer As Double
Dim dCommPer As Double
Dim dLCPer As Double
Dim dSCper As Double
Dim DSICAAmt As Double
Dim FDisc_ROFF As Integer
Dim DADVAmt As Double
Dim DTCSASSAMT As Double
Dim TDSCalcFlag As String
Dim DACGSTAMT As Double
Dim DASGSTAMT As Double
Dim DAIGSTAMT As Double
Dim DATCSTAMT As Double
Dim dTDSAssAmt As Double
Dim DTDSAmt As Double

Dim dIDAmt As Double
Dim dSWelfare As Double

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
Dim CGST_ROFF As Integer
Dim SGST_ROFF As Integer
Dim IGST_ROFF As Integer
Dim ANTIDUMP_ROFF As Integer
Dim INSUR_ROFF As Integer
Dim ATCS_ROFF  As Integer
Dim sSCONTNO As String
Dim sContDt As String
Dim Tds_Rndnextrs As Integer
Dim RIncidentAmt_Roff As Integer
Dim RspotExpamt_Roff As Integer

Dim Totincident As Double
Dim totspotexpense As Double

Dim DCGSTAMT, DSGSTAMT, DIGSTAMT As Double

Const ILotNo          As Integer = 1
Const ILotdt          As Integer = 2
Const IVarcode        As Integer = 3
Const IVarName        As Integer = 4
Const Iunit           As Integer = 5
Const Icandyrate      As Integer = 6
Const IBillrate       As Integer = 7
Const IRebate         As Integer = 8
Const iQty            As Integer = 9
Const Imgrosswt       As Integer = 10
Const Imtarewt        As Integer = 11
Const Immoiturewt     As Integer = 12
Const Imnetwt         As Integer = 13
Const Ipgrosswt       As Integer = 14
Const Iptarewt        As Integer = 15
Const Ipnetwt         As Integer = 16
Const Iwbwt           As Integer = 17
Const Ipjamt          As Integer = 18
Const Icashdisper     As Integer = 19
Const Icashdisamt     As Integer = 20
Const Itradedisper    As Integer = 21
Const Itradedisamt    As Integer = 22
Const IFrtper         As Integer = 23
Const IFrtamt         As Integer = 24
Const IBedper         As Integer = 25
Const IBedamt         As Integer = 26
Const IEdper          As Integer = 27
Const IEdamt          As Integer = 28
Const IHscessper      As Integer = 29
Const IHscessamt      As Integer = 30
Const Icessper        As Integer = 31
Const Icessamt        As Integer = 32
Const ITaxCode        As Integer = 33
Const ITaxper         As Integer = 34
Const ITaxamt         As Integer = 35
Const ISCper          As Integer = 36
Const ISCamt          As Integer = 37
''sasi 19.6.17
Const IHSN            As Integer = 38
Const ICGSTPER        As Integer = 39
Const ICGSTAMT        As Integer = 40
Const ISGSTPER        As Integer = 41
Const ISGSTAMT        As Integer = 42
Const IIGSTPER        As Integer = 43
Const IIGSTAMT        As Integer = 44

'Const itcsper        As Integer = 82
'Const itcsamt        As Integer = 83
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
Dim ICOMMWt         As Integer
Dim IEXRATE         As Integer
Dim IIDPER          As Integer
Dim IIDAMT          As Integer
Dim IWELFAREPER     As Integer
Dim IWELFAREAMT     As Integer
Dim Idutywt         As Integer
Dim IdutyValue      As Integer
Dim IAdvAmt         As Integer
Dim IAntDumPer      As Integer
Dim IAntDumValue    As Integer
Dim IContNum        As Integer
Dim IContdate       As Integer
Dim IDiscRate       As Integer
Dim IDiscAmt        As Integer
Dim IFbillvalue     As Integer
Dim itcsper         As Integer
Dim itcsamt         As Integer
Dim Ishipchrg       As Integer
Dim ITCS_AssValue   As Integer
Dim IACGSTAMT       As Integer
Dim IASGSTAMT       As Integer
Dim IAIGSTAMT       As Integer
Dim IATCSAMT        As Integer

Dim ITDSPER         As Integer
Dim ITDSAMT         As Integer
Dim ITDSASSAMT      As Integer

Dim mfbillamt As Double
Dim IIncidentCharge As Integer
Dim ISpotExpense As Integer
Dim IIncidentChargeAmt As Integer
Dim ISpotExpenseAmt As Integer

Dim tmpass As Double
Dim OldTc As String
Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTContno
    SPDDTContdt
    SPDDTDocno
    SPDDTDOCDT
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
    SPDDTDValue
End Enum


Private Enum D_SpdDiscType
    D_SPDDTSNO = 1
    D_SPDDTContno
    D_SPDDTContdt
    D_SPDDTLOTNO
    D_SPDDTLOTDT
    D_SPDDTDocno
    D_SPDDTDOCDT
    D_SPDDTVARSNO
    D_SPDDTVarcode
    D_SPDDTDISCCODE
    D_SPDDTDISCDESC
    D_SPDDTDRate
    D_SPDDTDValue
End Enum
Private Declare Function GetDesktopWindow Lib "USER32" () As Long

Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
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
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
   
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Purchase Bill"
End Sub

Private Sub btnBrowse_Click()
On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If

    If Trim(txtfields(304).Text) = "" Then
        MsgBox "PJV No cannot be empty", vbInformation, head
        txtfields(304).SetFocus
        Exit Sub
    End If
    
    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMSupplierBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMSupplierBill" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    
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
    sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("Supplier Bill Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'If ToValidFinYear(Divcode) = False Then Exit Sub
   Call AddRecordMod
Case 1
    'Modification

     Call modifyrecord
Case 2
     Call deleterecord
Case 3
    Call BILLPrint

Case 4


   Call FindLookUp
   



Case 9                               'Save
    
   If Opt = "add" Or Opt = "mod" Then
        If (UCase(CustID) = UCase("Shrigiri") Or UCase(CustID) = UCase("Pallava")) Then
            If Trim(txtfields(122).Text) = "" Then
                MsgBox "Please select Supplier Bill Scan Copy!!", vbInformation, head
                'txtfields(111).SetFocus
                Exit Sub
            End If
            
           Dim sFilePath1 As String
           Set fso = New FileSystemObject
           sFilePath1 = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "--" & Trim(txtfields(122).Text)
           If Not fso.FileExists(sFilePath1) Then
              ' MsgBox "File Exist."
                MsgBox "Supplier Bill Not Available.. Kindly check it..!", vbInformation, head
                Exit Sub
           End If
    
    
        End If
''''''       If val(txtfields(112).Text) <> val(txtfields(113).Text) Then
''''''            MsgBox "Adjustment CGST and SGST Amount not matched!!", vbInformation, head
''''''            Exit Sub
''''''       End If
''''''        If val(Trim(txtfields(116).Text)) = 0 Then
''''''            If val(txtfields(114).Text) > 0 Then
''''''                 MsgBox "Adjustment IGST Amount not Valid!!", vbInformation, head
''''''                Exit Sub
''''''            End If
''''''        End If
''''''        If val(Trim(txtfields(118).Text)) = 0 Or val(Trim(txtfields(117).Text)) = 0 Then
''''''            If val(Trim(txtfields(112).Text)) > 0 Or val(Trim(txtfields(113).Text)) > 0 Then
''''''                 MsgBox "Adjustment CGST Amount not Valid!!", vbInformation, head
''''''                Exit Sub
''''''            End If
''''''        End If
''''''
''''''      If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
''''''                Set fso = New FileSystemObject
''''''                strNewFile = Trim(txtfields(122).Text)
''''''                sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "--" & strNewFile
''''''                If fso.FileExists(sFilePath) Then
''''''                   ' MsgBox "File Exist."
''''''                Else
''''''                      MsgBox "Supplier Bill Copy not updated Properly !! Update again.."
''''''                      Exit Sub
''''''                End If
''''''     End If
   
   
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

      If val(txtfields(128).Text) > 0 And val(txtfields(123).Text) > 0 Then
            MsgBox "TCS And TDS Amount Not Allowed in Same Bill", vbInformation, head
            Exit Sub
      End If
   
      If Left(Combo3.Text, 1) <> "L" And (UCase(CustID) = UCase("Shrigiri") Or UCase(CustID) = UCase("Pallava")) Then
        If Trim(txtfields(111).Text) = "" Or val(txtfields(111).Text) = 0 Then
            MsgBox "Please Enter Advance Amout", vbInformation, head
            txtfields(111).SetFocus
            Exit Sub
        End If
      End If
      
      If val(Trim(txtfields(118).Text)) + val(Trim(txtfields(117).Text)) + val(Trim(txtfields(116).Text)) = 0 Then
        If MsgBox("GST Amount is Zero !!! Do you want to continue?", vbYesNo, head) = vbNo Then Exit Sub
        
      
      End If
   

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
            TmpRs.Open "select count(lotno) from rm_lot where pjno is not NULL and  pjno<>" & val(txtfields(304).Text) & " and SUPCD ='" & txtfields(81).Text & "' And BILLDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And BillNo ='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If TmpRs(0) > 0 Then
                MsgBox "Please enter valid Bill Number ", vbInformation, head
                SSTab2.Tab = 0
                txtfields(6).SetFocus
                Exit Sub
            End If
        End If
        
        If Left(Combo3.Text, 1) = "D" Or Left(Combo3.Text, 1) = "B" Or Left(Combo3.Text, 1) = "A" Then
            If Trim(txtfields(106).Text) = "" Then
                MsgBox "Please enter the BOE No", vbInformation, head
                txtfields(106).SetFocus
                Exit Sub
            End If
        End If
        
        If MaskEdBox1(4).Text = "__/__/____" And Trim(txtfields(106).Text) <> "" Then
            MsgBox "Please enter the BOE Date", vbInformation, head
            MaskEdBox1(4).SetFocus
            Exit Sub
        End If
        
        If Trim(txtfields(6).Text) = "" Then
            MsgBox "Please enter the Bill Number", vbInformation, head
            txtfields(6).SetFocus
            Exit Sub
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
        
        If txtfields(300).Text = "" Then
               MsgBox " Transaction Type cannot be empty ", vbInformation
               txtfields(300).SetFocus
                Exit Sub
               
        End If
        If txtfields(302).Text = "" Then
               MsgBox " Purchase Type cannot be empty ", vbInformation
               txtfields(302).SetFocus
                Exit Sub
               
        End If
           
        intervalMinutes = -1
        DB.BeginTrans
        
        Call fbillamtcheck
        If mfbillamt <> val(txtfields(47)) Then
'            MsgBox "Final Bill Amount Not Tallied", vbInformation, head
'            Exit Sub
        End If
        Call SaveFunction
        
        intervalMinutes = -1
         ModuserID = ""
         entryUserID = ""
        'To Update Rm_Lot.AdjValue Field
        If Opt = "add" Then
            entryUserID = usrid
            Set RSCHECK = New Recordset
            RSCHECK.Open "select getdate() dt", DB, adOpenStatic
            entryUserDate = Format(RSCHECK(0), "yyyy-mm-dd HH:MM")
        End If
        
                
        If Opt = "mod" Then
        intervalMinutes = -1
        '**************Deletetion for Modification
           entryUserID = ""
           ModuserID = usrid
            Set RSCHECK = New Recordset
            RSCHECK.Open "select getdate() dt", DB, adOpenStatic
            ModuserDate = Format(RSCHECK(0), "yyyy-mm-dd HH:MM")
           
           Set Rs = New Recordset
           Rs.Open "select isnull(entusrid,'') entusrid,isnull(entdate,getdate()) entdate FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
           If Not Rs.EOF Then
                entryUserID = Rs(0)
                entryUserDate = Format(Rs(1), "yyyy-mm-dd HH:MM")
           End If
           
            Set rsjv = New Recordset
            rsjv.Open "select isnull(DBNO,0) DBNO,isnull(DBTC,0) from rm_lot where divcode ='" & Divcode & "' and pjtc = '" & OldTc & "' and pjno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "' ", DB, adOpenStatic
               If Not rsjv.EOF Then
                    If rsjv(0) > 0 Then
                        Set Rsch = New Recordset
                        Rsch.Open "select vocno,isnull(appflg,'N')appflg FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'", DB, adOpenStatic
                        If Not Rsch.EOF Then
                            If Rsch(0) = "Y" Then
                                MsgBox "Credit /Debit Note Voucher already Approved. You cannot delete This Voucher", vbInformation, head
                                DB.RollbackTrans
                                Exit Sub
                            Else
                                DB.Execute ("DELETE FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                DB.Execute ("DELETE FROM FA_jvline WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                            End If
                        End If
                    End If
               End If
        
           'strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
            'DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(TXTFIELDS(300).Text) & "' and pjvno = " & val(TXTFIELDS(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(OldTc) & "' and pjvno = " & val(txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           
           DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & OldTc & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & OldTc & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & OldTc & "' and vocno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and vocdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
           Set Rs = New Recordset
           'Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(TXTFIELDS(300).Text) & "' and vocno = " & val(TXTFIELDS(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
           Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(OldTc) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
           
           Do While Not Rs.EOF
               'DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(TXTFIELDS(300).Text) & "' and vocno = " & val(TXTFIELDS(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
               DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(OldTc) & "' and vocno = " & val(txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
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
            DBCRTC = 0
            If DrCrFlag = True Then
                If val(txtDBCRNt.Text) > 0 Then        'Raise Debit NOte
                
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Drtc & "' AND Divcode = '" & Divcode & "' and vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenDynamic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If
                    
                    DBCRTC = Drtc
                    DB.Execute "INSERT INTO Fa_Jvhead (divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc,ENTUSRID,ENTDATE,Module_No,ref_no,ref_date) VALUES ('" & Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "','" & usrid & "',getdate(),'" & ModuleNo & "','" & Trim(txtfields(6).Text) & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
                    
                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,Module_No) VALUES ('" & Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                Trim(txtfields(81)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & Left(txtfields(24).Text, 1) & "'," & val(txtDBCRNt) & ",'" & ModuleNo & "')"
                    
                    If UCase(CustID) = "LMW" Then
                    '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", DB
                                If Not rscost.EOF Then
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,cccode,Module_No) VALUES ('" & Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & " ,'" & ModuleNo & "')"
                                Else
                                    DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,Module_No) VALUES ('" & Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & ModuleNo & "')"
                                End If
                    Else
                    
                        DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,Module_No) VALUES ('" & Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & ModuleNo & "')"
                    End If
                   
                                
                    DebitNote = True
                ElseIf val(txtDBCRNt.Text) < 0 Then    'Raise Credit NOte
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Crtc & "' AND Divcode = '" & Divcode & "'  and vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If
                     DBCRTC = Crtc
                       DB.Execute "INSERT INTO Fa_Jvhead " & _
                       "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc,ENTUSRID,ENTDATE,Module_No,ref_no,ref_date) VALUES ('" & _
                       Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "','" & usrid & "',getdate(),'" & ModuleNo & "','" & Trim(txtfields(6).Text) & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
                       
                        If UCase(CustID) = "LMW" Then
                                '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", DB
                                If Not rscost.EOF Then
                                   DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,CCCODE,Module_No) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & ",'" & ModuleNo & "')"
                                Else
                                   DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,Module_No) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ",'" & ModuleNo & "')"
                                End If
                                
                       Else
                            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,Module_No) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & Left(txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ",'" & ModuleNo & "')"
            
                       End If
                       
            
                       DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,Module_No) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   Trim(txtfields(81)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & ModuleNo & "')"
                                   'Trim(Txtfields(26))
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
              strSQL = " Update Rm_Lot Set penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', SuppBillValue=" & val(txtfields(96).Text) & ",DBNO = " & val(Vcno) & ",dbtc='" & DBCRTC & "',DBAMT = " & Abs(val(txtDBCRNt)) & _
                      " ,bILLVALUE = " & val(txtfields(7).Text) & " , pjno=" & val(txtfields(304).Text) & " , pjtc='" & thistc & "' , pjdt='" & Format(MaskEdBox1(3).Text, "YYYY/MM/DD") & "' Where " & _
                      " LOTYEAR='" & sLotYear & "' AND Lotno =" & GetText(spdVar, ILotNo, iRow) & " and " & _
                      " LotDt ='" & Format(GetText(spdVar, ILotdt, iRow), "yyyy/mm/dd") & "' and  " & _
                      " Divcode ='" & Divcode & "' And OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iRow) & "' ANd lotyear='" & sLotYear & "'"
    
              DB.Execute strSQL
              
            If Opt = "add" Then
              strSQL = ""
              strSQL = " Update Rm_Lot Set  purpreparedby='" & UserName & "' ,purpredate=getdate() Where " & _
                      " LOTYEAR='" & sLotYear & "' AND Lotno =" & GetText(spdVar, ILotNo, iRow) & " and " & _
                      " LotDt ='" & Format(GetText(spdVar, ILotdt, iRow), "yyyy/mm/dd") & "' and  " & _
                      " Divcode ='" & Divcode & "' And OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iRow) & "' ANd lotyear='" & sLotYear & "'"
               
                    DB.Execute strSQL
               End If
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
                If UCase(Trim(CustID)) = "KUMARAGIRI" Then
                    a11 = "S.Bill No. " & txtfields(6).Text & " Dt. " & Format(MaskEdBox1(2).Text, "dd-mm-yyyy") & " - " & Format(IIf(val(txtfields(98).Text) = 0, val(txtfields(9).Text), val(txtfields(98).Text)), "0.000") & " Kgs."
                ElseIf UCase(Trim(CustID1)) = "SCM" Then
                    a11 = "S.Bill No. " & txtfields(6).Text & " Dt. " & Format(MaskEdBox1(2).Text, "dd-mm-yyyy") & " - " & Format(IIf(val(txtfields(98).Text) = 0, val(txtfields(9).Text), val(txtfields(98).Text)), "0.000") & " Kgs."
                Else
                    a11 = "S.Bill No. " & txtfields(6).Text & " Dt. " & Format(MaskEdBox1(2).Text, "dd-mm-yyyy") & " - " & Format(IIf(val(txtfields(98).Text) = 0, val(txtfields(50).Text), val(txtfields(98).Text)), "0.000") & " Kgs."
                End If
                a12 = "" ''Trim(Text4.Text)
                a13 = a11 ''& " - " & a12
                Set Rs = New Recordset
                Rs.Open "Select CommInBillValue From RM_PARAM ", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,ANTIDUMP_AMT,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT,entusrid,entdate,modusrid,MODDATE,incidentcharge,spotexpense,incidentchargeamt,spotexpenseamt) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & Round(val(txtfields(58).Text), 0) & "," & val(txtfields(60).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & ", 0 ," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "'," & val(txtfields(115).Text) & "," & val(txtfields(123).Text) & ",'" & Left(Combo3.Text, 1) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "','" & entryUserID & "','" & entryUserDate & "','" & IIf(ModuserID = "", Null, usrid) & "','" & IIf(ModuserID = "", Null, Format(Now, "yyyy-mm-dd HH:MM")) & "', " & val(txtincidentcharge.Text) & " , " & val(txtspotexpense.Text) & " , " & val(TxtIincidentAmt.Text) & " , " & val(TxtSpotExpenseAmt.Text) & " )"
                     Else
                        strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,AdvanceAmt,ANTIDUMP_AMT,SICA_Amt,SocialWelfare_Amt,ID_Amt,FibreDisc_Amt,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT,entusrid,entdate,modusrid,MODDATE,incidentcharge,spotexpense,incidentchargeamt,spotexpenseamt) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & (val(txtfields(51).Text)) & "," & val(txtfields(43).Text) & "," & Round(val(txtfields(58).Text), 0) & "," & val(txtfields(60).Text) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text) + val(txtfields(125))) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(111).Text)) & "'," & val(txtfields(115).Text) & "," & val(txtfields(97).Text) & "," & val(txtfields(104).Text) & "," & val(txtfields(99).Text) & "," & val(txtfields(121).Text) & "," & val(txtfields(123).Text) & ",'" & Left(Combo3.Text, 1) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "','" & entryUserID & "','" & entryUserDate & "','" & IIf(ModuserID = "", Null, usrid) & "','" & IIf(ModuserID = "", Null, Format(Now, "yyyy-mm-dd HH:MM")) & "', " & val(txtincidentcharge.Text) & " , " & val(txtspotexpense.Text) & ", " & val(TxtIincidentAmt.Text) & " , " & val(TxtSpotExpenseAmt.Text) & " )"
                     End If
                     
                Else
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER ,ANTIDUMP_AMT,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT,entusrid,entdate,modusrid,MODDATE,incidentcharge,spotexpense,incidentchargeamt,spotexpenseamt) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & val(txtfields(51).Text) & "," & val(txtfields(43).Text) & "," & Round(val(txtfields(58).Text), 0) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & ",0," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "'," & val(txtfields(115).Text) & "," & val(txtfields(123).Text) & ",'" & Left(Combo3.Text, 1) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "','" & entryUserID & "','" & entryUserDate & "','" & IIf(ModuserID = "", Null, usrid) & "','" & IIf(ModuserID = "", Null, Format(Now, "yyyy-mm-dd HH:MM")) & "', " & val(txtincidentcharge.Text) & " , " & val(txtspotexpense.Text) & ", " & val(TxtIincidentAmt.Text) & " , " & val(TxtSpotExpenseAmt.Text) & " )"
                     Else
                      strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,AdvanceAmt,ANTIDUMP_AMT,SICA_Amt,SocialWelfare_Amt,ID_Amt,FibreDisc_Amt ,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT,entusrid,entdate,modusrid,MODDATE,incidentcharge,spotexpense,incidentchargeamt,spotexpenseamt) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & txtfields(81).Text & "','" & txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(txtfields(55).Text) & "," & val(txtfields(96).Text) & ", " & val(txtfields(54).Text) & " , " & val(txtfields(85).Text) & " , " & val(txtfields(38).Text) & ", " & val(txtfields(75).Text) & "," & val(txtfields(73).Text) & "," & val(txtfields(71).Text) & _
                             "," & val(txtfields(65).Text) & "," & val(txtfields(55).Text) & "," & val(txtfields(87).Text) & "," & (val(txtfields(51).Text)) & "," & val(txtfields(43).Text) & "," & Round(val(txtfields(58).Text), 0) & "," & val(txtfields(62).Text) & "," & val(txtfields(70).Text) & "," & val(txtfields(64).Text) & "," & val(txtfields(63).Text) & "," & val(txtfields(66).Text) & "," & (val(txtfields(67).Text) + val(txtfields(125))) & "," & val(txtfields(69).Text) & "," & val(txtfields(82).Text) & "," & val(txtfields(7).Text) & ",6,'" & txtfields(302).Text & "','" & txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(txtfields(41).Text) & ",'" & Trim(txtfields(42).Text) & "'," & val(txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "','" & val(Trim(txtfields(111).Text)) & "'," & val(txtfields(115).Text) & "," & val(txtfields(97).Text) & "," & val(txtfields(104).Text) & "," & val(txtfields(99).Text) & "," & val(txtfields(121).Text) & "," & val(txtfields(123).Text) & ",'" & Left(Combo3.Text, 1) & "'," & val(txtfields(129).Text) & "," & val(txtfields(128).Text) & ",'" & Trim(txtfields(132).Text) & "','" & Trim(txtfields(127).Text) & "','" & entryUserID & "','" & entryUserDate & "','" & IIf(ModuserID = "", Null, usrid) & "','" & IIf(ModuserID = "", Null, Format(Now, "yyyy-mm-dd HH:MM")) & "', " & val(txtincidentcharge.Text) & " , " & val(txtspotexpense.Text) & ", " & val(TxtIincidentAmt.Text) & " , " & val(TxtSpotExpenseAmt.Text) & " )"
                    End If
                    
                End If

                DB.Execute strSQL
            End If
            
            strSQL = ""
            strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(txtfields(50).Text) & "," & Round(val(txtfields(78).Text) / val(txtfields(50).Text), 4) & "," & val(txtfields(7).Text) & ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "')"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
            
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
           If Opt = "add" Then
            DB.BeginTrans
            Set frs = New Recordset
            frs.Open "select fainstal from rm_param", DB
            If frs(0) = "Y" Then
             
               strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
               DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               Set rsjv = New Recordset
               rsjv.Open "select isnull(DBNO,0) DBNO,isnull(DBTC,0) from rm_lot where divcode ='" & Divcode & "' and pjtc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "' ", DB, adOpenStatic
               If Not rsjv.EOF Then
                    If rsjv(0) > 0 Then
                        Set Rsch = New Recordset
                        Rsch.Open "select vocno,isnull(appflg,'N')appflg FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'", DB, adOpenStatic
                        If Not Rsch.EOF Then
                            If Rsch(0) = "Y" Then
                                MsgBox "Credit /Debit Note Voucher already Approved. You cannot delete This Voucher", vbInformation, head
                                DB.RollbackTrans
                                Exit Sub
                            Else
                                DB.Execute ("DELETE FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                DB.Execute ("DELETE FROM FA_jvline WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                            End If
                        End If
                    End If
               End If
               
               
'               DB.Execute ("DELETE FROM fa_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(TXTFIELDS(300)), 0, TXTFIELDS(300)) & "' and vocno = " & IIf(IsNull(TXTFIELDS(304)), 0, TXTFIELDS(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               
               DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               
               
               
               Set Rs = New Recordset
               Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
               Do While Not Rs.EOF
                   DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                   Rs.MoveNext
               Loop
                If Opt = "add" Or Opt = "mod" Then
                    For I = 1 To spdVar.MaxRows
                        DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,purpreparedby=NULL ,purpredate=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, I) & "'")
                       '***********************Deletion********************
                    Next
                End If
                
                Call delrg23c
                If Opt = "add" Or Opt = "mod" Then
                    MsgBox "Record(s) Deleted", vbInformation, head
                End If
                
            End If
            
            DB.CommitTrans
        
            Opt = ""
            Call query_mode
            Exit Sub
           End If
        End If
      intervalMinutes = -1
        '=================================================================================================================================================================================
        If DrCrFlag = True Then
            If val(txtDBCRNt.Text) > 0 Then
                frmFa.sTC = Drtc
            ElseIf val(txtDBCRNt.Text) < 0 Then
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
                frs.Open "select fainstal from rm_param ", DB
                If frs(0) = "Y" And Opt <> "mod" Then
                   strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
                   DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and vocno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                    Set rsjv = New Recordset
                    rsjv.Open "select isnull(DBNO,0) DBNO,isnull(DBTC,0) from rm_lot where divcode ='" & Divcode & "' and pjtc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "' ", DB, adOpenStatic
                    If Not rsjv.EOF Then
                         If rsjv(0) > 0 Then
                             Set Rsch = New Recordset
                             Rsch.Open "select vocno,isnull(appflg,'N')appflg FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'", DB, adOpenStatic
                             If Not Rsch.EOF Then
                                 If Rsch(0) = "Y" Then
                                     MsgBox "Credit /Debit Note Voucher already Approved. You cannot delete This Voucher", vbInformation, head
                                     DB.RollbackTrans
                                     Exit Sub
                                 Else
                                     DB.Execute ("DELETE FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                     DB.Execute ("DELETE FROM FA_jvline WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                 End If
                             End If
                         End If
                    End If
                   
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
            'Code added on 18-12-2018 (The transaction will be exit if debit and credit not tallied------------------------------------------------------'
            Dim rscrdr As New Recordset
            Set rscrdr = New Recordset
            rscrdr.Open "select SUM(ISNULL(DEBIT,0))DEBIT,SUM(ISNULL(CREDIT,0))CREDIT from fa_purjvline where vocno='" & txtfields(304).Text & "' and vocdt='" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "'AND DIVCODE='" & Divcode & "' ", DB, adOpenStatic
            If rscrdr.RecordCount > 0 Then
                If rscrdr("DEBIT") <> rscrdr("CREDIT") Then
                    MsgBox "The bill entry not saved due to the Credit and Debit not tallied", vbCritical, head
                    DB.BeginTrans
                    Set frs = New Recordset
                    frs.Open "select fainstal from rm_param", DB
                        If frs(0) = "Y" Then
                           strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
                           DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                           DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjvno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                            Set rsjv = New Recordset
                            rsjv.Open "select isnull(DBNO,0) DBNO,isnull(DBTC,0) from rm_lot where divcode ='" & Divcode & "' and pjtc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "' ", DB, adOpenStatic
                            If Not rsjv.EOF Then
                                 If rsjv(0) > 0 Then
                                     Set Rsch = New Recordset
                                     Rsch.Open "select vocno,isnull(appflg,'N')appflg FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'", DB, adOpenStatic
                                     If Not Rsch.EOF Then
                                         If Rsch(0) = "Y" Then
                                             MsgBox "Credit /Debit Note Voucher already Approved. You cannot delete This Voucher", vbInformation, head
                                             DB.RollbackTrans
                                             Exit Sub
                                         Else
                                             DB.Execute ("DELETE FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                             DB.Execute ("DELETE FROM FA_jvline WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                         End If
                                     End If
                                 End If
                            End If
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
                        intervalMinutes = -1
                    DB.CommitTrans
                    Opt = ""
                    Call query_mode
                    Exit Sub
                End If
            End If
            
            Call SaveTransLog
        '------------------------------------------------------------------------------'
            MsgBox "Record(s) Saved Successfully", vbInformation, head
        End If
        If Opt = "mod" Then
            Call SaveTransLog
            MsgBox "Record(s) Modified Successfully", vbInformation, head
        End If
        
        If Opt = "add" Or Opt = "mod" Then
        Call BUTTON_Click(13)
            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                Set fso = New FileSystemObject
                sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(txtfields(304).Text) + " DT-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 15) & ".pdf"
                If fso.FileExists(sFilePath) Then
                   ' MsgBox "File Exist."
                Else
'                      MsgBox "ERP Print Not updated Properly ! Please Wait For Some Time...."
                      Call BUTTON_Click(13)
                End If
            End If
        
        End If
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        BUTTON(10).Enabled = False
    End If

    If Opt = "del" Then
        If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
           If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
         
         LookUp.Clear = True
         LookUp.query = "select Code AS 'Code',Description as 'Description' from RM_DelReason"
         LookUp.Caption = "Delete Reason Listing"
         LookUp.DefCol = "Description"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
             DelReasonCode = LookUp.Fields(0)
         Else
             GoTo DelReason
         End If
        DB.BeginTrans
''        Set frs = New Recordset
''        frs.Open "select fainstal,FAPOSTINGFLG from rm_param", DB
''        If frs(0) = "Y" And frs(1) = "N" Then

            Set rsjv = New Recordset
            rsjv.Open "select isnull(DBNO,0) DBNO,isnull(DBTC,0) from rm_lot where divcode ='" & Divcode & "' and pjtc = '" & IIf(IsNull(txtfields(300)), 0, txtfields(300)) & "' and pjno = " & IIf(IsNull(txtfields(304)), 0, txtfields(304)) & " and pjdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "' ", DB, adOpenStatic
            If Not rsjv.EOF Then
                If rsjv(0) > 0 Then
                        Set Rsch = New Recordset
                        Rsch.Open "select vocno,isnull(appflg,'N')appflg FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'", DB, adOpenStatic
                        If Not Rsch.EOF Then
                            If Rsch(0) = "Y" Then
                                MsgBox "Credit /Debit Note Voucher already Approved. You cannot delete This Voucher", vbInformation, head
                                DB.RollbackTrans
                                Exit Sub
                            Else
                                DB.Execute ("DELETE FROM FA_jvhead WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                                DB.Execute ("DELETE FROM FA_jvline WHERE divcode ='" & Divcode & "' and tc = '" & val(rsjv(1)) & "' and vocno = " & val(rsjv(0)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and Module_No='" & ModuleNo & "'")
                            End If
                        End If
                End If
            End If
           
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
        
            DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,FAFLAG=NULL,adjvalue=0,purpreparedby=NULL,purpredate=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, iRow) & "' ")
           '***********************Deletion********************
        Next
        Call delrg23c
        
           '***********************Deletion********************
        DB.CommitTrans
        Call SaveTransLog
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
      intervalMinutes = -1
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
  'GoTo gocancel
   End If
del:
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    ' GoTo gocancel
    Exit Sub

Case 10
  Call canceloptcode
'
Case 5
  Call MoveFirstRecord

Case 6
     'next
   Call MoveNextRecord

Case 7
    'Previous
    Call MovePreviousRecord
Case 8
     'last
       Call movelastrecord
   Case 13
   Call TransactionPrint
Case 11

    Unload Me
End Select

intervalMinutes = -1
Exit Sub
BUTTON_Click_Error:
intervalMinutes = -1
    MsgBox Err.Description, vbInformation, head
    If Opt = "add" Then
        DB.RollbackTrans
        Call globalrecord
        Exit Sub
    End If
intervalMinutes = -1
Screen.MousePointer = 0
End Sub

Private Sub Chk_TCSAssValFlg_LostFocus()
If Opt = "add" Or Opt = "mod" Then
    Call LotCalculation
End If
End Sub

Private Sub ChK_TDSFlag_Click()
If Opt = "add" Or Opt = "mod" Then
    If Chk_TDSFLAG.value = 1 And Opt = "add" Then
        Set RSS = New Recordset
        RSS.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur,isnull(TDS_TYPE,'') TDS_TYPE  from rm_PARAM b  ", DB, adOpenStatic
        If Not RSS.EOF Then
            TDSPERWP = RSS(0)
            txtfields(129).Text = Format(TDSPERWP, "#0.000")
            txtfields(132).Text = RSS(4)
            Set rsa = New Recordset
            rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(131).Text = rsa(1)
            End If
        End If
        
    End If
    Call LotCalculation
End If
End Sub

Private Sub Cmd_DiscountOK_Click()

On Error GoTo Command5_Click_Error
FrameDiscType.Visible = False

'If Opt = "add" Or Opt = "mod" Then
'
'
'Dim inc As Integer
'inc = 0
' With SPDDiscTypeDet
'
'        For RW = 1 To .MaxRows
'            .Row = RW
'         If Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) = "" Then
'            MsgBox "Please Enter Discount Rate! Atleast Zero value to Enter", vbInformation, head
'            FrameDiscType.Visible = True
'            Exit Sub
'         End If
'            inc = 1
''            If val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) > 0 Then
''                inc = 1
''             End If
'        Next RW
'End With
'If inc = 0 Then
'    MsgBox "Please Enter Discount Rate", vbInformation, head
'      FrameDiscType.Visible = True
'    Exit Sub
'End If
'
'Dim docDate As Date
'
'docDate = Format(DTPicker1.value, "yyyy-mm-dd")
'
'
'db.Execute "delete from RM_FibreRateDiscTXN where IPAdd='" & LocalIPAdd & "' and docdate='" & Format(docDate, "yyyy-mm-dd") & "' and varcode='" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "' AND VSno='" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "' and divcode='" & Divcode & "' "
'
' With SPDDiscTypeDet
'        For RW = 1 To .MaxRows
'            .Row = RW
'            'If Trim(GetText(SpdPrd, SPDDTDRate, RW)) <> 0 Then
'                db.Execute "insert into RM_FibreRateDiscTXN (Divcode,docno,Docdate,VSno,DocSno,Varcode,DType,DRate,IPAdd,supcd)values('" & Divcode & "','" & val(txtfields(0).Text) & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(GetText(SpdEmpAllocation, SPDVSNO, SpdEmpAllocation.ActiveRow)) & "','" & val(RW) & "','" & Trim(Trim(GetText(SpdEmpAllocation, SPDVVarcode, SpdEmpAllocation.ActiveRow))) & "','" & Trim(GetText(SPDDiscTypeDet, SPDDTDISCCODE, RW)) & "','" & val(GetText(SPDDiscTypeDet, SPDDTDRate, RW)) & "','" & LocalIPAdd & "','" & Trim(txtfields(3).Text) & "')"
'           ' End If
'        Next RW
'End With
'
'SpdEmpAllocation.SetFocus
'
' FrameDiscType.Visible = False
'    Exit Sub
'
'End If

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click_Error ", vbInformation, head



   
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

Private Sub Combo3_Click()
If Opt = "add" Or Opt = "mod" Then

    If Left(Combo3.Text, 1) = "L" Then
        txtfields(106).Locked = True
        MaskEdBox1(4).Enabled = False
        DTPicker1.Enabled = False
        txtfields(106).Text = ""
        MaskEdBox1(4).Text = "__/__/____"
        
    Else
        txtfields(106).Locked = False
        MaskEdBox1(4).Enabled = True
        DTPicker1.Enabled = True
    End If
If Left(Combo3.Text, 1) = "D" Or Left(Combo3.Text, 1) = "B" Then
'    spdVar.Col = Idutywt
'    spdVar.Lock = False

 End If
 
 
 
     Call LotCalculation
     Call LANDEDCOST(val(txtfields(7).Text))
     Call fBillValue(dAssValue)
     Call DRCRAmt
End If
End Sub

Private Sub Combo3_LostFocus()
If Opt = "add" Or Opt = "mod" Then
    If Left(Combo3.Text, 1) = "L" Then
        txtfields(106).Locked = True
        MaskEdBox1(4).Enabled = False
        DTPicker1.Enabled = False
        txtfields(106).Text = ""
        MaskEdBox1(4).Text = "__/__/____"
        
    Else
        txtfields(106).Locked = False
        MaskEdBox1(4).Enabled = True
        DTPicker1.Enabled = True
    End If
End If
End Sub

Private Sub Command15_Click()
    FrameDiscType.Visible = False
    Exit Sub
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
        adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,Assvalue,be_no,be_date,Advance_amt,AntyDumperkg,AntyDumAmt,penalty,interest FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'and OPFLG ='N' and lotno=" & val(txtqry.Text) & " ", DB, adOpenStatic, adLockBatchOptimistic
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
Select Case KSLLIST1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    txtfields(83).Text = KSLLIST1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & txtfields(83).Text & "'", DB
    txtfields(56).Text = val(newrs1(0))  'taxper
    txtfields(55).Text = val(txtfields(7).Text) * val(txtfields(56).Text) / 100
    txtfields(55).SetFocus

Case "Lotno"
If KSLLIST1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,OtherTaxableAmt,rateunit,be_no,be_date,Advance_amt,AntyDumperkg,AntyDumAmt,penalty,interest " & _
                    "FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KSLLIST1.Description, "yyyy-mm-dd") & "' and lotno=" & Trim(KSLLIST1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockBatchOptimistic
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
  If globalarrivalorder = "C" Then
    Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where  " _
            & " b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(KSLLIST1.Code) & " and c.lotdt='" & Format(KSLLIST1.Description, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and b.divcode=c.divcode and    b.divcode='" & Divcode & "' and b.divcode=a.divcode and    b.divcode='" & Divcode & "' and (a.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and A.im_ind='I')))  ", DB, adOpenStatic
  Else
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(KSLLIST1.Code) & " and c.lotdt='" & Format(KSLLIST1.Description, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
  End If
  If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        opt_nc.value = True
        If opt_c.value = True Then
            If UCase(delivery) = "S" Then
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) + val(txtfields(38)) + val(txtfields(43)) + val(txtfields(58)) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))) + (val(txtfields(75)) + (val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) * (100 - val(txtfields(109))) / 100)), "0.00")
            Else
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))) + (val(txtfields(75)) + (val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) * (100 - val(txtfields(109))) / 100)), "0.00")
            End If
        Else
            If UCase(delivery) = "S" Then
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) + val(txtfields(38)) + val(txtfields(43)) + val(txtfields(58)) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
   
            Else
                txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(txtfields(51)) + val(txtfields(60)) + val(txtfields(62)) + val(txtfields(70)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(82)) + val(txtfields(55)) + val(txtfields(87)) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
                                    
            End If
        End If
               
        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(83).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                txtfields(78).Text = val(txtfields(35).Text)
            Else
                txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(55).Text)
            End If
        Else
            'txtfields(78).Text = val(txtfields(35).Text) ''sasi 30.6.17
            txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(55).Text)
        End If
       
        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(42).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                txtfields(78).Text = val(txtfields(35).Text)
            Else
                txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(77).Text)
            End If
        Else
            txtfields(78).Text = val(txtfields(35).Text) - val(txtfields(77).Text)
        End If

       
       
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N') vatflg ,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    tcsLandflg = "N"
    If rsP.RecordCount > 0 Then
         VATFLG = rsP(0)
        tcsLandflg = rsP(1)
    End If
        
    If VATFLG = "Y" Then
       ' If EXIST_VAT(Txtfields(26).Text) = True Then
              txtfields(78).Text = val(txtfields(78).Text) - val(txtfields(55).Text) - val(txtfields(77).Text)
       ' End If
    End If
    
    If tcsLandflg = "Y" Then
        txtfields(78).Text = val(txtfields(78).Text) - val(txtfields(123).Text)
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
    txtfields(300).Text = KSLLIST1.Code
    txtfields(301).Text = KSLLIST1.Description
    txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = KSLLIST1.Code
    txtfields(301).Text = KSLLIST1.Description
    txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    txtfields(302).Text = KSLLIST1.Code
    txtfields(303).Text = KSLLIST1.Description
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



Private Sub Command8_Click()
sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-PJVNO-" & Trim(txtfields(304).Text) + " DT-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 15) & ".pdf"
frm_PurchasebillCompare.ERPBillPath = sFilePath
frm_PurchasebillCompare.Show
End Sub

Private Sub Command9_Click()
Dim startpath As String
Dim sTopic As String
Dim sFile As String
Dim sParams As Variant
Dim sDirectory As Variant
sTopic = "Open"
sParams = 0&
sDirectory = 0&

 Set fso = New FileSystemObject


If Opt = "" Or Opt = "mod" Or Opt = "fnd" Or Opt = " " Or Opt = "add" Or Opt = "query" Then
    If Combo4.Text = "Purchase Bill" Then
       sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(txtfields(304).Text) + " DT-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 15) & ".pdf"
    
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
        ' MsgBox "ERP Purchase Bill Copy Not Found", vbInformation, head
          Call TransactionPrint
        Exit Sub
        End If
        
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)

    ElseIf Combo4.Text = "Supplier Bill" Then

        sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "--" & Trim(txtfields(122).Text)
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

Private Sub DTPicker1_CloseUp()
    MaskEdBox1(4).Text = Format(DTPicker1.value, "dd/MM/yyyy")
    MaskEdBox1(4).SetFocus
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
        Call LotCalculation
    End If
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
intervalMinutes = -1
On Error GoTo Form_Load_Error
  tmpass = 0
  opt_nc.value = True
  Call openconnection
  Opt = ""
  DATLAB.Caption = pdate
  DTPicker3.Enabled = False
  DTPicker1.Enabled = True
  DTPicker3.value = pdate
  DTPicker1.value = pdate
'  TabStrip1.Tabs.Clear
 StatusBar1.Panels(1).Text = STBARmsg
 'If UCase(CustID) = UCase("Kumaragiri") Then
    Frame11.Visible = True
 'End If
 

 Set Rs = New Recordset
 Rs.Open "SELECT ADDTAXREQUIRED,isnull(TDSCalcTotPur,0) TDSCalcTotPur,isnull(Tds_Rndnextrs,0) Tds_Rndnextrs,isnull(TDSCalcFlag,'B')TDSCalcFlag FROM RM_PARAM", DB, adOpenStatic
 TDSCalcTotPur = Rs("TDSCalcTotPur")
 Tds_Rndnextrs = Rs("Tds_Rndnextrs")
 TDSCalcFlag = Rs("TDSCalcFlag")
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
 
 If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
    Label98.Visible = True
    Combo4.Visible = True
    Command9.Visible = True
 End If
 
    Set Rs = New Recordset
     Rs.Open "SELECT isnull(WeightFlg,'S')  WeightFlg,isnull(BValInLotFlg,'Y') BVLotUpdateFlg  FROM RM_PARAM", DB, adOpenStatic
    If Not Rs.EOF Then
        ValueFLG = Trim(Rs(0))
        BVLotUpdateFlg = Rs(1)
     End If
 
 intervalMinutes = -1
   Set Rs = New Recordset
  Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
  If Not Rs.EOF Then
    If Rs(0) = "Y" Then
        'Additional Tax Field Add For Kores
        
         IATaxCode = 45
         IATaxper = 46
         IATaxamt = 47
         IOthtaxPer = 48
         IothTaxamt = 49
         IRlyfrtper = 50
         IRlyfrtamt = 51
         IInsper = 52
         IInsamt = 53
         ICommper = 54
         ICommAMT = 55
         ILCper = 56
         ILCamt = 57
         Icharity = 58
         IOthTaxableAmt = 59
         IOthers = 60
         IcustomDuty = 61
         ILandedcost = 62
         IRateKG = 63
         IAcWgt = 64
         Iround = 65
         ISICAAmt = 66
         ICOMMWt = 67
         IEXRATE = 68
         Idutywt = 69
         IdutyValue = 70
         IIDPER = 71
         IIDAMT = 72
         IWELFAREPER = 73
         IWELFAREAMT = 74
         IAdvAmt = 75
         IAntDumPer = 76
         IAntDumValue = 77
         IContNum = 78
         IContdate = 79
         IDiscRate = 80
         IDiscAmt = 81
         IFbillvalue = 82
         itcsper = 83
         itcsamt = 84
         Ishipchrg = 85
         ITCS_AssValue = 86
         IACGSTAMT = 87
         IASGSTAMT = 88
         IAIGSTAMT = 89
         IATCSAMT = 90
         ITDSASSAMT = 91
         ITDSPER = 92
         ITDSAMT = 93
         IIncidentCharge = 94
         IIncidentChargeAmt = 95
         ISpotExpense = 96
         ISpotExpenseAmt = 97
     Else
         IOthtaxPer = 45
         IothTaxamt = 46
         IRlyfrtper = 47
         IRlyfrtamt = 48
         IInsper = 49
         IInsamt = 50
         ICommper = 51
         ICommAMT = 52
         ILCper = 53
         ILCamt = 54
         Icharity = 55
         IOthTaxableAmt = 56
         IOthers = 57
         IcustomDuty = 58
         ILandedcost = 59
         IRateKG = 60
         IAcWgt = 61
         Iround = 62
         ISICAAmt = 63
         ICOMMWt = 64
         IEXRATE = 65
         Idutywt = 66
         IdutyValue = 67
         IIDPER = 68
         IIDAMT = 69
         IWELFAREPER = 70
         IWELFAREAMT = 71
         IAdvAmt = 72
         IAntDumPer = 73
         IAntDumValue = 74
         IContNum = 75
         IContdate = 76
         IDiscRate = 77
         IDiscAmt = 78
         IFbillvalue = 79
         itcsper = 80
         itcsamt = 81
         Ishipchrg = 82
         ITCS_AssValue = 83
         IACGSTAMT = 84
         IASGSTAMT = 85
         IAIGSTAMT = 86
         IATCSAMT = 87
         ITDSASSAMT = 88
         ITDSPER = 89
         ITDSAMT = 90
         IIncidentCharge = 91
         IIncidentChargeAmt = 92
         ISpotExpense = 93
         ISpotExpenseAmt = 94
    End If
  
  End If
 intervalMinutes = -1
  Call query_mode
  Call AssignRoundoff
  intervalMinutes = -1
'  Call SpreadAlign(1)
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False

  If UCase(Trim(CustID)) = "COTTON" Or UCase(Trim(CustID)) = "KUMARAGIRI" Then
    Label102.Visible = True
        txtfields(133).Visible = True
  End If

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
                " REDCESS_ROFF,RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF ,RCGST_ROFF ,RSGST_ROFF,RIGST_ROFF,isnull(RInsurance_ROFF,0) RInsurance_ROFF,isnull(RAntiDump_ROFF,0) RAntiDump_ROFF,isnull(RTCS_ROFF,2) RTCS_ROFF,isnull(FDisc_ROFF,0) FDisc_ROFF " & _
                " ,isnull(RIncidentAmt_Roff,0) RIncidentAmt_Roff,isnull(RspotExpamt_Roff,0) RspotExpamt_Roff,isnull(CandyRateRoff ,4) CandyRateRoff From  RM_PARAM "
                
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
            
            CGST_ROFF = IIf(IsNull(RoffRs("RCGST_ROFF")), 2, RoffRs("RCGST_ROFF"))
            SGST_ROFF = IIf(IsNull(RoffRs("RSGST_ROFF")), 2, RoffRs("RSGST_ROFF"))
            IGST_ROFF = IIf(IsNull(RoffRs("RIGST_ROFF")), 2, RoffRs("RIGST_ROFF"))
            INSUR_ROFF = IIf(IsNull(RoffRs("RInsurance_ROFF")), 2, RoffRs("RInsurance_ROFF"))
            ANTIDUMP_ROFF = IIf(IsNull(RoffRs("RAntiDump_ROFF")), 2, RoffRs("RAntiDump_ROFF"))
            ATCS_ROFF = IIf(IsNull(RoffRs("RTCS_ROFF")), 2, RoffRs("RTCS_ROFF"))
            FDisc_ROFF = IIf(IsNull(RoffRs("FDisc_ROFF")), 2, RoffRs("FDisc_ROFF"))
            RspotExpamt_Roff = IIf(IsNull(RoffRs("RspotExpamt_Roff")), 2, RoffRs("RspotExpamt_Roff"))
            RIncidentAmt_Roff = IIf(IsNull(RoffRs("RIncidentAmt_Roff")), 2, RoffRs("RIncidentAmt_Roff"))
            
            CandyRateRoff = IIf(IsNull(RoffRs("CandyRateRoff")), 2, RoffRs("CandyRateRoff"))
     End If

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault
  intervalMinutes = -1

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
'adoPrimaryRS.MoveFirst
If Not adoPrimaryRS.EOF And adoPrimaryRS.AbsolutePosition > 0 Then
    
       Set rstQry = New Recordset
       rstQry.Open "Select Lotno,Lotdt,Supcd,varcode,CONTNUM,Contdate from rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and Pjno='" & val(adoPrimaryRS("Pjno")) & "' and pjdt='" & Format(adoPrimaryRS("pjdt"), "YYYY/MM/DD") & "' order by lotdt,lotno", DB, adOpenStatic, adLockBatchOptimistic
       If rstQry.EOF = False Then
            dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
            GTax = "":    GAtax = "":       txtfields(56).Text = "":  dTax = 0:              dCashDis = 0:        dTradeDis = 0
            dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
            dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
            dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
            dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
            dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
            dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0:    dShippingCharges = 0
            dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0: DAntDumValue = 0
            sCode = "": dADJValue = 0:: dSC = 0: DSICAAmt = 0: dCOMMWTWgt = 0: DADVAmt = 0: DDutyWgt = 0: DDutyAmt = 0:
            DTotDiscRate = 0: DTotDiscAmt = 0: DTCSAMT = 0: DTCSASSAMT = 0: dTDSAssAmt = 0: DTDSAmt = 0: Totincident = 0: totspotexpense = 0:
            
            DACGSTAMT = 0
            DASGSTAMT = 0
            DAIGSTAMT = 0
            DATCSTAMT = 0
            
            DCGSTAMT = 0
            DSGSTAMT = 0
            DIGSTAMT = 0
            dIDAmt = 0
            dSWelfare = 0
            DADVAmt = 0
            
            txtfields(83).Text = ""
            txtfields(42).Text = ""
            
            txtfields(94).Text = ""
            
            txtfields(112).Text = ""
            txtfields(113).Text = ""
            
            txtfields(114).Text = ""
            txtfields(126).Text = ""
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
            Call SET_MainDiscountHead
            rstQry.MoveFirst
            Do While rstQry.EOF = False
                iRow = rstQry.AbsolutePosition
                 sLotno = ""
                 sLotDt = ""
                 sSLcode = ""
                 
                 sLotno = rstQry("lotno")
                 sLotDt = rstQry("lotdt")
                 sSLcode = rstQry("supcd")
                 sVarcode = rstQry("varcode")
                 Call Lotdisplay(sLotno, sLotDt, sSLcode, sVarcode, iRow)
                 
                 sSCONTNO = rstQry("ContNum")
                 sContDt = rstQry("Contdate")
                 Call Load_Fibre_Discount(sLotno, sLotDt, sSCONTNO, sContDt, sSLcode, iRow)
                 rstQry.MoveNext
            Loop
            
'            Txtfields(304).Text = adoPrimaryRS("Pjno")
            
        End If
        
        Call SpreadAlign(rstQry.RecordCount)

'        If adoTestRs.EOF = False Then
        
        Set rs1 = New Recordset
        rs1.Open "select Distinct pjno,pjdt,pjtc,Fbillno,fbilldt,form_type,ptype from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL and Pjno='" & val(adoPrimaryRS("Pjno")) & "' and pjdt='" & Format(adoPrimaryRS("pjdt"), "YYYY/MM/DD") & "'", DB, adOpenStatic
        If rs1.EOF = False Then
            txtfields(300).Text = rs1("pjtc")
            txtfields(302).Text = rs1("ptype")
            txtfields(304).Text = rs1("pjno")
            txtfields(6).Text = rs1("Fbillno")
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
        End If
        
        
        
'        Set rs = New Recordset
'        rs.Open "sELECT slname FROM fa_slmas WHERE slcode='" & adoTestRs("supcd") & "'", DB, adOpenStatic
'        If rs.RecordCount > 0 Then
'            txtFields(81).Text = rs("slcode")
'            Text4.Text = rs("slname")
'        Else
'            txtFields(81).Text = ""
'            Text4.Text = ""
'        End If
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
'Option1.Enabled = False
'Option2.Enabled = False
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
    DTPicker1.Enabled = True
    txtfields(96).Locked = False
    txtfields(6).Locked = True
End If
End Sub

Private Sub FSPDDiscount_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
    If Col = D_SPDDTDRate Then
        
'        For I = 1 To spdVar.MaxRows
'            If val(GetText(spdVar, ILotNo, I)) = val(GetText(FSPDDiscount, D_SPDDTLOTNO, Row)) And CDate(GetText(spdVar, ILotdt, I)) = CDate(GetText(FSPDDiscount, D_SPDDTLOTDT, Row)) And val(GetText(spdVar, IContNum, I)) = val(GetText(FSPDDiscount, D_SPDDTContno, Row)) And CDate(GetText(spdVar, IContdate, I)) = CDate(GetText(FSPDDiscount, D_SPDDTContdt, Row)) Then
'                ' Assvalue1 = Round((val(GetText(spdVar, Idutywt, I)) * val(GetText(spdVar, IBillrate, I))), 4) * val(GetText(spdVar, IEXRATE, I))
'
'                    If Trim(ValueFLG) = "S" Then
'                        v2 = Ipnetwt
'                    Else
'                        v2 = Imnetwt
'                    End If
'                    If Check1.value Then
'                        v2 = ICOMMWt
'                    End If
'                    FSPDDiscount.SetText D_SPDDTDValue, Row, CStr(val(GetText(FSPDDiscount, D_SPDDTDRate, Row)) * val(GetText(spdVar, v2, I)))
'
'            End If
'        Next
        Dim DTotDiscount_Rate, DDiscount_Value, TDTotDiscount_Rate, TDDiscount_Value As Double
        DTotDiscount_Rate = 0: DDiscount_Value = 0: TDTotDiscount_Rate = 0: TDDiscount_Value = 0
        For I = 1 To spdVar.MaxRows
            For j = 1 To FSPDDiscount.MaxRows
                If val(GetText(spdVar, ILotNo, I)) = val(GetText(FSPDDiscount, D_SPDDTLOTNO, j)) And CDate(GetText(spdVar, ILotdt, I)) = CDate(GetText(FSPDDiscount, D_SPDDTLOTDT, j)) And val(GetText(spdVar, IContNum, I)) = val(GetText(FSPDDiscount, D_SPDDTContno, j)) And CDate(GetText(spdVar, IContdate, I)) = CDate(GetText(FSPDDiscount, D_SPDDTContdt, j)) Then
                    If Trim(ValueFLG) = "S" Then
                        v2 = Ipnetwt
                    Else
                        v2 = Imnetwt
                    End If
                    If Check1.value Then
                        v2 = ICOMMWt
                    End If
                    FSPDDiscount.SetText D_SPDDTDValue, j, CStr(val(GetText(FSPDDiscount, D_SPDDTDRate, j)) * val(GetText(spdVar, v2, I)))
                    DTotDiscount_Rate = DTotDiscount_Rate + val(GetText(FSPDDiscount, D_SPDDTDRate, j))
                    DDiscount_Value = DDiscount_Value + val(GetText(FSPDDiscount, D_SPDDTDValue, j))
                End If
            Next
            spdVar.SetText IDiscRate, I, CStr(DTotDiscount_Rate)
            spdVar.SetText IDiscAmt, I, CStr(DDiscount_Value)
            TDTotDiscount_Rate = TDTotDiscount_Rate + val(GetText(spdVar, IDiscRate, I))
            TDDiscount_Value = TDDiscount_Value + val(GetText(spdVar, IDiscAmt, I))
            
        Next
        
        txtfields(120).Text = Format(TDTotDiscount_Rate, "#0.00")
        txtfields(121).Text = Format(TDDiscount_Value, "#0.00")
        Call LotCalculation
        
    End If
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

Private Sub spdVar_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo spdVar_KeyDown_Error

If Opt = "add" Or Opt = "mod" Then
  If spdVar.ActiveCol = IBillrate And (KeyCode = 9 Or KeyCode = 13) Then
                   If val(GetText(spdVar, IBillrate, spdVar.ActiveRow)) > val(GetText(spdVar, Icandyrate, spdVar.ActiveRow)) Then
'                        MsgBox "Bill Rate entry cannot be greater than PO Rate ", vbInformation, head
'                        spdVar.SetText IBillrate, spdVar.ActiveRow, CStr(val(GetText(spdVar, Icandyrate, spdVar.ActiveRow)))
'                        Exit Sub
                         If MsgBox("Entered Bill Rate is greater than PO Rate" & vbCrLf & "Do you want continue..", vbQuestion + vbYesNo, head) = vbNo Then
                            Exit Sub
                         End If
                        
                        
                   End If
                Call LotCalculation
                
    End If

End If

   If KeyCode = vbKeyF5 Then
        FbDisRate = 0
        FBDisvalue = 0
        FrameDiscType.Visible = True
        FrameDiscType.ZOrder
        Call SETDISCTYPEHead
        Set Rs = New Recordset
        Rs.Open "SELECT * from RM_LotDiscntRate   a left join RM_DiscountType b on a.dtype=b.code where Varcode='" & Trim(GetText(spdVar, IVarcode, spdVar.ActiveRow)) & "' and lotno='" & val(GetText(spdVar, ILotNo, spdVar.ActiveRow)) & "' and ContNo='" & val(GetText(spdVar, IContNum, spdVar.ActiveRow)) & "' and Contdt='" & Format(GetText(spdVar, IContdate, spdVar.ActiveRow), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(81).Text) & "'  and a.divcode='" & Divcode & "' ", DB, adOpenStatic
        r1 = 0
        With SPDDiscTypeDet
            If Not Rs.EOF Then
                For I = 0 To Rs.RecordCount
                    If Not Rs.EOF Then
                        r1 = r1 + 1
                        .MaxRows = r1
                        .SetText SPDDTSNO, r1, r1
                        .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
                        .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
                        .SetText SPDDTDocno, r1, Rs.Fields("docno")
                        .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
                        .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                        .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                        .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                        .SetText SPDDTDRate, r1, Rs.Fields("DRate")
'                        If Opt = "add" Then
'                           If optMILL = True Then
'                            .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Imnetwt, spdVar.ActiveRow)), "00.00")
'                           ElseIf OptCommercialWt = True Then
'                                 SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, spdVar.ActiveRow)), "00.00")
'                           Else
'                                 .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Ipnetwt, spdVar.ActiveRow)), "00.00")
'                           End If
'                        Else
                            .SetText SPDDTDValue, r1, Rs.Fields("Disc_Amt")
                    '    End If
                            FbDisRate = FbDisRate + val(Rs.Fields("DRate") & "")
                            FBDisvalue = FBDisvalue + val(GetText(SPDDiscTypeDet, SPDDTDValue, r1) & "")
                                                   
                            Rs.MoveNext
                        End If
                    Next
                End If
                     ' SpdPrd.MaxRows = SpdPrd.MaxRows + 1
             End With
            FrameDiscType.Visible = True
            FrameDiscType.Enabled = True
            SPDDiscTypeDet.EditMode = True
            SPDDiscTypeDet.Enabled = True
'
'
'                                spdVar.SetText IDiscRate, spdVar.ActiveRow, Format(FbDisRate, "00.00")
'                                spdVar.SetText IDiscAmt, spdVar.ActiveRow, Format(FBDisvalue, "00.00")
''                                txtfields(126).Text = Format(FbDisRate, "00.00")
''                                txtfields(127).Text = Format(FBDisvalue, "00.00")
                                'SpdPrd.SetFocus
       Exit Sub
   End If


Exit Sub
spdVar_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
        Dim dutyval, dutywgt, CGSTAMTD, SGSTAMTD, IGSTAMTD As Double
         dutyval = 0: dutywgt = 0: CGSTAMTD = 0: SGSTAMTD = 0: IGSTAMTD = 0
         
    If spdVar.Col = IBillrate Then
                   If val(GetText(spdVar, IBillrate, Row)) > val(GetText(spdVar, Icandyrate, Row)) Then
                       ' MsgBox "Bill Rate entry cannot be greater than PO Rate ", vbInformation, head
                        'spdVar.SetText IBillrate, Row, CStr(val(GetText(spdVar, Icandyrate, Row)))
'                        spdVar.Col = IRebate
'                        spdVar.SetFocus
'                        Exit Sub
                   End If

                Call LotCalculation
                
    End If
         
          If Col = Idutywt Then
                For I = 1 To spdVar.MaxRows
                   
                        If val(GetText(spdVar, Idutywt, I)) > 0 Then
                           
                            
                             'Assvalue1 = Round((val(GetText(spdVar, Idutywt, I)) * val(GetText(spdVar, Icandyrate, I))), 4) * val(GetText(spdVar, IEXRATE, I)) 'sasi 19.8.20
                             
                             Assvalue1 = Round((val(GetText(spdVar, Idutywt, I)) * val(GetText(spdVar, IBillrate, I))), 4) * val(GetText(spdVar, IEXRATE, I))
        
                            spdVar.SetText IdutyValue, I, CStr(Assvalue1)
                            
                       
                        
                        End If
                Next
                Call LotCalculation
             
            End If
            
            
                For I = 1 To spdVar.MaxRows
                        dutywgt = dutywgt + val(GetText(spdVar, Idutywt, I))
                            CGSTAMTD = CGSTAMTD + val(GetText(spdVar, ICGSTAMT, I))
                            SGSTAMTD = SGSTAMTD + val(GetText(spdVar, ISGSTAMT, I))
                            IGSTAMTD = IGSTAMTD + val(GetText(spdVar, IIGSTAMT, I))
                            dutyval = dutyval + val(GetText(spdVar, IdutyValue, I))
 
                Next
                   txtfields(107).Text = Format(CStr(val(dutywgt)), "##.000")
                txtfields(110).Text = Format(CStr(val(dutyval)), "##.00")
                
                txtfields(118).Text = Format(CStr(val(CGSTAMTD)), "##.00")
                txtfields(117).Text = Format(CStr(val(SGSTAMTD)), "##.00")
                txtfields(116).Text = Format(CStr(val(IGSTAMTD)), "##.00")
                txtfields(55).Text = Format(CStr(val(CGSTAMTD + SGSTAMTD + IGSTAMTD)), "##.000")
                
                 If Left(Combo3.Text, 1) = "A" Then
                        txtfields(55).Text = "0"
                        txtfields(118).Text = "0"
                        txtfields(117).Text = "0"
                        txtfields(116).Text = "0"
                End If
            
            
           
End If


End Sub

Private Sub spdVar_LostFocus()
If Opt = "add" Or Opt = "mod" Then
  If spdVar.ActiveCol = IBillrate Then
                   If val(GetText(spdVar, IBillrate, spdVar.ActiveRow)) > val(GetText(spdVar, Icandyrate, spdVar.ActiveRow)) Then
'                        MsgBox "Bill Rate entry cannot be greater than PO Rate ", vbInformation, head
'                        spdVar.SetText IBillrate, spdVar.ActiveRow, CStr(val(GetText(spdVar, Icandyrate, spdVar.ActiveRow)))
'                        Exit Sub
                        If MsgBox("Entered Bill Rate is greater than PO Rate" & vbCrLf & "Do you want continue..", vbQuestion + vbYesNo, head) = vbNo Then
                            Exit Sub
                        End If

                   End If
                Call LotCalculation
                
    End If

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
    Call LotCalculation
    Call LANDEDCOST(dAssValue)
    Call fBillValue(dAssValue)
    Call DRCRAmt
End Sub

Private Sub txtAdjValue_Validate(Cancel As Boolean)
On Error GoTo txtAdjValue_Validate_Error

    txtAdjValue.Text = Format(txtAdjValue.Text, "0.00")
'    Txtfields(78).Text = Format(Val(txtfields(7).Text) + Val(txtAdjValue.Text), "0.00")
    Call LotAmountAssign(val(txtAdjValue.Text), Iround, iRow)
   ' Call LotAmountAssign(val(txtAdjValue.Text), Iround, irow)
   
'    Call LotCalculation
'    Call DRCRAmt
Exit Sub
txtAdjValue_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtAdjValue_Validate of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub txtDBCRNt_Change()
    txtDBCRNt.Text = Format(val(txtDBCRNt.Text), "0.00")
    
If Opt = "add" Or Opt = "mod" Then
    
      dtotKgs = 0
    'For I = 1 To spdVar.MaxRows
    '    dtotKgs = dtotKgs + val(GetText(spdVar, Ipnetwt, I))
    'Next
        If Check1.value = 0 Then
            If Trim(ValueFLG) = "S" Then
                    dtotKgs = Round(val(txtfields(9)), 4)
            Else
                    dtotKgs = Round(val(txtfields(50)), 4)
            End If
        Else
            If val(txtfields(98).Text) > 0 Then
                    dtotKgs = val(txtfields(98))
            Else
                  dtotKgs = Round(val(txtfields(9)), 4)
            End If
        End If
    For I = 1 To spdVar.MaxRows
        If dtotKgs > 0 Then
            If Check1.value = 0 Then
                If Trim(ValueFLG) = "S" Then
                    spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Ipnetwt, I)), "0.00"))
                Else
                    spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Imnetwt, I)), "0.00"))
                End If
            Else
                If val(txtfields(98).Text) > 0 Then
                    spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, ICOMMWt, I)), "0.00"))
                Else
                    spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Ipnetwt, I)), "0.00"))
                End If
            End If
       End If
    Next
End If
End Sub

Private Sub txtDBCRNt_KeyPress(KeyAscii As Integer)
    Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
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

'Case 133
'    TXTFIELDS(7).Text = val(TXTFIELDS(7).Text) + val(TXTFIELDS(133).Text)
    
Case 96
        If UCase(Trim(CustID)) = "SOUTHERN" And val(txtfields(96) & "") > 0 Then
        
            Set rsP1 = New Recordset
            rsP1.Open "select isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
            tcsLandflg = rsP1(0)
            If tcsLandflg = "Y" Then
                txtfields(76).Text = Format(Round((val(txtfields(96)) - val(txtfields(123))) / val(txtfields(50)), 4), "0.0000")
            Else
                txtfields(76).Text = Format(Round(val(txtfields(96)) / val(txtfields(50)), 4), "0.0000")
            End If
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
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
    If Index = 304 Then
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        txtfields(304).Text = Rs(0)
        Call LotCalculation
    End If
    If Index = 133 And tmpass = 0 Then
        tmpass = txtfields(7).Text
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
On Error GoTo TXTFIELDS_KeyPress_Error
intervalMinutes = -1
If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index

    Case 112, 113, 114, 119
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 3)
    Case 96
        Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 12, 2)
    Case 108
        Call ToNumberAssign(txtfields(Index), 9, KeyAscii, 12, 2)
'    Case 304
'        Call ToAlphaNumber(txtFields(Index), 15, KeyAscii)
    Case 6
        txtfields(6).Enabled = True
        txtfields(6).Locked = False
        Call ToAlphaNumber(txtfields(Index), 18, KeyAscii)
    Case 57
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 3)
    Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 59, 61
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
    Case 54, 38, 75, 65, 73, 71, 55, 87, 51, 43, 58, 60, 62, 70, 63, 64, 69, 66, 41, 67, 82, 78, 35, 7, 4, 77
        Call ToNumberAssign(txtfields(Index), 6, KeyAscii, 6, 2)
    Case 47
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
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
Call fBillValue(dAssValue)
If Index = 133 Then
'    ttmp = val(TXTFIELDS(7).Text) + val(TXTFIELDS(133).Text)
    ttmp = val(tmpass) + val(txtfields(133).Text)
    txtfields(7).Text = ttmp
End If
Call TaxCalc


Call DRCRAmt
Select Case Index
Case 133
    Call LotCalculation
    Call LANDEDCOST(val(txtfields(7).Text))
    Call fBillValue(dAssValue)
    Call DRCRAmt
Case 130

    Call LotCalculation
    Call LANDEDCOST(val(txtfields(7).Text))
    Call fBillValue(dAssValue)
    Call DRCRAmt

Case 119

  Call LotCalculation
    Call LANDEDCOST(val(txtfields(7).Text))
    Call fBillValue(dAssValue)
    Call DRCRAmt

Case 108
    Call LotCalculation
    Call LANDEDCOST(val(txtfields(7).Text))
    Call fBillValue(dAssValue)
    Call DRCRAmt
Case 112
     If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
     Else
     txtfields(Index).Text = ""
     MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
     txtfields(Index).SetFocus
     Exit Sub
     End If
     Call LotCalculation
   
Case 113
     If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
     Else
     txtfields(Index).Text = ""
     MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
     txtfields(Index).SetFocus
     Exit Sub
     End If
      Call LotCalculation
   
Case 114
     If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
     Else
     txtfields(Index).Text = ""
     MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
     txtfields(Index).SetFocus
     Exit Sub
     End If
    
    Call LotCalculation
   


Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 57, 59, 61, 103, 105
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
'            txtfields(76).Text = Format(Round(val(txtfields(96)) / val(txtfields(50)), 4), "0.0000")
            Set rsP1 = New Recordset
            rsP1.Open "select isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
            tcsLandflg = rsP1(0)
            If tcsLandflg = "Y" Then
                txtfields(76).Text = Format(Round((val(txtfields(96)) - val(txtfields(123))) / val(txtfields(50)), 4), "0.0000")
            Else
                txtfields(76).Text = Format(Round(val(txtfields(96)) / val(txtfields(50)), 4), "0.0000")
            End If
            
        Else
            'txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(50)), 4), "0.0000") ''sasi 30.1.18
            If Check1.value = 0 Then
                If Trim(ValueFLG) = "S" Then
                txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(9)), 4), "0.0000")
                Else
                txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(50)), 4), "0.0000")
                End If
            Else
                If val(txtfields(98).Text) > 0 Then
                    txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(98)), 4), "0.0000")
                End If
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
                Call LotCalculation
        
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
Case 39
    Call LotCalculation
    Call LANDEDCOST(dAssValue)
    Call fBillValue(dAssValue)
Case 103, 105, 54, 85, 38, 75, 73, 71, 65, 55, 77, 87, 51, 43, 58, 60, 62, 63, 70, 64, 66, 67, 69, 82, 78, 76, 35, 47, 7, 41, 91, 97
Dim dblLandedCost As Double
Call LotCalculation
Call LANDEDCOST(dAssValue)
Call fBillValue(dAssValue)

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
     
'Case 300
'        If txtFields(300).Text = "" Then
'            MsgBox " Transaction Type cannot be empty ", vbInformation
'            txtFields(300).Locked = False
'            txtFields(300).SetFocus
'        Exit Sub
'
'        End If
' Case 302
'           If txtFields(302).Text = "" Then
'               MsgBox " Transaction Type cannot be empty ", vbInformation
'               txtFields(302).SetFocus
'                Exit Sub
               
'           End If
 Case 124
            Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
'        Txtfields(35).Text = val(Txtfields(35).Text) - val(Txtfields(123).Text)
'        If vatflg = "Y" Then
'           Txtfields(123).Text = Round(((val(Txtfields(35).Text) + val(Txtfields(116).Text) + val(Txtfields(117).Text) + val(Txtfields(118).Text)) * val(Txtfields(124).Text)) / 100, 2)
'        Else
'            Txtfields(123).Text = Round((val(Txtfields(35).Text) * val(Txtfields(124).Text)) / 100, 2)
'        End If
'
'          Txtfields(35).Text = val(Txtfields(35).Text) + val(Txtfields(123).Text)
'totld = 0
'totld = val(Txtfields(78).Text)
'If vatflg = "Y" Then
'  totld = totld + val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text)
'End If
'     Txtfields(123).Text = Round((val(totld) * val(Txtfields(124).Text)) / 100, 2)

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
BUTTON(4).Enabled = True
BUTTON(11).Enabled = True
Label8(7).Visible = False
    Set Rs = New Recordset
     Rs.Open "SELECT isnull(WeightFlg,'S')  WeightFlg,isnull(BValInLotFlg,'Y') BVLotUpdateFlg  FROM RM_PARAM", DB, adOpenStatic
    If Not Rs.EOF Then
        ValueFLG = Trim(Rs(0))
        BVLotUpdateFlg = Rs(1)
     End If

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True
  Set adoPrimaryRS = New Recordset
  
  
'  adoPrimaryRS.Open "SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,AEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,case when weightflg='M' then GRSWGT else pgrswt end as grswt,case when weightflg ='M' then A.TAREWT else ptarewt end as tarewt,case when weightflg='M' then A.NETWT else pnetwt end as netwt,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PTYPE,PJNO,PJDT,PJTC,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,AdjValue,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,billno,billdt,Assvalue,form_type,dutyclaimable,dutyper,OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,pnetwt  FROM RM_LOT A  " & _
'                    "WHERE ISNULL(PJNO,0)<>0 AND A.DIVCODE = '" & Divcode & "' and  A.PJDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
'
   adoPrimaryRS.Open "SELECT DISTINCT  pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' and pjdt between dateadd(day,-30,'" & Format(pdate, "yyyy-mm-dd") & "') AND '" & Format(pdate, "yyyy-mm-dd") & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and pjno is not  null order by pjdt desc,pjno desc", DB, adOpenStatic, adLockBatchOptimistic
    
    
    If Not adoPrimaryRS.EOF Then
      'adoPrimaryRS.MoveLast
      
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
    If CustID = "COTTON1" Then
        Call FORAmtCalculationSCM
    End If
Select Case Index
Case 96
 txtfields(96).Text = Format(txtfields(96).Text, "0.00")
    Case 112
        If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
        Else
        txtfields(Index).Text = ""
        MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
        txtfields(Index).SetFocus
        Exit Sub
        End If
        Call LotAmountAssign(val(txtfields(Index).Text), IACGSTAMT, iRow)
       Call LotCalculation
    Case 113
        If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
        
        Else
         txtfields(Index).Text = ""
         MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
         txtfields(Index).SetFocus
         Exit Sub
         End If
         Call LotAmountAssign(val(txtfields(Index).Text), IASGSTAMT, iRow)
         Call LotCalculation
    Case 114
        If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
        Else
        txtfields(Index).Text = ""
        MsgBox "GST Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
        txtfields(Index).SetFocus
        Exit Sub
        End If
        Call LotAmountAssign(val(txtfields(Index).Text), IAIGSTAMT, iRow)
        Call LotCalculation
    Case 126
        If val(txtfields(Index).Text) < (0.99) And val(txtfields(Index).Text) > (-0.99) Then
        Else
        txtfields(Index).Text = ""
        MsgBox "TCS Adjustment Amount Shoud be -99 to .99 ", vbInformation, head
        txtfields(Index).SetFocus
        Exit Sub
        End If
        Call LotAmountAssign(val(txtfields(Index).Text), IATCSAMT, iRow)
        Call LotCalculation
    Case 129
    
        Call LotAmountAssign(val(txtfields(Index).Text), ITDSPER, iRow)
        Call LotCalculation
    Case 127
         Call LotCalculation
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
        Call LotAmountAssign(Round(val(txtfields(Index).Text), 0), IInsamt, iRow)
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
        
    Case 123
        Call LotAmountAssign(val(txtfields(123).Text), itcsamt, iRow)
'    Case 107
'        Call LotAmountAssign(val(txtFields(Index).Text), Idutywt, irow)
'        txtFields(110).Text = Format(val(txtFields(107).Text) * val(txtFields(108).Text), "##.00")
        
'    Case 104
'        Call LotAmountAssign(val(txtFields(Index).Text), IWELFAREAMT, irow)
'    Case 105
'        Call LotValueAssign(val(txtFields(Index).Text), IWELFAREPER)
'
'    Case 99
'        Call LotAmountAssign(val(txtFields(Index).Text), IIDAMT, irow)
'    Case 103
      
    Case 124
        Call LotValueAssign(val(txtfields(Index).Text), itcsper)
        Call LotCalculation
    Case 108
        Call LotValueAssign(val(txtfields(Index).Text), IEXRATE)
    Case 111
        Call LotAmountAssign(val(txtfields(Index).Text), IAdvAmt, iRow)
    Case 41
        Call CSTTaxCalc
        Call OtherTaxCal
        Call TaxCalc
        Call AddTaxCalc
        Call LotAmountAssign(val(txtfields(41).Text), IOthTaxableAmt, iRow)
        Exit Sub
    Case 67
        Call LotAmountAssign(val(txtfields(67).Text), IOthers, iRow)
        Call LotCalculation
    Case 125
        Call LotAmountAssign(val(txtfields(125).Text), Ishipchrg, iRow)
        Call LotCalculation
    Case 88
        If val(txtfields(75).Text) = 0 Then
            If UCase(delivery) = "F" Then
                txtfields(75).Text = Round(val(txtfields(88).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(13).Text))) / 100, BED_ROFF)
            Else
                txtfields(75).Text = Round(val(txtfields(88).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text))) / 100, BED_ROFF)
            End If
        End If
        Call LotValueAssign(val(txtfields(88).Text), IBedper)
        Exit Sub
    Case 57
        Dim rspara As New Recordset
        rspara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
        If (rspara.BOF And rspara.EOF) = False Then
            If val(txtfields(58).Text) = 0 Then
                If rspara("InsCalAssvalflg") = "N" Then
                    txtfields(58).Text = Round(((val(txtfields(7).Text) + val(txtfields(60).Text)) * val(txtfields(57).Text) / 100), 0)
                Else
                    txtfields(58).Text = Round(val(txtfields(7).Text) * (val(txtfields(57).Text) / 100), 0)
                End If
            End If
        End If
        rspara.Close
        Set rspara = Nothing
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
                If val(txtfields(65).Text) = 0 Then txtfields(65).Text = Round(val(txtfields(68).Text) * (val(dAssValue) - val(txtfields(54).Text) - val(txtfields(121).Text) + val(txtfields(13).Text) + val(txtfields(73).Text) + val(txtfields(71).Text)) / 100, CESS_ROFF)
            Else
                If val(txtfields(65).Text) = 0 Then txtfields(65).Text = Round(val(txtfields(68).Text) * (val(dAssValue) - val(txtfields(54).Text) - val(txtfields(121).Text) + val(txtfields(73).Text) + val(txtfields(71).Text)) / 100, CESS_ROFF)
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
            
            
    Case 103
            If val(txtfields(103).Text) <> 0 Then
               If val(txtfields(107).Text) > 0 Then
                 Set rsPara1 = New Recordset
                 
                 rsPara1.Open "select isnull(RID_Roff,0) RID_Roff from rm_param ", DB, adOpenStatic
                 
                    txtfields(99).Text = Format(Round(val(txtfields(103).Text) * (val(txtfields(110).Text) + val(txtfields(58).Text)) / 100, rsPara1(0)), "00.00")
               Else
                    Set rsPara1 = New Recordset
                   rsPara1.Open "select isnull(RID_Roff,0) RID_Roff from rm_param ", DB, adOpenStatic
                    txtfields(99).Text = Format(Round(val(txtfields(103).Text) * (val(txtfields(7).Text) + val(txtfields(58).Text)) / 100, rsPara1(0)), "00.00")
               End If
            End If
            Call LotValueAssign(val(txtfields(103).Text), IIDPER)
            Call LotCalculation
            Exit Sub
    Case 119
            If val(txtfields(119).Text) <> 0 Then
          '  Call LotValueAssign(val(txtfields(119).Text), IIDPER)
                Call LotValueAssign(val(txtfields(119).Text), IAntDumPer)
                Call LotCalculation
              
            End If
    Case 105
            
            If val(txtfields(105).Text) <> 0 Then
                Set rsPara1 = New Recordset
                rsPara1.Open "select isnull(RSW_Roff,0) RSW_Roff from rm_param ", DB, adOpenStatic
            
             txtfields(104).Text = Format(Round(val(txtfields(105).Text) * val(txtfields(99).Text) / 100, rsPara1(0)), "00.00")
            End If
            Call LotValueAssign(val(txtfields(105).Text), IWELFAREPER)
            Call LotCalculation
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
                    LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a,RM_param_FA b where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "'"
                    LookUp.DefCol = "Transaction Type Head"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Transaction Type Listing"
                    LookUp.Show vbModal
                    
                    If LookUp.Cancel = False Then
                      txtfields(300).Text = LookUp.Fields(0)
                      txtfields(301).Text = LookUp.Fields(1)
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
    Dim TRs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    TRs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "'", TDb, adOpenStatic, adLockReadOnly
    If TRs.RecordCount > 0 Then
        TRs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    TRs.Close
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

Rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality,a.penalty,a.interest from rm_lot a  inner join rm_arrival b on a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno inner join rm_cat c on a.catcd=c.catcd inner join fa_slmas d on a.supcd=d.slcode left join  fa_slmas e on a.brkcd = e.slcode inner join rm_area f on f.areacode=a.areacd where  " & _
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
    If UCase(CustID) = "SJS" Then
    txtfields(7).Text = Format(Assvalue - (val(txtfields(54)) + val(txtfields(85))), "0.00")
    
    End If
    
    
    
    
    If Rs(0) = "Y" And Rs(1) = "Y" Then
       If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
       Else
        If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
          'If Left(Combo3.Text, 1) = "L" Then
                txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
'          Else
'                txtFields(47).Text = Format(Assvalue + val(txtFields(51)) + val(txtFields(75)) + val(txtFields(73)) + val(txtFields(71)) + val(txtFields(65)) + val(txtFields(63)) + val(txtFields(64)) + val(txtFields(66)) + val(txtFields(67)) + val(txtFields(69)) + val(txtFields(55)) + val(txtFields(93)) + val(txtFields(77)) + val(txtFields(87)) + val(txtFields(41)) + val(txtFields(58)) + val(txtFields(60)) + val(txtAdjValue.Text) - (val(txtFields(54)) + val(txtFields(85)) + val(txtFields(97))), "0.00")
'          End If
            
        End If
       End If
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
          If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
          Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
          End If
        End If
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
        If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        End If
        End If
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
        If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(123)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        Else
            txtfields(47).Text = Format(Assvalue + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(93)) + val(txtfields(77)) + val(TxtIincidentAmt.Text) + val(TxtSpotExpenseAmt.Text) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(123)) + val(txtfields(58)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121)) + val(txtfields(85)) + val(txtfields(97))), "0.00")
        End If
        End If
    End If
    
    txtfields(47).Text = Format(KSLRound(val(txtfields(47).Text), LANDCOST_ROFF), "0.00")
    
    dtotKgs = 0
'For I = 1 To spdVar.MaxRows
'    dtotKgs = dtotKgs + val(GetText(spdVar, Ipnetwt, I))
'Next
    If Check1.value = 0 Then
        If Trim(ValueFLG) = "S" Then
                dtotKgs = Round(val(txtfields(9)), 4)
        Else
                dtotKgs = Round(val(txtfields(50)), 4)
        End If
    Else
        If val(txtfields(98).Text) > 0 Then
                dtotKgs = val(txtfields(98))
        Else
              dtotKgs = Round(val(txtfields(9)), 4)
        End If
    End If
For I = 1 To spdVar.MaxRows
    If dtotKgs > 0 Then
        If Check1.value = 0 Then
            If Trim(ValueFLG) = "S" Then
                spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Ipnetwt, I)), "0.00"))
            Else
                spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Imnetwt, I)), "0.00"))
            End If
        Else
            If val(txtfields(98).Text) > 0 Then
                spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, ICOMMWt, I)), "0.00"))
            Else
                spdVar.SetText IFbillvalue, I, CStr(Format(val(txtfields(47).Text) / dtotKgs * val(GetText(spdVar, Ipnetwt, I)), "0.00"))
            End If
        End If
   End If
Next
   Call TDS_Calculation
     
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
KSLLIST1.listfield1 = "Lotno"
KSLLIST1.Description = lotdate
KSLLIST1.listfield1 = "Lotno"

Select Case KSLLIST1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    txtfields(83).Text = KSLLIST1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & txtfields(83).Text & "'", DB
    txtfields(56).Text = val(newrs1(0))  'taxper
    txtfields(55).Text = val(txtfields(7).Text) * val(txtfields(56).Text) / 100
    txtfields(94).Text = val(newrs1(1))  'SCper
    txtfields(93).Text = val(txtfields(55).Text) * val(txtfields(94).Text) / 100
    txtfields(55).SetFocus

Case "Lotno"
If KSLLIST1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,CASE WHEN WEIGHTfLG='M' THEN GRSWGT ELSE PGRSWT END AS GRSWT,CASE WHEN WEIGHTFLG='M' THEN TAREWT ELSE PTAREWT END AS TAREWT,CASE WHEN WEIGHTFLG='M' THEN NETWT ELSE PNETWT END AS NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt " & _
                    " ,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,Dutyper,DiscountFlg, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,PNETWT,be_no,be_date,Advance_amt,AntyDumperkg,AntyDumAmt,penalty,interest " & _
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
   If globalarrivalorder = "C" Then
         Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where  " _
            & " b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(lotno) & " and c.lotdt='" & Format(lotdate, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and b.divcode=c.divcode and    b.divcode='" & Divcode & "' and (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and A.im_ind='I'))) ", DB, adOpenStatic
  Else
        Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
                 & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
                 & " and a.contdt=b.contdt and C.Lotno=" & Trim(lotno) & " and c.lotdt='" & Format(lotdate, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
  End If
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
    txtfields(300).Text = KSLLIST1.Code
    txtfields(301).Text = KSLLIST1.Description
    txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    txtfields(300).Text = KSLLIST1.Code
    txtfields(301).Text = KSLLIST1.Description
    txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    txtfields(302).Text = KSLLIST1.Code
    txtfields(303).Text = KSLLIST1.Description
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

If Opt = "add" Or Opt = "mod" Then
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
 dShippingCharges = 0
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
 DSGSTAMT1 = 0
 DCGSTAMT1 = 0
 DIGSTAMT1 = 0
 DantiDumAmt = 0
 DTCSAMT1 = 0
 Totincident = 0
 totspotexpense = 0
 

    dShippingCharges = val(txtfields(125).Text)
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
    dIDAmt = val(txtfields(99).Text)
    dSWelfare = val(txtfields(104).Text)
    DantiDumAmt = val(txtfields(115).Text)
    dTax = val(txtfields(55))
    DTotDiscAmt = val(txtfields(121))
    TCSLANCOST = val(txtfields(123).Text)
    dFbillValue = 0
     
                If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(txtincidentcharge.Text)
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(txtincidentcharge.Text))
               Else
                    totspotexpense = 0
               End If

                Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100


        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N') Vatflg,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        tcsLandflg = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
            tcsLandflg = rsP(1)
        End If

        If tcsLandflg = "Y" Then
            TCSLANCOST = 0
        End If
'val (Txtfields(82))
'+dIDAmt+dSWelfare

        dblLandedCost = 0
        dblDuty = 0
        s = 0
        If opt_c.value = True Then
            s = val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65))
            dblDuty = s * (100 - val(txtfields(109))) / 100
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - DTotDiscAmt - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dShippingCharges + dCustoms + dBrokerComm + dAddTax + DantiDumAmt + TCSLANCOST
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - DTotDiscAmt - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dShippingCharges + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt + dIDAmt + dSWelfare + DantiDumAmt + TCSLANCOST
            End If
        Else
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - DTotDiscAmt - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dShippingCharges + dCustoms + dBrokerComm + dAddTax + DantiDumAmt + TCSLANCOST
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - DTotDiscAmt - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dShippingCharges + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt + dIDAmt + dSWelfare + DantiDumAmt + TCSLANCOST
            End If
        End If
'        TCSLANCOST = 0
'          Set rsP1 = New Recordset
'             rsP1.Open "select isnull(tcstax,'Y') tcstax  FROM RM_PARAM", DB, adOpenStatic
'                If rsP1("tcstax") = "Y" Then
'                     TCSLANCOST = dblLandedCost
'                Else
'                     TCSLANCOST = dblLandedCost - dTax
'                End If
'               If UCase(delivery) = "S" Then
'                TCSLANCOST = TCSLANCOST - dLryFgt
'               End If
'
'                If val(Txtfields(124).Text) > 0 Then
'                    Txtfields(123).Text = Format(Round(TCSLANCOST * (val(Txtfields(124).Text) / 100), ATCS_ROFF), "00.00")
'                 End If
       '  dblLandedCost = dblLandedCost
               
        txtfields(35).Text = Format(KSLRound(val(dblLandedCost), LANDCOST_ROFF), "0.00")
        

        Set RS2 = New Recordset
        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Trim(txtfields(83).Text) & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
                dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dTax - dSC
            End If
        Else
           ' dblLandedCost = dblLandedCost ''sasi 30.6.17
          ' dblLandedCost = dblLandedCost - dTax - dSC
            
        End If
        
            Set RS2 = New Recordset
            RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtfields(42).Text & "'", DB, adOpenStatic
        If Not RS2.EOF Then
            If RS2(0) = "N" Then
               dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dAddTax
            End If
        Else
            'dblLandedCost = dblLandedCost ''sasi 30.6.17
                 dblLandedCost = dblLandedCost - dAddTax
        End If
        
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  Vatflg,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        tcsLandflg = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
             tcsLandflg = rsP(1)
        End If
        
        
      
      If EXIST_VAT(txtfields(26).Text) = True And VATFLG = "Y" Then
            'txtFields(78).Text = val(txtFields(78).Text) - val(txtFields(55).Text)
      End If
      If tcsLandflg = "Y" Then
      End If
      txtfields(78).Text = Format(KSLRound(val(dblLandedCost), LANDCOST_ROFF), "0.00")
      intervalMinutes = -1
End If
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
                    txtfields(51).Text = Round(val(txtfields(52).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF)
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
                    txtfields(51).Text = Round(val(txtfields(52).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF)
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
                    txtfields(87).Text = Round(val(txtfields(86).Text) * ((val(dAssValue) + val(txtfields(60).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF)
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
                    txtfields(87).Text = Round(val(txtfields(86).Text) * (val(dAssValue) + val(txtfields(41).Text) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF)
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


intervalMinutes = -1
    If Left(Combo3.Text, 1) = "A" Then
            txtfields(55).Text = "0"
            txtfields(118).Text = "0"
            txtfields(117).Text = "0"
            txtfields(116).Text = "0"
            Exit Sub
    End If
  Exit Sub
    Dim CessAmtTax As Double
    CessAmtTax = 0
    cflg = "N"
    Set rstParameter1 = New Recordset
    rstParameter1.Open "Select isnull(CessCalCulateTax,'N') CessCalCulateTax From Rm_param", DB, adOpenStatic
    If rstParameter1.EOF = False Then
        cflg = rstParameter1(0)
    End If
    If cflg = "Y" Then
        CessAmtTax = val(txtfields(65).Text)
    End If
   
   
   ' If val(txtFields(55).Text) = 0 Then
    If optAfter = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
            If delivery = "S" Then
'             TXTFIELDS(118).Text = Format(Round(Format(Round(val(TXTFIELDS(100).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'             TXTFIELDS(117).Text = Format(Round(Format(Round(val(TXTFIELDS(101).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'             TXTFIELDS(116).Text = Format(Round(Format(Round(val(TXTFIELDS(102).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
             
             txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
             txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
             txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
             
              txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "00.00")
           Else
'              a = val(dAssValue) - ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(65).Text))
'              TXTFIELDS(118).Text = Format(Round(Format(Round(val(TXTFIELDS(100).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'              TXTFIELDS(117).Text = Format(Round(Format(Round(val(TXTFIELDS(101).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'              TXTFIELDS(116).Text = Format(Round(Format(Round(val(TXTFIELDS(102).Text) * ((val(dAssValue) + val(TXTFIELDS(60).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(58))) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
              
              txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
              txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
              txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
              
               txtfields(55).Text = Format(Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), 0), "0.00")
           End If

        Else
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If


            If delivery = "S" Then
'              txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'              txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'              txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
'
              txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
              txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
              txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
              
              
              txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "00.00")
           Else
              a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'              txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'              txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'              txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
              
              txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
              txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
              txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
              
               txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "00.00")
           End If
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                If CustID = "COTTON" Then
'                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                    txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                Else
'                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                    txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                End If
'            End If

            If delivery = "S" Then
            
            If val(txtfields(107).Text) > 0 Then
'                dAssValue1 = val(txtfields(107).Text) * val(txtfields(108).Text)
'                dAssValue1 = val(txtfields(110).Text)
'
               ' txtFields(118).Text = Format(Round(Round(val(txtFields(100).Text) * ((val(dAssValue1) + val(txtFields(60).Text) + val(txtFields(41).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), CGST_ROFF), "0.00")
'                txtfields(118).Text = Format(Round(Round(val(txtfields(100).Text) * ((val(txtfields(110).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), CGST_ROFF), "0.00")
'                txtfields(117).Text = Format(Round(Round(val(txtfields(101).Text) * ((val(txtfields(110).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), SGST_ROFF), "0.00")
'                txtfields(116).Text = Format(Round(Round(val(txtfields(102).Text) * ((val(txtfields(110).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), IGST_ROFF), "0.00")
'                txtfields(118).Text = Format(Round(txtfields(118).Text, 0), "0.00")
'                txtfields(117).Text = Format(Round(txtfields(117).Text, 0), "0.00")
'                txtfields(116).Text = Format(Round(txtfields(116).Text, 0), "0.00")
        
                txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")

            Else
                If CustID = "COTTON" Then
'                    TXTFIELDS(118).Text = Format(Round(Round(val(TXTFIELDS(100).Text) * ((val(dAssValue) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(41).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115))) / 100, 2), CGST_ROFF), "0.00")
'                    TXTFIELDS(117).Text = Format(Round(Round(val(TXTFIELDS(101).Text) * ((val(dAssValue) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(41).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115))) / 100, 2), SGST_ROFF), "0.00")
'                    TXTFIELDS(116).Text = Format(Round(Round(val(TXTFIELDS(102).Text) * ((val(dAssValue) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(41).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115))) / 100, 2), IGST_ROFF), "0.00")
                    
'                    txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
'                    txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
'                    txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                Else
'                    txtfields(118).Text = Format(Round(Round(val(txtfields(100).Text) * ((val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), CGST_ROFF), "0.00")
'                    txtfields(117).Text = Format(Round(Round(val(txtfields(101).Text) * ((val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), SGST_ROFF), "0.00")
'                    txtfields(116).Text = Format(Round(Round(val(txtfields(102).Text) * ((val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), IGST_ROFF), "0.00")
                    
                    
                    
                    
                End If
                
                txtfields(118).Text = Format(Round(val(txtfields(118).Text), CGST_ROFF), "0.00")
                txtfields(117).Text = Format(Round(val(txtfields(117).Text), SGST_ROFF), "0.00")
                txtfields(116).Text = Format(Round(val(txtfields(116).Text), IGST_ROFF), "0.00")
'                TXTFIELDS(118).Text = Format(val(TXTFIELDS(118).Text) + val(TXTFIELDS(112).Text), "0.00")
'                TXTFIELDS(117).Text = Format(val(TXTFIELDS(117).Text) + val(TXTFIELDS(113).Text), "0.00")
'                TXTFIELDS(116).Text = Format(val(TXTFIELDS(116).Text) + val(TXTFIELDS(114).Text), "0.00")
                
                
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
            End If
            Else
'                If CustID = "COTTON" Then
'                    a = val(dAssValue) - ((val(txtFields(54).Text) + val(txtFields(85).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text))
'                    'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                    txtFields(118).Text = Format(Round(Format(Round(val(txtFields(100).Text) * ((val(dAssValue) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text)) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                    txtFields(117).Text = Format(Round(Format(Round(val(txtFields(101).Text) * ((val(dAssValue) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text)) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                    txtFields(116).Text = Format(Round(Format(Round(val(txtFields(102).Text) * ((val(dAssValue) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text)) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
'                    txtFields(55).Text = Format(val(txtFields(118).Text) + val(txtFields(117).Text) + val(txtFields(116).Text), "0.00")
'
'                Else
                    If val(txtfields(107).Text) > 0 Then
'                        dAssValue1 = val(txtFields(107).Text) * val(txtFields(108).Text)
'
'                         a = val(dAssValue) - ((val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text))
'                        ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'
'                         txtFields(118).Text = Format(Round(Format(Round(val(txtFields(100).Text) * ((val(dAssValue) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58)) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                         txtFields(117).Text = Format(Round(Format(Round(val(txtFields(101).Text) * ((val(dAssValue) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58)) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                         txtFields(116).Text = Format(Round(Format(Round(val(txtFields(102).Text) * ((val(dAssValue) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58)) + val(txtFields(60).Text) + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
'                         txtFields(55).Text = Format(val(txtFields(118).Text) + val(txtFields(117).Text) + val(txtFields(116).Text), "0.00")
                    Else
                          a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                        ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                         If UCase(CustID) = "COTTON" Then
'                            TXTFIELDS(118).Text = Format(Round(Format(Round(val(TXTFIELDS(100).Text) * ((val(dAssValue) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                            TXTFIELDS(117).Text = Format(Round(Format(Round(val(TXTFIELDS(101).Text) * ((val(dAssValue) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                            TXTFIELDS(116).Text = Format(Round(Format(Round(val(TXTFIELDS(102).Text) * ((val(dAssValue) + val(TXTFIELDS(99)) + val(TXTFIELDS(104)) + val(TXTFIELDS(115)) + val(TXTFIELDS(41).Text)) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(121).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(38).Text)) + val(TXTFIELDS(75).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                         Else
                         
'                            txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * ((val(dAssValue) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(58)) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                            txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * ((val(dAssValue) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(58)) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                            txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * ((val(dAssValue) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115)) + val(txtfields(58)) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                         End If
                        txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                        txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                        txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                         
                        txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                         
                    End If
                'End If
           End If


        Else
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
          If delivery = "S" Then
                 If val(txtfields(107).Text) > 0 Then
                      '  dAssValue1 = val(txtfields(107).Text) * val(txtfields(108).Text)
'
'                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF), "0.00")
'                        txtFields(118).Text = Format(Round(Format(Round(val(txtFields(100).Text) * (val(dAssValue1) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                        txtFields(117).Text = Format(Round(Format(Round(val(txtFields(101).Text) * (val(dAssValue1) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                        txtFields(116).Text = Format(Round(Format(Round(val(txtFields(102).Text) * (val(dAssValue1) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
'                        txtFields(55).Text = Format(Format(val(txtFields(118).Text) + val(txtFields(117).Text) + val(txtFields(116).Text), 0), "0.00")
                 Else
                 
                 If CustID = "COTTON" And UCase(CustID1) <> "SCM" Then
                        txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                        txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                        txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                        
                        txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                        txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                        txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                        txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                 Else
'                        txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                        txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                        txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(41).Text) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                        
                        txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                        txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                        txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                        txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                        
                 End If
                 
                End If

            Else
            
                If val(txtfields(107).Text) > 0 Then
'                    dAssValue1 = val(txtFields(107).Text) * val(txtFields(108).Text)
'                    a = val(dAssValue) - ((val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text))
'                    'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                    txtFields(118).Text = Format(Round(Format(Round(val(txtFields(100).Text) * (val(dAssValue1 + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                    txtFields(117).Text = Format(Round(Format(Round(val(txtFields(101).Text) * (val(dAssValue1 + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                    txtFields(116).Text = Format(Round(Format(Round(val(txtFields(102).Text) * (val(dAssValue1 + val(txtFields(41).Text)) - (val(txtFields(54).Text) + val(txtFields(85).Text) + val(txtFields(38).Text)) + val(txtFields(75).Text) + val(txtFields(71).Text) + val(txtFields(73).Text) + val(txtFields(65).Text) + val(txtFields(99)) + val(txtFields(104)) + val(txtFields(58))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
'                    txtFields(55).Text = Format(val(txtFields(118).Text) + val(txtFields(117).Text) + val(txtFields(116).Text), "0.00")
                    
                Else
                
                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                If CustID = "COTTON" And UCase(CustID1) <> "SCM" Then
                    txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                    txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                    txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                    
                    txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                    txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                    txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                    
                    txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                Else
'                    txtfields(118).Text = Format(Round(Format(Round(val(txtfields(100).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), CGST_ROFF), "0.00")
'                    txtfields(117).Text = Format(Round(Format(Round(val(txtfields(101).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), SGST_ROFF), "0.00")
'                    txtfields(116).Text = Format(Round(Format(Round(val(txtfields(102).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(CessAmtTax) + val(txtfields(99)) + val(txtfields(104)) + val(txtfields(58)) + val(txtfields(115))) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                    
                    txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                    txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                    txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
                    
                    txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
               
                End If
               
               End If
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
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
                txtfields(77).Text = Format(Round(val(txtfields(79).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(121).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    End If
End If
End Sub

Private Sub ReturnTransType()
   Dim TRs As New ADODB.Recordset
   If Trim(txtfields(300).Text) <> "" Then
      strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(txtfields(300).Text) & "'"
      TRs.Open strSQL, DB, adOpenStatic
      If TRs.EOF = False Then
         txtfields(301).Text = IIf(IsNull(TRs.Fields("TcHead").value), "", TRs.Fields("TcHead").value)
      End If
   End If
   Set TRs = Nothing
End Sub

Private Sub ReturnProcessType()
   Dim TRs As New ADODB.Recordset
   If Trim(txtfields(302).Text) <> "" Then
      strSQL = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(txtfields(302).Text) & "'"
      TRs.Open strSQL, DB, adOpenStatic
      If TRs.EOF = False Then
         txtfields(303).Text = IIf(IsNull(TRs.Fields("purChase Type Description").value), "", TRs.Fields("purChase Type Description").value)
      End If
   End If
   Set TRs = Nothing
End Sub

Private Sub StockOk_Click()
On Error GoTo StockOk_Click_Error
Dim lRow, I As Integer
Dim dblGrWt As Double
sInwardNo = ""
sInwardDate = ""

Chk_TDSFLAG.value = 0
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
     Call SET_MainDiscountHead
        iRow = 0
        
        dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
        GTax = "":          txtfields(56).Text = "":  dTax = 0:     dAddTax = 0:        dCashDis = 0:        dTradeDis = 0
        dSC = 0:            txtfields(94).Text = "":  dSCper = 0: dScamt = 0
        dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
        dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
        dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
        dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
        dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
        dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0:  dShippingCharges = 0
        dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0: DSICAAmt = 0: dCOMMWTWgt = 0: DTCSAMT = 0: DTotDiscRate = 0: DTotDiscAmt = 0:
        DADVAmt = 0: DDutyWgt = 0: DDutyAmt = 0: DTCSASSAMT = 0: dTDSAssAmt = 0: DTDSAmt = 0:
            DCGSTAMT = 0
            DSGSTAMT = 0
            DIGSTAMT = 0
            DACGSTAMT = 0
            DASGSTAMT = 0
            DAIGSTAMT = 0
            DATCSTAMT = 0
        Opt = ""
        Opt = "add"
        If STATEFLAG = "F" Then
           Chk_TDSFLAG.value = 0
           Chk_TDSFLAG.Enabled = False
        Else
           Chk_TDSFLAG.value = 1
           Chk_TDSFLAG.Enabled = True
        End If
        txtfields(132).Text = ""
        txtfields(131).Text = ""
        Set RSS = New Recordset
        RSS.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur,isnull(TDS_TYPE,'') TDS_TYPE from rm_PARAM b  ", DB, adOpenStatic
        If Not RSS.EOF Then
            TDSGRossFixed = RSS(1)
            TDSPERWP = RSS(0)
            TDSPERWOP = RSS(2)
            TDSCalcTotPur = RSS(3)
            txtfields(129).Text = Format(TDSPERWP, "#0.000")
            txtfields(132).Text = RSS(4)
            Set rsa = New Recordset
            rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(131).Text = rsa(1)
            End If
        End If
'        Set Rs222 = New Recordset
'        Rs222.Open "select isnull(pan,'') pan from fa_slmas a  where a.slcode='" & Trim(txtfields(81).Text) & "'", db, adOpenStatic
'        If Not Rs222.EOF Then

           ' If Len(Rs222("pan")) = 10 Then
'                txtfields(129).Text = Format(TDSPERWP, "#0.000")
'            Else
'                txtfields(129).Text = Format(TDSPERWOP, "#0.000")
'            End If
      '  End If
            
'             itcsper = 0
'            itcsamt = 0
         sCode = ""
         txtfields(83).Text = ""
         delivery = ""
         sBrkcd = ""
         dBrkComm = 0
         sTypeTruckbale = ""
            
            txtfields(112).Text = ""
            txtfields(113).Text = ""
            txtfields(125).Text = ""
            
            txtfields(114).Text = ""
            txtfields(126).Text = ""
    '================Broker check=
    Dim commercialtypecheck  As Integer
    commercialtypecheck = 0
     For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
         iRow = iRow + 1
         
            sLotno = ""
            sLotDt = ""
            sSLcode = ""
         
                        
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sSLcode = Trim(txtfields(81).Text)
        
            
            If globalarrivalorder = "C" Then
                Set Rs = New Recordset
                Rs.Open "select isnull(a.BRKCD,'') AS BRKCD,isnull(e.CommPer,0) AS CommPer,isnull(a.TypeTruckbale,'')TypeTruckbale from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND a.varcode=d.varcode and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and a.divcode=d.divcode and    d.divcode='" & Divcode & "' and (E.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I'))) ", DB, adOpenStatic
            Else
                Set Rs = New Recordset
                Rs.Open "select isnull(a.BRKCD,'') AS BRKCD,isnull(e.CommPer,0) AS CommPer,isnull(a.TypeTruckbale,'')TypeTruckbale from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND a.varcode=d.varcode AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "'", DB, adOpenStatic
            End If
            If Not Rs.EOF Then
                
               If Not sBrkcd = "" And Not sBrkcd = Rs("BRKCD") Then
                    MsgBox "Selected Lot Agent name not equal, So select same Aagent Lot No.(s) ", vbCritical, head
                    Exit Sub
               Else
                   sBrkcd = Rs("BRKCD")
               End If
               If Not sTypeTruckbale = "" And Not sTypeTruckbale = Rs("TypeTruckbale") Then
                    MsgBox "The selected Spot Expense Type of Truck or Bale is not equal. Please select the same type of Truck or Bale Lot No(s)", vbCritical, head
                    Exit Sub
               Else
                   sTypeTruckbale = Rs("TypeTruckbale")
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
            
            If globalarrivalorder = "C" Then
                Set Rs = New Recordset
                Rs.Open "select isnull(a.ComWt_Flg,'0') AS ComWt_Flg,isnull(TCS_CalcAssAmtFlag,1) TCS_CalcAssAmtFlag from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND a.varcode=d.varcode AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND   opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and a.divcode=d.divcode and    d.divcode='" & Divcode & "' and (E.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I'))) ", DB, adOpenStatic
            Else
                Set Rs = New Recordset
                Rs.Open "select isnull(a.ComWt_Flg,'0') AS ComWt_Flg,isnull(TCS_CalcAssAmtFlag,1) TCS_CalcAssAmtFlag from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.varcode=d.varcode AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "'", DB, adOpenStatic
            End If
            If Not Rs.EOF Then
                
               If Not ComWt_Flg = "" And Not ComWt_Flg = Rs("ComWt_Flg") Then
                    MsgBox "Commercial Weight Flag not equal, So select same Commercial Weight Flag Lot No.(s) ", vbCritical, head
                    Exit Sub
               Else
                   ComWt_Flg = Rs("ComWt_Flg")
               End If
              
                
               If Not TCS_CalcAssAmtFlag = "" And Not TCS_CalcAssAmtFlag = Rs("TCS_CalcAssAmtFlag") Then
                    MsgBox "Assesable TCS Caclculated Flag not equal, So select same Assesable TCS Caclulated Flag Lot No.(s) ", vbCritical, head
                    Exit Sub
               Else
                   TCS_CalcAssAmtFlag = Rs("TCS_CalcAssAmtFlag")
               End If
            '   Chk_TCSAssValFlg.Value = Rs("TCS_CalcAssAmtFlag")
               Check1.value = ComWt_Flg
               
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
            sVarcode = ""
            
            sVarname = ""
            sVarcode = ""
            
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sVarcode = Trim(Mid(LstPO.List(lRow), 1, 6))
            sSLcode = Trim(txtfields(81).Text)
            sVarname = Trim(Mid(LstPO.List(lRow), 25, 18))
            
            Set Rs = New Recordset
            If globalarrivalorder = "C" Then
                Rs.Open "select e.dlytype,a.ContNum,a.Contdate,a.varcode from rm_lot a,RM_ARRIVAL D,RM_CONT e,rm_var v  WHERE a.varcode=v.varcode and A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND a.varcode=d.varcode and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and a.divcode=d.divcode and    d.divcode='" & Divcode & "' and (e.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I'))) and v.varname like '%" & Left(Trim(sVarname), 15) & "%' ", DB, adOpenStatic
            Else
                Rs.Open "select e.dlytype,a.ContNum,a.Contdate,a.varcode from rm_lot a,RM_ARRIVAL D,RM_CONT e ,rm_var v  WHERE a.varcode=v.varcode and  A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND a.varcode=d.varcode AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "' and v.varname like '%" & Left(Trim(sVarname), 15) & "%'", DB, adOpenStatic
            End If
            
            If Not Rs.EOF Then
                sSCONTNO = IIf(IsNull(Rs("ContNum")), "", Rs("ContNum"))
                sContDt = IIf(IsNull(Rs("Contdate")), "____/__/__", Format(Rs("Contdate"), "dd/MM/yyyy"))
                sVarcode = Rs("varcode")
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
            
            Call Lotdisplay(sLotno, sLotDt, sSLcode, sVarcode, iRow)
            
            Call Load_Fibre_Discount(sLotno, sLotDt, sSCONTNO, sContDt, sSLcode, iRow)
            
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
    'txtFields(300).Text = ""
   ' txtFields(301).Text = ""
   ' txtFields(302).Text = ""
      'txtFields(6).Text = ""
    ' MaskEdBox1(2).Mask = "__/__/____"
         
    txtfields(304).Text = ""
    
    txtfields(99).Text = ""
    txtfields(104).Text = ""
    txtfields(103).Text = ""
    txtfields(105).Text = ""
    
    txtfields(115).Text = ""
    txtfields(119).Text = ""
    
    txtfields(111).Text = ""
    txtfields(110).Text = ""
                
    txtfields(112).Text = ""
    txtfields(113).Text = ""
            
    txtfields(114).Text = ""
    txtfields(126).Text = ""
    txtfields(107).Text = ""
    txtfields(130).Text = ""
   ' txtfields(121).Text = ""
  
    txtAdjValue.Text = "0.00"
    
    txtfields(6).Locked = True
    txtfields(7).Locked = True
    Chk_TCSAssValFlg.value = val(TCS_CalcAssAmtFlag)
    MaskEdBox1(2).Enabled = True
    MaskEdBox1(3).Enabled = True
    
    If TDSCalcFlag = "M" Then
        Chk_TDSManual.value = 0
    Else
         Chk_TDSManual.value = 1
    End If
    If STATEFLAG = "F" Then
       Chk_TDSFLAG.value = 0
       Chk_TDSFLAG.Enabled = False
    Else
       Chk_TDSFLAG.value = 1
       Chk_TDSFLAG.Enabled = True
    End If
    'Chk_TDSFLAG.value = 1
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
    ' added on 11-07-19 by mariyaiya
    SetSpreadCol spdVar, Icandyrate, "Rate/Unit", CellTypeNumber, 7
    SetSpreadCol spdVar, IBillrate, "Bill Rate/Unit", CellTypeNumber, 7
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
    If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
         SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 8
    Else
        SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 3
    End If
    SetSpreadCol spdVar, IInsamt, "Insurance Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthtaxPer, "Other Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IothTaxamt, "Other Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtper, "Rl. Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtamt, "Rl. Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icharity, "Charity Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Idamage, "Damage Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Ishipchrg, "Shipment Charge", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthTaxableAmt, "Others (Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthers, "Others (Non-Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IcustomDuty, "Custom Duty Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Ibrkcom, "Broker Commission    ", CellTypeNumber, 2
    SetSpreadCol spdVar, ILandedcost, "Landed Cost      ", CellTypeNumber, 2
    SetSpreadCol spdVar, IRateKG, "Rate/kg    ", CellTypeNumber, 4
    SetSpreadCol spdVar, IAcWgt, "A/c Weight", CellTypeNumber, 2
    SetSpreadCol spdVar, Iround, "Adjustment", CellTypeNumber, 2
    SetSpreadCol spdVar, ISICAAmt, "SIC AAmt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, ICOMMWt, "COMM Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, IEXRATE, "Exch. Rate", CellTypeNumber, 2
    SetSpreadCol spdVar, Idutywt, "Duty Qty.", CellTypeNumber, 3
    SetSpreadCol spdVar, IdutyValue, "Duty Value", CellTypeNumber, 2
    SetSpreadCol spdVar, IIDPER, "I.D. %", CellTypeNumber, 2
    SetSpreadCol spdVar, IIDAMT, "I.D. Amt", CellTypeNumber, 2
      
    SetSpreadCol spdVar, IWELFAREPER, "Welfare %", CellTypeNumber, 2
    SetSpreadCol spdVar, IWELFAREAMT, "Welfare Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IAdvAmt, "Advance Amt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, IAntDumPer, "Anti Dump %", CellTypeNumber, 4
    SetSpreadCol spdVar, IAntDumValue, "Anti Dump Amt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, IContNum, "Cont.No.", CellTypeStaticText
    SetSpreadCol spdVar, IContdate, "Cont. Date", CellTypeStaticText
    SetSpreadCol spdVar, IDiscRate, "Disc_Rate", CellTypeNumber, 2
    SetSpreadCol spdVar, IDiscAmt, "Disc_Amount", CellTypeNumber, 2
    SetSpreadCol spdVar, IFbillvalue, "Bill Value", CellTypeNumber, 2
    
   
    SetSpreadCol spdVar, itcsper, "TCS %", CellTypeNumber, 3
    SetSpreadCol spdVar, itcsamt, "TCS Amount", CellTypeNumber, 2
    SetSpreadCol spdVar, ITCS_AssValue, "TCS Ass.Amount", CellTypeNumber, 2
    
    SetSpreadCol spdVar, IACGSTAMT, "Adj. Cgst Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IASGSTAMT, "Adj. Sgst Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IAIGSTAMT, "Adj. Igst Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IATCSAMT, "Adj. TCS Amt", CellTypeNumber, 2
    
    SetSpreadCol spdVar, ITDSPER, "TDS_Per", CellTypeNumber, 3
    SetSpreadCol spdVar, ITDSAMT, "TDS Amount", CellTypeNumber, 2
    SetSpreadCol spdVar, ITDSASSAMT, "TDS AssAmount", CellTypeNumber, 2
 
    SetSpreadCol spdVar, IIncidentCharge, "Incidental Charge", CellTypeNumber, 2
    SetSpreadCol spdVar, ISpotExpense, "Spot Expenses", CellTypeNumber, 2
    
     SetSpreadCol spdVar, IIncidentChargeAmt, "Incidental Char. Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ISpotExpenseAmt, "Spot Expenses Amt", CellTypeNumber, 2
    
'    spdVar.Col = Idutywt
'    spdVar.Lock = True
'    spdVar.Col = IdutyValue
'    spdVar.Lock = True
    
    spdVar.Col = IACGSTAMT
    spdVar.Visible = True
    spdVar.Col = IASGSTAMT
    spdVar.Visible = True
    spdVar.Col = IAIGSTAMT
    spdVar.Visible = True
    spdVar.Col = IATCSAMT
    spdVar.Visible = True


    spdVar.Col = itcsamt
    spdVar.Visible = True
    spdVar.Col = itcsper
    spdVar.Visible = True
    
    spdVar.Col = IContNum
    spdVar.Lock = True
    spdVar.Col = IContdate
    spdVar.Lock = True
    spdVar.Col = IDiscRate
    spdVar.Lock = True
    spdVar.Col = IDiscAmt
    spdVar.Lock = True
    

    spdVar.Col = IIDPER
    spdVar.Lock = True
    spdVar.Col = IIDAMT
    spdVar.Lock = True
    spdVar.Col = IWELFAREPER
    spdVar.Lock = True
    spdVar.Col = IWELFAREAMT
    spdVar.Lock = True
    
    spdVar.Col = IAntDumPer
    spdVar.Lock = True
    spdVar.Col = IAntDumValue
    spdVar.Lock = True
    
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
'    spdVar.Col = 2
'    spdVar.ColHidden = True
'    spdvar.
    spdVar.ColWidth(6) = 12
    spdVar.ColWidth(7) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    spdVar.ColWidth(16) = 12
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    
    
    spdVar.Col = IOthtaxPer
    spdVar.ColHidden = True
    spdVar.Col = IothTaxamt
    spdVar.ColHidden = True

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

    spdVar.Col = itcsamt
    spdVar.Visible = True
    spdVar.Col = itcsper
    spdVar.Visible = True
    
    
    spdVar.ColWidth(4) = 16
    spdVar.Col = 10
    spdVar.Lock = True
    spdVar.Col = 11
    spdVar.Lock = True
    spdVar.Col = 12
    spdVar.Lock = True
    spdVar.Col = 13
    spdVar.Lock = True
    spdVar.Col = 9
    spdVar.Lock = True
    
    spdVar.Col = ICOMMWt
    spdVar.Lock = True


    spdVar.Col = ILotNo
    spdVar.Lock = True
    
        spdVar.Col = ILotdt
    spdVar.Lock = True
        spdVar.Col = IVarcode
    spdVar.Lock = True
        spdVar.Col = Iunit
    spdVar.Lock = True
        spdVar.Col = Icandyrate
        
    spdVar.Lock = True
        spdVar.Col = Imtarewt
    spdVar.Lock = True
        spdVar.Col = Immoiturewt
    spdVar.Lock = True
        spdVar.Col = Imnetwt
    spdVar.Lock = True
        spdVar.Col = Ipgrosswt
    spdVar.Lock = True
        spdVar.Col = Iptarewt
    spdVar.Lock = True
        spdVar.Col = Ipnetwt
    spdVar.Lock = True
    
    spdVar.Col = IdutyValue
    spdVar.Lock = True
    
    spdVar.Col = IEXRATE
    spdVar.Lock = True
    
    spdVar.Col = IIDPER
    spdVar.Lock = True
    spdVar.Col = IIDAMT
    spdVar.Lock = True
    spdVar.Col = IWELFAREPER
    spdVar.Lock = True
    spdVar.Col = IWELFAREAMT
    spdVar.Lock = True
    spdVar.Col = IAdvAmt
    spdVar.Lock = True
'    spdVar.Col = IEXRATE
'    spdVar.Lock = True
'    spdVar.Col = IEXRATE
'    spdVar.Lock = True
'    spdVar.Col = IEXRATE
'    spdVar.Lock = True
  spdVar.Col = itcsamt
    spdVar.Visible = True
    spdVar.Col = itcsper
    spdVar.Visible = True
    
    spdVar.ColWidth(IIncidentCharge) = 12
    spdVar.ColWidth(ISpotExpense) = 12
    
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
            .MaxCols = 97  '93
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 8, 1
        End With
    Else

        With spdVar
            .MaxCols = 94 '90
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 8, 1
        End With
    End If
    
    For I = 71 To 95
     spdVar.Col = I
     spdVar.Lock = True
    Next
    
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub
Private Sub Lotdisplay(lotno As String, LOTDT As String, SUPCD As String, SsVarcode As String, iRow As Integer)
intervalMinutes = -1
On Error GoTo Lotdisplay_Error
    Unbindcontls
    Set RSq = New Recordset
    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,isnull(scper,0)scper,isnull(scamt,0)scamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,favaourablewgt,weightFlg,ISNULL(ADJVALUE,0) ADJVALUE,isnull(brkcd,'') as brkcd,isnull(brkcomPer,0) as brkcomPer,RateUnit,Isnull(SuppBillvalue,0)SuppBillvalue,isnull(dbamt,0)dbamt,isnull(SICAAmt,0)SICAAmt " & _
             " ,ISNULL(HSN,'') HSN,ISNULL(cgstper,0) cgstper,ISNULL(cgstamt,0)cgstamt,ISNULL(sgstper,0)sgstper,ISNULL(sgstamt,0)sgstamt,ISNULL(igstper,0) igstper,ISNULL(igstamt,0) igstamt ,isnull(ComWt_Flg,0)ComWt_Flg,isnull(Comm_Wt,0) Comm_Wt,isnull(ExchangeRate,0) ExchangeRate,billno,billdt,pjtc pjtc,isnull(ptype,'') ptype,isnull(IDPer,'0') IDPer,isnull(IDAmt,0) IDAmt,isnull(welfarePer,0) welfarePer,isnull(welfareAmt,'0') welfareAmt,isnull(duty_Wt,0) duty_Wt,isnull(DutyValue,0) DutyValue,isnull(POTYPE,'L') POTYPE,isnull(Advance_amt,0) Advance_amt ,be_no,be_date,isnull(ACGSTAMT,0) ACGSTAMT ,isnull(ASGSTAMT,0) ASGSTAMT ,isnull(AIGSTAMT,0) AIGSTAMT,pjno,pjdt,pjtc,isnull(AntyDumperkg,0) AntyDumperkg,isnull(AntyDumAmt,0) AntyDumAmt ,isnull(TotDiscRate,0) TotDiscRate  ,isnull(TotDiscAmt,0) TotDiscAmt, isnull(ContNum,0) ContNum,Contdate,isnull(SupFileName,'') SupFileName,ISNULL(Bill_Rate,0) Bill_Rate,isnull(fbillvalue,0) fbillvalue " & _
             " ,Tcs_per,Tcs_Amt,TCS_AssAmt,isnull(TCS_CalcAssAmtFlag,1) TCS_CalcAssAmtFlag,isnull(ATCSAMT,0) ATCSAMT,isnull(TDS_AssAmt,0) TDS_AssAmt,isnull(TDS_Per,0) TDS_Per,isnull(tdsAmt,0) tdsAmt,isnull(TDSFLG,'N') TDSFLG,isnull(TDSTypeCode,'') TDSTypeCode,isnull(TDS_Manual,0) TDS_Manual,penalty,interest,lot_spotexpense,lot_incidentcharge,TypeTruckbale,Lotincidentchargeamt,Lotspotexpenseamt from rm_lot where lotno=" & val(lotno) & " and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and supcd='" & Trim(sSLcode) & "' and lottype='A' and divcode='" & Divcode & "' and  varcode='" & SsVarcode & "' ORDER BY LOTYEAR asc", DB, adopenstaic, adLockBatchOptimistic
    q = iRow
'    Call SpreadAlign(rsq.RecordCount)
    GTax = ""
    taxcode = "Y"
    GAtax = ""
    Ataxcode = "Y"
    If Not RSq.EOF Then
        
        Chk_TCSAssValFlg.value = IIf(IsNull(RSq("TCS_CalcAssAmtFlag")), 1, RSq("TCS_CalcAssAmtFlag"))
        If Opt <> "add" Then
            If RSq("TDSFLG") = "Y" Then
                   Chk_TDSFLAG.value = 1
            Else
                   Chk_TDSFLAG.value = 0
            End If
            txtfields(129).Text = IIf(IsNull(RSq("tds_per")), 0, RSq("tds_per"))
            txtfields(132).Text = RSq("TDSTypeCode")
            Set rsa = New Recordset
            rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
            If Not rsa.EOF Then
               txtfields(131).Text = rsa(1)
            End If
             
            
          
        End If
        
              txtincidentcharge.Text = IIf(IsNull(RSq("lot_incidentcharge")), 0, RSq("lot_incidentcharge"))
              txtspotexpense.Text = IIf(IsNull(RSq("lot_spotexpense")), 0, RSq("lot_spotexpense"))
              TxtIincidentAmt.Text = IIf(IsNull(RSq("Lotincidentchargeamt")), 0, RSq("Lotincidentchargeamt"))
              TxtSpotExpenseAmt.Text = IIf(IsNull(RSq("Lotspotexpenseamt")), 0, RSq("Lotspotexpenseamt"))
              
              
                If RSq!TypeTruckbale = "T" Then
                  Combo12.ListIndex = 2
                ElseIf RSq!TypeTruckbale = "B" Then
                  Combo12.ListIndex = 1
                Else
                  Combo12.ListIndex = 0
                End If
                
     Chk_TDSManual.value = IIf(IsNull(RSq("TDS_Manual")), 0, RSq("TDS_Manual"))
    txtfields(122).Text = Trim(RSq("SupFileName"))
    DTCSAMT = DTCSAMT + IIf(IsNull(RSq("Tcs_Amt")), 0, RSq("Tcs_Amt"))
    DTCSASSAMT = DTCSASSAMT + IIf(IsNull(RSq("TCS_AssAmt")), 0, RSq("TCS_AssAmt"))
    txtfields(124).Text = IIf(IsNull(RSq("Tcs_per")), 0, RSq("Tcs_per"))
    
    DACGSTAMT = DACGSTAMT + IIf(IsNull(RSq("ACGSTAMT")), 0, RSq("ACGSTAMT"))
    DASGSTAMT = DASGSTAMT + IIf(IsNull(RSq("ASGSTAMT")), 0, RSq("ASGSTAMT"))
    DAIGSTAMT = DAIGSTAMT + IIf(IsNull(RSq("AIGSTAMT")), 0, RSq("AIGSTAMT"))
    DATCSTAMT = DATCSTAMT + IIf(IsNull(RSq("ATCSAMT")), 0, RSq("ATCSAMT"))
    
    intervalMinutes = -1
      If Opt = "mod" Then
        Set Lrs = New Recordset
   
        If globalarrivalorder = "C" Then
          Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where  " _
                  & " b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno and a.varcode=c.varcode and a.varcode=b.varcode " _
                  & " and a.contdt=b.contdt and C.Lotno=" & val(lotno) & " and c.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  a.varcode='" & SsVarcode & "'  and c.lotyear='" & Year(LOTDT) & "' and b.divcode=c.divcode and    b.divcode='" & Divcode & "' and b.divcode=a.divcode and    b.divcode='" & Divcode & "' and (a.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and A.im_ind='I')))  ", DB, adOpenStatic
        Else
         Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
                  & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno and a.varcode=c.varcode and a.varcode=b.varcode " _
                  & " and a.contdt=b.contdt and C.Lotno=" & val(lotno) & " and c.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  a.varcode='" & SsVarcode & "' and c.lotyear='" & Year(LOTDT) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
        End If
        If Lrs.RecordCount > 0 Then
              delivery = Lrs("DLYTYPE")
         Else
              delivery = "S"
        End If
    End If
            If IsNull(RSq("pjno")) = False Then
                Set lors = New Recordset
                lors.Open "select isnull(AdvanceAmt,0) AdvanceAmt,isnull(AdjustAmt,0) adj from fa_purhd where  pjvno='" & val(RSq("pjno")) & "' and pjvdt='" & Format(RSq("pjdt"), "yyyy-mm-dd") & "' and tc='" & RSq("pjtc") & "' ", DB, adOpenStatic
                If Not lors.EOF Then
                txtfields(111).Text = Format(lors(0), "00.00")
               ' txtAdjValue.Text = Format(lors(1), "00.00")
               ' dADJValue = Format(lors(1), "00.00")
                End If
                
            End If
            
            If Opt = "add" Or Opt = "mod" Then
                If RSq("Tax_code") = "" And SuppType <> "U" Then
                    MsgBox "Tax code Cannot be Empty", vbInformation, head
                        Opt = ""
                        Call query_mode
                        desc.Caption = "Query"
                    Call BUTTON_Click(10)
                    Exit Sub
                ElseIf SuppType <> "U" Then
                    Set TaxCheck = New Recordset
                    TaxCheck.Open "select isnull(ITCTAXSTATUS,'N') from ig_tax where tax_code='" & RSq("Tax_code") & "' ", DB, adOpenStatic
                    If TaxCheck.EOF Then
                        MsgBox "Entered Tax Code not in master! please check  ", vbInformation, head
                        Opt = ""
                        Call query_mode
                        desc.Caption = "Query"
                        Call BUTTON_Click(10)
                        Exit Sub
                    Else
                            If TaxCheck(0) = "N" Then
                                MsgBox "ITC Tax Status set as No in Tax Master! Please Set as Yes and then Continue the Bill Entry . Tax Code - " & RSq("Tax_code"), vbInformation, head
                                Opt = ""
                                Call query_mode
                                desc.Caption = "Query"
                                Call BUTTON_Click(10)
                            End If
                        
                    End If
                    
                End If
            End If
       
            
            txtfields(103).Text = val(RSq("IDPer"))
            txtfields(105).Text = val(RSq("welfarePer"))
            DADVAmt = DADVAmt + val(RSq("Advance_amt"))
            DDutyWgt = DDutyWgt + val(RSq("duty_Wt"))
            DDutyAmt = DDutyAmt + val(RSq("DutyValue"))
            
            txtfields(106).Text = IIf(IsNull(RSq("be_no")), "", RSq("be_no"))
            DTPicker1.value = IIf(IsNull(RSq("be_date")), pdate, RSq("be_date"))
            If Trim(txtfields(106).Text) <> "" Then
            MaskEdBox1(4).Text = IIf(IsNull(RSq("be_date")), "__/__/____", RSq("be_date"))
            Else
            MaskEdBox1(4).Text = "__/__/____"
            End If
            
            txtfields(105).Text = val(RSq("welfarePer"))
            Check1.value = RSq("ComWt_Flg")
            spdVar.SetText IEXRATE, q, RSq("ExchangeRate")
            spdVar.SetText IAdvAmt, q, RSq("Advance_amt")
            
            spdVar.SetText IContNum, q, RSq("ContNum")
            spdVar.SetText IContdate, q, IIf(IsNull(RSq("Contdate")), "", Format(RSq("Contdate"), "dd/mm/yyyy"))
            spdVar.SetText IDiscRate, q, RSq("TotDiscRate")
            spdVar.SetText IDiscAmt, q, KSLRound(val(RSq("TotDiscAmt")), FDisc_ROFF)
            spdVar.SetText itcsper, q, RSq("Tcs_per")
            spdVar.SetText itcsamt, q, RSq("Tcs_Amt")
            spdVar.SetText ITCS_AssValue, q, RSq("TCS_AssAmt")
            
            spdVar.SetText ITDSAMT, q, CStr(RSq("tdsamt"))
            spdVar.SetText ITDSPER, q, CStr(RSq("tds_per"))
            spdVar.SetText ITDSASSAMT, q, CStr(RSq("TDS_AssAmt"))
            
            
            
            If val(GetText(spdVar, IEXRATE, q)) = 0 Then
             spdVar.SetText IEXRATE, q, "1"
            End If
            
            If RSq("potype") = "L" Then
                Combo3.Text = "L - Local"
            ElseIf RSq("potype") = "D" Then
                
                Combo3.Text = "D -Duty Weight"
            ElseIf RSq("potype") = "A" Then
                Combo3.Text = "A - Advance License"
            ElseIf RSq("potype") = "B" Then
                Combo3.Text = "B - Duty and Advance  License"
            Else
                Combo3.Text = "L - Local"
            End If

            
            spdVar.SetText ICOMMWt, q, RSq("Comm_Wt")
            'spdVar.SetText ICOMMWt, q, RSq("ComWt_Flg")
             txtfields(108).Text = Format(val(RSq("ExchangeRate")), "##.00")
            
            ''''GST SASI 16.6.17
            
            txtfields(119).Text = RSq("AntyDumperkg")
            
            txtfields(118).Text = val(RSq("CGSTAMT"))
            txtfields(117).Text = val(RSq("SGSTAMT"))
            txtfields(116).Text = val(RSq("IGSTAMT"))
            txtfields(100).Text = val(RSq("CGSTPER"))
            txtfields(101).Text = val(RSq("SGSTPER"))
            txtfields(102).Text = val(RSq("IGSTPER"))
            
            txtfields(300).Text = IIf(IsNull(RSq("pjtc")), "", RSq("pjtc"))
            txtfields(302).Text = IIf(IsNull(RSq("ptype")), "", RSq("ptype"))
            
         If txtfields(300).Text <> "" Then
            Set rstype = New Recordset
            rstype.Open "select DISTINCT  a.tc,a.tchead tchead from fa_tcmas a,RM_param_FA b where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "' AND a.tc = " & txtfields(300).Text & " ", DB, adOpenStatic
            If rstype.RecordCount > 0 Then
               txtfields(301).Text = IIf(IsNull(rstype(1)), "", rstype(1))
            Else
               txtfields(301).Text = ""
            End If
         Else
            txtfields(301).Text = ""
         End If
         
         If txtfields(302).Text <> "" Then
            Set rspur = New Recordset
            rspur.Open "select isnull(purtype,'') purtype ,isnull(purdesc,'') purdesc from rm_purtype where purtype='" & txtfields(302).Text & "'", DB, adOpenStatic
            If rspur.RecordCount > 0 Then
                txtfields(303).Text = rspur(1)
             Else
                txtfields(303).Text = ""
            End If
        Else
            txtfields(303).Text = ""
        End If

            txtfields(6).Text = IIf(IsNull(RSq("billno")), "", RSq("billno"))
            DTPicker3.value = Format(RSq("billdt"), "DD/MM/YYYY")
            MaskEdBox1(2).Mask = IIf(IsNull(DTPicker3.value), "__/__/____", Format(DTPicker3.value, "DD/MM/YYYY"))
            MaskEdBox1(2).Text = MaskEdBox1(2).Mask
            
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
            spdVar.SetText IFbillvalue, q, RSq("fbillvalue")
            spdVar.SetText Idutywt, q, RSq("duty_Wt")
            spdVar.SetText IdutyValue, q, RSq("DutyValue")
            spdVar.SetText IIDAMT, q, RSq("IDAmt")
            spdVar.SetText IIDPER, q, RSq("IDPER")
            spdVar.SetText IWELFAREAMT, q, RSq("welfareAmt")
            spdVar.SetText IWELFAREPER, q, RSq("welfarePer")

            spdVar.SetText iQty, q, RSq("bales")
            spdVar.SetText Icandyrate, q, RSq("ratecy")
            spdVar.SetText IBillrate, q, IIf(RSq("Bill_Rate") = 0, RSq("ratecy"), RSq("Bill_Rate"))
          
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
            spdVar.SetText Ishipchrg, q, RSq("shipchrg")
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
            
            spdVar.SetText itcsper, q, RSq("tcs_per")
            spdVar.SetText itcsamt, q, RSq("Tcs_Amt")
            spdVar.SetText Ishipchrg, q, RSq("shipchrg")
            
            
            
            spdVar.SetText IAntDumPer, q, RSq("AntyDumperkg")
            spdVar.SetText IAntDumValue, q, RSq("AntyDumAmt")
            RateUnit = RSq("RATEUNIT")
           ' ,AntyDumperkg,AntyDumAmt
            
            spdVar.SetText IHSN, q, RSq("HSN")
            
            spdVar.SetText IIncidentCharge, q, IIf(IsNull(RSq("lot_incidentcharge")), 0, RSq("lot_incidentcharge"))
            spdVar.SetText ISpotExpense, q, IIf(IsNull(RSq("lot_spotexpense")), 0, RSq("lot_spotexpense"))

            
            
   
                
                
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
            FtFlg = "N"
            ftamt = 0
            Set Rs = New Recordset
            If globalarrivalorder = "C" Then
                Rs.Open "Select a.contno,dlytype,c.lotno,isnull(a.ftflg,'N') ftflg,isnull(a.FTAmt,0) FTAmt  from rm_cont a,rm_arrival b, rm_lot c where  " _
                & " b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno and a.varcode =b.varcode and a.varcode=c.varcode " _
                & " and a.contdt=b.contdt and C.Lotno=" & RSq("LOTNO") & " and  a.varcode='" & RSq("varcode") & "' and c.lotdt='" & Format(RSq("lotdt"), "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and b.divcode=a.divcode and    b.divcode='" & Divcode & "' and (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and A.im_ind='I'))) ", DB, adOpenStatic
            Else
                Rs.Open "Select a.contno,a.dlytype,c.lotno,isnull(a.ftflg,'N') ftflg,isnull(a.FTAmt,0) FTAmt  from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
                    & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno and a.varcode =b.varcode  and a.varcode=c.varcode " _
                    & " and a.contdt=b.contdt and C.Lotno=" & RSq("LOTNO") & " and a.varcode='" & RSq("varcode") & "'  and c.lotdt='" & Format(RSq("lotdt"), "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            If Not Rs.EOF Then
                strDelType = IIf(Rs("dlytype") = "", strDelType = "", Rs("Dlytype"))
                
                FtFlg = Rs("ftflg")
                ftamt = Rs("ftamt")
                
            End If
            
            If CustID = "COTTON1" Then
                If strDelType = "F" Then
                    If RSq("RateUnit") = "CANDY" Then
                        Set TmpRs = New Recordset
                        TmpRs.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", DB, adOpenDynamic, adLockReadOnly
                        If Not TmpRs.EOF Then
                            'NoofQuantity = RSq("NetWt") / TmpRs("Value")
                            If Trim(ValueFLG) = "S" Then
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
                    TAssValue = NoofQuantity * (((RSq("RateCy") * 100) / (100 + FVatPer + FBEDPER + FEDCESSPER + FHSCESSPER + SGSTPER + CGSTPER + IGSTPER)) - ftamt)
                    
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
                If Trim(ValueFLG) = "S" Or Check1.value Then
                   If Trim(ValueFLG) = "S" Then
                        v2 = Ipnetwt
                    Else
                        v2 = Imnetwt
                    End If
                    If Check1.value Then
                        v2 = ICOMMWt
                    End If
                    rate_Roff = 4
                    Set rsr = New Recordset
                    rsr.Open "Select isnull(Rate_ROff,4) Rate_ROff From rm_param ", DB, adOpenDynamic, adLockReadOnly
                    If Not rsr.EOF Then
                        rate_Roff = rsr(0)
                    Else
                        rate_Roff = 4
                    End If
                        Set rsr = New Recordset
                        rsr.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", DB, adOpenDynamic, adLockReadOnly
                       ' v3 = Icandyrate '' sasi 19.8.20
                        v3 = IBillrate
                        v4 = IRebate
                    If rsr.EOF = False Then
                      TAssValue = val(GetText(spdVar, v2, q)) * Round(((((val(GetText(spdVar, v3, q)) * val(GetText(spdVar, IEXRATE, q))) / rsr("value")) - ftamt)) - val(GetText(spdVar, v4, q)), val(rate_Roff))
                      'TAssValue = Round((val(GetText(spdVar, v2, q)) * (((val(GetText(spdVar, v3, q))) / rsr("value")) - ftamt)) - val(GetText(spdVar, v4, q)), 4)
                    
                      TAssValue = KSLRound(val(TAssValue), ASSVAL_ROFF) ' TAssValue '* val(GetText(spdVar, IEXRATE, q))
                    End If
                    spdVar.SetText Ipjamt, q, CStr(KSLRound(val(TAssValue), ASSVAL_ROFF))
                    'spdVar.SetText Ipjamt, q, TAssValue
                  
                  End If
                    If Trim(ValueFLG) = "S" Then
                        dAssValue = dAssValue + val(TAssValue)
                    Else
                    If Check1.value Then
                        dAssValue = dAssValue + TAssValue
                    Else
                        dAssValue = dAssValue + RSq("pjamt")
                    End If
                    End If
                    
                    
                If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = IIf(IsNull(RSq("lot_spotexpense")), 0, RSq("lot_spotexpense"))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (IIf(IsNull(RSq("bales")), 0, RSq("bales")) * IIf(IsNull(RSq("lot_spotexpense")), 0, RSq("lot_spotexpense")))
               Else
                    totspotexpense = 0
               End If
                
                spdVar.SetText ISpotExpenseAmt, q, CStr(val(totspotexpense))
                
                Totincident = ((val(TAssValue) * val(RSq("lot_incidentcharge") & "")) / 100)
                spdVar.SetText IIncidentChargeAmt, q, CStr(val(Totincident))
                TxtSpotExpenseAmt.Text = Format(KSLRound(val(totspotexpense), val(RspotExpamt_Roff)), "00.00")
                TxtIincidentAmt.Text = Format(KSLRound(val(Totincident), val(RspotExpamt_Roff)), "00.00")
            
               ' dAssValue = dAssValue + RSq("pjamt")
                dTax = dTax + RSq("vatamt")
                dSC = dSC + RSq("SCAMT")
                DBED = DBED + RSq("bedamt")
                dHScess = dHScess + RSq("aedamt")
                dEDCess = dEDCess + RSq("sedamt")
            End If
            
            dCOMMWTWgt = dCOMMWTWgt + RSq("Comm_Wt")
            
            DCGSTAMT = DCGSTAMT + RSq("cgstamt")
            DSGSTAMT = DSGSTAMT + RSq("sgstamt")
            DIGSTAMT = DIGSTAMT + RSq("igstamt")
            
            DTDSAmt = DTDSAmt + RSq("tdsamt")
            dTDSAssAmt = dTDSAssAmt + RSq("TDS_AssAmt")
            
            dSupWgt = dSupWgt + RSq("pnetwt")
            dSupGWt = dSupGWt + RSq("pgrswt")
            dSupTWt = dSupTWt + RSq("ptarewt")
            
            DTotDiscRate = DTotDiscRate + RSq("TotDiscRate")
            DTotDiscAmt = DTotDiscAmt + RSq("TotDiscAmt")
            
            DAntDumValue = DAntDumValue + RSq("AntyDumAmt")
            
            dIDAmt = dIDAmt + RSq("idamt")
            dSWelfare = dSWelfare + RSq("welfareAmt")
           ' dSupBValue = dSupBValue + RSq("SuppBillvalue")
            dSupBValue = RSq("SuppBillvalue")
            dADJValue = dADJValue + RSq("ADJVALUE")
            dCashDis = dCashDis + IIf(IsNull(RSq("cashdisamt")), 0, RSq("cashdisamt"))
            dTradeDis = dTradeDis + IIf(IsNull(RSq("tradedisamt")), 0, RSq("tradedisamt"))
            dLryFgt = dLryFgt + RSq("lrfrtamt")
            DDbamt = DDbamt + RSq("dbamt")
            DSICAAmt = DSICAAmt + RSq("SICAAmt")
            
            dCess = dCess + RSq("cessamt")
            dCess = KSLRound(dCess, CESS_ROFF)
            
            dOthersTaxable = dOthersTaxable + IIf(IsNull(RSq("OtherTaxableAmt")), 0, RSq("OtherTaxableAmt"))
            dOthersTaxable = KSLRound(dOthersTaxable, ADDTAX_ROFF)
            
            dOthersNonTaxable = dOthersNonTaxable + RSq("OthersAmt")
            dRlyFrg = dRlyFrg + RSq("rlyfrtamt")
            dInsurance = dInsurance + RSq("insamt")
            dComm = dComm + RSq("commamt")
            dLC = dLC + RSq("lcintamt")
            dCharity = dCharity + IIf(IsNull(RSq("charityamt")), 0, RSq("charityamt"))
            dShippingCharges = dShippingCharges + IIf(IsNull(RSq("shipchrg")), 0, RSq("shipchrg"))
            
            dOtherTax = dOtherTax + RSq("othtaxAmt")
            dDamage = dDamage + RSq("DamageAmt")
            dCustoms = dCustoms + RSq("customsdutyamt")
            'dDRnote = dDRnote + rsq("DNAMT1")
            dBrokerComm = dBrokerComm + RSq("brkcom")
            DBEDPer = DBEDPer + RSq("bedper")
            dCashPer = dCashPer + IIf(IsNull(RSq("cashdisper")), 0, RSq("cashdisper"))
            dTradePer = dTradePer + IIf(IsNull(RSq("tradedisper")), 0, RSq("tradedisper"))
            dLryFgtPer = dLryFgtPer + RSq("lrfrtper")
            
            dEDCessPer = dEDCessPer + RSq("sedper")
            dHScessPer = dHScessPer + RSq("aedper")
            dCessPer = dCessPer + RSq("cessper")
            dTaxPer = dTaxPer + RSq("vatper")
            dAddTaxPer = dAddTaxPer + val(RSq("addtaxper") & "")
            dSCper = dSCper + IIf(IsNull(RSq("scper")), 0, RSq("scper"))
            
            dRlyFrgPer = dRlyFrgPer + RSq("rlyfrtper")
            dInsurancePer = dInsurancePer + RSq("insper")
            dCommPer = dCommPer + RSq("commper")
            dLCPer = dLCPer + RSq("lcintper")
            dOtherTaxPer = dOtherTaxPer + RSq("othtaxper")
         
            dSingleValue = val(RSq("cashdisper") & "")
            txtfields(53).Text = Format(ChkPerDuplicate(iRow, dCashPer, dSingleValue), "0.00")
            dSingleValue = val(RSq("tradedisper") & "")
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
'                    dFinGrsWgt = dFinGrsWgt + rsq("Grswgt")
'                    dFinTarWgt = dFinTarWgt + rsq("tarewt")
'                    dFinNetWgt = dFinNetWgt + rsq("Netwt")

'               If ValueFLG = "S" Then
'                    dFinGrsWgt = dFinGrsWgt + RSq("pgrswt")
'                    dFinTarWgt = dFinTarWgt + RSq("ptarewt")
'                    dFinNetWgt = dFinNetWgt + RSq("pnetwt")
'
'                  Else
                
                    dFinGrsWgt = dFinGrsWgt + RSq("Grswgt")
                    dFinTarWgt = dFinTarWgt + RSq("tarewt")
                    dFinNetWgt = dFinNetWgt + RSq("Netwt")
                    
              '  End If
              
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
     
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub

Private Sub AssignValues()
        
        txtfields(112).Text = Format(val(DACGSTAMT), "0.00")
        txtfields(113).Text = Format(val(DASGSTAMT), "0.00")
        txtfields(114).Text = Format(val(DAIGSTAMT), "0.00")
        txtfields(126).Text = Format(val(DATCSTAMT), "0.00")
        
        txtfields(128).Text = Format(DTDSAmt, "0.00")
        txtfields(127).Text = Format(dTDSAssAmt, "0.00")
        
        txtfields(48).Text = Format(dFinGrsWgt, "0.000")
        txtfields(49).Text = Format(dFinTarWgt, "0.000")
        txtfields(50).Text = Format(dFinNetWgt, "0.000")
        txtfields(98).Text = Format(dCOMMWTWgt, "0.000")
        txtfields(123).Text = Format(DTCSAMT, "0.00")
        txtfields(130).Text = Format(DTCSASSAMT, "0.00")
        
       ' txtfields(111).Text = Format(DADVAmt, "0.00")
        
        txtfields(107).Text = Format(DDutyWgt, "0.000")
        txtfields(110).Text = Format(DDutyAmt, "0.00")
        
        txtfields(120).Text = Format(DTotDiscRate, "0.000")
        txtfields(121).Text = Format(DTotDiscAmt, "0.00")
        
        
        txtfields(104).Text = Format(dSWelfare, "0.00")
        txtfields(99).Text = Format(dIDAmt, "0.00")
        txtfields(115).Text = Format(DAntDumValue, "0.00")
        
        

        
        txtfields(118).Text = Format(DCGSTAMT, "0.00")
        txtfields(117).Text = Format(DSGSTAMT, "0.00")
        txtfields(116).Text = Format(DIGSTAMT, "0.00")
        
        
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
        txtfields(125).Text = Format(KSLRound(dShippingCharges, ADDTAX_ROFF), "0.00")
        txtfields(97).Text = Format(DSICAAmt, "0.00")
        txtAdjValue.Text = Format(dADJValue, "0.00")
        
        
        If val(txtfields(91).Text) > 0 Then
            txtfields(82).Text = Format(val(dAssValue) * val(txtfields(91).Text) / 100, "#0.00")
        End If
        
        Call LANDEDCOST(dAssValue)
        Call fBillValue(dAssValue)
        Call TaxCalc
   
        
'        If dFinNetWgt <> 0 Then txtfields(76).Text = Format(val(txtfields(78).Text) / dFinNetWgt, "0.0000") ''sasi 30.1.18
        If dFinNetWgt <> 0 Then
        
           ' If Check1.value Then
            '
                'If val(txtFields(98).Text) > 0 Then
                    'txtFields(76).Text = Format(Round(val(txtFields(78)) / val(dCOMMWTWgt), 4), "0.0000")
               ' End If
            ' Else
                If Trim(ValueFLG) = "S" Then
                   txtfields(76).Text = Format(val(txtfields(78).Text) / dSupWgt, "0.0000")
                ElseIf Trim(ValueFLG) = "C" Then
                   txtfields(76).Text = Format(val(txtfields(78).Text) / dCOMMWTWgt, "0.0000")
                Else
                   txtfields(76).Text = Format(val(txtfields(78).Text) / dFinNetWgt, "0.0000")
                End If
             
            ' End If
         
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

Dim IDvalue As Double
Dim Welfarevalue As Double
Dim AntiDumpamt As Double
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
Dim InsAmt As Double
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
Dim Assvalue1 As Double
Dim fdiscrate As Double
Dim fDiscAmt As Double
Dim ShipCharges As Double
Dim rate_Roff As Double
TotTaxableValue = 0
Dutper = 0
Dutper = (100 - val(txtfields(109).Text))
Assvalue1 = 0

totspotexpense = 0
Totincident = 0

DutyInsurance_GST = 1

For Lk = 1 To spdVar.MaxRows


              

    ' spdVar.SetText IEXRATE, Lk, Trim(txtfields(108).Text)
   ' spdVar.SetText IAntDumPer, Lk, val(txtfields(119).Text)
    
    If Trim(ValueFLG) = "S" Or Check1.value Then
        If Trim(ValueFLG) = "S" Then
            v2 = Ipnetwt
        Else
            v2 = Imnetwt
        End If
        If Check1.value Then
            v2 = ICOMMWt
        End If
        rate_Roff = 4
        Set rsr = New Recordset
        rsr.Open "Select isnull(Rate_ROff,4) Rate_ROff,isnull(DutyInsurance_GST,1) DutyInsurance_GST  From rm_param ", DB, adOpenDynamic, adLockReadOnly
        If Not rsr.EOF Then
            rate_Roff = rsr(0)
            DutyInsurance_GST = rsr(1)
        End If
                        
        Set rsr = New Recordset
        rsr.Open "Select Value From RM_RATEUNIT where UnitName = '" & RateUnit & "'", DB, adOpenDynamic, adLockReadOnly
      '  v3 = Icandyrate 'sasi 19.8.20
        v3 = IBillrate
        v4 = IRebate
        If rsr.EOF = False Then
            TAssValue = val(GetText(spdVar, v2, Lk)) * KSLRound(((((val(GetText(spdVar, v3, Lk)) * val(GetText(spdVar, IEXRATE, Lk))) / rsr("value")) - ftamt)) - val(GetText(spdVar, v4, Lk)), val(rate_Roff))
                      'TAssValue = Round((val(GetText(spdVar, v2, q)) * (((val(GetText(spdVar, v3, q))) / rsr("value")) - ftamt)) - val(GetText(spdVar, v4, q)), 4)
            TAssValue = KSLRound(val(TAssValue), ASSVAL_ROFF) ' TAssValue '* val(GetText(spdVar, IEXRATE, q))
        End If
             spdVar.SetText Ipjamt, Lk, CStr(KSLRound(val(TAssValue), ASSVAL_ROFF))
                    'spdVar.SetText Ipjamt, q, TAssValue
                  
    End If
    
    
    
'Assessable Value
    If UCase(Trim(CustID)) = "COTTON" And UCase(CustID1) <> "SCM" Then
        Assvalue = val(txtfields(7).Text)
    Else
        Assvalue = val(GetText(spdVar, Ipjamt, Lk))
    End If
    
    fDiscAmt = val(GetText(spdVar, IDiscAmt, Lk))
  ' Cash Discount
    If val(GetText(spdVar, Icashdisamt, Lk)) <> 0 And val(GetText(spdVar, Icashdisper, Lk)) <> 0 Then
        CashDisamt = Assvalue * (val(GetText(spdVar, Icashdisper, Lk)) / 100)
    Else
        CashDisamt = val(GetText(spdVar, Icashdisamt, Lk))
    End If
    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
    
    

                
     If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
       ' Assvalue1 = Round((val(GetText(spdVar, Idutywt, Lk)) * val(GetText(spdVar, Icandyrate, Lk))), 4) * val(GetText(spdVar, IEXRATE, Lk))
         Assvalue1 = Round((val(GetText(spdVar, Idutywt, Lk)) * val(GetText(spdVar, IBillrate, Lk))), 4) * val(GetText(spdVar, IEXRATE, Lk))
     Else
        Assvalue1 = val(GetText(spdVar, IdutyValue, Lk))
     End If
       spdVar.SetText IdutyValue, Lk, CStr(Assvalue1)
     If Left(Combo3.Text, 1) = "D" Or Left(Combo3.Text, 1) = "B" Then
     
     Else
        spdVar.SetText IdutyValue, Lk, CStr(0)
        spdVar.SetText Idutywt, Lk, CStr(0)
     End If
       

' IDValue Discount
   If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
        If val(GetText(spdVar, IIDPER, Lk)) <> 0 Then
        
         If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
                InsAmt = KSLRound(val(GetText(spdVar, IInsamt, Lk)), INSUR_ROFF)
             ' Assvalue1 = Round((val(GetText(spdVar, Idutywt, Lk)) * val(GetText(spdVar, IRatekg, Lk))), 4) * val(GetText(spdVar, IEXRATE, Lk))
              IDvalue = Round((Assvalue1 + InsAmt) * (val(GetText(spdVar, IIDPER, Lk)) / 100), 2)
          Else
            IDvalue = Assvalue * (val(GetText(spdVar, IIDPER, Lk)) / 100)
          End If
        Else
            IDvalue = "00.00" 'val(GetText(spdVar, IIDAMT, Lk))
        End If
    Else
        IDvalue = 0
    End If
    spdVar.SetText IIDAMT, Lk, CStr(IDvalue)
    
    
        totalRows = 0
                                
            dValue = 0
        For iCount = 1 To spdVar.MaxRows
            If val(GetText(spdVar, Idutywt, iCount)) > 0 Then
                totalRows = totalRows + 1
            End If
        Next
         If Left(Trim(Combo3.Text), 1) <> "L" And Left(Trim(Combo3.Text), 1) <> "A" Then
            If totalRows > 0 Then
                dValue = val(txtfields(58).Text) / totalRows
            End If
             If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
                   spdVar.SetText IInsamt, Lk, CStr(dValue)
              Else
                   spdVar.SetText IInsamt, Lk, CStr(0)
             End If
         End If
    
' Welfare Amt Discount
    If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
        If val(GetText(spdVar, IWELFAREPER, Lk)) <> 0 Then
            Welfarevalue = Round(IDvalue * (val(GetText(spdVar, IWELFAREPER, Lk)) / 100), 2)
        Else
            Welfarevalue = "0" 'val(GetText(spdVar, IWELFAREAMT, Lk))
        End If
    Else
        Welfarevalue = 0
    End If
    spdVar.SetText IWELFAREAMT, Lk, CStr(Welfarevalue)
    
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
            Bed = (Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt + Lfrt)) * val(GetText(spdVar, IBedper, Lk)) / 100
        Else
            Bed = (Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt)) * val(GetText(spdVar, IBedper, Lk)) / 100
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
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + val(Lfrt)) / 100, 2)
        Else
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt))) / 100, 2)
        End If
    Else
        cess = val(GetText(spdVar, Icessamt, Lk))
    End If
    cess = KSLRound(val(cess), CESS_ROFF)
    spdVar.SetText Icessamt, Lk, CStr(cess)
    
        Dim CessAmtTax As Double
    CessAmtTax = 0
    cflg = "N"
           Set rstParameter1 = New Recordset
            rstParameter1.Open "Select isnull(CessCalCulateTax,'N') CessCalCulateTax From Rm_param", DB, adOpenStatic
            If rstParameter1.EOF = False Then
                cflg = rstParameter1(0)
            End If
        If cflg = "Y" Then
         CessAmtTax = cess
        End If
    
    ' Anti Dumping Discount
      
    If val(GetText(spdVar, IAntDumPer, Lk)) <> 0 Then
    
            If Trim(ValueFLG) = "S" Then
                v2 = Ipnetwt
            Else
                v2 = Imnetwt
            End If
            If Check1.value Then
                    v2 = ICOMMWt
            End If
    
        AntiDumpamt = val(GetText(spdVar, v2, Lk)) * ((val(GetText(spdVar, IAntDumPer, Lk))) * val(txtfields(108).Text))
    Else
        AntiDumpamt = 0
    End If
     spdVar.SetText IAntDumValue, Lk, CStr(KSLRound(val(AntiDumpamt), ANTIDUMP_ROFF))
     
    If Left(Combo12.Text, 1) = "T" Then
        totspotexpense = val(GetText(spdVar, ISpotExpense, Lk))
    ElseIf Left(Combo12.Text, 1) = "B" Then
        totspotexpense = (val(GetText(spdVar, iQty, Lk)) * val(GetText(spdVar, ISpotExpense, Lk)))
    Else
        totspotexpense = 0
    End If
     
    Totincident = KSLRound(((val(Assvalue) * val(GetText(spdVar, IIncidentCharge, Lk))) / 100), RIncidentAmt_Roff)
    totspotexpense = KSLRound(val(totspotexpense), RspotExpamt_Roff)
    spdVar.SetText ISpotExpenseAmt, Lk, CStr(KSLRound(val(totspotexpense), RspotExpamt_Roff))
    spdVar.SetText IIncidentChargeAmt, Lk, CStr(KSLRound(val(Totincident), RIncidentAmt_Roff))
    

' Tax Calc
'    If val(GetText(spdVar, ITaxamt, Lk)) = 0 Then
    CGSTAMT = 0
    SGSTAMT = 0
    IGSTAMT = 0
    Vatamt = 0
    If Left(Combo3.Text, 1) <> "A" Then

        Set Rs = New Recordset
        Rs.Open "Select * from rM_param", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            If optBefore = True Then
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                     If UCase(CustID) = "COTTON" Then
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + OtherTaxable - (CashDisamt + fDiscAmt + TradeDisAmt)) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + OtherTaxable - (CashDisamt + fDiscAmt + TradeDisAmt)) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + OtherTaxable - (CashDisamt + fDiscAmt + TradeDisAmt)) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                        TotTaxableValue = ((Assvalue + OtherTaxable - (CashDisamt + fDiscAmt + TradeDisAmt)) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                        
                     Else
                        CGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                         TotTaxableValue = ((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                     End If
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        
                    Else
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        If val(GetText(spdVar, Idutywt, Lk)) > 0 Then
                            If DutyInsurance_GST = 1 Then
                                InsAmt = KSLRound(val(GetText(spdVar, IInsamt, Lk)), INSUR_ROFF)
                            Else
                                InsAmt = 0
                            End If
                            'Assvalue1 = Round((val(GetText(spdVar, Idutywt, Lk)) * val(GetText(spdVar, IRatekg, Lk))), 4) * val(GetText(spdVar, IEXRATE, Lk))
                            CGSTAMT = KSLRound(((Assvalue1 - (CashDisamt + fDiscAmt + TradeDisAmt)) + IDvalue + Welfarevalue + InsAmt + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                            SGSTAMT = KSLRound(((Assvalue1 - (CashDisamt + fDiscAmt + TradeDisAmt)) + IDvalue + Welfarevalue + InsAmt + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                            IGSTAMT = KSLRound(((Assvalue1 - (CashDisamt + fDiscAmt + TradeDisAmt)) + IDvalue + Welfarevalue + InsAmt + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                            TotTaxableValue = ((Assvalue1 - (CashDisamt + fDiscAmt + TradeDisAmt)) + IDvalue + Welfarevalue + InsAmt + AntiDumpamt + Totincident + totspotexpense)
                            Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        Else
                        If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
                            CGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                            SGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                            IGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                            TotTaxableValue = ((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                            
                        Else
                             If (UCase(CustID) <> UCase("Pallava") And UCase(CustID) <> UCase("Shrigiri")) Or STATEFLAG <> "F" Then
                   
                                CGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                                SGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                                IGSTAMT = KSLRound(((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                                TotTaxableValue = ((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Comamt + OtherTaxable) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                             '  Else
                               ' CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess + IDvalue + Welfarevalue) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                              End If
                        
                        End If
                            Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        End If
                    End If
                Else
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        
                        CGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                        
                        TotTaxableValue = (Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + val(Lfrt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    Else
                        'Vatamt = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                         TotTaxableValue = (Assvalue - (CashDisamt + fDiscAmt + TradeDisAmt) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                    End If
                End If
            Else
                If Rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                    If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
                        Vatamt = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                         TotTaxableValue = ((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                        
                     Else
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                        TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                     End If
                        
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        
                        
                    Else
                        Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        
                       If UCase(CustID) = "COTTON" And UCase(CustID1) <> "SCM" Then
                        
                            CGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                            SGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                            IGSTAMT = KSLRound(((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                             TotTaxableValue = ((Assvalue + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                       Else
                            CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                            SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                            IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                            TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                       End If
                        
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    End If
                Else
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                         CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, CGST_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, SGST_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, IGST_ROFF)
                        TotTaxableValue = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                        
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        
                    Else
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        TotTaxableValue = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + CessAmtTax + OtherTaxable + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                    End If
                End If
            End If
        End If
        
      Else
         Vatamt = 0
         CGSTAMT = 0
         SGSTAMT = 0
         IGSTAMT = 0
      End If '' potype
        
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
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    Else
                        If UCase(delivery) = "F" Then
                            AVatamt = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
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
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                Else
                    If UCase(delivery) = "F" Then
                    Othtax = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
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
        Dim rspara As New Recordset
        rspara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
        If (rspara.BOF And rspara.EOF) = False Then
            If rspara("InsCalAssvalflg") = "N" Then
                If UCase(delivery) = "F" Then
                    InsAmt = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt) * val(GetText(spdVar, IInsper, Lk)) / 100
                Else
                    InsAmt = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt) * val(GetText(spdVar, IInsper, Lk)) / 100
                End If
            Else
                InsAmt = Assvalue * (val(GetText(spdVar, IInsper, Lk)) / 100)
            End If
        End If
        rspara.Close
        Set rspara = Nothing
    Else
        InsAmt = val(GetText(spdVar, IInsamt, Lk))
    End If
    InsAmt = KSLRound(val(InsAmt), INSUR_ROFF)
    spdVar.SetText IInsamt, Lk, CStr(InsAmt)
    
    
'LC Interest
    If val(GetText(spdVar, ILCamt, Lk)) = 0 Then
        If UCase(delivery) = "F" Then
            LcInt = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
        Else
            LcInt = (Assvalue - (val(CashDisamt) + val(fDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + InsAmt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
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
    
    ShipCharges = val(GetText(spdVar, Ishipchrg, Lk))
    spdVar.SetText Ishipchrg, Lk, CStr(ShipCharges)
    
    OtherTaxable = val(GetText(spdVar, IOthTaxableAmt, Lk))
    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
    
    Brkcom = val(txtfields(82).Text) * val(assper) / 100
'    spdVar.SetText Ibrkcom, Lk, CStr(Brkcom)
    
    Cusdutyamt = val(GetText(spdVar, IcustomDuty, Lk))
    spdVar.SetText IcustomDuty, Lk, CStr(Cusdutyamt)



    If optDCNo = True Then
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(fDiscAmt) + TradeDisAmt) + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense
        Else
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + ShipCharges + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(fDiscAmt) + TradeDisAmt) + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense
        End If
    Else
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + ShipCharges + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(fDiscAmt) + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100)) + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense
        Else
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + ShipCharges + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(fDiscAmt) + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100)) + IDvalue + Welfarevalue + AntiDumpamt + Totincident + totspotexpense
        End If
    End If
    
    
    TCSLANCOST = 0
    Set rsP1 = New Recordset
    rsP1.Open "select isnull(tcstax,'Y') tcstax ,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
    tcsLandflg = rsP1(1)
    If rsP1("tcstax") = "Y" Then
        TCSLANCOST = TotTaxableValue + (Taxamt)
    Else
        TCSLANCOST = TotTaxableValue
    End If
'    If UCase(delivery) = "S" Then
'        TCSLANCOST = TCSLANCOST - Lfrt
'    End If
'
    If Chk_TCSAssValFlg.value = 1 Then
        If val(GetText(spdVar, itcsper, Lk)) > 0 Then
            RTCSAMT = Round(TCSLANCOST * (val(GetText(spdVar, itcsper, Lk)) / 100), ATCS_ROFF)
           
        Else
            RTCSAMT = 0 ' val(GetText(spdVar, itcsamt, Lk))
        End If
    Else
            If Trim(ValueFLG) = "S" Then
                v9 = Ipnetwt
                billwt = val(txtfields(9).Text)
            Else
                v9 = Imnetwt
                billwt = val(txtfields(50).Text)
            End If
            If Check1.value Then
                v9 = ICOMMWt
                billwt = val(txtfields(98).Text)
            End If
        If val(GetText(spdVar, itcsper, Lk)) > 0 Then
            TCSLANCOST = KSLRound(val(txtfields(130).Text) / val(billwt) * val(GetText(spdVar, v9, Lk)), 3)
            RTCSAMT = Round(TCSLANCOST * (val(GetText(spdVar, itcsper, Lk)) / 100), ATCS_ROFF)
            
        Else
            RTCSAMT = 0
        End If
    End If
    spdVar.SetText ITCS_AssValue, Lk, CStr(TCSLANCOST)
    
    spdVar.SetText itcsamt, Lk, CStr(RTCSAMT)
    Totland = Totland + RTCSAMT
       
   ' If TDSCalcTotPur = 1 Then
            If Chk_TDSFLAG.value = 1 Then
'            spdVar.SetText ITDSASSAMT, Lk, KSLRound(CStr(Totland), 2)
'            spdVar.SetText ITDSAMT, Lk, KSLRound(Totland * (val(GetText(spdVar, ITDSPER, Lk)) / 100), 0)
            spdVar.SetText ITDSASSAMT, Lk, KSLRound(val(GetText(spdVar, Ipjamt, Lk)), 2)
            CalTDSAmt = 0
            If Tds_Rndnextrs = 1 Then
                CalTDSAmt = KSLTDSRound(KSLRound(val(GetText(spdVar, Ipjamt, Lk)), 2) * (val(GetText(spdVar, ITDSPER, Lk)) / 100), 0)
            Else
                CalTDSAmt = KSLRound(KSLRound(val(GetText(spdVar, Ipjamt, Lk)), 2) * (val(GetText(spdVar, ITDSPER, Lk)) / 100), 0)
            End If
            spdVar.SetText ITDSAMT, Lk, CStr(CalTDSAmt)
        End If
   ' End If
       
    If tcsLandflg = "Y" Then
        Totland = Totland - RTCSAMT
    End If
    
'   spdVar.SetText IFbillvalue, Lk, CStr(Totland)
'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
    Set Rs = New Recordset
    Rs.Open "Select isnull(ItcTaxStatus,'N') as TaxStatus from ig_tax where tax_code ='" & Trim(GetText(spdVar, ITaxCode, Lk)) & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        If Rs(0) = "Y" Then
        Totland = Totland - Vatamt
        End If
    Else
        Totland = Totland - Vatamt
    End If
''Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + Cusdutyamt + packforamt + marketcomamt
     spdVar.SetText ILandedcost, Lk, CStr(Totland)
     
                 
    

    
   

'    spdVar.SetText ISpotExpenseAmt, Lk, CStr(KSLRound(val(totspotexpense), RspotExpamt_Roff))
'    spdVar.SetText IIncidentChargeAmt, Lk, CStr(KSLRound(val(Totincident), RIncidentAmt_Roff))
'    TxtSpotExpenseAmt.Text = Format((KSLRound(val(totspotexpense), RspotExpamt_Roff)), "00.00")
'    TxtIincidentAmt.Text = Format((KSLRound(val(Totincident), RIncidentAmt_Roff)), "00.00")
    
   ' If Check1.value Then
   '     ratekg = val(GetText(spdVar, ILandedcost, Lk)) / val(GetText(spdVar, ICOMMWt, Lk))
   ' Else
        If val(GetText(spdVar, IAcWgt, Lk)) > 0 Then
         ratekg = val(GetText(spdVar, ILandedcost, Lk)) / val(GetText(spdVar, IAcWgt, Lk))
        End If
   ' End If
    spdVar.SetText IRateKG, Lk, CStr(ratekg)
Next
AntiDumpingAmt = 0
dAssValue = 0
TotTCSAMT = 0
TOTIDVALUE = 0
TOTWELFAREAMT = 0
TCGSTAMT = 0
TSGSTAMT = 0
TIGSTAMT = 0
CGSTAMTD = 0
SGSTAMTD = 0
IGSTAMTD = 0
TCSASSAMTD = 0
totDisc_Amt = 0
Ttotspotexpense = 0
Ttotincident = 0
 For I = 1 To spdVar.MaxRows
            If UCase(Trim(CustID)) = "COTTON" And UCase(CustID1) <> "SCM" Then
                dAssValue = dAssValue + val(txtfields(7).Text)
            Else
                dAssValue = dAssValue + val(GetText(spdVar, Ipjamt, I))
            End If
            dutywgt = dutywgt + val(GetText(spdVar, Idutywt, I))
            CGSTAMTD = CGSTAMTD + val(GetText(spdVar, ICGSTAMT, I))
            SGSTAMTD = SGSTAMTD + val(GetText(spdVar, ISGSTAMT, I))
            IGSTAMTD = IGSTAMTD + val(GetText(spdVar, IIGSTAMT, I))
            dutyval = dutyval + val(GetText(spdVar, IdutyValue, I))
            AntiDumpingAmt = AntiDumpingAmt + val(GetText(spdVar, IAntDumValue, I))
            TotTCSAMT = TotTCSAMT + val(GetText(spdVar, itcsamt, I))
            TOTIDVALUE = TOTIDVALUE + val(GetText(spdVar, IIDAMT, I))
            TOTWELFAREAMT = TOTWELFAREAMT + val(GetText(spdVar, IWELFAREAMT, I))
            TCSASSAMTD = TCSASSAMTD + val(GetText(spdVar, ITCS_AssValue, I))
            totDisc_Amt = totDisc_Amt + val(GetText(spdVar, IDiscAmt, I))
'           TCGSTAMT = TCGSTAMT + val(GetText(spdVar, ICGSTAMT, I))
'           TSGSTAMT = TSGSTAMT + val(GetText(spdVar, ISGSTAMT, I))
'           TIGSTAMT = TIGSTAMT + val(GetText(spdVar, IIGSTAMT, I))
            Ttotspotexpense = Ttotspotexpense + val(GetText(spdVar, ISpotExpenseAmt, I))
            Ttotincident = Ttotincident + val(GetText(spdVar, IIncidentChargeAmt, I))
Next
                TxtSpotExpenseAmt.Text = Format(Ttotspotexpense, "00.00")
                TxtIincidentAmt.Text = Format(Ttotincident, "00.00")

                txtfields(107).Text = Format(CStr(val(dutywgt)), "##.000")
                txtfields(110).Text = Format(CStr(val(dutyval)), "##.00")
                txtfields(7).Text = Format(CStr(val(dAssValue)), "##.00")
                If Chk_TCSAssValFlg.value = 1 Or val(txtfields(130).Text) = 0 Then
                txtfields(130).Text = Format(CStr(val(TCSASSAMTD)), "##.00")
                End If
                txtfields(121).Text = Format(CStr(val(totDisc_Amt)), "##.00")
               ' txtFields(55).Text = Format(CStr(val(TCGSTAMT + TSGSTAMT + TIGSTAMT)), "##.00")
                
                
                Set rsPara1 = New Recordset
                rsPara1.Open "select isnull(RSW_Roff,0) RSW_Roff,isnull(RID_Roff,0) RID_Roff from rm_param ", DB, adOpenStatic
            
                txtfields(104).Text = Format(CStr(KSLRound(val(TOTWELFAREAMT), val(rsPara1(0) & ""))), "##.00")
                txtfields(99).Text = Format(CStr(KSLRound(val(TOTIDVALUE), val(rsPara1(1) & ""))), "##.00")
                
                txtfields(118).Text = Format(CStr(val(CGSTAMTD)), "##.00")
                txtfields(117).Text = Format(CStr(val(SGSTAMTD)), "##.00")
                txtfields(116).Text = Format(CStr(val(IGSTAMTD)), "##.00")
                txtfields(123).Text = Format(CStr(val(TotTCSAMT) + val(txtfields(126))), "##.00")
                
                txtfields(115).Text = Format(CStr(val(AntiDumpingAmt)), "##.00")
                txtfields(55).Text = Format(CStr(val(CGSTAMTD + SGSTAMTD + IGSTAMTD)), "##.000")
                txtfields(118).Text = Format(Round(val(txtfields(118).Text), CGST_ROFF), "0.00")
                txtfields(117).Text = Format(Round(val(txtfields(117).Text), SGST_ROFF), "0.00")
                txtfields(116).Text = Format(Round(val(txtfields(116).Text), IGST_ROFF), "0.00")
                
                txtfields(118).Text = Format(val(txtfields(118).Text) + val(txtfields(112).Text), "0.00")
                txtfields(117).Text = Format(val(txtfields(117).Text) + val(txtfields(113).Text), "0.00")
                txtfields(116).Text = Format(val(txtfields(116).Text) + val(txtfields(114).Text), "0.00")
             
                txtfields(7).Text = val(txtfields(7).Text) + val(txtfields(133).Text)
                
                txtfields(55).Text = Format(val(txtfields(118).Text) + val(txtfields(117).Text) + val(txtfields(116).Text), "0.00")
                
intervalMinutes = -1
If UCase(CustID) = "KUMARAGIRI" Then
    dAssValue = val(txtfields(7).Text)
End If
Call TaxCalc
Call LANDEDCOST(val(txtfields(7).Text))
Call fBillValue(val(txtfields(7).Text))
Call DRCRAmt

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
'Amount Field Value Assign
intervalMinutes = -1
    dValue = KSLRound(val(txtValue) / totalRows, 2)
    For iCount = 1 To spdVar.MaxRows
        If iCount = totalRows Then dValue = txtValue - dRoundValue
        dRoundValue = Round(dRoundValue + dValue, 2)
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
intervalMinutes = -1
For iC = 1 To spdVar.MaxRows
    Set Rs = New Recordset
    Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(GetText(spdVar, ILotdt, iC), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(GetText(spdVar, ILotdt, iC), "yyyy-MM-DD") & "'", DB, adOpenStatic
    If Rs.EOF = False Then
        sLotYear = Year(Rs("AYFDATE"))
    Else
        sLotYear = Year(GetText(spdVar, ILotdt, iC))
    End If
    
    If MaskEdBox1(4).Text <> "__/__/____" Then
        strQ1 = ""
        strQ1 = "Update Rm_Lot Set be_no = '" & Trim(txtfields(106).Text) & "', be_date = '" & Format(MaskEdBox1(4).Text, "YYYY-MM-DD") & "'  Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strQ1
    End If
    
    strQ1 = ""
   ' If iC = 1 Then
    strQ1 = "Update Rm_Lot Set lot_incidentcharge=" & val(txtincidentcharge.Text) & ",lot_spotexpense=" & val(txtspotexpense.Text) & ",TypeTruckbale='" & Left(Combo12.Text, 1) & "',Lotincidentchargeamt=" & val(TxtIincidentAmt.Text) & ",Lotspotexpenseamt=" & val(TxtSpotExpenseAmt.Text) & ", penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', TDS_Manual ='" & Chk_TDSManual.value & "',TDSTypeCode='" & Trim(txtfields(132).Text) & "',TDSFLG= case when " & Chk_TDSFLAG.value & " =1 and " & val(txtfields(128).Text) & " <>0 then 'Y' else 'N' end , TDS_AssAmt='" & val(GetText(spdVar, ITDSASSAMT, iC)) & "',tdsamt='" & val(GetText(spdVar, ITDSAMT, iC)) & "',tds_per='" & val(GetText(spdVar, ITDSPER, iC)) & "' Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A'  and varcode = '" & GetText(spdVar, IVarcode, iC) & "'"
    DB.Execute strQ1
    
    strQ1 = "Update Rm_Lot Set ACGSTAMT='" & val(GetText(spdVar, IACGSTAMT, iC)) & "',ASGSTAMT='" & val(val(GetText(spdVar, IASGSTAMT, iC))) & "',AIGSTAMT ='" & val(val(GetText(spdVar, IAIGSTAMT, iC))) & "',Bill_Rate='" & val(GetText(spdVar, IBillrate, iC)) & "', SupFileName='" & Trim(txtfields(122).Text) & "', AntyDumperkg='" & val(GetText(spdVar, IAntDumPer, iC)) & "', AntyDumAmt='" & val(GetText(spdVar, IAntDumValue, iC)) & "',ATCSAMT ='" & val(GetText(spdVar, IATCSAMT, iC)) & "' Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A'  and varcode = '" & GetText(spdVar, IVarcode, iC) & "'"
    DB.Execute strQ1
    
    strQ1 = "Update Rm_Lot_DET Set ACGSTAMT='" & val(GetText(spdVar, IACGSTAMT, iC)) & "',ASGSTAMT='" & val(val(GetText(spdVar, IASGSTAMT, iC))) & "',AIGSTAMT ='" & val(val(GetText(spdVar, IAIGSTAMT, iC))) & "' Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A'  and varcode = '" & GetText(spdVar, IVarcode, iC) & "'"
    DB.Execute strQ1
    
    strQ1 = ""
    
    If BVLotUpdateFlg = "Y" Then
    strQ1 = "Update Rm_Lot Set penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', TCS_CalcAssAmtFlag='" & Chk_TCSAssValFlg.value & "', TCS_AssAmt='" & val(GetText(spdVar, ITCS_AssValue, iC)) & "', tcs_amt='" & val(GetText(spdVar, itcsamt, iC)) & "',tcs_per='" & val(GetText(spdVar, itcsper, iC)) & "',AntyDumperkg='" & val(GetText(spdVar, IAntDumPer, iC)) & "', AntyDumAmt='" & val(GetText(spdVar, IAntDumValue, iC)) & "', tax_per=" & val(GetText(spdVar, ITaxper, iC)) & ",vatper=" & val(GetText(spdVar, ITaxper, iC)) & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",vatamt=" & val(GetText(spdVar, ITaxamt, iC)) & ", scper=" & val(GetText(spdVar, ISCper, iC)) & ", scamt=" & val(GetText(spdVar, ISCamt, iC)) & ", Form_Type = '" & Trim(txtfields(39).Text) & _
            "',fbillno = '" & Trim(txtfields(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = " & val(txtfields(47).Text) & _
            "  Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
    Else
    strQ1 = "Update Rm_Lot Set penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', TCS_CalcAssAmtFlag='" & Chk_TCSAssValFlg.value & "', TCS_AssAmt='" & val(GetText(spdVar, ITCS_AssValue, iC)) & "', tcs_amt='" & val(GetText(spdVar, itcsamt, iC)) & "',tcs_per='" & val(GetText(spdVar, itcsper, iC)) & "',AntyDumperkg='" & val(GetText(spdVar, IAntDumPer, iC)) & "', AntyDumAmt='" & val(GetText(spdVar, IAntDumValue, iC)) & "', tax_per=" & val(GetText(spdVar, ITaxper, iC)) & ",vatper=" & val(GetText(spdVar, ITaxper, iC)) & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ", scper=" & val(GetText(spdVar, ISCper, iC)) & ", scamt=" & val(GetText(spdVar, ISCamt, iC)) & ", Form_Type = '" & Trim(txtfields(39).Text) & _
            "',fbillno = '" & Trim(txtfields(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = " & val(txtfields(47).Text) & _
            "  Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and lottype='A' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
    
    End If
    
'    strQ1 = "Update Rm_Lot_det Set tax_per=" & val(GetText(spdVar, ITaxper, iC)) & ",vatper=" & val(GetText(spdVar, ITaxper, iC)) & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",vatamt=" & val(GetText(spdVar, ITaxamt, iC)) & ", scper=" & val(GetText(spdVar, ISCper, iC)) & ", scamt=" & val(GetText(spdVar, ISCamt, iC)) & ", Form_Type = '" & Trim(txtfields(39).Text) & _
'            "',fbillno = '" & Trim(txtfields(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = " & val(txtfields(47).Text) & _
'            "  Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
'
'
'
    
    DB.Execute strQ1
        
 If Opt <> "mod" Then
   
    If val(txtDBCRNt.Text) <> 0 Then
        Set rsb = New Recordset
        rsb.Open "select * from rm_lot where  LOTYEAR='" & Year(yfdate) & "' AND LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  Lotno =" & GetText(spdVar, ILotNo, iC) & "  and  varcode ='" & GetText(spdVar, IVarcode, iC) & "' and Divcode ='" & Divcode & "' and lottype='A' and  OPFLG ='N' and (dbno is null ) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If rsb.RecordCount > 0 Then
            Set rsa = New Recordset
            'rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & txtfields(0) & "' and (dbamt is not null and dbamt<>0) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'", DB
            rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where  Divcode ='" & Divcode & "' and  OPFLG ='N' and (dbno is not null) and pjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
            If rsa.RecordCount > 0 Then
            DB.Execute "Update Rm_Lot Set dbno = " & rsa(0) & " Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            
            DB.Execute "Update Rm_Lot_det Set dbno = " & rsa(0) & " Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            
            
            End If
        
        End If
    Else
        DB.Execute "Update Rm_Lot Set dbno = null  Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        
        DB.Execute "Update Rm_Lot_det Set dbno = null  Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                   "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
    
    End If
 End If
    
        Assvalue = KSLRound((val(GetText(spdVar, Ipjamt, iC))), ASSVAL_ROFF) ' + val(txtAdjValue.Text)) - val(txtFields(34).Text)
        
        If BVLotUpdateFlg = "Y" Then
        
            DB.Execute "UPDATE RM_LOT SET shipchrg=" & val(GetText(spdVar, Ishipchrg, iC)) & ",  tcs_amt='" & val(GetText(spdVar, itcsamt, iC)) & "',tcs_per='" & val(GetText(spdVar, itcsper, iC)) & "', pjamt=" & Assvalue & ",ASSVALUE= " & Assvalue & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",totlandcost=" & val(GetText(spdVar, ILandedcost, iC)) & ",PTYPE='" & Trim(txtfields(302).Text) & "' WHERE " & _
                    " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        Else
        
           DB.Execute "UPDATE RM_LOT SET shipchrg=" & val(GetText(spdVar, Ishipchrg, iC)) & ",  tcs_amt='" & val(GetText(spdVar, itcsamt, iC)) & "',tcs_per='" & val(GetText(spdVar, itcsper, iC)) & "',pjamt=" & Assvalue & ",ASSVALUE= " & Assvalue & ",AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",PTYPE='" & Trim(txtfields(302).Text) & "' WHERE " & _
                    " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        
        End If
        
           DB.Execute "UPDATE RM_LOT_det SET shipchrg=" & val(GetText(spdVar, Ishipchrg, iC)) & ", pjamt=" & Assvalue & ",ASSVALUE= " & Assvalue & " ,AdjValue = " & val(GetText(spdVar, Iround, iC)) & ",totlandcost=" & val(GetText(spdVar, ILandedcost, iC)) & ",PTYPE='" & Trim(txtfields(302).Text) & "' WHERE " & _
                    " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        
        
                    
                    
        Set rs1 = New Recordset
        rs1.Open "SELECT STATE_CODE FROM FA_SLMAS WHERE SLCODE='" & txtfields(81).Text & "'", DB, adOpenStatic
        Dim VcarcdCode As String
        VcarcdCode = "R"
        Set RS2 = New Recordset
        RS2.Open "SELECT STATE_CODE FROM PP_DIVMAS WHERE divcode='" & Divcode & "'", DB, adOpenStatic
        If rs1("STATE_CODE") = RS2("STATE_CODE") Then
            VcarcdCode = "R"
'            db.Execute "UPDATE RM_LOT SET vcatcd= 'R' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
'                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and  " & _
'                    "  OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        Else
            VcarcdCode = "O"
'            db.Execute "UPDATE RM_LOT SET vcatcd= 'O' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
'                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
'                    "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        End If

        DB.Execute "UPDATE RM_LOT SET vcatcd= '" & VcarcdCode & "' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and lottype='A'   and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
       
        DB.Execute "UPDATE RM_LOT_DET SET vcatcd= '" & VcarcdCode & "' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"


        sCode = IIf(IsNull(GetText(spdVar, ITaxCode, iC)) = True, " ", Trim(GetText(spdVar, ITaxCode, iC)))
        
        If BVLotUpdateFlg = "Y" Then
            strSQL = "UPDATE RM_LOT SET   penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",FBILLWT = " & val(GetText(spdVar, IAcWgt, iC)) & ", FBILLVALUE= " & fBillValueLot(iC) & _
                     ", dbamt = " & val(txtDBCRNt.Text) & ", TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & _
                     ", tax_code ='" & Trim(sCode) & "', TAX_PER = " & val(GetText(spdVar, ITaxper, iC)) & ", LANDCOSTWITHTAX = " & val(GetText(spdVar, ILandedcost, iC)) & _
                     ", VATAMT = " & val(GetText(spdVar, ITaxamt, iC)) & ", SCPER = " & val(GetText(spdVar, ISCper, iC)) & ", SCAMT = " & val(GetText(spdVar, ISCamt, iC)) & " WHERE " & _
                     "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                     " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                     " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            DB.Execute strSQL
        
        Else
                strSQL = "UPDATE RM_LOT SET   penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ",FBILLWT = " & val(GetText(spdVar, IAcWgt, iC)) & ", FBILLVALUE= " & fBillValueLot(iC) & _
                 ", dbamt = " & val(txtDBCRNt.Text) & _
                 ", tax_code ='" & Trim(sCode) & "', TAX_PER = " & val(GetText(spdVar, ITaxper, iC)) & _
                 ", SCPER = " & val(GetText(spdVar, ISCper, iC)) & ", SCAMT = " & val(GetText(spdVar, ISCamt, iC)) & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                DB.Execute strSQL
        End If
        
            strSQL = "UPDATE RM_LOT_DET SET  Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",FBILLWT = " & val(GetText(spdVar, IAcWgt, iC)) & ", FBILLVALUE= " & fBillValueLot(iC) & _
                 ", dbamt = " & val(txtDBCRNt.Text) & ", TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & _
                 ", tax_code ='" & Trim(sCode) & "', TAX_PER = " & val(GetText(spdVar, ITaxper, iC)) & ", LANDCOSTWITHTAX = " & val(GetText(spdVar, ILandedcost, iC)) & _
                 ", VATAMT = " & val(GetText(spdVar, ITaxamt, iC)) & ", SCPER = " & val(GetText(spdVar, ISCper, iC)) & ", SCAMT = " & val(GetText(spdVar, ISCamt, iC)) & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
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
        If BVLotUpdateFlg = "Y" Then
            strSQL = ""
            strSQL = "UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,duty_Wt=" & val(GetText(spdVar, Idutywt, iC)) & ",POTYPE='" & Left(Trim(Combo3.Text), 1) & "', DutyValue=" & val(GetText(spdVar, IdutyValue, iC)) & ",welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",Cashdisper = " & val(GetText(spdVar, Icashdisper, iC)) & ", CashDisAmt = " & val(GetText(spdVar, Icashdisamt, iC)) & _
                     ", TradeDisPer = " & val(GetText(spdVar, Itradedisper, iC)) & ",LANDCOSTWITHTAX = " & val(dLANDCOSTWITHTAX) & ", TradedisAmt = " & val(GetText(spdVar, Itradedisamt, iC)) & _
                     ", CessPer = " & val(GetText(spdVar, Icessper, iC)) & ", CessAmt = " & val(GetText(spdVar, Icessamt, iC)) & _
                     ", BEDPer = " & val(GetText(spdVar, IBedper, iC)) & ", BEDAMT = " & val(GetText(spdVar, IBedamt, iC)) & ", CSTPer = " & (val(txtfields(86).Text) / spdVar.MaxRows) & ", cstamt = " & (val(txtfields(87).Text) / spdVar.MaxRows) & "  WHERE " & _
                     "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                     "  LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                     " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            DB.Execute strSQL
        Else
             strSQL = ""
            strSQL = "UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,duty_Wt=" & val(GetText(spdVar, Idutywt, iC)) & ",POTYPE='" & Left(Trim(Combo3.Text), 1) & "', DutyValue=" & val(GetText(spdVar, IdutyValue, iC)) & ",welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ",Cashdisper = " & val(GetText(spdVar, Icashdisper, iC)) & ", CashDisAmt = " & val(GetText(spdVar, Icashdisamt, iC)) & _
                     ", TradeDisPer = " & val(GetText(spdVar, Itradedisper, iC)) & ",LANDCOSTWITHTAX = " & val(dLANDCOSTWITHTAX) & " , TradedisAmt = " & val(GetText(spdVar, Itradedisamt, iC)) & _
                     ", CessPer = " & val(GetText(spdVar, Icessper, iC)) & ", CessAmt = " & val(GetText(spdVar, Icessamt, iC)) & _
                     ", BEDPer = " & val(GetText(spdVar, IBedper, iC)) & ", BEDAMT = " & val(GetText(spdVar, IBedamt, iC)) & ", CSTPer = " & (val(txtfields(86).Text) / spdVar.MaxRows) & ", cstamt = " & (val(txtfields(87).Text) / spdVar.MaxRows) & "  WHERE " & _
                     "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                     "  LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                     " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            DB.Execute strSQL
        End If
        
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT_DET SET  Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,duty_Wt=" & val(GetText(spdVar, Idutywt, iC)) & ",POTYPE='" & Left(Trim(Combo3.Text), 1) & "', DutyValue=" & val(GetText(spdVar, IdutyValue, iC)) & ",welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",Cashdisper = " & val(GetText(spdVar, Icashdisper, iC)) & ", CashDisAmt = " & val(GetText(spdVar, Icashdisamt, iC)) & _
                 ", TradeDisPer = " & val(GetText(spdVar, Itradedisper, iC)) & ", TradedisAmt = " & val(GetText(spdVar, Itradedisamt, iC)) & _
                 ", CessPer = " & val(GetText(spdVar, Icessper, iC)) & ", CessAmt = " & val(GetText(spdVar, Icessamt, iC)) & _
                 ", BEDPer = " & val(GetText(spdVar, IBedper, iC)) & ", BEDAMT = " & val(GetText(spdVar, IBedamt, iC)) & ", CSTPer = " & (val(txtfields(86).Text) / spdVar.MaxRows) & ", cstamt = " & (val(txtfields(87).Text) / spdVar.MaxRows) & "  WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "  LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
                 
        strSQL = ""
        
        strSQL = "UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', OTHTAXPER = " & val(GetText(spdVar, IOthtaxPer, iC)) & ", OTHTAXAMT = " & val(GetText(spdVar, IothTaxamt, iC)) & _
                 ", LRFRTPER = " & val(GetText(spdVar, IFrtper, iC)) & ", LRFRTAmt = " & val(GetText(spdVar, IFrtamt, iC)) & _
                 ", RLYFRTPER = " & val(GetText(spdVar, IRlyfrtper, iC)) & ", RLYFRTAMT = " & val(GetText(spdVar, IRlyfrtamt, iC)) & _
                 ", COMMPER = " & val(GetText(spdVar, ICommper, iC)) & ", COMMAMT = " & val(GetText(spdVar, ICommAMT, iC)) & _
                 ", brkcomPer = " & val(txtfields(91).Text) & " , BRKCOM = " & val(txtfields(82).Text) / spdVar.MaxRows & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "'  and lottype='A' and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
        
        strSQL = ""
        
        strSQL = "UPDATE RM_LOT_DET SET  OTHTAXPER = " & val(GetText(spdVar, IOthtaxPer, iC)) & ", OTHTAXAMT = " & val(GetText(spdVar, IothTaxamt, iC)) & _
                 ", LRFRTPER = " & val(GetText(spdVar, IFrtper, iC)) & ", LRFRTAmt = " & val(GetText(spdVar, IFrtamt, iC)) & _
                 ", RLYFRTPER = " & val(GetText(spdVar, IRlyfrtper, iC)) & ", RLYFRTAMT = " & val(GetText(spdVar, IRlyfrtamt, iC)) & _
                 ", COMMPER = " & val(GetText(spdVar, ICommper, iC)) & ", COMMAMT = " & val(GetText(spdVar, ICommAMT, iC)) & _
                 ", brkcomPer = " & val(txtfields(91).Text) & " , BRKCOM = " & val(txtfields(82).Text) / spdVar.MaxRows & " WHERE " & _
                 "  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        DB.Execute strSQL
        
        
        
        If optAfter = True Then Sflg = "Y" Else Sflg = "N"
        If BVLotUpdateFlg = "Y" Then
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", " & _
                 " IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",LCINTPER = " & val(GetText(spdVar, ILCper, iC)) & ", LCINTAMT = " & val(GetText(spdVar, ILCamt, iC)) & _
                 ", CHARITYAMT = " & val(GetText(spdVar, Icharity, iC)) & ", CESSAMT = " & val(GetText(spdVar, Icessamt, iC)) & ", DAMAGEAMT = " & val(txtfields(64).Text) / iRow & _
                 ", CLEARANCEAMT = " & val(txtfields(66).Text) / iRow & ", OTHERSAMT = " & val(GetText(spdVar, IOthers, iC)) & _
                 ", INSPER = " & val(GetText(spdVar, IInsper, iC)) & ", INSAMT = " & val(GetText(spdVar, IInsamt, iC)) & _
                 ", AEDPER = " & val(GetText(spdVar, IHscessper, iC)) & ", AEDAMT = " & val(GetText(spdVar, IHscessamt, iC)) & _
                 ", SEDPER = " & val(GetText(spdVar, IEdper, iC)) & ", SEDAMT = " & val(GetText(spdVar, IEdamt, iC)) & _
                 ", CUSTOMSDUTYAMT = " & val(GetText(spdVar, IcustomDuty, iC)) & ",DiscountFlg = '" & Sflg & "' WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                 DB.Execute strSQL
        
        Else
               strSQL = ""
            strSQL = "UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", " & _
                 " LCINTPER = " & val(GetText(spdVar, ILCper, iC)) & ", LCINTAMT = " & val(GetText(spdVar, ILCamt, iC)) & _
                 ", CHARITYAMT = " & val(GetText(spdVar, Icharity, iC)) & ", CESSAMT = " & val(GetText(spdVar, Icessamt, iC)) & ", DAMAGEAMT = " & val(txtfields(64).Text) / iRow & _
                 ", CLEARANCEAMT = " & val(txtfields(66).Text) / iRow & ", OTHERSAMT = " & val(GetText(spdVar, IOthers, iC)) & _
                 ", INSPER = " & val(GetText(spdVar, IInsper, iC)) & ", INSAMT = " & val(GetText(spdVar, IInsamt, iC)) & _
                 ", AEDPER = " & val(GetText(spdVar, IHscessper, iC)) & ", AEDAMT = " & val(GetText(spdVar, IHscessamt, iC)) & _
                 ", SEDPER = " & val(GetText(spdVar, IEdper, iC)) & ", SEDAMT = " & val(GetText(spdVar, IEdamt, iC)) & _
                 ", CUSTOMSDUTYAMT = " & val(GetText(spdVar, IcustomDuty, iC)) & ",DiscountFlg = '" & Sflg & "' WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"

                DB.Execute strSQL
        End If
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT_DET SET Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", " & _
                 " IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",LCINTPER = " & val(GetText(spdVar, ILCper, iC)) & ", LCINTAMT = " & val(GetText(spdVar, ILCamt, iC)) & _
                 ", CHARITYAMT = " & val(GetText(spdVar, Icharity, iC)) & ", CESSAMT = " & val(GetText(spdVar, Icessamt, iC)) & ", DAMAGEAMT = " & val(txtfields(64).Text) / iRow & _
                 ", CLEARANCEAMT = " & val(txtfields(66).Text) / iRow & ", OTHERSAMT = " & val(GetText(spdVar, IOthers, iC)) & _
                 ", INSPER = " & val(GetText(spdVar, IInsper, iC)) & ", INSAMT = " & val(GetText(spdVar, IInsamt, iC)) & _
                 ", AEDPER = " & val(GetText(spdVar, IHscessper, iC)) & ", AEDAMT = " & val(GetText(spdVar, IHscessamt, iC)) & _
                 ", SEDPER = " & val(GetText(spdVar, IEdper, iC)) & ", SEDAMT = " & val(GetText(spdVar, IEdamt, iC)) & _
                 ", CUSTOMSDUTYAMT = " & val(GetText(spdVar, IcustomDuty, iC)) & ",DiscountFlg = '" & Sflg & "' WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
            DB.Execute strSQL
        
        
                
        If opt_c = True Then Sflg = "Y" Else Sflg = "N"
        
                sCode = ""
                If BVLotUpdateFlg = "Y" Then
                        strSQL = ""
                        strSQL = " UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",LANDCOSTWITHTAX = " & val(dLANDCOSTWITHTAX) & " ,TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & ", " & _
                                 " RATEKG= " & val(GetText(spdVar, IRateKG, iC)) & " ,Billno= '" & Trim(txtfields(6).Text) & "',BillDt= '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "'," & _
                                 " otherTaxableAmt =" & val(GetText(spdVar, IOthTaxableAmt, iC)) & "," & _
                                 " DutyPer =" & val(txtfields(109).Text) & ",dutyclaimable ='" & Sflg & "'," & _
                                 " aDDTAXCODE='" & Trim(txtfields(42).Text) & "', ADDTAXPER= " & val(GetText(spdVar, IATaxper, iC)) & ", ADDTAXAMOUNT=" & val(GetText(spdVar, IATaxamt, iC)) & " WHERE " & _
                                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                                 " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                        
                        DB.Execute strSQL
                
                Else
                        strSQL = ""
                        strSQL = " UPDATE RM_LOT SET  penalty='" & val(Text6.Text) & "', interest='" & val(Text5.Text) & "', Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", " & _
                                 " Billno= '" & Trim(txtfields(6).Text) & "',BillDt= '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "'," & _
                                 " otherTaxableAmt =" & val(GetText(spdVar, IOthTaxableAmt, iC)) & "," & _
                                 " DutyPer =" & val(txtfields(109).Text) & ",dutyclaimable ='" & Sflg & "'," & _
                                 " aDDTAXCODE='" & Trim(txtfields(42).Text) & "', ADDTAXPER= " & val(GetText(spdVar, IATaxper, iC)) & ", ADDTAXAMOUNT=" & val(GetText(spdVar, IATaxamt, iC)) & " WHERE " & _
                                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                                 " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                                 " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                        
                        DB.Execute strSQL
                End If
                
                strSQL = ""
                strSQL = " UPDATE RM_LOT_DET SET Advance_amt='" & val(GetText(spdVar, IAdvAmt, iC)) & "' ,welfareamt=" & val(GetText(spdVar, IWELFAREAMT, iC)) & ",welfareper=" & val(GetText(spdVar, IWELFAREPER, iC)) & ",IDAmt=" & val(GetText(spdVar, IIDAMT, iC)) & ", IDPer=" & val(GetText(spdVar, IIDPER, iC)) & ", IGSTAMT=" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=" & val(GetText(spdVar, ICGSTAMT, iC)) & ",LANDCOSTWITHTAX = " & val(dLANDCOSTWITHTAX) & " ,TOTLANDCOST = " & val(GetText(spdVar, ILandedcost, iC)) & ", " & _
                         " Billno= '" & Trim(txtfields(6).Text) & "',BillDt= '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "'," & _
                         " otherTaxableAmt =" & val(GetText(spdVar, IOthTaxableAmt, iC)) & "," & _
                         " DutyPer =" & val(txtfields(109).Text) & ",dutyclaimable ='" & Sflg & "'," & _
                         " aDDTAXCODE='" & Trim(txtfields(42).Text) & "', ADDTAXPER= " & val(GetText(spdVar, IATaxper, iC)) & ", ADDTAXAMOUNT=" & val(GetText(spdVar, IATaxamt, iC)) & " WHERE " & _
                         " Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                         " LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                         " Divcode ='" & Divcode & "' and lottype='A'  and OPFLG ='N' and varcode = '" & GetText(spdVar, IVarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                
                DB.Execute strSQL
        
Next
For iC = 1 To FSPDDiscount.MaxRows
    strQ1 = "Update RM_LotDiscntRate Set DRate='" & val(GetText(FSPDDiscount, D_SPDDTDRate, iC)) & "',Disc_Amt='" & val(val(GetText(FSPDDiscount, D_SPDDTDValue, iC))) & "' Where DType ='" & Trim(GetText(FSPDDiscount, D_SPDDTDISCCODE, iC)) & "' and ContNo =" & val(GetText(FSPDDiscount, D_SPDDTContno, iC)) & " and Contdt ='" & Format(GetText(FSPDDiscount, D_SPDDTContdt, iC), "yyyy/mm/dd") & "' and Lotno =" & val(GetText(FSPDDiscount, D_SPDDTLOTNO, iC)) & " and LotDt ='" & Format(GetText(FSPDDiscount, D_SPDDTLOTDT, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and varcode = '" & Trim(GetText(FSPDDiscount, D_SPDDTVarcode, iC)) & "'"
    DB.Execute strQ1

Next

End Sub
Private Function fBillValueLot(Row As Integer) As Double
    fBillValueLot = 0
    intervalMinutes = -1
'    Set Rs = New Recordset
'    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
'
'    If Rs(0) = "Y" Then
'        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ICGSTAMT, Row)) + val(GetText(spdVar, ISGSTAMT, Row)) + val(GetText(spdVar, IIGSTAMT, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, ICommAMT, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, IDiscAmt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
'    ElseIf Rs(0) <> "Y" Then
'        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ICGSTAMT, Row)) + val(GetText(spdVar, ISGSTAMT, Row)) + val(GetText(spdVar, IIGSTAMT, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, IDiscAmt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
'    End If
    fBillValueLot = val(GetText(spdVar, IFbillvalue, Row))
End Function

Private Sub fbillamtcheck()
intervalMinutes = -1
   On Error GoTo fbillamtcheck_Error
 Set Rs = New Recordset
    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
    If Rs(0) = "Y" And Rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance                                      cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(66)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtfields(60)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)                            cash discount         Trade Discount
        mfbillamt = Format(val(txtfields(7)) + val(txtfields(51)) + val(txtfields(75)) + val(txtfields(73)) + val(txtfields(71)) + val(txtfields(65)) + val(txtfields(63)) + val(txtfields(64)) + val(txtfields(67)) + val(txtfields(125)) + val(txtfields(69)) + val(txtfields(55)) + val(txtfields(77)) + val(txtfields(87)) + val(txtfields(41)) + val(txtfields(58)) + val(txtAdjValue.Text) - (val(txtfields(54)) + val(txtfields(121).Text) + val(txtfields(85))), "0.00")
    End If

   On Error GoTo 0
   Exit Sub

fbillamtcheck_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fbillamtcheck of Form frmPurchaseBillMultiple"
End Sub

Sub FORAmtCalculationSCM()
If CustID = "COTTON1" Then
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
Private Sub FindLookUp()
 Opt = "query"
    desc.Caption = "Find"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    'db.BeginTrans
    Set yRS = New Recordset
    yRS.Open "SELECT top 1 DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt,be_no,be_date,Advance_amt ,AntyDumperkg,AntyDumAmt,penalty,interest FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
    
    
    If yRS.RecordCount <> 0 Then
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
        LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"",b.slname 'Supplier' from rm_lot a inner join fa_slmas b on b.slcode=a.supcd where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL  "
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
'            Opt = ""
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and pjno=" & LookUp.Fields(0) & " and pjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))

            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = True
            BUTTON(8).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(2).Enabled = False
            BUTTON(0).Enabled = False
            BUTTON(1).Enabled = False
        Else
          '  MsgBox "All Lots are used. Deletion not allowed!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
   End If
End Sub

Private Sub SaveTransLog()
On Error Resume Next




DB.BeginTrans
For f = 1 To spdVar.MaxRows

       Set TrnLog = New Recordset
            TrnLog.Open "SELECT DelReason,Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,dutyValue,dutyWt,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,MRNValue,BILLValue,DBCR,dutyWt,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Purchase Bill"
            TrnLog("Trans_Mod") = Opt
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
'            TrnLog("plcode") = Trim(txtfields(120).Text)
'            TrnLog("Line_No") = Trim(txtfields(121).Text)
'            TrnLog("arrno") = Trim(txtfields(96).Text)
'            TrnLog("arrdt") = Format(MaskEdBox1(4).Text, "YYYY-MM-DD")

            TrnLog("slcode") = txtfields(81).Text
            TrnLog("purtype") = txtfields(302).Text
            TrnLog("tc") = val(txtfields(300).Text)
            'trnlog("areacode") = IIf(Trim(txtfields(38).Text) = "", Null, txtfields(38).Text)
            'trnlog("Agent_code") = IIf(Trim(txtfields(37).Text) = "", Null, txtfields(37).Text)
            
            TrnLog("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("lotno") = GetText(spdVar, ILotNo, f)
            
            TrnLog("docno") = val(txtfields(304).Text)
            If MaskEdBox1(3).Text = "__/__/____" Then
            TrnLog("docdt") = Null
            Else
            TrnLog("docdt") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            
            End If
            TrnLog("billno") = txtfields(6).Text
            
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
            TrnLog("bbflg") = Left(GetText(spdVar, Iunit, f), 1)
            
'            TrnLog("rateunit") = Trim(txtfields(110).Text)
            TrnLog("Comm_wt") = val(GetText(spdVar, ICOMMWt, f))
            TrnLog("Adv_AMT") = val(txtfields(111).Text)
            TrnLog("SWAMT") = val(GetText(spdVar, IWELFAREAMT, f))
            TrnLog("IDAMT") = val(GetText(spdVar, IIDAMT, f))
            TrnLog("SWPer") = val(GetText(spdVar, IWELFAREPER, f))
            TrnLog("IDPer") = val(GetText(spdVar, IIDPER, f))
            
            TrnLog("dutyValue") = val(GetText(spdVar, IdutyValue, f))
            TrnLog("dutyWt") = val(GetText(spdVar, Idutywt, f))
            TrnLog("Frg_Amt") = val(txtfields(38).Text)
            TrnLog("ins_Amt") = val(txtfields(58).Text)
            TrnLog("Oth_Amt") = val(txtAdjValue.Text)
            
            TrnLog("billvalue") = val(txtfields(96).Text)
            TrnLog("MRNValue") = val(txtfields(47).Text)
            TrnLog("DBCR") = val(txtDBCRNt.Text)
           
            
            TrnLog("varcode") = (GetText(spdVar, IVarcode, f))
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            
            TrnLog("CATCD") = rscc("CATCD")
     
         '   trnLog("currency") = (GetText(spdVar, , f))
            TrnLog("conv_Rate") = val(txtfields(108).Text)
            TrnLog("PGrosswt") = val(GetText(spdVar, Ipgrosswt, f))
            TrnLog("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            TrnLog("PTarewt") = val(GetText(spdVar, Ipnetwt, f))
     
            TrnLog("ordqty") = val(GetText(spdVar, iQty, f))
            TrnLog("Grosswt") = val(GetText(spdVar, Imgrosswt, f))
            TrnLog("tarewt") = val(GetText(spdVar, Imtarewt, f))
   
            TrnLog("netwt") = val(GetText(spdVar, Imnetwt, f))
            
            TrnLog("AssAmount") = val(GetText(spdVar, Ipjamt, f))
            TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, f))

            TrnLog("LandingCost") = val(GetText(spdVar, ILandedcost, f))
            TrnLog("ratekg") = val(GetText(spdVar, IRateKG, f))
            TrnLog("TaxCode") = GetText(spdVar, ITaxCode, f)
       
            TrnLog("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            TrnLog("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            TrnLog("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            TrnLog("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            TrnLog("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            TrnLog("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            TrnLog("HSN") = Trim(GetText(spdVar, IHSN, f))
            TrnLog("POType") = Left(Combo3.Text, 1)
            TrnLog("LandcostWithTax") = val(GetText(spdVar, ILandedcost, f)) + val(GetText(spdVar, IIGSTAMT, f)) + val(GetText(spdVar, ISGSTAMT, f)) + val(GetText(spdVar, ICGSTAMT, f))
            TrnLog("BOENO") = Trim(txtfields(106).Text)
            If Trim(txtfields(106).Text) <> "" Then
                TrnLog("BOE_DT") = Format(DTPicker1.value, "yyyy-mm-dd")
            End If
            If Opt = "del" Then
                TrnLog("DelReason") = Trim(DelReasonCode)
            End If
            TrnLog.UpdateBatch adAffectAllChapters
Next
DB.CommitTrans
End Sub
Private Sub ExportReportToPDF(ReportObject As CRAXDRT.Report, ByVal FileName As String, ByVal ReportTitle As String)
    
    Dim objExportOptions As CRAXDRT.ExportOptions
 
    ReportObject.ReportTitle = ReportTitle
    
    With ReportObject
        .EnableParameterPrompting = False
        .MorePrintEngineErrorMessages = True
    End With
    
    Set objExportOptions = ReportObject.ExportOptions
    
    With objExportOptions
        .DestinationType = crEDTDiskFile
        .DiskFileName = FileName
        .FormatType = crEFTPortableDocFormat
        .PDFExportAllPages = True
    End With
 
    ReportObject.Export False
 
End Sub


Private Sub ExportERPBillPDF()
On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If


    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMERPBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMERPBill" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
'    CommonDialog1.ShowOpen
'    strNewFile = CommonDialog1.FileTitle
   
'  strNewFile
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(txtfields(304).Text) + " DT-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 15) & ".pdf"
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
       If Opt <> "add" Or Opt <> "mod" Then
        If MsgBox("Purchase Bill Already Exists!!! Do you want to override in server?", vbYesNo, head) = vbNo Then Exit Sub
       End If
 
    End If
    
'  If strNewFile <> "" Then
'
'    Dim myPath As String
'    myPath = strNewFile
'    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
'    FileCopy strNewFile, App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "-" & Right$(CommonDialog1.FileName, 4)
'   End If
   
   Dim CrApp As CRAXDRT.Application
           Dim oRpt As CRAXDRT.Report


            Set CrApp = New CRAXDRT.Application
            Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepRMI.rpt", 1)
            'oRpt.RecordSelectionFormula = "{PO_ORDH.PORDDT} = DATE(" & Val(Year(SPoDT)) & "," & Val(Month(SPoDT)) & "," & Val(Day(SPoDT)) & ")  and {PO_ORDH.PORDNO}=" & Val(sPono) & "  and {PO_ORDH.POGRP}='" & sPOGrp & "'  and {PO_ORDH.DivCode}='" & divcode & "'"

         '   oRpt.RecordSelectionFormula = "{sp_yarninvy_sort.sortno}='" & Trim(txtfields(37).Text) & "'  and {sp_yarninvy_sort.divcode}='" & Divcode & "'"
            '{sp_yarninvy_sort.sortno}={?@Sortcode} and {sp_yarninvy_sort.divcode}={?@divcode}

            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD

'            oRpt.ParameterFields.Item(1).AddCurrentValue (Format(MaskEdBox1(3), "yyyy-mm-dd"))
'            oRpt.ParameterFields.Item(2).AddCurrentValue Trim(txtfields(304).Text)
'            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(txtfields(304).Text)
            
            oRpt.ParameterFields.Item(1).AddCurrentValue (Divcode)
            oRpt.ParameterFields.Item(2).AddCurrentValue (Format(MaskEdBox1(3), "yyyy-mm-dd"))
            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(txtfields(304).Text)
            oRpt.ParameterFields.Item(4).AddCurrentValue Trim(txtfields(304).Text)
'            ''Rept.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
' '           'oRpt.RecordSelectionFormula = Trim(txtFields(37).Text)
'            oRpt.ParameterFields(1).AddCurrentValue Trim(Divcode)
'
'        oRpt.ParameterFields(2).AddCurrentValue Format(MaskEdBox1(3), "yyyy-mm-dd")
'        oRpt.ParameterFields(3).AddCurrentValue Trim(txtfields(304).Text)
'        oRpt.ParameterFields(4).AddCurrentValue Trim(txtfields(304).Text)
'    oRpt.get

            oRpt.ExportOptions.DiskFileName = sFilePath
            oRpt.ExportOptions.DestinationType = crEDTDiskFile
            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            oRpt.ExportOptions.PDFExportAllPages = True
            oRpt.Export False


   
   
   
End If
Exit Sub
openconnection_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
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
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTContno, "Cont No", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTContdt, "Cont Date", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDocno, "Docno", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, "Doc Date", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 32, , False, True 'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 15, 2, False, False  'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDValue, "Discount Amount", CellTypeNumber, 15, 2, False, True  'i

    End With
End Sub



Private Sub TransactionPrint()
On Error GoTo openconnection_Error
 Dim clsCryRpt2 As New clsCrystal
    If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
            Set rsnew = New Recordset
            rsnew.Open " select isnull(purbillapproval,'N') purbillapproval  from rm_param ", DB, adOpenStatic, adLockReadOnly
            If rsnew.RecordCount > 0 Then
'              If rsnew(0) = "Y" Then
'                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
'              Else
'                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
'              End If
            End If
        If Left(Combo3.Text, 1) = "L" Then
            Set Rs = New Recordset
            Rs.Open "select varcode from rm_lot where pjno='" & val(txtfields(304).Text) & "' and pjdt='" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Format(yfdate, "yyyy") & "' ", DB, adOpenStatic
            If Rs.RecordCount > 2 Then
                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
            Else
                Set clsCryRpt2.cryRept = Cry_Pur_bill_Cutsheet
            End If
        Else
            Set clsCryRpt2.cryRept = Cry_PurchaseBill_Import
        End If
    Else
    
        If UCase(CustID) = "SKS" Then
             Set clsCryRpt2.cryRept = Cry_RMI_PBill_Entry_SKS
        Else
            Set clsCryRpt2.cryRept = Cry_RMI_PBill_Entry 'RMIPurchaseBill1
        End If
        
    End If
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
  'If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
    If PDFExportFlag = 1 Then
            Call ExportERPBillPDF
    End If

Exit Sub
openconnection_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub


Private Sub DELMODLOOKUP(Opt)


 ' opt = "del"

    'db.BeginTrans
    Set yRS = New Recordset
    ''''adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and issbal is null and isswt is null and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    'adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    yRS.Open "SELECT top 1 DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,pjtc,pjno,pjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt,be_no,be_date,Advance_amt,AntyDumperkg,AntyDumAmt,penalty,interest FROM RM_LOT WHERE divcode='" & Divcode & "' and PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(PJNO,0)<>0", DB, adOpenStatic, adLockBatchOptimistic
    
    
    If yRS.RecordCount <> 0 Then
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
        'LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND PJNO IS not NULL AND isnull(AppFlg,'N') ='N' and isnull(purappflg,'N')<>'Y' "
        If UCase(CustID) = "SKS" Then
            LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"",b.Slname 'Supplier' from rm_lot a inner join fa_slmas b on a.supcd=b.slcode left join fa_purjvhead c on  a.pjno=c.vocno and a.pjdt=c.vocdt and a.divcode=c.divcode and a.pjtc=c.tc  where  LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.DIVCODE='" & Divcode & "' AND PJNO IS not NULL and  isnull(c.appflg,'n')<>'Y' and isnull(purappflg,'N')<>'Y'  AND isnull(a.AppFlg,'N') ='N' " ''
        Else
            LookUp.query = "select Distinct pjno""P.J.V. No."",pjdt""P.J.V. Date"",b.Slname 'Supplier' from rm_lot a inner join fa_slmas b on a.supcd=b.slcode left join fa_purjvhead c on  a.pjno=c.vocno and a.pjdt=c.vocdt and a.divcode=c.divcode and a.pjtc=c.tc  where  LOTYEAR='" & Year(yfdate) & "' AND PJDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.DIVCODE='" & Divcode & "' AND PJNO IS not NULL and  isnull(c.appflg,'n')<>'Y' and isnull(purappflg,'N')<>'Y'  AND isnull(a.AppFlg,'N') ='N' and a.lotno not in (select lotno from rm_lotallowance rl where rl.divcode=a.divcode and rl.lotno=a.lotno and rl.lotdt=a.lotdt) " ''
        End If
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000,3500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
'            Opt = ""
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT pjno,pjdt,pjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND pjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and pjno=" & LookUp.Fields(0) & " and pjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))
            'TXTFIELDS(300).Locked = True
            OldTc = txtfields(300).Text
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

Private Sub TDS_Calculation()
On Error GoTo TDS_Calculation_Error

If IsDate(MaskEdBox1(3).Text) = False Then
Exit Sub
End If
If Opt = "mod" Or Opt = "add" Or Opt = "query" Then
    Dim totalPurchaseAmt, TotvalueTDSASS, TDSGRossFixed, TDSPERWP, TDSPERWOP As Double
    
   ' TDSCalcFlag = "B"
    TDSGRossFixed = 0
    Set RSS = New Recordset
    RSS.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,1) TDSCalcTotPur,isnull(TDSCalcFlag,'M') TDSCalcFlag from rm_PARAM b  ", DB, adOpenStatic
    If Not RSS.EOF Then
        TDSGRossFixed = RSS(1)
        TDSPERWP = RSS(0)
        TDSPERWOP = RSS(2)
        TDSCalcTotPur = RSS(3)
        TDSCalcFlag = RSS(4)
    End If
    Set RSCHECK = New Recordset
    
    RSCHECK.Open "exec KSP_TDSAmountCalculation '" & Divcode & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Trim(txtfields(81).Text) & "','" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If Not RSCHECK.EOF Then
    totalPurchaseAmt = IIf(IsNull(RSCHECK(0)), 0, RSCHECK(0))
    End If
    
    Totdiscount = val(txtfields(54).Text) + val(txtfields(85).Text)
    
    Label8(7).Visible = True
    
    Label8(7).Caption = "Total Purchase Value for this Year : " & CStr(Format(totalPurchaseAmt, "00.00"))
    If TDSCalcFlag = "M" Then
        TotvalueTDSASS = val(txtfields(7).Text) - val(Totdiscount)
    Else
        TotvalueTDSASS = val(txtfields(47).Text)
    End If

    If Opt = "mod" Then
        Set rsamt = New Recordset
        rsamt.Open "select billamt,AssessableAmt,isnull(TradeDisAmt,0) TradeDisAmt ,isnull(CashDisAmt,0) CashDisAmt from fa_purhd where Divcode='" & Divcode & "' and slcode='" & Trim(txtfields(81).Text) & "'  and pjvno='" & val(txtfields(304).Text) & "' and tc='" & val(txtfields(300).Text) & "' and pjvdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If Not rsamt.EOF Then
            If TDSCalcFlag = "M" Then
                totalPurchaseAmt = totalPurchaseAmt - (rsamt(1) - (rsamt("TradeDisAmt") + rsamt("CashDisAmt")))
            Else
                totalPurchaseAmt = totalPurchaseAmt - rsamt(0)
            End If
        End If
        Label8(7).Caption = "Total Purchase Value for this Year : " & CStr(Format(totalPurchaseAmt, "00.00"))
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
                     'val(TotvalueTDSASS) - val(TDSGRossFixed)
                    If TDSCalcFlag = "M" Then
                        TDSAssAmt = ((val(TotvalueTDSASS)) + val(totalPurchaseAmt)) - val(TDSGRossFixed)
                    Else
                        TDSAssAmt = val(txtfields(7).Text)
                    End If
                    TTDS_AMT = 0
                    TTDSASSES_AMT = 0
                    For I = 1 To spdVar.MaxRows
                        TDSLANCOST = KSLRound(val(TDSAssAmt) / val(txtfields(9).Text) * val(GetText(spdVar, Ipnetwt, I)), 3)
                        spdVar.SetText ITDSASSAMT, I, CStr(TDSLANCOST)
                        If Tds_Rndnextrs = 1 Then
                            CalTDSAmt = KSLTDSRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0)
                        Else
                            CalTDSAmt = KSLRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0)
                        End If
                        spdVar.SetText ITDSAMT, I, CStr(CalTDSAmt)
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
                txtfields(132).Text = ""
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
                        If Tds_Rndnextrs = 1 Then
                            CalTDSAmt = KSLTDSRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0)
                        Else
                            CalTDSAmt = KSLRound(TDSLANCOST * val(txtfields(129).Text) / 100, 0)
                        End If
                        spdVar.SetText ITDSAMT, I, CStr(CalTDSAmt)  'sasi 22.10.22
                  
                        TTDSASSES_AMT = TTDSASSES_AMT + TDSLANCOST
                        TTDS_AMT = TTDS_AMT + val(CalTDSAmt)
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
            txtfields(132).Text = ""
            Call LotValueAssign(val(txtfields(129).Text), ITDSPER)
            Call LotValueAssign(val(txtfields(128).Text), ITDSAMT)
            Call LotValueAssign(val(txtfields(127).Text), ITDSASSAMT)
    End If
End If
Exit Sub
TDS_Calculation_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TDS_Calculation of Form frmPurchaseBillMultiple"
End Sub
Private Sub BILLPrint()
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
End Sub
Private Sub Chk_TDSManual_Click()
If Opt = "add" Or Opt = "mod" Then
        If Chk_TDSFLAG.value = 1 And Opt = "add" Then
            Set RSS = New Recordset
            RSS.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur,isnull(TDS_TYPE,'') TDS_TYPE  from rm_PARAM b  ", DB, adOpenStatic
            If Not RSS.EOF Then
                TDSPERWP = RSS(0)
                txtfields(129).Text = Format(TDSPERWP, "#0.000")
                txtfields(132).Text = RSS(4)
                Set rsa = New Recordset
                rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
                If rsa.RecordCount > 0 Then
                    txtfields(131).Text = rsa(1)
                End If
            End If
          End If
    Call LotCalculation
End If
End Sub

Private Sub SET_MainDiscountHead()
With FSPDDiscount
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection

        .MaxCols = D_SPDDTDValue
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTSNO, "S.No", CellTypeStaticText, 4, , False, True    'a
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTContno, "Cont No", CellTypeStaticText, 8, , False, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTContdt, "Cont Date", CellTypeStaticText, 7, , True, True  'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTLOTNO, "Lot No", CellTypeStaticText, 8, , False, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTLOTDT, "Lot Date", CellTypeStaticText, 9, , False, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDocno, "Docno", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDOCDT, "Doc Date", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 8, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTVarcode, "Varcode.", CellTypeStaticText, 7, , False, True  'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 8, , True, True 'b
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 28, , False, True 'i
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 8, 2, False, False  'i
        SetSpreadCol1 FSPDDiscount, D_SpdDiscType.D_SPDDTDValue, "Discount Amount", CellTypeNumber, 10, 2, False, True  'i

    End With
End Sub



Private Sub Load_Fibre_Discount(lotno As String, LOTDT As String, CONT_No As String, CONT_DT As String, SUPCD As String, iRow As Integer)
On Error GoTo openconnection_Error
Set Rs = New Recordset
Rs.Open "SELECT * from RM_LotDiscntRate   a left join RM_DiscountType b on a.dtype=b.code where  contno='" & val(CONT_No) & "'  AND (contdt IS NULL )  and lotno='" & val(lotno) & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  supcd='" & Trim(txtfields(81).Text) & "'  and a.divcode='" & Divcode & "' ", DB, adOpenStatic
'Rs.Open "SELECT * from RM_LotDiscntRate   a left join RM_DiscountType b on a.dtype=b.code where  contno='" & val(CONT_No) & "'  AND (contdt IS NULL OR contdt='" & Format(CONT_DT, "yyyy-mm-dd") & "')  and lotno='" & val(lotno) & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  supcd='" & Trim(txtfields(81).Text) & "'  and a.divcode='" & Divcode & "' ", DB, adOpenStatic
r1 = iRow - 1
With FSPDDiscount
If Not Rs.EOF Then
    For I = 0 To Rs.RecordCount
        If Not Rs.EOF Then
           r1 = r1 + 1
           .MaxRows = r1
            .SetText D_SPDDTSNO, r1, r1
            .SetText D_SPDDTContno, r1, Rs.Fields("CONTNO")
            .SetText D_SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
            .SetText D_SPDDTLOTNO, r1, Rs.Fields("lotno")
            .SetText D_SPDDTLOTDT, r1, Format(Rs.Fields("lotdt"), "dd/mm/yyyy")
            
            .SetText D_SPDDTDocno, r1, Rs.Fields("docno")
            .SetText D_SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
            .SetText D_SPDDTVarcode, r1, Rs.Fields("varcode")
            .SetText D_SPDDTDISCCODE, r1, Rs.Fields("DType")
            .SetText D_SPDDTDISCDESC, r1, Rs.Fields("Description")
            .SetText D_SPDDTDRate, r1, Rs.Fields("DRate")
'           If Opt = "add" Then
'               If optMILL = True Then
'                  .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Imnetwt, spdVar.ActiveRow)), "00.00")
'               ElseIf OptCommercialWt = True Then
'                  .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, spdVar.ActiveRow)), "00.00")
'               Else
'                  .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Ipnetwt, spdVar.ActiveRow)), "00.00")
'               End If
'            Else
                .SetText D_SPDDTDValue, r1, Rs.Fields("Disc_Amt")
            ' End If
            FbDisRate = FbDisRate + val(Rs.Fields("DRate") & "")
            FBDisvalue = FBDisvalue + val(GetText(FSPDDiscount, SD_PDDTDValue, r1) & "")
                                                   
            Rs.MoveNext
          End If
        Next
      End If
                               ' SpdPrd.MaxRows = SpdPrd.MaxRows + 1
End With


Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub

Private Sub AddRecordMod()
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
    Check1.value = 0
    
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

    txtfields(47).Locked = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT top 1 DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PJDT,SNO,PJTC,PTYPE,AEDAMT,PJNO,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,Assvalue,form_type,dutyclaimable, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SCPER,SCAMT,SuppBillValue,SICAAmt,be_no,be_date ,Advance_amt,AntyDumperkg,AntyDumAmt,penalty,interest FROM RM_LOT WHERE divcode='" & Divcode & "' and OPFLG ='N' and PJNO is null", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
        DTPicker3.Enabled = True
        DTPicker1.Enabled = True
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.Clear = True
        If UCase(Trim(CustID)) <> "COTTON" And UCase(CustID1) <> "SCM" Then
            LookUp.query = "SELECT Distinct a.supcd ""Supplier Code"",b.slname ""Supplier Name"",ISNULL(GSTSTATECODE ,'0') GSTSTATECODE ,ISNULL(GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype  from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(PJNO,0)=0 and lottype='A'"
        Else
        LookUp.query = "SELECT Distinct a.supcd ""Supplier Code"",b.slname ""Supplier Name"",ISNULL(GSTSTATECODE ,'0') GSTSTATECODE ,ISNULL(GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype  from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(PJNO,0)=0 and lottype='A' and a.supcd in(" & _
                       "select a.supcd from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode  and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND isnull(a.PJNO,0)=0 and a.lottype='A' and d.varcode=a.varcode and isnull(faflag,'')<>'Y' and d.divcode=a.divcode and d.divcode='" & Divcode & "'  and a.divcode=d.divcode and d.varcode=e.varcode  and    d.divcode='" & Divcode & "' and (e.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I'))))"
        End If
        
        ''Lookup.Query = "select lotno""Lot No."",lotdt""Lot Date"",plotno""Supplier Lot No."", inwardno ""Inward No."",a.supcd ""Supplier Code"",b.slname ""Supplier Name"",a.billno ""Bill No."" from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(PJNO,0)=0 and lottype='A' "
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        'Lookup.ALIGN = "900,1000,1200,1000,1000,2700,1000"
        LookUp.ALIGN = "1500,3500"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
                SuppType = LookUp.Fields("supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                If Not Rs.EOF Then
            
                       STATEFLAG = Rs(0)
                       
                    If STATEFLAG = "F" Then
                        IGSTFLG = "N"
                    End If
                End If
                
                 If STATEFLAG <> "F" Then
                    If SuppType = "R" Then
                    If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "GST STATE CODE CANNOT BE EMPTY! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
            
                    If Trim(LookUp.Fields("GSTINNO")) = 0 Then
                        MsgBox "GST NO CODE CANNOT BE EMPTY ! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    Else
                       If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "GST STATE CODE CANNOT BE EMPTY! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    End If
                    Chk_TDSFLAG.value = 1
                    Chk_TDSFLAG.Enabled = True
                 Else
                    Chk_TDSFLAG.value = 0
                    Chk_TDSFLAG.Enabled = False
                 End If
                    
                txtfields(81).Text = LookUp.Fields(0)
                Text4.Text = LookUp.Fields(1)
                Set rstQry = New Recordset
                rstQry.Open "select Fapostingflg from rm_param", DB, adOpenStatic
                qry = ""
                If globalarrivalorder = "C" Then
                    If rstQry(0) = "Y" Then
                        qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt,A.VARCODE  from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode  and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND isnull(a.PJNO,0)=0 and a.lottype='A' and d.varcode=a.varcode  AND A.SUPCD='" & LookUp.Fields(0) & "' and isnull(faflag,'')<>'Y' and d.divcode=a.divcode and    d.divcode='" & Divcode & "'  and a.divcode=d.divcode and d.varcode=e.varcode  and    d.divcode='" & Divcode & "' and (e.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I')))  Order by a.lotdt,a.lotno"
                    Else
                        qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc ,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt ,A.VARCODE  from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE  AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt  AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode  and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND ISNULL(a.PJNO,0)=0 and d.varcode=e.varcode  and d.varcode=a.varcode  and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' and d.divcode=a.divcode and    d.divcode='" & Divcode & "' and a.divcode=d.divcode and    d.divcode='" & Divcode & "' and (e.DIVCODE='" & Divcode & "' or ((E.DIVCODE='" & globalimportpo & "' and E.im_ind='I'))) Order by a.lotdt,a.lotno"
                    End If
                Else
                    If rstQry(0) = "Y" Then
                        qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt,A.VARCODE  from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode and d.varcode=e.varcode  AnD a.DIVCODE='" & Divcode & "' and d.varcode=a.varcode  and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND isnull(a.PJNO,0)=0 and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' and isnull(faflag,'')<>'Y' Order by a.lotdt,a.lotno"
                    Else
                        qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc ,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt A.VARCODE  from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode and d.varcode=e.varcode  AnD a.DIVCODE='" & Divcode & "'  and d.varcode=a.varcode and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND ISNULL(a.PJNO,0)=0  and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' Order by a.lotdt,a.lotno"
                    End If
                End If
                FtFlg = "N"
                ftamt = 0
               
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                lblLabels(10).Caption = Space(1) & Padr("Mill", 6, " ") & Space(1) & Padr("Mill", 8, " ") & Space(2) & Padr("Supplier ", 8, " ") & Space(1) & Padr("Variety ", 14, " ") & Space(3) & Padr("Delivery", 8, " ") & Space(1) & Padr("Bill ", 10, " ") & Space(1) & Padr("Bill", 6, " ") & Space(3) & Padl("Rate/Kg", 7, " ") & Space(3) & Padl("Landed Cost", 13, " ") & Space(3) & Padl("Variety Code", 13, " ")
                lblLabels(0).Caption = Space(1) & Padr("Lot No.", 6, " ") & Space(1) & Padr("Lot Date", 8, " ") & Space(2) & Padr("Lot No.", 8, " ") & Space(1) & Padr("Name", 14, " ") & Space(3) & Padr("Type", 8, " ") & Space(1) & Padr("No.", 10, " ") & Space(1) & Padr("Date", 9, " ") & Space(2) & Padr("", 8, " ") & Space(1) & Padr("", 12, " ")
                LstPO.Clear
                Do Until Lrs.EOF
                    FtFlg = Lrs("ftflg")
                    ftamt = Lrs("ftamt")
                    LstPO.AddItem Padr(Lrs("lOTNO"), 5, " ") & Space(1) & Padr(Format(Lrs("LOTDT"), "dd/MM/yy"), 8, " ") & Space(2) & Padr(Lrs("PLOTNO"), 7, " ") & Space(1) & Padr(Lrs("Varname"), 15, " ") & Space(3) & Padr(Lrs("Deldesc"), 7, " ") & Space(1) & Padr(Lrs("bILLNO"), 10, " ") & Space(1) & Padr(Format(Lrs("BILLDT"), "dd/MM/yy"), 8, " ") & Space(1) & Padl(INF(Lrs("ratekg"), 4), 8, " ") & Space(1) & Padl(INF(Lrs("totlandcost"), 2), 14, " ") & Space(1) & Padl(INF(Lrs("varcode"), 2), 14, " ")
                    Lrs.MoveNext
                Loop
                
                Combo3.Text = "L - Domestic"
                txtfields(106).Locked = True
                txtfields(300).Locked = False
                MaskEdBox1(4).Enabled = False
                DTPicker1.Enabled = False
                
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
End Sub


Private Sub MoveFirstRecord()

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
End Sub
Private Sub MoveNextRecord()
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
End Sub

Private Sub MovePreviousRecord()
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

End Sub

Private Sub canceloptcode()
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    BUTTON(10).Enabled = False
    Opt = ""
    DTPicker3.Enabled = False
    DTPicker2.Enabled = False
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
End Sub


Private Sub movelastrecord()
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
   
End Sub

Private Sub modifyrecord()

    Opt = "mod"
    desc.Caption = "Modification"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Call AssignRoundoff

  Call DELMODLOOKUP(Opt)
  If STATEFLAG = "F" Then
     Chk_TDSFLAG.value = 0
     Chk_TDSFLAG.Enabled = False
  Else
     Chk_TDSFLAG.value = 1
     Chk_TDSFLAG.Enabled = True
  End If
  DTPicker3.Enabled = True
  MaskEdBox1(2).Enabled = True
  BUTTON(1).Enabled = False
End Sub

Private Sub deleterecord()
'Deletion
    'If ToValidFinYear(Divcode) = False Then Exit Sub
    desc.Caption = "Deletion"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Opt = "del"
  Call DELMODLOOKUP(Opt)
End Sub

Private Sub globalrecord()
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

End Sub
