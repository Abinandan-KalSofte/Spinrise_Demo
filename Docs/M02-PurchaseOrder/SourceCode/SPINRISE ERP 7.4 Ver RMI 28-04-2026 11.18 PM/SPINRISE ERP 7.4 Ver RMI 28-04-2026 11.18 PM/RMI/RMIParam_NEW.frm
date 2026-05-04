VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form RMIParam 
   Caption         =   "Parameters"
   ClientHeight    =   10650
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11280
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   70
      Top             =   -90
      Width           =   15210
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParam_NEW.frx":0000
         Height          =   510
         Index           =   10
         Left            =   1625
         Picture         =   "RMIParam_NEW.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParam_NEW.frx":0686
         Height          =   510
         Index           =   9
         Left            =   1095
         Picture         =   "RMIParam_NEW.frx":0990
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParam_NEW.frx":0D32
         Height          =   510
         Index           =   11
         Left            =   2150
         Picture         =   "RMIParam_NEW.frx":117C
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParam_NEW.frx":1511
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIParam_NEW.frx":181B
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIParam_NEW.frx":1B95
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIParam_NEW.frx":1E9F
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   4890
         TabIndex        =   72
         Top             =   225
         Width           =   690
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
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   8115
         TabIndex        =   71
         Top             =   255
         Width           =   735
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   73
      Top             =   12195
      Width           =   22920
      _ExtentX        =   40428
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "10/09/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "03:13 PM"
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
      Height          =   9645
      Left            =   480
      TabIndex        =   74
      Top             =   840
      Width           =   10680
      _ExtentX        =   18838
      _ExtentY        =   17013
      _Version        =   393216
      Tabs            =   4
      Tab             =   2
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "&General 1"
      TabPicture(0)   =   "RMIParam_NEW.frx":2232
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame1"
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "&General 2"
      TabPicture(1)   =   "RMIParam_NEW.frx":224E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame23"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Round off"
      TabPicture(2)   =   "RMIParam_NEW.frx":226A
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "Frame35"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Frame43"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).ControlCount=   2
      TabCaption(3)   =   "General 3"
      TabPicture(3)   =   "RMIParam_NEW.frx":2286
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame49"
      Tab(3).Control(1)=   "Frame48"
      Tab(3).Control(2)=   "Chk_tdsroundoffnext1"
      Tab(3).Control(3)=   "Frame47"
      Tab(3).Control(4)=   "txtfields(131)"
      Tab(3).Control(5)=   "txtfields(132)"
      Tab(3).Control(6)=   "txtfields(42)"
      Tab(3).Control(7)=   "txtfields(41)"
      Tab(3).Control(8)=   "txtfields(40)"
      Tab(3).Control(9)=   "Chk_TdscalfullPurchase"
      Tab(3).Control(10)=   "Label101"
      Tab(3).Control(11)=   "Label45"
      Tab(3).Control(12)=   "Label44"
      Tab(3).Control(13)=   "Label43"
      Tab(3).ControlCount=   14
      Begin VB.Frame Frame49 
         Height          =   855
         Left            =   -74760
         TabIndex        =   314
         Top             =   2760
         Width           =   9855
         Begin VB.OptionButton Option14 
            Caption         =   "Yes"
            Height          =   375
            Left            =   2520
            TabIndex        =   317
            Top             =   300
            Width           =   735
         End
         Begin VB.OptionButton Option13 
            Caption         =   "No"
            Height          =   375
            Left            =   3360
            TabIndex        =   316
            Top             =   300
            Value           =   -1  'True
            Width           =   615
         End
         Begin VB.TextBox Text3 
            DataField       =   "EInvoicePath"
            Height          =   405
            Left            =   4680
            TabIndex        =   315
            Top             =   240
            Width           =   5055
         End
         Begin VB.Label Label49 
            AutoSize        =   -1  'True
            Caption         =   "E-Invoice"
            Height          =   195
            Left            =   240
            TabIndex        =   319
            Top             =   360
            Width           =   675
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "Path"
            Height          =   195
            Left            =   4200
            TabIndex        =   318
            Top             =   360
            Width           =   330
         End
      End
      Begin VB.Frame Frame48 
         Caption         =   "TDS Amount Calculate from"
         Height          =   540
         Left            =   -71040
         TabIndex        =   309
         Top             =   1390
         Width           =   3675
         Begin VB.OptionButton Option12 
            Caption         =   "Bill Value"
            Height          =   255
            Left            =   2160
            TabIndex        =   311
            Top             =   240
            Width           =   1455
         End
         Begin VB.OptionButton Option11 
            Caption         =   "Material Value"
            Height          =   255
            Left            =   240
            TabIndex        =   310
            Top             =   225
            Value           =   -1  'True
            Width           =   1575
         End
      End
      Begin VB.CheckBox Chk_tdsroundoffnext1 
         Caption         =   "TDS Amount Rounding off next 1 Rupees"
         Height          =   375
         Left            =   -74760
         TabIndex        =   308
         Top             =   1320
         Width           =   3735
      End
      Begin VB.Frame Frame47 
         Height          =   855
         Left            =   -74760
         TabIndex        =   302
         Top             =   1920
         Width           =   9855
         Begin VB.TextBox Text2 
            DataField       =   "AccessPath"
            Height          =   405
            Left            =   4680
            TabIndex        =   307
            Top             =   240
            Width           =   5055
         End
         Begin VB.OptionButton Option10 
            Caption         =   "No"
            Height          =   375
            Left            =   3360
            TabIndex        =   305
            Top             =   300
            Width           =   615
         End
         Begin VB.OptionButton Option9 
            Caption         =   "Yes"
            Height          =   375
            Left            =   2520
            TabIndex        =   304
            Top             =   300
            Width           =   735
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "Path"
            Height          =   195
            Left            =   4200
            TabIndex        =   306
            Top             =   360
            Width           =   330
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "Stock transfer to MS Access"
            Height          =   195
            Left            =   240
            TabIndex        =   303
            Top             =   360
            Width           =   2025
         End
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
         Left            =   -72090
         TabIndex        =   297
         Top             =   960
         Width           =   2490
      End
      Begin VB.TextBox txtfields 
         DataField       =   "TDS_TYPE"
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
         Left            =   -73065
         TabIndex        =   296
         Top             =   960
         Width           =   945
      End
      Begin VB.TextBox txtfields 
         DataField       =   "TDS_GrossAmt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
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
         Index           =   42
         Left            =   -73080
         TabIndex        =   292
         Top             =   600
         Width           =   990
      End
      Begin VB.TextBox txtfields 
         DataField       =   "TDSPER_WPan"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
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
         Index           =   41
         Left            =   -70680
         TabIndex        =   291
         Top             =   600
         Width           =   990
      End
      Begin VB.TextBox txtfields 
         DataField       =   "TDSPER_WOPan"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
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
         Index           =   40
         Left            =   -67680
         TabIndex        =   290
         Top             =   960
         Visible         =   0   'False
         Width           =   990
      End
      Begin VB.CheckBox Chk_TdscalfullPurchase 
         Caption         =   "TDS Calculate Total Purchase Value"
         Height          =   255
         Left            =   -69360
         TabIndex        =   289
         Top             =   600
         Width           =   3495
      End
      Begin VB.Frame Frame43 
         Caption         =   "RMI Invoice"
         Height          =   2055
         Left            =   600
         TabIndex        =   266
         Top             =   6660
         Width           =   9375
         Begin VB.ComboBox Combo17 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":22A2
            Left            =   4920
            List            =   "RMIParam_NEW.frx":22AF
            Style           =   2  'Dropdown List
            TabIndex        =   312
            Top             =   1440
            Width           =   690
         End
         Begin VB.ComboBox Combo14 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":22BC
            Left            =   1920
            List            =   "RMIParam_NEW.frx":22C9
            Style           =   2  'Dropdown List
            TabIndex        =   282
            Top             =   1440
            Width           =   690
         End
         Begin VB.Frame Frame46 
            Caption         =   "Freight value to be added for TCS calc"
            Height          =   540
            Left            =   6120
            TabIndex        =   279
            Top             =   240
            Width           =   3075
            Begin VB.OptionButton Opt_FrgforTCSNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1200
               TabIndex        =   281
               Top             =   240
               Width           =   1095
            End
            Begin VB.OptionButton Opt_FrgforTCSYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   280
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.TextBox txtFields1 
            DataField       =   "INVTCSPER_WOPan"
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
            Height          =   300
            Index           =   39
            Left            =   7530
            MaxLength       =   7
            TabIndex        =   275
            Top             =   975
            Width           =   1095
         End
         Begin VB.TextBox txtFields1 
            DataField       =   "InvTCSPER_WPan"
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
            Height          =   300
            Index           =   38
            Left            =   4530
            MaxLength       =   7
            TabIndex        =   274
            Top             =   975
            Width           =   1095
         End
         Begin VB.TextBox txtFields1 
            DataField       =   "INVTCS_GrossAmt"
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
            Height          =   300
            Index           =   37
            Left            =   1650
            MaxLength       =   15
            TabIndex        =   273
            Top             =   975
            Width           =   1335
         End
         Begin VB.Frame Frame44 
            Caption         =   "Tax value to be added for TCS calc"
            Height          =   540
            Left            =   120
            TabIndex        =   270
            Top             =   240
            Width           =   2715
            Begin VB.OptionButton Opt_INVTCSTAXNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1440
               TabIndex        =   272
               Top             =   240
               Width           =   1095
            End
            Begin VB.OptionButton Opt_INVTCSTAXYES 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   271
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.Frame Frame45 
            Caption         =   "CESS value to be added for TCS calc"
            Height          =   540
            Left            =   3000
            TabIndex        =   267
            Top             =   240
            Width           =   3075
            Begin VB.OptionButton Opt_CESSFORTCSYES 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   269
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton Opt_CESSFORTCSNO 
               Caption         =   "No"
               Height          =   255
               Left            =   1200
               TabIndex        =   268
               Top             =   240
               Width           =   1095
            End
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Assesable Rounded"
            Height          =   195
            Index           =   15
            Left            =   2760
            TabIndex        =   313
            Top             =   1515
            Width           =   1995
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Invoice TCS Rounded"
            Height          =   195
            Index           =   13
            Left            =   120
            TabIndex        =   283
            Top             =   1515
            Width           =   1590
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "TCS % Without PAN"
            Height          =   195
            Left            =   5850
            TabIndex        =   278
            Top             =   975
            Width           =   1455
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "TCS %  With PAN"
            Height          =   195
            Left            =   3105
            TabIndex        =   277
            Top             =   960
            Width           =   1275
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "TCS Gross Amount"
            Height          =   195
            Left            =   120
            TabIndex        =   276
            Top             =   960
            Width           =   1350
         End
      End
      Begin VB.Frame Frame35 
         Height          =   5655
         Left            =   585
         TabIndex        =   185
         Top             =   945
         Width           =   8415
         Begin VB.ComboBox Combo16 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":22D6
            Left            =   4800
            List            =   "RMIParam_NEW.frx":22F8
            Style           =   2  'Dropdown List
            TabIndex        =   299
            Top             =   4920
            Width           =   690
         End
         Begin VB.ComboBox Combo13 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":231A
            Left            =   2490
            List            =   "RMIParam_NEW.frx":2327
            Style           =   2  'Dropdown List
            TabIndex        =   264
            Top             =   4920
            Width           =   690
         End
         Begin VB.ComboBox Combo12 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2334
            Left            =   4800
            List            =   "RMIParam_NEW.frx":2341
            Style           =   2  'Dropdown List
            TabIndex        =   260
            Top             =   1320
            Width           =   690
         End
         Begin VB.ComboBox Combo10 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":234E
            Left            =   4800
            List            =   "RMIParam_NEW.frx":235B
            Style           =   2  'Dropdown List
            TabIndex        =   254
            Top             =   4200
            Width           =   690
         End
         Begin VB.ComboBox Combo11 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2368
            Left            =   4800
            List            =   "RMIParam_NEW.frx":2375
            Style           =   2  'Dropdown List
            TabIndex        =   252
            Top             =   4560
            Width           =   690
         End
         Begin VB.ComboBox Combo9 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2382
            Left            =   2490
            List            =   "RMIParam_NEW.frx":238F
            Style           =   2  'Dropdown List
            TabIndex        =   241
            Top             =   4560
            Width           =   690
         End
         Begin VB.ComboBox Combo8 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":239C
            Left            =   2490
            List            =   "RMIParam_NEW.frx":23A9
            Style           =   2  'Dropdown List
            TabIndex        =   239
            Top             =   4170
            Width           =   690
         End
         Begin VB.ComboBox Combo7 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":23B6
            Left            =   4800
            List            =   "RMIParam_NEW.frx":23C3
            Style           =   2  'Dropdown List
            TabIndex        =   212
            Top             =   3780
            Width           =   690
         End
         Begin VB.ComboBox Combo6 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":23D0
            Left            =   4800
            List            =   "RMIParam_NEW.frx":23E0
            Style           =   2  'Dropdown List
            TabIndex        =   211
            Top             =   3390
            Width           =   690
         End
         Begin VB.ComboBox Combo5 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":23F0
            Left            =   4800
            List            =   "RMIParam_NEW.frx":23FD
            Style           =   2  'Dropdown List
            TabIndex        =   210
            Top             =   3000
            Width           =   690
         End
         Begin VB.ComboBox CmbSurchargeRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":240A
            Left            =   4800
            List            =   "RMIParam_NEW.frx":2417
            Style           =   2  'Dropdown List
            TabIndex        =   206
            Top             =   2550
            Width           =   690
         End
         Begin VB.ComboBox cmbLandCostroff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2424
            Left            =   2490
            List            =   "RMIParam_NEW.frx":2431
            Style           =   2  'Dropdown List
            TabIndex        =   194
            Top             =   1305
            Width           =   720
         End
         Begin VB.ComboBox CmbEdCessRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":243E
            Left            =   2490
            List            =   "RMIParam_NEW.frx":244B
            Style           =   2  'Dropdown List
            TabIndex        =   193
            Top             =   2970
            Width           =   690
         End
         Begin VB.ComboBox CmbHsCessRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2458
            Left            =   2490
            List            =   "RMIParam_NEW.frx":2468
            Style           =   2  'Dropdown List
            TabIndex        =   192
            Top             =   3360
            Width           =   690
         End
         Begin VB.ComboBox CmbTaxRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2478
            Left            =   4800
            List            =   "RMIParam_NEW.frx":2485
            Style           =   2  'Dropdown List
            TabIndex        =   191
            Top             =   1755
            Width           =   690
         End
         Begin VB.ComboBox cmbAEDRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":2492
            Left            =   2490
            List            =   "RMIParam_NEW.frx":249F
            Style           =   2  'Dropdown List
            TabIndex        =   190
            Top             =   2550
            Width           =   690
         End
         Begin VB.ComboBox cmbBEDRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":24AC
            Left            =   2490
            List            =   "RMIParam_NEW.frx":24B9
            Style           =   2  'Dropdown List
            TabIndex        =   189
            Top             =   2160
            Width           =   690
         End
         Begin VB.ComboBox CmbCessRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":24C6
            Left            =   2490
            List            =   "RMIParam_NEW.frx":24D3
            Style           =   2  'Dropdown List
            TabIndex        =   188
            Top             =   3750
            Width           =   690
         End
         Begin VB.ComboBox cmbAssvalRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":24E0
            Left            =   2490
            List            =   "RMIParam_NEW.frx":24ED
            Style           =   2  'Dropdown List
            TabIndex        =   187
            Top             =   1755
            Width           =   690
         End
         Begin VB.ComboBox CmbAddTaxRoff 
            Height          =   315
            ItemData        =   "RMIParam_NEW.frx":24FA
            Left            =   4800
            List            =   "RMIParam_NEW.frx":2507
            Style           =   2  'Dropdown List
            TabIndex        =   186
            Top             =   2160
            Width           =   690
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Rate Round Off"
            Height          =   195
            Index           =   14
            Left            =   3480
            TabIndex        =   300
            Top             =   4995
            Width           =   1125
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Fibre Discount"
            Height          =   195
            Index           =   12
            Left            =   720
            TabIndex        =   265
            Top             =   4995
            Width           =   1020
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "TCS"
            Height          =   195
            Index           =   11
            Left            =   3480
            TabIndex        =   261
            Top             =   1380
            Width           =   315
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Anti Dumping"
            Height          =   195
            Index           =   10
            Left            =   3480
            TabIndex        =   253
            Top             =   4635
            Width           =   945
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
            Height          =   195
            Index           =   9
            Left            =   3480
            TabIndex        =   243
            Top             =   4275
            Width           =   705
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Social Welfare Value"
            Height          =   195
            Index           =   8
            Left            =   720
            TabIndex        =   242
            Top             =   4635
            Width           =   1485
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "ID Value"
            Height          =   195
            Index           =   7
            Left            =   720
            TabIndex        =   240
            Top             =   4250
            Width           =   615
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "IGST"
            Height          =   195
            Index           =   6
            Left            =   3510
            TabIndex        =   215
            Top             =   3855
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "SGST"
            Height          =   195
            Index           =   5
            Left            =   3480
            TabIndex        =   214
            Top             =   3450
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "CGST"
            Height          =   195
            Index           =   4
            Left            =   3480
            TabIndex        =   213
            Top             =   3060
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Surcharge"
            Height          =   195
            Index           =   3
            Left            =   3435
            TabIndex        =   207
            Top             =   2610
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Rounded off Decimal Value"
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
            Index           =   45
            Left            =   690
            TabIndex        =   205
            Top             =   960
            Width           =   2460
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Amount"
            Height          =   195
            Index           =   44
            Left            =   720
            TabIndex        =   204
            Top             =   1380
            Width           =   1110
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Rounded Off"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Index           =   22
            Left            =   60
            TabIndex        =   203
            Top             =   150
            Width           =   8310
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "E.D.Cess"
            Height          =   195
            Index           =   27
            Left            =   690
            TabIndex        =   202
            Top             =   3030
            Width           =   660
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "H.S.Cess"
            Height          =   195
            Index           =   31
            Left            =   720
            TabIndex        =   201
            Top             =   3420
            Width           =   660
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Height          =   195
            Index           =   28
            Left            =   3465
            TabIndex        =   200
            Top             =   1815
            Width           =   270
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "A.E.D"
            Height          =   195
            Index           =   26
            Left            =   690
            TabIndex        =   199
            Top             =   2610
            Width           =   420
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "B.E.D"
            Height          =   195
            Index           =   25
            Left            =   690
            TabIndex        =   198
            Top             =   2220
            Width           =   420
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Cess"
            Height          =   195
            Index           =   24
            Left            =   720
            TabIndex        =   197
            Top             =   3825
            Width           =   465
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Assessable Value"
            Height          =   195
            Index           =   23
            Left            =   690
            TabIndex        =   196
            Top             =   1830
            Width           =   1245
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Add. Tax"
            Height          =   195
            Index           =   2
            Left            =   3450
            TabIndex        =   195
            Top             =   2220
            Width           =   645
         End
      End
      Begin VB.Frame Frame23 
         Height          =   8805
         Left            =   -74895
         TabIndex        =   122
         Top             =   630
         Width           =   10335
         Begin VB.CheckBox Chk_OutPassEntry 
            Caption         =   "Outpass Entry Load from Invoice"
            Height          =   195
            Left            =   4200
            TabIndex        =   324
            Top             =   7800
            Width           =   3255
         End
         Begin VB.TextBox txtfields 
            DataField       =   "FREIGHTGLCODE"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Left            =   1440
            TabIndex        =   285
            Top             =   8160
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   38
            Left            =   2475
            Locked          =   -1  'True
            TabIndex        =   284
            TabStop         =   0   'False
            Top             =   8160
            Width           =   7845
         End
         Begin VB.CheckBox Chk_despatchFlg 
            Caption         =   "Arrival From Despatch Entry"
            Height          =   195
            Left            =   120
            TabIndex        =   256
            Top             =   7920
            Width           =   3255
         End
         Begin VB.CheckBox Chk_FromMaster 
            Caption         =   "Supplier ,Variety and Freight from Master"
            Height          =   195
            Left            =   120
            TabIndex        =   255
            Top             =   7680
            Width           =   3255
         End
         Begin VB.CheckBox Chk_amendafterGRN 
            Caption         =   "Amendment After GRN"
            Height          =   195
            Left            =   8040
            TabIndex        =   251
            Top             =   7440
            Width           =   2055
         End
         Begin VB.Frame Frame41 
            Caption         =   "Bill Value to be update in Lot"
            Height          =   540
            Left            =   5400
            TabIndex        =   248
            Top             =   5400
            Width           =   3195
            Begin VB.OptionButton Opt_BillLotNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1560
               TabIndex        =   250
               Top             =   240
               Width           =   1575
            End
            Begin VB.OptionButton Opt_BillLotyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   249
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.TextBox txtfields 
            DataField       =   "WSIPADD"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   36
            Left            =   4080
            TabIndex        =   235
            Top             =   7320
            Width           =   1065
         End
         Begin VB.TextBox txtfields 
            DataField       =   "WSPort"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   35
            Left            =   1560
            TabIndex        =   232
            Top             =   7320
            Width           =   825
         End
         Begin VB.TextBox txtfields 
            DataField       =   "poimportdivision"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   34
            Left            =   8880
            TabIndex        =   231
            Top             =   6720
            Width           =   1065
         End
         Begin VB.Frame Frame38 
            Caption         =   " Arrival"
            Height          =   1140
            Left            =   8640
            TabIndex        =   227
            Top             =   4800
            Width           =   1635
            Begin VB.OptionButton Option4 
               Caption         =   "Companywise"
               Height          =   255
               Left            =   120
               TabIndex        =   229
               Top             =   360
               Value           =   -1  'True
               Width           =   1335
            End
            Begin VB.OptionButton Option3 
               Caption         =   "Divisionwise"
               Height          =   255
               Left            =   120
               TabIndex        =   228
               Top             =   720
               Width           =   1935
            End
         End
         Begin VB.Frame Frame37 
            Caption         =   "Issue Return from Preparatory"
            Height          =   540
            Left            =   5400
            TabIndex        =   224
            Top             =   7245
            Width           =   2475
            Begin VB.OptionButton Option2 
               Caption         =   "No"
               Height          =   255
               Left            =   1200
               TabIndex        =   226
               Top             =   240
               Width           =   855
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   225
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.TextBox txtfields 
            DataField       =   "WasteissType"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   33
            Left            =   1560
            TabIndex        =   222
            Top             =   6960
            Width           =   825
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Height          =   345
            Index           =   32
            Left            =   2445
            Locked          =   -1  'True
            TabIndex        =   221
            TabStop         =   0   'False
            Top             =   6960
            Width           =   2730
         End
         Begin VB.Frame Frame36 
            Caption         =   "Bill Value Calculation"
            Height          =   540
            Left            =   5400
            TabIndex        =   216
            Top             =   4800
            Width           =   3195
            Begin VB.OptionButton MillWgtOPT 
               Caption         =   "Mill Weight"
               Height          =   255
               Left            =   240
               TabIndex        =   218
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton SupWgtOPT 
               Caption         =   "Supplier Weight"
               Height          =   255
               Left            =   1560
               TabIndex        =   217
               Top             =   240
               Width           =   1575
            End
         End
         Begin VB.Frame FraRMPOApp 
            Caption         =   "PO Approval"
            Enabled         =   0   'False
            Height          =   540
            Left            =   3450
            TabIndex        =   208
            Top             =   4740
            Width           =   1710
            Begin VB.OptionButton OptAppYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   182
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
            Begin VB.OptionButton OptAppNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1005
               TabIndex        =   183
               Top             =   225
               Width           =   660
            End
         End
         Begin VB.Frame Frame34 
            Caption         =   "Arrival /Transfer DocNo Genaration"
            Enabled         =   0   'False
            Height          =   540
            Left            =   2385
            TabIndex        =   180
            Top             =   6360
            Width           =   2790
            Begin VB.OptionButton Optarrivaltransfardocnogenerationyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   360
               TabIndex        =   184
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
            Begin VB.OptionButton Optarrivaltransfardocnogenerationno 
               Caption         =   "No"
               Height          =   255
               Left            =   1320
               TabIndex        =   181
               Top             =   240
               Width           =   615
            End
         End
         Begin VB.Frame Frame30 
            Caption         =   "Issue Based on Weighing M/C"
            Height          =   1260
            Left            =   5430
            TabIndex        =   173
            Top             =   6000
            Width           =   3180
            Begin VB.CheckBox Check1 
               Caption         =   "IP based"
               Height          =   255
               Left            =   2040
               TabIndex        =   244
               Top             =   240
               Width           =   975
            End
            Begin VB.ComboBox cmb_bitsecond 
               Height          =   315
               ItemData        =   "RMIParam_NEW.frx":2514
               Left            =   1440
               List            =   "RMIParam_NEW.frx":2533
               TabIndex        =   179
               Top             =   840
               Width           =   1590
            End
            Begin VB.ComboBox cb_port 
               Height          =   315
               ItemData        =   "RMIParam_NEW.frx":2552
               Left            =   1440
               List            =   "RMIParam_NEW.frx":2554
               TabIndex        =   177
               Top             =   480
               Width           =   1575
            End
            Begin VB.OptionButton Opt_isuwmc 
               Caption         =   "Yes"
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   175
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
            Begin VB.OptionButton Opt_isuwmc 
               Caption         =   "No"
               Height          =   255
               Index           =   1
               Left            =   840
               TabIndex        =   174
               Top             =   225
               Width           =   975
            End
            Begin VB.Label Label30 
               Caption         =   "Bit per Second"
               Height          =   255
               Left            =   120
               TabIndex        =   178
               Top             =   840
               Width           =   1095
            End
            Begin VB.Label Label29 
               Caption         =   "Com Port"
               Height          =   255
               Left            =   120
               TabIndex        =   176
               Top             =   480
               Width           =   735
            End
         End
         Begin VB.Frame Frame31 
            Caption         =   "Actual Issue"
            Enabled         =   0   'False
            Height          =   540
            Left            =   180
            TabIndex        =   170
            Top             =   5850
            Width           =   2160
            Begin VB.OptionButton Optionactuayees 
               Caption         =   "Yes"
               Height          =   255
               Left            =   630
               TabIndex        =   172
               Top             =   210
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.OptionButton Optionactualno 
               Caption         =   "No"
               Height          =   255
               Left            =   1440
               TabIndex        =   171
               Top             =   225
               Width           =   615
            End
         End
         Begin VB.Frame Frame33 
            Caption         =   "Transfer"
            Enabled         =   0   'False
            Height          =   540
            Left            =   165
            TabIndex        =   167
            Top             =   6375
            Width           =   2205
            Begin VB.OptionButton OPtionTransferno 
               Caption         =   "No"
               Height          =   255
               Left            =   1080
               TabIndex        =   169
               Top             =   225
               Width           =   735
            End
            Begin VB.OptionButton OPtionTransferyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   240
               TabIndex        =   168
               Top             =   210
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.Frame Frame32 
            Caption         =   "Lot Bale Entry"
            Enabled         =   0   'False
            Height          =   525
            Left            =   2370
            TabIndex        =   164
            Top             =   5850
            Width           =   2160
            Begin VB.OptionButton Optionlotbaleno 
               Caption         =   "No"
               Height          =   255
               Left            =   1320
               TabIndex        =   166
               Top             =   225
               Width           =   615
            End
            Begin VB.OptionButton Optionlotbaleyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   360
               TabIndex        =   165
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
         End
         Begin VB.Frame Frame29 
            Caption         =   "Port Selection"
            Enabled         =   0   'False
            Height          =   495
            Left            =   2370
            TabIndex        =   161
            Top             =   5325
            Width           =   2160
            Begin VB.OptionButton Optionport 
               Caption         =   "Port"
               Height          =   255
               Left            =   945
               TabIndex        =   163
               Top             =   195
               Width           =   735
            End
            Begin VB.OptionButton Optionip 
               Caption         =   "IP"
               Height          =   195
               Left            =   270
               TabIndex        =   162
               Top             =   210
               Value           =   -1  'True
               Width           =   615
            End
         End
         Begin VB.Frame Frame28 
            Caption         =   "Open/Key  Loan Details"
            Enabled         =   0   'False
            Height          =   540
            Left            =   180
            TabIndex        =   158
            Top             =   5310
            Width           =   2160
            Begin VB.OptionButton OpenkeyloanYes 
               Caption         =   "Yes"
               Height          =   195
               Left            =   270
               TabIndex        =   160
               Top             =   210
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.OptionButton Openkeyloanno 
               Caption         =   "No"
               Height          =   255
               Left            =   1080
               TabIndex        =   159
               Top             =   225
               Width           =   615
            End
         End
         Begin VB.Frame Frame27 
            Caption         =   "Purchase Requisition"
            Height          =   480
            Left            =   5280
            TabIndex        =   155
            Top             =   780
            Width           =   4920
            Begin VB.OptionButton OptPRNo 
               Caption         =   "No"
               Height          =   255
               Left            =   2070
               TabIndex        =   157
               Top             =   150
               Value           =   -1  'True
               Width           =   975
            End
            Begin VB.OptionButton OptPRyes 
               Caption         =   "Yes"
               Height          =   195
               Left            =   720
               TabIndex        =   156
               Top             =   210
               Width           =   675
            End
         End
         Begin VB.Frame Frame26 
            Caption         =   "Inspection && Quality Parameters  Approval Required"
            Height          =   540
            Left            =   5280
            TabIndex        =   152
            Top             =   180
            Width           =   4920
            Begin VB.OptionButton OptIQAYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   720
               TabIndex        =   154
               Top             =   210
               Width           =   855
            End
            Begin VB.OptionButton OptIQANo 
               Caption         =   "No"
               Height          =   255
               Left            =   2310
               TabIndex        =   153
               Top             =   240
               Value           =   -1  'True
               Width           =   975
            End
         End
         Begin VB.Frame Frame25 
            Caption         =   "Quality Parameter Modification after Issues"
            Height          =   510
            Left            =   180
            TabIndex        =   149
            Top             =   4800
            Width           =   3240
            Begin VB.OptionButton OptQualMod 
               Caption         =   "No"
               Height          =   195
               Index           =   1
               Left            =   1140
               TabIndex        =   151
               Top             =   220
               Value           =   -1  'True
               Width           =   930
            End
            Begin VB.OptionButton OptQualMod 
               Caption         =   "Yes"
               Height          =   195
               Index           =   0
               Left            =   105
               TabIndex        =   150
               Top             =   220
               Width           =   930
            End
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   28
            Left            =   2355
            Locked          =   -1  'True
            TabIndex        =   139
            TabStop         =   0   'False
            Top             =   2205
            Width           =   7845
         End
         Begin VB.TextBox txtfields 
            DataField       =   "StkCRGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   27
            Left            =   1320
            TabIndex        =   138
            Top             =   2205
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Left            =   2355
            Locked          =   -1  'True
            TabIndex        =   136
            TabStop         =   0   'False
            Top             =   1830
            Width           =   7845
         End
         Begin VB.TextBox txtfields 
            DataField       =   "StkDRGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   25
            Left            =   1320
            TabIndex        =   135
            Top             =   1830
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   18
            Left            =   1320
            TabIndex        =   128
            Top             =   225
            Width           =   3780
         End
         Begin VB.TextBox txtfields 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   20
            Left            =   1320
            TabIndex        =   130
            Top             =   630
            Width           =   3780
         End
         Begin VB.TextBox txtfields 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   22
            Left            =   1320
            TabIndex        =   132
            Top             =   1020
            Width           =   3780
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TransferTC"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   17
            Left            =   1320
            TabIndex        =   127
            Top             =   225
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TransferINGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   19
            Left            =   1335
            TabIndex        =   126
            Top             =   630
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TransferOUTGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   21
            Left            =   1320
            TabIndex        =   125
            Top             =   1020
            Width           =   990
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   24
            Left            =   2355
            Locked          =   -1  'True
            TabIndex        =   123
            TabStop         =   0   'False
            Top             =   1410
            Width           =   7845
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CarrierGL"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
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
            Index           =   23
            Left            =   1320
            TabIndex        =   134
            Top             =   1410
            Width           =   990
         End
         Begin FPSpreadADO.fpSpread SpdQuality 
            Height          =   2050
            Left            =   1305
            TabIndex        =   147
            Top             =   2640
            Width           =   7335
            _Version        =   524288
            _ExtentX        =   12938
            _ExtentY        =   3616
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
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
            MaxCols         =   4
            MaxRows         =   5
            ProcessTab      =   -1  'True
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "RMIParam_NEW.frx":2556
            UserResize      =   1
         End
         Begin VB.Label Label41 
            Caption         =   "Freight GL"
            Height          =   285
            Left            =   240
            TabIndex        =   286
            Top             =   8175
            Width           =   1110
         End
         Begin VB.Label Label36 
            Caption         =   "Weighing Scale Remort IP"
            Height          =   420
            Left            =   2640
            TabIndex        =   234
            Top             =   7280
            Width           =   1500
         End
         Begin VB.Label Label35 
            Caption         =   "Weighing Scale Remort Port"
            Height          =   420
            Left            =   120
            TabIndex        =   233
            Top             =   7250
            Width           =   1260
         End
         Begin VB.Label Label34 
            Caption         =   "Purchase Order Division"
            Height          =   540
            Left            =   8880
            TabIndex        =   230
            Top             =   6240
            Width           =   1140
         End
         Begin VB.Label Label33 
            Caption         =   "Waste Issue Type"
            Height          =   420
            Left            =   135
            TabIndex        =   223
            Top             =   6975
            Width           =   1380
         End
         Begin VB.Label Label28 
            Caption         =   "Fibre Property"
            Height          =   285
            Left            =   135
            TabIndex        =   148
            Top             =   2595
            Width           =   1110
         End
         Begin VB.Label Label26 
            Caption         =   "Stock CR GL"
            Height          =   285
            Left            =   120
            TabIndex        =   140
            Top             =   2220
            Width           =   1110
         End
         Begin VB.Label Label25 
            Caption         =   "Stock DR GL"
            Height          =   270
            Left            =   120
            TabIndex        =   137
            Top             =   1845
            Width           =   1110
         End
         Begin VB.Label Label21 
            Caption         =   "Transfer FA Tc"
            Height          =   315
            Left            =   120
            TabIndex        =   133
            Top             =   270
            Width           =   1110
         End
         Begin VB.Label Label22 
            Caption         =   "Transfer Out GL"
            Height          =   315
            Left            =   105
            TabIndex        =   131
            Top             =   1020
            Width           =   1200
         End
         Begin VB.Label Label23 
            Caption         =   "Transfer In GL"
            Height          =   315
            Left            =   105
            TabIndex        =   129
            Top             =   630
            Width           =   1110
         End
         Begin VB.Label Label24 
            Caption         =   "Transport GL"
            Height          =   315
            Left            =   120
            TabIndex        =   124
            Top             =   1425
            Width           =   1110
         End
      End
      Begin VB.Frame Frame1 
         Height          =   9225
         Left            =   -74865
         TabIndex        =   75
         Top             =   270
         Width           =   10410
         Begin VB.TextBox txtfields 
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
            Index           =   45
            Left            =   3960
            MaxLength       =   30
            TabIndex        =   323
            Top             =   8760
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
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
            Index           =   44
            Left            =   5040
            MaxLength       =   30
            TabIndex        =   322
            Top             =   8760
            Width           =   2640
         End
         Begin VB.TextBox txtfields 
            DataField       =   "issuemodifyid"
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
            Index           =   43
            Left            =   8040
            MaxLength       =   30
            TabIndex        =   321
            Top             =   8760
            Width           =   2040
         End
         Begin VB.CheckBox Chk_DutyInsGST 
            Caption         =   "Duty : Insurance to include in Tax"
            Height          =   435
            Left            =   120
            TabIndex        =   301
            Top             =   8640
            Width           =   2295
         End
         Begin VB.ComboBox Combo15 
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
            ItemData        =   "RMIParam_NEW.frx":2DD8
            Left            =   8730
            List            =   "RMIParam_NEW.frx":2DE2
            Style           =   2  'Dropdown List
            TabIndex        =   287
            ToolTipText     =   "Select  'Y'  For  Yes or 'N'  For No"
            Top             =   8280
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TCSPer"
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
            Height          =   330
            Index           =   37
            Left            =   5400
            MaxLength       =   15
            TabIndex        =   262
            Top             =   8280
            Width           =   1320
         End
         Begin VB.Frame Frame42 
            Caption         =   "Purchase:Tax amount to be added for  TCS Calculation"
            Height          =   555
            Left            =   120
            TabIndex        =   257
            Top             =   7920
            Width           =   3600
            Begin VB.OptionButton Opt_TCSTAXNO 
               Caption         =   "No"
               Height          =   255
               Left            =   1935
               TabIndex        =   259
               Top             =   240
               Value           =   -1  'True
               Width           =   675
            End
            Begin VB.OptionButton Opt_TCSTAXYES 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   258
               Top             =   225
               Width           =   705
            End
         End
         Begin VB.Frame Frame40 
            Caption         =   "Purchase Bill Approval"
            Enabled         =   0   'False
            Height          =   555
            Left            =   6675
            TabIndex        =   245
            Top             =   7695
            Width           =   2760
            Begin VB.OptionButton Option8 
               Caption         =   "No"
               Height          =   255
               Left            =   1935
               TabIndex        =   247
               Top             =   240
               Value           =   -1  'True
               Width           =   675
            End
            Begin VB.OptionButton Option7 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   246
               Top             =   225
               Width           =   705
            End
         End
         Begin VB.Frame Frame39 
            Caption         =   "GST with Cess Amount"
            Enabled         =   0   'False
            Height          =   555
            Left            =   3840
            TabIndex        =   236
            Top             =   7680
            Width           =   2760
            Begin VB.OptionButton Option6 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   238
               Top             =   225
               Width           =   705
            End
            Begin VB.OptionButton Option5 
               Caption         =   "No"
               Height          =   255
               Left            =   1935
               TabIndex        =   237
               Top             =   240
               Value           =   -1  'True
               Width           =   675
            End
         End
         Begin VB.TextBox txtfields 
            DataField       =   "FTAmt"
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
            Index           =   31
            Left            =   1800
            MaxLength       =   15
            TabIndex        =   219
            Top             =   7580
            Width           =   1320
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "POWtTolerance"
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
            Left            =   8835
            MaxLength       =   5
            TabIndex        =   20
            Top             =   1890
            Width           =   1350
         End
         Begin VB.Frame Frame24 
            Caption         =   "Lot Number Generation"
            Height          =   750
            Left            =   6420
            TabIndex        =   143
            Top             =   6945
            Width           =   3720
            Begin VB.OptionButton OptLotNoGen 
               Caption         =   "General"
               Height          =   210
               Index           =   0
               Left            =   45
               TabIndex        =   146
               Top             =   345
               Value           =   -1  'True
               Width           =   915
            End
            Begin VB.OptionButton OptLotNoGen 
               Caption         =   "Variety wise"
               Height          =   210
               Index           =   2
               Left            =   2385
               TabIndex        =   145
               Top             =   345
               Width           =   1170
            End
            Begin VB.OptionButton OptLotNoGen 
               Caption         =   "Categorywise"
               Height          =   210
               Index           =   1
               Left            =   960
               TabIndex        =   144
               Top             =   345
               Width           =   1335
            End
         End
         Begin VB.TextBox txtfields 
            DataField       =   "MicRange"
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
            Index           =   29
            Left            =   7815
            MaxLength       =   15
            TabIndex        =   141
            Top             =   6495
            Width           =   2340
         End
         Begin VB.Frame Frame22 
            Caption         =   "Planning Spindles"
            Enabled         =   0   'False
            Height          =   660
            Left            =   150
            TabIndex        =   121
            Top             =   6945
            Width           =   6270
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "spindle4"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
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
               Index           =   16
               Left            =   4830
               MaxLength       =   5
               TabIndex        =   65
               Top             =   240
               Width           =   1320
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "spindle3"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
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
               Index           =   15
               Left            =   3225
               MaxLength       =   5
               TabIndex        =   64
               Top             =   240
               Width           =   1320
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "spindle2"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
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
               Left            =   1635
               MaxLength       =   5
               TabIndex        =   63
               Top             =   240
               Width           =   1320
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "spindle1"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
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
               Index           =   13
               Left            =   135
               MaxLength       =   5
               TabIndex        =   62
               Top             =   240
               Width           =   1320
            End
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
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
            Index           =   12
            Left            =   5460
            MaxLength       =   5
            TabIndex        =   61
            Top             =   6495
            Width           =   1275
         End
         Begin VB.Frame fraAssVal 
            Caption         =   "Insurance Amt calculate based on Assessable Value"
            Enabled         =   0   'False
            Height          =   540
            Left            =   165
            TabIndex        =   119
            Top             =   6390
            Width           =   4200
            Begin VB.OptionButton optAssValNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1935
               TabIndex        =   66
               Top             =   225
               Value           =   -1  'True
               Width           =   675
            End
            Begin VB.OptionButton optAssValYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   60
               Top             =   225
               Width           =   705
            End
         End
         Begin VB.Frame Frame21 
            Caption         =   "Inspection Approval Required"
            Enabled         =   0   'False
            Height          =   510
            Left            =   5550
            TabIndex        =   118
            Top             =   3720
            Width           =   4620
            Begin VB.OptionButton optInsNO 
               Caption         =   "No"
               Height          =   255
               Left            =   2850
               TabIndex        =   35
               Top             =   225
               Value           =   -1  'True
               Width           =   975
            End
            Begin VB.OptionButton optINSYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   630
               TabIndex        =   34
               Top             =   210
               Width           =   1215
            End
         End
         Begin VB.Frame Frame20 
            Caption         =   "F.A. Posting, Approval Required"
            Enabled         =   0   'False
            Height          =   540
            Left            =   180
            TabIndex        =   117
            Top             =   3165
            Width           =   4920
            Begin VB.OptionButton optFANo 
               Caption         =   "No"
               Height          =   255
               Left            =   2850
               TabIndex        =   29
               Top             =   225
               Value           =   -1  'True
               Width           =   975
            End
            Begin VB.OptionButton optFAYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   630
               TabIndex        =   28
               Top             =   210
               Width           =   1215
            End
         End
         Begin VB.Frame Frame19 
            Caption         =   "Lot Bale, Assessable Value Calculation"
            Height          =   540
            Left            =   6960
            TabIndex        =   116
            Top             =   4230
            Width           =   3195
            Begin VB.OptionButton optAssessMill 
               Caption         =   "Mill"
               Height          =   255
               Left            =   600
               TabIndex        =   40
               Top             =   240
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton optAssessSupplier 
               Caption         =   "Supplier"
               Height          =   255
               Left            =   1845
               TabIndex        =   41
               Top             =   225
               Width           =   975
            End
         End
         Begin VB.Frame Frame18 
            Caption         =   "Purchase Bill, Clearance to include in Final Bill Value"
            Enabled         =   0   'False
            Height          =   510
            Left            =   5550
            TabIndex        =   115
            Top             =   3180
            Width           =   4620
            Begin VB.OptionButton optClearNo 
               Caption         =   "No"
               Height          =   255
               Left            =   2850
               TabIndex        =   31
               Top             =   225
               Value           =   -1  'True
               Width           =   975
            End
            Begin VB.OptionButton optClearyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   630
               TabIndex        =   30
               Top             =   225
               Width           =   1215
            End
         End
         Begin VB.Frame Frame17 
            Caption         =   "Waste Issue, Default Issuing Type"
            Height          =   540
            Left            =   3570
            TabIndex        =   114
            Top             =   4230
            Width           =   3195
            Begin VB.OptionButton optWIKg 
               Caption         =   "Kgswise"
               Height          =   255
               Left            =   1905
               TabIndex        =   39
               Top             =   225
               Width           =   975
            End
            Begin VB.OptionButton optWIbale 
               Caption         =   "Balewise"
               Height          =   255
               Left            =   600
               TabIndex        =   38
               Top             =   240
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.Frame Frame16 
            Caption         =   "Season, Debit Value Calculation"
            Height          =   540
            Left            =   3570
            TabIndex        =   113
            Top             =   5820
            Width           =   3200
            Begin VB.OptionButton optSeaNO 
               Caption         =   "No"
               Height          =   255
               Left            =   1890
               TabIndex        =   57
               Top             =   210
               Width           =   975
            End
            Begin VB.OptionButton optSEAYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   56
               Top             =   210
               Value           =   -1  'True
               Width           =   1065
            End
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "SoftWasteper"
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
            Left            =   8835
            MaxLength       =   6
            TabIndex        =   22
            Top             =   2235
            Width           =   1350
         End
         Begin VB.TextBox txtfields 
            DataField       =   "cottoninv_type"
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
            Index           =   10
            Left            =   2190
            TabIndex        =   21
            Top             =   2280
            Width           =   1185
         End
         Begin VB.Frame Frame15 
            Caption         =   "Addition Tax Required"
            Enabled         =   0   'False
            Height          =   540
            Left            =   180
            TabIndex        =   111
            Top             =   5820
            Width           =   3200
            Begin VB.OptionButton optATRYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   54
               Top             =   225
               Width           =   855
            End
            Begin VB.OptionButton optATRNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1935
               TabIndex        =   55
               Top             =   225
               Value           =   -1  'True
               Width           =   975
            End
         End
         Begin VB.Frame Frame14 
            Caption         =   "Issue, Variety control for Requisition Slip"
            Enabled         =   0   'False
            Height          =   570
            Left            =   180
            TabIndex        =   110
            Top             =   5265
            Width           =   3200
            Begin VB.OptionButton optIRSYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   48
               Top             =   240
               Width           =   1215
            End
            Begin VB.OptionButton optIRSNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1920
               TabIndex        =   49
               Top             =   240
               Value           =   -1  'True
               Width           =   975
            End
         End
         Begin VB.Frame Frame13 
            Caption         =   "Issue, Variety control for Blend\Mix"
            Enabled         =   0   'False
            Height          =   540
            Left            =   6960
            TabIndex        =   109
            Top             =   5310
            Width           =   3200
            Begin VB.OptionButton optIVCNo 
               Caption         =   "No"
               Height          =   255
               Left            =   1875
               TabIndex        =   53
               Top             =   240
               Value           =   -1  'True
               Width           =   975
            End
            Begin VB.OptionButton optIVCYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   52
               Top             =   240
               Width           =   1215
            End
         End
         Begin VB.Frame Frame12 
            Caption         =   "Purchase Bill, Commission to include in Final Bill Value"
            Enabled         =   0   'False
            Height          =   540
            Left            =   180
            TabIndex        =   108
            Top             =   3705
            Width           =   4920
            Begin VB.OptionButton optCommBIllYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   630
               TabIndex        =   32
               Top             =   240
               Width           =   1215
            End
            Begin VB.OptionButton optCommBIlNo 
               Caption         =   "No"
               Height          =   255
               Left            =   2850
               TabIndex        =   33
               Top             =   225
               Value           =   -1  'True
               Width           =   975
            End
         End
         Begin VB.Frame Frame11 
            Caption         =   "Centralized Purchase Order"
            Height          =   525
            Left            =   180
            TabIndex        =   107
            Top             =   4740
            Width           =   3200
            Begin VB.OptionButton optPOCYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   42
               Top             =   195
               Width           =   735
            End
            Begin VB.OptionButton optPOCno 
               Caption         =   "No"
               Height          =   255
               Left            =   1920
               TabIndex        =   43
               Top             =   180
               Value           =   -1  'True
               Width           =   975
            End
         End
         Begin VB.Frame Frame8 
            Caption         =   "Supplier Assessments Calculation"
            Enabled         =   0   'False
            Height          =   570
            Left            =   180
            TabIndex        =   104
            Top             =   2610
            Width           =   4905
            Begin VB.TextBox txtSuppAssesDelivery 
               Alignment       =   1  'Right Justify
               DataField       =   "SuppAssesDelivery"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Left            =   3570
               MaxLength       =   3
               TabIndex        =   24
               ToolTipText     =   "Enter the value"
               Top             =   195
               Width           =   885
            End
            Begin VB.TextBox txtSuppAssesQuality 
               Alignment       =   1  'Right Justify
               DataField       =   "SuppAssesQuality"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Left            =   1605
               MaxLength       =   3
               TabIndex        =   23
               ToolTipText     =   "Enter the value"
               Top             =   195
               Width           =   885
            End
            Begin VB.Label Label18 
               Caption         =   "Delivery %"
               Height          =   225
               Left            =   2580
               TabIndex        =   106
               Top             =   255
               Width           =   915
            End
            Begin VB.Label Label17 
               Caption         =   "Quality %"
               Height          =   225
               Left            =   840
               TabIndex        =   105
               Top             =   255
               Width           =   735
            End
         End
         Begin VB.Frame Frame10 
            Caption         =   "Supplier Lot No. Required for Arrival"
            Height          =   540
            Left            =   3570
            TabIndex        =   103
            Top             =   5280
            Width           =   3200
            Begin VB.OptionButton optSLAYes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   50
               Top             =   240
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton optSLANo 
               Caption         =   "No"
               Height          =   255
               Left            =   1905
               TabIndex        =   51
               Top             =   240
               Width           =   975
            End
         End
         Begin VB.Frame Frame9 
            Caption         =   "Invoice/Purchase, Tax inclusive of Cess"
            Height          =   540
            Left            =   6975
            TabIndex        =   102
            Top             =   4770
            Width           =   3180
            Begin VB.OptionButton optCessWithTax 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   46
               Top             =   255
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton optCessWithoutTax 
               Caption         =   "No"
               Height          =   255
               Left            =   1860
               TabIndex        =   47
               Top             =   210
               Width           =   975
            End
         End
         Begin VB.Frame Frame7 
            Caption         =   "Issue, Default Actual Issue Kgs"
            Height          =   540
            Left            =   6960
            TabIndex        =   101
            Top             =   5820
            Width           =   3195
            Begin VB.OptionButton optNetwt 
               Caption         =   "Nett Weight"
               Height          =   255
               Left            =   585
               TabIndex        =   58
               Top             =   225
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton optZero 
               Caption         =   "Zero"
               Height          =   255
               Left            =   1875
               TabIndex        =   59
               Top             =   240
               Width           =   975
            End
         End
         Begin VB.ComboBox Combo4 
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
            ItemData        =   "RMIParam_NEW.frx":2DEF
            Left            =   4890
            List            =   "RMIParam_NEW.frx":2DF9
            Style           =   2  'Dropdown List
            TabIndex        =   6
            Top             =   150
            Width           =   1755
         End
         Begin VB.Frame Frame5 
            Caption         =   "Commission to include in Tax"
            Height          =   540
            Left            =   3570
            TabIndex        =   98
            Top             =   4755
            Width           =   3200
            Begin VB.OptionButton opt_commno 
               Caption         =   "No"
               Height          =   255
               Left            =   1905
               TabIndex        =   45
               Top             =   225
               Width           =   975
            End
            Begin VB.OptionButton opt_commyes 
               Caption         =   "Yes"
               Height          =   255
               Left            =   600
               TabIndex        =   44
               Top             =   240
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.Frame Frame4 
            Caption         =   "Issue, Default Issuing Type"
            Height          =   525
            Left            =   180
            TabIndex        =   97
            Top             =   4230
            Width           =   3180
            Begin VB.OptionButton opt_bale 
               Caption         =   "Balewise"
               Height          =   255
               Left            =   615
               TabIndex        =   36
               Top             =   195
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton opt_kgs 
               Caption         =   "Kgswise"
               Height          =   255
               Left            =   1905
               TabIndex        =   37
               Top             =   210
               Width           =   975
            End
         End
         Begin VB.ComboBox Combo3 
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
            ItemData        =   "RMIParam_NEW.frx":2E06
            Left            =   2190
            List            =   "RMIParam_NEW.frx":2E10
            Style           =   2  'Dropdown List
            TabIndex        =   11
            ToolTipText     =   "Select  'Y'  For  Yes or 'N'  For No"
            Top             =   870
            Width           =   1335
         End
         Begin VB.Frame Frame2 
            Caption         =   "Issue, Default Column in Issue Lookup"
            Height          =   510
            Left            =   5550
            TabIndex        =   94
            Top             =   2610
            Width           =   4620
            Begin VB.OptionButton optPartyLN 
               Caption         =   "Supplier Lot No."
               Height          =   255
               Left            =   3105
               TabIndex        =   27
               Top             =   195
               Width           =   1455
            End
            Begin VB.OptionButton OptVar 
               Caption         =   "Variety"
               Height          =   255
               Left            =   1965
               TabIndex        =   26
               Top             =   195
               Width           =   975
            End
            Begin VB.OptionButton OptLot 
               Caption         =   "Lot No."
               Height          =   255
               Left            =   660
               TabIndex        =   25
               Top             =   195
               Value           =   -1  'True
               Width           =   1215
            End
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "qtymargin"
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
            Left            =   5520
            MaxLength       =   5
            TabIndex        =   19
            Top             =   1890
            Width           =   1005
         End
         Begin VB.TextBox Text1 
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
            Height          =   330
            Left            =   8580
            TabIndex        =   13
            Top             =   855
            Width           =   1590
         End
         Begin VB.TextBox txtfields 
            DataField       =   "duty_code"
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
            Left            =   4890
            MaxLength       =   6
            TabIndex        =   12
            Top             =   870
            Width           =   1785
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "loanmargin"
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
            Left            =   2190
            MaxLength       =   5
            TabIndex        =   18
            Top             =   1935
            Width           =   1200
         End
         Begin VB.TextBox txtfields 
            DataField       =   "sicano"
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
            Left            =   2190
            MaxLength       =   20
            TabIndex        =   16
            Top             =   1590
            Width           =   3255
         End
         Begin VB.TextBox txtfields 
            DataField       =   "smixno"
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
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   4890
            MaxLength       =   6
            TabIndex        =   9
            Top             =   525
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
            DataField       =   "sarrno"
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
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   8580
            MaxLength       =   6
            TabIndex        =   10
            Top             =   510
            Width           =   1590
         End
         Begin VB.TextBox txtfields 
            DataField       =   "scontno"
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
            Left            =   2190
            MaxLength       =   6
            TabIndex        =   8
            Top             =   525
            Width           =   1320
         End
         Begin VB.ComboBox Combo2 
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
            ItemData        =   "RMIParam_NEW.frx":2E1D
            Left            =   8580
            List            =   "RMIParam_NEW.frx":2E27
            Style           =   2  'Dropdown List
            TabIndex        =   7
            Top             =   135
            Width           =   1605
         End
         Begin VB.ComboBox Combo1 
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
            ItemData        =   "RMIParam_NEW.frx":2E34
            Left            =   2190
            List            =   "RMIParam_NEW.frx":2E3E
            Style           =   2  'Dropdown List
            TabIndex        =   5
            Top             =   150
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            DataField       =   "bankname"
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
            Left            =   7185
            MaxLength       =   30
            TabIndex        =   17
            Top             =   1545
            Width           =   3000
         End
         Begin VB.TextBox txtfields 
            DataField       =   "licenseno"
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
            Index           =   3
            Left            =   2190
            MaxLength       =   20
            TabIndex        =   14
            Top             =   1245
            Width           =   3255
         End
         Begin VB.TextBox txtfields 
            DataField       =   "cexcno"
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
            Index           =   4
            Left            =   7185
            MaxLength       =   20
            TabIndex        =   15
            Top             =   1200
            Width           =   3000
         End
         Begin VB.Frame Frame6 
            Caption         =   "Handling charges to include in Tax"
            Height          =   375
            Left            =   180
            TabIndex        =   100
            Top             =   3285
            Width           =   4635
            Begin VB.OptionButton optHCNo 
               Caption         =   "No"
               Height          =   225
               Left            =   2805
               TabIndex        =   68
               Top             =   255
               Value           =   -1  'True
               Width           =   1260
            End
            Begin VB.OptionButton optHCYes 
               Caption         =   "Yes"
               Height          =   240
               Left            =   645
               TabIndex        =   67
               Top             =   255
               Width           =   1035
            End
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Issue Modify ID"
            Height          =   195
            Left            =   2640
            TabIndex        =   320
            Top             =   8760
            Width           =   1095
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "TCS Exclusion?"
            Height          =   195
            Left            =   6960
            TabIndex        =   288
            ToolTipText     =   "Select  'Y'  For  Yes or 'N'  For No"
            Top             =   8340
            Width           =   1125
         End
         Begin VB.Label Label37 
            Caption         =   "Purchase Tcs % "
            Height          =   300
            Left            =   3840
            TabIndex        =   263
            Top             =   8325
            Width           =   1515
         End
         Begin VB.Label Label32 
            Caption         =   "FT Amount per KG "
            Height          =   420
            Left            =   240
            TabIndex        =   220
            Top             =   7620
            Width           =   1515
         End
         Begin VB.Label Label31 
            Caption         =   "Arrived Weight Tolerance%"
            Height          =   330
            Left            =   6720
            TabIndex        =   209
            Top             =   1950
            Width           =   2025
         End
         Begin VB.Label Label27 
            Caption         =   "Micronarie Range in PO"
            Height          =   420
            Left            =   6855
            TabIndex        =   142
            Top             =   6405
            Width           =   915
         End
         Begin VB.Label Label20 
            Alignment       =   1  'Right Justify
            Caption         =   "Lot No. Starts from"
            Height          =   420
            Left            =   4395
            TabIndex        =   120
            Top             =   6465
            Width           =   1020
         End
         Begin VB.Label Label19 
            Caption         =   "Maximum Soft Waste % in Issue"
            Height          =   360
            Left            =   6450
            TabIndex        =   112
            Top             =   2310
            Width           =   2385
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "GMS Installed"
            Height          =   195
            Left            =   3690
            TabIndex        =   99
            Top             =   225
            Width           =   990
         End
         Begin VB.Label Label14 
            Caption         =   "Raw Material Invoice Type"
            Height          =   420
            Left            =   180
            TabIndex        =   96
            Top             =   2340
            Width           =   2040
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Vat Exclusion?"
            Height          =   195
            Left            =   180
            TabIndex        =   95
            ToolTipText     =   "Select  'Y'  For  Yes or 'N'  For No"
            Top             =   930
            Width           =   1050
         End
         Begin VB.Label Label12 
            Caption         =   "Arrived Quantity Margin (%)"
            Height          =   330
            Left            =   3525
            TabIndex        =   93
            Top             =   1965
            Width           =   2025
         End
         Begin VB.Label Label11 
            Caption         =   "Tare Weight"
            Height          =   210
            Left            =   6750
            TabIndex        =   92
            Top             =   900
            Width           =   1815
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Duty Code"
            Height          =   195
            Index           =   1
            Left            =   3690
            TabIndex        =   86
            Top             =   915
            Width           =   750
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Loan Margin (%)"
            Height          =   195
            Left            =   180
            TabIndex        =   85
            Top             =   1995
            Width           =   1140
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "SICA Enrolment No."
            Height          =   195
            Left            =   180
            TabIndex        =   84
            Top             =   1635
            Width           =   1410
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Starting Mix No."
            Height          =   195
            Left            =   3690
            TabIndex        =   83
            Top             =   585
            Width           =   1125
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Starting Arrival No."
            Height          =   195
            Left            =   6720
            TabIndex        =   82
            Top             =   570
            Width           =   1320
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Starting Contract No."
            Height          =   195
            Left            =   180
            TabIndex        =   81
            Top             =   585
            Width           =   1485
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Online Updation Required"
            Height          =   195
            Left            =   6705
            TabIndex        =   80
            Top             =   225
            Width           =   1830
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "FA Installed"
            Height          =   195
            Left            =   180
            TabIndex        =   79
            Top             =   240
            Width           =   825
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "License No."
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   78
            Top             =   1275
            Width           =   855
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Bank Name"
            Height          =   195
            Left            =   5580
            TabIndex        =   77
            Top             =   1635
            Width           =   840
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Central Excise No."
            Height          =   195
            Left            =   5565
            TabIndex        =   76
            Top             =   1305
            Width           =   1305
         End
      End
      Begin VB.Label Label101 
         Caption         =   "TDS Type"
         Height          =   195
         Left            =   -74760
         TabIndex        =   298
         Top             =   990
         Width           =   1740
      End
      Begin VB.Label Label45 
         AutoSize        =   -1  'True
         Caption         =   "TDS Gross Amount"
         Height          =   435
         Left            =   -74760
         TabIndex        =   295
         Top             =   600
         Width           =   1485
      End
      Begin VB.Label Label44 
         AutoSize        =   -1  'True
         Caption         =   "TDS %  With PAN"
         Height          =   195
         Left            =   -72015
         TabIndex        =   294
         Top             =   680
         Width           =   1290
      End
      Begin VB.Label Label43 
         AutoSize        =   -1  'True
         Caption         =   "TDS % Without PAN"
         Height          =   195
         Left            =   -69240
         TabIndex        =   293
         Top             =   990
         Visible         =   0   'False
         Width           =   1470
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4860
      Left            =   540
      TabIndex        =   87
      Top             =   1470
      Visible         =   0   'False
      Width           =   8415
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIParam_NEW.frx":2E4B
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2760
         Picture         =   "RMIParam_NEW.frx":3231
         Style           =   1  'Graphical
         TabIndex        =   89
         Top             =   4020
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIParam_NEW.frx":35F7
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4470
         Picture         =   "RMIParam_NEW.frx":39D9
         Style           =   1  'Graphical
         TabIndex        =   88
         Top             =   4020
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   660
         TabIndex        =   90
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   91
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Parameters"
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
      Height          =   360
      Left            =   705
      TabIndex        =   69
      Top             =   540
      Width           =   1470
   End
