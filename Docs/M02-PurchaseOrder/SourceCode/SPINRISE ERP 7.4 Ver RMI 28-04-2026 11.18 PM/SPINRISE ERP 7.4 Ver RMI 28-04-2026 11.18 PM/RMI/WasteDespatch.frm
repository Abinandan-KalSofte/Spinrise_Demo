VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "Waste Despatch"
   ClientHeight    =   6735
   ClientLeft      =   150
   ClientTop       =   4035
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6735
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   7515
      Left            =   240
      TabIndex        =   25
      Top             =   960
      Width           =   14430
      _ExtentX        =   25453
      _ExtentY        =   13256
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "        "
      TabPicture(0)   =   "WasteDespatch.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   4005
         Left            =   120
         TabIndex        =   38
         Top             =   3090
         Width           =   14130
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   3690
            Left            =   60
            TabIndex        =   20
            Top             =   225
            Width           =   13965
            _ExtentX        =   24633
            _ExtentY        =   6509
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            HeadLines       =   2
            RowHeight       =   15
            TabAction       =   2
            FormatLocked    =   -1  'True
            AllowAddNew     =   -1  'True
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
            ColumnCount     =   13
            BeginProperty Column00 
               DataField       =   "cont_type"
               Caption         =   "Cont Type "
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
               DataField       =   "cont_no"
               Caption         =   "Cont No"
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
            BeginProperty Column02 
               DataField       =   "product_code"
               Caption         =   "Code"
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
            BeginProperty Column03 
               DataField       =   "description"
               Caption         =   "Product Name"
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
            BeginProperty Column04 
               DataField       =   "pack_year"
               Caption         =   "Pack Year"
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
            BeginProperty Column05 
               DataField       =   "packno_code"
               Caption         =   "Pack No Code"
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
            BeginProperty Column06 
               DataField       =   "spack_no"
               Caption         =   "Start Pack No."
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
            BeginProperty Column07 
               DataField       =   "epack_no"
               Caption         =   "End Pack No."
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
            BeginProperty Column08 
               DataField       =   "pack_type"
               Caption         =   "Pack type"
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
            BeginProperty Column09 
               DataField       =   "Rate"
               Caption         =   "Rate"
               BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   0
               EndProperty
            EndProperty
            BeginProperty Column10 
               DataField       =   "lot_code"
               Caption         =   "Lot"
               BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   0
               EndProperty
            EndProperty
            BeginProperty Column11 
               DataField       =   "Godown"
               Caption         =   "Godown"
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
            BeginProperty Column12 
               DataField       =   "MixRate"
               Caption         =   "MixRate"
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
                  ColumnWidth     =   14.74
               EndProperty
               BeginProperty Column01 
                  ColumnWidth     =   14.74
               EndProperty
               BeginProperty Column02 
                  ColumnWidth     =   750.047
               EndProperty
               BeginProperty Column03 
                  WrapText        =   -1  'True
                  ColumnWidth     =   1094.74
               EndProperty
               BeginProperty Column04 
                  ColumnWidth     =   1184.882
               EndProperty
               BeginProperty Column05 
                  ColumnWidth     =   1124.787
               EndProperty
               BeginProperty Column06 
               EndProperty
               BeginProperty Column07 
               EndProperty
               BeginProperty Column08 
               EndProperty
               BeginProperty Column09 
               EndProperty
               BeginProperty Column10 
               EndProperty
               BeginProperty Column11 
                  ColumnWidth     =   0
               EndProperty
               BeginProperty Column12 
                  WrapText        =   -1  'True
                  ColumnWidth     =   0
               EndProperty
            EndProperty
         End
      End
      Begin VB.Frame Frame1 
         Height          =   2895
         Left            =   120
         TabIndex        =   26
         Top             =   120
         Width           =   14130
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "JobOrdNo"
            Height          =   285
            Index           =   11
            Left            =   2415
            TabIndex        =   17
            Top             =   1560
            Width           =   1305
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   315
            Left            =   6120
            TabIndex        =   131
            Top             =   1560
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   162660353
            CurrentDate     =   45680
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   375
            Left            =   8760
            TabIndex        =   130
            Top             =   2400
            Visible         =   0   'False
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   661
            _Version        =   393216
            Format          =   162660353
            CurrentDate     =   45680
         End
         Begin VB.TextBox Text16 
            Height          =   285
            Left            =   8760
            TabIndex        =   129
            Text            =   "Text16"
            Top             =   2040
            Visible         =   0   'False
            Width           =   1695
         End
         Begin VB.CheckBox Check1 
            Appearance      =   0  'Flat
            Caption         =   "Stock Selection"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Left            =   3720
            TabIndex        =   92
            Top             =   2520
            Width           =   1635
         End
         Begin VB.CheckBox Check2 
            Appearance      =   0  'Flat
            Caption         =   "Pre Despatch list"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Left            =   5880
            TabIndex        =   91
            Top             =   600
            Visible         =   0   'False
            Width           =   1755
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "WasteDespatch.frx":001C
            Left            =   2415
            List            =   "WasteDespatch.frx":001E
            TabIndex        =   13
            Top             =   540
            Width           =   2760
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H8000000A&
            Height          =   285
            Index           =   10
            Left            =   3720
            Locked          =   -1  'True
            TabIndex        =   80
            TabStop         =   0   'False
            Top             =   1890
            Width           =   3855
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "DelCode"
            Height          =   285
            Index           =   12
            Left            =   2415
            MaxLength       =   12
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1890
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H8000000A&
            Height          =   285
            Index           =   9
            Left            =   3720
            Locked          =   -1  'True
            TabIndex        =   77
            TabStop         =   0   'False
            Top             =   1215
            Width           =   3855
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "Agent_code"
            Height          =   285
            Index           =   8
            Left            =   2415
            TabIndex        =   16
            Top             =   1215
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "bo_type"
            Height          =   285
            Index           =   0
            Left            =   2415
            TabIndex        =   11
            Top             =   210
            Width           =   510
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "bo_no"
            Height          =   285
            Index           =   1
            Left            =   2940
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   210
            Width           =   2220
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "cust_code"
            Height          =   285
            Index           =   2
            Left            =   2415
            TabIndex        =   15
            Top             =   894
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H8000000A&
            Height          =   285
            Index           =   3
            Left            =   3720
            Locked          =   -1  'True
            TabIndex        =   30
            TabStop         =   0   'False
            Top             =   894
            Width           =   3855
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "vehicle_no"
            Height          =   285
            Index           =   4
            Left            =   2415
            MaxLength       =   15
            TabIndex        =   19
            Top             =   2205
            Width           =   2205
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            Height          =   285
            Index           =   5
            Left            =   6315
            TabIndex        =   29
            TabStop         =   0   'False
            Top             =   2205
            Width           =   1275
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   285
            Index           =   6
            Left            =   2415
            TabIndex        =   28
            TabStop         =   0   'False
            Top             =   2535
            Width           =   1125
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   285
            Index           =   7
            Left            =   6330
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   2535
            Width           =   1260
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "date"
            Height          =   300
            Left            =   6390
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   202
            Width           =   1110
            _ExtentX        =   1958
            _ExtentY        =   529
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label cntcust 
            AutoSize        =   -1  'True
            Caption         =   "Job Order Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   4
            Left            =   4800
            TabIndex        =   133
            Top             =   1560
            Width           =   1080
         End
         Begin VB.Label cntcust 
            AutoSize        =   -1  'True
            Caption         =   "Job Order No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   132
            Top             =   1560
            Width           =   990
         End
         Begin VB.Label cntcust 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Address"
            Height          =   195
            Index           =   3
            Left            =   225
            TabIndex        =   81
            Top             =   1965
            Width           =   1185
         End
         Begin VB.Label cntcust 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            ForeColor       =   &H00404040&
            Height          =   195
            Index           =   0
            Left            =   225
            TabIndex        =   78
            Top             =   1260
            Width           =   420
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Despatch Type"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   7
            Left            =   225
            TabIndex        =   74
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Despatch Advice No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   225
            TabIndex        =   37
            Top             =   255
            Width           =   1530
         End
         Begin VB.Label cntcust 
            AutoSize        =   -1  'True
            Caption         =   "Customer"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   225
            TabIndex        =   36
            Top             =   939
            Width           =   660
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   2
            Left            =   5970
            TabIndex        =   35
            Top             =   240
            Width           =   345
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Vehicle No."
            ForeColor       =   &H00404040&
            Height          =   195
            Index           =   3
            Left            =   225
            TabIndex        =   34
            Top             =   2250
            Width           =   825
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Packs"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   4
            Left            =   5445
            TabIndex        =   33
            Top             =   2250
            Width           =   450
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Net Kgs."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   5
            Left            =   225
            TabIndex        =   32
            Top             =   2580
            Width           =   615
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Gross Kgs."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   6
            Left            =   5445
            TabIndex        =   31
            Top             =   2580
            Width           =   765
         End
      End
   End
   Begin VB.Frame Frame7 
      BorderStyle     =   0  'None
      Height          =   1245
      Left            =   12105
      TabIndex        =   85
      Top             =   1530
      Width           =   1995
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Selected Total"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   30
         TabIndex        =   90
         Top             =   90
         Width           =   1380
      End
      Begin VB.Label lblKgs 
         AutoSize        =   -1  'True
         Caption         =   "#"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   660
         TabIndex        =   89
         Top             =   750
         Width           =   135
      End
      Begin VB.Label lblPacks 
         AutoSize        =   -1  'True
         Caption         =   "#"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   840
         TabIndex        =   88
         Top             =   420
         Width           =   135
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Kgs :"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   30
         TabIndex        =   87
         Top             =   720
         Width           =   480
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Packs :"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   60
         TabIndex        =   86
         Top             =   390
         Width           =   690
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   4500
      Left            =   15720
      Top             =   600
   End
   Begin VB.Frame Frame5 
      Height          =   6975
      Left            =   720
      TabIndex        =   44
      Top             =   1440
      Width           =   11070
      Begin VB.TextBox Text15 
         Appearance      =   0  'Flat
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
         Left            =   8280
         TabIndex        =   127
         ToolTipText     =   "Barcode Data"
         Top             =   1920
         Width           =   2670
      End
      Begin VB.CheckBox Chk_Timer 
         Appearance      =   0  'Flat
         Caption         =   "Start to Read"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   8280
         TabIndex        =   126
         Top             =   2400
         Width           =   1635
      End
      Begin VB.TextBox Text13 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   6540
         TabIndex        =   83
         TabStop         =   0   'False
         Top             =   6450
         Width           =   1155
      End
      Begin VB.TextBox Text12 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1260
         MaxLength       =   2
         TabIndex        =   54
         Top             =   2310
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.Frame Frame6 
         Height          =   495
         Left            =   3150
         TabIndex        =   45
         Top             =   1740
         Width           =   3495
         Begin VB.OptionButton Option1 
            Caption         =   "Packs Entry"
            Height          =   225
            Left            =   315
            TabIndex        =   47
            Top             =   210
            Value           =   -1  'True
            Width           =   1155
         End
         Begin VB.OptionButton Option2 
            Caption         =   "Stock Details"
            Height          =   225
            Left            =   1905
            TabIndex        =   46
            Top             =   225
            Width           =   1245
         End
      End
      Begin VB.TextBox Text2 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   3780
         TabIndex        =   59
         TabStop         =   0   'False
         Top             =   6420
         Width           =   1065
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         Height          =   375
         Left            =   7980
         TabIndex        =   58
         Top             =   6420
         Width           =   1065
      End
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1590
         MaxLength       =   2
         TabIndex        =   53
         Top             =   960
         Width           =   1005
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1590
         TabIndex        =   55
         Top             =   1350
         Width           =   1005
      End
      Begin VB.TextBox Text6 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2610
         Locked          =   -1  'True
         TabIndex        =   52
         TabStop         =   0   'False
         Top             =   1350
         Width           =   8325
      End
      Begin VB.TextBox Text7 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1590
         TabIndex        =   51
         Text            =   "WL"
         Top             =   1710
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.TextBox Text8 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2610
         Locked          =   -1  'True
         TabIndex        =   50
         TabStop         =   0   'False
         Top             =   1710
         Visible         =   0   'False
         Width           =   4125
      End
      Begin VB.TextBox Text9 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   3660
         MaxLength       =   6
         TabIndex        =   56
         Top             =   2295
         Width           =   975
      End
      Begin VB.TextBox Text10 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   6300
         MaxLength       =   6
         TabIndex        =   57
         Top             =   2295
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.TextBox Text11 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         IMEMode         =   3  'DISABLE
         Left            =   1590
         TabIndex        =   49
         TabStop         =   0   'False
         Top             =   570
         Width           =   9345
      End
      Begin VB.TextBox Text4 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   2610
         Locked          =   -1  'True
         TabIndex        =   48
         TabStop         =   0   'False
         Top             =   990
         Width           =   8325
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3570
         Left            =   60
         TabIndex        =   60
         Top             =   2760
         Width           =   10755
         _ExtentX        =   18971
         _ExtentY        =   6297
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
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
            ScrollBars      =   2
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label Label16 
         Caption         =   "Bar Code Data"
         DragMode        =   1  'Automatic
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   6840
         TabIndex        =   128
         Top             =   1920
         Width           =   1395
      End
      Begin VB.Label Label12 
         Caption         =   "Total Act. Kgs."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4980
         TabIndex        =   84
         Top             =   6450
         Width           =   1440
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         Caption         =   "PackYear"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   300
         TabIndex        =   79
         Top             =   2370
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Pack Selection"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   345
         Left            =   30
         TabIndex        =   68
         Top             =   120
         Width           =   11025
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Total Packs"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2400
         TabIndex        =   67
         Top             =   6450
         Width           =   1215
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Pack Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   66
         Top             =   1035
         Width           =   1245
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Pack Type"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   65
         Top             =   1425
         Width           =   975
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Lot"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   64
         Top             =   1800
         Visible         =   0   'False
         Width           =   315
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Pack No."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2400
         TabIndex        =   63
         Top             =   2370
         Width           =   810
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "To Pack No."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   5040
         TabIndex        =   62
         Top             =   2355
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "Product Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   180
         TabIndex        =   61
         Top             =   630
         Width           =   1350
      End
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   15480
      Top             =   1440
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   13440
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   21
      Top             =   -120
      Width           =   14610
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   13
         Left            =   5280
         Picture         =   "WasteDespatch.frx":0020
         Style           =   1  'Graphical
         TabIndex        =   82
         Top             =   80
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   9720
         Picture         =   "WasteDespatch.frx":0462
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Print (Ctrl P)-Invoice Print"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":08A4
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "WasteDespatch.frx":0BAE
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":0F41
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "WasteDespatch.frx":138B
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":16F0
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
         Picture         =   "WasteDespatch.frx":19FA
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":1D96
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "WasteDespatch.frx":21E0
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":2530
         Height          =   510
         Index           =   11
         Left            =   5760
         Picture         =   "WasteDespatch.frx":297A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":2D0F
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "WasteDespatch.frx":3019
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "WasteDespatch.frx":33BB
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "WasteDespatch.frx":36C5
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":3A41
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "WasteDespatch.frx":3E8B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":41ED
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "WasteDespatch.frx":4637
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":4984
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "WasteDespatch.frx":4C8E
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "WasteDespatch.frx":5023
         Enabled         =   0   'False
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "WasteDespatch.frx":532D
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
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
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   10650
         TabIndex        =   23
         Top             =   255
         Width           =   690
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
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   7950
         TabIndex        =   22
         Top             =   240
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   24
      Top             =   6435
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsoft."
            TextSave        =   "Kalsoft."
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05/09/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:25 PM"
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
   Begin TabDlg.SSTab SSTab2 
      Height          =   1800
      Left            =   2445
      TabIndex        =   39
      Top             =   2880
      Visible         =   0   'False
      Width           =   5355
      _ExtentX        =   9446
      _ExtentY        =   3175
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "WasteDespatch.frx":56A7
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame4 
         Height          =   1395
         Left            =   375
         TabIndex        =   40
         Top             =   165
         Width           =   4590
         Begin VB.TextBox Text1 
            Height          =   345
            Left            =   1155
            MaxLength       =   35
            TabIndex        =   42
            Top             =   330
            Width           =   3330
         End
         Begin VB.CommandButton Command1 
            Caption         =   "OK"
            Height          =   375
            Left            =   1995
            TabIndex        =   41
            Top             =   870
            Width           =   915
         End
         Begin VB.Label Label3 
            Caption         =   "Remarks"
            Height          =   450
            Left            =   165
            TabIndex        =   43
            Top             =   390
            Width           =   675
         End
      End
   End
   Begin VB.Frame Frame12 
      Height          =   7695
      Left            =   5880
      TabIndex        =   93
      Top             =   840
      Visible         =   0   'False
      Width           =   9375
      Begin VB.PictureBox FraFabstk 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   7425
         Left            =   240
         ScaleHeight     =   7395
         ScaleWidth      =   8940
         TabIndex        =   94
         Top             =   120
         Width           =   8970
         Begin VB.CommandButton CmdCrystal 
            Caption         =   "&Print"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3120
            TabIndex        =   104
            ToolTipText     =   "(Alt R)"
            Top             =   6960
            Visible         =   0   'False
            Width           =   825
         End
         Begin VB.CommandButton CmdExit 
            Caption         =   "E&xit"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1680
            TabIndex        =   103
            ToolTipText     =   "(Alt x)"
            Top             =   6960
            Width           =   1005
         End
         Begin VB.TextBox txt_search 
            Appearance      =   0  'Flat
            Height          =   330
            Left            =   960
            TabIndex        =   102
            Top             =   3000
            Width           =   4155
         End
         Begin VB.CheckBox Chkcust 
            Appearance      =   0  'Flat
            Caption         =   "ALL"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Left            =   8880
            TabIndex        =   101
            Top             =   1080
            Visible         =   0   'False
            Width           =   795
         End
         Begin VB.CheckBox Chkconst 
            Appearance      =   0  'Flat
            Caption         =   "ALL"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Left            =   5280
            TabIndex        =   100
            Top             =   3120
            Width           =   795
         End
         Begin VB.TextBox txt_mtrs 
            Height          =   360
            Left            =   7440
            TabIndex        =   99
            Top             =   6960
            Width           =   1185
         End
         Begin VB.CommandButton Command10 
            Caption         =   "Search"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   8640
            TabIndex        =   98
            Top             =   600
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.CheckBox ChKSORT 
            Appearance      =   0  'Flat
            Caption         =   "ALL"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Left            =   120
            TabIndex        =   97
            Top             =   480
            Width           =   795
         End
         Begin VB.CommandButton Command11 
            Caption         =   "OK"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   240
            TabIndex        =   96
            ToolTipText     =   "(Alt R)"
            Top             =   6960
            Width           =   945
         End
         Begin VB.TextBox Text14 
            Height          =   360
            Left            =   5160
            TabIndex        =   95
            Top             =   6960
            Width           =   1185
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   2490
            TabIndex        =   105
            Top             =   480
            Visible         =   0   'False
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   164102145
            CurrentDate     =   40327
         End
         Begin MSComctlLib.ListView Lv_SaleOrder 
            Height          =   495
            Left            =   9600
            TabIndex        =   106
            Top             =   840
            Visible         =   0   'False
            Width           =   195
            _ExtentX        =   344
            _ExtentY        =   873
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
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   3
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Description "
               Object.Width           =   12347
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Code"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Contract Date"
               Object.Width           =   2540
            EndProperty
         End
         Begin MSComctlLib.ListView Lv_Product 
            Height          =   2175
            Left            =   120
            TabIndex        =   107
            Top             =   720
            Width           =   8775
            _ExtentX        =   15478
            _ExtentY        =   3836
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
               Text            =   "Product Description"
               Object.Width           =   7938
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Product code"
               Object.Width           =   4410
            EndProperty
         End
         Begin MSComctlLib.ListView LV_Packtype 
            Height          =   2160
            Left            =   8640
            TabIndex        =   108
            Top             =   720
            Visible         =   0   'False
            Width           =   2235
            _ExtentX        =   3942
            _ExtentY        =   3810
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
               Text            =   "Grade"
               Object.Width           =   4427
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Description"
               Object.Width           =   2646
            EndProperty
         End
         Begin MSComctlLib.ListView LV_PackCode 
            Height          =   2160
            Left            =   6720
            TabIndex        =   109
            Top             =   720
            Visible         =   0   'False
            Width           =   1875
            _ExtentX        =   3307
            _ExtentY        =   3810
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
               Text            =   "Pack Code"
               Object.Width           =   4427
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Description"
               Object.Width           =   2646
            EndProperty
         End
         Begin MSComctlLib.ListView Lv_Stock 
            Height          =   3435
            Left            =   120
            TabIndex        =   110
            Top             =   3360
            Width           =   8760
            _ExtentX        =   15452
            _ExtentY        =   6059
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
            NumItems        =   11
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Pack No"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Product Code"
               Object.Width           =   3175
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "Description"
               Object.Width           =   5292
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   3
               Text            =   "Netwt"
               Object.Width           =   1834
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   4
               Text            =   "PackYear"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   5
               Text            =   "Pack Code"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   6
               Text            =   "PackCode Desc "
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   7
               Text            =   "Pack Type"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   8
               Text            =   "Pack Type Desc"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   9
               Text            =   "Divcode"
               Object.Width           =   2540
            EndProperty
            BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   10
               Text            =   "ID"
               Object.Width           =   1764
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo5 
            Height          =   315
            Left            =   9000
            TabIndex        =   111
            Top             =   5880
            Visible         =   0   'False
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo5"
         End
         Begin MSDataListLib.DataCombo DataCombo4 
            Height          =   315
            Left            =   8880
            TabIndex        =   112
            Top             =   5280
            Visible         =   0   'False
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo4"
         End
         Begin MSDataListLib.DataCombo DataCombo3 
            Height          =   315
            Left            =   8880
            TabIndex        =   113
            Top             =   4800
            Visible         =   0   'False
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo3"
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   315
            Left            =   9000
            TabIndex        =   114
            Top             =   4200
            Visible         =   0   'False
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo2"
         End
         Begin MSDataListLib.DataCombo DataCombo6 
            Height          =   315
            Left            =   9000
            TabIndex        =   115
            Top             =   3600
            Visible         =   0   'False
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo1"
         End
         Begin MSDataListLib.DataCombo DataCombo7 
            Height          =   315
            Left            =   8160
            TabIndex        =   116
            Top             =   4080
            Visible         =   0   'False
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo5"
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
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
            Index           =   3
            Left            =   120
            TabIndex        =   125
            Top             =   3000
            Width           =   615
         End
         Begin VB.Label Label26 
            Caption         =   "Stock List"
            DragMode        =   1  'Automatic
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   960
            TabIndex        =   124
            Top             =   3000
            Width           =   1770
         End
         Begin VB.Label Label25 
            Caption         =   "Product List"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1080
            TabIndex        =   123
            Top             =   480
            Width           =   1515
         End
         Begin VB.Label Label24 
            Caption         =   "Total Meters"
            DragMode        =   1  'Automatic
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   5040
            TabIndex        =   122
            Top             =   8040
            Width           =   1950
         End
         Begin VB.Label LblFabStkHd 
            Alignment       =   2  'Center
            BackColor       =   &H00C00000&
            Caption         =   "Packing List"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   450
            Left            =   0
            TabIndex        =   121
            Top             =   0
            Width           =   8940
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Customer Name"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   240
            TabIndex        =   120
            Top             =   1800
            Width           =   1470
         End
         Begin VB.Label Label29 
            Caption         =   "Total Bales"
            DragMode        =   1  'Automatic
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   7920
            TabIndex        =   119
            Top             =   8040
            Width           =   1455
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Total Pack"
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
            Index           =   1
            Left            =   4080
            TabIndex        =   118
            Top             =   6960
            Width           =   945
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Total Wt"
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
            Index           =   2
            Left            =   6600
            TabIndex        =   117
            Top             =   6960
            Width           =   750
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5190
      Left            =   300
      TabIndex        =   69
      Top             =   960
      Visible         =   0   'False
      Width           =   8940
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "WasteDespatch.frx":56C3
         Height          =   615
         Left            =   4635
         Picture         =   "WasteDespatch.frx":5AA5
         Style           =   1  'Graphical
         TabIndex        =   71
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "WasteDespatch.frx":5E78
         Height          =   615
         Left            =   2880
         Picture         =   "WasteDespatch.frx":625E
         Style           =   1  'Graphical
         TabIndex        =   70
         Top             =   4080
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3375
         Left            =   645
         TabIndex        =   75
         Top             =   540
         Width           =   7365
         _ExtentX        =   12991
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   72
         Top             =   120
         Width           =   8835
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Waste Despatch"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   345
      Index           =   0
      Left            =   390
      TabIndex        =   73
      Top             =   600
      Width           =   2040
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TV(4) As String
Dim sn As Integer
Dim RSTRATE As Recordset
Dim tmpvl As Integer
Dim FLG1 As String
Dim tmpst As String
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents ADOSECONDARYRS As Recordset
Attribute ADOSECONDARYRS.VB_VarHelpID = -1
Dim DB As Connection
Dim tmp11, tmp12 As Double
Dim Opt As String
Dim f1, f2 As Double
Dim st, st1, ST2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim REP As Report.ReportView
Dim FLG As String
Dim Rs, rx As Recordset
Dim RSS As Recordset
Dim Str As String
Dim pr As String
Dim dr As String
Dim g As String
Dim t7 As Double
Dim t6 As Double
Dim t0 As Integer
Dim t1 As String
Dim t2 As String
Dim t3 As String
Dim t4 As Integer
Dim t5 As Integer
Dim t8 As String
Dim date1 As String
Dim date2 As String
Dim date3 As String
Dim DT As String
Dim ScanningRowFlag As String
Dim errflg As String
Dim Last_docno As Double
Dim New1DocNo As Double
Dim SR As String
Dim chrs As Recordset
Dim ISSFLG As String
Dim pr1 As New Recordset
Dim rs1 As Recordset
Dim balancepacks As Integer
Dim wasteallot As Boolean
Dim loadbale As Integer
Dim allotrate As Double
Dim allotno As String
Dim allotdate As Date
Const pagelen As Integer = 64
Dim totlblpack As Double
Dim totlblkgs As Double
Dim wpno As Integer

Dim PrdPacks, DPacks As Integer
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
intervalMinutes = -1

On Error GoTo Err
If (Opt = "qry" Or Opt = " ") And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
   ' stbar.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
     stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
          
            MaskEdBox1.Text = adoPrimaryRS("date")
                 
            Set rsg = New Recordset
            rsg.Open "SELECT issue_code +'-' +  issue_desc FROM RM_ISSUETYPE WHERE ISSUE_CODE='" & adoPrimaryRS("issflg") & "'", DB, adOpenStatic
            Combo1.Clear
            If rsg.RecordCount > 0 Then
                Combo1.AddItem rsg(0)
                Combo1.Text = rsg(0)
            End If
                      
                 
    End If
    Exit Sub
Err:
End Sub


Private Sub adosecondaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'Dim tmp11, tmp12 As Double
On Error GoTo Err
If Opt = "qry" Or Opt = " " And Not ADOSECONDARYRS.EOF And Not ADOSECONDARYRS.BOF Then
    'stbar.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
    tmp11 = 0
    tmp12 = 0
    
        'txtfields(6).Text = adoSecondaryRS("nett_kgs")
        'txtfields(7).Text = adoSecondaryRS("gross_kgs")
    
    'Set Rs = adoSecondaryRS("childcmd").UnderlyingValue
    Set Rs = adoPrimaryRS("childcmd").UnderlyingValue
    Do While Not Rs.EOF
       tmp11 = Rs("epack_no") - Rs("spack_no") + 1
       tmp12 = tmp12 + tmp11
       Rs.MoveNext
    Loop
    'txtfields(5).Text = (adoSecondaryRS("epack_no") - adoSecondaryRS("spack_no")) + 1
    txtfields(5).Text = tmp12
    'grddatagrid.Columns(0).Text = adoSecondaryRS("cont_type") + adoSecondaryRS("cont_no")
    End If
    Exit Sub