End
Attribute VB_Name = "RMIParam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents ADOSECONDARYRS As Recordset
Attribute ADOSECONDARYRS.VB_VarHelpID = -1
Dim j As Integer
Dim Rs As Recordset
Dim rslot As Recordset
Dim Opt As String
Dim DB As Connection
Dim iCount As Integer
Dim iRst  As Integer
Dim RW As Integer
Private Enum E_SpdQparam
    E_QFIBRE = 1
    E_QMAX = 2
    E_QMIN = 3
    E_RANGE = 4
End Enum


Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Paramater"
End Sub



Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error

    Select Case Index
    Case 0
        
        Opt = "add"
        desc.Caption = "Addition"
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select fainstal,duty_code,fatfr,scontno,sarrno,smixno,licenseno,bankname,cexcno," & _
                          "sicano,loanmargin,tarewt,qtymargin,ISSUE_DEF,vatflg,cottoninv_type,issflg," & _
                          "commtax,gmsinstall, HandlingChargeflg, ActualIssueKgs,CessCalCulateTax," & _
                          "SuppLotNoReqArrival,SuppAssesQuality,SuppAssesDelivery,CentralizedOrder," & _
                          "CommInBillValue,VarietyCtrlIssue,VarietyReqIssue,AddTaxRequired,SoftWastePer," & _
                          "SeasonCalcReq,WasteIssueType,ClearInBillFlg,AssessValueFlg,InsApprovalFlg," & _
                          "InsCalAssvalflg,FAPOSTINGFLG,IQA,spindle1,spindle2,spindle3,spindle4," & _
                          "TransferTC,TransferINGL,TransferOUTGL,CarrierGL,StkDRGL,StkCRGL,MicRange," & _
                          "LotNoGen,QParamMod,PRBased,OpenKeyflg,PortSelection,ActualIssue,Lotbaleentry," & _
                          "Transflg,  TrnWG,cport,cbpersec,Arrivaltransfardocno, " & _
                          "RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF,REDCESS_ROFF," & _
                          " RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,PO_Approval,POWtTolerance,RCGST_ROFF,RSGST_ROFF,RIGST_ROFF,WeightFlg,FTAmt ,WasteissType,issretprpflg,arrivalorder,poimportdivision,WSPort,WSIPADD,WeightIPFlg,purbillapproval,BValInLotFlg,AmdafterGRN,RAntiDump_ROFF ,RInsurance_ROFF,MasterEntryFlg " & _
                          " ,Arrdespatch_Flg,tcstax,RTCS_ROFF,TCSPer,FDisc_ROFF,TCS_FLG,cess_tcs,pack_tcs,INVTCS_GrossAmt,INVTCSPER_WOPan,InvTCSPER_WPan,RInvTCS_Roff,FREIGHTGLCODE,TCSINLANDCOSTflg,TDS_GrossAmt,TDSPER_WPan,TDSPER_WOPan,TDSCalcTotPur,TDS_TYPE ,Rate_ROff,DutyInsurance_GST, " & _
                          " Tds_Rndnextrs,TDSCalcFlag,RInvASSVAL_ROFF,EInvoicePath,issuemodifyid,OutpassFromInvoice from rm_param", DB, adOpenStatic, adLockBatchOptimistic
        
        Set rslot = New Recordset
        rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(12).Text = rslot(0)
        Else
            txtfields(12).Text = ""
        End If
        Call SpdLoad
        SpdQuality.Enabled = True
        Frame2.Enabled = True
        Frame4.Enabled = True
        Frame5.Enabled = True
        Frame7.Enabled = True
        Frame9.Enabled = True
        Frame10.Enabled = True
        Frame11.Enabled = True
        Frame8.Enabled = True
        Frame12.Enabled = True
        Frame13.Enabled = True
        Frame14.Enabled = True
        Frame15.Enabled = True
        Frame16.Enabled = True
        Frame17.Enabled = True
        Frame18.Enabled = True
        Frame19.Enabled = True
        Frame21.Enabled = True
        Frame22.Enabled = True
        Frame28.Enabled = True
        
        Frame29.Enabled = True
        Frame31.Enabled = True
        Frame32.Enabled = True
        Frame32.Enabled = True
        Frame33.Enabled = True
        Frame34.Enabled = True

        
        FraRMPOApp.Enabled = True
        Dim j As Integer
        
'        For j = 11 To 52
'            txtFields(j).Locked = False
'        Next
        
        adoPrimaryRS.AddNew
        adoPrimaryRS("fainstal") = "N"
        adoPrimaryRS("fatfr") = "N"
        adoPrimaryRS("gmsinstall") = "N"
        
        txtfields(0).Locked = False
        
        Combo1.ListIndex = 1
        Combo2.ListIndex = 1
        Combo3.ListIndex = 1
        Combo15.ListIndex = 1
        
        Call ENABLCONTLS
        Call bindcontls
        
        DB.BeginTrans

        Call adddelmod(BUTTON)
        
        BUTTON(9).ToolTipText = "Add Record"
        SSTab1.Tab = 0
        Combo1.ListIndex = 1
        Combo1.SetFocus
    
    Case 1
        
        Opt = "mod"
        
        
        desc.Caption = "Modification"
        Frame40.Enabled = True
        Frame1.Visible = True
        BUTTON(9).Enabled = True
        BUTTON(9).ToolTipText = "Modify"
               
        DB.BeginTrans
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select fainstal,duty_code,fatfr,scontno,sarrno,smixno,licenseno," & _
                         " bankname,cexcno,sicano,loanmargin,tarewt,qtymargin,ISSUE_DEF,vatflg," & _
                         " cottoninv_type,issflg,commtax,gmsinstall, HandlingChargeflg, " & _
                         " ActualIssueKgs,CessCalCulateTax,SuppLotNoReqArrival,SuppAssesQuality," & _
                         " SuppAssesDelivery,CentralizedOrder,CommInBillValue,VarietyCtrlIssue," & _
                         " VarietyReqIssue,AddTaxRequired,SoftWastePer,SeasonCalcReq,WasteIssueType," & _
                         " ClearInBillFlg,AssessValueFlg,InsApprovalFlg,InsCalAssvalflg,FAPOSTINGFLG," & _
                         " IQA,spindle1,spindle2,spindle3,spindle4,TransferTC,TransferINGL,TransferOUTGL," & _
                         " CarrierGL,StkDRGL,StkCRGL,MicRange,LotNoGen,QParamMod,PRBased,OpenKeyflg,PortSelection," & _
                         " ActualIssue,Lotbaleentry,Transflg,  TrnWG,cport,cbpersec,Arrivaltransfardocno, " & _
                         " RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF,REDCESS_ROFF," & _
                         " RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,PO_Approval,POWtTolerance,RCGST_ROFF,RSGST_ROFF,RIGST_ROFF,WeightFlg,FTAmt ,WasteissType,issretprpflg,arrivalorder,poimportdivision,WSPort,WSIPADD ,RSGST_ROFF,RIGST_ROFF,RcGST_ROFF,WeightIPFlg,purbillapproval,BValInLotFlg ,AmdafterGRN,RAntiDump_ROFF,RInsurance_ROFF ,MasterEntryFlg " & _
                         " , Arrdespatch_Flg,tcstax,RTCS_ROFF,TCSPer,FDisc_ROFF,TCS_FLG,cess_tcs,pack_tcs,INVTCS_GrossAmt,INVTCSPER_WOPan,InvTCSPER_WPan,RInvTCS_Roff,FREIGHTGLCODE,TCSINLANDCOSTflg,TDS_GrossAmt,TDSPER_WPan,TDSPER_WOPan,TDSCalcTotPur,TDS_TYPE,Rate_ROff,DutyInsurance_GST,StkTransferAccess,AccessPath,Tds_Rndnextrs,TDSCalcFlag,RInvASSVAL_ROFF,EInvoicePath,issuemodifyid,OutpassFromInvoice from rm_param", DB, adOpenStatic, adLockBatchOptimistic
        Call SpdLoad
        SpdQuality.Enabled = True
        Set rslot = New Recordset
        rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(12).Text = rslot(0)
        Else
            txtfields(12).Text = ""
        End If