Err:
End Sub
Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
'addition
        If ToValidFinYearW = False Then Exit Sub
        Call VaildAdd("add", "IG_RBOHD", "date")
        If Addallow = False Then Exit Sub
        Chk_Timer.value = 0
        Text15.Text = ""
        Opt = "add"
        desc.Caption = "Addition"
        ScanningRowFlag = "N"
        'DB.BeginTrans
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,CNTCD,ISSFLG,agent_code,Delcode,PackDocNo ,PackDocDT,JobOrddate,JobOrdNo from IG_RBOHD where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Call ENABLCONTLS
        Call bindcontls
        adoPrimaryRS.AddNew
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,a.ProdNetKgs,a.godown,a.MixRate from IG_RBODT a,IG_RPRODUCT b where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        ADOSECONDARYRS.AddNew
        stbar.Panels(2).Text = "Addition"
        Call adddelmod(BUTTON)
        MaskEdBox1.Text = pdate
        MaskEdBox1.Enabled = True
        txtfields(5).Locked = True
        txtfields(6).Locked = True
        txtfields(7).Locked = True
        txtfields(3).Locked = True
        txtfields(5).Text = ""
        txtfields(6).Text = ""
        txtfields(7).Text = ""
        Check1.value = 0
        Check2.value = 0
        wpno = 0
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(3).Locked = True
        txtfields(5).Visible = True
        Label2(4).Visible = True
        SSTab1.Visible = True
        SSTab1.Enabled = True
        DataGrid1.AllowUpdate = True
        DataGrid1.EditActive = True
        FLG1 = "Y"
        txtfields(0).Locked = True
        MaskEdBox1.SetFocus
        
        Combo1.Clear
        
        Set rsz = New Recordset
        rsz.Open "SELECT ISSUE_CODE + '-' + ISSUE_DESC FROM RM_ISSUETYPE WHERE ISSTYPE IN ('S','T','J') and ISSUE_CODE='JO'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            While Not rsz.EOF
                Combo1.AddItem rsz(0)
                rsz.MoveNext
            Wend
            rsz.MoveFirst
            Combo1.Text = rsz(0)
        End If
        
    Set RR = New Recordset
    RR.Open "Select loadbale,wasteallot from ig_rparam where divcode='" & Divcode & "'", DB
    If Not RR.EOF Then
        If IIf(IsNull(RR("Wasteallot")), "N", RR("Wasteallot")) = "Y" Then
            wasteallot = True
        Else
            wasteallot = False
        End If
        End If
        
        Call TXTFIELDS_Validate(0, True)
Case 4
'modification
       If Record_Exists("IG_RBOHD where divcode='" & Divcode & "'") = False Then Exit Sub
       If Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Select  Despatch No  from the List"
        LookUp.Clear = True
         LookUp.query = "select distinct A.bo_type as Type,A.bo_no as DespatchNo from IG_RBOHD A ,IG_rBODT BD where A.divcode='" & Divcode & "' and  " & _
             " BD.BO_TYPE=A.BO_TYPE AND BD.BO_NO=A.BO_NO AND A.DIVCODE=BD.DIVCODE  " & _
             " AND ISNULL(BD.CONT_TYPE,'')='' AND ISNULL(BD.CONT_NO,'')=''"

        'LookUp.query = "select distinct bo_type as Type,bo_no as DespatchNo from IG_RBOHD where divcode='" & divcode & "'"
        LookUp.DefCol = "DespatchNo"
        LookUp.Caption = "Despatch Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(0).Text = LookUp.Fields(0)
            txtfields(1).Text = LookUp.Fields(1)
            LookUp.Clear = True
            query_mode
            Call Find(BUTTON)
        Else
            Call BUTTON_Click(10)
            
        End If
        Exit Sub
        Screen.MousePointer = 0
        
 Case 1, 2
'modification
         If ToValidFinYearW = False Then Exit Sub
        If Record_Exists("IG_RBOHD where divcode='" & Divcode & "' and inv_type is null and inv_no is null") = False Then Exit Sub
        If Index = 1 Then
            Call VaildAdd("mod")
            If Addallow = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            grddatagrid.AllowAddNew = True
            grddatagrid.AllowUpdate = True
            DB.BeginTrans
        ElseIf Index = 2 Then
            Call VaildAdd("del")
            If Addallow = False Then Exit Sub
            Opt = "del"
            desc.Caption = "Deletion"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            DB.BeginTrans
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 0
''        SSTab1.Visible = False
        
        stbar.Panels(2).Text = "Select  Despatch No  from the List"
        
        LookUp.Clear = True
        LookUp.query = "select distinct A.bo_type as Type,A.bo_no as DespatchNo from IG_RBOHD A ,IG_rBODT BD where A.divcode='" & Divcode & "' and  " & _
             " A.inv_type is null and inv_no is NULL and a.Date='" & Format(pdate, "yyyy-mm-dd") & "' AND a.Date=(select max(Date) from IG_RBOHD where divcode='" & Divcode & "') AND BD.BO_TYPE=A.BO_TYPE AND BD.BO_NO=A.BO_NO AND A.DIVCODE=BD.DIVCODE  " & _
             " AND ISNULL(BD.CONT_TYPE,'')='' AND ISNULL(BD.CONT_NO,'')=''"

        'LookUp.query = "select distinct bo_type as Type,bo_no as DespatchNo from IG_RBOHD where divcode='" & divcode & "' and inv_type is null and inv_no is null"
        LookUp.DefCol = "DespatchNo"
        LookUp.Caption = "Despatch Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(0).Text = LookUp.Fields(0)
            txtfields(1).Text = LookUp.Fields(1)
            LookUp.Clear = True
            query_mode
        Else
            Call BUTTON_Click(10)
            
        End If
        Exit Sub
        Screen.MousePointer = 0
        
        Case 2
'Deletion
    

       If Record_Exists("IG_RBOHD where inv_type is null and inv_no is null and divcode='" & Divcode & "'") = False Then Exit Sub
       Opt = "del"
        desc.Caption = "Deletion"
        Screen.MousePointer = 11
        SSTab1.Visible = False
        DB.BeginTrans
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Customer Detail Listing"
        ksldesc1.conn = connectstring
        ksldesc1.Table = "IG_RBOHD a,IG_RBODT b  where a.bo_type=b.bo_type and a.bo_no=b.bo_no and a.divcode=b.divcode and inv_type is null and inv_no is null and a.divcode='" & Divcode & "' and product_code like 'W%' "
        ksldesc1.listfield1 = "a.bo_type"
        ksldesc1.listfield2 = "a.bo_no"
        ksldesc1.SetFocus
        stbar.Panels(2).Text = "Select  Delivery No  from the List"
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
        Screen.MousePointer = 0
 
 Case 4
'find
     If Record_Exists("IG_RBOHD where divcode='" & Divcode & "'") = False Then Exit Sub
       Opt = "fnd"
        desc.Caption = "Modification"
        Screen.MousePointer = 11
        SSTab1.Visible = False
        DB.BeginTrans
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Customer Detail Listing"
        ksldesc1.conn = connectstring
        ksldesc1.Table = "IG_RBOHD where divcode='" & Divcode & "'"
        ksldesc1.listfield1 = "bo_type"
        ksldesc1.listfield2 = "bo_no"
        ksldesc1.SetFocus
        stbar.Panels(2).Text = "Select  Delivery No  from the List"
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False
        'Call ENABLCONTLS
        Screen.MousePointer = 0
        
 Case 5
'first
         desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Set Rs = New Recordset
        Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
        txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
        txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
        stbar.Panels(2).Text = "First record"
        Call FIR(BUTTON)
        Exit Sub

GoFirstError:

            
Case 6
'next
          desc.Caption = "Query"

        On Error GoTo GoNextError

        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            If Not adoPrimaryRS.EOF Then
            Set Rs = New Recordset
            Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
            txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
            txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
           ' stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
            End If
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
            Set Rs = New Recordset
            Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
            txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
            txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
            stbar.Panels(2).Text = "Last record"
        End If
        Exit Sub
GoNextError:
Case 7

 '  previous
 
        desc.Caption = "Query"
        On Error GoTo GoPrevError

        If Not adoPrimaryRS.BOF Then

            adoPrimaryRS.MovePrevious
            If Not adoPrimaryRS.BOF Then
                Set Rs = New Recordset
                Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
                txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
                txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
                '  stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
            End If
            
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
            
            Set Rs = New Recordset
            Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
            txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
            txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
            
            stbar.Panels(2).Text = "First Record"
        End If

        Exit Sub

GoPrevError:

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         
         adoPrimaryRS.MoveLast
         Set Rs = New Recordset
         Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
         txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
         txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
         Call las(BUTTON)
         
         stbar.Panels(2).Text = "Last Record"
         
         Exit Sub
GoLastError:

 
  
  Case 9
  
  ' save
  
  If Opt = "add" Or Opt = "mod" Then
  