'
'        For j = 11 To 52
'            txtFields(j).Locked = True
'        Next

        Call adddelmod(BUTTON)
        Call bindcontls
        Call ENABLCONTLS
        SSTab1.Tab = 0
        Frame2.Enabled = True
        Frame4.Enabled = True
        Frame5.Enabled = True
        Frame7.Enabled = True
        Frame9.Enabled = True
        Frame10.Enabled = True
        Frame11.Enabled = True
        Frame8.Enabled = True
        Frame12.Enabled = True
        Frame13.Enabled = True
        Frame14.Enabled = True
        Frame15.Enabled = True
        Frame16.Enabled = True
        Frame17.Enabled = True
        Frame18.Enabled = True
        Frame19.Enabled = True
        Frame21.Enabled = True
        Frame20.Enabled = True
        Frame22.Enabled = True
        Frame28.Enabled = True
        Frame29.Enabled = True
        Frame31.Enabled = True
        Frame32.Enabled = True
        Frame33.Enabled = True
        Frame34.Enabled = True
       
        fraAssVal.Enabled = True
        FraRMPOApp.Enabled = True
    Case 9
        'Save
        
        If val(txtSuppAssesDelivery.Text) + val(txtSuppAssesQuality.Text) <> 100 Then
            MsgBox "Invalid Supplier Assessments, Sum of Quality & Delivery % must be 100", vbInformation, head
            txtSuppAssesQuality.SetFocus
            Exit Sub
        End If

        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then
            If Combo3.ListIndex = 0 Then
                adoPrimaryRS("Vatflg") = "Y"
            Else
                adoPrimaryRS("Vatflg") = "N"
            End If
            If Combo15.ListIndex = 0 Then
                adoPrimaryRS("TCSINLANDCOSTflg") = "Y"
            Else
                adoPrimaryRS("TCSINLANDCOSTflg") = "N"
            End If
            
            If Text3.Text <> "" Then
                adoPrimaryRS("EInvoicePath") = Trim(Text3.Text)
            End If
        
            If Combo1.ListIndex = 0 Then
                adoPrimaryRS("fainstal") = "Y"
            Else
                adoPrimaryRS("fainstal") = "N"
            End If
            If Combo4.ListIndex = 0 Then
                adoPrimaryRS("gmsinstall") = "Y"
            Else
                adoPrimaryRS("gmsinstall") = "N"
            End If
            If Combo2.ListIndex = 0 Then
                adoPrimaryRS("fatfr") = "Y"
            Else
                adoPrimaryRS("fatfr") = "N"
            End If
            If OptLot.value = True Then
                adoPrimaryRS("ISSUE_DEF") = "L"
            ElseIf OptVar.value = True Then
                adoPrimaryRS("ISSUE_DEF") = "V"
            ElseIf optPartyLN.value = True Then
                adoPrimaryRS("ISSUE_DEF") = "P"
            End If
            
            If Option11.value = True Then
               adoPrimaryRS("TDSCalcFlag") = "M"
            ElseIf Option12.value = True Then
                adoPrimaryRS("TDSCalcFlag") = "B"
            End If
            If opt_bale.value = True Then
                adoPrimaryRS("ISSFLG") = "Balewise"
            ElseIf opt_kgs.value = True Then
                adoPrimaryRS("ISSFLG") = "Kgswise"
            End If
            If opt_commyes.value = True Then
                adoPrimaryRS("commtax") = "Y"
            ElseIf opt_commno.value = True Then
                adoPrimaryRS("commtax") = "N"
            End If
            
            If Option7.value = True Then
                adoPrimaryRS("purbillapproval") = "Y"
            ElseIf Option8.value = True Then
                adoPrimaryRS("purbillapproval") = "N"
            End If
            
            If optHCYes.value = True Then
                adoPrimaryRS("handlingchargeFlg") = "Y"
            ElseIf optHCNo.value = True Then
                adoPrimaryRS("handlingChargeflg") = "N"
            End If
            
            If optNetwt.value = True Then
                adoPrimaryRS("ActualIssueKgs") = "N"
            ElseIf optZero.value = True Then
                adoPrimaryRS("ActualIssueKgs") = "Z"
            End If
            
            If optCessWithTax.value = True Then
                adoPrimaryRS("CessCalCulateTax") = "Y"
            ElseIf optCessWithoutTax.value = True Then
                adoPrimaryRS("CessCalCulateTax") = "N"
            End If
        
            If optSLAYes.value = True Then
                adoPrimaryRS("SuppLotNoReqArrival") = "Y"
            ElseIf optSLANo.value = True Then
                adoPrimaryRS("SuppLotNoReqArrival") = "N"
            End If
            
            If optPOCYes.value = True Then
                adoPrimaryRS("CentralizedOrder") = "Y"
            ElseIf optPOCno.value = True Then
                adoPrimaryRS("CentralizedOrder") = "N"
            End If
            
            If optIVCYes.value = True Then
                adoPrimaryRS("VarietyCtrlIssue") = "Y"
            ElseIf optIVCNo.value = True Then
                adoPrimaryRS("VarietyCtrlIssue") = "N"
            End If

            If optIRSYes.value = True Then
                adoPrimaryRS("VarietyReqIssue") = "Y"
            ElseIf optIRSNo.value = True Then
                adoPrimaryRS("VarietyReqIssue") = "N"
            End If
            
            If optATRYes.value = True Then
                adoPrimaryRS("AddTaxRequired") = "Y"
            ElseIf optATRNo.value = True Then
                adoPrimaryRS("AddTaxRequired") = "N"
            End If
            
            If optSEAYes.value = True Then
                adoPrimaryRS("SeasonCalcReq") = "Y"
            ElseIf optSeaNO.value = True Then
                adoPrimaryRS("SeasonCalcReq") = "N"
            End If
            If Chk_FromMaster.value = 0 Then
          
               adoPrimaryRS("MasterEntryFlg") = "N"
            Else
                adoPrimaryRS("MasterEntryFlg") = "Y"
            End If
            If Chk_despatchFlg.value = 0 Then
               adoPrimaryRS("Arrdespatch_Flg") = "N"
            Else
               adoPrimaryRS("Arrdespatch_Flg") = "Y"
            End If
           
            adoPrimaryRS("OutpassFromInvoice") = Chk_OutPassEntry.value
            
            If optWIbale.value = True Then
                adoPrimaryRS("WasteIssueType") = "B"
            ElseIf optSeaNO.value = True Then
                adoPrimaryRS("WasteIssueType") = "K"
            End If
            
            If optClearyes.value = True Then
                adoPrimaryRS("ClearInBillFlg") = "Y"
            ElseIf optClearNo.value = True Then
                adoPrimaryRS("ClearInBillFlg") = "N"
            End If
            
            If optCommBIllYes.value = True Then
                adoPrimaryRS("CommInBillValue") = "Y"
            ElseIf optCommBIlNo.value = True Then
                adoPrimaryRS("CommInBillValue") = "N"
            End If
            
            If optAssessSupplier.value = True Then
                adoPrimaryRS("AssessValueFlg") = "S"
            ElseIf optAssessMill.value = True Then
                adoPrimaryRS("AssessValueFlg") = "M"
            End If
            
            If optINSYes.value = True Then
                adoPrimaryRS("InsApprovalFlg") = "Y"
            ElseIf optInsNO.value = True Then
                adoPrimaryRS("InsApprovalFlg") = "N"
            End If
            
            If optAssValYes.value = True Then
                adoPrimaryRS("InsCalAssvalflg") = "Y"
            ElseIf optAssValNo.value = True Then
                adoPrimaryRS("InsCalAssvalflg") = "N"
            End If

            
            If optFAYes.value = True Then
                adoPrimaryRS("FAPOSTINGFLG") = "Y"
            ElseIf optFANo.value = True Then
                adoPrimaryRS("FAPOSTINGFLG") = "N"
            End If
            
            
            If OptIQAYes.value = True Then
                adoPrimaryRS("IQA") = "Y"
            ElseIf OptIQANo.value = True Then
                adoPrimaryRS("IQA") = "N"
            End If
            If OpenkeyloanYes.value = True Then
                adoPrimaryRS("OpenKeyflg") = "Y"
            ElseIf Openkeyloanno.value = True Then
                adoPrimaryRS("OpenKeyflg") = "N"
            End If
                         
            If Optionip.value = True Then
                adoPrimaryRS("PortSelection") = "IP"
            ElseIf Optionport.value = True Then
                adoPrimaryRS("PortSelection") = "PO"
            End If
            
            If MillWgtOPT.value = True Then
                adoPrimaryRS("WeightFlg") = "M"
            ElseIf SupWgtOPT.value = True Then
                adoPrimaryRS("WeightFlg") = "S"
            End If
            
          
            If Optionactuayees.value = True Then
            adoPrimaryRS("ActualIssue") = "Y"
            ElseIf Optionactualno.value = True Then
            adoPrimaryRS("ActualIssue") = "N"
            End If
            
            If Optionlotbaleyes.value = True Then
            adoPrimaryRS("Lotbaleentry") = "Y"
            ElseIf Optionlotbaleno.value = True Then
            adoPrimaryRS("Lotbaleentry") = "N"
            End If
             If OPtionTransferyes.value = True Then
            adoPrimaryRS("Transflg") = "Y"
            ElseIf OPtionTransferno.value = True Then
            adoPrimaryRS("transflg") = "N"
            End If
            
            If Option4.value = True Then
              adoPrimaryRS("arrivalorder") = "C"
            ElseIf Option3.value = True Then
                adoPrimaryRS("arrivalorder") = "D"
            End If
            
            If Opt_BillLotyes.value = True Then
              adoPrimaryRS("BValInLotFlg") = "Y"
            ElseIf Opt_BillLotNo.value = True Then
                adoPrimaryRS("BValInLotFlg") = "N"
            End If
            
            If Option9.value = True Then
                adoPrimaryRS("StkTransferAccess") = "Y"
            Else
                adoPrimaryRS("StkTransferAccess") = "N"
            End If
            

            
            adoPrimaryRS("AccessPath") = Text2.Text
            adoPrimaryRS("Tds_Rndnextrs") = Chk_tdsroundoffnext1.value
            adoPrimaryRS("DutyInsurance_GST") = Chk_DutyInsGST.value
            adoPrimaryRS("poimportdivision") = txtfields(34).Text
            adoPrimaryRS("tarewt") = val(Text1.Text)
            
            adoPrimaryRS("WSIPADD") = Trim(txtfields(36).Text)
            adoPrimaryRS("WSPort") = val(Trim(txtfields(35).Text))
            adoPrimaryRS("WeightIPFlg") = Check1.value
            
            adoPrimaryRS("SuppAssesQuality") = val(txtSuppAssesQuality.Text)
            adoPrimaryRS("SuppAssesDelivery") = val(txtSuppAssesDelivery.Text)
            adoPrimaryRS("spindle1") = txtfields(13).Text
            adoPrimaryRS("spindle2") = txtfields(14).Text
            adoPrimaryRS("spindle3") = txtfields(15).Text
            adoPrimaryRS("spindle4") = txtfields(16).Text
            
            adoPrimaryRS("TDS_TYPE") = Trim(txtfields(132).Text)
            
            adoPrimaryRS("FREIGHTGLCODE") = txtfields(39).Text
          
            
            adoPrimaryRS("WasteissType") = Trim(txtfields(33).Text)
            
            adoPrimaryRS("TCSPer") = val(txtfields(37).Text)
            
            adoPrimaryRS("TransferTC") = val(txtfields(17).Text)
            adoPrimaryRS("TransferINGL") = txtfields(19).Text
            adoPrimaryRS("TransferOUTGL") = txtfields(21).Text
            
            adoPrimaryRS("FTAmt") = val(txtfields(31).Text)
            adoPrimaryRS("CarrierGL") = txtfields(23).Text
            
            adoPrimaryRS("StkDRGL") = txtfields(25).Text
            adoPrimaryRS("StkCRGL") = txtfields(27).Text
            adoPrimaryRS("MicRange") = Trim(txtfields(29).Text)
            
            If Opt_isuwmc(0).value = True Then
                adoPrimaryRS("TrnWG") = "Y"
                adoPrimaryRS("cport") = cb_port.Text
                adoPrimaryRS("cbpersec") = cmb_bitsecond.Text
            Else
                adoPrimaryRS("TrnWG") = "N"
                adoPrimaryRS("cport") = val(cb_port.Text)
                adoPrimaryRS("cbpersec") = 2400
            End If
            
            If OptLotNoGen(0).value = True Then
                adoPrimaryRS("LotNoGen") = "S"
            ElseIf OptLotNoGen(1).value = True Then
                adoPrimaryRS("LotNoGen") = "C"
            ElseIf OptLotNoGen(2).value = True Then
                adoPrimaryRS("LotNoGen") = "V"
            End If
            
            
            If Opt_INVTCSTAXYES.value = True Then
                adoPrimaryRS("TCS_FLG") = "Y"
            ElseIf Opt_INVTCSTAXNo.value = True Then
                adoPrimaryRS("TCS_FLG") = "N"
            End If
            If Opt_CESSFORTCSYES.value = True Then
                adoPrimaryRS("cess_tcs") = "Y"
            ElseIf Opt_CESSFORTCSNO.value = True Then
                adoPrimaryRS("cess_tcs") = "N"
            End If
            If Opt_FrgforTCSYes.value = True Then
                adoPrimaryRS("pack_tcs") = "Y"
            ElseIf Opt_FrgforTCSNo.value = True Then
                adoPrimaryRS("pack_tcs") = "N"
            End If
            
            adoPrimaryRS("INVTCS_GrossAmt") = Trim(txtFields1(37).Text)
            adoPrimaryRS("INVTCSPER_WOPan") = Trim(txtFields1(39).Text)
            adoPrimaryRS("InvTCSPER_WPan") = Trim(txtFields1(38).Text)
            adoPrimaryRS("RInvTCS_Roff") = Combo14.ListIndex
            
            adoPrimaryRS("RInvASSVAL_ROFF") = Combo17.ListIndex
            
            
            
            If OptQualMod(0).value = True Then
                adoPrimaryRS("QParamMod") = "Y"
            ElseIf OptQualMod(1).value = True Then
                adoPrimaryRS("QParamMod") = "N"
            End If
            
            
            
            If OptPRyes.value = True Then
                adoPrimaryRS("PRBased") = "Y"
            ElseIf OptPRNo.value = True Then
                adoPrimaryRS("PRBased") = "N"
            End If
            
            If Optarrivaltransfardocnogenerationyes.value = True Then
                adoPrimaryRS("Arrivaltransfardocno") = "Y"
            Else
                adoPrimaryRS("Arrivaltransfardocno") = "N"
            End If
            
      
            
            If Opt_TCSTAXYES.value = True Then
                adoPrimaryRS("tcstax") = "Y"
            Else
                adoPrimaryRS("tcstax") = "N"
            End If
            
            
            
            adoPrimaryRS("RLANDCOST_ROFF") = cmbLandCostroff.ListIndex
            adoPrimaryRS("RASSVAL_ROFF") = cmbAssvalRoff.ListIndex
            adoPrimaryRS("RBED_ROFF") = cmbBEDRoff.ListIndex
            adoPrimaryRS("RAED_ROFF") = cmbAEDRoff.ListIndex
            adoPrimaryRS("REDCESS_ROFF") = CmbCessRoff.ListIndex
            adoPrimaryRS("RHSCESS_ROFF") = CmbHsCessRoff.ListIndex
            adoPrimaryRS("RCESS_ROFF") = CmbCessRoff.ListIndex
            adoPrimaryRS("RTAX_ROFF") = CmbTaxRoff.ListIndex
            adoPrimaryRS("RADDTAX_ROFF") = CmbAddTaxRoff.ListIndex
            adoPrimaryRS("RSURCHARGE_ROFF") = CmbSurchargeRoff.ListIndex
            
            adoPrimaryRS("AmdafterGRN") = Chk_amendafterGRN.value
            adoPrimaryRS("RCGST_ROFF") = Combo5.ListIndex
            adoPrimaryRS("RSGST_ROFF") = Combo6.ListIndex
            adoPrimaryRS("RIGST_ROFF") = Combo7.ListIndex
            adoPrimaryRS("RTCS_ROFF") = Combo12.ListIndex
          
            
            
            adoPrimaryRS("RAntiDump_ROFF") = Combo11.ListIndex
            adoPrimaryRS("rate_Roff") = Combo16.ListIndex
            
            adoPrimaryRS("RInsurance_ROFF") = Combo10.ListIndex
            
            adoPrimaryRS("FDisc_ROFF") = Combo13.ListIndex
            
            adoPrimaryRS("TDS_GrossAmt") = val(txtfields(42).Text)
            adoPrimaryRS("TDSPER_WPan") = val(txtfields(41).Text)
            adoPrimaryRS("TDSPER_WOPan") = val(txtfields(40).Text)
            adoPrimaryRS("TDSCalcTotPur") = Chk_TdscalfullPurchase.value
            
            If OptAppYes.value = True Then
                adoPrimaryRS("PO_Approval") = "Y"
            ElseIf OptAppNo.value = True Then
                adoPrimaryRS("PO_Approval") = "N"
            End If
            adoPrimaryRS("POWtTolerance") = val(txtfields(30).Text)
            
            adoPrimaryRS("issuemodifyid") = Trim(txtfields(43).Text)
            
            For RW = 1 To SpdQuality.MaxRows
                SpdQuality.Row = RW
                DB.Execute "Update RM_FibreRange set Maximum =" & val(GetText(SpdQuality, E_SpdQparam.E_QMAX, RW)) & "," & _
                           "  Minimum =" & val(GetText(SpdQuality, E_SpdQparam.E_QMIN, RW)) & "," & _
                           "  Range ='" & GetText(SpdQuality, E_SpdQparam.E_RANGE, RW) & "' Where FibreProperty ='" & GetText(SpdQuality, E_SpdQparam.E_QFIBRE, RW) & "'"
            Next
            
       End If
        
        If Opt = "add" Then
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Parameters Saved ", vbInformation, head
        End If
        
        If Opt = "mod" Then
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
                    Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Parameter"
                            TrnLog("Trans_Mod") = "Mod"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = adoPrimaryRS("WeightFlg")
'                            TrnLog("docno") = val(txtfields(0).Text)
'                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                            TrnLog("billno") = adoPrimaryRS("BValInLotFlg")
'                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                            TrnLog("LotNo") = txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Parameters Modified!", vbInformation, head
        End If
        
        Set rslot = New Recordset
        rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            DB.Execute "UPDATE RM_LOTNO SET LOTNO=" & val(txtfields(12).Text) & " WHERE dIVCODE='" & Divcode & "'"
        Else
            DB.Execute "INSERT INTO RM_LOTNO (DIVCODE,LOTNO) VALUES ('" & Divcode & "'," & val(txtfields(12).Text) & ")"
        End If
        
        
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select fainstal,duty_code,fatfr,scontno,sarrno,smixno,licenseno,bankname," & _
                        " cexcno,sicano,loanmargin,tarewt,qtymargin,ISSUE_DEF,vatflg,cottoninv_type," & _
                        " issflg,commtax,gmsinstall, HandlingChargeflg, ActualIssueKgs,CessCalCulateTax," & _
                        " SuppLotNoReqArrival,SuppAssesQuality,SuppAssesDelivery,CentralizedOrder," & _
                        " CommInBillValue,VarietyCtrlIssue,VarietyReqIssue,AddTaxRequired,SoftWastePer," & _
                        " SeasonCalcReq,WasteIssueType,ClearInBillFlg,AssessValueFlg,InsApprovalFlg," & _
                        " InsCalAssvalflg,FAPOSTINGFLG,IQA,CarrierGL,MicRange,LotNoGen,QParamMod," & _
                        " PRBased,OpenKeyflg,PortSelection,ActualIssue,Lotbaleentry,Transflg," & _
                        " TrnWG,cport,cbpersec,Arrivaltransfardocno," & _
                        " RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF,REDCESS_ROFF," & _
                        " RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,PO_Approval,POWtTolerance,RCGST_ROFF,RSGST_ROFF,RIGST_ROFF,WeightFlg,FTAmt ,WasteissType,issretprpflg,arrivalorder,poimportdivision,WSPort,WSIPADD,isnull(CesswithTax,'') CesswithTax ,RSGST_ROFF,RIGST_ROFF,RcGST_ROFF,WeightIPFlg,purbillapproval ,BValInLotFlg,AmdafterGRN,RAntiDump_ROFF ,RInsurance_ROFF ,MasterEntryFlg " & _
                        " , Arrdespatch_Flg,tcstax ,RTCS_ROFF,TCSPer,FDisc_ROFF,TCS_FLG,cess_tcs,pack_tcs,INVTCS_GrossAmt,INVTCSPER_WOPan,InvTCSPER_WPan,RInvTCS_Roff,FREIGHTGLCODE,TCSINLANDCOSTflg,TDS_GrossAmt,TDSPER_WPan,TDSPER_WOPan,TDSCalcTotPur,TDS_TYPE,Rate_ROff,DutyInsurance_GST,Tds_Rndnextrs ,TDSCalcFlag,RInvASSVAL_ROFF,EInvoicePath,issuemodifyid,OutpassFromInvoice from rm_param", DB, adOpenStatic, adLockBatchOptimistic
        
        Set rslot = New Recordset
        rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(12).Text = rslot(0)
        Else
            txtfields(12).Text = ""
        End If
        If Option4.value = True Then
            adoPrimaryRS("arrivalorder") = "C"
        ElseIf Option3.value = True Then
           adoPrimaryRS("arrivalorder") = "D"
        End If
            
        Call bindcontls
        Call disablcontls
        
        desc.Caption = "Query"
        Screen.MousePointer = 0
        Opt = ""
        If Not adoPrimaryRS.BOF Then
            'Call bindcontls
            Call NEWFORM(BUTTON)
            Call NEWFORM1(BUTTON, 65)
            Call disablcontls
            BUTTON(0).Enabled = False
            BUTTON(1).Enabled = True
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            BUTTON(11).Enabled = True
        Else
            Call cancl(BUTTON)
        End If
        
        SSTab1.Tab = 0
        'Call NEWFORM(BUTTON)
        Exit Sub