'''    If Opt = "add" Then
'''          Set Rs = New Recordset
'''          Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
'''
'''          Last_docno = Val(Rs(0)) + 1
'''          txtfields(1).Text = YearNo & Padl(CStr(Last_docno), 6, "0")
'''          txtfields(1).Locked = False
'''          New1DocNo = Rs(0) + 1
'''    End If
    tmp = Opt
    'Opt = ""
        ADOSECONDARYRS.MoveFirst
        While Not ADOSECONDARYRS.EOF
            If ADOSECONDARYRS("Product_code") = "" Then
                ADOSECONDARYRS.Delete
            End If
        ADOSECONDARYRS.MoveNext
        Wend
        
        If Opt = "add" Then
        ADOSECONDARYRS.MoveFirst
        While Not ADOSECONDARYRS.EOF
          
           Set RsCpk = New Recordset
            RsCpk.Open "Select Count(Pack_no) from ig_rpacknos where divcode='" & Divcode & "' and product_code='" & ADOSECONDARYRS("Product_code") & "' and pack_year='" & ADOSECONDARYRS("pack_year") & "' and packno_code='" & ADOSECONDARYRS("packno_code") & "' and pack_type='" & ADOSECONDARYRS("pack_type") & "'and lot_code='" & ADOSECONDARYRS("lot_code") & "' and pack_no between '" & ADOSECONDARYRS("Spack_no") & "' and '" & ADOSECONDARYRS("epack_no") & "' and isnull(invoiced,'N')='N' and isnull(BO_NO,'')='' ", DB
            If Not RsCpk.EOF Then
                PrdPacks = 0: DPacks = 0
                
                PrdPacks = RsCpk(0)
                DPacks = (ADOSECONDARYRS("Epack_no") - ADOSECONDARYRS("spack_no") + 1)
                
                If val(DPacks) <> val(PrdPacks) Then
                    MsgBox "Production Packs does not match", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
           
          End If
           ADOSECONDARYRS.MoveNext
        Wend
        
        End If
         
        ADOSECONDARYRS.MoveFirst
        'Easwar If adoSecondaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" And grdDataGrid.Columns(2).Text = "" And grdDataGrid.Columns(3).Text = "" And grdDataGrid.Columns(4).Text = "" And grdDataGrid.Columns(5).Text = "" And grdDataGrid.Columns(6).Text = "" And grdDataGrid.Columns(7).Text = "" Then
     ADOSECONDARYRS.MoveFirst
     
        While Not ADOSECONDARYRS.EOF
      If grddatagrid.Columns(2).Text <> "" Then
        If ADOSECONDARYRS.RecordCount = 1 And grddatagrid.Columns(2).Text = "" And grddatagrid.Columns(3).Text = "" And grddatagrid.Columns(4).Text = "" And grddatagrid.Columns(5).Text = "" And grddatagrid.Columns(6).Text = "" And grddatagrid.Columns(7).Text = "" Then
            MsgBox "Empty Records Cannot be Saved", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If

        If txtfields(0).Text = "" Then
            MsgBox "Delivery number cannot be empty", vbInformation, head
            txtfields(0).SetFocus
            Exit Sub
        End If
        
        If txtfields(2).Text = "" Then
            MsgBox "Please Enter Customer Code", vbInformation, head
            txtfields(2).SetFocus
            Exit Sub
        End If
        
        If grddatagrid.Columns(2).Text = "" Then
            MsgBox "Please Enter Product", vbInformation, head
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
            
        If grddatagrid.Columns(5).Text = "" Then
            MsgBox "Please Enter Pack Number", vbInformation, head
            grddatagrid.Col = 5
            grddatagrid.SetFocus
            Exit Sub
        End If
        
        If grddatagrid.Columns(6).Text = "" Then
            MsgBox "Please Enter Start Pack Number", vbInformation, head
            grddatagrid.Col = 6
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Columns(7).Text = "" Then
            MsgBox "Please Enter End Pack Number", vbInformation, head
            grddatagrid.Col = 7
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Columns(8).Text = "" Then
            MsgBox "Please Enter Pack Type", vbInformation, head
            grddatagrid.Col = 8
            grddatagrid.SetFocus
            Exit Sub
        End If
        
        If val(grddatagrid.Columns(6).Text) > val(grddatagrid.Columns(7).Text) Then
            MsgBox "Start Pack Number must be less than End Pack number", vbInformation, head
            grddatagrid.Col = 6
            grddatagrid.SetFocus
            Exit Sub
        End If
        End If
      ADOSECONDARYRS.MoveNext
    Wend
        
        If tmp = "add" Then
            '''====================== Total wt
            dblnett_kgs = 0
            dblProdNetKgs = 0
            F4 = 0
            f3 = 0
            
            ADOSECONDARYRS.MoveFirst
            Do While Not ADOSECONDARYRS.EOF
    
                p = (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
                s = 0
        
l5:             If p <> s Then

                     Set Jk = New Recordset
                     Jk.Open "Select sum(pack_wt)-sum(tare),sum(pack_wt) from ig_rpacknos where pack_type = '" & ADOSECONDARYRS("pack_type") & "' and product_code = '" & ADOSECONDARYRS.Fields("product_code") & "' and pack_no = '" & (ADOSECONDARYRS.Fields("SPACK_NO") + s) & "' and divcode='" & Divcode & "' and pack_year=" & val(ADOSECONDARYRS("pack_year") & "") & " and isnull(invoiced,'N')='N'", DB
                     If Jk.EOF = False Then
                         f3 = f3 + val(Jk(1) & "")
                         F4 = F4 + val(Jk(0) & "")
                     End If
                
                     s = s + 1
                     GoTo l5
                
                End If
                
                dblnett_kgs = val(dblnett_kgs & "") + val(ADOSECONDARYRS("ProdNetKgs") & "")
                dblProdNetKgs = val(F4 & "")
                Set Rsch = New Recordset
                Rsch.Open " select a.Quantity -isnull(c.ISSKGS,0) BalQty from RM_JobOrderdt a inner join RM_JobOrderhd aa on aa.docno=a.docno and aa.docdate=a.docdate and aa.divcode=a.divcode" & _
                      " " & _
                      " left join (select  a.CUST_CODE,a.DIVCODE ,a.JobOrddate,a.JobOrdNo,sum(b.NETT_KGS) ISSKGS from IG_RBOhd a inner join IG_RBOdt b on a.BO_NO =b.bo_no and a.BO_TYPE=b.BO_TYPE and a.DIVCODE =b.DIVCODE  " & _
                      " where a.BO_NO<>'" & Trim(txtfields(1).Text) & "' group by  a.CUST_CODE,a.DIVCODE ,a.JobOrddate,a.JobOrdNo ) c on c.DIVCODE =a.DivCode and c.JobOrdNo =cast(a.DocNo as varchar) and a.DocDate =c.JobOrddate and aa.slcode=c.CUST_CODE" & _
                      " where cast(a.docno as varchar)='" & Trim(txtfields(11).Text) & "' and a.product_code='" & ADOSECONDARYRS.Fields("product_code") & "' and a.Product_Type='W' and a.divcode='" & Divcode & "' and aa.docdate='" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and aa.slcode='" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
                If Not Rsch.EOF Then
                    If dblnett_kgs > Rsch(0) Then
                         Opt = opt1
                        MsgBox "Despatch Quantity cannot be greater than Job Order Quantity. Please check the Balance Quantity. : " & CStr(Rsch(0)), vbInformation, head
                        Exit Sub
                    End If
                    If Rsch(0) < 0 Then
                         Opt = opt1
                        MsgBox "Despatch Quantity cannot be greater than Job Order Quantity. Please check the Balance Quantity. : " & CStr(Rsch(0)), vbInformation, head
                        Exit Sub
                    End If
                Else
                     Opt = opt1
                    MsgBox "Selected Job Order does not match the Vendor. Please check the job order number.", vbInformation, head
                    Exit Sub
                End If
                

                ADOSECONDARYRS.MoveNext
            Loop
            
    
            
                F4 = 0
                f3 = 0
                '''================ check para
                dblDepWtdiffgainKGS = 0
                dblDepWtdiffLossKGS = 0
                
                Set rs1 = New ADODB.Recordset
                rs1.Open "SELECT DepWtdiffgainPer,DepWtdiffLossPer,isnull(DepWtdiffLock,'N')DepWtdiffLock FROM IG_RPARAM WHERE Divcode='" & Divcode & "'", DB, adOpenForwardOnly, adLockReadOnly
                If Not rs1.EOF Then
                    dblDepWtdiffgainPer = val(rs1("DepWtdiffgainPer") & "")
                    dblDepWtdiffLossPer = val(rs1("DepWtdiffLossPer") & "")
                    dblDepWtdiffgainKGS = val(dblProdNetKgs & "") + (val(dblProdNetKgs & "") * val(dblDepWtdiffgainPer & "") / 100)
                    dblDepWtdiffLossKGS = val(dblProdNetKgs & "") - (val(dblProdNetKgs & "") * val(dblDepWtdiffLossPer & "") / 100)
                    sDepWtdiffLock = Trim(rs1("DepWtdiffLock") & "")
                Else
                    dblDepWtdiffgainPer = 0
                    dblDepWtdiffLossPer = 0
                    sDepWtdiffLock = "N"
                End If
                
                If val(dblnett_kgs & "") = val(dblProdNetKgs & "") Then
                    '====ok
                ElseIf val(dblnett_kgs & "") > val(dblDepWtdiffgainKGS & "") Or val(dblnett_kgs & "") < val(dblDepWtdiffLossKGS & "") Then
                        If Trim(sDepWtdiffLock & "") = "Y" Then
                            MsgBox "Stock Kgs & Despatch Kgs+Tolerance not tally." & vbCrLf & "Stock kgs : " & Format(val(dblProdNetKgs & ""), "#0.000") & vbCrLf & "Despatch Kgs : " & Format(val(dblnett_kgs & ""), "#0.000") & vbCrLf & "Diffrent Kgs : " & Format(val(dblProdNetKgs & "") - val(dblnett_kgs & ""), "#0.000") & vbCrLf & "Based on selected pack no(s).", vbCritical, head
                            Opt = tmp
                            Exit Sub
                        Else
                            If MsgBox("Stock Kgs & Despatch Kgs+Tolerance not tally." & vbCrLf & "Stock kgs : " & Format(val(dblProdNetKgs & ""), "#0.000") & vbCrLf & "Despatch Kgs : " & Format(val(dblnett_kgs & ""), "#0.000") & vbCrLf & "Diffrent Kgs : " & Format(val(dblProdNetKgs & "") - val(dblnett_kgs & ""), "#0.000") & vbCrLf & "Based on selected pack no(s).", vbInformation + vbYesNo, head) <> vbYes Then
                                Opt = tmp
                                Exit Sub
                            End If
                        End If
                Else
                
                End If
                
                
        End If
        '''=========================== diffrent wt check End ====================

 
    Opt = tmp
    If Opt = "mod" Then
        ADOSECONDARYRS.MoveFirst
         Do While Not ADOSECONDARYRS.EOF
         If grddatagrid.Columns(2).Text = "" Then
            ADOSECONDARYRS.Delete adAffectCurrent
            GoTo last
        End If
        ADOSECONDARYRS.MoveNext
        Loop
last:   Set Rs = New Recordset
        Rs.Open "select * from ig_rbodt where  divcode='" & Divcode & "' and  bo_type='" & txtfields(0).Text & "' and bo_no='" & txtfields(1).Text & "'", DB
        Do While Not Rs.EOF
             On Error Resume Next
             DB.Execute "UPDATE IG_RPACKNOS SET invoiced='N' WHERE divcode='" & Divcode & "' and packno_code= '" & Rs("packno_code") & "' and pack_no between " & Rs("spack_no") & " and " & Rs("epack_no") & " and pack_type= '" & Rs("pack_type") & "' AND PRODUCT_CODE='" & Rs("product_code") & "'  AND PACK_YEAR='" & Rs("pack_year") & "'"
             
            If wasteallot = True Then
                  DB.Execute " Update ig_rallocationdt set balancebales=balancebales+" & val(Rs("epack_no").value - Rs("spack_no").value + 1) & "where doc_no=" & Rs("Allotno") & "  and date='" & Format(Rs("allotdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and " & _
                             " waste=(select wastegroup_type from ig_wastegroupd  where divcode='" & Divcode & "' and waste_code='" & Rs("product_code") & "')"
            End If
            DB.Execute " Update a set  a.DelQty=isnull(a.DelQty,0)-" & val(ADOSECONDARYRS("ProdNetKgs") & "") & " from RM_JobOrderdt a inner join RM_JobOrderhd aa on aa.docno=a.docno and aa.docdate=a.docdate and aa.divcode=a.divcode where cast(a.docno as varchar)='" & Trim(txtfields(11).Text) & "' and a.product_code='" & Rs("product_code") & "'  and a.divcode='" & Divcode & "' and a.Product_Type='W' "
   
            Rs.MoveNext
        Loop
       
        DB.Execute ("delete from IG_RBODT where divcode='" & Divcode & "' and  bo_type='" & txtfields(0).Text & "' and bo_no='" & txtfields(1).Text & "'")
        DB.Execute ("delete from IG_RBOHD where divcode='" & Divcode & "' and bo_type='" & txtfields(0).Text & "'and bo_no='" & txtfields(1).Text & "' ")
       DB.CommitTrans
       DB.BeginTrans
    End If

If Opt = "add" Or Opt = "mod" Then
On Error GoTo AddErr
    If Opt = "add" Then
    DB.BeginTrans
          Set Rs = New Recordset
          Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                        
          Last_docno = val(Rs(0)) + 1
          txtfields(1).Text = YearNo & Padl(CStr(Last_docno), 6, "0")
          txtfields(1).Locked = False
          New1DocNo = Rs(0) + 1
    End If
   ' tmp = Opt
    
If Opt = "add" Then
    adoPrimaryRS("divcode").value = Divcode
    adoPrimaryRS("User_id").value = usrid
    If ISSFLG = "P" Then
            adoPrimaryRS("CNTCD") = txtfields(2).Text
            adoPrimaryRS("CUST_CODE") = ""
    Else
            adoPrimaryRS("CUST_CODE") = txtfields(2).Text
            adoPrimaryRS("CNTCD") = Null
    End If
    
    adoPrimaryRS("ISSFLG") = Left(Trim(Combo1.Text), 2)
    adoPrimaryRS("entdate").value = Format(Date, "yyyy-mm-dd")
    adoPrimaryRS("date").value = MaskEdBox1.Text
    adoPrimaryRS("agent_code") = Trim(txtfields(8).Text)
    adoPrimaryRS("Delcode") = Trim(txtfields(12).Text)
    
    adoPrimaryRS("JobOrddate").value = Format(DTPicker3.value, "yyyy-mm-dd")
    adoPrimaryRS("JobOrdNo") = Trim(txtfields(11).Text)
    If val(Text16.Text) > 0 Then
        adoPrimaryRS("PackDocNo") = val(Text16.Text)
        adoPrimaryRS("PackDocDT") = DTPicker2.value
    End If
    
    adoPrimaryRS.UpdateBatch adAffectAll
ElseIf Opt = "mod" Then
    Set Rs = New Recordset
    Rs.Open "select divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,CNTCD,ISSFLG,agent_code,PackDocNo ,PackDocDT,JobOrddate,JobOrdNo from IG_RBOHD where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Rs.AddNew
    Rs("bo_type") = txtfields(0).Text
    Rs("bo_no") = txtfields(1).Text
    Rs("cust_code") = txtfields(2).Text
    Rs("vehicle_no") = txtfields(4).Text
    Rs("Agent_code") = txtfields(8).Text
    Rs("divcode").value = Divcode
    Rs("User_id").value = usrid
    If ISSFLG = "P" Then
            Rs("CNTCD") = txtfields(2).Text
            Rs("CUST_CODE") = ""
    Else
            Rs("CUST_CODE") = txtfields(2).Text
            Rs("CNTCD") = Null
    End If
    Rs("ISSFLG") = Left(Trim(Combo1.Text), 2)
    Rs("entdate").value = Format(Date, "yyyy-mm-dd")
    Rs("date").value = MaskEdBox1.Text
    Rs("agent_code") = Trim(txtfields(8).Text)
    
    Rs("JobOrddate").value = Format(DTPicker3.value, "yyyy-mm-dd")
    Rs("JobOrdNo") = Trim(txtfields(11).Text)
    
    If val(Text16.Text) > 0 Then
        Rs("PackDocNo") = val(Text16.Text)
        Rs("PackDocDT") = DTPicker2.value
    End If
    
    Rs.UpdateBatch adAffectAll
    
End If
    
    Set Rs = New Recordset
    Rs.Open "select divcode,bo_type,bo_no,sl_no,cont_type,cont_no,product_code,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,nett_kgs,gross_kgs,rate,allotno,allotdate,ProdNetKgs,Godown,MixRate from IG_RBODT where 1=2", DB, adOpenDynamic, adLockBatchOptimistic
    tmp = Opt
    Opt = " "
    
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
    
        If grddatagrid.Columns(2).Text = "" Then
            ADOSECONDARYRS.Delete adAffectCurrent
            GoTo X
            Exit Sub
        End If
        
        Rs.AddNew
        Rs("divcode") = Divcode
        Rs("BO_TYPE") = txtfields(0).Text
        Rs("BO_nO") = txtfields(1).Text
        Rs("CONT_no") = IIf(IsNull(ADOSECONDARYRS("cont_no")), " ", ADOSECONDARYRS("cont_no"))
        Rs("CONT_TYPE") = IIf(IsNull(ADOSECONDARYRS("cont_type")), " ", ADOSECONDARYRS("cont_type"))
        Rs("product_code") = ADOSECONDARYRS("product_code")
        
        Rs("Rate") = IIf(IsNull(ADOSECONDARYRS("rate")), "0", ADOSECONDARYRS("rate")) 'Val(ADOSECONDARYRS("rate"))
        Rs("allotno") = ADOSECONDARYRS("allotno")
        If Len(ADOSECONDARYRS("allotdate")) <> 0 Then
            Rs("allotdate") = Format(ADOSECONDARYRS("allotdate"), "yyyy-mm-dd")
        Else
            Rs("allotdate") = Null
        End If
        
        
        If wasteallot = True Then
            DB.Execute " Update ig_rallocationdt set balancebales=balancebales-" & val(ADOSECONDARYRS("epack_no").value - ADOSECONDARYRS("spack_no").value + 1) & "where doc_no=" & ADOSECONDARYRS("Allotno") & "  and date='" & Format(ADOSECONDARYRS("allotdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and " & _
                       " waste=(select wastegroup_type from ig_wastegroupd  where divcode='" & Divcode & "' and waste_code='" & ADOSECONDARYRS("product_code") & "')"
        End If
        

        Set rx = New Recordset
        rx.Open "select sum(isnull(pack_wt,0))-sum(isnull(TARE,0)),sum(isnull(pack_wt,0)) from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' and PRODUCT_CODE ='" & grddatagrid.Columns(2).Text & "' and  isnull(invoiced,'N')='N'", DB, adOpenStatic
        Rs("pack_year") = ADOSECONDARYRS("pack_YEAR").value
        Rs("packno_code") = ADOSECONDARYRS("packno_code").value
        Rs("spack_no") = ADOSECONDARYRS("spack_no").value
        Rs("epack_no") = ADOSECONDARYRS("epack_no").value
        Rs("pack_type") = ADOSECONDARYRS("pack_type").value
        Rs("lot_code") = "WL"
        Rs("Godown") = ADOSECONDARYRS("Godown").value
        Rs("MixRate") = ADOSECONDARYRS("MixRate").value
     
        
        Rs("sl_no") = ADOSECONDARYRS.AbsolutePosition
        
        p = (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
        s = 0
        
l1:    If p <> s Then

            Set Jk = New Recordset
            Jk.Open "Select sum(pack_wt)-sum(tare),sum(pack_wt) from ig_rpacknos where pack_type = '" & ADOSECONDARYRS("pack_type") & "' and product_code = '" & ADOSECONDARYRS.Fields("product_code") & "' and pack_no = '" & (ADOSECONDARYRS.Fields("SPACK_NO") + s) & "' and divcode='" & Divcode & "' and pack_year=" & ADOSECONDARYRS("pack_year") & " and isnull(invoiced,'N')='N' ", DB
            If Jk.EOF = False Then
                f3 = f3 + Jk(1)
                F4 = F4 + Jk(0)
            End If
       
            s = s + 1
            GoTo l1
       
       End If
       
         Rs("gross_kgs") = f3
         If tmp = "add" Then
            Rs("nett_kgs") = val(ADOSECONDARYRS("ProdNetKgs") & "")
         Else
            Rs("nett_kgs") = val(ADOSECONDARYRS("nett_kgs") & "")
         End If
         
          DB.Execute " Update a set  a.DelQty=isnull(a.DelQty,0)+" & val(ADOSECONDARYRS("ProdNetKgs") & "") & " from RM_JobOrderdt a inner join RM_JobOrderhd aa on aa.docno=a.docno and aa.docdate=a.docdate and aa.divcode=a.divcode where cast(a.docno as varchar)='" & Trim(txtfields(11).Text) & "' and a.product_code='" & ADOSECONDARYRS.Fields("product_code") & "'  and a.divcode='" & Divcode & "' and a.Product_Type='W' "
   
         Rs("ProdNetKgs") = F4
         
         f3 = 0
         F4 = 0
        trate = 0
        cust_code = ""
        
        Rs.UpdateBatch adAffectAll
        
        If ISSFLG = "P" Then
            DB.Execute "UPDATE IG_RPACKNOS set invoiced='Y',BO_NO='" & Trim(txtfields(1).Text) & "',BO_TYPE='" & Trim(txtfields(0).Text) & "',BO_DATE='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "' WHERE divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' AND PRODUCT_CODE='" & grddatagrid.Columns(2).Text & "'  AND PACK_YEAR='" & ADOSECONDARYRS("pACK_YEAR") & "' and isnull(invoiced,'N')='N' "
        ElseIf ISSFLG = "S" Then
            DB.Execute "UPDATE IG_RPACKNOS set invoiced='Y',BO_NO='" & Trim(txtfields(1).Text) & "',BO_TYPE='" & Trim(txtfields(0).Text) & "',BO_DATE='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "' WHERE divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' AND PRODUCT_CODE='" & grddatagrid.Columns(2).Text & "' and pack_year=" & ADOSECONDARYRS("pack_year") & " and  isnull(invoiced,'N')='N'"
        Else
            DB.Execute "UPDATE IG_RPACKNOS set invoiced='Y',BO_NO='" & Trim(txtfields(1).Text) & "',BO_TYPE='" & Trim(txtfields(0).Text) & "',BO_DATE='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "' WHERE divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' AND PRODUCT_CODE='" & grddatagrid.Columns(2).Text & "'  AND PACK_YEAR='" & ADOSECONDARYRS("pACK_YEAR") & "' and  isnull(invoiced,'N')='N' "
        End If
        
        ADOSECONDARYRS.MoveNext
    Loop

X:
Opt = tmp
     If Opt = "add" Then
        DB.Execute "update ig_doccontrol set last_no ='" & New1DocNo & "' where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", a
     End If
    DB.CommitTrans
    Screen.MousePointer = 0
    If Opt = "add" Then
               'Code added on 30-09-2019'
               Set rsLog = New Recordset
                rsLog.Open "select * from  IG_RBODT WHERE BO_NO ='" & txtfields(1).Text & "' and BO_TYPE ='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                rslog.MoveFirst
                
                If Not rsLog.EOF Then
                    Set RsTransLog = New Recordset
                    RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    RsTransLog.AddNew
                    RsTransLog("Divcode") = Divcode
                    RsTransLog("moduleNo") = ModuleNo
                    RsTransLog("Trans_Module") = "Waste Sales"
                    RsTransLog("Trans_Name") = "WITH OUT DESPATCH"
                    RsTransLog("Trans_Mod") = "ADD"
                    RsTransLog("Trans_Host") = LocalHost
                    RsTransLog("Trans_IPADD") = LocalIPAdd
                    RsTransLog("Trans_UserId") = usrid
                    RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                    RsTransLog("SDI_Type") = txtfields(0).Text
                    RsTransLog("DocNo") = txtfields(1).Text
                    RsTransLog("DocDt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                    RsTransLog("CustCode") = txtfields(2).Text
                    RsTransLog("AgentCode") = txtfields(8).Text
'                    RsTransLog("BrokerCode") = 0
                    RsTransLog("ProductCode") = rsLog("PRODUCT_CODE")
                    RsTransLog("PKgs") = rsLog("NETT_KGS")
'                    RsTransLog("Mix") =0
                    RsTransLog("Lot") = rsLog("lot_code")
'                    RsTransLog("Godown") = 0
                    RsTransLog("PackType") = rsLog("pack_type")
                    RsTransLog("Packno_Code") = rsLog("Packno_Code")
                    RsTransLog("PackYear") = rsLog("Pack_Year")
'                    RsTransLog("Packs") = 0
                    RsTransLog("SPack") = rsLog("SPack_no")
                    RsTransLog("EPack") = rsLog("Epack_no")
'                    RsTransLog("PackWt") = 0
'                    RsTransLog("TaxCode") = 0
'                    RsTransLog("Rate") = 0
'                    RsTransLog("Qty") = 0
'                    RsTransLog("VALUE") = 0
'                    RsTransLog("TaxAmt") = 0
'                    RsTransLog("TotValue") = 0
'                    RsTransLog("CGSTAmt") = 0
'                    RsTransLog("SGSTAmt") = 0
'                    RsTransLog("IGSTAmt") = 0
                    
                    RsTransLog.UpdateBatch adAffectAll
            rsLog.MoveNext
         End If
         
         If Check2.value = 1 Then
            DB.Execute "update IG_RPackingAdvise set Desp_Flg='Y' where divcode='" & Divcode & "' and bo_type='" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(Text16.Text) & "' and Bo_Date='" & Format(DTPicker2.value, "yyyy-MM-dd") & "' and cust_code='" & Trim(txtfields(2).Text) & "'"
         End If
         
        MsgBox " Record Saved Successfully", vbInformation, head
        stbar.Panels(2).Text = "Record Saved Successfully"
    Else
 'Code added on 30-09-2019'
               Set rsLog = New Recordset
                rsLog.Open "select * from  IG_RBODT WHERE BO_NO ='" & txtfields(1).Text & "' and BO_TYPE ='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                
                Do While Not rsLog.EOF
                    Set RsTransLog = New Recordset
                    RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    RsTransLog.AddNew
                    RsTransLog("Divcode") = Divcode
                    RsTransLog("moduleNo") = ModuleNo
                    RsTransLog("Trans_Module") = "Waste Sales"
                    RsTransLog("Trans_Name") = "WITHOUT DESPATCH"
                    RsTransLog("Trans_Mod") = "MOD"
                    RsTransLog("Trans_Host") = LocalHost
                    RsTransLog("Trans_IPADD") = LocalIPAdd
                    RsTransLog("Trans_UserId") = usrid
                    RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                    RsTransLog("SDI_Type") = txtfields(0).Text
                    RsTransLog("DocNo") = txtfields(1).Text
                    RsTransLog("DocDt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                    RsTransLog("CustCode") = txtfields(2).Text
                    RsTransLog("AgentCode") = txtfields(8).Text
'                    RsTransLog("BrokerCode") = 0
                    RsTransLog("ProductCode") = rsLog("PRODUCT_CODE")
                    RsTransLog("PKgs") = rsLog("NETT_KGS")
'                    RsTransLog("Mix") =0
                    RsTransLog("Lot") = rsLog("lot_code")
'                    RsTransLog("Godown") = 0
                    RsTransLog("PackType") = rsLog("pack_type")
                    RsTransLog("Packno_Code") = rsLog("Packno_Code")
                    RsTransLog("PackYear") = rsLog("Pack_Year")
'                    RsTransLog("Packs") = 0
                    RsTransLog("SPack") = rsLog("SPack_no")
                    RsTransLog("EPack") = rsLog("Epack_no")
'                    RsTransLog("PackWt") = 0
'                    RsTransLog("TaxCode") = 0
'                    RsTransLog("Rate") = 0
'                    RsTransLog("Qty") = 0
'                    RsTransLog("VALUE") = 0
'                    RsTransLog("TaxAmt") = 0
'                    RsTransLog("TotValue") = 0
'                    RsTransLog("CGSTAmt") = 0
'                    RsTransLog("SGSTAmt") = 0
'                    RsTransLog("IGSTAmt") = 0
                    
                    RsTransLog.UpdateBatch adAffectAll
            rsLog.MoveNext
          Loop
          
        MsgBox " Record Modified Successfully", vbInformation, head
        stbar.Panels(2).Text = "Record Modified Successfully"
    End If
    Opt = " "
    f1 = 0: f2 = 0
    Call query_mode
    adoPrimaryRS.MoveLast
End If
    
End If
If Opt = "del" Then
        a% = MsgBox("Do you want to delete?", vbYesNo, head)
             On Error GoTo delerr
             If a = 6 Then
                ADOSECONDARYRS.MoveFirst
                Do While Not ADOSECONDARYRS.EOF
                    DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',BO_NO=null,BO_TYPE='',BO_DATE=null WHERE divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' AND PRODUCT_CODE='" & grddatagrid.Columns(2).Text & "'  AND PACK_YEAR='" & ADOSECONDARYRS("PACK_YEAR") & "'", a
                     DB.Execute " Update a set  a.DelQty=isnull(a.DelQty,0)-" & val(ADOSECONDARYRS("ProdNetKgs") & "") & " from RM_JobOrderdt a inner join RM_JobOrderhd aa on aa.docno=a.docno and aa.docdate=a.docdate and aa.divcode=a.divcode where cast(a.docno as varchar)='" & Trim(txtfields(11).Text) & "' and a.product_code='" & grddatagrid.Columns(2).Text & "'  and a.divcode='" & Divcode & "' and a.Product_Type='W' "
   
                    If wasteallot = True Then
                         DB.Execute " Update ig_rallocationdt set balancebales=balancebales+" & val(ADOSECONDARYRS("epack_no").value - ADOSECONDARYRS("spack_no").value + 1) & "where doc_no=" & ADOSECONDARYRS("Allotno") & "  and date='" & Format(ADOSECONDARYRS("allotdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and " & _
                                   " waste=(select wastegroup_type from ig_wastegroupd  where divcode='" & Divcode & "' and waste_code='" & ADOSECONDARYRS("product_code") & "')"
                    End If
                    
                ADOSECONDARYRS.MoveNext
                Loop
 'Code added on 30-09-2019'
               Set rsLog = New Recordset
                rsLog.Open "select * from  IG_RBODT WHERE BO_NO ='" & txtfields(1).Text & "' and BO_TYPE ='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                
                Do While Not rsLog.EOF
                    Set RsTransLog = New Recordset
                    RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    RsTransLog.AddNew
                    RsTransLog("Divcode") = Divcode
                    RsTransLog("moduleNo") = ModuleNo
                    RsTransLog("Trans_Module") = "WASTE SALES"
                    RsTransLog("Trans_Name") = "WITHOUT DESPATCH"
                    RsTransLog("Trans_Mod") = "DEL"
                    RsTransLog("Trans_Host") = LocalHost
                    RsTransLog("Trans_IPADD") = LocalIPAdd
                    RsTransLog("Trans_UserId") = usrid
                    RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                    RsTransLog("SDI_Type") = txtfields(0).Text
                    RsTransLog("DocNo") = txtfields(1).Text
                    RsTransLog("DocDt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                    RsTransLog("CustCode") = txtfields(2).Text
                    RsTransLog("AgentCode") = txtfields(8).Text
'                    RsTransLog("BrokerCode") = 0
                    RsTransLog("ProductCode") = rsLog("PRODUCT_CODE")
                    RsTransLog("PKgs") = rsLog("NETT_KGS")
'                    RsTransLog("Mix") =0
                    RsTransLog("Lot") = rsLog("lot_code")
'                    RsTransLog("Godown") = 0
                    RsTransLog("PackType") = rsLog("pack_type")
                    RsTransLog("Packno_Code") = rsLog("Packno_Code")
                    RsTransLog("PackYear") = rsLog("Pack_Year")
'                    RsTransLog("Packs") = 0
                    RsTransLog("SPack") = rsLog("SPack_no")
                    RsTransLog("EPack") = rsLog("Epack_no")
'                    RsTransLog("PackWt") = 0
'                    RsTransLog("TaxCode") = 0
'                    RsTransLog("Rate") = 0
'                    RsTransLog("Qty") = 0
'                    RsTransLog("VALUE") = 0
'                    RsTransLog("TaxAmt") = 0
'                    RsTransLog("TotValue") = 0
'                    RsTransLog("CGSTAmt") = 0
'                    RsTransLog("SGSTAmt") = 0
'                    RsTransLog("IGSTAmt") = 0
                    
                    RsTransLog.UpdateBatch adAffectAll
            rsLog.MoveNext
          Loop
                
               DB.Execute ("delete from IG_RBODT where divcode='" & Divcode & "' and  bo_type='" & txtfields(0).Text & "' and bo_no='" & txtfields(1).Text & "'")
               DB.Execute ("delete from IG_RBOHD where divcode='" & Divcode & "' and bo_type='" & txtfields(0).Text & "'and bo_no='" & txtfields(1).Text & "' ")
                    
               Set rsg = New Recordset
               rsg.Open "select isnull(last_no,1) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and doc_type='B' AND DOC_ref='" & txtfields(0).Text & "'", DB, adOpenStatic
               If rsg(0) = val(Right(txtfields(1).Text, 6)) Then
                      DB.Execute (" UPDATE IG_DOCCONTROL SET LAST_NO=LAST_NO-1 WHERE DOC_TYPE='B' and doc_ref='" & txtfields(0).Text & "' and divcode='" & Divcode & "' and year_no='" & YearNo & "'")
               End If
               
               
               DB.CommitTrans
               DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',BO_NO=null,BO_TYPE=null,BO_DATE=null WHERE divcode='" & Divcode & "' and bo_type='" & txtfields(0).Text & "' and bo_no='" & txtfields(1).Text & "'"
               If val(Text16.Text) > 0 Then
                DB.Execute "update IG_RPackingAdvise set Desp_Flg='N' where divcode='" & Divcode & "' and bo_date='" & Format(DTPicker2.value, "yyyy-MM-dd") & "' and cust_code='" & txtfields(2).Text & "' and bo_no='" & Text16.Text & "' and bo_type='" & txtfields(0).Text & "'"
               End If
               Screen.MousePointer = 0
            MsgBox "Record Deleted Successfully", vbInformation, head
              
              
            stbar.Panels(2).Text = "Record Deleted Successfully"
            Opt = " "
            txtfields(3).Text = ""
            txtfields(5).Text = ""
            txtfields(6).Text = ""
            txtfields(7).Text = ""
            Set grddatagrid.DataSource = Nothing
            Call query_mode
            Else
                 Screen.MousePointer = 0
                 MsgBox "Deletion cancelled", vbInformation, head
                 DB.CommitTrans
                 Opt = " "
                 Call query_mode
                 Screen.MousePointer = 0
                                
            End If
    End If
    
delerr:
    If Err.Number = -2147217900 Then
        MsgBox "This Delivery No. cannot be deleted as dependencies exist", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
Opt = ""
BUTTON_Click (10)
Exit Sub
AddErr:
If Err.Description <> "" Then
    MsgBox Err.Description
    MsgBox "Record Not Saved", vbInformation, head
    DB.RollbackTrans
    SSTab1.Visible = True
    BUTTON_Click (10)
    Exit Sub
End If
Case 10
    
    Frame3.Visible = False
    desc.Caption = "Query"
     
     stbar.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    tmpvl = 0
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
'        db.Execute "DROP TABLE waste"
        SSTab1.Visible = True
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
     Case "fnd"
        DB.RollbackTrans
      
    End Select
    Opt = ""
    If Opt <> "qry" Then
        Opt = "qry"
    Call query_mode
    End If
    'calling cancl procedure from module
    Call NEWFORM1(BUTTON, GSNO)
    If BUTTON(0).Enabled Then BUTTON(0).SetFocus

    adoPrimaryRS.MoveLast
    Screen.MousePointer = 0
    
Case 11
    'EXIT
'        db.Execute "DROP TABLE waste"
    Reset
    Unload Me
Case 12
            
            Set pr1 = New Recordset
            pr1.Open "select divname from pp_divmas where divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            Set Rs = New Recordset
            Rs.Open "select distinct divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,CNTCD,ISSFLG from IG_RBOHD where bo_no='" & Me.txtfields(1) & "' and bo_type='" & Me.txtfields(0) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            
           Set rs1 = New Recordset
           rs1.Open "select distinct a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,IG_RPRODUCT b where bo_no='" & Me.txtfields(1) & "' and bo_type='" & Me.txtfields(0) & "' and a.divcode='" & Divcode & "' AND A.PRODUCT_CODE=B.PRODUCT_CODE And a.divcode=b.divcode order by a.product_code", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.BOF Then
               MsgBox "No records found for this month", vbInformation, head
              Exit Sub
            End If
            Set TEMP = New Recordset
           TEMP.Open "select slname from fa_slmas where slcode='" & Rs("cust_code") & "'", DB, adOpenStatic
        
            Set REP = New Report.ReportView
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            Dim pl As Integer
            Dim Waste As String
            pl = 55         'page length
            pg = 1
            co = 0
            a = 1
            Dim packs As Integer
            Dim code As String
            Dim slno As Integer
'            Open "c:\wastedes.txt" For Output As #a
            Open KALFOLDERDATA & "\wastedes.TXT" For Output As #a
            
             Print #a, Chr(18) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
            For I = 1 To Rs.RecordCount
                Print #a, Chr(27) + "E" + CStr(" Waste despatch List")
                Print #a, Space(2) & Chr(27) + "E" + "Despatch No.  :   " & Chr(27) + "F" + Padr(Rs("bo_no"), 20, " ") & Space(25); " Date :" & Padr(Format(Rs("Date"), "dd/mm/yy"), 8, " ")
                Print #a, Space(2) & Chr(27) + "E" + "Customer      :   " & Chr(27) + "F" + Padr(TEMP("slname"), 45, " ")
                Print #a, Space(2) & Chr(27) + "E" + "Vehicle No    :   " & Chr(27) + "F" + Padr(Rs("vehicle_no"), 20, " ")
                Print #a,
                Print #a,
                Print #a, Space(2); String(80, "-")
                Print #a, Space(2); Chr(18) + Chr(27) + "E" & "Product Name                Sl.No. Pack Year      Pack No             Weight" + Chr(27) + "F"
                Print #a, Space(2); String(80, "-")
                c = 9
                Do While Not rs1.EOF
                    slno = 1
                    packs = Padl(rs1("epack_no"), 10, " ") - Padl(rs1("spack_no"), 10, " ") + 1
                    If rs1("Spack_no") = rs1("epack_no") Then
                        Print #a, Space(2) & Padr(rs1("Description"), 30, " ") & Space(1) & Padl(slno, 5, " ") + Space(1) + Padr(rs1("Pack_year"), 9, " ") + Space(6) + Padl(rs1("Spack_no"), 5, " ") + Space(6) + Padl(INF(rs1("NETT_KGS"), 2), 12, " ")
                        Waste = rs1("Description")
                        GoTo w1
                        c = c + 1
                    End If
                    s = 0
                    Do While s <> packs
                        Set Jk = New Recordset
                        Jk.Open "Select sum(pack_wt)-sum(tare),sum(pack_wt) from ig_rpacknos where pack_type = '" & rs1("Pack_type") & "' and product_code = '" & rs1.Fields("product_code") & "' and pack_no = '" & (rs1.Fields("SPACK_NO") + s) & "' and divcode='" & Divcode & "'", DB
                        If Waste = rs1("Description") Then
                            Print #a, Space(2) & Padr("", 30, " ") & Space(1) & Padl(slno, 5, " ") + Space(1) + Padr(rs1("Pack_year"), 9, " ") + Space(6) + Padl(rs1("Spack_no") + s, 5, " ") + Space(6) + Padl(INF(Jk(0), 2), 12, " ")
                        Else
                            Print #a, Space(2) & Padr(rs1("Description"), 30, " ") & Space(1) & Padl(slno, 5, " ") + Space(1) & Padr(rs1("Pack_year"), 9, " ") + Space(6) + Padl(rs1("Spack_no") + s, 5, " ") + Space(6) + Padl(INF(Jk(0), 2), 12, " ")
                        End If
                        Waste = rs1("Description")
                        s = s + 1
                        c = c + 1
                    If c > pagelen Then
                        Print #a, Space(2); String(80, "-")
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Print #a, Chr(18) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
                        Print #a, Chr(27) + "E" + CStr(" Waste despatch List")
                        Print #a, Space(2); String(80, "-")
                        Print #a, Space(2); Chr(18) + Chr(27) + "E" & "Product Name                       Pack Year      Pack No            Weight " + Chr(27) + "F"
                        Print #a, Space(2); String(80, "-")
                        c = c + 5
                    End If
                         slno = slno + 1
                    Loop
w1:                 p = p + packs
                    P1 = P1 + packs
                    n = n + rs1("NETT_KGS")
                    N1 = N1 + rs1("NETT_KGS")
                    code = Trim(rs1("Product_code"))
                    rs1.MoveNext
                    If Not rs1.EOF Then
                    If rs1.Fields("product_code") <> code Then
                        Print #a, Space(38) + String(40, "-")
                        Print #a, Space(40) + Chr(18) + Chr(27) + "E" + " Product Total " + Padl(P1, 4, " ") + Space(10) + Padl(INF(N1, 2), 8, " ") + Chr(27) + "F"
                        Print #a, Space(38) + String(40, "-")
                        P1 = 0
                        N1 = 0
                        c = c + 3
                    End If
                    End If
                    If c > pagelen Then
                        Print #a, Space(2); String(80, "-")
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Print #a, Chr(18) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
                        Print #a, Chr(27) + "E" + CStr(" Waste despatch List")
                        Print #a, Space(2); String(80, "-")
                        Print #a, Space(2); Chr(18) + Chr(27) + "E" & "Product Name                       Pack Year      Pack No            Weight " + Chr(27) + "F"
                        Print #a, Space(2); String(80, "-")
                        c = c + 5
                    End If
                Loop
                
                    If c > pagelen Then
                        Print #a, Space(2); String(80, "-")
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Print #a, Chr(18) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
                        Print #a, Chr(27) + "E" + CStr(" Waste despatch List")
                        Print #a, Space(2); String(80, "-")
                        Print #a, Space(2); Chr(18) + Chr(27) + "E" & "Product Name                       Pack Year      Pack No            Weight" + Chr(27) + "F"
                        Print #a, Space(2); String(80, "-")
                        c = c + 5
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(38) + String(40, "-")
            Print #a, Space(40) + Chr(18) + Chr(27) + "E" + " Product Total " + Padl(P1, 4, " ") + Space(10) + Padl(INF(N1, 2), 8, " ") + Chr(27) + "F"
            Print #a, Space(38) + String(40, "-")
            Print #a, Space(2); String(80, "-")
            Print #a, Space(25) + Chr(18) + Chr(27) + "E" + "Total " + Space(7) + Padl(p, 6, " ") + Space(10) + Padl(INF(n, 2), 8, " ") + Chr(27) + "F"
            Print #a, Space(2); String(80, "-")
            Print #a,
            Print #a, Space(5) + Space(20) + Chr(18) + Chr(27) + "E" + "Product Abstract" + Chr(27) + "F"
            Print #a, Space(5) + String(70, "-")
            Print #a, Space(5) + Chr(18) + Chr(27) + "E" + "Product Name                       Packs                 Qty " + Chr(27) + "F"
            Print #a, Space(5) + String(70, "-")
            Set rs3 = New Recordset
            rs3.Open " select sum(a.nett_kgs) AS nett,sum(a.epack_no-a.spack_no+1) as pack,b.description from IG_RBODT a,IG_RPRODUCT b where bo_no='" & Me.txtfields(1) & "' and bo_type='" & Me.txtfields(0) & "' and a.divcode='" & Divcode & "' AND A.PRODUCT_CODE=B.PRODUCT_CODE And a.divcode=b.divcode group by b.description", DB, adOpenStatic, adLockBatchOptimistic
            N1 = 0
            P1 = 0
            Do While Not rs3.EOF
                Print #a, Space(5) + Padr(rs3("description"), 20, " ") + Space(1) + Padl(rs3("pack"), 5, " ") + Space(12) + Padl(INF(rs3("nett"), 2), 8, " ")
                N1 = N1 + rs3("nett")
                P1 = P1 + rs3("pack")
                rs3.MoveNext
                c = c + 1
                
                If c > pagelen Then
                        Print #a, Space(2); String(80, "-")
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Print #a, Chr(18) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
                        Print #a, Chr(27) + "E" + CStr(" Waste despatch List")
                        Print #a, String(80, "-")
                        Print #a, Chr(18) + Chr(27) + "E" & "Product Name                       Pack Year      Pack No             Weight" + Chr(27) + "F"
                        Print #a, String(80, "-")
                        c = c + 5
                    End If
            Loop
            Print #a, Space(5) + String(70, "-")
            Print #a, Space(5) + Chr(18) + Chr(27) + "E" + Space(23) + "Total     " + Space(3) + Padl(P1, 4, " ") + Space(12) + Padl(INF(N1, 2), 8, " ") + Chr(27) + "F"
            Print #a, Space(5) + String(70, "-")
            
            Print #a, Chr(12)
            Close #a
                        
            a = FreeFile
            Call KALBATPROCESS("wastedes")
            
'            Open "c:\wastedes.bat" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type wastedes.txt > prn"
'            Close #a
'            rep.txtfile = "c:\wastedes.txt"
'            rep.Batfile = "c:\wastedes.bat"
    Case 13
        'Cry_WSales_DespatchList
        
      Set RsDiv = New Recordset
       RsDiv.Open "Select div_printname,div_unitname from pp_divmas where divcode='" & Divcode & "'", DB
       If Not RsDiv.EOF Then
            divname = RsDiv("div_printname")
            sUnitName = RsDiv("div_unitname")
       End If
        
      Dim clsCryRptDespList As New clsCrystal
      Set clsCryRptDespList.cryRept = Cry_WSales_DespatchList
      clsCryRptDespList.CrystalPrint
                    
      CrystalReport1.Reset
      CrystalReport1.Connect = connectstring
      CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
      CrystalReport1.ParameterFields(0) = "@Dicvcode;" & Divcode & ""
      CrystalReport1.ParameterFields(1) = "@DocNo;" & Me.txtfields(1) & ""
      CrystalReport1.ParameterFields(2) = "@DesType;" & Me.txtfields(0) & ""
      If UCase(CustID) = "COTTON" And UCase(divabbr) = "SCMTS" Then
            CrystalReport1.Formulas(0) = "Divname='" & divname & "'"
            CrystalReport1.Formulas(1) = "UnitName='" & sUnitName & "'"
      Else
            CrystalReport1.Formulas(0) = "Divname='" & divname & "'"
            CrystalReport1.Formulas(1) = "UnitName='" & sUnitName & "'"
      End If
    
      CrystalReport1.WindowShowPrintSetupBtn = True
      CrystalReport1.WindowShowSearchBtn = True
      CrystalReport1.WindowState = crptMaximized
      SendKeys "{ENTER}"
      CrystalReport1.Action = 1
      CrystalReport1.PrinterCopies = 1
      Screen.MousePointer = 0
End Select
intervalMinutes = -1
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Form1", vbInformation, head
End Sub



Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)

  

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form Form1", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub Chk_Timer_Click()
On Error GoTo ErrorHandler
    Dim RsClone As Recordset
    Dim ProductId, SPno, EPno, Packtyp, Pyear, Ordno, OrdTyp, packno_code, Lot, CustCode As String
    
    ' If checkbox is checked
    If Chk_Timer.value Then
        ' Set timer interval from database
        Set RsPks = New Recordset
        Set rsparam = New Recordset
        Set rsDsp = New Recordset
             ProductId = "''": SPno = "''": EPno = "''": Packtyp = "''": Pyear = "''": Ordno = "''": OrdTyp = "''": packno_code = "''": Lot = "''": CustCode = "''"
        
         Set RsClone = New Recordset
        Set RsClone = ADOSECONDARYRS.Clone
        If Not RsClone.EOF Then
          If RsClone("spack_no") <> "" Then
        
            RsClone.MoveFirst
            Do While Not RsClone.EOF
 
                If ProductId = "''" Then
                    ProductId = "'" & RsClone("product_code") & "'"
                Else
                    ProductId = ProductId & ",'" & RsClone("product_code") & "'"
                End If
                
                If SPno = "''" Then
                    SPno = "'" & RsClone("spack_no") & "'"
                Else
                    SPno = SPno & ",'" & RsClone("spack_no") & "'"
                End If
                
                
                If EPno = "''" Then
                    EPno = "'" & RsClone("Epack_no") & "'"
                Else
                    EPno = EPno & ",'" & RsClone("Epack_no") & "'"
                End If
                
                If Pyear = "''" Then
                    Pyear = "'" & RsClone("pack_year") & "'"
                Else
                    Pyear = Pyear & ",'" & RsClone("pack_year") & "'"
                End If
                
                If Packtyp = "''" Then
                    Packtyp = "'" & RsClone("pack_type") & "'"
                Else
                    Packtyp = Packtyp & ",'" & RsClone("pack_type") & "'"
                End If
                 
                If Ordno = "''" Then
                    Ordno = "'" & RsClone("cont_no") & "'"
                Else
                    Ordno = Ordno & ",'" & RsClone("cont_no") & "'"
                End If
                 
                If OrdTyp = "''" Then
                    OrdTyp = "'" & RsClone("cont_type") & "'"
                Else
                    OrdTyp = OrdTyp & ",'" & RsClone("cont_type") & "'"
                End If
               
                If packno_code = "''" Then
                    packno_code = "'" & RsClone("packno_code") & "'"
                Else
                    packno_code = packno_code & ",'" & RsClone("packno_code") & "'"
                End If
                
                
                If Lot = "''" Then
                    Lot = "'" & RsClone("lot_code") & "'"
                Else
                    Lot = Lot & ",'" & RsClone("lot_code") & "'"
                End If
 
                CustCode = txtfields(2).Text
                
                RsClone.MoveNext
            Loop
          End If
        End If
        
        
        Set tr = New Recordset
        If tr.State = 1 Then tr.Close
        tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='WASTE1'", DB, adOpenDynamic, adLockOptimistic
        If tr.RecordCount = 0 Then
            DB.Execute "CREATE TABLE WASTE1(SNO NUMERIC(6),FPNO DECIMAL(12,0),NETWT NUMERIC(12,3),TPNO varchar(10),PACKYEAR VARCHAR(4),ActNetWt  NUMERIC(12,3),Godown varchar(10),Divcode varchar(3),IpAdd Varchar(20))"
        End If
        
        sn = 0
        
        If ScanningRowFlag = "N" Then
            DB.Execute "Delete from WASTE1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'"
            Set chrs = New Recordset
            chrs.Open "SELECT SNO 'S.No',FPNO 'Bale No.',NETWT 'Net Wt.',TPNO 'Yes / No',PackYear,ActNetWt 'Actual Net.Wt.',Godown FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'", DB, adOpenDynamic, adLockBatchOptimistic
            Set DataGrid1.DataSource = chrs
            DataGrid1.Columns(0).Width = 915.0237
            DataGrid1.Columns(1).Width = 1140.095
            DataGrid1.Columns(2).Width = 1140.095
            DataGrid1.Columns(3).Width = 1005.165
            DataGrid1.Columns(4).Width = 1005.165
            DataGrid1.Columns(5).Width = 1700
            DataGrid1.Columns(4).Visible = True
            DataGrid1.Columns(0).Locked = False
            DataGrid1.Columns(1).Locked = False
            DataGrid1.Columns(2).Locked = False
            DataGrid1.Columns(2).NumberFormat = "#0.000"
            DataGrid1.Columns(2).Alignment = dbgRight
            DataGrid1.Columns(2).Locked = True
            DataGrid1.Columns(5).NumberFormat = "#0.000"
            DataGrid1.Columns(5).Alignment = dbgRight
            DataGrid1.Columns(4).Locked = True
            ScanningRowFlag = "Y"
        End If
        
        rsparam.Open "SELECT ISNULL(Barcode_TimerInterval, 3500) FROM ig_param WHERE divcode='" & Divcode & "'", DB, adOpenStatic
        Timer1.Interval = rsparam.Fields(0).value
        rsparam.Close

        Timer1.Enabled = True
        Text15.SetFocus
        Option2.value = True
        Text9.Enabled = False
        Text10.Enabled = False


    Else
        ' If checkbox is not checked
        Timer1.Enabled = False
        Text9.Enabled = True
        Text10.Enabled = True
       
    End If

    Exit Sub

ErrorHandler:
    MsgBox "An error occurred: " & Err.Description, vbCritical, "Error"
    ' Ensure recordsets are closed if an error occurs
    If Not rsparam Is Nothing And rsparam.State = adStateOpen Then rsparam.Close
    If Not rsDsp Is Nothing And rsDsp.State = adStateOpen Then rsDsp.Close
    If Not RsPks Is Nothing And RsPks.State = adStateOpen Then RsPks.Close
End Sub

Private Sub Chkconst_Click()
On Error Resume Next
If Chkconst.value = 1 Then
        For I = 1 To Lv_Stock.ListItems.Count
          Lv_Stock.ListItems.Item(I).Checked = True
            sid = Trim(Lv_Stock.ListItems(I).SubItems(10))
            sql = "update tempWSale" & LIPAdd & "  set printStatus='Y' where id='" & sid & "' "
                    DB.Execute sql
        Next I
        Set temprs = New Recordset
        temprs.Open "SELECT sum(NETWT),count(fpno) baleno from  tempWSale" & LIPAdd & " with (nolock) where isnull(printStatus,'N')='Y'  ", DB, adOpenDynamic, adLockOptimistic
        If IsNull(temprs(0)) = False Then
        txt_mtrs.Text = temprs(0)
        Text14.Text = temprs(1)
        Else
        txt_mtrs.Text = "0"
        End If
    Else
        For I = 1 To Lv_Stock.ListItems.Count '- 1
             Lv_Stock.ListItems.Item(I).Checked = False
        Next I
          txt_mtrs.Text = ""
        Text14.Text = ""
    End If

End Sub

Private Sub cmdExit_Click()
Frame12.Visible = False
End Sub

Private Sub Combo1_Change()
''KeyAscii = 0
On Error GoTo Combo1_Change_Error

Set rsg = New Recordset
rsg.Open "SELECT * FROM RM_ISSUETYPE WHERE ISSUE_CODE='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic
ISSFLG = "S"
If rsg.RecordCount > 0 Then
    ISSFLG = rsg("ISStype")
End If
    
    
KeyAscii = 0

Exit Sub
Combo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Change of Form Form1", vbInformation, head
End Sub

Private Sub Combo1_Click()
Call Combo1_Change
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
'KeyAscii = 0
End Sub

Private Sub Command1_Click()
On Error Resume Next
date1 = Right(Date, 4)
date2 = Mid$(Date, 3, 4)
date3 = Left(Date, 2)
DT = date1 + date2 + date3
DB.Execute "update IG_RBOHD set cancelled='Y',cancel_dt ='" & DT & "',cancel_rem='" & Text1.Text & "' where bo_type='" & txtfields(0).Text & "'"
DB.CommitTrans
Frame3.Visible = False
SSTab1.Visible = True
SSTab2.Visible = False
Opt = " "
Call query_mode
End Sub

Private Sub Command11_Click()
On Error Resume Next
        ADOSECONDARYRS.MoveLast
        bales = 0
        Meters = 0
        Set temprs = New Recordset
        temprs.Open "SELECT distinct PCode,PDesc,SNO,FPNO,NETWT,TPNO,packyear,divcode,System_id,id ,PackCode,Packtype FROM tempWSale" & LIPAdd & " a  with (nolock)  where PrintStatus='Y'   ", DB, adOpenDynamic, adLockReadOnly
        If Not temprs.EOF Then
         Do While Not temprs.EOF
'            ADOSECONDARYRS(4).value = txtfields(18).Text
'            ADOSECONDARYRS(7).value = txtfields(19).Text
            'grdDataGrid.Columns(11).Text = txtfields(20).Text
            ADOSECONDARYRS(8).value = temprs!pcode
            ADOSECONDARYRS(9).value = temprs!Pdesc
            
            
            
            ADOSECONDARYRS(10).value = temprs!packyear
            ADOSECONDARYRS(11).value = temprs!PackCode
            wpno = wpno & "," & temprs!FPNO & ""
            ADOSECONDARYRS(12).value = temprs!FPNO
            ADOSECONDARYRS(13).value = temprs!FPNO
            ADOSECONDARYRS(14).value = temprs!packtype
            ADOSECONDARYRS(15).value = "WL"
            ADOSECONDARYRS("nett_kgs").value = temprs!netwt
            ADOSECONDARYRS("Lot_code") = "WL"
                     
            ADOSECONDARYRS("PACK_YEAR") = temprs!packyear
            Set Rs = New Recordset
            
              Rs.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,d.rate  from ig_rallocationhd a," & _
         " ig_rallocationdt b,ig_wastegroupd c,ig_rRateAllocatdt d  where a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and " & _
         " b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
         " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'" & _
         " AND a.Divcode=c.DIVCODE AND a.Doc_no=d.doc_no AND a.doc_dt=d.date AND d.wastecode=c.Waste_Code " & _
         " group by cust_code,d.rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no) ", DB
           
            If Not Rs.EOF Then
            
            ADOSECONDARYRS("rate").value = allotrate
            ADOSECONDARYRS("allotno").value = allotno
            ADOSECONDARYRS("allotdate").value = allotdate
            ADOSECONDARYRS("Lot_code") = "WL"
            End If
  
            
            
            bales = bales + 1
            Meters = Meters + temprs!netwt
            ADOSECONDARYRS.MoveNext
            ADOSECONDARYRS.AddNew
            temprs.MoveNext
            
         Loop
          Frame12.Visible = False
        Else
        MsgBox "No Bale Selected"
         'Frame12.Visible = t
        End If
        
        
        txtfields(10).Text = val(txtfields(10).Text) + bales
        txtfields(6).Text = val(txtfields(6).Text) + Meters
End Sub

Private Sub Command2_Click()
On Error Resume Next
    Timer1.Enabled = False
    Text9.Enabled = True
    Text10.Enabled = True
   
    Chk_Timer.value = 0
    Text15.Text = ""
    ScanningRowFlag = "N"
If Option2.value = True Then
 
Frame7.Visible = False
lblKgs.Caption = ""
lblPacks.Caption = ""
Dim TmpGodown As String

Dim packyear As String
    If chrs.RecordCount = 0 Then

        'Frame5.Visible = False
        'SSTab1.Enabled = True
        DB.Execute "DELETE FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'"
        Exit Sub
    End If
    a = 0
    chrs.MoveFirst
    Do While Not chrs.EOF
        If DataGrid1.Columns(3).Text = "Y" Then
            a = a + 1
        End If
        chrs.MoveNext
    Loop

    If Text9.Text = a Then
    Else
        Text9.Text = a
        'MsgBox "Please Enter the Correct Total Packs", vbInformation, head
        'Text9.SetFocus
        'Exit Sub
    End If
    chrs.MoveFirst
    Set RSS = New Recordset
    RSS.Open "SELECT SNO 'S.No',FPNO 'From Pack No.',TPNO 'YES / NO' FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'", DB, adOpenStatic
    FLGR = "Y"
    frn = 0
    ton = 0
    
   
    
    FLGR = "Y"
    frn = 0
    ton = 0
    TmpGodown = ""
    TV(0) = ADOSECONDARYRS(4).value
    TV(1) = ADOSECONDARYRS(7).value
    TV(2) = ADOSECONDARYRS(8).value
    TV(3) = ADOSECONDARYRS(9).value
    TV(4) = ADOSECONDARYRS("MixRate").value
    
   Set RR = New Recordset
    RR.Open "Select loadbale,wasteallot from ig_rparam where divcode='" & Divcode & "'", DB
    If Not RR.EOF Then
        If IIf(IsNull(RR("Wasteallot")), "N", RR("Wasteallot")) = "Y" Then
            wasteallot = True
            If IsNull(RR("loadbale")) = False Then
            loadbale = IIf(IsNull(RR("loadbale")), 0, RR("loadbale"))
            Else
                MsgBox "Please Enter in Parameter Bales Per Load", vbInformation, head
                Exit Sub
            End If
        Else
            wasteallot = False
        End If
        
    End If
    If wasteallot = True Then
       Set rr1 = New Recordset
    'rr1.Open "select a.cust_code,Sum(balancebales) as balancebales from ig_rallocationhd a, ig_rallocationdt b where a.doc_no=b.doc_no and b.date=a.doc_dt and waste='" & ADOSECONDARYRS(8) & "' and " & _
              " a.cust_code='" & TXTFIELDS(8).Text & "' and a.divcode='" & divcode & "'  and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code", db
              
    rr1.Open " select a.cust_code,Sum(balancebales) as balancebales from ig_rallocationhd a, ig_rallocationdt b,ig_wastegroupd c where" & _
             " a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
             " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code ", DB
             
    If Not rr1.EOF Then
        balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
        If a > balancepacks Then
            MsgBox "No. of packs entered is not tally for allocated Packs", vbInformation, head
            Exit Sub
        End If
    Else
        MsgBox "There is no waste allocation", vbInformation, head
        BUTTON(9).Enabled = False
        Exit Sub
    End If
    BUTTON(9).Enabled = True
    balancepacks = 0
    Set rr1 = New Recordset
    'rr1.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,rate from ig_rallocationhd a, ig_rallocationdt b where a.doc_no=b.doc_no and b.date=a.doc_dt and waste='" & ADOSECONDARYRS(8) & "' and " & _
              " a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & divcode & "'  and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code,rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no)", db
    'rr1.Open " select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,rate  from ig_rallocationhd a, ig_rallocationdt b,ig_wastegroupd c where" & _
             " a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & divcode & "' " & _
             " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code,rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no)", DB
   
rr1.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,d.rate  from ig_rallocationhd a," & _
         " ig_rallocationdt b,ig_wastegroupd c,ig_rRateAllocatdt d  where a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and " & _
         " b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
         " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'" & _
         " AND a.Divcode=c.DIVCODE AND a.Doc_no=d.doc_no AND a.doc_dt=d.date AND d.wastecode=c.Waste_Code " & _
         " group by cust_code,d.rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no) ", DB

    If Not rr1.EOF Then
        allotno = rr1("Doc_no")
        allotdate = rr1("Doc_dt")
        balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
        allotrate = rr1("Rate") / 100
    Else
        MsgBox "There is no waste allocation for this Agent", vbInformation, head
        Exit Sub
    End If
    Else
        balancepacks = a
    End If
       
    chrs.MoveFirst
    Do While Not chrs.EOF
    
'        packyear = chrs("packyear")
            
        If npack >= balancepacks Then
            If wasteallot = True Then
                If FLGR = "Y" Then
                    grddatagrid.Col = 0
                    TV(0) = ADOSECONDARYRS(4).value
                    TV(1) = ADOSECONDARYRS(7).value
                    TV(2) = ADOSECONDARYRS(8).value
                    TV(3) = ADOSECONDARYRS(9).value
                    TV(4) = ADOSECONDARYRS("MixRate").value
                    
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = frn
                    ADOSECONDARYRS(13).value = ton
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                    ADOSECONDARYRS("Godown") = TmpGodown
                    chrs.MovePrevious
                    FLGR = "N"
                    frn = 0
                    ton = 0
                    ActlKgs = 0
                    TmpGodown = ""
                Else
                    ADOSECONDARYRS.MoveNext
                    ADOSECONDARYRS.AddNew
                    grddatagrid.Col = 0
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                     ADOSECONDARYRS("MixRate").value = TV(4)
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = frn
                    ADOSECONDARYRS(13).value = ton
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                    ADOSECONDARYRS("Godown") = TmpGodown
                    chrs.MovePrevious
                    frn = 0
                    ton = 0
                    ActlKgs = 0
                    TmpGodown = ""
                End If
                rr1.MoveNext
                If Not rr1.EOF Then
                    allotno = rr1("Doc_no")
                    allotdate = rr1("Doc_dt")
                    balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
                    npack = 0
                    allotrate = rr1("Rate") / 100
                Else
                    GoTo nextallot
                End If
            End If
        ElseIf chrs(3) = "Y" And frn = 0 Then
            npack = npack + 1
            lKgs = lKgs + chrs(2)
            ActlKgs = ActlKgs + chrs(5)
            frn = chrs(1)
            ton = chrs(1)
            packyear = chrs(4)
            ActlKgs_1 = chrs(5)
            TmpGodown = chrs(6)
        ElseIf ton + 1 = chrs(1) And chrs(3) = "Y" And packyear = chrs(4) And ActlKgs_1 = chrs(5) Then
            npack = npack + 1
            lKgs = lKgs + chrs(2)
            ActlKgs = ActlKgs + chrs(5)
            ton = chrs(1)
            packyear = chrs(4)
            ActlKgs_1 = chrs(5)
            TmpGodown = chrs(6)
        ElseIf frn <> 0 Then
            If FLGR = "Y" Then
                grddatagrid.Col = 0
                TV(0) = ADOSECONDARYRS(4).value
                TV(1) = ADOSECONDARYRS(7).value
                TV(2) = ADOSECONDARYRS(8).value
                TV(3) = ADOSECONDARYRS(9).value
                TV(4) = ADOSECONDARYRS("MixRate").value
                ADOSECONDARYRS(11).value = Text3.Text
                ADOSECONDARYRS(12).value = frn
                ADOSECONDARYRS(13).value = ton
                ADOSECONDARYRS(14).value = Text5.Text
                ADOSECONDARYRS(15).value = Text7.Text
                ADOSECONDARYRS("rate").value = allotrate
                ADOSECONDARYRS("allotno").value = allotno
                ADOSECONDARYRS("allotdate").value = allotdate
                ADOSECONDARYRS("Lot_code") = "WL"
                ADOSECONDARYRS("PACK_YEAR") = packyear
                ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                ADOSECONDARYRS("Godown") = TmpGodown
                chrs.MovePrevious
                FLGR = "N"
                frn = 0
                ton = 0
                ActlKgs = 0
                ActlKgs_1 = 0
                TmpGodown = ""
            Else
                ADOSECONDARYRS.MoveNext
                ADOSECONDARYRS.AddNew
                grddatagrid.Col = 0
                ADOSECONDARYRS(4).value = TV(0)
                ADOSECONDARYRS(7).value = TV(1)
                ADOSECONDARYRS(8).value = TV(2)
                ADOSECONDARYRS(9).value = TV(3)
                ADOSECONDARYRS("MixRate").value = TV(4)
                
                ADOSECONDARYRS(11).value = Text3.Text
                ADOSECONDARYRS(12).value = frn
                ADOSECONDARYRS(13).value = ton
                ADOSECONDARYRS(14).value = Text5.Text
                ADOSECONDARYRS(15).value = Text7.Text
                ADOSECONDARYRS("Rate").value = allotrate
                ADOSECONDARYRS("allotno").value = allotno
                ADOSECONDARYRS("allotdate").value = allotdate
                ADOSECONDARYRS("Lot_code") = "WL"
                ADOSECONDARYRS("PACK_YEAR") = packyear
                ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                ADOSECONDARYRS("Godown") = TmpGodown
                ActlKgs = 0
                chrs.MovePrevious
                frn = 0
                ton = 0
                ActlKgs_1 = 0
                TmpGodown = ""
            End If
        End If
        
        chrs.MoveNext
    Loop
    
nextallot: '   If wasteallot = True Then
'    If a > balancepacks Then
'        MsgBox "No of. packs entered are greater then Allocated packs", vbInformation, head
'        Text9.SetFocus
'        Exit Sub
'    End If
'    End If
    Frame5.Visible = False
        If chrs.EOF And ton <> 0 And frn <> 0 Then
                If ADOSECONDARYRS.RecordCount >= 1 And Trim(ADOSECONDARYRS(12).value) <> "" Then
                    ADOSECONDARYRS.AddNew
                End If
                grddatagrid.Col = 0
                ADOSECONDARYRS(4).value = TV(0)
                ADOSECONDARYRS(7).value = TV(1)
                ADOSECONDARYRS(8).value = TV(2)
                ADOSECONDARYRS(9).value = TV(3)
                ADOSECONDARYRS("MixRate").value = TV(4)
                
                ADOSECONDARYRS(11).value = Text3.Text
                ADOSECONDARYRS(12).value = frn
                ADOSECONDARYRS(13).value = ton
                ADOSECONDARYRS(14).value = Text5.Text
                ADOSECONDARYRS(15).value = Text7.Text
                ADOSECONDARYRS("Rate").value = allotrate
                ADOSECONDARYRS("allotno").value = allotno
                ADOSECONDARYRS("allotdate").value = allotdate
                ADOSECONDARYRS("Lot_code") = "WL"
                ADOSECONDARYRS("PACK_YEAR") = packyear
                ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                ADOSECONDARYRS("godown") = TmpGodown
                ActlKgs = 0
                TmpGodown = ""
        End If
    
        
    chrs.MoveFirst
    'If chrs(2).value = "Y" Then
    TV(0) = ADOSECONDARYRS(4).value
    TV(1) = ADOSECONDARYRS(7).value
    TV(2) = ADOSECONDARYRS(8).value
    TV(3) = ADOSECONDARYRS(9).value
    TV(4) = ADOSECONDARYRS("MixRate").value
    ' adoSecondaryRS(11).value = Text3.Text
    ' adoSecondaryRS(12).value = chrs(1).value
    ' 'Easwar adoSecondaryRS(13).value = chrs(2).value
    ' adoSecondaryRS(13).value = chrs(1).value
    ' adoSecondaryRS(14).value = Text5.Text
    ' adoSecondaryRS(15).value = Text7.Text
    'End If
    'chrs.MoveNext
    '
    'While Not chrs.EOF
    'If chrs(2).value = "Y" Then
    '    adoSecondaryRS.MoveNext
    '    adoSecondaryRS.AddNew
    '    grdDataGrid.COL = 0
    '    adoSecondaryRS(4).value = TV(0)
    '    adoSecondaryRS(7).value = TV(1)
    '    adoSecondaryRS(8).value = TV(2)
    '    adoSecondaryRS(9).value = TV(3)
    '    adoSecondaryRS(11).value = Text3.Text
    '    adoSecondaryRS(12).value = chrs(1).value
    '    adoSecondaryRS(13).value = chrs(2).value
    '    'Easwar adoSecondaryRS(13).value = chrs(2).value
    '    adoSecondaryRS(13).value = chrs(1).value
    '    adoSecondaryRS(14).value = Text5.Text
    '    adoSecondaryRS(15).value = Text7.Text
    'End If
    '    chrs.MoveNext
    '
    'Wend
   
End If
    
    'Easwar
    If Option1.value = True Then
        If chrs.RecordCount = 0 Then
            'Frame5.Visible = False
            'SSTab1.Enabled = True
            DB.Execute "DELETE FROM waste"
            Exit Sub
        End If
        
  'Allocation
    Set RR = New Recordset
    RR.Open "Select loadbale,wasteallot from ig_rparam where divcode='" & Divcode & "'", DB
    If Not RR.EOF Then
        If IIf(IsNull(RR("Wasteallot")), "N", RR("Wasteallot")) = "Y" Then
            wasteallot = True
            If IsNull(RR("loadbale")) = False Then
            loadbale = IIf(IsNull(RR("loadbale")), 0, RR("loadbale"))
            Else
                MsgBox "Please Enter in Parameter Bales Per Load", vbInformation, head
                Exit Sub
            End If
        Else
            wasteallot = False
        End If
        
    End If
    If wasteallot = True Then
       Set rr1 = New Recordset
      rr1.Open " select a.cust_code,Sum(balancebales) as balancebales from ig_rallocationhd a, ig_rallocationdt b,ig_wastegroupd c where" & _
             " a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
             " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code ", DB
    If Not rr1.EOF Then
        balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
        If a > balancepacks Then
            MsgBox "No. of packs entered is not tally for allocated Packs", vbInformation, head
            Exit Sub
        End If
    Else
        MsgBox "There is no waste allocation for this Agent", vbInformation, head
        Exit Sub
    End If
    balancepacks = 0
    Set rr1 = New Recordset
    'rr1.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,rate from ig_rallocationhd a, ig_rallocationdt b where a.doc_no=b.doc_no and b.date=a.doc_dt and waste='" & ADOSECONDARYRS(8) & "' and " & _
              " a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & divcode & "'  and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' group by cust_code,rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no)", DB
    
    rr1.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,d.rate  from ig_rallocationhd a," & _
         " ig_rallocationdt b,ig_wastegroupd c,ig_rRateAllocatdt d  where a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and " & _
         " b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
         " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'" & _
         " AND a.Divcode=c.DIVCODE AND a.Doc_no=d.doc_no AND a.doc_dt=d.date AND d.wastecode=c.Waste_Code " & _
         " group by cust_code,d.rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no) ", DB
              
    If Not rr1.EOF Then
        allotno = rr1("Doc_no")
        allotdate = rr1("Doc_dt")
        balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
        allotrate = rr1("Rate") / 100
    Else
        MsgBox "There is no waste allocation for this Agent", vbInformation, head
        Exit Sub
    End If
    Else
        balancepacks = a
    End If
  'Allocation
  
        If wasteallot = True Then
        
        chrs.MoveFirst
        TV(0) = ADOSECONDARYRS(4).value
        TV(1) = ADOSECONDARYRS(7).value
        TV(2) = ADOSECONDARYRS(8).value
        TV(3) = ADOSECONDARYRS(9).value
        TV(4) = ADOSECONDARYRS("MixRate").value
        
        If ADOSECONDARYRS.RecordCount = 1 Then
                While Not chrs.EOF
                packyear = chrs("packyear")
                 fon = chrs(1)
                 ton = chrs(2)
                 TmpGodown = chrs(6)
                 
preallot:          If balancepacks > (ton - fon + 1) And ton >= chrs(2) Then
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                     ADOSECONDARYRS("MixRate").value = TV(4)
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = fon
                    ADOSECONDARYRS(13).value = ton
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
               Else
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                    ADOSECONDARYRS("MixRate").value = TV(4)
                    
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = fon
                    ADOSECONDARYRS(13).value = (fon + balancepacks - 1)
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                    fon = ADOSECONDARYRS(13).value + 1
                        rr1.MoveNext
                        If Not rr1.EOF Then
                            allotno = rr1("Doc_no")
                            allotdate = rr1("Doc_dt")
                            balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
                            allotrate = rr1("Rate") / 100
                            ADOSECONDARYRS.MoveNext
                            ADOSECONDARYRS.AddNew
                            If fon = chrs(2) Then
                                If Not chrs.EOF Then
                                chrs.MoveNext
                                 fon = chrs(1)
                                 ton = chrs(2)
                                 TmpGodown = chrs(6)
                                End If
                            End If
                            GoTo preallot
                        Else
                        GoTo nextallot1
                        End If
               End If
                    ADOSECONDARYRS.MoveNext
                    ADOSECONDARYRS.AddNew
                    chrs.MoveNext
            Wend
        Else
                While Not chrs.EOF
                fon = chrs(1)
                ton = chrs(2)
                packyear = chrs(3)
                TmpGodown = chrs(6)
                
preallot1:          If balancepacks > (ton - fon + 1) And ton >= chrs(2) Then
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                    ADOSECONDARYRS("MixRate").value = TV(4)
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = fon
                    ADOSECONDARYRS(13).value = ton
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
               Else
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                    ADOSECONDARYRS("MixRate").value = TV(4)
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = fon
                    ADOSECONDARYRS(13).value = (fon + balancepacks - 1)
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = packyear
                    ADOSECONDARYRS("ProdNetKgs") = ActlKgs
                    fon = ADOSECONDARYRS(13).value + 1
                    ton = chrs(2)
                        rr1.MoveNext
                        If Not rr1.EOF Then
                            allotno = rr1("Doc_no")
                            allotdate = rr1("Doc_dt")
                            balancepacks = IIf(IsNull(rr1("Balancebales")), 0, (rr1("Balancebales")))
                            allotrate = rr1("Rate") / 100
                            ADOSECONDARYRS.MoveNext
                            ADOSECONDARYRS.AddNew
                            GoTo preallot1
                        Else
                        GoTo nextallot1
                        End If
               End If
                    ADOSECONDARYRS.MoveNext
                    ADOSECONDARYRS.AddNew
                    chrs.MoveNext
            Wend
        End If
        Else
        chrs.MoveFirst
        TV(0) = ADOSECONDARYRS(4).value
        TV(1) = ADOSECONDARYRS(7).value
        TV(2) = ADOSECONDARYRS(8).value
        TV(3) = ADOSECONDARYRS(9).value
        TV(4) = ADOSECONDARYRS("MixRate").value
        If ADOSECONDARYRS.RecordCount = 1 Then
                While Not chrs.EOF
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                    ADOSECONDARYRS("MixRate").value = TV(4)
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = chrs(1).value
                    ADOSECONDARYRS(13).value = chrs(2).value
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("PACK_YEAR") = chrs(3).value
                    ADOSECONDARYRS("ProdNetKgs") = (chrs(5).value * (chrs(2).value - chrs(1).value + 1))
                    ADOSECONDARYRS("godown") = chrs("Godown")
                    ADOSECONDARYRS.MoveNext
                    ADOSECONDARYRS.AddNew
                    chrs.MoveNext
                Wend
        Else
                While Not chrs.EOF
                    ADOSECONDARYRS(4).value = TV(0)
                    ADOSECONDARYRS(7).value = TV(1)
                    ADOSECONDARYRS(8).value = TV(2)
                    ADOSECONDARYRS(9).value = TV(3)
                    ADOSECONDARYRS("MixRate").value = TV(4)
                    
                    ADOSECONDARYRS(11).value = Text3.Text
                    ADOSECONDARYRS(12).value = chrs(1).value
                    ADOSECONDARYRS(13).value = chrs(2).value
                    ADOSECONDARYRS(14).value = Text5.Text
                    ADOSECONDARYRS(15).value = Text7.Text
                    ADOSECONDARYRS("Lot_code") = "WL"
                    ADOSECONDARYRS("Rate").value = allotrate
                    ADOSECONDARYRS("allotno").value = allotno
                    ADOSECONDARYRS("allotdate").value = allotdate
                    ADOSECONDARYRS("PACK_YEAR") = chrs(3).value
                    ADOSECONDARYRS("ProdNetKgs") = (chrs(5).value * (chrs(2).value - chrs(1).value + 1))
                    ADOSECONDARYRS("godown") = chrs("Godown")
                    
                    ADOSECONDARYRS.MoveNext
                    ADOSECONDARYRS.AddNew
                    chrs.MoveNext
                Wend
        End If
        End If
nextallot1: Frame5.Visible = False
        BUTTON(9).Enabled = True
        SSTab1.Enabled = True
        tmpvl = 0
        
        grddatagrid.Col = 0
    End If
    
     hh = MsgBox("Do you want add One more product?", vbYesNo + vbInformation, head)
     
     Frame7.Visible = False
    lblKgs.Caption = ""
    lblPacks.Caption = ""

    ADOSECONDARYRS.MoveFirst
    Do While ADOSECONDARYRS.EOF = False
        'Set rx = New Recordset
         'rx.Open "SELECT  FROM IG_RPACKNOS WHERE PRODUCT_CODE='" & ADOSECONDARYRS.Fields("PRODUCT_CODE" &"' AND PACK_NO="
         If Not ADOSECONDARYRS.EOF And IsNull(ADOSECONDARYRS("epack_no")) = False Then
            If IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) > 0 Then
                tpacks = tpacks + (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
'            netwt = netwt + ADOSECONDARYRS("NETT_KGS")
                netwt = val(netwt & "") + val(ADOSECONDARYRS("ProdNetKgs") & "")
            End If
        End If
        ADOSECONDARYRS.MoveNext
    Loop
    ADOSECONDARYRS.MoveFirst
    Set Jk = New Recordset
    f1 = 0
    f2 = 0
    Do While Not ADOSECONDARYRS.EOF
    If Jk.State = 1 Then Jk.Close
        If IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) > 0 Then
            p = (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
        Else
            p = 0
        End If
    s = 0
l1:      If p <> s Then

       If Trim(ADOSECONDARYRS(8)) <> "" Then
            Set Jk = New Recordset
            Jk.Open "Select isnull(case when isnull(sum(SRT_kgs),0)=0 then sum(pack_wt) else sum(isnull(SRT_kgs,0)) end-isnull(sum(tare),0),0),(case when isnull(sum(SRT_kgs),0)=0 then sum(pack_wt) else sum(isnull(SRT_kgs,0)) end) as pack_wt from ig_rpacknos where pack_type = '" & Text5.Text & "' and product_code = '" & ADOSECONDARYRS.Fields("product_code") & "' and pack_no = '" & (ADOSECONDARYRS.Fields("SPACK_NO") + s) & "' and divcode='" & Divcode & "' and pack_year='" & ADOSECONDARYRS("pack_year") & "'", DB
            If Jk.EOF = False Then
                f1 = val(f1) + Jk(1)
                f2 = val(f2) + Jk(0)
            End If
       s = s + 1
       GoTo l1
    End If
    
    End If
    'Opt = tmp
    ADOSECONDARYRS.MoveNext
    Loop
    txtfields(5).Text = tpacks
    txtfields(6).Text = Format(netwt, "#.000")
    txtfields(7).Text = Format(f1, "#.000")
    ADOSECONDARYRS.MoveLast
    Frame5.Visible = False
    SSTab1.Enabled = True
    tmpvl = 0
    Set chrs = New Recordset
    DB.Execute "DELETE FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'"
    
    If Option2.value = True And hh = 6 Then
        ADOSECONDARYRS.AddNew
    End If
    grddatagrid.Col = 0
    grddatagrid.SetFocus
 Exit Sub
 
'ext:
'    MsgBox "Press enter in Total packs ", vbInformation, head
'    Text9.SetFocus
'    Exit Sub
End Sub



Private Sub DataGrid1_AfterColEdit(ByVal ColIndex As Integer)
        
        If Opt = "add" Then
        
            If (ColIndex = 3 Or ColIndex = 5) And Option2.value = True Then
            
                Set Rsm = New Recordset
                Set Rsm.DataSource = DataGrid1.DataSource
                CURROW = Rsm.AbsolutePosition
                If Rsm.RecordCount > 0 Then Rsm.MoveFirst
                
                totkgs = 0
                totpack = 0
                While Not Rsm.EOF
                     If UCase(Rsm("Yes / No")) = "Y" Then
                         dblKgs = val(dblKgs & "") + val(Rsm("Actual Net.Wt.") & "")
                         totpack = totpack + 1
                     End If
                     Rsm.MoveNext
                Wend
                
                lblPacks.Caption = totpack
                lblKgs.Caption = Format(dblKgs, "#0.000")
                 Text13.Text = Format(dblKgs, "#0.000")
                 If Rsm.RecordCount > 0 Then Rsm.MoveFirst
                 If Rsm.RecordCount > 0 Then Rsm.Move (CURROW)
               
                 DataGrid1.Col = 2
'                 DataGrid1.SetFocus
           
            End If
            
             If (ColIndex = 5) And Option1.value = True Then
            
                Set Rsm = New Recordset
                Set Rsm.DataSource = chrs
                CURROW = Rsm.AbsolutePosition
                If Rsm.RecordCount > 0 Then Rsm.MoveFirst
                
                totkgs = 0
                totpack = 0
                While Not Rsm.EOF
'                     If UCase(Rsm("Yes / No")) = "Y" Then
                         dblKgs = val(dblKgs & "") + (val(Rsm("ActPackWt") & "") * (Rsm("To Pack No.") - Rsm("From Pack No.") + 1))
                         totpack = totpack + (Rsm("To Pack No.") - Rsm("From Pack No.") + 1)
'                     End If
                     Rsm.MoveNext
                Wend
                
                lblPacks.Caption = totpack
                lblKgs.Caption = Format(dblKgs, "#0.000")
                 Text13.Text = Format(dblKgs, "#0.000")
                 If Rsm.RecordCount > 0 Then Rsm.MoveFirst
'                 If Rsm.RecordCount > 0 Then Rsm.Move (CURROW)
               
                 DataGrid1.Col = 2
'                 DataGrid1.SetFocus
           
            End If
        End If
        
End Sub

Private Sub DataGrid1_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo DataGrid1_KeyDown_Error

    If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

Exit Sub
DataGrid1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyDown of Form Form1", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error

If DataGrid1.Col = 2 And KeyAscii <> 13 Then
    Call ToAlpha(DataGrid1, 1, KeyAscii)

ElseIf DataGrid1.Col = 3 And KeyAscii = 13 And Opt = "add" Then
'    If chrs.RecordCount <> chrs.AbsolutePosition Then DataGrid1.Row = DataGrid1.Row + 1
    DataGrid1.Col = 3
    DataGrid1.SetFocus
    Exit Sub
    
ElseIf DataGrid1.Col = 5 And KeyAscii = 13 And Opt = "add" Then
    If chrs.RecordCount <> chrs.AbsolutePosition Then DataGrid1.Row = DataGrid1.Row + 1
    DataGrid1.Col = 5
    DataGrid1.SetFocus
    
    Exit Sub
End If

Call ToUpCase(DataGrid1, KeyAscii, 1)


Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form Form1", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub DTPicker2_CloseUp()
On Error Resume Next
If Opt = "add" Or Opt = "mod" Then
    MaskEdBox2.Text = DTPicker2.value
    txtfields(9).SetFocus
End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

intervalMinutes = -1
On Error Resume Next
    If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Form1", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
intervalMinutes = -1
On Error GoTo Form_Load_Error
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    'BUTTON(3).ToolTipText = "List (Ctrl L)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    BUTTON(12).ToolTipText = "Print (Ctrl P)"
   ' BUTTON(13).ToolTipText = "Crystal (Ctrl Y)"
    
    Frame7.Visible = False
    lblKgs.Caption = ""
    lblPacks.Caption = ""
 YearNo = Right(Year(yfdate), 2)
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Provider = "msdatashape"
  DB.Open connectstring
  desc.Caption = "query"
    DATLAB.Caption = Date
    Opt = "qry"
  stbar.Panels(1).Text = head
  grddatagrid.HeadLines = 2.5
 
  Call query_mode
  If adoPrimaryRS.RecordCount > 0 Then
        adoPrimaryRS.MoveLast
        Set Rs = New Recordset
        Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
        txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
        txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
  Else
    Exit Sub
  End If
    Set RR = New Recordset
    RR.Open "Select wasteallot from ig_rparam where divcode='" & Divcode & "'", DB
    If Not RR.EOF Then
        If IIf(IsNull(RR("Wasteallot")), "N", RR("Wasteallot")) = "Y" Then
            wasteallot = True
        End If
    End If
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Form1", vbInformation, head
    Screen.MousePointer = 0

End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
ScanningRowFlag = "N"
Chk_Timer.value = 0
If Opt = " " Or Opt = "qry" Then
    Frame5.Visible = False
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SHAPE {select DISTINCT A.divcode,A.bo_type,A.bo_no,A.date,a.cust_code,a.vehicle_no,a.ordrefno,a.ordredate,a.deliveyat,a.rate,a.rateflg,A.issflg,agent_code,a.Delcode,PackDocNo ,PackDocDT,a.JobOrddate,a.JobOrdNo from IG_RBOHD A,IG_RBODT B,RM_ISSUETYPE C  " & _
    " where C.ISSTYPE IN ('T','S','J') AND A.DIVCODE=B.DIVCODE AND A.ISSFLG=C.ISSUE_CODE AND A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND  B.PRODUCT_CODE LIKE 'W%' AND a.divcode='" & Divcode & "' AND A.date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND isnull(b.cont_no,'')='' order by a.date}  AS parent APPEND ({select distinct a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,ProdNetKgs,A.godown,a.MixRate from IG_RBODT a,IG_RPRODUCT b where a.divcode=b.divcode AND a.product_code=b.product_code  and a.divcode='" & Divcode & "' and A.product_code like 'W%' " & _
    " and isnull(a.cont_no,'')=''}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.RecordCount <= 0 Then
       MsgBox "No Records Found", vbInformation
       Exit Sub
    End If
    Call disablcontls
    Call bindcontls
    If Opt = "qry" Or Trim(Opt) = "" Then grddatagrid.AllowUpdate = False
    Set ADOSECONDARYRS = New Recordset
    On Error GoTo Err
    Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False

    tmp11 = 0
    tmp12 = 0
    Set Rs = adoPrimaryRS("childcmd").UnderlyingValue
    Do While Not Rs.EOF
       tmp11 = (Rs("epack_no") - Rs("spack_no")) + 1
       tmp12 = tmp12 + tmp11
       Rs.MoveNext
    Loop
    
    adoPrimaryRS.MoveLast
    Set RS2 = New Recordset
    RS2.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
    txtfields(6).Text = Format(RS2.Fields("net"), "#.000")
    txtfields(7).Text = Format(RS2.Fields("gross"), "#.000")
    'txtfields(5).Text = (adoSecondaryRS("epack_no") - adoSecondaryRS("spack_no")) + 1
    txtfields(5).Text = tmp12
    Set grddatagrid.DataSource = ADOSECONDARYRS
    grddatagrid.Columns(4).Visible = False
    'Set grddatagrid.DataSource = adoprimaryrs("childcmd").UnderlyingValue
    Call NEWFORM1(BUTTON, GSNO)
    desc.Caption = "Query"
    'txtfields(5).Visible = False
    'Label2(4).Visible = False
    Call GRDALIGN
End If
        
If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "select cust_type,description,category from ig_custtype where cust_type='" & Trim(Ksldesc1.code) & "' and description='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open " SHAPE {select divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,agent_code,ISSFLG,Delcode,PackDocNo ,PackDocDT,JobOrddate,JobOrdNo from IG_RBOHD where bo_type= '" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(txtfields(1).Text) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select DISTINCT a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,ProdNetKgs,a.Godown,a.MixRate from IG_RBODT a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenDynamic, adLockBatchOptimistic
    
    Call bindcontls
    Call ENABLCONTLS
    Call adddelmod(BUTTON)
    
    If Not adoPrimaryRS.EOF Then
        If (adoPrimaryRS("PackDocNo") <> Null Or adoPrimaryRS("PackDocNo") <> 0) Then
            Text16.Text = adoPrimaryRS("PackDocNo")
            DTPicker2.value = adoPrimaryRS("PackDocDT")
        End If
    End If
    
    Set ADOSECONDARYRS = New Recordset
    On Error GoTo Err
    'Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
    ADOSECONDARYRS.Open "select DISTINCT a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs as nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,a.Godown,a.MixRate from IG_RBODT a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.bo_type= '" & Trim(txtfields(0).Text) & "' and a.bo_no='" & Trim(txtfields(1).Text) & "'", DB, adOpenDynamic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    txtfields(6).Text = Format(ADOSECONDARYRS("nett_kgs"), "#.000")
    txtfields(7).Text = Format(ADOSECONDARYRS("gross_kgs"), "#.000")
    tmp11 = 0
    tmp12 = 0
    Set Rs = adoPrimaryRS("childcmd").UnderlyingValue
    Do While Not Rs.EOF
       tmp11 = (Rs("epack_no") - Rs("spack_no")) + 1
       tmp12 = tmp12 + tmp11
       Rs.MoveNext
    Loop
    ADOSECONDARYRS.AddNew
    txtfields(5).Text = tmp12
    txtfields(0).Locked = True
    txtfields(1).Locked = True
    txtfields(2).Locked = True
    txtfields(3).Locked = True
    txtfields(5).Locked = True
    txtfields(6).Locked = True
    txtfields(7).Locked = True
    
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(5).Locked = True
    grddatagrid.Columns(6).Locked = True
    grddatagrid.Columns(7).Locked = True
    grddatagrid.Columns(8).Locked = True
    grddatagrid.Columns(9).Locked = True
End If
        
If Opt = "del" Then
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open " SHAPE {select divcode,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,issflg from IG_RBOHD where bo_type= '" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(txtfields(1).Text) & "' and divcode='" & divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & divcode & "' and bo_type= '" & Trim(Ksldesc1.code) & "' and bo_no='" & Trim(Ksldesc1.Description) & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open " SHAPE {select divcode,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,issflg,agent_code,Delcode,PackDocNo ,PackDocDT,JobOrddate,JobOrdNo from IG_RBOHD where bo_type= '" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(txtfields(1).Text) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,ProdNetKgs,a.Godown,a.MixRate from IG_RBODT a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and bo_type= '" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(txtfields(1).Text) & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockBatchOptimistic
     
    Call bindcontls
    Call disablcontls
    If Not adoPrimaryRS.EOF Then
        If (adoPrimaryRS("PackDocNo") <> Null Or adoPrimaryRS("PackDocNo") <> 0) Then
            Text16.Text = adoPrimaryRS("PackDocNo")
            DTPicker2.value = adoPrimaryRS("PackDocDT")
        End If
    End If
     Set ADOSECONDARYRS = New Recordset
    On Error GoTo Err
    tmp12 = 0
    Set Rs = adoPrimaryRS("childcmd").UnderlyingValue
    Do While Not Rs.EOF
       tmp11 = (Rs("epack_no") - Rs("spack_no")) + 1
       tmp12 = tmp12 + tmp11
       Rs.MoveNext
    Loop
    txtfields(5).Text = tmp12
    
    Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
    txtfields(6).Text = Format(ADOSECONDARYRS("nett_kgs"), "#.000")
    txtfields(7).Text = Format(ADOSECONDARYRS("gross_kgs"), "#.000")
    If adoPrimaryRS("issflg") = "P" Then
        Combo1.ListIndex = 0
    ElseIf adoPrimaryRS("ISSFLG") = "S" Then
        Combo1.ListIndex = 1
    End If
    Set grddatagrid.DataSource = ADOSECONDARYRS
End If
        
If Opt = "fnd" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SHAPE {select divcode,bo_type,bo_no,date,cust_code,vehicle_no,rate,rateflg,agent_code,delcode,JobOrddate,JobOrdNo from IG_RBOHD where bo_type= '" & Trim(txtfields(0).Text) & "' and bo_no='" & Trim(txtfields(1).Text) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.product_code,b.description,a.pack_year,a.packno_code,a.spack_no,a.epack_no,a.pack_type,a.lot_code,a.rate,allotno,allotdate,ProdNetKgs,a.MixRate from IG_RBODT a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockOptimistic
    
    Call bindcontls
    Call disablcontls
    Set ADOSECONDARYRS = New Recordset
    On Error GoTo Err
    Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
    Set Rs = adoPrimaryRS("childcmd").UnderlyingValue
    tmp12 = 0
    Do While Not Rs.EOF
       tmp11 = (Rs("epack_no") - Rs("spack_no")) + 1
       tmp12 = tmp12 + tmp11
       Rs.MoveNext
    Loop
    txtfields(5).Text = tmp12
    Set Rs = New Recordset
    Rs.Open ("select sum(nett_kgs) as net,sum(gross_kgs) as gross from ig_rbodt where  divcode='" & Divcode & "' and product_code like 'W%' AND bo_no='" & adoPrimaryRS.Fields("bo_no") & "' and bo_type='" & adoPrimaryRS.Fields("bo_type") & "'"), DB, adOpenDynamic, adLockBatchOptimistic
    txtfields(6).Text = Format(Rs.Fields("net"), "#.000")
    txtfields(7).Text = Format(Rs.Fields("gross"), "#.000")
    Set grddatagrid.DataSource = ADOSECONDARYRS
End If

Exit Sub
Err:
BUTTON(9).Enabled = False
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure query_mode of Form frmcontract", vbInformation, head
'Set grddatagrid.DataSource = Nothing
End Sub
Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
   Set oText.DataSource = adoPrimaryRS
  Next
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
For Each X In Me.txtfields
    X.Locked = False
Next
txtfields(1).Locked = True
txtfields(0).Locked = True
Frame2.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = True
Next
'Frame2.Enabled = False
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Terminate()
On Error Resume Next
'    db.Execute "DROP TABLE waste"
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1

End Sub

Private Sub grdDataGrid_DblClick()
If Opt = "add" And grddatagrid.Row > 0 Then
    ADOSECONDARYRS.Delete adAffectCurrent
End If

If Opt = "mod" And grddatagrid.Row > 0 Then
        X = MsgBox("Do u want to Delete This Row", vbYesNo, head)
        If X = 6 Then
            ADOSECONDARYRS.Delete adAffectCurrent
        End If
End If

ADOSECONDARYRS.MoveFirst
    Set Jk = New Recordset
    f1 = 0
    f2 = 0
    Do While Not ADOSECONDARYRS.EOF
    If Jk.State = 1 Then Jk.Close
    p = (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
    s = 0
l1:      If p <> s Then
        If Trim(ADOSECONDARYRS(8)) <> "" Then
       Set Jk = New Recordset
       Jk.Open "Select isnull(sum(pack_wt),0)-isnull(sum(tare),0),isnull(sum(pack_wt),0) as pack_wt from ig_rpacknos where pack_type = '" & ADOSECONDARYRS.Fields(14) & "' and product_code = '" & ADOSECONDARYRS.Fields("product_code") & "' and pack_no = '" & (ADOSECONDARYRS.Fields("SPACK_NO") + s) & "' and divcode='" & Divcode & "' and pack_year='" & ADOSECONDARYRS("pack_year") & "'", DB
       If Jk.EOF = False Then
            f1 = val(f1) + Jk(1)
            f2 = val(f2) + Jk(0)
       End If
       s = s + 1
       GoTo l1
    End If
    End If
    'Opt = tmp
    tpacks = tpacks + (IIf(IsNull(ADOSECONDARYRS("epack_no")), 0, ADOSECONDARYRS("epack_no")) - IIf(IsNull(ADOSECONDARYRS("spack_no")), 0, ADOSECONDARYRS("spack_no")) + 1)
    ADOSECONDARYRS.MoveNext
    Loop
    txtfields(5).Text = tpacks
    txtfields(6).Text = Format(f2, "#.000")
    txtfields(7).Text = Format(f1, "#.000")
    ADOSECONDARYRS.MoveLast
    
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
 On Error GoTo grddatagrid_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(4)
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
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If


If Opt = "add" Or Opt = "mod" Then
    Select Case grddatagrid.Col
    Case 2
        stbar.Panels(2).Text = "Select Product Code  from the List"
        LookUp.Clear = True
       '' If ISSFLG = "S" Then
            LookUp.query = "select distinct a.PRODUCT_CODE as Code,a.description as Description,jb.MixRate 'Mix Ratio %' from IG_RPRODUCT a inner join IG_RPACKNOS B on a.divcode=b.divcode and  A.PRODUCT_CODE=B.PRODUCT_CODE inner join RM_JobOrderdt jb on jb.product_code=B.PRODUCT_CODE and jb.Product_Type='W' and jb.divcode=b.divcode inner join RM_JobOrderhd aa on aa.docno=jb.docno and aa.docdate=jb.docdate and aa.divcode=jb.divcode where  A.product_code like 'W%' AND isnull(invoiced,'N')='N' and a.divcode='" & Divcode & "' and aa.slcode='" & txtfields(2).Text & "' and cast(jb.docno as varchar)='" & txtfields(11).Text & "' "
       '' Else
       ''   LookUp.query = "select a.PRODUCT_CODE as Code,a.description as Description from IG_RPRODUCT a WHERE A.product_code like 'W%' and divcode='" & divcode & "' and isnull(YR_Flag,'N')='N' "
       '' End If
        
        LookUp.DefCol = "Description"
        LookUp.Caption = "Product Listing"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            ScanningRowFlag = "N"
            Chk_Timer = 0
            Timer1.Enabled = False
            Text9.Enabled = True
            Text10.Enabled = True
           
            
            Set yy = New Recordset
            yy.Open " SELECT count(*) FROM IG_RPACKNOS WHERE PRODUCT_CODE='" & LookUp.Fields(0) & "' AND isnull(invoiced,'N')='N' and divcode='" & Divcode & "'", DB
            If yy(0) = 0 Then
                MsgBox " There is No Stock ", vbInformation, head
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                Exit Sub
            End If
            
            Set RsHn = New Recordset
            RsHn.Open "Select hsn from ig_rproduct where divcode='" & Divcode & "' and product_code='" & LookUp.Fields(0) & "'", DB, adOpenStatic
            If Not RsHn.EOF Then
                If (Len(Trim(RsHn("hsn"))) = "6" Or Len(Trim(RsHn("hsn"))) = "8") Then
                Else
                    MsgBox "HSN Code should be 6 or 8 digits", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
            Else
                MsgBox "Please update the HSN Code in product Master  " & Rs("product_code"), vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
            
            
            ScanningRowFlag = "N"
            grddatagrid.Columns(2).Text = LookUp.Fields(0)
            grddatagrid.Columns(3).Text = LookUp.Fields(1)
            grddatagrid.Columns("MixRate").Text = LookUp.Fields(2)
            LookUp.Clear = True
            SSTab1.Enabled = False
            Set Rs = New Recordset
            Rs.Open "select distinct product_code from IG_RPACKNOS where divcode='" & Divcode & "' and product_code= '" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic, adLockOptimistic
            If Rs.RecordCount > 0 Then
                Frame5.Visible = True
                Text3.Enabled = True
                Text5.Enabled = True
                Text7.Enabled = True
                Label9.Visible = True
                Label10.Visible = False
                Text10.Visible = False
                Label9.Caption = "Total Packs"
                Text12.Visible = False
                Label18.Visible = False
                Text9.Visible = True
                Text9.Text = ""
                Text10.Text = ""
                Option2.value = True
                Frame5.ZOrder 0
                Text11.Text = grddatagrid.Columns(3).Text
                Text12.Text = Right(Year(yfdate), 2) '''Year(pdate)
                Text2.Text = ""
                Text3.Text = ""
                Text4.Text = ""
                Text5.Text = ""
                Text6.Text = ""
                Text7.Text = ""
                Text8.Text = ""
                Text9.Text = ""
                Text10.Text = ""
                Set Rs = New Recordset
                Rs.Open "select * from IG_RPRODUCT where divcode='" & Divcode & "' and product_code='" & Trim(grddatagrid.Columns(2).Text) & "'", DB
                tmpst = Rs(1).value
                Set DataGrid1.DataSource = Nothing
                Text3.SetFocus
                
                Frame7.Visible = True
                lblKgs.Caption = ""
                lblPacks.Caption = ""

                Exit Sub
            Else
                MsgBox "There is No Stock", vbInformation, head
                grddatagrid.Columns(2).Text = " "
                grddatagrid.Columns(3).Text = " "
                grddatagrid.Col = 2
                SSTab1.Enabled = True
                grddatagrid.SetFocus
            End If
            LookUp.Clear = True
            grddatagrid.AllowUpdate = True
        Else
            LookUp.Clear = True
            grddatagrid.Columns(2) = " "
            grddatagrid.Columns(3) = " "
            grddatagrid.Col = 2
            grddatagrid.SetFocus
        End If
        Exit Sub
            
''        SSTab1.Visible = False
''        Frame3.Visible = True
''        Frame3.ZOrder
''        Buttonframe.Enabled = False
''        listlb.Caption = "Product Detail Listing"
''        Ksldesc1.conn = connectstring
''        'IG_TENDERFINAL
''        If ISSFLG = "S" Then
''            Ksldesc1.Table = "IG_RPRODUCT a ,IG_RPACKNOS B where A.PRODUCT_CODE=B.PRODUCT_CODE AND A.product_code like 'W%' AND INVOICED='N'"
''        Else
''            Ksldesc1.Table = "IG_RPRODUCT a WHERE A.product_code like 'W%' and divcode='" & divcode & "'"
''        End If
''        Ksldesc1.listfield1 = "A.product_code"
''        Ksldesc1.listfield2 = "a.description"
''        Ksldesc1.SetFocus
     
  End Select
  End If
  
If Opt = "add" Or Opt = "mod" Then
Select Case grddatagrid.Col

       Case 9
'         If Record_Exists("ig_lot") = False Then Exit Sub
'
'
'
'        SSTab1.Visible = False
'
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Lot Detail Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_lot"
'        Ksldesc1.listfield1 = "lot_code"
'        Ksldesc1.listfield2 = "description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select Lot Code  from the List"
        
        
Case 8
'      If Record_Exists("ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type") = False Then Exit Sub
'
'        SSTab1.Visible = False
'
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Pack Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type"
'        Ksldesc1.listfield1 = "a.pack_type"
'        Ksldesc1.listfield2 = "a.description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select Pack Code  from the List"
        
Case 5
'      If Record_Exists("ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code") = False Then Exit Sub
'
'        SSTab1.Visible = False
'
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Pack Number Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code"
'        Ksldesc1.listfield1 = "a.packno_code"
'        Ksldesc1.listfield2 = "a.description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select PackNo Code  from the List"



      End Select
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Form1", vbInformation, head

End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error

Select Case grddatagrid.Col
    
Case 4
    tonum grddatagrid, 4, KeyAscii
Case 6, 7
    tonum grddatagrid, 5, KeyAscii
Case 9
    If KeyAscii = 9 And grddatagrid.Columns(9).Text <> "" And Opt = "add" Then
        row1 = ADOSECONDARYRS.AbsolutePosition
        FLG = "j"
        grddatagrid.AllowAddNew = True
        grddatagrid.Row = row1 + 1
        grddatagrid.Col = 0
        SSTab1.Visible = True
        grddatagrid.SetFocus
    End If
    If grddatagrid.Col = 4 Then
        stbar.Panels(2).Text = "Enter maximum of 4 integers"
    End If
    If grddatagrid.Col = 6 Then
        stbar.Panels(2).Text = "Enter maximum of 6 integers"
    End If
    If grddatagrid.Col = 7 Then
        stbar.Panels(2).Text = "Enter maximum of 6 integers"
    End If
 
End Select

Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Form1", vbInformation, head
End Sub
Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
 
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
 Select Case grddatagrid.Col
    Case 3
'        If Len(grdDataGrid.Columns(2).Text) = 0 Or grdDataGrid.Columns(2).Text = " " Then
'            grdDataGrid.COL = 2
'            Exit Sub
'        End If
    Case 1
    If FLG = "j" Then
    grddatagrid.Col = 1
    grddatagrid.SetFocus
    FLG = ""
    End If
    Case 5
'    Set rs = New Recordset
'        Set rs = New Recordset
'        rs.Open "select * from ig_rCONTDT where divcode='" & divcode & "' and cont_type= '" & grdDataGrid.Columns(0).Text & "' and cont_no= '" & grdDataGrid.Columns(1).Text & "' and product_code= '" & grdDataGrid.Columns(2).Text & "'", DB, adOpenStatic
'        If rs.RecordCount > 0 Then
'        Else
'         MsgBox "Selected Cont type,Product Code is Not in Contdt", vbInformation, head
'         grdDataGrid.COL = 0
'        grdDataGrid.SetFocus
'        End If
         Case 6
        If grddatagrid.Columns(5).Text <> "" Then
        Set Rs = New Recordset
        'rs.Open "select * from IG_RPACKNOS where divcode ='" & divcode & "' and pack_year = " & grddatagrid.Columns(4).Text & "  and packno_code= '" & grddatagrid.Columns(5).Text & "' and invoiced='N'", db, adOpenStatic
        Rs.Open "select * from IG_RPACKNOS where divcode ='" & Divcode & "' and  packno_code= '" & grddatagrid.Columns(5).Text & "' and isnull(invoiced,'N')='N'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
        grddatagrid.Col = 6
        SSTab1.Visible = True
        grddatagrid.SetFocus
        Else
        MsgBox "The  selected Pack No code is NOT DEFINED IN PACKNOS", vbInformation, head
         SSTab1.Visible = True
         grddatagrid.Columns(5).Text = " "
         grddatagrid.Col = 5
         grddatagrid.SetFocus
        
        End If
        Else
         MsgBox "enter Pack No Code", vbInformation, head
         grddatagrid.Col = 5
        SSTab1.Visible = True
        grddatagrid.SetFocus
        End If
        
         Case 7
        If grddatagrid.Columns(6).Text <> "" Then
            Set Rs = New Recordset
            'rs.Open "select PACK_NO from IG_RPACKNOS where divcode='" & divcode & "' and pack_year= " & grdDataGrid.Columns(4).Text & "  and packno_code= '" & grdDataGrid.Columns(5).Text & "' and pack_no > " & grdDataGrid.Columns(6).Text & " and invoiced='N'", db, adOpenStatic
            Rs.Open "select PACK_NO from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no > " & grddatagrid.Columns(6).Text & " and isnull(invoiced,'N')='N'", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                grddatagrid.Col = 7
                grddatagrid.SetFocus
            Else
                MsgBox "Start Pack No You typed is not in IG_RPACKNOS", vbInformation, head
                SSTab1.Visible = True
                grddatagrid.Columns(6).Text = "0"
                grddatagrid.Col = 6
                grddatagrid.SetFocus
            End If
        Else
            MsgBox "Please Enter Start Pack number", vbInformation, head
            grddatagrid.EditActive = True
            grddatagrid.Enabled = True
            grddatagrid.Col = 6
            'SSTab1.Visible = True
            grddatagrid.SetFocus
        End If
Case 8
        If grddatagrid.Columns(7).Text <> "" Then
            Set Rs = New Recordset
            'rs.Open "select pack_no from IG_RPACKNOS where divcode='" & divcode & "' and pack_year= " & grdDataGrid.Columns(4).Text & "  and packno_code= '" & grdDataGrid.Columns(5).Text & "' and pack_no between  " & grdDataGrid.Columns(6).Text & " and " & grdDataGrid.Columns(7).Text & " and invoiced='N'", db, adOpenStatic
            
            
            Rs.Open "select pack_no from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between  " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and isnull(invoiced,'N')='N'", DB, adOpenStatic
'            If rs.RecordCount > 0 And (Val(grdDataGrid.Columns(7).Text) - Val(grdDataGrid.Columns(6))) + 1 = rs.RecordCount Then
'
'                grdDataGrid.COL = 8
'                grdDataGrid.SetFocus
'            Else
'                MsgBox "End Pack No You Typed is not in Production(Yarn & Waste)", vbInformation, head
'                SSTab1.Visible = True
'                grdDataGrid.Columns(7).Text = "0"
'                grdDataGrid.COL = 7
'                grdDataGrid.SetFocus
'            End If
        Else
            MsgBox "Please Enter End Pack number", vbInformation, head
            grddatagrid.Col = 7
            SSTab1.Visible = True
            grddatagrid.SetFocus
        End If
Case 8
If grddatagrid.Columns(7).Text = " " Then
   
        MsgBox "Please Enter Pack Type", vbInformation, head
         grddatagrid.Col = 7
         SSTab1.Visible = True
        grddatagrid.SetFocus
        End If
       
End Select

       
      End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Form1", vbInformation, head
End Sub
Private Sub MaskEdBox2_KeyDown(KeyCode As Integer, Shift As Integer)
If (Opt = "add" Or Opt = "mod") And KeyCode = 18 Then
txtfields(9).SetFocus
End If
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error
If IsDate(MaskEdBox1) Then
Else
MsgBox "Please Enter Valid Date", vbInformation, head
MaskEdBox1.Text = pdate
End If
Exit Sub
MaskEdBox1_LostFocus_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form WasteDespatchOrder", vbInformation, head

End Sub
Private Sub Option1_Click()

If (Opt = "add" Or Opt = "mod") And Option1.value = True Then
    Label9.Visible = True
    Label10.Visible = True
    Label9.Caption = "From Pack No."
    Label10.Caption = "To Pack No."
    Label18.Visible = True
    Text12.Text = Right(Year(yfdate), 2)
    Text12.Visible = True
    Text9.Visible = True
    Text10.Visible = True
    Text9.Text = ""
    Text10.Text = ""
    Set DataGrid1.DataSource = Nothing
    tmpvl = 0
    Text2.Text = 0
    Text9.SetFocus
    Set frs = New Recordset
    'frs.Open "select pack_no from IG_RPACKNOS where product_code='" & Trim(tmpst) & "' and invoiced='N' order by pack_no", DB, adOpenStatic
    
    frs.Open "select count(*) count from IG_RPACKNOS where product_code='" & Trim(tmpst) & "' and isnull(invoiced,'N')='N' ", DB, adOpenStatic
    If frs.EOF = False Then
    
    '    Text9.Text = frs("count")
    End If
End If

End Sub

Private Sub Option2_Click()
If Opt = "add" Or Opt = "mod" Then
    Label9.Caption = "Total Packs"
    Label10.Visible = False
    Text10.Visible = False
    Label18.Visible = False
    Text12.Visible = False
    Text9.Text = ""
    Text9.SetFocus
    If Chk_Timer.value = 0 Then
            Text9.SetFocus
    End If
    Set DataGrid1.DataSource = Nothing
    Text2.Text = 0
    Set frs = New Recordset
'    frs.Open "select pack_no from IG_RPACKNOS where product_code='" & Trim(tmpst) & "' and invoiced='N' order by pack_no", DB, adOpenStatic
    
    frs.Open "select count(*) count from IG_RPACKNOS where product_code='" & Trim(tmpst) & "' and isnull(invoiced,'N')='N' and divcode='" & Divcode & "' and Pack_type='" & Text5.Text & "' and Packno_code='" & Text3.Text & "' ", DB, adOpenStatic
    If frs.EOF = False Then
    
        Text9.Text = frs("count")
    End If


End If
End Sub

Private Sub Text10_KeyDown(KeyCode As Integer, Shift As Integer)
Dim TM As New Recordset
Dim tr As New Recordset
'On Error GoTo ext
    If KeyCode = 13 And Option1.value = True Then
        If val(Text10.Text) < val(Text9.Text) Then
            MsgBox "To Pack Number must be Greater than From Pack Number", vbInformation, head
            Text10.Text = ""
            Text9.Text = ""
            Exit Sub
        End If
        If val(tmpvl) = 0 Then
            
            totlblpack = 0
            totlblkgs = 0
        
            Set tr = New Recordset
            tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='waste1'", DB
             
'            If tr.RecordCount = 1 Then
                'DB.Execute "DROP TABLE WASTE1"
'            End If
'                db.Execute "CREATE TABLE waste(SNO NUMERIC(6),FPNO NUMERIC(6),TPNO NUMERIC(5))"
            If tr.RecordCount = 0 Then
                'DB.Execute "CREATE TABLE waste1(SNO NUMERIC(6),FPNO DECIMAL(10,0),TPNO DECIMAL(10,0),Packyear varchar(4),PackWt numeric(10,3),ActPackWt numeric(10,3),Godown varchar(10),Divcode varchar(10), IpAdd varchar(20))"
                DB.Execute "CREATE TABLE WASTE1(SNO NUMERIC(6),FPNO DECIMAL(12,0),NETWT NUMERIC(12,3),TPNO varchar(10),PACKYEAR VARCHAR(4),ActNetWt  NUMERIC(12,3),Godown varchar(10),Divcode varchar(3),IpAdd Varchar(20))"
            End If 'Else
             
            DB.Execute "DELETE FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'"
            'End If
            sn = 0
            Set chrs = New Recordset
            chrs.Open "SELECT SNO 'S.No',FPNO 'From Pack No.',TPNO 'To Pack No.',Packyear,NETWT PackWt,ActNetWt ActPackWt,Godown,Divcode,IpAdd FROM waste1 where Divcode='" & Divcode & "' and IpAdd='" & LocalIP & "'", DB, adOpenDynamic, adLockOptimistic
            Set DataGrid1.DataSource = chrs
            DataGrid1.Columns(0).Width = 800
            DataGrid1.Columns(1).Width = 1500
            DataGrid1.Columns(2).Width = 1500
            DataGrid1.Columns(3).Width = 1000
            DataGrid1.Columns(0).Locked = True
            DataGrid1.Columns(1).Locked = True
            DataGrid1.Columns(2).Locked = True
            DataGrid1.Columns(3).Visible = True
            
            DataGrid1.Columns(3).Locked = True
            DataGrid1.Columns(4).Locked = True
            
            DataGrid1.Columns(6).Visible = True
            DataGrid1.Columns(6).Locked = True
            
            tmpvl = 1
        End If
    If chrs.RecordCount <> 0 Then chrs.MoveFirst
    While Not chrs.EOF
        If val(Text9.Text) >= chrs(1).value And val(Text9.Text) <= chrs(2).value And val(Text12.Text) = chrs(3).value Then
            Text9.Text = ""
            Text9.SetFocus
            MsgBox "Pack Number already added", vbInformation, head
            Exit Sub
        ElseIf val(Text10.Text) >= chrs(1).value And val(Text10.Text) <= chrs(2).value And val(Text12.Text) = chrs(3).value Then
            Text10.Text = ""
            Text10.SetFocus
            MsgBox "Pack Number already added", vbInformation, head
            Exit Sub
        End If
        If chrs(1).value >= val(Text9.Text) And chrs(1).value <= val(Text10.Text) And val(Text12.Text) = chrs(3).value Then
            Text9.Text = ""
            Text9.SetFocus
            MsgBox "Pack Number already added", vbInformation, head
            Exit Sub
        ElseIf chrs(2).value >= val(Text9.Text) And chrs(2).value <= val(Text10.Text) And val(Text12.Text) = chrs(3).value Then
            Text10.Text = ""
            Text10.SetFocus
            MsgBox "Pack Number already added", vbInformation, head
            Exit Sub
        End If
        chrs.MoveNext
    Wend
            
          
            
         ADOSECONDARYRS.MoveFirst
         While Not ADOSECONDARYRS.EOF
         
          If ADOSECONDARYRS("packno_code") = Text3.Text Then
          If ADOSECONDARYRS("pack_type") = Text5.Text Then
          If ADOSECONDARYRS("spack_no") <> "" And ADOSECONDARYRS("epack_no") <> "" Then
          
 
              Set Rs = New Recordset
              Rs.Open "Select distinct pack_no,product_code from ig_rpacknos where pack_no between '" & ADOSECONDARYRS("Spack_no") & "' and '" & ADOSECONDARYRS("epack_no") & "' and product_code='" & ADOSECONDARYRS("product_code") & "' and divcode='" & Divcode & "' and packno_code ='" & ADOSECONDARYRS("packno_code") & "' and pack_type='" & ADOSECONDARYRS("pack_type") & "'", DB
              If KK1 <> "" Then
                   KK1 = KK1 & ",'" & Rs("product_code") & "'"
              Else
                  KK1 = "'" & Rs("product_code") & "'"
              End If
              
              While Not Rs.EOF
              
                If KK <> "" Then
                   KK = KK & ",'" & Rs("pack_no") & "'"
                Else
                  KK = "'" & Rs("pack_no") & "'"
                End If
                Rs.MoveNext
              Wend
              
          End If
          End If
          End If
        ADOSECONDARYRS.MoveNext
        Wend
        
        If KK = "" Then
          KK = 0: KK1 = 0
        End If
        ADOSECONDARYRS.MoveLast
            
            
        Set Rs = New Recordset
        On Error Resume Next
        Rs.Open "select *,case when isnull(SRT_kgs,0)=0 then (pack_wt-tare) else isnull(SRT_kgs,0) end pack_wt1 from IG_RPACKNOS where divcode='" & Divcode & "' and product_code='" & tmpst & "' and packno_code= '" & Text3.Text & "' and pack_type= '" & Text5.Text & "' and lot_code='WL' and pack_no between " & Text9.Text & " and " & Text10.Text & " and pack_year='" & Trim(Text12.Text) & "'  and pack_no not in (select pack_no from ig_rpacknos where  divcode='" & Divcode & "' and product_code='" & tmpst & "' and pack_type= '" & Text5.Text & "' and isnull(invoiced,'N')='N' AND PACKNO_CODE='" & Text3.Text & "' and pack_no in(" & KK & ") and product_code in (" & KK1 & ")) order by pack_no", DB
        
        If Rs.RecordCount = 0 Then
            Set Rs = New Recordset
            'rs.Open "select * from IG_RPACKNOS where divcode='" & divcode & "' and product_code='" & tmpst & "' and packno_code= '" & Text3.Text & "' and pack_type= '" & Text5.Text & "' and lot_code='WL' AND isnull(invoiced,'N')='N' and divcode='" & divcode & "'", db
            
            '03/09/14-pack year validation
            Rs.Open "select * from IG_RPACKNOS where divcode='" & Divcode & "' and product_code='" & tmpst & "' and packno_code= '" & Text3.Text & "' and pack_type= '" & Text5.Text & "' and lot_code='WL' AND isnull(invoiced,'N')='N' and pack_year='" & Text12.Text & "' ", DB
            
            MsgBox "No Matching Record(s) Exist", vbInformation, head
            Text9.Text = Rs("pack_no")
            Text10.Text = ""
            Exit Sub
        Else
            Rs.MoveFirst
            Do While Not Rs.EOF
                If Rs("INVOICED") <> "N" Then
                    MsgBox "PACK NO: " & Rs("PACK_NO") & " ALREADY INVOICED", vbInformation, head
                    Exit Sub
                End If
                Rs.MoveNext
            Loop
            
            totlblkgs = 0
            If chrs.RecordCount > 0 Then chrs.MoveFirst
            Do While Not chrs.EOF
                
                totlblkgs = val(totlblkgs) + val(DataGrid1.Columns(5).Text)
                
                chrs.MoveNext
            Loop
            
            Rs.MoveFirst
            If Rs.RecordCount <> 0 Then
                chrs.AddNew
                sn = sn + 1
                DataGrid1.Columns(0).Text = val(sn)
                Rs.MoveFirst
                DataGrid1.Columns(1).Text = Rs("PACK_NO").value
                DataGrid1.Columns(3).Text = Rs("PACK_year").value
                
                DataGrid1.Columns(4).Text = Rs("pack_wt1")
                DataGrid1.Columns(5).Text = Rs("pack_wt1")
                DataGrid1.Columns(6).Text = Rs("Godown")
                DataGrid1.Columns(7).Text = Divcode
                DataGrid1.Columns(8).Text = LocalIP
                
                Dim NO As Integer
                NO = Rs("pack_no")
                packwt = Rs("pack_wt")
                Do While Not Rs.EOF
                    
                    totlblpack = val(totlblpack) + 1
                    totlblkgs = val(totlblkgs) + val(Rs("pack_wt1"))
                
                    If NO = Rs("pack_no") And packwt = Rs("pack_wt") Then
                    
                    Else
                        Rs.MovePrevious
                        DataGrid1.Columns(2).Text = Rs("PACK_NO").value
                        DataGrid1.Columns(3).Text = Rs("PACK_year").value
                         
                        Rs.MoveNext
                        chrs.AddNew
                        sn = sn + 1
                        DataGrid1.Columns(0).Text = val(sn)
                        DataGrid1.Columns(1).Text = Rs("PACK_NO").value
                        
                        DataGrid1.Columns(4).Text = Rs("pack_wt1")
                        DataGrid1.Columns(5).Text = Rs("pack_wt1")
                        DataGrid1.Columns(6).Text = Rs("Godown")
                        DataGrid1.Columns(7).Text = Divcode
                        DataGrid1.Columns(8).Text = LocalIP
                
                        NO = Rs("pack_no")
                        packwt = Rs("pack_wt")
                    End If
                    NO = NO + 1
                    Rs.MoveNext
                Loop
                Rs.MoveLast
                DataGrid1.Columns(2).Text = Rs("PACK_NO").value
                DataGrid1.Columns(3).Text = Rs("PACK_year").value
                DataGrid1.Columns(6).Text = Rs("Godown")
                DataGrid1.Columns(7).Text = Divcode
                DataGrid1.Columns(8).Text = LocalIP
                
                Text2.Text = val(Text2.Text) + val(Rs.RecordCount)
                Text9.Text = ""
                Text10.Text = ""
                Text9.SetFocus
                
                lblPacks.Caption = totlblpack
                lblKgs.Caption = Format(totlblkgs, "#0.000")
                
                Text13.Text = Format(totlblkgs, "#0.000")
                
            End If
        End If
    Else
    End If

End Sub


Private Sub Text10_KeyPress(KeyAscii As Integer)
'Call ToNumber(Text10, 5, KeyAscii)
End Sub

Private Sub Text10_LostFocus()
'Call Text10_KeyDown(13, 0)
End Sub

Private Sub Text12_KeyPress(KeyAscii As Integer)
'Call ToNumber(Text12, 2, KeyAscii)
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
Call ToAlphanum(Text3, 2, KeyAscii)
End Sub

Private Sub Text3_Validate(Cancel As Boolean)
If Record_Exists("ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code") = False Then Exit Sub
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT A.PACKNO_CODE,A.DESCRIPTION FROM ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code and b.product_code='" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 1 Then
        LookUp.Clear = True
        LookUp.query = "select Distinct a.packno_code as Code,a.description as Description from ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code and b.product_code='" & grddatagrid.Columns(2).Text & "' and a.Divcode=b.Divcode and a.Divcode='" & Divcode & "' "
        LookUp.DefCol = "Description"
        LookUp.Caption = "Pack Number Lisitng"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Text3.Text = LookUp.Fields(0)
            Text4.Text = LookUp.Fields(1)
            LookUp.Clear = True
            Text5.SetFocus
        Else
            Text3.Text = ""
            Text4.Text = ""
            Text3.SetFocus
        End If
        Exit Sub
        'Frame5.Visible = False
''''        Frame3.Visible = True
''''        Frame3.ZOrder
''''        Buttonframe.Enabled = False
''''        listlb.Caption = "Pack Number Listing"
''''        Ksldesc1.conn = connectstring
''''        Ksldesc1.Table = "ig_packnotype a,IG_RPACKNOS b where a.packno_code=b.packno_code and b.product_code='" & grddatagrid.Columns(2).Text & "'"
''''        Ksldesc1.listfield1 = "a.packno_code"
''''        Ksldesc1.listfield2 = "a.description"
''''        Ksldesc1.SetFocus
        stbar.Panels(2).Text = "Select PackNo Code  from the List"
    Else
        If Not Rs.EOF Then
            Text3.Text = Rs(0)
            Text4.Text = Rs(1)
        End If
    End If
End Sub

Private Sub Text5_KeyPress(KeyAscii As Integer)
Call ToAlphanum(Text3, 1, KeyAscii)
End Sub

Private Sub Text5_Validate(Cancel As Boolean)
On Error GoTo Text5_Validate_Error

    If Record_Exists("ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type") = False Then Exit Sub
    Set RSS = New Recordset
    RSS.Open "select distinct a.pack_type,a.description from ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type and b.packno_code= '" & Text3.Text & "' and b.product_code='" & tmpst & "'", DB, adOpenStatic
    If RSS.RecordCount > 1 Then
        stbar.Panels(2).Text = "Select Pack Code  from the List"
        LookUp.Clear = True
        LookUp.query = "select distinct a.pack_type as Type,a.description as Description from ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type and b.packno_code= '" & Text3.Text & "' and b.product_code='" & tmpst & "'"
        LookUp.DefCol = "Description"
        LookUp.Caption = "Pack Type Lisitng"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Text5.Text = LookUp.Fields(0)
            Text6.Text = LookUp.Fields(1)
            LookUp.Clear = True
            
        Else
            Text5.Text = ""
            Text6.Text = ""
            'Text7.SetFocus
        End If
        Exit Sub
        
'''        Frame5.Visible = False
'''        Frame3.Visible = True
'''        Frame3.ZOrder
'''        Buttonframe.Enabled = False
'''        listlb.Caption = "Pack Listing"
'''        Ksldesc1.conn = connectstring
'''        Ksldesc1.Table = "ig_packtype a,IG_RPACKNOS b where a.pack_type=b.pack_type and b.packno_code= '" & Text3.Text & "' and b.product_code='" & tmpst & "'"
'''        Ksldesc1.listfield1 = "a.pack_type"
'''        Ksldesc1.listfield2 = "a.description"
'''        Ksldesc1.SetFocus
        
    Else
        If Not RSS.EOF Then
        Text5.Text = RSS(0)
        Text6.Text = RSS(1)
        End If
     End If

Exit Sub
Text5_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text5_Validate of Form Form1", vbInformation, head
End Sub

Private Sub Text7_KeyPress(KeyAscii As Integer)

On Error GoTo Text7_KeyPress_Error

        If Record_Exists("ig_lot") = False Then Exit Sub
        Frame5.Visible = False
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Lot Detail Listing"
        ksldesc1.conn = connectstring
        listlb.Caption = "Lot Detail Listing"
        ksldesc1.conn = connectstring
        ksldesc1.Table = "ig_lot a,IG_RPACKNOS b  WHERE isnull(invoiced,'N')='N' and a.lot_code=b.lot_code and b.divcode='" & Divcode & "' and PRODUCT_CODE='" & grddatagrid.Columns(2).Text & "'"
        ksldesc1.listfield1 = "a.lot_code"
        ksldesc1.listfield2 = "a.description"
        ksldesc1.SetFocus
        stbar.Panels(2).Text = "Select Lot Code  from the List"

Exit Sub
Text7_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_KeyPress of Form Form1", vbInformation, head

End Sub

Private Sub Text7_Validate(Cancel As Boolean)
'If Opt = "add" And FLG1 = "Y" Then
'If Record_Exists("ig_lot") = False Then Exit Sub
'    Set rss = New Recordset
'    'Easwar rss.Open "select  distinct a.lot_code,a.description  from ig_lot a", db, adOpenStatic
'    rss.Open "select  distinct a.lot_code,a.description  from ig_lot a, IG_RPACKNOS b where a.lot_code=b.lot_code and b.packno_code= '" & Text3.Text & "' and b.product_code='" & tmpst & "' and b.pack_type= '" & Text5.Text & "'", db, adOpenStatic
'        If rss.RecordCount > 1 Then
'        Frame5.Visible = False
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Lot Detail Listing"
'        Ksldesc1.conn = connectstring
'        'Easwar Ksldesc1.Table = "ig_lot a, IG_RPACKNOS b where a.lot_code=b.lot_code and b.packno_code= '" & Text3.Text & "' and b.product_code='" & tmpst & "' and b.pack_type= '" & Text5.Text & "'"
'        Ksldesc1.Table = "ig_lot a"
'        Ksldesc1.listfield1 = "a.lot_code"
'        Ksldesc1.listfield2 = "a.description"
'        Ksldesc1.SetFocus
'        FLG1 = "N"
'        stbar.Panels(2).Text = "Select Lot Code  from the List"
'        Exit Sub
'    Else
'        Text7.Text = rss(0)
'        Text8.Text = rss(1)
'
'    End If
'End If
End Sub

Private Sub Text9_GotFocus()
'If Opt = "add" Or Opt = "mod" Then
'Label9.Caption = "Toal Packs"
'Label10.Visible = False
'Text10.Visible = False
'Set frs = New Recordset
'frs.Open "select pack_no from IG_RPACKNOS where product_code='" & Trim(Text11.Text) & "' and invoiced='N' order by pack_no", db, adOpenStatic
'
'
'End If
End Sub


Private Sub Text9_KeyDown(KeyCode As Integer, Shift As Integer)

Dim TM As New Recordset
Dim tr As New Recordset

On Error GoTo ext

    DB.CommandTimeout = 1000

    If KeyCode = 13 And Option2.value = True Then
        
            Set tr = New Recordset
            If tr.State = 1 Then tr.Close
            tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='WASTE1'", DB, adOpenDynamic, adLockOptimistic
            
            If tr.RecordCount = 0 Then
               ''' DB.Execute "DROP TABLE WASTE1"
                DB.Execute "CREATE TABLE WASTE1(SNO NUMERIC(6),FPNO DECIMAL(12,0),NETWT NUMERIC(12,3),TPNO varchar(10),PACKYEAR VARCHAR(4),ActNetWt  NUMERIC(12,3),Godown varchar(10),Divcode varchar(3),IpAdd Varchar(20))"
            End If
            
            DB.Execute "Delete from WASTE1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'"
            
            sn = 0
            Set chrs = New Recordset
            chrs.Open "SELECT SNO 'S.No',FPNO 'Bale No.',NETWT 'Net Wt.',TPNO 'Yes / No',PackYear,ActNetWt 'Actual Net.Wt.',Godown FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "'", DB, adOpenDynamic, adLockBatchOptimistic
            Set DataGrid1.DataSource = chrs
            DataGrid1.Columns(0).Width = 915.0237
            DataGrid1.Columns(1).Width = 1140.095
            DataGrid1.Columns(2).Width = 1140.095
            DataGrid1.Columns(3).Width = 1005.165
            DataGrid1.Columns(4).Width = 1005.165
            DataGrid1.Columns(5).Width = 1700
            DataGrid1.Columns(4).Visible = True
            
            DataGrid1.Columns(0).Locked = True
            DataGrid1.Columns(1).Locked = True
            DataGrid1.Columns(2).Locked = True
            DataGrid1.Columns(6).Locked = True
            DataGrid1.Columns(2).NumberFormat = "#0.000"
            DataGrid1.Columns(2).Alignment = dbgRight
            DataGrid1.Columns(2).Locked = True
            DataGrid1.Columns(5).NumberFormat = "#0.000"
            DataGrid1.Columns(5).Alignment = dbgRight
            DataGrid1.Columns(4).Locked = True
            
            tmpvl = 1
        
    If chrs.RecordCount <> 0 Then chrs.MoveFirst
      
         ADOSECONDARYRS.MoveFirst
         While Not ADOSECONDARYRS.EOF
          If ADOSECONDARYRS("packno_code") = Text3.Text Then
          If ADOSECONDARYRS("pack_type") = Text5.Text Then
          If ADOSECONDARYRS("spack_no") <> "" And ADOSECONDARYRS("epack_no") <> "" Then
              Set Rs = New Recordset
              Rs.Open "Select distinct pack_no,product_code from ig_rpacknos where pack_no between '" & ADOSECONDARYRS("Spack_no") & "' and '" & ADOSECONDARYRS("epack_no") & "' and product_code='" & ADOSECONDARYRS("product_code") & "' and divcode='" & Divcode & "' and packno_code ='" & ADOSECONDARYRS("packno_code") & "' and pack_type='" & ADOSECONDARYRS("pack_type") & "'", DB
              'KK1 = ""
              If KK1 <> "" Then
                   KK1 = KK1 & ",'" & Rs("product_code") & "'"
              Else
                  KK1 = "'" & Rs("product_code") & "'"
              End If
              
              While Not Rs.EOF
              
                If KK <> "" Then
                   KK = KK & ",'" & Rs("pack_no") & "'"
                   'KK1 = KK1 & ",'" & adoSecondaryRS("Epack_no") & "'"
                Else
                  KK = "'" & Rs("pack_no") & "'"
                   'KK1 = "'" & adoSecondaryRS("Epack_no") & "'"
                End If
                Rs.MoveNext
              Wend
          End If
         ' End If
          End If
          End If
        ADOSECONDARYRS.MoveNext
        Wend
        
        If KK = "" Then
          KK = 0: KK1 = 0
        End If
        ADOSECONDARYRS.MoveLast
        

        Set Rs = New Recordset
        On Error Resume Next
        
        Rs.Open "select pack_no,case when isnull(SRT_kgs,0)=0 then (pack_wt-tare) else isnull(SRT_kgs,0) end as pack_wt,PACK_YEAR ,Godown from IG_RPACKNOS where divcode='" & Divcode & "' and product_code='" & tmpst & "' and pack_type= '" & Text5.Text & "' and lot_code='WL'  and isnull(invoiced,'N')='N' AND PRODUCT_CODE LIKE 'W%' AND PACKNO_CODE='" & Trim(Text3.Text) & "' and divcode='" & Divcode & "' and pack_no not in (select pack_no from ig_rpacknos where  divcode='" & Divcode & "' and product_code='" & tmpst & "' and pack_type= '" & Text5.Text & "' and isnull(invoiced,'N')='N' AND PACKNO_CODE='" & Text3.Text & "' and pack_no in(" & KK & ") and product_code in (" & KK1 & ")) AND  isnull(isskgs,0)=0 order by pack_no", DB
         
        ''Easwar If rs.RecordCount > 0 And rs.RecordCount >= Val(Text9.Text) Then
        If Rs.RecordCount > 0 Then
            Rs.MoveFirst
            j = 1
            For I = 1 To Rs.RecordCount Step 1
                DB.Execute "insert into waste1 values(" & j & "," & Rs(0) & "," & Rs("pack_wt") & "," & Rs(0) & " ,'" & Rs("PACK_YEAR") & "'," & Rs("pack_wt") & ",'" & Rs("Godown") & "','" & Divcode & "','" & LocalIP & "')"
                 j = j + 1
                Rs.MoveNext
            Next
            
            ActPackWt = 0
            
            Set Rs = New Recordset
            Rs.Open "select * from waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "' order by sno", DB, adOpenStatic
            Text2.Text = 0
            If Rs.RecordCount <> 0 Then
                Do While Not Rs.EOF
                    chrs.AddNew
                    sn = sn + 1
                    
                    DataGrid1.Columns(0).Text = val(sn)
                    DataGrid1.Columns(1).Text = Rs(1).value
                    DataGrid1.Columns(2).Text = Rs("netwt").value
                    DataGrid1.Columns(4).Text = Rs("PACKYEAR")
                    DataGrid1.Columns(5).Text = Rs("netwt").value
                    DataGrid1.Columns(6).Text = Rs("godown")
                    
                    If sn <= val(Text9.Text) Then
                        DataGrid1.Columns(3).Text = "Y"
                        ActPackWt = val(ActPackWt & "") + val(Rs("netwt") & "")
                    Else
                        DataGrid1.Columns(3).Text = "N"
                    End If
                    
                    Text2.Text = val(Text2.Text) + ((Rs(1).value - Rs(1).value) + 1)
                    
                    Rs.MoveNext
                Loop
                
                Text13.Text = Format(val(ActPackWt & ""), "#0.000")
                
            chrs.MoveFirst

                
            DataGrid1_AfterColEdit 3
            
            DataGrid1.Col = 2
            DataGrid1.SetFocus

            End If
        End If
'        Exit Sub
'        Text9.SetFocus
    End If
Exit Sub
ext:
            MsgBox "No Matching Record(s) Found.", vbInformation, head

 Exit Sub
Text9_KeyDown_Error:
    
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_KeyDown of Form Form1", vbInformation, head
End Sub

Private Sub Text9_KeyPress(KeyAscii As Integer)
'Call ToNumber(Text9, 5, KeyAscii)
End Sub

Private Sub Text9_LostFocus()
'Call Text9_KeyDown(13, 0)
End Sub

Private Sub Timer1_Timer()
On Error GoTo Errh
    Set Rs = New Recordset
   
    Dim inc As Integer
    Set Rst = New Recordset
    ProductCode = ""
    packno = 0
    Packdocno = 0
    Rst.Open "select items from dbo.split('" & Text15.Text & "',',')", DB
    inc = 1
    Do While Not Rst.EOF
        If inc = 1 Then
            ProductCode = Rst(0)
        ElseIf inc = 2 Then
            packno = Rst(0)
        ElseIf inc = 3 Then
            Packdocno = Rst(0)
        End If
        inc = inc + 1
        Rst.MoveNext
    Loop
        If chrs.RecordCount <> 0 Then chrs.MoveFirst
      
         ADOSECONDARYRS.MoveFirst
         While Not ADOSECONDARYRS.EOF
          If ADOSECONDARYRS("packno_code") = Text3.Text Then
          If ADOSECONDARYRS("pack_type") = Text5.Text Then
          If ADOSECONDARYRS("spack_no") <> "" And ADOSECONDARYRS("epack_no") <> "" Then
              Set Rs = New Recordset
              Rs.Open "Select distinct pack_no,product_code from ig_rpacknos where pack_no between '" & ADOSECONDARYRS("Spack_no") & "' and '" & ADOSECONDARYRS("epack_no") & "' and product_code='" & ADOSECONDARYRS("product_code") & "' and divcode='" & Divcode & "' and packno_code ='" & ADOSECONDARYRS("packno_code") & "' and pack_type='" & ADOSECONDARYRS("pack_type") & "'", DB
              'KK1 = ""
              If KK1 <> "" Then
                   KK1 = KK1 & ",'" & Rs("product_code") & "'"
              Else
                  KK1 = "'" & Rs("product_code") & "'"
              End If
              
              While Not Rs.EOF
              
                If KK <> "" Then
                   KK = KK & ",'" & Rs("pack_no") & "'"
                   'KK1 = KK1 & ",'" & adoSecondaryRS("Epack_no") & "'"
                Else
                  KK = "'" & Rs("pack_no") & "'"
                   'KK1 = "'" & adoSecondaryRS("Epack_no") & "'"
                End If
                Rs.MoveNext
              Wend
          End If
         ' End If
          End If
          End If
        ADOSECONDARYRS.MoveNext
        Wend
        
        If KK = "" Then
          KK = 0: KK1 = 0
        End If
        ADOSECONDARYRS.MoveLast
        
'          Set tr = New Recordset
'            tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='waste1'", DB
'
''            If tr.RecordCount = 1 Then
''                DB.Execute "DROP TABLE WASTE1"
''            End If
''                db.Execute "CREATE TABLE waste(SNO NUMERIC(6),FPNO NUMERIC(6),TPNO NUMERIC(5))"
'            If tr.RecordCount = 0 Then
'                'DB.Execute "CREATE TABLE waste1(SNO NUMERIC(6),FPNO DECIMAL(10,0),TPNO DECIMAL(10,0),Packyear varchar(4),PackWt numeric(10,3),ActPackWt numeric(10,3),Godown varchar(10),Divcode varchar(10), IpAdd varchar(20))"
'                DB.Execute "CREATE TABLE WASTE1(SNO NUMERIC(6),FPNO DECIMAL(12,0),NETWT NUMERIC(12,3),TPNO varchar(10),PACKYEAR VARCHAR(4),ActNetWt  NUMERIC(12,3),Godown varchar(10),Divcode varchar(3),IpAdd Varchar(20))"
'            End If 'Else
        
        
      Set Rs = New Recordset
    Rs.Open "select pack_no,case when isnull(SRT_kgs,0)=0 then (pack_wt-tare) else isnull(SRT_kgs,0) end as pack_wt,PACK_YEAR ,Godown from IG_RPACKNOS where divcode='" & Divcode & "' and product_code='" & tmpst & "' AND PRODUCT_CODE='" & Trim(ProductCode) & "' AND PACK_NO='" & val(packno) & "' AND DOCNO='" & val(Packdocno) & "' and pack_type= '" & Text5.Text & "' and lot_code='WL'  and isnull(invoiced,'N')='N' AND PRODUCT_CODE LIKE 'W%' AND PACKNO_CODE='" & Trim(Text3.Text) & "' and divcode='" & Divcode & "' and pack_no not in (select pack_no from ig_rpacknos where  divcode='" & Divcode & "' and product_code='" & tmpst & "' and pack_type= '" & Text5.Text & "' and isnull(invoiced,'N')='N' AND PACKNO_CODE='" & Text3.Text & "' and pack_no in(" & KK & ") and product_code in (" & KK1 & ")) AND  isnull(isskgs,0)=0 order by pack_no", DB
         
        ''Easwar If rs.RecordCount > 0 And rs.RecordCount >= Val(Text9.Text) Then
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        j = 1
        Set Rsch = New Recordset
        Rsch.Open "select divcode from  waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "' and FPNO ='" & Rs(0) & "' and PACKYEAR='" & Rs("PACK_YEAR") & "' and Godown='" & Rs("Godown") & "'", DB, adOpenStatic
        
        If Rsch.EOF Then
            For I = 1 To Rs.RecordCount Step 1
                DB.Execute "insert into waste1 values(" & j & "," & Rs(0) & "," & Rs("pack_wt") & "," & Rs(0) & " ,'" & Rs("PACK_YEAR") & "'," & Rs("pack_wt") & ",'" & Rs("Godown") & "','" & Divcode & "','" & LocalIP & "')"
                j = j + 1
                Rs.MoveNext
            Next
        End If
        ActPackWt = 0
        
        Set chrs = New Recordset
        chrs.Open "SELECT SNO 'S.No',FPNO 'Bale No.',NETWT 'Net Wt.',TPNO 'Yes / No',PackYear,ActNetWt 'Actual Net.Wt.',Godown FROM waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "' and 1=2", DB, adOpenDynamic, adLockBatchOptimistic
        Set DataGrid1.DataSource = chrs
        DataGrid1.Columns(0).Width = 915.0237
        DataGrid1.Columns(1).Width = 1140.095
        DataGrid1.Columns(2).Width = 1140.095
        DataGrid1.Columns(3).Width = 1005.165
        DataGrid1.Columns(4).Width = 1005.165
        DataGrid1.Columns(5).Width = 1700
        DataGrid1.Columns(4).Visible = True
        DataGrid1.Columns(0).Locked = False
        DataGrid1.Columns(1).Locked = False
        DataGrid1.Columns(2).Locked = False
        DataGrid1.Columns(2).NumberFormat = "#0.000"
        DataGrid1.Columns(2).Alignment = dbgRight
        DataGrid1.Columns(2).Locked = True
        DataGrid1.Columns(5).NumberFormat = "#0.000"
        DataGrid1.Columns(5).Alignment = dbgRight
        DataGrid1.Columns(4).Locked = True
      
        Set Rs = New Recordset
        Rs.Open "select * from waste1 where divcode='" & Divcode & "' and ipAdd='" & LocalIP & "' order by sno", DB, adOpenStatic
        Text2.Text = 0
        sn = 0
        If Rs.RecordCount <> 0 Then
            Do While Not Rs.EOF
                chrs.AddNew
                sn = sn + 1
                DataGrid1.Columns(0).Text = val(sn)
                DataGrid1.Columns(1).Text = Rs(1).value
                DataGrid1.Columns(2).Text = Rs("netwt").value
                DataGrid1.Columns(4).Text = Rs("PACKYEAR")
                DataGrid1.Columns(5).Text = Rs("netwt").value
                DataGrid1.Columns(6).Text = Rs("godown")
                    
              '  If sn <= Val(Text9.Text) Then
                    DataGrid1.Columns(3).Text = "Y"
                    ActPackWt = val(ActPackWt & "") + val(Rs("netwt") & "")
'                Else
'                    On Error Resume Next
'                    DataGrid1.Columns(3).Text = "N"
'                End If
                    
                Text2.Text = val(Text2.Text) + ((Rs(1).value - Rs(1).value) + 1)
                    
                Rs.MoveNext
            Loop
                
            Text13.Text = Format(val(ActPackWt & ""), "#0.000")
            chrs.MoveFirst

                
            DataGrid1_AfterColEdit 3
            
            DataGrid1.Col = 2
            DataGrid1.SetFocus
        End If
    End If
    On Error Resume Next
     Text15.Text = ""
     Text15.SetFocus
     
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtfields_Change " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " WASTE DESPATCH TIMER"

End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Err
Select Case Index
Case 2
If ISSFLG <> "P" Then
    Set Rs = New Recordset
    Rs.Open "select * from  fa_slmas where slcode='" & Trim(txtfields(2).Text) & "'", DB, adOpenDynamic
Else
    Set Rs = New Recordset
    Rs.Open "select CNTCD,CNTNAME FROM RM_COUNT WHERE CNTCD='" & Trim(txtfields(2).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
End If
If (txtfields(2).Text <> "") Then
        txtfields(2).Text = Rs(0)
        txtfields(3).Text = Rs(1)
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Exit Sub
Else
        txtfields(2).Text = ""
        txtfields(3).Text = ""
End If

Case 8
    Set Rs = New Recordset
    Rs.Open "select * from  fa_slmas where slcode='" & Trim(txtfields(8).Text) & "'", DB, adOpenDynamic

If (txtfields(8).Text <> "") Then
        txtfields(8).Text = Rs(0)
        txtfields(9).Text = Rs(1)
        Exit Sub
Else
        txtfields(8).Text = ""
        txtfields(9).Text = ""
End If

Case 12
        Set Rs = New Recordset
        If UCase(CustID) = "KUMARAGIRI" Then
            Rs.Open "select slname cname from  ig_delmas where slcode='" & Trim(txtfields(12).Text) & "'", DB, adOpenDynamic
        Else
            Rs.Open "select cname from  ig_deladd where Delcode='" & Trim(txtfields(12).Text) & "'", DB, adOpenDynamic
        End If
        If Not Rs.EOF Then
            txtfields(10).Text = Rs(0)
        Else
            txtfields(10).Text = ""
        End If

End Select
Exit Sub
Err:
End Sub
Private Sub txtFields_GotFocus(Index As Integer)
If Index = 8 Then
    If txtfields(2).Text = " " Or Len(txtfields(2).Text) = 0 Then
        txtfields(2).SetFocus
    End If
End If
End Sub


Private Sub lovok_Click()
Dim MAXDANO As Recordset
    SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case ksldesc1.listfield1
Case "a.bo_type"
      txtfields(0).Text = ksldesc1.code
      txtfields(1).Text = ksldesc1.Description
      query_mode
Case "doc_type"
        txtfields(0).Text = Trim(Mid$(Trim(ksldesc1.Description), 1, InStr(ksldesc1.Description, "-") - 1))
        Set Rs = New Recordset
        Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        
        Last_docno = val(Rs(0)) + 1
''        Set MAXDANO = New Recordset
''        MAXDANO.Open "SELECT ISNULL(MAX(BO_NO),0) FROM IG_RBOHD WHERE DATE BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic
''        If MAXDANO.RecordCount > 0 Then
''            If MAXDANO(0) > 0 Then
''            txtfields(1).Text = Left(MAXDANO(0), 5) & Format(Val(Right(MAXDANO(0), 3)) + 1, "000")
''            Else
''            txtfields(1).Text = YearNo & "000001"
''            End If
''        Else
''            txtfields(1).Text = YearNo & "000001"
''        End If
        txtfields(1).Text = YearNo & Padl(CStr(Last_docno), 6, "0")
        txtfields(1).Locked = False
        New1DocNo = Rs(0) + 1
        Combo1.SetFocus
Case "a.slcode"
        txtfields(2).Text = ksldesc1.code
        txtfields(3).Text = ksldesc1.Description
        grddatagrid.Col = 2
        grddatagrid.SetFocus

Case "a.cont_type"
        Set Rs = New Recordset
        Rs.Open "select cont_no from ig_contdt where cont_NO= '" & Trim(ksldesc1.Description) & "'", DB, adOpenStatic, adLockOptimistic
        If Rs.RecordCount > 0 Then
        grddatagrid.Columns(0).Text = ksldesc1.code
        grddatagrid.Columns(1).Text = ksldesc1.Description
        'dr = Mid$(grddatagrid.Columns(0).Text, 3, Len(grddatagrid.Columns(0).Text))
        'sr = Mid$(grddatagrid.Columns(0).Text, 1, 2)
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Exit Sub
    Else
        MsgBox "Selected cont_no is not defined in contdt", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
    End If
   
Case "A.product_code"
        grddatagrid.Columns(2).Text = ksldesc1.code
        grddatagrid.Columns(3).Text = ksldesc1.Description
'        Set rss = New Recordset
'        rss.Open "select pack_type from IG_RPRODUCT where product_code ='" & Trim(Ksldesc1.code) & "'", db, adOpenStatic
'        If rss.RecordCount > 0 Then
'            grdDataGrid.Columns(8).Text = rss("pack_type")
'        End If
'        Set rs = New Recordset
'        rs.Open "select product_code from ig_CONTDT where product_code= '" & grdDataGrid.Columns(2).Text & "'", db, adOpenStatic, adLockOptimistic
'        If rs.RecordCount > 0 Then
            SSTab1.Enabled = False
            Set Rs = New Recordset
'            Set rs = New Recordset
            Rs.Open "select distinct product_code from IG_RPACKNOS where product_code= '" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic, adLockOptimistic
            If Rs.RecordCount > 0 Then
                'grdDataGrid.COL = 4
                'grdDataGrid.SetFocus
                Frame5.Visible = True
                Text3.Enabled = True
                Text5.Enabled = True
                Text7.Enabled = True
                Frame5.ZOrder 0
                Text11.Text = ksldesc1.Description
                Text2.Text = ""
                Text3.Text = ""
                Text4.Text = ""
                Text5.Text = ""
                Text6.Text = ""
                Text7.Text = ""
                Text8.Text = ""
                Text9.Text = ""
                Text10.Text = ""
                Set Rs = New Recordset
                Rs.Open "select * from IG_RPRODUCT where product_code='" & Trim(grddatagrid.Columns(2).Text) & "'", DB
                tmpst = Rs(1).value
                Set DataGrid1.DataSource = Nothing
                Text3.SetFocus
'                Set rs = New Recordset
'                rs.Open "select b.pack_type,b.description as packdesc,c.packno_code,c.description as packdes1 from IG_RPACKNOS a,ig_packtype b,ig_packnotype c where a.pack_type=b.pack_type and c.packno_code=a.packno_code and product_code='" & Trim(grddatagrid.Columns(2).Text) & "' and a.divcode='" & divcode & "' and invoiced='N'", DB, adOpenStatic
'                If Not rs.EOF Then
'                        Text3.Text = rs("packno_code")
'                        Text4.Text = rs("packdes1")
'                        Text5.Text = rs("pack_type")
'                        Text6.Text = rs("packdesc")
'                        Option1.SetFocus
'                        BUTTON(9).Enabled = False
'                End If
                Exit Sub
            Else
                MsgBox "The Product Code selected is not defined in IG_RPACKNOS", vbInformation, head
                grddatagrid.Columns(2).Text = " "
                grddatagrid.Columns(3).Text = " "
                grddatagrid.Col = 2
                SSTab1.Enabled = True
                grddatagrid.SetFocus
            End If
        grddatagrid.AllowUpdate = True
        
   Case "a.lot_code"
        FLG1 = "Y"
        Set Rs = New Recordset
        Rs.Open "select * from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & Text3.Text & "' and pack_type= '" & Text5.Text & "' and isnull(invoiced,'N')='N'  and product_code='" & tmpst & "' and lot_code='" & ksldesc1.code & "'", DB
        Frame5.Visible = True
        Frame5.ZOrder 0
    If Rs.RecordCount = 0 Then
        MsgBox "selected Lot is not Defined in IG_RPACKNOS", vbInformation, head
        Text7.Text = ""
        Text7.SetFocus
    Else
        Text7.Text = ksldesc1.code
        Text8.Text = ksldesc1.Description
        Buttonframe.Enabled = True
        Text9.SetFocus
        Text3.Enabled = True
        Text5.Enabled = True
        Text7.Enabled = True
        Option1.SetFocus
    End If
        stbar.Panels(2).Text = ""

Case "a.pack_type"
        Frame5.Visible = True
        Frame5.ZOrder 0
'   grdDataGrid.Columns(8).Text = Ksldesc1.code
   Set Rs = New Recordset
        Rs.Open "select * from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & Text3.Text & "' and pack_type= '" & ksldesc1.code & "' and isnull(invoiced,'N')='N'  and product_code='" & tmpst & "'", DB, adOpenStatic, adLockOptimistic
        If Rs.RecordCount > 0 Then
            Text5.Text = ksldesc1.code
            Text6.Text = ksldesc1.Description

        Else
            MsgBox "selected Pack Type is not Defined in IG_RPACKNOS", vbInformation, head
            Text5.Text = ""
            Text5.SetFocus
            Exit Sub
        End If
        
Case "city"
        txtfields(9).Text = ksldesc1.Description
        txtfields(11).SetFocus
        
Case "cntcd"
        txtfields(2).Text = ksldesc1.code
        txtfields(3).Text = ksldesc1.Description
        grddatagrid.Col = 2
        grddatagrid.SetFocus
         
  Case "a.packno_code"
  
        'grdDataGrid.Columns(5).Text = Ksldesc1.code
        Frame5.Visible = True
        Frame5.ZOrder 0
        Set Rs = New Recordset
        'rs.Open "select * from IG_RPACKNOS where divcode='" & divcode & "' and pack_year= " & grdDataGrid.Columns(4).Text & "  and packno_code= '" & grdDataGrid.Columns(5).Text & "' and invoiced='N'", db, adOpenStatic, adLockOptimistic
        Rs.Open "select * from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & ksldesc1.code & "' and isnull(invoiced,'N')='N' and product_code='" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic, adLockOptimistic
        If Rs.RecordCount > 0 Then
            Text3.Text = ksldesc1.code
            Text4.Text = ksldesc1.Description
            Text5.SetFocus
            Exit Sub
        Else
            MsgBox "The selected Pack No code is not defined in Packnos", vbInformation, head
            SSTab1.Visible = True
            Text3.Text = ""
            Text3.SetFocus
        End If
    
End Select
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If Opt = "add" Then
Select Case Index
Case 0
    If Record_Exists("ig_doccontrol where doc_type='B'") = False Then Exit Sub
Case 2

End Select
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Form1", vbInformation, head
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

Select Case Index
Case 2, 8
    Call ToAlphanum(grddatagrid, 7, KeyAscii)
Case 11
    tonum txtfields(11), 7, KeyAscii
Case 4
    ToAlphanum txtfields(4), 15, KeyAscii
    ToUpCase txtfields(4), KeyAscii, 15
Case 12
    ToAlphaNumber txtfields(Index), 12, KeyAscii
    ToUpCase txtfields(Index), KeyAscii, 12
End Select
Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TXTFIELDS_KeyPress of Form Form1", vbInformation, head
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Frame3.Visible = True Then ksldesc1.SetFocus
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 1
          Set RSS = New Recordset
          RSS.Open "select bo_no from ig_rbohd where divcode='" & Divcode & "' ", DB, adOpenStatic
          Do While Not RSS.EOF
                If txtfields(1).Text = RSS("bo_no") Then
                  MsgBox "Despatch Number Already Exists", vbInformation, vbhead
                  txtfields(1).SetFocus
                End If
          RSS.MoveNext
          Loop
            'if txtfields(1).text
            
        Case 11
'            txtfields(10).SetFocus
    End Select
    
End If

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LostFocus of Form Form1", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

    If Opt = "add" Then
        If Index = 0 Then
'            If Trim(txtFields(0).Text) <> "" Then
                Set Rs = New Recordset
                Rs.Open "select doc_type,doc_ref from ig_doccontrol where doc_type='B' and doc_REF='" & Trim(txtfields(0).Text) & "' AND YEAR_NO='" & Year_No & "'", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                    txtfields(0).Text = Rs("doc_REF")
                    Set Rs = New Recordset
                    Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                    Last_docno = Rs(0) + 1
                    txtfields(1).Text = YearNo & Padl(CStr(Last_docno), 6, "0")
                    txtfields(1).Locked = False
                    New1DocNo = Rs(0) + 1
                    txtfields(2).SetFocus
                    Exit Sub
                Else
                    stbar.Panels(2).Text = "Select  Delivery  from the List"
                    LookUp.Clear = True
                    LookUp.query = "select distinct doc_type as Type,doc_ref as RefNo,b.description as Description from ig_doccontrol a,IG_BOtype b where a.divcode=b.divcode and  b.bo_type = a.doc_ref and a.doc_type='B' and a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.description like '%JOB%' "  '
                    LookUp.DefCol = "Description"
                    LookUp.Caption = "Delivery Detail Listing"
                    LookUp.ALIGN = "1,2000,5000"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(0).Text = LookUp.Fields(1)
                        LookUp.Clear = True
'                        Set Rs = New Recordset
'                        Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DOC_REF='" & txtfields(0).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
'
'                        Last_docno = Val(Rs(0)) + 1
'                        txtfields(1).Text = YearNo & Padl(CStr(Last_docno), 6, "0")
'                        txtfields(1).Locked = False
'                        New1DocNo = Rs(0) + 1
                        Combo1.SetFocus
                    Else
                        Call BUTTON_Click(10)
                    End If
                    Exit Sub
                    'SSTab1.Visible = False
''                    Frame3.Visible = True
''                    Frame3.ZOrder
''                    listlb.Caption = "Delivery Detail Listing"
''                    Ksldesc1.conn = connectstring
''                    Ksldesc1.Table = "ig_doccontrol a,IG_BOtype b where b.bo_type = a.doc_ref and a.doc_type='B' and a.divcode=b.divcode and a.divcode='" & divcode & "' and a.description like '%WASTE%'"
''                    Ksldesc1.listfield1 = "doc_type"
''                    Ksldesc1.listfield2 = "doc_ref +' - '+ b.description"
''                    Ksldesc1.SetFocus
                    
                End If
     '       Else
  '              txtFields(0).SetFocus
  '              Exit Sub
   '         End If
        End If
        
        If Index = 2 Then
            If Trim(txtfields(2).Text) <> "" Then
                If Record_Exists("fa_slmas where 1=2 " & custstr) = False Then Exit Sub
                If ISSFLG = "T" Then
                    Set Rs = New Recordset
                    Rs.Open "select slcode,slname,isnull(agent_code,'') agent_code from fa_slmas where slcode = '" & Trim(txtfields(2).Text) & "' and isnull(active,'N')='Y'", DB, adOpenStatic
                ElseIf ISSFLG = "P" Then
                    Set Rs = New Recordset
                    Rs.Open "Select cntcd as slcode,cntname as slname,'' agent_code from rm_count where cntcd= '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
                ElseIf ISSFLG = "S" Then
                    Set Rs = New Recordset
                    Rs.Open "select slcode,slname,isnull(agent_code,'') agent_code from fa_slmas A where slcode = '" & Trim(txtfields(2).Text) & "' and isnull(active,'N')='Y' ", DB, adOpenStatic
                End If
                If Rs.RecordCount > 0 Then
                    txtfields(2).Text = Rs("slcode")
                    txtfields(3).Text = Rs("slname")
                    txtfields(8).Text = Rs("agent_code")
                    
                    Set RsAgnt = New Recordset
                    RsAgnt.Open "Select slname from fa_slmas where slcode='" & Trim(txtfields(8).Text) & "'  ", DB, adOpenStatic
                    If RsAgnt.RecordCount > 0 Then
                        txtfields(9).Text = RsAgnt("slname")
                    End If
                    
                    txtfields(4).SetFocus
                    Exit Sub
                Else
                    stbar.Panels(2).Text = "Select  Customer  from the List"
                    LookUp.Clear = True
                    If ISSFLG = "T" Then
                        LookUp.query = "select a.slcode as Code,a.slname as Description,isnull(agent_code,'') Agent from fa_slmas a where  isnull(active,'N')='Y'"
                    ElseIf ISSFLG = "S" Then
                        LookUp.query = "select a.slcode as Code,a.slname as Description,isnull(agent_code,'') Agent from fa_slmas a where 1=2 " & custstr & ""
                    End If
                    LookUp.DefCol = "Description"
                    LookUp.Caption = "Customer Listing"
                    LookUp.ALIGN = "2000,5000,0"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(2).Text = LookUp.Fields(0)
                        txtfields(3).Text = LookUp.Fields(1)
                        txtfields(8).Text = LookUp.Fields(2)
                        
                        
                        Set RsAgnt = New Recordset
                        RsAgnt.Open "Select slname from fa_slmas where slcode='" & Trim(txtfields(8).Text) & "'  ", DB, adOpenStatic
                        If RsAgnt.RecordCount > 0 Then
                            txtfields(9).Text = RsAgnt("slname")
                        End If
                        
                        LookUp.Clear = True
                        grddatagrid.Col = 2
                        grddatagrid.SetFocus
                    Else
                        txtfields(2).Text = ""
                        txtfields(3).Text = ""
                        txtfields(2).SetFocus
                    End If
                    Exit Sub
                End If
            Else
                    stbar.Panels(2).Text = "Select  Customer  from the List"
                    LookUp.Clear = True
'                    If ISSFLG = "S" Then
'                        LookUp.query = "select a.slcode as 'Customer Id',a.slname as Name,isnull(agent_code,'') Agent from fa_slmas a where 1=2 " & custstr
'                    Else
                        LookUp.query = "select a.slcode as 'Customer Id',a.slname as Name,isnull(agent_code,'') Agent from fa_slmas a  inner join RM_JobOrderhd aa on aa.slcode=a.slcode inner join RM_JobOrderdt b on aa.docno=b.docno and aa.docdate=b.docdate and aa.divcode=b.divcode where   isnull(active,'N')='Y' and aa.divcode='" & Divcode & "' and b.Product_Type='W'"
                   ' End If
                    LookUp.DefCol = "Description"
                    LookUp.Caption = "Customer Listing"
                    LookUp.ALIGN = "2000,5000,0"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(2).Text = LookUp.Fields(0)
                        txtfields(3).Text = LookUp.Fields(1)
                        txtfields(8).Text = LookUp.Fields(2)
                        
                        Set RsAgnt = New Recordset
                        RsAgnt.Open "Select slname from fa_slmas where slcode='" & Trim(txtfields(8).Text) & "'  ", DB, adOpenStatic
                        If RsAgnt.RecordCount > 0 Then
                            txtfields(9).Text = RsAgnt("slname")
                        End If
                        
                        LookUp.Clear = True
                        grddatagrid.Col = 2
                        grddatagrid.SetFocus
                    Else
                        txtfields(2).Text = " "
                        txtfields(3).Text = " "
                        txtfields(2).SetFocus
                    End If
                    Exit Sub
                Exit Sub
            End If
        End If
    End If
    
    If Index = 8 Then
        If Record_Exists("fa_slmas where 1=2 " & Agentstr & "") = False Then Exit Sub
            Set Rs = New Recordset
            Rs.Open "select slcode,slname from fa_slmas A where slcode = '" & Trim(txtfields(8).Text) & "' and isnull(active,'N')='Y' ", DB, adOpenStatic
        
        If Rs.RecordCount > 0 Then
            txtfields(8).Text = Rs("slcode")
            txtfields(9).Text = Rs("slname")
            Exit Sub
        Else
            stbar.Panels(2).Text = "Select  Customer  from the List"
            LookUp.Clear = True
            LookUp.query = "select a.slcode as Code,a.slname as Description from fa_slmas a where 1=2 " & Agentstr
            LookUp.DefCol = "Description"
            LookUp.Caption = "Agent Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
                txtfields(8).Text = LookUp.Fields(0)
                txtfields(9).Text = LookUp.Fields(1)
                LookUp.Clear = True
            Else
                txtfields(8).Text = ""
                txtfields(9).Text = ""
                If wasteallot = True Then
                    txtfields(8).SetFocus
                    Cancel = True
                End If
            End If
            Exit Sub
        End If
        End If
        
     If Index = 12 Then
         Set Rs = New Recordset
         If UCase(CustID) = "KUMARAGIRI" Then
            Rs.Open "select slcode,slname cname from ig_delmas where slcode = '" & Trim(txtfields(12).Text) & "'  ", DB, adOpenStatic
         Else
            Rs.Open "select slcode,cname from ig_deladd where slcode = '" & Trim(txtfields(12).Text) & "'", DB, adOpenStatic
         End If
         If Rs.EOF Then
          stbar.Panels(2).Text = "Select Delivery Details from the List"
                  LookUp.Clear = True
                  If UCase(CustID) = "KUMARAGIRI" Then
                    LookUp.query = "select a.slcode as CustomerCode,a.slname as CustomerName  from ig_delmas a where  1=2   " & CustStr2 & ""
                  Else
                    LookUp.query = "select a.delcode as CustomerCode,a.CName as CustomerName  from ig_deladd a where slcode='" & txtfields(2).Text & "'"
                  End If
                  LookUp.DefCol = "Delivery Address"
                  LookUp.ALIGN = "1500,3500"
                  LookUp.Caption = "Delivery Detail Listing"
                  LookUp.Show vbModal
                If LookUp.Cancel = False Then
                      txtfields(12).Text = LookUp.Fields(0)
                      txtfields(10).Text = LookUp.Fields(1)
                      LookUp.Clear = True
                Else
                      txtfields(12).Text = ""
                      txtfields(10).SetFocus
                      Exit Sub
                End If
           End If
     End If
        
    If Index = 11 Then
        
         Set Rs = New Recordset
        Rs.Open "select aa.docno'Document No.',aa.docDate 'Document Date' ,b.Product_Name ,b.Product_Code from RM_JobOrderhd aa inner join RM_JobOrderdt b on aa.docno=b.docno and aa.docdate=b.docdate and aa.divcode=b.divcode where   aa.divcode='" & Divcode & "' and b.Product_Type='W' and cast(aa.docno as varchar) = '" & Trim(txtfields(11).Text) & "' and aa.docDate='" & Format(DTPicker3.value, "yyyy-mm-dd") & "'", DB, adOpenStatic
         
         If Rs.EOF Then
                    stbar.Panels(2).Text = "Select Job Order Details from the List"
                    LookUp.Clear = True
                    LookUp.query = "select aa.docno'Document No.',aa.docDate 'Document Date' ,b.Product_Name ,b.Product_Code from RM_JobOrderhd aa inner join RM_JobOrderdt b on aa.docno=b.docno and aa.docdate=b.docdate and aa.divcode=b.divcode where   aa.divcode='" & Divcode & "' and b.Product_Type='W' and b.Quantity-isnull(b.DelQty,0)>0 and aa.docdate<='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'"
               
                  LookUp.DefCol = "Delivery Address"
                  LookUp.ALIGN = "1500,1500,3500,1500"
                  LookUp.Caption = "Job Order Listing"
                  LookUp.Show vbModal
                If LookUp.Cancel = False Then
                      txtfields(11).Text = LookUp.Fields(0)
                      DTPicker3.value = LookUp.Fields(1)
                      LookUp.Clear = True
                Else
                      txtfields(11).Text = ""
                      txtfields(11).SetFocus
                      Cancel = True
                      Exit Sub
                End If
           End If
     End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form Form1", vbInformation, head
End Sub
Public Sub GRDALIGN()
intervalMinutes = -1
On Error GoTo GRDALIGN_Error

grddatagrid.Columns(0).Width = 0
grddatagrid.Columns(1).Width = 840.189
grddatagrid.Columns(2).Width = 650
grddatagrid.Columns(3).Width = 4000 '3764.977
grddatagrid.Columns(4).Width = 1184.882
grddatagrid.Columns(5).Width = 1005.165
grddatagrid.Columns(6).Width = 1379.906
grddatagrid.Columns(7).Width = 1474.016
grddatagrid.Columns(8).Width = 1000 '1275.024
grddatagrid.Columns(9).Width = 1350 '1474.016
grddatagrid.Columns(9).NumberFormat = "#.0000"
grddatagrid.Columns(9).Alignment = dbgRight
grddatagrid.Columns(10).Width = 1200
grddatagrid.Columns(11).Width = 1200
grddatagrid.Columns(11).Locked = True
Exit Sub
GRDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDALIGN of Form Form1", vbInformation, head

End Sub
Public Sub ToAlpha(fld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(fld) <= maxlen Then
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 9 Or KeyAscii = 46 Or KeyAscii = 44 Or KeyAscii = 13) Then
            KeyAscii = 0
    End If
Else
    KeyAscii = 0
End If
End Sub
Private Sub Check2_Click()
If Check2.value = 1 And Opt = "add" Then
Dim bBales, bnetkg As Double
    Set Rsparm = New Recordset
    Rsparm.Open "Select isnull(PrePackAdvise_Flg,'N') from ig_rparam where divcode='" & Divcode & "'", DB
    
    Set Rs = New Recordset
    
    If Rsparm(0) = "Y" Then
        Rs.Open "select distinct cust_code from IG_RPackingAdvise  WHERE divcode='" & Divcode & "' and isnull(Desp_Flg,'N')='N' and bo_type='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
    Else
        Rs.Open "select distinct cust_code from IG_RPACKDETAILS  WHERE divcode='" & Divcode & "' and isnull(Desp_Flg,'N')='N' and bo_type='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
    End If
    
    If Rs.EOF Then
        MsgBox "No Records Found"
        Exit Sub
    End If
    
    LookUp.Clear = True
    If Rsparm(0) = "Y" Then
        LookUp.query = "select distinct  a.cust_code 'Customer Code',b.slname 'Customer Name',a.Bo_no 'Packing No.',Bo_date 'Packing Date',Cont_no 'ContractNo',a.Bo_date PBO_Date,a.Bo_no PBO_No  From IG_RPackingAdvise a inner join  fa_slmas b on a.cust_code =b.slcode and isnull(Desp_Flg,'N')='N' and divcode='" & Divcode & "'  and bo_type='" & Trim(txtfields(0).Text) & "'"
    Else
        LookUp.query = "select distinct  a.cust_code 'Customer Code',b.slname 'Customer Name',a.Bo_no 'Packing No.',Bo_date 'Packing Date',Cont_no 'ContractNo',PBO_Date,PBO_No  From IG_RPACKDETAILS a inner join  fa_slmas b on a.cust_code =b.slcode and isnull(Desp_Flg,'N')='N' and divcode='" & Divcode & "'  and bo_type='" & Trim(txtfields(0).Text) & "'"
    End If
    
    LookUp.Caption = "Packing List"
    LookUp.DefCol = "Customer Name"
    LookUp.ALIGN = "1200,4000,1300,1300,1300"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(2).Text = LookUp.Fields(0)
        txtfields(3).Text = LookUp.Fields(1)
        Text13.Text = LookUp.Fields(2)
        MaskEdBox1.Text = Format(LookUp.Fields(3), "dd/mm/yyyy")
        Text16.Text = ""
        Text16.Text = LookUp.Fields("PBO_No")
        DTPicker2.value = Format(LookUp.Fields("PBO_Date"), "dd/mm/yyyy")
 
        Set Rs = New Recordset
        If Rsparm(0) = "Y" Then
            Rs.Open "select isnull(Vehicle,'') Vehicle,isnull(deladd,'') deladd from IG_rPackingAdvise  WHERE divcode='" & Divcode & "'  and bo_type='" & Trim(txtfields(0).Text) & "' and bo_no='" & LookUp.Fields("PBO_No") & "' and BO_Date='" & Format(LookUp.Fields("PBO_Date"), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        Else
            Rs.Open "select isnull(Vehicle,'') Vehicle,isnull(deladd,'') deladd from IG_rPackingAdvise  WHERE divcode='" & Divcode & "'  and bo_type='" & Trim(txtfields(0).Text) & "' and bo_no='" & LookUp.Fields("PBO_No") & "' and BO_Date='" & Format(LookUp.Fields("PBO_Date"), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        End If
        
        If Not Rs.EOF Then
            txtfields(4).Text = Rs(0)
            txtfields(12).Text = Rs(1)
            Set Rst = New Recordset
            Rst.Open "select a.delcode as CustomerCode,a.CName as CustomerName,a.gstinno as [GSTIN No.]  from ig_deladd a where slcode='" & txtfields(2).Text & "' and  delcode='" & txtfields(12).Text & "'", DB, adOpenStatic
            If Not Rst.EOF Then
                txtfields(10).Text = Rst(2)
            End If
        End If
 
        ADOSECONDARYRS.MoveLast
        bBales = 0
        bnetkg = 0
        bgrosskg = 0
        
        Set chrsdesp = New Recordset
        If Rsparm(0) = "Y" Then
            chrsdesp.Open "select distinct divcode,cust_code,bo_type,bo_no,sl_no,cont_type,isnull(nett_kgs,0)nett_kgs,isnull(gross_kgs,0)gross_kgs,cont_no,product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,isnull(Rate,0)Rate,cont_sno,GODOWN_CODE,GodownName,Lot_year from IG_RPackingAdvise a where bo_no='" & LookUp.Fields(2) & "' and bo_date='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and bo_type='" & Trim(txtfields(0).Text) & "' order by product_code,spack_no ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            chrsdesp.Open "select distinct divcode,cust_code,bo_type,bo_no,sl_no,cont_type,nett_kgs,gross_kgs,cont_no,product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,Rate,cont_sno,GODOWN_CODE,GodownName,Lot_year from IG_rPACKDETAILS a where bo_no='" & LookUp.Fields(2) & "' and bo_date='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and bo_type='" & Trim(txtfields(0).Text) & "' order by product_code,spack_no ", DB, adOpenStatic, adLockBatchOptimistic
        End If
                    
        chrsdesp.MoveFirst
        Do While Not chrsdesp.EOF
'            Set temprs = New Recordset
'            temprs.Open "SELECT distinct PCode,PDesc,SNO,FPNO,NETWT,TPNO,packyear,divcode,System_id,id ,PackCode,Packtype FROM tempWSale" & LIPAdd & " a  with (nolock)  where PrintStatus='Y'   ", db, adOpenDynamic, adLockReadOnly
'            If Not temprs.EOF Then
'             Do While Not temprs.EOF
    '            ADOSECONDARYRS(4).value = txtfields(18).Text
    '            ADOSECONDARYRS(7).value = txtfields(19).Text
                'grdDataGrid.Columns(11).Text = txtfields(20).Text
                ADOSECONDARYRS(8).value = chrsdesp!Product_code
                ADOSECONDARYRS(9).value = chrsdesp!Description

                ADOSECONDARYRS(10).value = chrsdesp!pack_year
                ADOSECONDARYRS(11).value = chrsdesp!packno_code
               ' wpno = wpno & "," & chrsdesp!spack_no & ""
                ADOSECONDARYRS(12).value = chrsdesp!SPack_No
                ADOSECONDARYRS(13).value = chrsdesp!SPack_No
                ADOSECONDARYRS(14).value = chrsdesp!pack_type
                ADOSECONDARYRS(15).value = chrsdesp!lot_code
                ADOSECONDARYRS("nett_kgs").value = chrsdesp!nett_kgs
                ADOSECONDARYRS("nett_kgs").value = chrsdesp!nett_kgs
                ADOSECONDARYRS("gross_kgs").value = chrsdesp!nett_kgs
                ADOSECONDARYRS("ProdNetKgs") = chrsdesp!nett_kgs
                ADOSECONDARYRS("Lot_code") = chrsdesp!lot_code
                ADOSECONDARYRS("godown") = chrsdesp!GODOWN_CODE
                         
                ADOSECONDARYRS("PACK_YEAR") = chrsdesp!pack_year
                Set Rs = New Recordset
                
                  Rs.Open "select a.doc_no,a.doc_dt,a.cust_code,Sum(balancebales) as balancebales,d.rate  from ig_rallocationhd a," & _
             " ig_rallocationdt b,ig_wastegroupd c,ig_rRateAllocatdt d  where a.doc_no=b.doc_no and b.date=a.doc_dt and a.divcode=c.divcode and " & _
             " b.waste=c.wastegroup_type and c.waste_code='" & ADOSECONDARYRS(8) & "' and  a.cust_code='" & txtfields(8).Text & "' and a.divcode='" & Divcode & "' " & _
             " and b.balancebales> 0  and a.divcode=b.divcode  and a.fromdate <='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'" & _
             " AND a.Divcode=c.DIVCODE AND a.Doc_no=d.doc_no AND a.doc_dt=d.date AND d.wastecode=c.Waste_Code " & _
             " group by cust_code,d.rate,a.doc_no,a.doc_dt order by convert(numeric,a.doc_no) ", DB
               
                If Not Rs.EOF Then
                
                ADOSECONDARYRS("rate").value = allotrate
                ADOSECONDARYRS("allotno").value = allotno
                ADOSECONDARYRS("allotdate").value = allotdate
                ADOSECONDARYRS("Lot_code") = chrsdesp!lot_code
                End If
      
                
                
                bBales = bBales + 1
                bnetkg = bnetkg + chrsdesp!nett_kgs
                bgrosskg = bgrosskg + chrsdesp!gross_kgs
                
                ADOSECONDARYRS.MoveNext
                ADOSECONDARYRS.AddNew
                
            chrsdesp.MoveNext
            
         Loop
'          Frame12.Visible = False
'        Else
'        MsgBox "No Bale Selected"
'         'Frame12.Visible = t
'        End If
        
        txtfields(5).Text = val(txtfields(5).Text) + bBales
        txtfields(6).Text = val(txtfields(6).Text) + bnetkg
        txtfields(7).Text = val(txtfields(7).Text) + bgrosskg
        
       ' txtfields(7).Text = Val(txtfields(7).Text) + bnetkg
     
        txtfields(7).Text = Format(val(txtfields(7).Text), "#0.000")
        
   
    End If
End If
End Sub
Private Sub Check1_Click()
On Error Resume Next
    If Check1.value = 1 Then
        Frame12.Visible = True
        Call ProductLoad
    Else
        Frame12.Visible = False
    End If

End Sub

Private Sub txt_search_Change()
Dim itm1 As ListItem
On Error Resume Next
With Lv_Stock
    Set itm = .FindItem(Trim(UCase(txt_search.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        Lv_Stock.ListItems(ilastindex).Bold = False
        Lv_Stock.ListItems(ilastindex).ForeColor = vbBlack
        
        itm.EnsureVisible
        lastindex = itm.Index
        Lv_Stock.ListItems(lastindex).Selected = True
        ilastindex = lastindex
        
        Lv_Stock.ListItems(ilastindex).Bold = True
        Lv_Stock.ListItems(ilastindex).ForeColor = vbBlue
        
        
        Lv_Stock.SetFocus
        txt_search.SetFocus
    End If
End With
Set itm = Nothing
ilastindex = 1
End Sub
Private Sub ProductLoad()
On Error Resume Next
Set Rs = New Recordset
 Rs.Open "select distinct a.PRODUCT_CODE as Code,a.description as Description from IG_RPRODUCT a ,IG_RPACKNOS B where a.divcode=b.divcode and  A.PRODUCT_CODE=B.PRODUCT_CODE AND A.product_code like 'W%' AND isnull(invoiced,'N')='N' and isnull(bo_no,'0')='0' and a.divcode='" & Divcode & "'", DB
 
 
 
 

    Set temprs = New Recordset
    temprs.Open "select distinct a.pack_type,a.description from ig_packtype a", DB, adOpenStatic, adLockBatchOptimistic
    LV_PackCode.ListItems.Clear
    Dim li11 As ListItem
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
             Set lj11 = LV_PackCode.ListItems.ADD(, , Mid(temprs!Description, 1, 150))
            LV_PackCode.ListItems(LV_PackCode.ListItems.Count).ListSubItems.ADD , , temprs!pack_type
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    
    
    Set temprs = New Recordset
    temprs.Open "SELECT DISTINCT A.PACKNO_CODE,A.DESCRIPTION FROM ig_packnotype a   ", DB, adOpenStatic, adLockBatchOptimistic 'where PACK_TYPE in (1,3,5,7)
    LV_PackCode.ListItems.Clear
 
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
             Set lj1 = LV_PackCode.ListItems.ADD(, , Mid(temprs!Description, 1, 150))
            LV_PackCode.ListItems(LV_PackCode.ListItems.Count).ListSubItems.ADD , , temprs!packno_code
            temprs.MoveNext
        Loop
    End If
    temprs.Close


Set Rs = New Recordset
Rs.Open "select distinct a.PRODUCT_CODE as Code,a.description as Description from IG_RPRODUCT a ,IG_RPACKNOS B where a.divcode=b.divcode and  A.PRODUCT_CODE=B.PRODUCT_CODE AND A.product_code like 'W%' AND isnull(invoiced,'N')='N' and isnull(bo_no,'0')='0' and a.divcode='" & Divcode & "' ", DB
If Not Rs.EOF Then
  
  Lv_Product.ListItems.Clear
  Do While Not Rs.EOF
                    'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
        Set lj1 = Lv_Product.ListItems.ADD(, , Mid(Rs!Description, 1, 150))
        
        Lv_Product.ListItems(Lv_Product.ListItems.Count).ListSubItems.ADD , , Rs!code
    
        Rs.MoveNext
    Loop
   Lv_Stock.ListItems.Clear
  Frame12.Visible = True
  Frame12.ZOrder 0
Else

  MsgBox "There is no Stock for this product", vbInformation, head
  Exit Sub
    SSTab3.Visible = True
    txtfields(18).SetFocus
  Buttonframe.Visible = True
End If
   
End Sub


'''''

Private Sub Lv_Product_Click()
On Error Resume Next


On Error GoTo err_lvcustclick
      
       Call ChkPack
       Call ChkGrade

       Lv_Stock.ListItems.Clear
  
       ' Lv_Product.ListItems.clear
        DB.CommandTimeout = 1000
        DB.Execute " set arithabort on "
        DB.Execute "ksp_TableExists 'tempWSale" & LIPAdd & "'"
            
        DB.Execute "CREATE TABLE tempWSale" & LIPAdd & " (Pcodedesc VARCHAR(45),PTypeDesc VARCHAR(45),PCode VARCHAR(15),PDesc VARCHAR(45),PackCode varchar(10),Packtype varchar(10),SNO NUMERIC(6),FPNO DECIMAL(6,0),NETWT NUMERIC(9,3),TPNO varchar(6),packyear varchar(4),divcode VARCHAR(2),System_id VARCHAR(20), [id] [int] IDENTITY(1,1) NOT NULL,PrintStatus varchar(2))"
        DB.Execute " set arithabort off "
        For I = 1 To Lv_Product.ListItems.Count

        If Lv_Product.ListItems.Item(I).Checked Then
            sortType = Trim(Lv_Product.ListItems(I).SubItems(1))
            Set temprs = New Recordset
        Set Rs = New Recordset
        Rs.Open "select a.pack_no,(a.pack_wt-a.tare) as pack_wt,a.PACK_YEAR ,a.product_code,b.DESCRIPTION,a.packno_code Pcode,d.DESCRIPTION PCDESC,a.pack_type Ptype,c.description PTypedesc from IG_RPACKNOS a,IG_RPRODUCT  b , ig_packtype c,ig_packnotype d WHERE a.packno_code=d.packno_code AND a.pack_type=c.pack_type and a.divcode=b.divcode and a.product_code=b.product_code and a.divcode=b.divcode and a.product_code=b.product_code and d.divcode=a.divcode and a.divcode='" & Divcode & "' and a.product_code='" & sortType & "' and a.lot_code='WL'  and isnull(a.invoiced,'N')='N'  and isnull(a.bo_no,'0')='0' AND a.PRODUCT_CODE LIKE 'W%' and a.pack_no not in(" & wpno & ") and a.divcode='" & Divcode & "' and a.pack_no not in (select pack_no from ig_rpacknos where  divcode='" & Divcode & "' and product_code='" & sortType & "'  and isnull(invoiced,'N')='N'  and isnull(bo_no,'0')='0' and pack_no in(" & wpno & ") ) order by a.pack_no", DB
        If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        j = 1
        
        Do While Not Rs.EOF
               DB.Execute "insert into tempWSale" & LIPAdd & " (Pcodedesc,PTypeDesc,PackCode,Packtype,PCode,PDesc,SNO,FPNO,NETWT,TPNO,packyear,divcode,System_id) values('" & Rs("PCDESC") & "','" & Rs("PTypedesc") & "','" & Rs("Pcode") & "','" & Rs("Ptype") & "','" & Rs("product_code") & "','" & Rs("DESCRIPTION") & "'," & j & "," & Rs(0) & "," & Rs("pack_wt") & "," & Rs(0) & " ,'" & Rs("PACK_YEAR") & "','" & Divcode & "','" & LocalIPAdd & "')"
                 j = j + 1
         Rs.MoveNext
         Loop
        
         End If
 
        End If
        Next I
        
        
        Set temprs = New Recordset
        temprs.Open "SELECT  *from tempWSale" & LIPAdd & " with (nolock) order by SNO ", DB, adOpenDynamic, adLockOptimistic
           
        Dim ljp3 As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
                Set lj1 = Lv_Stock.ListItems.ADD(, , temprs!FPNO)
               ' Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.Add , , temprs!FPNO
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!pcode
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!Pdesc
                
               
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!netwt
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!packyear
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!PackCode
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!Pcodedesc
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!packtype
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!PTypeDesc
                
                
                
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!Divcode
                Lv_Stock.ListItems(Lv_Stock.ListItems.Count).ListSubItems.ADD , , temprs!id
                temprs.MoveNext
            Loop
        End If
        temprs.Close
        

 Exit Sub
 
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub
Private Sub ChkPack()
     For I = 1 To LV_PackCode.ListItems.Count '- 1
             LV_PackCode.ListItems.Item(I).Checked = False
    Next I
    Chkconst.value = False
End Sub

Private Sub ChkGrade()
     For I = 1 To LV_Packtype.ListItems.Count '- 1
             LV_Packtype.ListItems.Item(I).Checked = False
    Next I
    Chkconst.value = False
End Sub


Private Sub Lv_Stock_Click()
On Error GoTo er_loadabale
        'Lv_Stock.ListItems.clear
      On Error Resume Next
    
        Dim sid As String
        For I = 1 To Lv_Stock.ListItems.Count
   
        If Lv_Stock.ListItems.Item(I).Checked Then
            sid = Trim(Lv_Stock.ListItems(I).SubItems(10))
            'Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode AND dt.CUST_CODE =hd.CUST_CODE And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and hd.cust_code='" & sWevType & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly
           
            'Dim ljp3 As ListItem
           ' If temprs.RecordCount > 0 Then
              '  Do While Not temprs.EOF
                    sql = "update tempWSale" & LIPAdd & "  set printStatus='Y' where id='" & sid & "' "
                    DB.Execute sql
                   ' Set ljp3 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordNo
                   ' temprs.MoveNext
                'Loop
            'End If
            'temprs.Close
        Else
         sid = Trim(Lv_Stock.ListItems(I).SubItems(9))
         sql = "update tempWSale" & LIPAdd & " set printStatus='N' where id='" & sid & "' "
                    DB.Execute sql
        End If
        Next I
        
        Set temprs = New Recordset
        temprs.Open "SELECT sum(netwt),count(FPNO) baleno from  tempWSale" & LIPAdd & " with (nolock) where isnull(PrintStatus,'N')='Y'  ", DB, adOpenDynamic, adLockOptimistic
        If IsNull(temprs(0)) = False Then
        txt_mtrs.Text = temprs(0)
        Text14.Text = temprs(1)
        Else
        txt_mtrs.Text = "0"
        End If
        
       
      
        
        
Exit Sub
er_loadabale:
     MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

    
End Sub

Public Sub Find(tol As Object)
    On Error Resume Next
    tol(0).Enabled = False 'add
    tol(1).Enabled = False 'mod
    tol(2).Enabled = False 'del
    tol(3).Enabled = False  'LIST
    tol(4).Enabled = False  'Find
    tol(5).Enabled = False  'FIRST
    tol(6).Enabled = False  'NEXT
    tol(7).Enabled = False  'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
    tol(12).Enabled = True 'PRINT
End Sub