GOPRIMERROR:
        If Err = -2147217900 Then
            MsgBox "Parameter already defined!", vbInformation, head
            GoTo gocancel
        End If
del:
        If Err.Number = -2147217900 Then
            MsgBox "Parameter cannot be deleted!", vbInformation, head
            BUTTON(9).ToolTipText = "Save"
            GoTo gocancel
            Exit Sub
        End If

    Case 10
        'CANCEL
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:

        
        desc.Caption = "Query"
        Screen.MousePointer = 11
    
        Select Case Opt
        Case "mod"
            DB.RollbackTrans
        Case "add"
            DB.RollbackTrans
        Case "del"
            DB.RollbackTrans
        End Select
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select fainstal,duty_code,fatfr,scontno,sarrno,smixno,licenseno,bankname," & _
                           " cexcno,sicano,loanmargin,tarewt,qtymargin,ISSUE_DEF,vatflg,cottoninv_type," & _
                           " issflg,commtax,gmsinstall, HandlingChargeflg, ActualIssueKgs,CessCalCulateTax," & _
                           " SuppLotNoReqArrival,SuppAssesQuality,SuppAssesDelivery,CentralizedOrder," & _
                           " CommInBillValue,VarietyCtrlIssue,VarietyReqIssue,AddTaxRequired,SoftWastePer," & _
                           " SeasonCalcReq,WasteIssueType,ClearInBillFlg,AssessValueFlg,InsApprovalFlg," & _
                           " InsCalAssvalflg,FAPOSTINGFLG,IQA,spindle1,spindle2,spindle3,spindle4,MicRange," & _
                           " LotNoGen,QParamMod,PRBased,OpenKeyflg,PortSelection,ActualIssue,Lotbaleentry,Transflg ," & _
                           " TrnWG,cport,cbpersec,Arrivaltransfardocno, " & _
                           " RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF,REDCESS_ROFF," & _
                           " RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,PO_Approval,POWtTolerance,WeightFlg,WasteissType,issretprpflg,arrivalorder,poimportdivision,WSPort,WSIPADD ,RSGST_ROFF,RIGST_ROFF,RcGST_ROFF,WeightIPFlg,purbillapproval,BValInLotFlg,AmdafterGRN,RAntiDump_ROFF ,RInsurance_ROFF  ,MasterEntryFlg " & _
                           " ,Arrdespatch_Flg,tcstax,RTCS_ROFF,TCSPer,FDisc_ROFF,TCS_FLG,cess_tcs,pack_tcs,INVTCS_GrossAmt,INVTCSPER_WOPan,InvTCSPER_WPan,RInvTCS_Roff,FREIGHTGLCODE,TCSINLANDCOSTflg,TDS_GrossAmt,TDSPER_WPan,TDSPER_WOPan,TDSCalcTotPur,TDS_TYPE,Rate_ROff,DutyInsurance_GST,Tds_Rndnextrs,TDSCalcFlag,RInvASSVAL_ROFF,EInvoicePath,issuemodifyid,OutpassFromInvoice from rm_param", DB, adOpenStatic, adLockBatchOptimistic
        
        Set rslot = New Recordset
        rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(12).Text = rslot(0)
        Else
            txtfields(12).Text = ""
        End If
        Call bindcontls
        Opt = ""
        Screen.MousePointer = 0
        Call disablcontls
        'Call cancl(BUTTON)
        If Not adoPrimaryRS.BOF Then
            'Call bindcontls
            Call NEWFORM(BUTTON)
            Call NEWFORM1(BUTTON, 65)
            Call disablcontls
            BUTTON(0).Enabled = False
            BUTTON(1).Enabled = True
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            BUTTON(11).Enabled = True
        Else
            Call cancl(BUTTON)
        End If
        Frame1.Visible = True
        SSTab1.Tab = 0
        Call SpdLoad
        
    Case 11
        'EXIT
        'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me
    End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form RMIParam", vbInformation, head

End Sub

Private Sub Combo1_Click()
On Error GoTo Combo1_Click_Error

    If Combo1.ListIndex = 1 Then
        Combo2.ListIndex = 1
        Combo2.Enabled = False
    Else
        Combo2.Enabled = True
    End If

Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "add" Or Opt = "mod" Then
    If KslList1.listfield1 = "DUTY_CODE" Then
        txtfields(8).Text = KslList1.Code
    End If
End If
Frame3.Visible = False

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    StatusBar1.Panels(1).Text = STBARmsg
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    optHCNo = True
    cb_port.Clear
    cb_port.AddItem "1"
    cb_port.AddItem "2"
    cb_port.AddItem "3"
    cb_port.AddItem "4"
    cb_port.AddItem "5"
    cb_port.AddItem "6"
    cb_port.AddItem "7"
    cb_port.AddItem "8"
    cb_port.AddItem "9"
    cmb_bitsecond.Clear
    cmb_bitsecond.AddItem "110"
    cmb_bitsecond.AddItem "300"
    cmb_bitsecond.AddItem "1200"
    cmb_bitsecond.AddItem "4800"
    cmb_bitsecond.AddItem "9600"
    cmb_bitsecond.AddItem "19200"
    cmb_bitsecond.AddItem "38400"
    cmb_bitsecond.AddItem "57600"
    cmb_bitsecond.AddItem "115200"
    cmb_bitsecond.AddItem "230400"
    cmb_bitsecond.AddItem "460800"
    cmb_bitsecond.AddItem "921600"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select fainstal,duty_code,fatfr,scontno,sarrno,smixno,licenseno,bankname,cexcno," & _
                " sicano,loanmargin,tarewt,qtymargin,ISSUE_DEF,vatflg,cottoninv_type,issflg," & _
                " commtax,gmsinstall, HandlingChargeflg, ActualIssueKgs,CessCalCulateTax," & _
                " SuppLotNoReqArrival,SuppAssesQuality,SuppAssesDelivery,CentralizedOrder," & _
                " CommInBillValue,VarietyCtrlIssue ,VarietyReqIssue, AddTaxRequired,SoftWastePer," & _
                " SeasonCalcReq,WasteIssueType,ClearInBillFlg,AssessValueFlg,InsApprovalFlg," & _
                " InsCalAssvalflg,FAPOSTINGFLG,IQA,spindle1,spindle2,spindle3,spindle4,TransferTC," & _
                " TransferINGL,TransferOUTGL,CarrierGL,StkDRGL,StkCRGL,MicRange,LotNoGen,QParamMod," & _
                " PRBased,OpenKeyflg,PortSelection,ActualIssue,Lotbaleentry,Transflg,TrnWG,cport," & _
                " cbpersec,Arrivaltransfardocno," & _
                " RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF,REDCESS_ROFF," & _
                " RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,PO_Approval,POWtTolerance,RCGST_ROFF,RSGST_ROFF,RIGST_ROFF,WeightFlg,FTAmt,WasteissType ,issretprpflg,arrivalorder,poimportdivision,WSPort,WSIPADD,WeightIPFlg,purbillapproval,BValInLotFlg,AmdafterGRN,RAntiDump_ROFF,RInsurance_ROFF ,MasterEntryFlg" & _
                " , Arrdespatch_Flg,tcstax ,RTCS_ROFF,TCSPer,FDisc_ROFF,TCS_FLG,cess_tcs,pack_tcs,INVTCS_GrossAmt,INVTCSPER_WOPan,InvTCSPER_WPan,RInvTCS_Roff,FREIGHTGLCODE,TCSINLANDCOSTflg,TDS_GrossAmt,TDSPER_WPan,TDSPER_WOPan,TDSCalcTotPur,TDS_TYPE,Rate_ROff,DutyInsurance_GST,StkTransferAccess,AccessPath,Tds_Rndnextrs,TDSCalcFlag,RInvASSVAL_ROFF,EInvoicePath,issuemodifyid,OutpassFromInvoice from rm_param", DB, adOpenStatic, adLockBatchOptimistic
    Call SpdLoad
    SSTab1.Enabled = True
    intervalMinutes = -1
    Set rslot = New Recordset
    rslot.Open "Select Lotno from rm_lotno where Divcode='" & Divcode & "'", DB, adOpenStatic
    If rslot.EOF = False Then
        txtfields(12).Text = rslot(0)
    Else
        txtfields(12).Text = ""
    End If
    
    If Not adoPrimaryRS.BOF Then
        Call bindcontls
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, 65)
        cmbLandCostroff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RLANDCOST_ROFF")), 0, adoPrimaryRS("RLANDCOST_ROFF")))
        cmbAssvalRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RASSVAL_ROFF")), 0, adoPrimaryRS("RASSVAL_ROFF")))
        cmbBEDRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RBED_ROFF")), 0, adoPrimaryRS("RBED_ROFF")))
        cmbAEDRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RAED_ROFF")), 0, adoPrimaryRS("RAED_ROFF")))
        CmbEdCessRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("REDCESS_ROFF")), 0, adoPrimaryRS("REDCESS_ROFF")))
        CmbHsCessRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RHSCESS_ROFF")), 0, adoPrimaryRS("RHSCESS_ROFF")))
        CmbCessRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RCESS_ROFF")), 0, adoPrimaryRS("RCESS_ROFF")))
        CmbTaxRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RTAX_ROFF")), 0, adoPrimaryRS("RTAX_ROFF")))
        CmbAddTaxRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RADDTAX_ROFF")), 0, adoPrimaryRS("RADDTAX_ROFF")))
        CmbSurchargeRoff.ListIndex = val(IIf(IsNull(adoPrimaryRS("RSURCHARGE_ROFF")), 0, adoPrimaryRS("RSURCHARGE_ROFF")))
        
        If adoPrimaryRS("StkTransferAccess") = "Y" Then
            Option9.value = True
        Else
            Option10.value = True
        End If
        
    
        Text2.Text = Trim(adoPrimaryRS("accesspath") & "")
        
        Call disablcontls
        BUTTON(0).Enabled = False
        BUTTON(1).Enabled = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        BUTTON(11).Enabled = True
        
        
'        Exit Sub
    Else
        BUTTON(0).Enabled = True
        BUTTON(1).Enabled = False
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        BUTTON(11).Enabled = True
        MsgBox "Parameters not defined!", vbInformation, head
    End If
    optNetwt.value = True
    SSTab1.Tab = 0
    intervalMinutes = -1
    
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.RecordCount > 0 Then BUTTON(0).Enabled = False
    Exit Sub

er1:
    
    If Err = 3021 Then
        MsgBox "Parameters not defined!", vbInformation, head
    End If


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form RMIParam", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
    Opt = ""
    Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If adoPrimaryRS.RecordCount > 0 Then

    If adoPrimaryRS("ISSUE_DEF") = "L" Then
        OptLot.value = True
    ElseIf adoPrimaryRS("ISSUE_DEF") = "V" Then
        OptVar.value = True
    ElseIf adoPrimaryRS("ISSUE_DEF") = "P" Then
        optPartyLN.value = True
    End If
    
    If adoPrimaryRS("TDSCalcFlag") = "M" Then
        Option11.value = True
    ElseIf adoPrimaryRS("TDSCalcFlag") = "B" Then
        Option12.value = True
    End If
    
    
    If adoPrimaryRS("ISSFLG") = "Balewise" Then
        opt_bale.value = True
    ElseIf adoPrimaryRS("ISSFLG") = "Kgswise" Then
        opt_kgs.value = True
    End If
    Chk_tdsroundoffnext1.value = IIf(IsNull(adoPrimaryRS("Tds_Rndnextrs")), 0, adoPrimaryRS("Tds_Rndnextrs"))
    If adoPrimaryRS("tcstax") = "Y" Then
        Opt_TCSTAXYES.value = True
    Else
        Opt_TCSTAXNO.value = True
    End If
    
    If adoPrimaryRS("BValInLotFlg") = "N" Then
        Opt_BillLotNo.value = True
    Else 'If adoPrimaryRS("BValInLotFlg") = "N" Then
        
        Opt_BillLotyes.value = True
    End If
    
    
    If IIf(IsNull(adoPrimaryRS("MasterEntryFlg")), "N", adoPrimaryRS("MasterEntryFlg")) = "N" Then
        Chk_FromMaster.value = 0
    Else
        Chk_FromMaster.value = 1
    End If
    
        
    If IIf(IsNull(adoPrimaryRS("Arrdespatch_Flg")), "N", adoPrimaryRS("Arrdespatch_Flg")) = "N" Then
        Chk_despatchFlg.value = 0
    Else
        Chk_despatchFlg.value = 1
    End If
    
    If IIf(IsNull(adoPrimaryRS("OutpassFromInvoice")), 0, adoPrimaryRS("OutpassFromInvoice")) = 0 Then
        Chk_OutPassEntry.value = 0
    Else
        Chk_OutPassEntry.value = 1
    End If
    
    
    If adoPrimaryRS("WeightFlg") = "M" Then
        MillWgtOPT.value = True
               
    ElseIf adoPrimaryRS("WeightFlg") = "S" Then
        SupWgtOPT.value = True
    End If
    
    If adoPrimaryRS("issretprpflg") = "Y" Then
        Option1.value = True
    ElseIf adoPrimaryRS("issretprpflg") = "N" Then
        Option2.value = True
    End If
    
     If adoPrimaryRS("arrivalorder") = "C" Then
        Option4.value = True
    ElseIf adoPrimaryRS("arrivalorder") = "D" Then
        Option3.value = True
    End If
    
    If adoPrimaryRS("TrnWG") = "Y" Then
        Opt_isuwmc(0).value = True
    Else
        Opt_isuwmc(1).value = True
    End If
    cb_port.Text = IIf(IsNull(adoPrimaryRS("cport")), "", adoPrimaryRS("cport"))
    cmb_bitsecond.Text = IIf(IsNull(adoPrimaryRS("cbpersec")), "", adoPrimaryRS("cbpersec"))
    
    Chk_amendafterGRN.value = IIf(IsNull(adoPrimaryRS("AmdafterGRN")), 0, adoPrimaryRS("AmdafterGRN"))
    Chk_TdscalfullPurchase.value = IIf(IsNull(adoPrimaryRS("TDSCalcTotPur")), 0, adoPrimaryRS("TDSCalcTotPur"))
    Chk_DutyInsGST.value = IIf(IsNull(adoPrimaryRS("DutyInsurance_GST")), 0, adoPrimaryRS("DutyInsurance_GST"))
    
    
    If adoPrimaryRS("CentralizedOrder") = "Y" Then
        optPOCYes.value = True
    Else
        optPOCno.value = True
    End If
    
    If adoPrimaryRS("Arrivaltransfardocno") = "Y" Then
        Optarrivaltransfardocnogenerationyes.value = True
    Else
        Optarrivaltransfardocnogenerationno.value = True
    End If
    
    
    If adoPrimaryRS("CommInBillValue") = "Y" Then
        optCommBIllYes.value = True
    Else
        optCommBIlNo.value = True
    End If
    
    If adoPrimaryRS("varietyCtrlissue") = "Y" Then
        optIVCYes.value = True
    Else
        optIVCNo.value = True
    End If

    If adoPrimaryRS("VarietyReqIssue") = "Y" Then
        optIRSYes.value = True
    Else
        optIRSNo.value = True
    End If
    
    If adoPrimaryRS("AddTaxRequired") = "Y" Then
        optATRYes.value = True
    Else
        optATRNo.value = True
    End If
    
    If adoPrimaryRS("SeasonCalcReq") = "Y" Then
        optSEAYes.value = True
    Else
        optSeaNO.value = True
    End If
    
    If adoPrimaryRS("WasteissueType") = "B" Then
        optWIbale.value = True
    Else
        optWIKg.value = True
    End If
    
    If adoPrimaryRS("ClearInBillFlg") = "Y" Then
        optClearyes.value = True
    Else
        optClearNo.value = True
    End If
    
    If adoPrimaryRS("commtax") = "Y" Then
        opt_commyes.value = True
    ElseIf adoPrimaryRS("commtax") = "N" Then
        opt_commno.value = True
    End If
    
    If adoPrimaryRS("purbillapproval") = "Y" Then
        Option7.value = True
    ElseIf adoPrimaryRS("purbillapproval") = "N" Then
        Option8.value = True
    End If
    
    If adoPrimaryRS("gmsinstall") = "Y" Then
        Combo4.ListIndex = 0
    Else
        Combo4.ListIndex = 1
    End If
    
    If adoPrimaryRS("HandlingChargeFlg") = "Y" Then
        optHCYes.value = True
    Else
        optHCNo.value = True
    End If
    
    If adoPrimaryRS("ActualIssueKgs") = "N" Then
        optNetwt.value = True
    Else
        optZero.value = True
    End If
    
    If adoPrimaryRS("SuppLotNoReqArrival") = "Y" Then
        optSLAYes.value = True
    Else
        optSLANo.value = True
    End If
    
    If adoPrimaryRS("CessCalCulateTax") = "Y" Then
        optCessWithTax.value = True
    Else
        optCessWithoutTax.value = True
    End If
    
    If adoPrimaryRS("AssessValueFlg") = "M" Then
        optAssessMill.value = True
    Else
        optAssessSupplier.value = True
    End If
    
    If adoPrimaryRS("InsApprovalFlg") = "Y" Then
        optINSYes.value = True
    Else
        optInsNO.value = True
    End If
    
    If adoPrimaryRS("InsCalAssvalflg") = "Y" Then
        optAssValYes.value = True
    Else
        optAssValNo.value = True
    End If
    
    If adoPrimaryRS("FAPOSTINGFLG") = "Y" Then
        optFAYes.value = True
    Else
        optFANo.value = True
    End If
    
    If adoPrimaryRS("IQA") = "Y" Then
        OptIQAYes.value = True
    Else
        OptIQANo.value = True
    End If
    If adoPrimaryRS("LotNoGen") = "S" Then
        OptLotNoGen(0).value = True
    ElseIf adoPrimaryRS("LotNoGen") = "C" Then
        OptLotNoGen(1).value = True
    ElseIf adoPrimaryRS("LotNoGen") = "V" Then
        OptLotNoGen(2).value = True
    End If
    
    If adoPrimaryRS("QParamMod") = "Y" Then
        OptQualMod(0).value = True
    ElseIf adoPrimaryRS("QParamMod") = "N" Then
        OptQualMod(1).value = True
    End If
    
    If adoPrimaryRS("PRBased") = "Y" Then
        OptPRyes.value = True
    ElseIf adoPrimaryRS("PRBased") = "N" Then
        OptPRNo.value = True
    End If
      
    If adoPrimaryRS("OpenKeyflg") = "Y" Then
        OpenkeyloanYes.value = True
    ElseIf adoPrimaryRS("OpenKeyflg") = "N" Then
        Openkeyloanno.value = True
    End If
    
      
      If adoPrimaryRS("PortSelection") = "IP" Then
        Optionip.value = True
    ElseIf adoPrimaryRS("PortSelection") = "PO" Then
        Optionport.value = True
    End If
    
    
      If adoPrimaryRS("ActualIssue") = "Y" Then
        Optionactuayees.value = True
    ElseIf adoPrimaryRS("ActualIssue") = "N" Then
        Optionactualno.value = True
    End If
    
    
      If adoPrimaryRS("Lotbaleentry") = "Y" Then
        Optionlotbaleyes.value = True
    ElseIf adoPrimaryRS("Lotbaleentry") = "N" Then
        Optionlotbaleno.value = True
    End If
    
    If adoPrimaryRS("Transflg") = "Y" Then
        OPtionTransferyes.value = True
    ElseIf adoPrimaryRS("Transflg") = "N" Then
        OPtionTransferno.value = True
    End If
    txtSuppAssesQuality.Text = IIf(IsNull(adoPrimaryRS!SuppAssesQuality), "", adoPrimaryRS!SuppAssesQuality)
    txtSuppAssesDelivery.Text = IIf(IsNull(adoPrimaryRS!SuppAssesdelivery), "", adoPrimaryRS!SuppAssesdelivery)
    If adoPrimaryRS("PO_Approval") = "Y" Then
        OptAppYes.value = True
    ElseIf adoPrimaryRS("PO_Approval") = "N" Then
        OptAppNo.value = True
    End If
   txtfields(37).Text = IIf(IsNull(adoPrimaryRS!TCSPer), "0.000", adoPrimaryRS!TCSPer)


   
    Combo12.Text = IIf(IsNull(adoPrimaryRS!RTCS_ROFF), "0", adoPrimaryRS!RTCS_ROFF)
    Combo5.Text = IIf(IsNull(adoPrimaryRS!RCGST_ROFF), "0", adoPrimaryRS!RCGST_ROFF)
    Combo11.Text = IIf(IsNull(adoPrimaryRS!RAntiDump_ROFF), "0", adoPrimaryRS!RAntiDump_ROFF)
    Combo10.Text = IIf(IsNull(adoPrimaryRS!RInsurance_ROFF), "0", adoPrimaryRS!RInsurance_ROFF)
    Combo6.Text = IIf(IsNull(adoPrimaryRS!RSGST_ROFF), "0", adoPrimaryRS!RSGST_ROFF)
    Combo7.Text = IIf(IsNull(adoPrimaryRS!RIGST_ROFF), "0", adoPrimaryRS!RIGST_ROFF)
    Check1.value = IIf(IsNull(adoPrimaryRS!WeightIPFlg), "0", adoPrimaryRS!WeightIPFlg)
    Combo13.Text = IIf(IsNull(adoPrimaryRS!FDisc_ROFF), "0", adoPrimaryRS!FDisc_ROFF)
    Combo16.Text = IIf(IsNull(adoPrimaryRS!rate_Roff), "4", adoPrimaryRS!rate_Roff)
    
    
    If adoPrimaryRS("EInvoicePath") <> "" Then
        Option14.value = True
        Text3.Text = adoPrimaryRS("EInvoicePath")
    Else
        Option13.value = True
    End If
    
    
    If adoPrimaryRS("TCS_FLG") = "Y" Then
        Opt_INVTCSTAXYES.value = True
    Else
        Opt_INVTCSTAXNo.value = True
    End If
    If adoPrimaryRS("cess_tcs") = "Y" Then
        Opt_CESSFORTCSYES.value = True
    Else
        Opt_CESSFORTCSNO.value = True
    End If
    If adoPrimaryRS("pack_tcs") = "Y" Then
        Opt_FrgforTCSYes.value = True
    Else
        Opt_FrgforTCSNo.value = True
    End If
    txtFields1(37).Text = IIf(IsNull(adoPrimaryRS!INVTCS_GrossAmt), "0", adoPrimaryRS!INVTCS_GrossAmt) 'adoPrimaryRS("INVTCS_GrossAmt")
    txtFields1(39).Text = IIf(IsNull(adoPrimaryRS!INVTCSPER_WOPan), "0", adoPrimaryRS!INVTCSPER_WOPan) 'adoPrimaryRS("INVTCSPER_WOPan")
    txtFields1(38).Text = IIf(IsNull(adoPrimaryRS!InvTCSPER_WPan), "0", adoPrimaryRS!InvTCSPER_WPan) 'adoPrimaryRS("InvTCSPER_WPan")
    Combo14.ListIndex = IIf(IsNull(adoPrimaryRS!RInvTCS_Roff), "0", adoPrimaryRS!RInvTCS_Roff)
    
    Combo17.ListIndex = IIf(IsNull(adoPrimaryRS!RInvASSVAL_ROFF), "0", adoPrimaryRS!RInvASSVAL_ROFF)
           
           txtfields(43).Text = IIf(IsNull(adoPrimaryRS("issuemodifyid")), "", adoPrimaryRS("issuemodifyid"))
           
    Set rsuserid = New Recordset
    rsuserid.Open "select distinct user_id,user_name from pp_passwd where module=6 and divcode='" & Divcode & "' and isnull(activeflg,'N')='Y' and user_id='" & txtfields(43).Text & "'", DB, adOpenStatic
    If rsuserid.RecordCount > 0 Then
        txtfields(44).Text = IIf(IsNull(rsuserid("user_name")), "", rsuserid("user_name"))
    Else
        txtfields(44).Text = ""
    End If
    
    Frame2.Enabled = False
    Frame4.Enabled = False
    Frame5.Enabled = False
    Frame7.Enabled = False
    Frame9.Enabled = False
    Frame10.Enabled = False
    Frame11.Enabled = False
    Frame8.Enabled = False
    Frame12.Enabled = False
    Frame13.Enabled = False
    Frame14.Enabled = False
    Frame15.Enabled = False
    Frame16.Enabled = False
    Frame17.Enabled = False
    Frame18.Enabled = False
    Frame19.Enabled = False
    Frame21.Enabled = False
    Frame22.Enabled = False
    fraAssVal.Enabled = False
    Frame28.Enabled = False
    Frame29.Enabled = False
    Frame31.Enabled = False
    Frame32.Enabled = False
    Frame33.Enabled = False
    Frame34.Enabled = False
    FraRMPOApp.Enabled = False
    txtfields(11).Text = Format(val(txtfields(11).Text), "0.00")
    Text1.Text = Format(val(Text1.Text), "0.000")
    
    SSTab1.Tab = 0
    SSTab1.Enabled = True
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub bindcontls()

    On Error Resume Next
    
    Dim TX As TextBox
    
    For Each TX In Me.txtfields
        Set TX.DataSource = adoPrimaryRS
    Next
    If adoPrimaryRS("VATFLG") = "Y" Then
        Combo3.ListIndex = 0
    Else
        Combo3.ListIndex = 1
    End If
    
    If adoPrimaryRS("TCSINLANDCOSTflg") = "Y" Then
        Combo15.ListIndex = 0
    Else
        Combo15.ListIndex = 1
    End If
    
        
    If adoPrimaryRS("fainstal") = "Y" Then
        Combo1.ListIndex = 0
    Else
        Combo1.ListIndex = 1
    End If
    
    If adoPrimaryRS("gmsinstall") = "Y" Then
        Combo4.ListIndex = 0
    Else
        Combo4.ListIndex = 1
    End If
    
    If adoPrimaryRS("fatfr") = "Y" Then
        Combo2.ListIndex = 0
    Else
        Combo2.ListIndex = 1
    End If
    Text1.Text = adoPrimaryRS("tarewt")
End Sub

Public Sub ENABLCONTLS()
    
    SSTab1.Enabled = True
    
    Dim I As Integer
    
    For I = 0 To 10
        txtfields(I).Locked = False
    Next
    
End Sub
Public Sub disablcontls()

    SSTab1.Enabled = True

End Sub




Private Sub Txtfields_Change(Index As Integer)
intervalMinutes = -1
    If Opt = "" Then
        If Index = 11 Then txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
    End If
    
  
    Set rsa = New Recordset
    rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
       txtfields(131).Text = rsa(1)
    Else
       txtfields(131).Text = ""
    End If
    
    Set rslot = New Recordset
    rslot.Open "Select TCHEAD from FA_TCMAS where TC=" & val(txtfields(17).Text) & "", DB, adOpenStatic
    If rslot.EOF = False Then
        txtfields(18).Text = rslot(0)
    Else
        txtfields(18).Text = ""
    End If
    
    Set rslot = New Recordset
    rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(19).Text & "'", DB, adOpenStatic
    If rslot.EOF = False Then
        txtfields(20).Text = rslot(0)
    Else
        txtfields(20).Text = ""
    End If
    
    Set rslot = New Recordset
    rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(39).Text & "'", DB, adOpenStatic
    If rslot.EOF = False Then
        txtfields(38).Text = rslot(0)
    Else
        txtfields(38).Text = ""
    End If
    
    Set rslot = New Recordset
    rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(21).Text & "'", DB, adOpenStatic
    If rslot.EOF = False Then
        txtfields(22).Text = rslot(0)
    Else
        txtfields(22).Text = ""
    End If
    
    If Index = 23 Then
        Set rslot = New Recordset
        rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(23).Text & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(24).Text = rslot(0)
        Else
            txtfields(24).Text = ""
        End If
    End If
    
    
    If Index = 33 Then
        Set rslot = New Recordset
        rslot.Open "Select DESCRIPTION from ig_invtype where inv_type='" & txtfields(33).Text & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(32).Text = rslot(0)
        Else
            txtfields(32).Text = ""
        End If
    End If
    
    If Index = 25 Then
        Set rslot = New Recordset
        rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(25).Text & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(26).Text = rslot(0)
        Else
            txtfields(26).Text = ""
        End If
    End If
    
        If Index = 27 Then
        Set rslot = New Recordset
        rslot.Open "Select GlHead from FA_GLMAS where glcode='" & txtfields(27).Text & "'", DB, adOpenStatic
        If rslot.EOF = False Then
            txtfields(28).Text = rslot(0)
        Else
            txtfields(28).Text = ""
        End If
    End If
    
End Sub

Private Sub txtFields_GotFocus(Index As Integer)

On Error GoTo txtFields_GotFocus_Error

    If Opt = "add" Or Opt = "mod" Then
    
        Select Case Index
        Case 0
            StatusBar1.Panels(2).Text = "Enter Starting Contract Number."
        Case 1
            StatusBar1.Panels(2).Text = "Enter Starting Arrival Number"
        Case 2
            StatusBar1.Panels(2).Text = "Enter Starting Mixing Serial Number"
        Case 3
            StatusBar1.Panels(2).Text = "Enter Licence Number"
        Case 4
            StatusBar1.Panels(2).Text = "Enter Central Excise Number"
        Case 5
            StatusBar1.Panels(2).Text = "Enter SICA Enrolment Number"
        Case 6
            StatusBar1.Panels(2).Text = "Enter Bank Name (Stock Statement Purpose)"
        Case 7
            StatusBar1.Panels(2).Text = "Enter Loan Margin % (Stock Statement Purpose)"
        Case 10
            StatusBar1.Panels(2).Text = "Enter Cotton invoice type"
        Case 11
            StatusBar1.Panels(2).Text = "Enter Maximum Soft Waste % in Issue"
        Case 13
            StatusBar1.Panels(2).Text = "Enter Planning Spindles"
        Case 14
            StatusBar1.Panels(2).Text = "Enter Planning Spindles"
        Case 15
            StatusBar1.Panels(2).Text = "Enter Planning Spindles"
        Case 16
            StatusBar1.Panels(2).Text = "Enter Planning Spindles"
'        Case 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51
'            SSTab1.Tab = 1
'            StatusBar1.Panels(2).Text = "Select the GL Code"
        End Select
    
    End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
intervalMinutes = -1
On Error GoTo TXTFIELDS_KeyPress_Error

On Error GoTo TXTFIELDS_KeyPress_Error

    If Not (Opt = "add" Or Opt = "mod") Then
        KeyAscii = 0
        Beep
        Exit Sub
    End If

    Select Case Index
    Case 0, 1, 2
        ToNumber txtfields(Index), KeyAscii
    Case 3, 4, 5, 6
    Case 11
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
    Case 7
        tonumary txtfields, 4, KeyAscii, 7
    Case 12
        Call ToNumberAssign(txtfields(Index), 5, KeyAscii, 5, 0)
    Case 13, 14, 15, 16
        Call ToNumberAssign(txtfields(Index), 4, KeyAscii, 4, 0)
    End Select

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form RMIParam", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form RMIParam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Index = 10 Then
        If txtfields(10).Text = "" Then
'            MsgBox "Cotton invoice type should not be empty"
'            Txtfields(10).Enabled = True
'            Txtfields(10).SetFocus
'            Exit Sub
        End If
    End If

    If Index = 11 Then
        If val(txtfields(Index).Text) > 100 Then
            MsgBox "Please enter the Soft Waste % less than 100", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        Else
            txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
        End If
    End If
    
    If Index = 12 Then
        BUTTON(9).Enabled = True
        BUTTON(9).SetFocus
    End If
End If

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
'-----------------Ravi---------------------------------------------
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then

    If Index = 132 Then
         Set rsa = New Recordset
        rsa.Open "select TDS_TYPE,TDS_DESC AS TDS_Head from FA_TDS_TYPE where TDS_TYPE='" & Trim(txtfields(132).Text) & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
        LookUp.Clear = True
        qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
        LookUp.query = qrl
        LookUp.Caption = "TDS Type Listing"
        LookUp.DefCol = "TDS_Head"
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
    

    If Index = 8 Then
        If Record_Exists("ig_dutytype", "Please Define the Duty type in Sales & Distribution") = False Then
            Exit Sub
        Else
            Set Rs = New Recordset
            Rs.Open "Select Count(*) from ig_dutytype where duty_code ='" & txtfields(8).Text & "'", DB, adOpenStatic
            If Rs(0) = 0 Then
              Label15.Caption = "Duty type Listing"
              Frame3.Visible = True
              Frame3.ZOrder
              KslList1.conn = connectstring
              KslList1.Table = "IG_DUTYTYPE"
              KslList1.listfield1 = "DUTY_CODE"
              KslList1.listfield2 = "DESCRIPTION"
              KslList1.SetFocus
            End If
        End If
    End If
    
    If Index = 10 Then
        LookUp.Clear = True
        LookUp.query = "select inv_type ""Invoice Type"",description ""Description"" from ig_invtype where divcode='" & Divcode & "'"
        LookUp.Caption = "Invoice Type Listing"
        LookUp.DefCol = "Invoic type"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                If txtfields(10).Text = "" Then
                    txtfields(10).Text = LookUp.Fields(0)
                Else
                    txtfields(10).Text = txtfields(10).Text & "," & LookUp.Fields(0)
                End If
                txtfields(11).SetFocus
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
    End If
    
    
        
    If Index = 33 Then
        LookUp.Clear = True
        LookUp.query = "select inv_type ""Invoice Type"",description ""Description"" from ig_invtype where divcode='" & Divcode & "'"
        LookUp.Caption = "Invoice Type Listing"
        LookUp.DefCol = "Invoic type"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(33).Text = LookUp.Fields(0)
                txtfields(32).Text = LookUp.Fields(1)
                txtfields(11).SetFocus
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
    End If
    
    If Index = 18 Then
        LookUp.Clear = True
        LookUp.query = "select tc as Code,tchead as Description from FA_tcmas "
        LookUp.Caption = "TC Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(17).Text = LookUp.Fields(0)
                txtfields(18).Text = LookUp.Fields(1)
                
            Else
                txtfields(17).Text = ""
                txtfields(18).Text = ""
                Exit Sub
            End If
    End If
    
     If Index = 20 Then
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(19).Text = LookUp.Fields(0)
                txtfields(20).Text = LookUp.Fields(1)
                
            Else
                txtfields(19).Text = ""
                txtfields(20).Text = ""
                Exit Sub
            End If
    End If
   
    If Index = 39 Then
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(39).Text = LookUp.Fields(0)
                txtfields(38).Text = LookUp.Fields(1)
                
            Else
                txtfields(39).Text = ""
                txtfields(38).Text = ""
                Exit Sub
            End If
    End If
   
    If Index = 22 Then
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(21).Text = LookUp.Fields(0)
                txtfields(22).Text = LookUp.Fields(1)
                
            Else
                txtfields(21).Text = ""
                txtfields(22).Text = ""
                Exit Sub
            End If
    End If
   
     If Index = 23 Then
     
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(23).Text = LookUp.Fields(0)
                txtfields(24).Text = LookUp.Fields(1)
                
            Else
                txtfields(23).Text = ""
                txtfields(24).Text = ""
                Exit Sub
            End If
    End If

     If Index = 25 Then
     
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(25).Text = LookUp.Fields(0)
                txtfields(26).Text = LookUp.Fields(1)
                
            Else
                txtfields(25).Text = ""
                txtfields(26).Text = ""
                Exit Sub
            End If
    End If
    
    If Index = 27 Then
     
        LookUp.Clear = True
        LookUp.query = "select Glcode as Code,GlHead as Description from FA_GLMAS "
        LookUp.Caption = "GL Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(27).Text = LookUp.Fields(0)
                txtfields(28).Text = LookUp.Fields(1)
                
            Else
                txtfields(27).Text = ""
                txtfields(28).Text = ""
                Exit Sub
            End If
    End If
    
      If Index = 45 Then
     
        LookUp.Clear = True
        LookUp.query = "select distinct user_id,user_name from pp_passwd where module=6 and divcode='" & Divcode & "' and isnull(activeflg,'N')='Y' "
        LookUp.Caption = "User Listing"
        LookUp.DefCol = "user_name"
        LookUp.ALIGN = "1500,4000"
        LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(45).Text = LookUp.Fields(0)
                txtfields(44).Text = LookUp.Fields(1)
                txtfields(43).Text = txtfields(43).Text & "," & txtfields(45).Text
            Else
                txtfields(45).Text = ""
                txtfields(44).Text = ""
                Exit Sub
            End If
    End If
    
    
End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form RMIParam", vbInformation, head
End Sub

Private Sub txtSuppAssesDelivery_Change()
    txtSuppAssesQuality.Text = 100 - val(txtSuppAssesDelivery.Text)
End Sub

Private Sub txtSuppAssesDelivery_GotFocus()
On Error GoTo txtSuppAssesDelivery_GotFocus_Error

    StatusBar1.Panels(2).Text = "Enter Supplier Assesment Delivery %"

Exit Sub
txtSuppAssesDelivery_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSuppAssesDelivery_GotFocus of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtSuppAssesDelivery_KeyPress(KeyAscii As Integer)
On Error GoTo txtSuppAssesDelivery_KeyPress_Error
    If val(txtSuppAssesQuality.Text) > 10 Then txtSuppAssesDelivery.MaxLength = 2
        
    Call ToNumberAssign(txtSuppAssesDelivery, 4, KeyAscii, 2, 2)
    
Exit Sub
txtSuppAssesDelivery_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSuppAssesDelivery_KeyPress of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtSuppAssesQuality_Change()
On Error GoTo txtSuppAssesQuality_Change_Error

    txtSuppAssesDelivery.Text = 100 - val(txtSuppAssesQuality.Text)

Exit Sub
txtSuppAssesQuality_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSuppAssesQuality_Change of Form RMIParam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtSuppAssesQuality_GotFocus()
On Error GoTo txtSuppAssesQuality_GotFocus_Error

    StatusBar1.Panels(2).Text = "Enter Supplier Assesment Quality %"

Exit Sub
txtSuppAssesQuality_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSuppAssesQuality_GotFocus of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtSuppAssesQuality_KeyPress(KeyAscii As Integer)
On Error GoTo txtSuppAssesQuality_KeyPress_Error
    If val(txtSuppAssesDelivery.Text) > 10 Then txtSuppAssesQuality.MaxLength = 2
    Call ToNumberAssign(txtSuppAssesQuality, 4, KeyAscii, 2, 2)

Exit Sub
txtSuppAssesQuality_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSuppAssesQuality_KeyPress of Form RMIParam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SpdLoad()
intervalMinutes = -1
    RW = 1
    Set ADOSECONDARYRS = New Recordset
    ADOSECONDARYRS.Open "Select Maximum,Minimum,Range From RM_FibreRange ", DB, adOpenStatic, adLockBatchOptimistic
    Do While Not ADOSECONDARYRS.EOF
        
        SpdQuality.SetText E_SpdQparam.E_QMAX, RW, ADOSECONDARYRS("Maximum")
        SpdQuality.SetText E_SpdQparam.E_QMIN, RW, ADOSECONDARYRS("Minimum")
        SpdQuality.SetText E_SpdQparam.E_RANGE, RW, ADOSECONDARYRS("Range")
        RW = RW + 1
        ADOSECONDARYRS.MoveNext
    Loop
    SpdQuality.Enabled = False
    
End Sub

