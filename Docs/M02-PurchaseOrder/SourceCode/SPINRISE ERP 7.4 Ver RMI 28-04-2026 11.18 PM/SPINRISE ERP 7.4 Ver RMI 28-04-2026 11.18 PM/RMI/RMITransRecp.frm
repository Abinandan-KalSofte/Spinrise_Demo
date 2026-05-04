VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmtransrecp 
   Caption         =   "Transfer Receipt"
   ClientHeight    =   8055
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11340
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FraOrd 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   5355
      Left            =   8520
      ScaleHeight     =   5325
      ScaleWidth      =   8610
      TabIndex        =   16
      ToolTipText     =   "Select an item from list"
      Top             =   2520
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CheckBox Check1 
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
         Left            =   240
         TabIndex        =   159
         Top             =   5040
         Width           =   525
      End
      Begin VB.CommandButton CmdOrderOk 
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
         Left            =   3060
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   4860
         Width           =   1035
      End
      Begin VB.CommandButton Command8 
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
         Left            =   4260
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   158
         Top             =   4860
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.TextBox Text9 
         Height          =   300
         Left            =   1200
         TabIndex        =   157
         Top             =   520
         Width           =   7305
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   3870
         Left            =   60
         TabIndex        =   17
         Top             =   855
         Width           =   8535
         _Version        =   524288
         _ExtentX        =   15055
         _ExtentY        =   6826
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
         SpreadDesigner  =   "RMITransRecp.frx":0000
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Label Label47 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Jobwork Issue List"
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
         TabIndex        =   161
         Top             =   45
         Width           =   8505
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Find Variety"
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
         TabIndex        =   160
         Top             =   600
         Width           =   1020
      End
   End
   Begin VB.Frame Frame10 
      Caption         =   "Issue Details"
      Height          =   4095
      Left            =   10560
      TabIndex        =   155
      Top             =   1080
      Visible         =   0   'False
      Width           =   7695
      Begin FPSpreadADO.fpSpread SpdEmpAllocation 
         Height          =   3765
         Left            =   120
         TabIndex        =   156
         Top             =   240
         Width           =   7470
         _Version        =   524288
         _ExtentX        =   13176
         _ExtentY        =   6641
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
         SpreadDesigner  =   "RMITransRecp.frx":049E
         Appearance      =   2
      End
   End
   Begin Crystal.CrystalReport CrystalReport 
      Left            =   4920
      Top             =   3600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4425
      Left            =   9405
      TabIndex        =   135
      Top             =   1185
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7805
   End
   Begin VB.Frame Frame5 
      Height          =   510
      Left            =   3960
      TabIndex        =   131
      Top             =   630
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command7 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   345
         Left            =   4125
         TabIndex        =   136
         Top             =   120
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   255
         Left            =   2880
         TabIndex        =   133
         Top             =   180
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   285
         Left            =   1740
         TabIndex        =   132
         Top             =   165
         Width           =   1260
      End
      Begin VB.Label Label42 
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
         Height          =   285
         Left            =   180
         TabIndex        =   134
         Top             =   180
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5835
      Left            =   420
      TabIndex        =   73
      Top             =   1245
      Width           =   9075
      _ExtentX        =   16007
      _ExtentY        =   10292
      _Version        =   393216
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "&Lot"
      TabPicture(0)   =   "RMITransRecp.frx":096D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "&Invoice"
      TabPicture(1)   =   "RMITransRecp.frx":0989
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame8"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "&Bales"
      TabPicture(2)   =   "RMITransRecp.frx":09A5
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame1"
      Tab(2).Control(1)=   "grddatagrid"
      Tab(2).Control(2)=   "Frame2"
      Tab(2).ControlCount=   3
      Begin VB.Frame Frame2 
         Height          =   990
         Left            =   -74880
         TabIndex        =   74
         Top             =   4260
         Visible         =   0   'False
         Width           =   8835
         Begin VB.TextBox Text8 
            Alignment       =   1  'Right Justify
            Height          =   360
            Left            =   7575
            Locked          =   -1  'True
            TabIndex        =   149
            Top             =   375
            Width           =   1155
         End
         Begin VB.TextBox Text4 
            Alignment       =   1  'Right Justify
            Height          =   330
            Left            =   1380
            Locked          =   -1  'True
            TabIndex        =   62
            Top             =   405
            Width           =   1155
         End
         Begin VB.TextBox Text5 
            Alignment       =   1  'Right Justify
            Height          =   360
            Left            =   3000
            Locked          =   -1  'True
            TabIndex        =   63
            Top             =   390
            Width           =   1155
         End
         Begin VB.TextBox Text6 
            Alignment       =   1  'Right Justify
            Height          =   360
            Left            =   4530
            Locked          =   -1  'True
            TabIndex        =   64
            Top             =   390
            Width           =   1155
         End
         Begin VB.TextBox Text7 
            Alignment       =   1  'Right Justify
            Height          =   360
            Left            =   6030
            Locked          =   -1  'True
            TabIndex        =   65
            Top             =   390
            Width           =   1155
         End
         Begin VB.Label Label45 
            Alignment       =   1  'Right Justify
            Caption         =   "Commercial Weight"
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   7320
            TabIndex        =   150
            Top             =   120
            Width           =   1410
         End
         Begin VB.Label lblTotal 
            Caption         =   "Total"
            ForeColor       =   &H000000FF&
            Height          =   210
            Left            =   540
            TabIndex        =   142
            Top             =   495
            Width           =   765
         End
         Begin VB.Label lblgrosswt 
            Alignment       =   1  'Right Justify
            Caption         =   "Gross Weight"
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   3000
            TabIndex        =   140
            Top             =   135
            Width           =   1125
         End
         Begin VB.Label lbltarewt 
            Alignment       =   1  'Right Justify
            Caption         =   "Tare Weight"
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   4560
            TabIndex        =   139
            Top             =   135
            Width           =   1140
         End
         Begin VB.Label lblnettwt 
            Alignment       =   1  'Right Justify
            Caption         =   "Nett Weight"
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   5775
            TabIndex        =   138
            Top             =   135
            Width           =   1410
         End
         Begin VB.Label lblQty 
            Alignment       =   1  'Right Justify
            Caption         =   "Quantity"
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   1380
            TabIndex        =   137
            Top             =   135
            Width           =   1140
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   3570
         Left            =   -74820
         TabIndex        =   61
         Top             =   540
         Width           =   8655
         _ExtentX        =   15266
         _ExtentY        =   6297
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   19
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
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Balewise Weighment Details"
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
      Begin VB.Frame Frame1 
         Height          =   3900
         Left            =   -74895
         TabIndex        =   60
         Top             =   345
         Width           =   8850
      End
      Begin VB.Frame Frame7 
         Height          =   5400
         Left            =   180
         TabIndex        =   94
         Top             =   330
         Width           =   8820
         Begin VB.CheckBox Chk_SampleFlag 
            Caption         =   "Sample"
            Height          =   255
            Left            =   6600
            TabIndex        =   164
            Top             =   240
            Width           =   1575
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "JBSentQty"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   39
            Left            =   6960
            TabIndex        =   162
            Top             =   4920
            Width           =   1530
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "invisibleloss"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   38
            Left            =   1455
            MaxLength       =   6
            TabIndex        =   148
            Top             =   4935
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "invisweight"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   36
            Left            =   4095
            TabIndex        =   40
            Top             =   4935
            Width           =   1410
         End
         Begin VB.Frame Frame4 
            Height          =   465
            Left            =   1485
            TabIndex        =   144
            Top             =   120
            Width           =   4695
            Begin VB.OptionButton optJob 
               Caption         =   "Job Work Lot"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   2430
               TabIndex        =   13
               Top             =   150
               Width           =   1965
            End
            Begin VB.OptionButton Optown 
               Caption         =   "Own Lot"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   750
               TabIndex        =   12
               Top             =   150
               Value           =   -1  'True
               Width           =   1485
            End
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "TransferType"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   35
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            Top             =   735
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   34
            Left            =   3025
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   39
            TabStop         =   0   'False
            Top             =   750
            Width           =   5505
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   33
            Left            =   5580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   129
            TabStop         =   0   'False
            Top             =   4080
            Width           =   2910
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "cntcode"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   30
            Left            =   6990
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   33
            Top             =   3660
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tarewt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   24
            Left            =   4100
            MaxLength       =   9
            TabIndex        =   37
            Top             =   4530
            Width           =   1425
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
            ForeColor       =   &H00000000&
            Height          =   360
            ItemData        =   "RMITransRecp.frx":09C1
            Left            =   1485
            List            =   "RMITransRecp.frx":09C8
            Style           =   2  'Dropdown List
            TabIndex        =   34
            Top             =   4080
            Width           =   1530
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "godown"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   20
            Left            =   4100
            MaxLength       =   3
            TabIndex        =   35
            Top             =   4095
            Width           =   1425
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "bales"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   22
            Left            =   1485
            MaxLength       =   6
            TabIndex        =   31
            Top             =   3660
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "PLOTNO"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   37
            Left            =   4100
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   32
            Top             =   3675
            Width           =   1425
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "colorcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   32
            Left            =   1710
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   5520
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   31
            Left            =   2970
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   5520
            Visible         =   0   'False
            Width           =   5325
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   21
            Left            =   3025
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   2880
            Width           =   5475
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   3025
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   30
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2040
            Width           =   5475
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   3025
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   29
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1635
            Width           =   5475
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   3025
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   28
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1215
            Width           =   5475
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "arrno"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   1
            Left            =   4100
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   22
            Top             =   2460
            Width           =   1485
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "CATCD"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   0
            Left            =   1485
            MaxLength       =   1
            TabIndex        =   21
            Top             =   2460
            Width           =   1515
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   28
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   20
            Top             =   2040
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   27
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   19
            Top             =   1605
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   26
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            Top             =   1185
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "LOTNO"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   2
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   25
            Top             =   3285
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "varcode"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   29
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   24
            Top             =   2880
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "netwt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   25
            Left            =   6990
            MaxLength       =   10
            TabIndex        =   38
            Top             =   4515
            Width           =   1515
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "grswgt"
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
            Height          =   360
            Index           =   23
            Left            =   1485
            MaxLength       =   10
            TabIndex        =   36
            Top             =   4500
            Width           =   1500
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "lotdt"
            Height          =   330
            Index           =   1
            Left            =   6990
            TabIndex        =   26
            Top             =   3300
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   330
            Index           =   0
            Left            =   6990
            TabIndex        =   23
            Top             =   2490
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
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
            Height          =   330
            Left            =   7020
            TabIndex        =   128
            Top             =   3300
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   169476097
            CurrentDate     =   36831
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "Job Work Sent balance Wt"
            ForeColor       =   &H00FF0000&
            Height          =   390
            Left            =   5640
            TabIndex        =   163
            Top             =   4950
            Width           =   1245
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3255
            TabIndex        =   147
            Top             =   5010
            Width           =   510
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Invisible loss %"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   146
            Top             =   4995
            Width           =   1050
         End
         Begin VB.Label Label43 
            Caption         =   "Lot Type"
            ForeColor       =   &H00FF0000&
            Height          =   225
            Left            =   240
            TabIndex        =   143
            Top             =   270
            Width           =   975
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Transfer Type"
            Height          =   195
            Left            =   240
            TabIndex        =   130
            Top             =   825
            Width           =   990
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   5760
            TabIndex        =   127
            Top             =   3765
            Width           =   915
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   126
            Top             =   3720
            Width           =   585
         End
         Begin VB.Label Label40 
            Caption         =   "Supplier Lot No."
            Height          =   435
            Left            =   3105
            TabIndex        =   125
            Top             =   3660
            Width           =   1080
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   1260
            TabIndex        =   124
            Top             =   5610
            Visible         =   0   'False
            Width           =   480
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3105
            TabIndex        =   123
            Top             =   4200
            Width           =   600
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Pack Type"
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   122
            Top             =   4155
            Width           =   780
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Receipt No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3105
            TabIndex        =   106
            Top             =   2520
            Width           =   855
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            Height          =   195
            Left            =   240
            TabIndex        =   105
            Top             =   1665
            Width           =   420
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area "
            Height          =   195
            Left            =   240
            TabIndex        =   104
            Top             =   2085
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   103
            Top             =   1230
            Width           =   570
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   102
            Top             =   3315
            Width           =   525
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   101
            Top             =   2910
            Width           =   480
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   100
            Top             =   4590
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   5640
            TabIndex        =   99
            Top             =   4620
            Width           =   855
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3105
            TabIndex        =   98
            Top             =   4605
            Width           =   885
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            Height          =   195
            Left            =   5760
            TabIndex        =   97
            Top             =   3375
            Width           =   615
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Receipt Date"
            Height          =   195
            Left            =   5760
            TabIndex        =   96
            Top             =   2520
            Width           =   945
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   95
            Top             =   2490
            Width           =   630
         End
      End
      Begin VB.Frame Frame8 
         Height          =   4845
         Left            =   -74880
         TabIndex        =   75
         Top             =   345
         Width           =   8835
         Begin VB.Frame Frame23 
            Height          =   435
            Left            =   1650
            TabIndex        =   151
            Top             =   3840
            Width           =   3615
            Begin VB.OptionButton optMILL 
               Caption         =   "Mill Net Wt."
               Height          =   240
               Left            =   120
               TabIndex        =   153
               Top             =   150
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton OptCommercialWt 
               Caption         =   "Commercial Wt."
               Height          =   210
               Left            =   1680
               TabIndex        =   152
               Top             =   150
               Width           =   1500
            End
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "billno"
            Height          =   330
            Index           =   3
            Left            =   1605
            MaxLength       =   15
            TabIndex        =   41
            Top             =   450
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Height          =   330
            Index           =   17
            Left            =   1605
            MaxLength       =   10
            TabIndex        =   56
            Top             =   3450
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Height          =   330
            Index           =   14
            Left            =   1605
            MaxLength       =   9
            TabIndex        =   53
            Top             =   2820
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "rlyfrt"
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
            Index           =   11
            Left            =   1605
            MaxLength       =   9
            TabIndex        =   50
            Top             =   2190
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Height          =   330
            Index           =   8
            Left            =   1605
            MaxLength       =   9
            TabIndex        =   47
            Top             =   1620
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "PTYWGT"
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
            Index           =   5
            Left            =   1605
            MaxLength       =   11
            TabIndex        =   44
            Top             =   1050
            Width           =   1500
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
            Index           =   7
            Left            =   7155
            MaxLength       =   9
            TabIndex        =   46
            Top             =   1050
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "spotexp"
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
            Index           =   13
            Left            =   7155
            MaxLength       =   9
            TabIndex        =   52
            Top             =   2220
            Width           =   1560
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
            Height          =   330
            Index           =   4
            Left            =   7155
            MaxLength       =   9
            TabIndex        =   43
            Top             =   420
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "insamt"
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
            Index           =   16
            Left            =   7155
            MaxLength       =   9
            TabIndex        =   55
            Top             =   2820
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TOTLANDCOST"
            Height          =   330
            Index           =   18
            Left            =   4410
            MaxLength       =   12
            TabIndex        =   57
            Top             =   3450
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "DNAMT2"
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
            Index           =   15
            Left            =   4410
            MaxLength       =   9
            TabIndex        =   54
            Top             =   2820
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "LDGULG"
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
            Index           =   12
            Left            =   4410
            MaxLength       =   9
            TabIndex        =   51
            Top             =   2220
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "odint"
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
            Index           =   9
            Left            =   4410
            MaxLength       =   9
            TabIndex        =   48
            Top             =   1650
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "PJAMT"
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
            Index           =   6
            Left            =   4410
            MaxLength       =   11
            TabIndex        =   45
            Top             =   1050
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "freght"
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
            Index           =   10
            Left            =   7155
            MaxLength       =   9
            TabIndex        =   49
            Top             =   1650
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "ratekg"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.0000;(0.0000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   19
            Left            =   7155
            MaxLength       =   10
            TabIndex        =   58
            Top             =   3450
            Width           =   1560
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "BILLDT"
            Height          =   330
            Index           =   2
            Left            =   4410
            TabIndex        =   42
            Top             =   420
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   582
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label117 
            Caption         =   "Favourable Weight"
            ForeColor       =   &H00FF0000&
            Height          =   345
            Left            =   240
            TabIndex        =   154
            Top             =   3990
            Width           =   1455
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Spot Expenses"
            Height          =   195
            Left            =   6000
            TabIndex        =   93
            Top             =   2295
            Width           =   1065
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Agent Commission"
            Height          =   195
            Left            =   105
            TabIndex        =   92
            Top             =   3525
            Width           =   1290
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Dr. Amount -1"
            Height          =   195
            Left            =   105
            TabIndex        =   91
            Top             =   2895
            Width           =   975
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Railway Freight"
            Height          =   195
            Left            =   105
            TabIndex        =   90
            Top             =   2265
            Width           =   1080
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Excise Duty"
            Height          =   195
            Left            =   105
            TabIndex        =   89
            Top             =   1695
            Width           =   840
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Freight"
            Height          =   195
            Left            =   6000
            TabIndex        =   88
            Top             =   1755
            Width           =   870
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Weight"
            Height          =   195
            Left            =   105
            TabIndex        =   87
            Top             =   1095
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Sales Tax"
            Height          =   195
            Left            =   6000
            TabIndex        =   86
            Top             =   1155
            Width           =   705
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
            Height          =   195
            Left            =   6000
            TabIndex        =   85
            Top             =   2895
            Width           =   870
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Sample Weight"
            Height          =   195
            Left            =   6000
            TabIndex        =   84
            Top             =   495
            Width           =   1080
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
            Height          =   195
            Left            =   105
            TabIndex        =   83
            Top             =   525
            Width           =   495
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Kg."
            Height          =   195
            Left            =   6000
            TabIndex        =   82
            Top             =   3525
            Width           =   870
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Value"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   81
            Top             =   1125
            Width           =   975
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Od.Int"
            Height          =   195
            Left            =   3270
            TabIndex        =   80
            Top             =   1725
            Width           =   435
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Load Charges"
            Height          =   195
            Left            =   3270
            TabIndex        =   79
            Top             =   2265
            Width           =   990
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Dr. Amount - 2"
            Height          =   195
            Left            =   3270
            TabIndex        =   78
            Top             =   2895
            Width           =   1020
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Landing Cost"
            Height          =   195
            Left            =   3270
            TabIndex        =   77
            Top             =   3525
            Width           =   930
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Bill Date"
            Height          =   195
            Left            =   3270
            TabIndex        =   76
            Top             =   510
            Width           =   585
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   69
      Top             =   -90
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5760
         Picture         =   "RMITransRecp.frx":09D2
         Style           =   1  'Graphical
         TabIndex        =   145
         ToolTipText     =   " Crystal Report Print "
         Top             =   120
         Width           =   585
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
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "RMITransRecp.frx":0E14
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":1256
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "RMITransRecp.frx":16A0
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "RMITransRecp.frx":1A02
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "RMITransRecp.frx":1D0C
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":2088
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "RMITransRecp.frx":2392
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":2734
         Height          =   510
         Index           =   11
         Left            =   6360
         Picture         =   "RMITransRecp.frx":2B7E
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":2F13
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "RMITransRecp.frx":335D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":36AD
         Height          =   510
         Index           =   1
         Left            =   600
         Picture         =   "RMITransRecp.frx":39B7
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":3D31
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   1095
         Picture         =   "RMITransRecp.frx":403B
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":43D7
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "RMITransRecp.frx":4821
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":4B86
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMITransRecp.frx":4E90
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":5223
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "RMITransRecp.frx":566D
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMITransRecp.frx":59BA
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "RMITransRecp.frx":5CC4
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl F)"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6915
         TabIndex        =   71
         Top             =   255
         Width           =   615
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8445
         TabIndex        =   70
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   72
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
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "12/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "04:56 PM"
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
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   360
      TabIndex        =   113
      Top             =   1140
      Visible         =   0   'False
      Width           =   8505
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   116
         Top             =   4200
         Width           =   1140
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4440
         TabIndex        =   115
         Top             =   4215
         Width           =   1140
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3330
         Left            =   150
         TabIndex        =   114
         Top             =   600
         Width           =   8130
         _ExtentX        =   14340
         _ExtentY        =   5874
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Lot  Details"
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
         TabIndex        =   117
         Top             =   120
         Width           =   8400
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   1140
      TabIndex        =   109
      Top             =   2115
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "RMITransRecp.frx":6059
         Height          =   615
         Left            =   2580
         Picture         =   "RMITransRecp.frx":643F
         Style           =   1  'Graphical
         TabIndex        =   121
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "RMITransRecp.frx":6805
         Height          =   615
         Left            =   4020
         Picture         =   "RMITransRecp.frx":6BE7
         Style           =   1  'Graphical
         TabIndex        =   120
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3330
         MaxLength       =   6
         TabIndex        =   110
         Top             =   855
         Width           =   1665
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         Height          =   195
         Left            =   2325
         TabIndex        =   112
         Top             =   930
         Width           =   570
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
         TabIndex        =   111
         Top             =   120
         Width           =   7530
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4875
      Left            =   330
      TabIndex        =   59
      Top             =   1140
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMITransRecp.frx":6FBA
         Height          =   615
         Left            =   2985
         Picture         =   "RMITransRecp.frx":73A0
         Style           =   1  'Graphical
         TabIndex        =   119
         Top             =   3885
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMITransRecp.frx":7766
         Height          =   615
         Left            =   4785
         Picture         =   "RMITransRecp.frx":7B48
         Style           =   1  'Graphical
         TabIndex        =   118
         Top             =   3855
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   107
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
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   30
         TabIndex        =   108
         Top             =   105
         Width           =   8730
      End
   End
   Begin VB.Label Label9 
      Caption         =   "Label9"
      Height          =   495
      Left            =   5070
      TabIndex        =   141
      Top             =   3780
      Width           =   1215
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Transfer Receipt"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   360
      TabIndex        =   68
      Top             =   840
      Width           =   2115
   End
End
Attribute VB_Name = "frmtransrecp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim Rs, rsJB As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Double
Dim GT As Double
Dim QTY As Integer
Dim oldgrs As Double
Dim oldtare As Double
Dim a As Double
Dim B As Double
Dim c As Double
Dim d As Double
Dim W As Double
Dim FLG As String
Dim wflg As String
Dim JBFlg As String
Dim IssuedTotQty As Double
''Dim p As Double
''Dim q As Double
''Dim r As Double
''Dim s As Double

Dim t As Double

Private Enum E_SIZELISTDC1
    SPDSCHECK1 = 1
    SPDSSNO
    SPDISDOCNO
    SPDISDOCDT
    SPDISVARCODE
    SPDISVARNAME
    SPDISISSUEDQTY
    SPDISIBALQTY
End Enum
Private Enum SpdAllocation
    SPDDSNO = 1
    SPDDDOCNO
    SPDDDOCDT
    SPDVariety
    SPDVarietyName
    SPDDISQTY
    SPDDBALQTY
    SPDDRECQTY

End Enum


Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Transfer Receipt"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 13
    Set rs1 = New Recordset
    rs1.Open "Select sum(totlandcost) as totlandcost from rm_lot where arrno='" & Txtfields(1).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
    
    Set Rs = New Recordset
    Rs.Open "Select lotno,lotdt,lotyear,* from rm_lot where arrno='" & Txtfields(1).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        Screen.MousePointer = 11
        lt = Rs("lotno")
        Ltdt = Rs("lotdt")
            Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = Cry_lotbale
            clsCryRpt.CrystalPrint
         
            CrystalReport.Reset
            CrystalReport.Connect = connectstring
            CrystalReport.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

            'CrystalReport.SelectionFormula = "{RM_ARRIVAL.DIVCODE}='" & Divcode & "' AND {RM_ARRIVAL.ARRDATE} = cdate('" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "') AND {RM_ARRIVAL.ARRNO}>= " & val(TXTFIELDS(1).Text) & " AND  {RM_ARRIVAL.ARRNO}<=  " & val(TXTFIELDS(1).Text) & ""
            CrystalReport.ParameterFields(0) = "@divcode;" & Divcode & ""
            CrystalReport.ParameterFields(1) = "@lotno;" & val(Txtfields(2).Text) & ""
            CrystalReport.ParameterFields(2) = "@lotdate;" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & ""
            CrystalReport.ParameterFields(3) = "@lotyear;" & Year(yfdate) & ""
            

            CrystalReport.WindowShowPrintSetupBtn = True
            CrystalReport.WindowShowSearchBtn = True
            CrystalReport.WindowState = crptMaximized
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            
            CrystalReport.Action = 1
            CrystalReport.PrinterCopies = 1
            Screen.MousePointer = 0
    End If
    

Case 0

If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Tab = 0
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,OPFLG,plotno,colorcode,transfertype,REJFLG,LOTYEAR,lotRectype,FAVAOURABLEWGT,invisibleloss,invisweight,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    Set ADOSECONDARYRS = New Recordset
    'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT FROM RM_BALE WHERE 1=2 and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,ARRNO,ARRDT,STATUS,VARCODE,Lotrectype,Comm_Wt FROM RM_BALE WHERE 1=2 and lottype = 'T' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call gridalign
    MaskEdBox1(0).Text = "__/__/____"
    Txtfields(26).Text = ""
    Txtfields(27).Text = ""
    Txtfields(28).Text = ""
    Txtfields(33).Text = ""
    Txtfields(34).Text = ""
    JBFlg = "N"
    Text1.Text = ""
    text2.Text = ""
    Text3.Text = ""
    Frame1.Visible = False
    Frame2.Visible = True
    Label9.Visible = True
    Frame8.Visible = True
    Frame10.Visible = False
    SETDESPATCHHead
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    Txtfields(25).Locked = True
    ADOSECONDARYRS.AddNew
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    MaskEdBox1(1).Text = pdate
    MaskEdBox1(0).Text = pdate
   '' txtfields(2).Locked = False
'    TXTFIELDS(0).SetFocus
    Optown.SetFocus
    grddatagrid.Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(9).Enabled = True
    Txtfields(37).Locked = False
    FLG = ""
    Chk_SampleFlag.value = 0
            
For I = 6 To 19 Step 1
    Txtfields(I).Text = Format(Txtfields(I).Text, "0.00")
Next

Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
'    Opt = "mod"
'    desc.Caption = "Modification"
'    Call adddelmod(BUTTON)
'    Call delmodok_Click
'    Call disablcontls
'    'BUTTON(9).ToolTipText = "Modify"
'    txtFields(0).Locked = True
'    'BUTTON(4).Enabled = False
'    BUTTON(9).Enabled = False
'    BUTTON(10).Enabled = False

     Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,opflg,transfertype,lotRectype,FAVAOURABLEWGT,invisibleloss,invisweight,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            Set ADOSECONDARYRS = New Recordset
            'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT FROM RM_BALE WHERE isqty is null ", db, adOpenStatic, adLockBatchOptimistic
            ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,Lotrectype,Comm_Wt FROM RM_BALE WHERE isqty is null and lottype = 'T' ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            MsgBox "All Lots are used. Deletion/Modification Not allowed!", vbInformation, head
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,FAVAOURABLEWGT,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                     "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                     " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT divcode,CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt  FROM RM_BALE" & _
                     " where lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
                     "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype,Divcode to Divcode) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            Exit Sub
        End If
'    Set rs = New Recordset
    'rs.Open "select lotno ""lotno"",lotdt""Date"",arrno""Arr.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
'    rs.Open "select lotno ""Lotno"",lotdt""Date"",arrno""Rec.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'", db, adOpenStatic, adLockBatchOptimistic


'    Set rsz = New Recordset
'    rsz.Open "select max(Date) from rm_sample where divcode='" & Divcode & "'", db, adOpenStatic
'
'    If rsz.RecordCount > 0 Then
'        If IsDate(rsz(0)) = True Then
'            If rsz(0) > pdate Then
'                MsgBox "Invalid Processing Date...!!!", vbInformation, head
'                Exit Sub
'            End If
'        End If
'    End If


    'Modification
'    Set rs = New Recordset
'    rs.Open "select a.sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and a.divcode='" & Divcode & "' AND a.sno not in(select contno from rm_sample a,rm_cont b where a.divcode=b.divcode and a.sno=b.contno and a.supcode=b.supcd and a.varcode=b.varcode and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') and DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic
    If adoPrimaryRS.RecordCount > 0 Then
       SSTab1.Enabled = True
       Opt = "mod"
       desc.Caption = "Modification"
       StatusBar1.Panels(2).Text = "Select a Lot No from the List for modification"
            
      LookUp.Clear = True
      LookUp.query = "select lotno ""Lot No"",lotdt""Lot Date"",arrno""Rec. No."",arrdt ""Rec. Date"",CatCd,VarCode from rm_lot where isnull(isswt,0)=0 and isnull(issbal,0)=0 and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'"
      LookUp.Caption = "Transfer Receipt Listing"
      LookUp.DefCol = "No."
      LookUp.ALIGN = "1500,1500,1500,1500,1500,1500"
      LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
         BUTTON(9).Enabled = True
'        If Opt <> "fnd" Then
'           Set adoPrimaryRS = New Recordset
'           adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,CROP_YEAR,STAPHANDTEST,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature FROM RM_SAMPLE WHERE  sno='" & LookUp.Fields(0) & "' AND date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", db, adOpenStatic, adLockOptimistic
'        Else
'           Set adoPrimaryRS = New Recordset
'           adoPrimaryRS.Open "SELECT DIVCODE,SNO,DATE,SUPCODE,BROKERCODE,VARCODE,STAPLEN25,STAPLEN50,TRASH_PER,MICRONAIRE,STRENGTH,MCOEFF,UNIRATIO,STAPHANDTEST,HVITEST,moiture,AVGCOUNT,YARNAPP,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATE_CODE,STATION_NAME,HVITEST,MOITURE,AVGCOUNT,YARNAPP, csp ,tpi, avrstrength , corr_strenth , spot_for , rate ,prno ,prty_sampno,brokercode,station_code,POTYPE,GRADE,GTEX,COLOR,AREA_CODE,STATION_NAME,CROP_YEAR,state_code,remarks,yellowtouch,immature FROM RM_SAMPLE WHERE  sno >='" & LookUp.Fields(0) & "' AND date >='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by sno", db, adOpenStatic, adLockOptimistic
'        End If
'        If adoPrimaryRS("potype") = "With Basic Sample" Then
'            MachineFrame.Visible = True
'            HandTestFrame.Visible = False
'        Else
'            HandTestFrame.Visible = True
'            MachineFrame.Visible = False
'        End If
        Call bindcontls
        Call ENABLCONTLS
'        txtFields(37).Text = adoPrimaryRS("color")
        Txtfields(0).Locked = True
        If Opt = "del" Then
           Call disablcontls
        End If
        If Opt = "fnd" Then
           Call disablcontls
           BUTTON(9).Enabled = False
           Call NEWFORM(BUTTON)
           Call NEWFORM1(BUTTON, GSNO)
           BUTTON(0).Enabled = False
           BUTTON(1).Enabled = False
           BUTTON(2).Enabled = False
           BUTTON(10).Enabled = True
        End If
            DB.BeginTrans
            'calling addmoddel procedure from module
            Call delmodproc(CStr(LookUp.Fields(1)), CStr(LookUp.Fields(0)), LookUp.Fields(4), LookUp.Fields(5))
            Call adddelmod(BUTTON)
            BUTTON(10).Enabled = True
            Txtfields(0).Locked = True
            Txtfields(1).Locked = False
        Else
      
        End If
'        Set rsch = New Recordset
'        rsch.Open "select * from rm_cont where divcode='" & Divcode & "' AND sno = " & txtFields(0).Text & " ", db
'        If rsch.RecordCount > 0 Then
'            txtFields(24).Locked = True
'            txtFields(25).Locked = True
'        Else
'            txtFields(24).Locked = False
'            txtFields(25).Locked = False
'        End If
        If Opt = "mod" Then
            LookUp.Clear = True
            Combo1.Locked = False
            
           ' Txtfields(20).SetFocus
        End If
      
'''           KslList1.Visible = True
'''           KslList1.listfield1width = 2500
'''           KslList1.listfield2width = 7500
'''           KslList1.conn = connectstring
'''           KslList1.Caption = "Select Sample No to Modify"
'''           KslList1.table = "rm_sample where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'"
'''           KslList1.listfield1 = "sno as SampleNo" '"cast(sno as varchar)as Sample"
'''           KslList1.listfield2 = "date"
'''           Frame3.Visible = True
'''           Frame3.ZOrder
'''           Buttonframe.Enabled = True
'''           DB.BeginTrans
'''           Call adddelmod(BUTTON)
'''           Call disablcontls
'''           BUTTON(9).ToolTipText = "Modify"
'''           txtfields(0).Locked = True
'''           KslList1.SetFocus
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

        
For I = 6 To 19 Step 1
    Txtfields(I).Text = Format(Txtfields(I).Text, "0.00")
Next

Case 2, 4
    If Index = 2 Then
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
    End If
    
    
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockOptimistic
    If Index = 4 Then
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,opflg,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT WHERE  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' ", DB, adOpenStatic, adLockOptimistic
    Else
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,opflg,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT WHERE isnull(isswt,0)=0 and isnull(issbal,0)=0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' ", DB, adOpenStatic, adLockOptimistic
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
        Set ADOSECONDARYRS = New Recordset
        'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT FROM RM_BALE WHERE isqty is null ", db, adOpenStatic, adLockBatchOptimistic
        If Index = 4 Then
        ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,Lotrectype ,Comm_Wt FROM RM_BALE WHERE lottype = 'T' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
        Else
        ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,Lotrectype ,Comm_Wt FROM RM_BALE WHERE isqty is null and lottype = 'T' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        MsgBox "All Lots are used. Deletion/Modification Not allowed!", vbInformation, head
        Set adoPrimaryRS = New Recordset
'        If Index = 4 Then
        adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT divcode,CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt FROM RM_BALE" & _
                 " where lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
                 "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype,divcode to divcode) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
'        Else
'           adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg FROM RM_LOT A WHERE   " & _
'                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
'                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt FROM RM_BALE" & _
'                 " where lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
'                 "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
'        End If
        
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        Exit Sub
    End If
        
    'Opt = "del"
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    LookUp.Clear = True
    If Index = 4 Then
        LookUp.query = "select lotno ""Lot No."",lotdt""Lot Date"",arrno""Rec. No."",arrdt ""Rec. Date"",CatCd,VarCode from rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'"
    Else
        LookUp.query = "select lotno ""Lot No."",lotdt""Lot Date"",arrno""Rec. No."",arrdt ""Rec. Date"",CatCd,VarCode from rm_lot where isnull(isswt,0)=0and isnull(issbal,0)=0 and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'"
    End If
    LookUp.Caption = "Transfer Receipt Listing"
    LookUp.DefCol = "Lot No."
    LookUp.ALIGN = "1500,1500,1500,1500,1000,1000"
    LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
         BUTTON(9).Enabled = True
         Call bindcontls
         Call ENABLCONTLS
         If Opt = "del" Then
            Call disablcontls
         End If
         If Opt = "fnd" Then
            Call disablcontls
            BUTTON(9).Enabled = False
            Call NEWFORM(BUTTON)
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).Enabled = False
            BUTTON(1).Enabled = False
            BUTTON(2).Enabled = False
            BUTTON(10).Enabled = True
         End If
         DB.BeginTrans
        'calling addmoddel procedure from module
        Call delmodproc(CStr(LookUp.Fields(1)), CStr(LookUp.Fields(0)), LookUp.Fields(4), LookUp.Fields(5))
         Call adddelmod(BUTTON)
         If Opt = "fnd" Then
           BUTTON(9).Enabled = False
         End If
         Txtfields(0).Locked = True
      End If
              
For I = 6 To 19 Step 1
    Txtfields(I).Text = Format(Txtfields(I).Text, "0.00")
Next

Case 3
        'Query
        
'Case 4
'    Opt = "fnd"
'    desc.Caption = "Find"
'    Call adddelmod(BUTTON)
'    Call delmodok_Click
'    Call disablcontls
'    txtFields(0).Locked = True
'    BUTTON(9).Enabled = False
'    BUTTON(10).Enabled = False
    
Case 5
     'first
     desc.Caption = "Query"
      StatusBar1.Panels(2).Text = "First record"
      BUTTON(4).Enabled = True
     On Error GoTo GoFirstError
     If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveFirst
        Call bindcontls
        Call disablcontls
        Call gridalign
        'calling fir procedure from module
        Call navi(BUTTON)
        Call FIR(BUTTON)
        BUTTON(4).Enabled = True
        StatusBar1.Panels(2).Text = "First record"
        Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        lblTotal.Visible = True

        LBLQTY.Visible = True
        lblgrosswt.Visible = True
        lbltarewt.Visible = True
        lblnettwt.Visible = True

        Text4.Text = Txtfields(22).Text
        Text5.Text = Txtfields(23).Text
        Text6.Text = Txtfields(24).Text
        Text7.Text = Txtfields(25).Text
        Beep
     End If
        Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      BUTTON(4).Enabled = True
      On Error GoTo GoNextError
       StatusBar1.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        Call disablcontls
        Call gridalign
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
      BUTTON(4).Enabled = True
      Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        lblTotal.Visible = True
        LBLQTY.Visible = True
        lblgrosswt.Visible = True
        lbltarewt.Visible = True
        lblnettwt.Visible = True
    
        Text4.Text = Txtfields(22).Text
        Text5.Text = Txtfields(23).Text
        Text6.Text = Txtfields(24).Text
        Text7.Text = Txtfields(25).Text
      Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     BUTTON(4).Enabled = True
     On Error GoTo GoPrevError
     StatusBar1.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
        Call disablcontls
        Call gridalign
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
        Call gridalign
    End If
    'show the current record
    Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        StatusBar1.Panels(2) = "No Records Found"
        End If
        BUTTON(4).Enabled = True
    Frame2.Visible = True
    Label9.Visible = True
    Text4.Visible = True
    Text5.Visible = True
    Text6.Visible = True
    Text7.Visible = True
    lblTotal.Visible = True
    LBLQTY.Visible = True
    lblgrosswt.Visible = True
    lbltarewt.Visible = True
    lblnettwt.Visible = True

    Text4.Text = Txtfields(22).Text
    Text5.Text = Txtfields(23).Text
    Text6.Text = Txtfields(24).Text
    Text7.Text = Txtfields(25).Text
    
    Exit Sub
GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "Last record"
     BUTTON(4).Enabled = True
     On Error GoTo GoLastError
     If adoPrimaryRS.RecordCount <> 0 Then
        adoPrimaryRS.MoveLast
        Call bindcontls
        Call disablcontls
        Call gridalign
        'calling las procedure from module
        Call navi(BUTTON)
        Call las(BUTTON)
        StatusBar1.Panels(2).Text = "Last record"
        Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        lblTotal.Visible = True
        LBLQTY.Visible = True
        lblgrosswt.Visible = True
        lbltarewt.Visible = True
        lblnettwt.Visible = True
        Text4.Text = Txtfields(22).Text
        Text5.Text = Txtfields(23).Text
        Text6.Text = Txtfields(24).Text
        Text7.Text = Txtfields(25).Text
        Beep
        BUTTON(4).Enabled = True
     End If
        Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head

Case 9


If OptCommercialWt = True Then
    wflg = "C"
Else
    wflg = "M"
End If

'     Save
Dim sType As String
If Opt = "add" Or Opt = "mod" Then
        
        Set rsnew = New Recordset
        rsnew.Open "select Varcode""Variety Code"",varname""Variety Name"" from rm_var where Varcode='" & Txtfields(29).Text & "' and catcd='" & Txtfields(0).Text & "'", DB, adOpenStatic
        If rsnew.EOF Then
            MsgBox "Category not Matched !! Selected Varierty", vbInformation, head
            Exit Sub
        End If
  
    
    favWgt = 0
    a = 0
    B = 0
    c = 0
    d = 0
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
            
           favWgt = favWgt + IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text))
                a = a + ADOSECONDARYRS("grwt")
                B = B + ADOSECONDARYRS("TareWt")
                c = c + ADOSECONDARYRS("NetWt")
                d = d + val(grddatagrid.Columns("Commercial Weight").Text)
           
            ADOSECONDARYRS.MoveNext
        Loop
        Text5 = a
        Text6 = B
        Text7 = c
        Text8 = d
      Dim f As Integer
        
            If Txtfields(5).Text = "" Then
                MsgBox "Please Enter Invoice Weight ", vbInformation, head
                Txtfields(5).SetFocus
                Exit Sub
            End If
            If wflg = "M" Then
                 If Round(favWgt, 3) <> Round(val(Txtfields(25).Text), 3) Then
                    MsgBox "Favaourable Weight Not matched With Bale Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             Else
             
                If Round(favWgt, 3) <> Round(val(Txtfields(5).Text), 3) Then
                    MsgBox "Favaourable Weight Not matched With Bale Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             End If
      
               If Round(d, 3) <> Round(val(Txtfields(5).Text), 3) Then
                    MsgBox "Commercial Weight Not matched With Bale wise Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                End If


     


    If optJob.value = True Then sType = "J" Else sType = "O"
    
    If Opt = "add" Then
'        Set rsd = New Recordset
'        rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' and lotrectype = '" & sType & "'", DB, adOpenStatic
'        If rsd.RecordCount > 0 Then
'            Txtfields(2).Text = rsd("lotno")
'        Else
'            Txtfields(2).Text = "1"
'        End If
    End If
    
    If Txtfields(0).Text = "" Then
        MsgBox "Please enter Category", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(0).Locked = False
        Txtfields(0).SetFocus
        Exit Sub
    End If
    
    If Txtfields(29).Text = "" Then
        MsgBox "Please enter Variety", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(29).Locked = False
        Txtfields(29).SetFocus
        Exit Sub
    End If
    
    If Opt = "add" Then
        Set Rs = New Recordset
        If optJob = True Then
            If LotNoGen = "S" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text), DB, adOpenStatic
            ElseIf LotNoGen = "C" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "'", DB, adOpenStatic
            ElseIf LotNoGen = "V" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "' and VarCode ='" & Txtfields(29).Text & "'", DB, adOpenStatic
            End If
        Else
            If LotNoGen = "S" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text), DB, adOpenStatic
            ElseIf LotNoGen = "C" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "'", DB, adOpenStatic
            ElseIf LotNoGen = "V" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "' and VarCode ='" & Txtfields(29).Text & "'", DB, adOpenStatic
            End If
        End If
        If Rs.EOF = False Then
            MsgBox "Please Enter Another Lot No., This Lot No. is Already is defined", vbInformation, head
            SSTab1.Tab = 0
            Txtfields(2).Locked = False
            Txtfields(2).SetFocus
            Exit Sub
        End If
    End If
    
    If Txtfields(1).Text = "" Then
        MsgBox "Please enter Receipt Number", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(1).Locked = False
        Txtfields(1).SetFocus
        Exit Sub
    End If
    
    If Txtfields(35).Text = "" Then
        MsgBox "Please select Transfer Type", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(35).Locked = False
        Txtfields(35).SetFocus
        Exit Sub
    End If
    
    If Txtfields(28).Text = "" Then
        MsgBox "Please Enter Area ", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(28).Locked = False
        Txtfields(28).SetFocus
        Exit Sub
    End If
    
    
    If val(Txtfields(2).Text) = 0 Then
        MsgBox "Please enter Lot Number", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(2).Locked = False
        Txtfields(2).SetFocus
        Exit Sub
    End If

    If Txtfields(26).Text = "" Then
        MsgBox "Please enter Supplier Code", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(26).Locked = False
        Txtfields(26).SetFocus
        Exit Sub
    End If
    If Trim(Txtfields(20).Text) = "" Then
        MsgBox "Please enter Godown Code", vbInformation, head
        If SSTab1.Tab = 2 Then
        SSTab1.Tab = 0
        Txtfields(20).Locked = False
        Txtfields(20).SetFocus
        Else
        SSTab1.Tab = 0
        Txtfields(20).Locked = False
        Txtfields(20).SetFocus
        End If
        Exit Sub
    End If
    If Trim(Txtfields(23).Text) = "" Then
        MsgBox "Please enter Gross Weight", vbInformation, head
        Txtfields(23).Locked = False
        Txtfields(23).SetFocus
        Exit Sub
    End If
    If Trim(Txtfields(24).Text) = "" Then
        MsgBox "Please enter Tare Weight", vbInformation, head
        Txtfields(24).Locked = False
        Txtfields(24).SetFocus
        Exit Sub
    End If
    Txtfields(6).Text = Format(Txtfields(6).Text, "#0.00")
    If Txtfields(6).Text = "0.00" Then
        MsgBox "Invoice Value must be greater than zero", vbInformation, head
        Txtfields(6).Text = ""
        Txtfields(6).SetFocus
    End If
    If Text5.Text = "" Then
        Text5.Text = 0
    End If
    If Text6.Text = "" Then
        Text6.Text = 0
    End If
    If Round(Txtfields(23).Text) <> Round(Text5.Text) Then
        MsgBox "Lotwise Gross Weight does not tally with Balewise Gross Wt.", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(23).SetFocus
        Exit Sub
    End If
    If Round(Txtfields(24).Text) <> Round(Text6.Text) Then
        MsgBox "Lotwise Tare Weight does not tally with Balewise Tare Wt.", vbInformation, head
        Txtfields(24).SetFocus
        Exit Sub
    End If
    
    If IsDate(MaskEdBox1(0).Text) = False Then
        MsgBox "Please enter valid Receipt Date", vbInformation, head
        Exit Sub
    End If
    If Trim(Txtfields(6).Text) = "" Then
        MsgBox "Please enter Invoice Value", vbInformation, head
        If SSTab1.Tab = 2 Then
            SSTab1.Tab = 1
            Txtfields(6).SetFocus
            Txtfields(6).Locked = False
        Else
            SSTab1.Tab = 1
            Txtfields(6).Locked = False
            Txtfields(6).SetFocus
        End If
        Exit Sub
    End If

End If
    If Opt = "add" Then
    
       adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
       adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
       adoPrimaryRS("OPFLG") = "N"
       adoPrimaryRS("TransferType") = Txtfields(35).Text
       adoPrimaryRS("Lotyear") = Year(yfdate)
       adoPrimaryRS("Rejflg") = "N"
       adoPrimaryRS("SampleFlag") = Chk_SampleFlag.value
       
       If MaskEdBox1(2).Text = "__/__/____" Then
            adoPrimaryRS("billdt") = Null
       Else
            adoPrimaryRS("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
       End If
       If Combo1.Text = "Bale" Then
       adoPrimaryRS("bblflg") = "B"
       Else
       adoPrimaryRS("bblflg") = "R"
       End If
       
       adoPrimaryRS("weightflg") = wflg
       
       'RAvi
''       Set rs = New Recordset
''       rs.Open "SELECT ISNULL(MAX(lotno),0)+1 FROM rm_lot WHERE  lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lottype = 'T'", DB, adOpenStatic
''       docno = rs(0)
''       If docno = "" Then Exit Sub
''       Txtfields(2).Text = docno
'       adoprimaryrs("lotno") = txtfields(2).Text
'       adoprimaryrs("divcode") = divcode
'       adoprimaryrs("LOTTYPE") = "T"
'       adoprimaryrs("CATCD") = txtfields(0).Text
'       adoprimaryrs("PTYWGT") = txtfields(5).Text
        
       
       adoPrimaryRS("lotno").value = val(Txtfields(2).Text)
       adoPrimaryRS("plotno") = Trim(Txtfields(37).Text)
       adoPrimaryRS("divcode") = Divcode
       adoPrimaryRS("LOTTYPE") = "T"
       adoPrimaryRS("JBSentQty").value = val(Txtfields(39).Text)
       
       
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Transfer Receipt"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
           
            TrnLog("arrno") = val(Txtfields(1).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")

            TrnLog("slcode") = Txtfields(26).Text
            TrnLog("purtype") = Txtfields(35).Text
           
            TrnLog("areacode") = IIf(Trim(Txtfields(28).Text) = "", Null, Txtfields(28).Text)
            TrnLog("Agent_code") = IIf(Trim(Txtfields(27).Text) = "", Null, Txtfields(27).Text)
            
            TrnLog("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("lotno") = val(Txtfields(2).Text)
            
            TrnLog("docdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("docno") = val(Txtfields(2).Text)
            TrnLog("billno") = Txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
            If Combo1.Text = "Bale" Then
             TrnLog("bbflg") = "B"
            Else
              TrnLog("bbflg") = "R"
            End If
            
            
           ' TrnLog("rateunit") = Trim(txtfields(110).Text)
            

            TrnLog("godown") = Trim(Txtfields(22).Text)
            TrnLog("varcode") = Trim(Txtfields(29).Text)
            TrnLog("CATCD") = Trim(Txtfields(0).Text)

       
     
            TrnLog("ordqty") = Trim(Txtfields(22).Text)
            TrnLog("Grosswt") = val(Txtfields(23).Text)
            TrnLog("tarewt") = val(Txtfields(24).Text)
   
            TrnLog("netwt") = val(Txtfields(25).Text)
            
            TrnLog("AssAmount") = val(Txtfields(6).Text)
            TrnLog("RateCY") = val(Txtfields(19).Text)
            TrnLog("LandingCost") = val(Txtfields(18).Text)
            TrnLog("ratekg") = val(Txtfields(19).Text)
          
            TrnLog.UpdateBatch adAffectAllChapters
       
       
       
       If optJob.value = True Then adoPrimaryRS("lotRectype") = "J" Else adoPrimaryRS("lotRectype") = "O"
'       adoprimaryrs("CATCD") = txtfields(0).Text
'       adoprimaryrs("PTYWGT") = txtfields(5).Text
'       adoprimaryrs("supcd") = txtfields(26).Text
'       adoprimaryrs("bales") = txtfields(22).Text
'       adoprimaryrs("grswgt") = txtfields(23).Text
'       adoprimaryrs("tarewt") = txtfields(24).Text
'       adoprimaryrs("netwt") = txtfields(25).Text
'       adoprimaryrs("billno") = txtfields(3).Text
'       adoprimaryrs("sampwt") = txtfields(4).Text
'       adoprimaryrs("pjamt") = txtfields(6).Text
'       adoprimaryrs("taxamt") = txtfields(7).Text
'       adoprimaryrs("bedamt") = txtfields(8).Text
'       adoprimaryrs("odint") = IIf(txtfields(9).Text = "", Null, txtfields(9).Text)
'       adoprimaryrs("freght") = txtfields(10).Text
'       adoprimaryrs("rlyfrt") = txtfields(11).Text
'       adoprimaryrs("ldgulg") = txtfields(12).Text
'       adoprimaryrs("spotexp") = txtfields(13).Text
'       adoprimaryrs("dnamt1") = txtfields(14).Text
'       adoprimaryrs("dnamt2") = txtfields(15).Text
'       adoprimaryrs("insamt") = txtfields(16).Text
'       adoprimaryrs("brkcom") = IIf(txtfields(17).Text = "", Null, txtfields(17).Text)
'       adoprimaryrs("totlandcost") = txtfields(18).Text
        adoPrimaryRS("ratekg") = val(Txtfields(19).Text)
        adoPrimaryRS("ratecy") = val(Txtfields(19).Text)
'       adoprimaryrs("godown") = txtfields(20).Text
'     '  adoprimaryrs("lgroup") = txtfields(21).Text
       If wflg = "C" Then
       adoPrimaryRS("FAVAOURABLEWGT") = val(Txtfields(5).Text)
       Else
       adoPrimaryRS("FAVAOURABLEWGT") = val(Txtfields(25).Text)
       End If
       adoPrimaryRS("Comm_Wt") = val(Txtfields(5).Text)
       
     '  On Error Resume Next
       
       adoPrimaryRS.UpdateBatch adAffectAllChapters
      ' DB.Execute "update rm_lot set awt_flg='Y' where lotno ='" & val(Txtfields(2).Text) & "' "
      DB.Execute "update rm_lot set awt_flg='Y' where divcode='" & Divcode & "' and  lotno ='" & val(Txtfields(2).Text) & "' and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and VarCode='" & Txtfields(29).Text & "' and lottype='T' "
       ADOSECONDARYRS.MoveFirst
       Do While Not ADOSECONDARYRS.EOF
       If grddatagrid.Columns(2).Text = "" Then
       ADOSECONDARYRS.Delete
       End If
       ADOSECONDARYRS.MoveNext
       Loop
       ADOSECONDARYRS.MoveFirst
       Do While Not ADOSECONDARYRS.EOF
            ADOSECONDARYRS("Lotno") = Txtfields(2).Text
            ADOSECONDARYRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            ADOSECONDARYRS("catcd") = adoPrimaryRS("catcd")
            ADOSECONDARYRS("BALENO") = grddatagrid.Columns(2).Text
            ADOSECONDARYRS("GRWT") = val(grddatagrid.Columns(3).Text)
            ADOSECONDARYRS("TAREWT") = val(grddatagrid.Columns(4).Text)
            ADOSECONDARYRS("NETWT") = val(grddatagrid.Columns(5).Text)
            ADOSECONDARYRS("LOTTYPE") = "T"
            ADOSECONDARYRS("ARRNO") = val(Txtfields(1).Text)
            ADOSECONDARYRS("ARRDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            ADOSECONDARYRS("STATUS") = "AC"
       
            If optJob.value = True Then ADOSECONDARYRS("lotRectype") = "J" Else ADOSECONDARYRS("lotRectype") = "O"
        
            ADOSECONDARYRS("divcode") = Divcode
            ADOSECONDARYRS("VARCODE") = adoPrimaryRS("VARCODE")
            ADOSECONDARYRS.MoveNext
       Loop
       ADOSECONDARYRS.UpdateBatch adAffectAllChapters
       
       ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
        If Optown = True Then
            If LotNoGen = "S" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
            ElseIf LotNoGen = "C" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and CatCd='" & Txtfields(0).Text & "'"
            ElseIf LotNoGen = "V" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and CatCd='" & Txtfields(0).Text & "' And VarCode='" & Txtfields(29).Text & "'"
            End If
            DB.Execute (strSQL)
        Else
            If LotNoGen = "S" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
            ElseIf LotNoGen = "C" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and CatCd='" & Txtfields(0).Text & "'"
            ElseIf LotNoGen = "V" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and CatCd='" & Txtfields(0).Text & "' And VarCode='" & Txtfields(29).Text & "'"
            End If
            DB.Execute (strSQL)
        End If
        ADOSECONDARYRS.MoveNext
        Loop
        ADOSECONDARYRS.MoveFirst
        
           
          Screen.MousePointer = vbHourglass
    Dim TotalRecKgs As Double
               Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "SELECT Divcode,LotNo,Lotdt,slcode,LotType,Lotyear,Varcode,Docno,DocDt,IssuedQty,BalQty,RecQty  FROM RM_JOBWKRec where 1 =2 and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) <> "" And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) > 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("Lotdt") = Format(MaskEdBox1(1).Text, "yyyy-MM-dd")
                            UPDRS("LotNo") = Trim(Txtfields(2).Text)
                            UPDRS("slcode") = Trim(Txtfields(26).Text)
                            UPDRS("lottype") = "T"
                            UPDRS("Lotyear") = val(Year(yfdate))
                            UPDRS("Varcode") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW))
                            UPDRS("Docno") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW))
                            UPDRS("Docdt") = Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd")
                            
                            UPDRS("IssuedQty") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDISQTY, RW))
                            UPDRS("BalQty") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW))
                            UPDRS("RecQty") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                            
                            TotalRecKgs = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                            Set rsbam = New Recordset
                            rsbam.Open "select (isskgs-isnull(b.RecKgs,0))  balkgs ,baleno,lotno,lotdt from rm_issb b  where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "' and (isskgs-isnull(b.RecKgs,0)) >0 order by baleno asc", DB, adOpenStatic
                            If Not rsbam.EOF Then
                                 Do While Not rsbam.EOF
                                            
                                        If TotalRecKgs > 0 Then
                                            If TotalRecKgs >= val(rsbam("balkgs")) Then
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) +'" & val(rsbam("balkgs")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "'  and baleno ='" & val(rsbam("baleno")) & "' "
                                            Else
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) +'" & val(Format(TotalRecKgs, "#0.000")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "' and baleno ='" & val(rsbam("baleno")) & "' "
                                            End If
                                          '  TotalMtr = TotalMtr - Val(GetText(SpdDESPATCH, E_SIZEDESPDC1.SPDDBEAMLEN, RW))
                                            TotalRecKgs = TotalRecKgs - val(rsbam("balkgs"))
                                        Else
                                          
                                       End If
                                       rsbam.MoveNext
                                   Loop
                             End If
                

                        End If
                    Next
                End With

                UPDRS.UpdateBatch adAffectAllChapters
           

  
           
           
       ''DB.Execute ("update rm_arrival set lotno='" & Txtfields(2).Text & "',catcd='" & Txtfields(0).Text & "',lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "',lottype = 'T' where arrno='" & adoPrimaryRS("arrno") & "' and arrdate='" & Format(adoPrimaryRS("arrdt"), "yyyy-mm-dd") & "' and divcode='" & adoPrimaryRS("divcode") & "'")
       DB.CommitTrans
       MsgBox "Record(s) Saved!", vbInformation, head
       MsgBox "Transfer Receipt No. is " & Txtfields(1).Text
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
      End If
    
   If Opt = "mod" Then
         adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
         adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
         adoPrimaryRS("opflg") = "N"
       If IsNull(MaskEdBox1(2).Text) = False Then
            adoPrimaryRS("billdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
       Else
            adoPrimaryRS("billdt") = Null
       End If
       If Combo1.Text = "Bale" Then
        adoPrimaryRS("bblflg") = "B"
       Else
        adoPrimaryRS("bblflg") = "R"
       End If
       adoPrimaryRS("lottype") = "T"
       adoPrimaryRS("divcode") = Divcode
       adoPrimaryRS("lotno") = Txtfields(2).Text
       adoPrimaryRS("TransferType") = Txtfields(35).Text
       adoPrimaryRS("Lotyear") = Year(yfdate)
       adoPrimaryRS("Rejflg") = "N"
       adoPrimaryRS("ratekg") = val(Txtfields(19).Text)
       adoPrimaryRS("ratecy") = val(Txtfields(19).Text)
       adoPrimaryRS("SampleFlag") = Chk_SampleFlag.value
       If wflg = "C" Then
            adoPrimaryRS("FAVAOURABLEWGT") = val(Txtfields(5).Text)
       Else
            adoPrimaryRS("FAVAOURABLEWGT") = val(Txtfields(25).Text)
       End If
       adoPrimaryRS("weightflg") = wflg
       adoPrimaryRS("Comm_Wt") = val(Txtfields(5).Text)
        Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Transfer Receipt"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
  
            TrnLog("arrno") = Trim(Txtfields(1).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")

            TrnLog("slcode") = Txtfields(26).Text
            TrnLog("purtype") = Txtfields(35).Text
           
            TrnLog("areacode") = IIf(Trim(Txtfields(28).Text) = "", Null, Txtfields(28).Text)
            TrnLog("Agent_code") = IIf(Trim(Txtfields(27).Text) = "", Null, Txtfields(27).Text)
            
            TrnLog("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("lotno") = val(Txtfields(2).Text)
            
            TrnLog("docdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("docno") = val(Txtfields(2).Text)
            TrnLog("billno") = Txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
            If Combo1.Text = "Bale" Then
             TrnLog("bbflg") = "B"
            Else
              TrnLog("bbflg") = "R"
            End If

            TrnLog("godown") = Trim(Txtfields(22).Text)
            TrnLog("varcode") = Trim(Txtfields(29).Text)
            TrnLog("CATCD") = Trim(Txtfields(0).Text)

    
     
            TrnLog("ordqty") = Trim(Txtfields(22).Text)
            TrnLog("Grosswt") = val(Txtfields(23).Text)
            TrnLog("tarewt") = val(Txtfields(24).Text)
   
            TrnLog("netwt") = val(Txtfields(25).Text)
            
            TrnLog("AssAmount") = val(Txtfields(6).Text)
            TrnLog("RateCY") = val(Txtfields(19).Text)
            TrnLog("LandingCost") = val(Txtfields(18).Text)
            TrnLog("ratekg") = val(Txtfields(19).Text)
          
            TrnLog.UpdateBatch adAffectAllChapters
       
       
       
       
       ADOSECONDARYRS.MoveFirst
       Do While Not ADOSECONDARYRS.EOF
            ADOSECONDARYRS("Lotno") = Txtfields(2).Text
            ADOSECONDARYRS("Lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            ADOSECONDARYRS("catcd") = adoPrimaryRS("catcd")

            ADOSECONDARYRS("BALENO") = grddatagrid.Columns(2).Text
            ADOSECONDARYRS("GRWT") = grddatagrid.Columns(3).Text
            ADOSECONDARYRS("TAREWT") = grddatagrid.Columns(4).Text
            ADOSECONDARYRS("NETWT") = grddatagrid.Columns(5).Text
            ADOSECONDARYRS("LOTTYPE") = "T"
            ADOSECONDARYRS("ARRNO") = val(Txtfields(1).Text)
            ADOSECONDARYRS("ARRDT") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            ADOSECONDARYRS("STATUS") = "AC"
            ADOSECONDARYRS("VARCODE") = adoPrimaryRS("VARCODE")
            If optJob.value = True Then ADOSECONDARYRS("lotRectype") = "J" Else ADOSECONDARYRS("lotRectype") = "O"
            ADOSECONDARYRS.MoveNext
       Loop
       ADOSECONDARYRS.UpdateBatch adAffectAllChapters

'       Else
'            Set rs = New Recordset
'            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "'", db
'            db.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= " & oldcontno & " and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' ")
'            Set rs1 = New Recordset
'            rs1.Open "select isnull(recqty,0) from rm_cont where contno='" & TXTFIELDS(1).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'", db
'            db.Execute ("update rm_cont set recqty =" & rs1(0) & " + " & Val(TXTFIELDS(15).Text) & "  where contno= " & TXTFIELDS(1).Text & " and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' ")
       BUTTON(4).Enabled = True
   ''    End If
      
       adoPrimaryRS.UpdateBatch adAffectAllChapters
       ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
        If Optown = True Then
            If LotNoGen = "S" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
            ElseIf LotNoGen = "C" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and Catcd='" & Txtfields(0).Text & "'"
            ElseIf LotNoGen = "V" Then
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and Catcd='" & Txtfields(0).Text & "' and VarCode='" & Txtfields(29).Text & "'"
            End If
            DB.Execute (strSQL)
        Else
            If LotNoGen = "S" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
            ElseIf LotNoGen = "C" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'  and Catcd='" & Txtfields(0).Text & "'"
            ElseIf LotNoGen = "V" Then
                strSQL = "update rm_bale set lotRecType='J', FavaourableWgt = " & IIf(wflg = "M", val(grddatagrid.Columns(5).Text), val(grddatagrid.Columns("Commercial Weight").Text)) & " where arrno='" & Txtfields(1).Text & "' and arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & Txtfields(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and Catcd='" & Txtfields(0).Text & "' and VarCode='" & Txtfields(29).Text & "'"
            End If
            DB.Execute (strSQL)
        End If
        ADOSECONDARYRS.MoveNext
        Loop
        ADOSECONDARYRS.MoveFirst
        
       DB.Execute "update rm_lot set awt_flg='Y' where divcode='" & Divcode & "' and  lotno ='" & val(Txtfields(2).Text) & "' and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and VarCode='" & Txtfields(29).Text & "' and lottype='T' "
       DB.CommitTrans
       MsgBox "Record(s) Modified", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
  End If

 If Opt = "del" Then
        On Error GoTo del
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
        
        
         If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
         Dim DelReasonCode As String
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
        
         Set TrnLog = New Recordset
            TrnLog.Open "SELECT DelReason, Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Transfer Receipt"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
  
            TrnLog("arrno") = Trim(Txtfields(1).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")

            TrnLog("slcode") = Txtfields(26).Text
            TrnLog("purtype") = Txtfields(35).Text
        
            TrnLog("areacode") = IIf(Trim(Txtfields(28).Text) = "", Null, Txtfields(28).Text)
            TrnLog("Agent_code") = IIf(Trim(Txtfields(27).Text) = "", Null, Txtfields(27).Text)
            
            TrnLog("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("lotno") = val(Txtfields(2).Text)
            
            TrnLog("docdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            TrnLog("docno") = val(Txtfields(2).Text)
            TrnLog("billno") = Txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
            If Combo1.Text = "Bale" Then
             TrnLog("bbflg") = "B"
            Else
              TrnLog("bbflg") = "R"
            End If

            TrnLog("godown") = Trim(Txtfields(22).Text)
            TrnLog("varcode") = Trim(Txtfields(29).Text)
            TrnLog("CATCD") = Trim(Txtfields(0).Text)


            TrnLog("ordqty") = Trim(Txtfields(22).Text)
            TrnLog("Grosswt") = val(Txtfields(23).Text)
            TrnLog("tarewt") = val(Txtfields(24).Text)
   
            TrnLog("netwt") = val(Txtfields(25).Text)
            
            TrnLog("AssAmount") = val(Txtfields(6).Text)
            TrnLog("RateCY") = val(Txtfields(19).Text)
            TrnLog("LandingCost") = val(Txtfields(18).Text)
            TrnLog("ratekg") = val(Txtfields(19).Text)
             TrnLog("DelReason") = Trim(DelReasonCode)
            TrnLog.UpdateBatch adAffectAllChapters
        If LotNoGen = "S" Then
            DB.Execute ("delete from rm_BALE where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T'")
            DB.Execute ("delete from rm_LOT where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T'")
        ElseIf LotNoGen = "C" Then
            DB.Execute ("delete from rm_BALE where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T' and CatCd='" & Txtfields(0).Text & "'")
            DB.Execute ("delete from rm_LOT where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T' and CatCd='" & Txtfields(0).Text & "'")
        ElseIf LotNoGen = "V" Then
            DB.Execute ("delete from rm_BALE where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T' and CatCd='" & Txtfields(0).Text & "' and VarCode='" & Txtfields(29).Text & "'")
            DB.Execute ("delete from rm_LOT where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T' and CatCd='" & Txtfields(0).Text & "' and VarCode='" & Txtfields(29).Text & "'")
        End If
        
        DB.Execute ("delete from RM_JOBWKRec where divcode='" & Divcode & "' and LOTno =" + "'" + Trim(Txtfields(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'T'  ")
        
               With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) <> "" And val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) > 0 Then

                            TotalRecKgs = val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW))
                            Set rsbam = New Recordset
                            rsbam.Open "select (isnull(b.RecKgs,0))  balkgs ,baleno,lotno,lotdt from rm_issb b  where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "' and (isnull(b.RecKgs,0))>0 order by baleno desc", DB, adOpenStatic
                            If Not rsbam.EOF Then
                                 Do While Not rsbam.EOF
                                            
                                        If TotalRecKgs > 0 Then
                                            If TotalRecKgs >= val(rsbam("balkgs")) Then
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) -'" & val(rsbam("balkgs")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "'  and baleno ='" & val(rsbam("baleno")) & "' "
                                            Else
                                                DB.Execute "update rm_issb set  RecKgs  =  isnull(RecKgs,0) -'" & val(Format(TotalRecKgs, "#0.000")) & "' where docno = " & val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCNO, RW)) & "  and lotdt='" & Format(rsbam("lotdt"), "yyyy-mm-dd") & "' and lotno='" & val(rsbam("lotno")) & "' and docdt='" & Format((GetText(SpdEmpAllocation, SpdAllocation.SPDDDOCDT, RW)), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and varcode = '" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) & "' and baleno ='" & val(rsbam("baleno")) & "' "
                                            End If
                                          '  TotalMtr = TotalMtr - Val(GetText(SpdDESPATCH, E_SIZEDESPDC1.SPDDBEAMLEN, RW))
                                            TotalRecKgs = TotalRecKgs - val(rsbam("balkgs"))
                                        Else
                                          
                                       End If
                                       rsbam.MoveNext
                                   Loop
                             End If
                

                        End If
                    Next
                End With
        
        
        DB.CommitTrans
        MsgBox "Record(s) Deleted!", vbInformation, head
        'BUTTON(9).ToolTipText = "Save"
        Opt = ""
        BUTTON(4).Enabled = True
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
 End If
 If Opt = "fnd" Then
    Opt = ""
    DB.CommitTrans
 End If
    'Return to query mode
     Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus ''''''''
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:
If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    'BUTTON(9).ToolTipText = "Save"
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
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call query_mode
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
   If adoPrimaryRS.RecordCount = 0 Then
       BUTTON(4).Enabled = False
    End If
'    Call cancl(BUTTON)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Frame7.Visible = True
    Frame3.Visible = False
    SSTab1.Visible = True
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 12
        Frame5.Visible = True
        Frame5.ZOrder 0
        Option5.value = True
        Option5.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        Command7.Visible = True
        Buttonframe.Enabled = False
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub CmdOrderOk_Click()
Call SETDESPATCHHead
 chk = 0
 TOTQty = 0
 IssuedTotQty = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCNO, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCNO, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDDISQTY, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, RW)
                VarProd = VarProd + ",'" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISVARCODE, RW)) & "'"
                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISVARCODE, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDVarietyName, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISVARNAME, RW)
  
                SpdEmpAllocation.SetText SpdAllocation.SPDDDOCDT, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISDOCDT, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDDBALQTY, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, RW)
                TOTQty = TOTQty + val(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, RW))
                IssuedTotQty = IssuedTotQty + val(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, RW))
            End If
        Next
    End With
    Txtfields(39).Text = Format(TOTQty, "#0.000")
'     SpdEmpAllocation.Col = SpdAllocation.SPDDDOCNO
'                SpdEmpAllocation.SetFocus
    FraOrd.Visible = False
    Txtfields(27).SetFocus
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
    Txtfields(22).Locked = True
    Txtfields(23).Locked = True
    Txtfields(24).Locked = True
    Txtfields(25).Locked = True
    grddatagrid.Enabled = False
Else
    Call disablcontls
End If
     'To extract the transaction  code
    'a = DataGrid1.Columns(1).Text
    f = DataGrid1.Columns(1).Text
    oldarrdt = DataGrid1.Columns(3).Text
    'To extract the document number
    'b = DataGrid1.Columns(2).Text
    g = DataGrid1.Columns(0).Text
    
    oldarrno = DataGrid1.Columns(2).Text
    
   ' Call delmodproc(CStr(f), CStr(g))
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(9).SetFocus

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame9.Visible = False
Frame7.Visible = True
BUTTON_Click (10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()    'activex cancel
On Error GoTo Command3_Click_Error

Frame6.Visible = False
SSTab1.Visible = True

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()    'activex okay
On Error GoTo Command4_Click_Error

        desc.Caption = "Query"
        'Set adoprimaryrs = New Recordset
        'adoprimaryrs.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  order by arrno", DB, adOpenStatic, adLockOptimistic
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,OPFLG,PLOTNO,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE isswt is null and issbal is null  " & _
                 "  AND A.DIVCODE = '" & Divcode & "' and A.lotno >='" & txtqry.Text & "' and  lottype = 'T' " & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt FROM RM_BALE" & _
                 " where   lotno >='" & txtqry.Text & "' ) Order by baleno" & _
                 "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,lottype to lottype,CATCD TO CATCD ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
        Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
        Set grddatagrid.DataSource = ADOSECONDARYRS
            Call gridalign
            Call gridalign
            Call bindcontls
        
        ' Frame2.Visible = False
                    SSTab1.Visible = True
        grddatagrid.Visible = True
       ' grddatagrid.AllowAddNew = False
        SSTab1.Visible = True
        If adoPrimaryRS("BBLFLG") = "B" Then
            Combo1.Text = "Bale"
        ElseIf adoPrimaryRS("BBLFLG") = "R" Then
          Combo1.Text = "Borah"
        End If
    '   Option1.Enabled = False
    '   Option2.Enabled = False
    
      Text4.Visible = False
      Text5.Visible = False
      Text6.Visible = False
      Text7.Visible = False
      lblTotal.Visible = False
        LBLQTY.Visible = False
        lblgrosswt.Visible = False
        lbltarewt.Visible = False
        lblnettwt.Visible = False
      Call gridalign
   
        If Opt = "mod" Then
            Txtfields(0).Locked = True
            Txtfields(1).Locked = True
            ''txtfields(2).Locked = False
            Txtfields(3).Locked = False
            Txtfields(4).Locked = False
            Txtfields(6).Locked = False
            Txtfields(7).Locked = False
            Txtfields(9).Locked = False
            Txtfields(11).Locked = False
            Txtfields(12).Locked = False
            Frame2.Visible = True
            Label9.Visible = True
            Text4.Visible = True
            Text5.Visible = True
            Text6.Visible = True
            Text7.Visible = True
            lblTotal.Visible = True
            LBLQTY.Visible = True
            lblgrosswt.Visible = True
            lbltarewt.Visible = True
            lblnettwt.Visible = True
            Text4.Text = ADOSECONDARYRS.RecordCount
            Text5.Text = adoPrimaryRS("grswgt")
            Text6.Text = adoPrimaryRS("tarewt")
            Text7.Text = adoPrimaryRS("netwt")
            grddatagrid.AllowUpdate = True
            'grddatagrid.AllowAddNew = True
            If ADOSECONDARYRS.RecordCount > 0 Then
            grddatagrid.Columns(2).Text = ADOSECONDARYRS.RecordCount
            grddatagrid.Columns(3).Text = adoPrimaryRS("grswgt")
            grddatagrid.Columns(4).Text = adoPrimaryRS("tarewt")
            grddatagrid.Columns(5).Text = adoPrimaryRS("netwt")
            End If
            oldgrs = Txtfields(23).Text
            oldtare = Txtfields(24).Text
            QTY = Txtfields(22).Text
            W = Txtfields(22).Text
            Screen.MousePointer = 0
            MaskEdBox1(1).Enabled = True
        End If
        If Opt = "mod" Then
            grddatagrid.Enabled = True
            grddatagrid.AllowUpdate = True
            grddatagrid.EditActive = True
            grddatagrid.Columns(2).Locked = True
        End If
    
    Screen.MousePointer = 0
    '
    '
    '
    '        'Bind the text boxes,check boxes and option buttons  to the data source
    '        If adoprimaryrs.RecordCount = 0 Then
    '            'MsgBox "No Such Arrival No. Found", vbInformation, head
    '            Command4.Enabled = False
    '            txtqry.Text = ""
    '        Else
    '
    '        Call bindcontls
    '        'calling query procedure from module
            Call query(BUTTON)
    '        BUTTON(4).Enabled = False
    '        BUTTON(5).Enabled = False
    '        BUTTON(6).Enabled = False
    '        BUTTON(7).Enabled = False
    '        BUTTON(8).Enabled = False
            Frame6.Visible = False
    '        Frame9.Visible = True
    '        Frame3.Visible = True
            SSTab1.Visible = True
    '        End If
    End If

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub DTPicker1_CloseUp()

End Sub
Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error

    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,opflg,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT WHERE isnull(isswt,0)=0 and isnull(issbal,0)=0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount <> 0 Then
            Set ADOSECONDARYRS = New Recordset
            'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT FROM RM_BALE WHERE isqty is null ", db, adOpenStatic, adLockBatchOptimistic
            ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,Lotrectype,Comm_Wt FROM RM_BALE WHERE isqty is null and lottype = 'T' ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            MsgBox "All Lots are used. Deletion/Modification Not allowed!", vbInformation, head
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                     "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                     " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt FROM RM_BALE" & _
                     " where lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
                     "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            Exit Sub
        End If
    Set Rs = New Recordset
    'rs.Open "select lotno ""lotno"",lotdt""Date"",arrno""Arr.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select lotno ""Lotno"",lotdt""Date"",arrno""Rec.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'", DB, adOpenStatic, adLockBatchOptimistic
    Frame9.Visible = True
    Frame9.ZOrder
    Set DataGrid1.DataSource = Rs
    Chk_SampleFlag.value = IIf(IsNull(adoPrimaryRS("SampleFlag")), 0, adoPrimaryRS("SampleFlag"))
    DataGrid1.Visible = True
    DataGrid1.Columns(0).Width = 734.7402
    DataGrid1.Columns(1).Width = 2819.906
    DataGrid1.Columns(2).Width = 1739.906
    DataGrid1.Columns(3).Width = 2489.953
    Command1.SetFocus
    DB.BeginTrans


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Label15.Caption = "Agent List" Or Label15.Caption = "Area List" Or Label15.Caption = "Variety List" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
    Exit Sub
End If
Call BUTTON_Click(10)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()    'activex okay
On Error GoTo Command6_Click_Error

Select Case KSLLIST1.listfield1
Case "cast(arrno as varchar)"
    Txtfields(1).Text = KSLLIST1.code
    MaskEdBox1(0).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,colorcode from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),colorcode from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        Txtfields(26).Text = arrrs(0)
        Txtfields(27).Text = arrrs(1)
        Txtfields(28).Text = arrrs(2)
        Txtfields(29).Text = arrrs(3)
        Txtfields(32).Text = arrrs("colorcode")
        Txtfields(30).Text = arrrs(4)
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        Txtfields(22).Text = arrrs(6)
        Txtfields(23).Text = arrrs(7)
        Txtfields(24).Text = arrrs(8)
        Txtfields(25).Text = arrrs(9)
        For I = 26 To 30
            Txtfields(I).Locked = True
        Next
        oldgrs = Txtfields(23).Text
        oldtare = Txtfields(24).Text
        QTY = Txtfields(22).Text
        Option1.Enabled = False
        Option2.Enabled = False
        Txtfields(22).SetFocus
    End If
Case "a.catcd"
    Txtfields(0).Text = KSLLIST1.code
    Txtfields(1).SetFocus
    MaskEdBox1(0).Text = pdate
Case "cast(ARRNO as varchar)"
    Txtfields(1).Text = KSLLIST1.code
    MaskEdBox1(0).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs(0) = 0 Then
        'Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,colorcode from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,grosswt/quantity*passbl,tarewt/quantity*passbl,(grosswt/quantity*passbl)-(tarewt/quantity*passbl),colorcode from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        Txtfields(26).Text = arrrs(0)
        Txtfields(27).Text = arrrs(1)
        Txtfields(28).Text = arrrs(2)
        'Txtvar.Text = arrrs(3)
        'Txtcnt.Text = arrrs(4)
        Txtfields(29).Text = arrrs(3)
        Txtfields(32).Text = arrrs("colorcode")
        Txtfields(30).Text = arrrs(4)
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        Txtfields(22).Text = arrrs(6)
        Txtfields(23).Text = arrrs(7)
        Txtfields(24).Text = arrrs(8)
        Txtfields(25).Text = arrrs(9)
        For I = 26 To 30
            Txtfields(I).Locked = True
        Next
'        Txtvar.Locked = True
'        Txtcnt.Locked = True
        Option1.Enabled = False
        Option2.Enabled = False
        Txtfields(22).SetFocus
    End If
'-------------------------------------------------------*******


Case "slcode"
     Txtfields(26).Text = KSLLIST1.code
     
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     Txtfields(27).SetFocus
Case "SLCODE"
     If KSLLIST1.code = Txtfields(26).Text Then
        MsgBox "Agent Code must be different from Supplier Code", vbInformation, head
        KSLLIST1.SetFocus
        Exit Sub
     Else
        Txtfields(27).Text = KSLLIST1.code
        text2.Text = Trim(KSLLIST1.Description)
        Frame3.Visible = False
        Frame1.Visible = True
        Frame2.Visible = True
        Txtfields(28).SetFocus
   End If
Case "areacode"
     Txtfields(28).Text = KSLLIST1.code
     
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     Txtfields(29).SetFocus
Case "varcode"
     Txtfields(29).Text = KSLLIST1.code
     Txtfields(21).Text = KSLLIST1.Description
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     Txtfields(32).SetFocus
Case "colorcode"
     Txtfields(32).Text = KSLLIST1.code
     Txtfields(31).Text = KSLLIST1.Description
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     Txtfields(30).SetFocus
Case "cntcd"
     Txtfields(30).Text = KSLLIST1.code
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
          Txtfields(22).SetFocus
Case "gcode"
     Txtfields(20).Text = KSLLIST1.code
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
          Txtfields(3).SetFocus
    
'-------------------------------------------------------
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub Command7_Click()
On Error GoTo Command7_Click_Error

    If Txtfields(0).Text <> "" Then
        Call TransferRpt(CStr(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")), CStr(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")), CStr(Txtfields(26).Text), CStr(Txtfields(2).Text), CStr(Txtfields(2).Text), divname, CStr(Txtfields(0).Text), CStr(Txtfields(29).Text))
    Else
        MsgBox "No Records Found", vbInformation, head
        Command7.SetFocus
        Exit Sub
    End If

Exit Sub
Command7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command7_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command7_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        Command7.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
Command7_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command8_Click()
FraOrd.Visible = False
End Sub

Private Sub DataGrid1_DblClick()
Call Command1_Click
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

If Not (DTPicker2.value >= yfdate And DTPicker2.value <= pdate) Then
MsgBox "Lot date must be earlier or equal to the Processing date", vbInformation, head
Exit Sub
Else
If CDate(DTPicker2.value) > CDate(MaskEdBox1(0).Text) Then
MsgBox "Lot Date should be after the Receipt Date", vbInformation, head
Exit Sub
End If
MaskEdBox1(1).Text = DTPicker2.value
'MaskEdBox1(1).SetFocus
End If

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        Command7.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
Opt = ""
DATLAB.Caption = pdate
SSTab1.Visible = True
Call query_mode
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

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

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
Opt = ""
Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'statusbar1.panels(2).text  = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
On Error Resume Next
intervalMinutes = -1
If Opt = "" Or Opt = "query" Then
If adoPrimaryRS.RecordCount > 0 Then
    If adoPrimaryRS.AbsolutePosition = -1 Then adoPrimaryRS.AbsolutePosition = 0
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
Else
    StatusBar1.Panels(2).Text = "No Records Found"
End If
    If Not adoPrimaryRS.EOF Then
      Set rsJB = New Recordset
        rsJB.Open "select  docno,docdt,a.varcode,b.varname,a.IssuedQty,a.BalQty,a.RecQty from RM_JOBWKRec a inner join rm_var b on a.varcode=b.varcode  where divcode='" & Divcode & "' and Lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='" & adoPrimaryRS("lottype") & "' ", DB, adOpenStatic
        If Not rsJB.EOF Then
         Frame10.Visible = True
         Call SpdLoad
         Else
         Call SETDESPATCHHead
         Frame10.Visible = False
        End If
    End If
Chk_SampleFlag.value = IIf(IsNull(adoPrimaryRS("SampleFlag")), 0, adoPrimaryRS("SampleFlag"))
Txtfields(35).Text = ""
If IsNull(adoPrimaryRS("transfertype")) = False Then
    Txtfields(35).Text = adoPrimaryRS("transfertype")
    
    Set rsg = New Recordset
    rsg.Open "select * from rm_issuetype where issue_code='" & adoPrimaryRS("transfertype") & "'", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        Txtfields(34).Text = rsg("issue_desc")
    End If
End If
    Set rsg = New Recordset
    rsg.Open "select gname from rm_god where gcode='" & adoPrimaryRS("godown") & "' and divcode='" & Divcode & "'", DB, adOpenStatic

    If rsg.RecordCount > 0 Then
        Txtfields(33).Text = rsg(0)
    End If

If adoPrimaryRS("bblflg") = "B" Then
   Combo1.Text = "Bale"
ElseIf adoPrimaryRS("bblflg") = "R" Then
    Combo1.Text = "Borah"
'Else
'Combo1.Text = " "
End If

If adoPrimaryRS!lotRectype = "J" Then optJob.value = True Else Optown.value = True
    
For I = 6 To 19 Step 1
    Txtfields(I).Text = Format(val(Txtfields(I).Text), "0.00")
Next
Txtfields(4).Text = Format(val(Txtfields(4).Text), "0.000")
Frame2.Visible = True
Label9.Visible = True
Text4.Visible = True
Text5.Visible = True
Text6.Visible = True
Text7.Visible = True
Text8.Visible = True
LBLQTY.Visible = True
lblTotal.Visible = True
lblgrosswt.Visible = True
lbltarewt.Visible = True
lblnettwt.Visible = True


Text4.Text = Txtfields(22).Text
Text5.Text = Txtfields(23).Text
Text6.Text = Txtfields(24).Text
Text7.Text = Txtfields(25).Text
Text8.Text = Txtfields(5).Text
End If
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next

MaskEdBox1(0).DataField = "arrdt"
MaskEdBox1(1).DataField = "lotdt"
MaskEdBox1(2).DataField = "billdt"
Set MaskEdBox1(0).DataSource = adoPrimaryRS
Set MaskEdBox1(1).DataSource = adoPrimaryRS
Set MaskEdBox1(2).DataSource = adoPrimaryRS
DTPicker2.maxdate = pdate
DTPicker2.MinDate = yfdate
Chk_SampleFlag.value = IIf(IsNull(adoPrimaryRS("SampleFlag")), 0, adoPrimaryRS("SampleFlag"))


If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
    MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    MaskEdBox1(1).Text = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("billdt")) = False Then
    MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(2).Text = "__/__/____"
End If
'Option1.Enabled = False
'Option2.Enabled = False
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
For I = 0 To 20
    Txtfields(I).Locked = False
Next
For I = 22 To 30
    Txtfields(I).Locked = False
Next
Combo1.Locked = False
MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
DTPicker2.Enabled = True
grddatagrid.Enabled = True
End Sub

Public Sub disablcontls()
Dim I As Integer
For I = 0 To 21
Txtfields(I).Locked = True
Next
For I = 22 To 30
Txtfields(I).Locked = True
Next

MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
'Option1.Enabled = False
'Option2.Enabled = False
Combo1.Locked = True
DTPicker2.Enabled = False
grddatagrid.AllowUpdate = False
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error Resume Next
If (Opt = "add" Or Opt = "mod") And grddatagrid.Col = 4 Then
If val(grddatagrid.Columns(4).Text) >= val(grddatagrid.Columns(3).Text) Then
        MsgBox "Tare Weight must be less than Gross weight", vbInformation, head
        grddatagrid.Columns(4).Text = ""
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        Exit Sub
    End If
End If
'Ravi
''    Text4 = grdDataGrid.Columns(2).Text
''    Text5 = Val(Text5) - GG + grdDataGrid.Columns(3)
''    Text6 = Val(Text6) - GT + IIf(grdDataGrid.Columns(4).Text = "", 0, (grdDataGrid.Columns(4).Text))
'    grdDataGrid.Columns(5).Text = IIf(grdDataGrid.Columns(3).Text = "", 0, grdDataGrid.Columns(3).Text) - IIf(grdDataGrid.Columns(4).Text = "", 0, grdDataGrid.Columns(4).Text)
''    Text7 = Val(Text5) - Val(Text6)
'a = 0
'b = 0
'c = 0
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
'a = a + ADOSECONDARYRS("grwt")
'b = b + ADOSECONDARYRS("TareWt")
'c = c + ADOSECONDARYRS("NetWt")
'ADOSECONDARYRS.MoveNext
'Loop
'Text5 = a
'Text6 = b
'Text7 = c
'
'Ravi
'grdDataGrid.Columns(5).Text = IIf(grdDataGrid.Columns(3).Text = "", 0, grdDataGrid.Columns(3).Text) - IIf(grdDataGrid.Columns(4).Text = "", 0, grdDataGrid.Columns(4).Text)
If grddatagrid.Col = 3 Or grddatagrid.Col = 5 Then
    a = 0
    B = 0
    c = 0
    row_save = ADOSECONDARYRS.AbsolutePosition
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        a = a + ADOSECONDARYRS("grwt")
        B = B + ADOSECONDARYRS("TareWt")
        c = c + ADOSECONDARYRS("NetWt")
        ADOSECONDARYRS.MoveNext
    Loop
        Text5 = a
        Text6 = B
        Text7 = c
        ADOSECONDARYRS.MoveFirst
        For I = 1 To row_save
            ADOSECONDARYRS.MoveNext
        Next
        SendKeys ("{left}")
        Exit Sub
End If

If grddatagrid.Col = 4 Then
    a = 0
    B = 0
    c = 0
    row_save = ADOSECONDARYRS.AbsolutePosition
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        a = a + ADOSECONDARYRS("grwt")
        B = B + ADOSECONDARYRS("TareWt")
        c = c + ADOSECONDARYRS("NetWt")
        ADOSECONDARYRS.MoveNext
    Loop
        Text5 = a
        Text6 = B
        Text7 = c
        ADOSECONDARYRS.MoveFirst
        For I = 1 To row_save
            ADOSECONDARYRS.MoveNext
        Next
        'SendKeys ("{left}")
        SendKeys ("{left}")
End If


'************************************************Ravi*************************
'If Opt = "add" Then
'Dim irow As Integer
'    If ColIndex = 2 Then
'            ADOSECONDARYRS.MoveFirst
'        If grddatagrid.Columns(2).Text = Empty Or grddatagrid.Columns(2).Text = "" Then
'            MsgBox "Bale No. cannot be empty", , head + "Insert warning"
'        Else
'            grddatagrid.Columns(2).Text = UCase(grddatagrid.Columns(2).Text)
'            Set rs = New Recordset
'            rs.Open "select 'X'  from rm_lot where cntcode ='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'            If Not rs.BOF Then
'                MsgBox "Count should not repeat", vbCritical + vbOKOnly, head + "Insertion Message"
'                adoprimaryrs(0).Value = ""
'                St = "A"
'                Exit Sub
'            End If
'            irow = ADOSECONDARYRS.AbsolutePosition
'            Code = Val(ADOSECONDARYRS(2).Value)
'            Opt = "Y"
'            ADOSECONDARYRS.MoveFirst
'            Do While Not ADOSECONDARYRS.EOF
'                If irow <> ADOSECONDARYRS.AbsolutePosition Then
'                    If Code = Val(ADOSECONDARYRS(2).Value) Then
'                        MsgBox "Bale No. should not repeat", vbCritical + vbOKOnly, head + "Insertion Message"
'                        ADOSECONDARYRS.AbsolutePosition = irow
'                        ADOSECONDARYRS(2).Value = ""
'                        grddatagrid.Col = 0
'                        grddatagrid.SetFocus
'                        St = "A"
'                        Opt = "add"
'                        Exit Sub
'                    End If
'                End If
'                ADOSECONDARYRS.MoveNext
'            Loop
'            ADOSECONDARYRS.AbsolutePosition = irow
'            grddatagrid.Col = 0
'            grddatagrid.SetFocus
'            Opt = "add"
'        End If
'    End If
'
'End If

        




'************************************************Ravi*************************





End Sub

Private Sub grdDataGrid_BeforeColEdit(ByVal ColIndex As Integer, ByVal KeyAscii As Integer, Cancel As Integer)
On Error GoTo grdDataGrid_BeforeColEdit_Error

    GG = IIf(IsNull(ADOSECONDARYRS(3)), 0, ADOSECONDARYRS(3))
    GT = IIf(IsNull(ADOSECONDARYRS(4)), 0, ADOSECONDARYRS(4))

Exit Sub
grdDataGrid_BeforeColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_BeforeColEdit of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

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
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
'If Opt = "" Or Opt = " " Or Opt = "query" Or Opt = "del" Then
'KeyAscii = 0
'End If
'If grdDataGrid.Col = 3 And KeyAscii <> vbKeyTab Then
'    tonum1 grdDataGrid, 7, KeyAscii, 0
'End If
'    If grdDataGrid.Col = 3 And KeyAscii = vbKeyTab Then
'        grdDataGrid.Col = 4
'        grdDataGrid.SetFocus
'    End If
'If grdDataGrid.Col = 4 Then
'    tonum1 grdDataGrid, 5, KeyAscii, 0
'End If
Dim v As Integer
On Error GoTo grddatagrid_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "query" Or Opt = "del" Then
    KeyAscii = 0
End If

If Opt = "add" And grddatagrid.Col = 7 And Not (KeyAscii = 65 Or KeyAscii = 97 Or KeyAscii = 116 Or KeyAscii = 84) Then
    KeyAscii = 0
End If

If grddatagrid.Col = 3 Then
    ToNum1 grddatagrid, 7, KeyAscii, 0
ElseIf grddatagrid.Col = 4 Then
    ToNum1 grddatagrid, 5, KeyAscii, 0
End If

Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grdDataGrid_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
'If grdDataGrid.Col = 5 And Not ADOSECONDARYRS.RecordCount = Val(Txtfields(22)) And ADOSECONDARYRS.AbsolutePosition = ADOSECONDARYRS.RecordCount Then
'   ' col2t = grddatagrid.Columns(4).Text
'    ADOSECONDARYRS.AddNew
'    grdDataGrid.Columns(2).Text = grdDataGrid.ApproxCount
'   ' grddatagrid.Columns(4).Text = col2t
'    grdDataGrid.Col = 3
'    grdDataGrid.SetFocus
'ElseIf ADOSECONDARYRS.RecordCount = Val(Txtfields(22)) And grdDataGrid.Col = 5 And ADOSECONDARYRS.AbsolutePosition = ADOSECONDARYRS.RecordCount Then
'    If Val(Text5) <> Val(Txtfields(23)) And Val(Text6) <> Val(Txtfields(24)) And Val(Text6) <> Val(Txtfields(25)) Then
'        MsgBox "Gross Weight(Total),Tare Weight(total),Nett Weight(total) do not Tally", vbInformation, head
'        'grddatagrid.AllowAddNew = False
'        grdDataGrid.AllowUpdate = True
'        grdDataGrid.AllowDelete = True
'        grdDataGrid.Row = 1
'        grdDataGrid.SetFocus
'        Txtfields(24).Locked = False
'        Txtfields(22).Locked = False
'        Txtfields(23).Locked = False
'    ElseIf Val(Text5) <> Val(Txtfields(23)) Then
'        MsgBox "Gross Weight(Total) does not Tally", vbInformation, head
'       ' grddatagrid.AllowAddNew = False
'        grdDataGrid.AllowUpdate = True
'        grdDataGrid.AllowDelete = True
'        grdDataGrid.Row = 1
'        grdDataGrid.SetFocus
'        Txtfields(24).Locked = False
'        Txtfields(22).Locked = False
'        Txtfields(23).Locked = False
'    ElseIf Val(Text6) <> Val(Txtfields(24)) Then
'        MsgBox "Tare Weight(Total) does not Tally", vbInformation, head
'        grdDataGrid.AllowAddNew = False
'        grdDataGrid.AllowUpdate = True
'        grdDataGrid.AllowDelete = True
'        grdDataGrid.Row = 1
'        grdDataGrid.SetFocus
'        Txtfields(24).Locked = False
'        Txtfields(22).Locked = False
'        Txtfields(23).Locked = False
'    ElseIf Val(Text7) <> Val(Txtfields(25)) Then
'        MsgBox "Nett Weight(Total) does not Tally", vbInformation, head
'       ' grddatagrid.AllowAddNew = False
'        grdDataGrid.AllowUpdate = True
'        grdDataGrid.AllowDelete = True
'        grdDataGrid.Row = 1
'        grdDataGrid.SetFocus
'        Txtfields(24).Locked = False
'        Txtfields(22).Locked = False
'        Txtfields(23).Locked = False
'    End If
'End If
On Error GoTo GRDDATAGRID_RowColChange_Error

If grddatagrid.Col = 5 And Not ADOSECONDARYRS.RecordCount = val(Txtfields(22)) And ADOSECONDARYRS.AbsolutePosition = ADOSECONDARYRS.RecordCount Then
   ' col2t = grddatagrid.Columns(4).Text
    ADOSECONDARYRS.AddNew
    grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
   ' grddatagrid.Columns(4).Text = col2t
    grddatagrid.Col = 3
    grddatagrid.SetFocus
ElseIf ADOSECONDARYRS.RecordCount = val(Txtfields(22)) And grddatagrid.Col = 5 And ADOSECONDARYRS.AbsolutePosition = ADOSECONDARYRS.RecordCount Then
    If val(Text5) <> val(Txtfields(23)) And val(Text6) <> val(Txtfields(24)) And val(Text6) <> val(Txtfields(25)) Then
        MsgBox "Gross Weight(Total),Tare Weight(total),Nett Weight(total) do not Tally", vbInformation, head
        'grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text5) <> val(Txtfields(23)) Then
        MsgBox "Gross Weight(Total) does not Tally", vbInformation, head
       ' grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text6) <> val(Txtfields(24)) Then
        MsgBox "Tare Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text7) <> val(Txtfields(25)) Then
        MsgBox "Nett Weight(Total) does not Tally", vbInformation, head
       ' grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    End If
End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmTransRecp", vbInformation, head
End Sub



Private Sub MaskEdBox1_Change(Index As Integer)
'If opt = "add" Or opt = "mod" Then
'If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (opt = "" Or opt = " " Or opt = "query") Then
'If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) < CDate(MaskEdBox1(0).Text) Then
'    MsgBox "Receipt date should be greater than Arrival Date", vbInformation, head
'    MaskEdBox1(1).Text = MaskEdBox1(0).Text
'End If
'End If
'End If
On Error GoTo MaskEdBox1_Change_Error

    

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If Index = 0 Then
    If Opt = "add" Or Opt = "mod" Then
        MaskEdBox1(0).BackColor = &HC0FFC0
        StatusBar1.Panels(2).Text = "Enter a Receipt Date"
    End If
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then

If Index = 0 Then
    MaskEdBox1(0).BackColor = &HFFFFFF
    StatusBar1.Panels(2).Text = ""
End If
If IsDate(MaskEdBox1(Index).Text) = False Then
    MsgBox "Please enter a valid date", vbInformation, head
    MaskEdBox1(Index).Text = "__/__/____"
    MaskEdBox1(Index).SetFocus
End If
If Index = 0 Then
If MaskEdBox1(0).Text <> "__/__/____" Then
    If Not (MaskEdBox1(0).Text >= yfdate And MaskEdBox1(0).Text <= pdate) Then
    MsgBox "Receipt date must be earlier or equal to the Processing date", vbInformation, head
    MaskEdBox1(0).Text = "__/__/____"
    MaskEdBox1(0).SetFocus
    Exit Sub
End If
End If
End If
If Index = 0 Then
If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (Opt = "" Or Opt = " " Or Opt = "query") Then
If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) < CDate(MaskEdBox1(0).Text) Then
    MsgBox "Receipt date should be after the Lot Date", vbInformation, head
    MaskEdBox1(1).Text = MaskEdBox1(0).Text
End If
If MaskEdBox1(0).Text <> pdate Then
    MsgBox "Receipt date should be Equal to Processing Date", vbInformation, head
    MaskEdBox1(0).Text = pdate
End If
End If
End If
End If
Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
   ' ElseIf CDate(MaskEdBox1(2).Text) > pdate Then
        MsgBox "Bill Date should be before or equal to processing Date", vbInformation, head
        MaskEdBox1(2).Text = pdate
    End If
End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command7.Visible = True

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        Command7.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command7.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        Command7.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text9_Change()
 Dim position As Integer


            If Trim(Text9.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(SpdSIZEORD, SPDISVARNAME, SpdSIZEORD.Row))) = UCase(Trim(Text9)), SpdSIZEORD.Row + 1, 1)
            For I = j To SpdSIZEORD.MaxRows + 1
            position = InStr(1, UCase(GetText(SpdSIZEORD, SPDISVARNAME, I)), UCase(Trim(Text9)))
              '  If GetText(SPDPIECE, G_PieceNo, i) = Trim(txtfields(29)) Then
              If position > 0 Then
                    SpdSIZEORD.Row = I
                    SpdSIZEORD.SetSelection 1, SpdSIZEORD.Row, SpdSIZEORD.MaxCols, SpdSIZEORD.Row
                   ' IGrid_Click SPDPIECE.Col, SPDPIECE.Row
                    SpdSIZEORD.SetFocus
                     Text9.SetFocus
                    Exit For
               End If
            Next I
             Text9.SetFocus
End Sub


Private Sub Txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
Select Case Index
Case 24
    If val(Txtfields(23).Text) > val(Txtfields(24).Text) Then
        'TXTFIELDS(25).Text = Val(TXTFIELDS(23)) - Val(TXTFIELDS(24))
    Else
        If Txtfields(23).Text <> "" Then
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        Txtfields(24).Text = ""
        Txtfields(24).SetFocus
        End If
        Exit Sub
    End If

Case 26
 If Opt <> "add" Then
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
    Else
    Text1.Text = ""
   End If
 End If
   
   
Case 27
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(27).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     text2.Text = Rs(0)
    Else
     text2.Text = ""
   End If

Case 28
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & Txtfields(28).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
    Else
     Text3.Text = ""
   End If
Case 29
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode = '" & Txtfields(29).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Txtfields(21).Text = Rs(0)
    Else
    Txtfields(21).Text = ""
   End If
Case 32
   Set Rs = New Recordset
   Rs.Open "select colorname from rm_color where colorcode = '" & Txtfields(32).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Txtfields(31).Text = Rs(0)
    Else
    Txtfields(31).Text = ""
   End If
 
 End Select
End If

If Opt = "" Or Opt = " " Then
Select Case Index
    Case 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.00")
    Case 4, 5
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.000")
    Case 23
        Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
    Case 24
        Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
    Case 25
        Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
'    Case 18
'        TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
'    Case 5
'        TXTFIELDS(5).Text = Format(TXTFIELDS(5).Text, "#0.000")
End Select

End If

Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0
          StatusBar1.Panels(2).Text = "Enter a Category Code"
     Case 2
          StatusBar1.Panels(2).Text = "Enter a Lot Number"
     Case 26
          StatusBar1.Panels(2).Text = "Enter a Supplier Code"
     Case 27
          StatusBar1.Panels(2).Text = "Enter a Agent Code"
     Case 28
          StatusBar1.Panels(2).Text = "Enter a Area Code"
     Case 29
          StatusBar1.Panels(2).Text = "Enter a Variety"
     Case 22
          StatusBar1.Panels(2).Text = "Enter maximum of 5 Integers"
     Case 23
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 25
          'StatusBar1.Panels(2).Text = "Enter Net Weight"
     Case 1
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers"
     Case 30
          StatusBar1.Panels(2).Text = "Enter a Count Type"
     Case 24
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 3 Decimal Places"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Integers"
     Case 5
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 14
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 20
          StatusBar1.Panels(2).Text = "Enter a Godown code"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Maximum of 9 Integers with 2 Decimal Places"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 18
          StatusBar1.Panels(2).Text = "Enter Maximum of 9 Integers with 2 Decimal Places"
     Case 21
          StatusBar1.Panels(2).Text = "Enter a Group Code"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 3 Decimal Places"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
End Select
End If

If Index <> 21 And Index <> 34 And Index <> 33 Then
    Txtfields(Index).BackColor = &HC0FFC0
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form frmtransrecp", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 22
    Call ToNumber(Txtfields(Index), KeyAscii)
Case 1
If Not (KeyAscii = 48 Or KeyAscii = 49 Or KeyAscii = 50 Or KeyAscii = 51 Or KeyAscii = 52 Or KeyAscii = 53 Or KeyAscii = 54 Or KeyAscii = 55 Or KeyAscii = 56 Or KeyAscii = 57 Or KeyAscii = 8) Then
KeyAscii = 0

End If
ToNumberAssign Txtfields(Index), 5, KeyAscii, 5, 0
Case 2
ToNum1 Txtfields(Index), 5, KeyAscii, 5
Case 4
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 6, KeyAscii
Case 23
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 7, KeyAscii
Case 24
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 5, KeyAscii
Case 5
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 7, KeyAscii
Case 6
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 9, KeyAscii
Case 7
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 8
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 9
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 7, KeyAscii
Case 10
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 11
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 12
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 13
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
        
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 7, KeyAscii
0
Case 18, 19, 25
    KeyAscii = 0
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
If Index <> 21 And Index <> 34 And Index <> 33 Then
    Txtfields(Index).BackColor = &HFFFFFF
End If
'StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
'    If txtfields(0).Text = "" Then
'        MsgBox "Category Cannot be Emtpy", vbInformation, head
'        txtfields(0).SetFocus
'    End If
Case 2
    If val(Txtfields(2).Text) = 0 Then
        MsgBox "Please enter Lot Number", vbInformation, head
        SSTab1.Tab = 0
        Txtfields(2).Locked = False
        Txtfields(2).SetFocus
        Exit Sub
    Else
        Set Rs = New Recordset
        If optJob = True Then
            If LotNoGen = "S" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text), DB, adOpenStatic
            ElseIf LotNoGen = "C" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "'", DB, adOpenStatic
            ElseIf LotNoGen = "V" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='J' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "' and VarCode ='" & Txtfields(29).Text & "'", DB, adOpenStatic
            End If
        Else
            If LotNoGen = "S" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text), DB, adOpenStatic
            ElseIf LotNoGen = "C" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "'", DB, adOpenStatic
            ElseIf LotNoGen = "V" Then
                Rs.Open "Select Lotno From Rm_lot where divcode='" & Divcode & "' and lotrectype='O' and Lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotno =" & val(Txtfields(2).Text) & " and CatCd ='" & Txtfields(0).Text & "' And VarCode='" & Txtfields(29).Text & "'", DB, adOpenStatic
            End If
        End If
        
        If Rs.EOF = False Then
            MsgBox "Please Enter Another Lot No., This Lot No. is Already is defined", vbInformation, head
            SSTab1.Tab = 0
            Txtfields(2).Locked = False
            Txtfields(2).SetFocus
            Exit Sub
        End If
    End If

Case 5
 Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
 Case 11
 Txtfields(11).Text = Format(Txtfields(11).Text, "#0.00")
Case 25
      
      Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
      
     Call LoadRecDetails

Case 23
      If Txtfields(23).Text = "0.000" Then
            Txtfields(23).Text = ""
            Txtfields(23).SetFocus
      Else
      Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
      Call LoadRecDetails
      End If
Case 17
      Txtfields(18).Text = IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) + IIf(IsNull(val(Txtfields(7))), 0, val(Txtfields(7))) + IIf(IsNull(val(Txtfields(8))), 0, val(Txtfields(8))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(10))), 0, val(Txtfields(10))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(12))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) - (IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + IIf(IsNull(val(Txtfields(15))), 0, val(Txtfields(15)))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17)))
       Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
Case 18
      Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
      Txtfields(19).Text = val(Txtfields(18)) / val(Txtfields(25))
       Txtfields(19).Text = Format(Txtfields(19).Text, "#0.0000")
'Case 22
'If Val(TXTFIELDS(22).Text) <> Val(Text4.Text) Then
'    If TXTFIELDS(22).Text > qty Then
'        MsgBox "Bale Weight should not be greater than " & qty, vbInformation, head
'        TXTFIELDS(22).Text = qty
'        TXTFIELDS(22).SetFocus
'        Exit Sub
'    End If
'End If
'Case 23
' If Val(TXTFIELDS(23).Text) <> Val(Text5.Text) Then
'    If TXTFIELDS(23).Text > oldgrs Then
'        MsgBox "Gross Weight should not be greater than " & oldgrs, vbInformation, head
'        TXTFIELDS(23).Text = oldgrs
'        TXTFIELDS(23).SetFocus
'        Exit Sub
'    End If
' End If
Case 24
'   If Val(TXTFIELDS(24).Text) <> Val(Text6.Text) Then
'   If TXTFIELDS(24).Text > oldtare Then
'        MsgBox "Tare Weight should not be greater than " & oldtare, vbInformation, head
'        TXTFIELDS(24).Text = oldtare
'        TXTFIELDS(24).SetFocus
'        Exit Sub
'    End If
'   End If
    
    If val(Txtfields(23).Text) > val(Txtfields(24).Text) Then
              Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
              Txtfields(25).Text = val(Txtfields(23)) - val(Txtfields(24))
              Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
              
              
              Call LoadRecDetails
    Else
        If Txtfields(23).Text <> "" Then
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        Txtfields(24).Text = ""
        Txtfields(24).SetFocus
        End If
        Exit Sub
    End If
Case 19
If Opt = "add" Then
            Txtfields(19).Text = Format(Txtfields(19).Text, "#0.0000")
            If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
        grddatagrid.Enabled = False
        Txtfields(4).SetFocus
    Else
        If Txtfields(5).Text = "" Then
            MsgBox "Please Enter Weight ", vbInformation, head
            Txtfields(5).SetFocus
        Else
        grddatagrid.Enabled = True
        BUTTON(9).Enabled = True
        'Frame2.Visible = True
        For I = 0 To 20
            Txtfields(I).Locked = True
        Next
        For I = 22 To 26
            Txtfields(I).Locked = True
        Next
        SSTab1.Tab = 2
        
        
        If Opt = "add" Or Opt = "mod" Then
        If FLG <> "y" Then
        FLG = "y"
            Text4.Text = ""
            Text5.Text = ""
            Text6.Text = ""
            Text7.Text = ""
            For I = 1 To W
            grddatagrid.AllowDelete = True
            Next
            Dim p As Double
            Dim q As Double
            Dim r As Double
            Dim s As Double
            p = val(Txtfields(22).Text & "")
            W = val(Txtfields(22).Text & "")
            q = val(Txtfields(23).Text & "")
            r = val(Txtfields(24).Text & "")
            s = val(Txtfields(25).Text & "")
            cw = val(Txtfields(5).Text & "")
            NETTWT = 0
            groswt = 0
            TAREWT = 0
            CommmWt = 0
            For I = 1 To p
                grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
                grddatagrid.Columns(3).Text = val(q / p & "")
                grddatagrid.Columns(4).Text = val(r / p & "")
                grddatagrid.Columns(5).Text = val(s / p & "")
                grddatagrid.Columns("Commercial Weight").Text = val(cw / p & "")
                
                grddatagrid.Columns(2).Locked = True
                NETTWT = Round(NETTWT + val(grddatagrid.Columns(5).Text), 3)
                groswt = Round(groswt + val(grddatagrid.Columns(3).Text), 3)
                TAREWT = Round(TAREWT + val(grddatagrid.Columns(4).Text), 3)
                CommmWt = Round(CommmWt + val(grddatagrid.Columns("Commercial Weight").Text), 3)
                If I = p Then
                    DIFFNWT = Round(s - NETTWT, 3)
                    DIFFGWT = Round(q - groswt, 3)
                    DIFFTWT = Round(r - TAREWT, 3)
                    PDIFFCW = Round(cw - CommmWt, 3)
                    
                    grddatagrid.Columns(5).Text = val(grddatagrid.Columns(5).Text & "") + val(DIFFNWT & "")
                    grddatagrid.Columns(3).Text = val(grddatagrid.Columns(3).Text & "") + val(DIFFGWT & "")
                    grddatagrid.Columns(4).Text = val(grddatagrid.Columns(4).Text & "") + val(DIFFTWT & "")
                    grddatagrid.Columns("Commercial Weight").Text = grddatagrid.Columns("Commercial Weight").Text + PDIFFCW
                    
                End If
                If I < p Then
                    ADOSECONDARYRS.AddNew
                End If
            Next
            

            
            Text4 = p
            Text5 = q
            Text6 = r
            Text7 = s
            Text8 = Format(cw, "#0.000")
        End If
        
        
             grddatagrid.AllowAddNew = False
             grddatagrid.AllowUpdate = True
             grddatagrid.EditActive = True
             grddatagrid.Columns(2).Locked = False

             grddatagrid.Enabled = True
'             grddatagrid.Row = 0
'             grddatagrid.Col = 3
'             grddatagrid.SetFocus
             For I = 4 To 20
                 Txtfields(I).Locked = True
             Next
             
             MaskEdBox1(1).Enabled = False
         
        End If
        
   End If
   
   End If
End If

    grddatagrid.Columns(6).Visible = False

Case 20
Case 27
    If JBFlg = "Y" And val(Txtfields(39).Text) = "0" Then
    Txtfields(26).SetFocus
    Exit Sub
    End If
    'TXTFIELDS(3).SetFocus
End Select
If Index = 22 Then
    If val(Txtfields(22).Text) = 0 Then
'        TXTFIELDS(22).Text = ""
'        TXTFIELDS(22).SetFocus
    End If
End If
If Index = 1 Then
    If val(Txtfields(1).Text) = 0 Then
'        TXTFIELDS(1).Text = ""
'        TXTFIELDS(1).SetFocus
    End If
ElseIf Index = 4 Then
    If Txtfields(4).Text = "0.000" Then
        Txtfields(4).Text = Format(Txtfields(4).Text, "0.000")
    End If
ElseIf Index = 5 Then
    If Txtfields(5).Text = "0.000" Then
'        TXTFIELDS(5).Text = ""
'        TXTFIELDS(5).SetFocus
    End If
ElseIf Index = 6 Then
    If Txtfields(6).Text = "0.00" Or Txtfields(6).Text = "" Then
        Txtfields(6).Text = ""
        Txtfields(6).SetFocus
    End If
ElseIf Index = 7 Then
    If Txtfields(7).Text = "0.00" Then
'        TXTFIELDS(7).Text = ""
'        TXTFIELDS(7).SetFocus
    End If
ElseIf Index = 8 Then
    If Txtfields(8).Text = "0.00" Then
'        TXTFIELDS(8).Text = ""
'        TXTFIELDS(8).SetFocus
    End If
ElseIf Index = 9 Then
    If Txtfields(9).Text = "0.00" Then
'        TXTFIELDS(9).Text = ""
'        TXTFIELDS(9).SetFocus
    End If
ElseIf Index = 10 Then
    If Txtfields(10).Text = "0.00" Then
'        TXTFIELDS(10).Text = ""
'        TXTFIELDS(10).SetFocus
    End If
ElseIf Index = 11 Then
    If Txtfields(11).Text = "0.000" Then
'        TXTFIELDS(11).Text = ""
'        TXTFIELDS(11).SetFocus
    End If
ElseIf Index = 12 Then
    If Txtfields(12).Text = "0.00" Then
'        TXTFIELDS(12).Text = ""
'        TXTFIELDS(12).SetFocus
    End If
ElseIf Index = 13 Then
    If Txtfields(13).Text = "0.00" Then
'        TXTFIELDS(13).Text = ""
'        TXTFIELDS(13).SetFocus
    End If
ElseIf Index = 14 Then
    If Txtfields(14).Text = "0.00" Then
'        TXTFIELDS(14).Text = ""
'        TXTFIELDS(14).SetFocus
    End If
ElseIf Index = 15 Then
    If Txtfields(15).Text = "0.00" Then
'        TXTFIELDS(15).Text = ""
'        TXTFIELDS(15).SetFocus
    End If
ElseIf Index = 16 Then
    If Txtfields(16).Text = "0.00" Then
'        TXTFIELDS(16).Text = ""
'        TXTFIELDS(16).SetFocus
    End If
ElseIf Index = 17 Then
    If Txtfields(17).Text = "0.00" Then
'        TXTFIELDS(17).Text = ""
'        TXTFIELDS(17).SetFocus
    End If
ElseIf Index = 18 Then
    If Txtfields(18).Text = "0.00" Then
'        TXTFIELDS(18).Text = ""
'        TXTFIELDS(18).SetFocus
    End If
ElseIf Index = 19 Then
    If Txtfields(19).Text = "0.0000" Then
'        TXTFIELDS(19).Text = ""
'        TXTFIELDS(19).SetFocus
    End If
End If
    If Index = 26 Then
        If Txtfields(26).Text = "" Then
'        TXTFIELDS(26).Locked = True
'        TXTFIELDS(26).SetFocus
        End If
    End If
End If
Select Case Index
Case 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
    Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.00")
Case 19
    Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.0000")
End Select

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmTransRecp", vbInformation, head
 End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
If Opt = " " Or Opt = "" Then
   'Frame2.Visible = False
    Frame8.Visible = True
    Set adoPrimaryRS = New Recordset
    If LotNoGen = "S" Then
        adoPrimaryRS.Open "SHAPE {SELECT TOP 1 A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                      "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                      " Order by A.lotNO DESC} AS ParentCMD APPEND ({(SELECT Divcode,CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt,Varcode FROM RM_BALE" & _
                      " where  divcode='" & Divcode & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and lottype = 'T'  ) Order by baleno" & _
                      "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype ,Divcode to Divcode ,varcode to varcode) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                      
    ElseIf LotNoGen = "C" Then
        adoPrimaryRS.Open "SHAPE {SELECT TOP 1 A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                      "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                      " Order by a.lotdt desc, A.lotNO DESC} AS ParentCMD APPEND ({(SELECT Divcode,CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,Comm_Wt,Varcode FROM RM_BALE" & _
                      " where  divcode='" & Divcode & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' ) Order by baleno" & _
                      "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype,CatCd to Catcd,Divcode to Divcode ,varcode to varcode ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
    
    ElseIf LotNoGen = "V" Then
        adoPrimaryRS.Open "SHAPE {SELECT TOP 1 A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,plotno,colorcode,transfertype,lotRectype,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE   " & _
                      "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
                      " Order by a.lotdt desc, A.lotNO DESC} AS ParentCMD APPEND ({(SELECT Divcode, CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,Lotrectype,VarCode,Comm_Wt  FROM RM_BALE" & _
                      " where divcode='" & Divcode & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
                      "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype,CatCd to Catcd,VarCode to VarCode,Divcode to Divcode ,varcode to varcode) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
    
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
        Set ADOSECONDARYRS = adoPrimaryRS("ChildCMD").UnderlyingValue
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call gridalign
        
        Set rsJB = New Recordset
        rsJB.Open "select  docno,docdt,a.varcode,b.varname,a.IssuedQty,a.BalQty,a.RecQty from RM_JOBWKRec a inner join rm_var b on a.varcode=b.varcode  where divcode='" & Divcode & "' and Lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='" & adoPrimaryRS("lottype") & "' ", DB, adOpenStatic
        If Not rsJB.EOF Then
            Frame10.Visible = True
            Call SpdLoad
        End If
        
    '     Text4.Text = adoSecondaryRS.RecordCount
    '     Text5.Text = adoPrimaryRS("grswgt")
    '     Text6.Text = adoPrimaryRS("tarewt")
    '     Text7.Text = adoPrimaryRS("netwt")
    '     Text4.Locked = True
    '     Text5.Locked = True
    '     Text6.Locked = True
    '     Text7.Locked = True
        adoPrimaryRS.MoveFirst
     'Bind the text boxes,check boxes and option buttons to the data source
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query"
        'This variable is declared as global to show the date
        DATLAB.Caption = pdate
        Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        LBLQTY.Visible = True
        lblTotal.Visible = True
        lblgrosswt.Visible = True
        lbltarewt.Visible = True
        lblnettwt.Visible = True
        Text4.Text = Txtfields(22).Text
        Text5.Text = Txtfields(23).Text
        Text6.Text = Txtfields(24).Text
        Text7.Text = Txtfields(25).Text
        Dim I As Integer
For I = 6 To 19 Step 1
    Txtfields(I).Text = Format(Txtfields(I).Text, "0.00")
Next

      'Calling newform procedure from Module to disable buttons
      Call NEWFORM(BUTTON)
      Call NEWFORM1(BUTTON, GSNO)
      Call disablcontls
      SSTab1.Tab = 0
      Exit Sub
   Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       Call bindcontls
       SSTab1.Tab = 0
  End If
End If
intervalMinutes = -1

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmTransRecp", vbInformation, head
End Sub

Public Sub gridalign()
On Error Resume Next
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Caption = "Bale No."
    grddatagrid.Columns(2).Alignment = dbgRight
    grddatagrid.Columns(2).Locked = True
    grddatagrid.Columns(2).Width = 1094.74
    grddatagrid.Columns(3).Caption = "            Gross Weight"
    grddatagrid.Columns(3).NumberFormat = "####0.000"
    grddatagrid.Columns(3).Alignment = dbgRight
    grddatagrid.Columns(3).Width = 2000
    grddatagrid.Columns(4).Caption = "              Tare Weight"
    grddatagrid.Columns(4).NumberFormat = "###.000"
    grddatagrid.Columns(4).Width = 2000
    grddatagrid.Columns(4).Alignment = dbgRight
    grddatagrid.Columns(5).Locked = False
    grddatagrid.Columns(5).Caption = "              Nett Weight"
    grddatagrid.Columns(5).NumberFormat = "###.000"
    grddatagrid.Columns(5).Width = 2000
    grddatagrid.Columns(5).Alignment = dbgRight
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(7).Visible = False
    grddatagrid.Columns(8).Visible = False
    grddatagrid.Columns("Comm_Wt").NumberFormat = "###.000"
    grddatagrid.Columns("Comm_Wt").Width = 2000
    grddatagrid.Columns("Comm_Wt").Caption = "Commercial Weight"
       
    
    
    If Opt = "add" Or Opt = "mod" Then
        grddatagrid.Columns(8).Visible = False
        grddatagrid.Columns(9).Visible = False
        grddatagrid.Columns(10).Visible = False
        grddatagrid.Columns(11).Visible = False
        grddatagrid.Columns(12).Visible = False
        
    End If
    
    
End Sub

Public Sub Value_Cal()
 Text4.Text = 0
 Text5.Text = 0
 Text6.Text = 0
 Text7.Text = 0
 ADOSECONDARYRS.MoveFirst
 For I = 1 To ADOSECONDARYRS.RecordCount
    Text4.Text = (val(grddatagrid.Columns(3).Text))
    Text5.Text = val(Text5.Text) + val(grddatagrid.Columns(3).Text)
    Text6.Text = val(Text6.Text) + val(grddatagrid.Columns(3).Text)
    Text7.Text = val(Text7.Text) + val(grddatagrid.Columns(5).Text)
   ADOSECONDARYRS.MoveNext
 Next
End Sub

Public Sub delmodproc(a As String, B As String, cat As String, var As String)
On Error GoTo delmodproc_Error

Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,ratecy,RATEKG,GODOWN,LGROUP,OPFLG,plotno,colorcode,transfertype,lotyear,rejflg,lotRectype,FAVAOURABLEWGT,invisibleloss,invisweight,Comm_Wt,weightflg,JBSentQty,SampleFlag FROM RM_LOT A WHERE  " & _
                 "   A.DIVCODE = '" & Divcode & "' and A.lotno ='" & B & "' and A.LOTdt='" & Format(a, "yyyy-mm-dd") & "' and lottype = 'T' and CatCd ='" & cat & "' and VarCode='" & var & "'" & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,arrno,arrdt,status,VARCODE,Lotrectype,Comm_Wt FROM RM_BALE" & _
                 " where lotdt='" & Format(a, "yyyy-mm-dd") & "'  and  lotno='" & B & "' And CatCd ='" & cat & "' And VarCode='" & var & "' and divcode='" & Divcode & "'  and lottype = 'T') Order by baleno" & _
                 "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,lottype to lottype,CatCd to CatCd ,VarCode to VarCode ,divcode to divcode ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
'isswt is null and issbal is null
    Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call gridalign
    Call bindcontls
    
    If Not adoPrimaryRS.EOF Then
      Set rsJB = New Recordset
        rsJB.Open "select  docno,docdt,a.varcode,b.varname,a.IssuedQty,a.BalQty,a.RecQty from RM_JOBWKRec a inner join rm_var b on a.varcode=b.varcode  where divcode='" & Divcode & "' and Lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='" & adoPrimaryRS("lottype") & "' ", DB, adOpenStatic
        If Not rsJB.EOF Then
         Frame10.Visible = True
         Call SpdLoad
         Else
         Call SETDESPATCHHead
         Frame10.Visible = False
        End If
    End If
    ' Frame2.Visible = False
    SSTab1.Visible = True
    grddatagrid.Visible = True
   ' grddatagrid.AllowAddNew = False
    SSTab1.Visible = True
    If adoPrimaryRS("BBLFLG") = "B" Then
        Combo1.Text = "Bale"
    ElseIf adoPrimaryRS("BBLFLG") = "R" Then
      Combo1.Text = "Borah"
    End If
    Chk_SampleFlag.value = IIf(IsNull(adoPrimaryRS("SampleFlag")), 0, adoPrimaryRS("SampleFlag"))
'   Option1.Enabled = False
'   Option2.Enabled = False

    Text4.Visible = False
    Text5.Visible = False
    Text6.Visible = False
    Text7.Visible = False
    lblTotal.Visible = False
    LBLQTY.Visible = False
    lblgrosswt.Visible = False
    lbltarewt.Visible = False
    lblnettwt.Visible = False
  Call gridalign
   
    If Opt = "mod" Then
        Txtfields(0).Locked = True
        Txtfields(1).Locked = True
       '' txtfields(2).Locked = False
        Txtfields(3).Locked = False
        Txtfields(4).Locked = False
        Txtfields(6).Locked = False
        Txtfields(7).Locked = False
        Txtfields(9).Locked = False
        Txtfields(11).Locked = False
        Txtfields(12).Locked = False
        Txtfields(22).Locked = True
        Txtfields(23).Locked = True
        Txtfields(24).Locked = True
        Txtfields(25).Locked = True
        Txtfields(5).Locked = True
        
        Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        lblTotal.Visible = True
        LBLQTY.Visible = True
        lblgrosswt.Visible = True
        lbltarewt.Visible = True
        lblnettwt.Visible = True
       
        Text4.Text = ADOSECONDARYRS.RecordCount
        Text5.Text = adoPrimaryRS("grswgt")
        Text6.Text = adoPrimaryRS("tarewt")
        Text7.Text = adoPrimaryRS("netwt")
        grddatagrid.AllowUpdate = True
        'grddatagrid.AllowAddNew = True
        If ADOSECONDARYRS.RecordCount > 0 Then
''        grddatagrid.Columns(2).Text = adoSecondaryRS.RecordCount
''        grddatagrid.Columns(3).Text = adoPrimaryRS("grswgt")
''        grddatagrid.Columns(4).Text = adoPrimaryRS("tarewt")
''        grddatagrid.Columns(5).Text = adoPrimaryRS("netwt")
        End If
        oldgrs = Txtfields(23).Text
        oldtare = Txtfields(24).Text
        QTY = Txtfields(22).Text
        W = Txtfields(22).Text
        Screen.MousePointer = 0
        MaskEdBox1(1).Enabled = True
    End If
    If Opt = "mod" Then
        grddatagrid.Enabled = True
        grddatagrid.AllowUpdate = True
        grddatagrid.EditActive = True
        grddatagrid.Columns(2).Locked = True
    End If
Frame9.Visible = False
Screen.MousePointer = 0


Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form FrmTransRecp", vbInformation, head
End Sub



Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)


On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
'If (opt = "add" And TXTFIELDS(0).Text = "") Or opt = "mod" Then
If (Opt = "add" And Txtfields(0).Text = "") Then
   Set Rs = New Recordset
   Rs.Open "select distinct a.catcd,catname from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
   If Rs.RecordCount = 0 Then
   Else
  End If
End If
Case 26
    Set rs4 = New Recordset
    rs4.Open "select count(*) from fa_slmas", DB
    If Not rs4(0) = 0 Then
        Set rs1 = New Recordset
        rs1.Open "Select * from masterlen", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            sup = rs1("ptypecotton") & "%"
        Else
            sup = ""
        End If
        
        Call GetPartyType("PTYPE_RECEIPT", "slcode")
        Set Rs = New Recordset
        Rs.Open "select SLcode from FA_SLMAS where (SLCODE " & PartyTypeStr & ") and  slcode='" & Txtfields(26).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        'Rs.Open "select  slcode from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(26).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
        
        If Rs.RecordCount = 0 Then
            Label15.Caption = "Supplier List"
            StatusBar1.Panels(2).Text = "Select Supplier Code From the List"
            
            Dim JOBFlag As String
            JOBFlag = "N"
            Set rj = New Recordset
            rj.Open "select  issue_code,isstype from rm_issuetype where issue_code='" & Trim(Txtfields(35).Text) & "' and isstype='J' ", DB, adOpenStatic
            If Not rj.EOF Then
                JOBFlag = "Y"
            End If
            
            JBFlg = "N"
            If JOBFlag = "Y" Then
                Set rsJB = New Recordset
                rsJB.Open "select distinct a.ISSTYPE from VW_JBIssueDetails a inner join rm_issuetype b on a.ISSTYPE=b.issue_code and b.isstype='J' where Divcode='" & Divcode & "'", DB, adOpenStatic
                Do While Not rsJB.EOF
                   ' If InStr(1, rsJB(0), Trim(txtfields(35).Text)) > 0 Then
                
                       JBFlg = "Y"
                  '  End If
                    rsJB.MoveNext
                Loop
            End If
            If Optown.value = True And JBFlg = "Y" Then
            qry = "select Distinct slcode ""Supplier Code"",Slname""Supplier Name"", City, brcode""Agent Code"" from VW_JBIssueDetails  where  (SLCODE " & PartyTypeStr & ") and   ISSTYPE='" & Trim(Txtfields(35).Text) & "' and Divcode='" & Divcode & "'"
            Else
            qry = "select slcode ""Supplier Code"",Slname""Supplier Name"", City, brcode""Agent Code"" from fa_slmas  where (SLCODE " & PartyTypeStr & ") " ' slcode like '" & sup & "'"
            End If
            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1350,4200,1900,1200"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
                Txtfields(26).Text = LookUp.Fields(0)
                Text1.Text = LookUp.Fields(1)
                If Optown.value = True And JBFlg = "Y" Then
                    Frame10.Visible = True
                    FraOrd.ZOrder
                    FraOrd.Visible = True
                   ' Buttonframe.Enabled = False
                   ' stbar.Panels(2).Text = "Select an Variety from the list"
                    Call SETSIZEORDHead
                   ' SpdSIZEORD.CursorStyle = CursorStyleArrow
                   ' Dim ItmRs As Recordset
                    Set ItmRs = New Recordset
                    ItmRs.Open " select docno,docdt,varname,varcode,sum(isnull(ISSKGS,0)) ISSKGS,isnull(sum(isnull(BalKgs,0)),0) BalKgs from VW_JBIssueDetails a wHERE ISSTYPE='" & Trim(Txtfields(35).Text) & "' and slcode='" & Trim(Txtfields(26).Text) & "' and Divcode='" & Divcode & "' group by docno,docdt,varname,varcode", DB, adOpenStatic, adLockBatchOptimistic
                    RW = 1
                    Do While Not ItmRs.EOF
                        SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCNO, RW, ItmRs("docno")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISDOCDT, RW, ItmRs("docdt")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISVARNAME, RW, ItmRs("varname")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISVARCODE, RW, ItmRs("varcode")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISISSUEDQTY, RW, ItmRs("ISSKGS")
                        SpdSIZEORD.SetText E_SIZELISTDC1.SPDISIBALQTY, RW, ItmRs("BalKgs")
        
                        RW = RW + 1
                        
                        ItmRs.MoveNext
                    Loop
                    LookUp.Clear = True
                    Txtfields(27).SetFocus
'                    FraOrd.ZOrder
'                    FraOrd.Visible = True
                    SpdSIZEORD.SetFocus
                    
                 '   Buttonframe.Enabled = True
                    CmdOrderOk.SetFocus
                    FraOrd.SetFocus
                    Exit Sub
                 End If
                Exit Sub
            Else
                Txtfields(27).SetFocus
            End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select slname from fa_slmas where slcode = '" & Txtfields(26).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            If rs1.BOF Then
               Text1.Text = ""
            Else
               Text1.Text = rs1(0)
            End If
        End If
    Else
        MsgBox "Please define the Supplier in Master!", vbInformation, head
        Exit Sub
    End If
'If Not rs4(0) = 0 Then
'    Set RS1 = New Recordset
'    RS1.Open "Select * from masterlen", DB, adOpenStatic
'    If RS1.RecordCount > 0 Then
'        sup = RS1("ptypecotton")
'    Else
'        sup = ""
'    End If
'   Set Rs = New Recordset
'    Rs.Open "select slcode,slname from fa_slmas where slcode = '" & txtfields(26).Text & "'", DB
'
'    If Rs.RecordCount = 0 Then
'        StatusBar1.Panels(2).Text = "Select a Supplier code from the list"
'        If LookuPLoad("Slcode as Code", "Slname as Name", "Fa_slmas where left(Slcode,2)='" & sup & "'", txtfields(27), txtfields(27), txtfields(26), Text1, "Supplier Listing") = False Then
'            txtfields(26).SetFocus
'        Else
'            txtfields(27).SetFocus
'        End If
'
'        Exit Sub
'    Else
'        Text1.Text = Rs("slname")
'    End If
'Else
'    MsgBox "No Record Found", vbInformation, head
'    Exit Sub
'End If
Case 27
    If Frame3.Visible = True Then
        Exit Sub
    End If
    
    Set rs4 = New Recordset
    rs4.Open "select count(*) from fa_slmas", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select slcode,slname from fa_slmas where slcode = '" & Txtfields(27).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    
        If Rs.RecordCount = 0 Then
            StatusBar1.Panels(2).Text = "Select a Agent code from the list"
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker")
            Else
                bro = ""
            End If
            
          '  If LookuPLoad3("Slcode""Broker Code""", "Slname""Broker Name""", "City", "Fa_slmas where left(Slcode,2)='" & bro & "'", txtfields(28), txtfields(28), txtfields(27), Text2, "Broker Listing") = False Then
            
            If LookuPLoad3("Slcode""Agent Code""", "Slname""Agent Name""", "City", "Fa_slmas where left(Slcode,2)='" & bro & "'", Txtfields(28), Txtfields(28), Txtfields(27), text2, "Agent Listing") = False Then
            
                 '   TXTFIELDS(28).SetFocus
            Else
              '  TXTFIELDS(28).SetFocus
            End If
            Exit Sub
        Else
            text2.Text = Rs("slname")
        End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 28
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select areacode from rm_area where areacode = '" & Txtfields(28).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    
     If Rs.RecordCount = 0 Then
        StatusBar1.Panels(2).Text = "Select a Area code from the list"
        If LookuPLoad4("AreaCode""Area Code""", "Areaname""Area Name""", "Station", "State", "rm_area", Txtfields(29), Txtfields(29), Txtfields(28), Text3, "Area Listing") Then
            Txtfields(29).SetFocus
        Else
            Txtfields(29).SetFocus
        End If
        Exit Sub
    Else
        Set rs1 = New Recordset
        rs1.Open "select areaname from rm_area where areacode = '" & Txtfields(28).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        If rs1.BOF Then
           Text3.Text = ""
        Else
           Text3.Text = rs1(0)
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If




Case 29
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_var", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select varcode,varname from rm_var where isnull(Is_Active,'N')='Y' and varcode = '" & Txtfields(29).Text & "' AND CATCD='" & Txtfields(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
   
    If Rs.RecordCount = 0 Then
          ''Call LookuPLoad("Varcode as Code", "Varname as Name", "Rm_var", txtfields(22), txtfields(22), txtfields(29), txtfields(21), "Variety Listing")
          StatusBar1.Panels(2).Text = "Select a Variety code from the list"
          LookUp.Clear = True
          LookUp.query = "select Varcode""Variety Code"",varname""Variety Name"" from rm_var where isnull(Is_Active,'N')='Y' and catcd='" & Txtfields(0).Text & "'"
          LookUp.ALIGN = "2000,3000"
          LookUp.DefCol = "Variety Name"
          LookUp.Caption = "Variety Listing"
          LookUp.Show vbModal
          
          If LookUp.Cancel = False Then
                Txtfields(29).Text = LookUp.Fields(0)
                Txtfields(21).Text = LookUp.Fields(1)
                LookUp.Clear = True
               Set Rs = New Recordset
               Rs.Open "select isnull(Arrivaltransfardocno,'N') as Arrivaltransfardocno from  rm_param", DB, adOpenStatic, adLockBatchOptimistic
               If Rs("Arrivaltransfardocno") = "Y" Then
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & Txtfields(29).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        
                        Set rsd = New Recordset
                        If LotNoGen = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' ", DB, adOpenStatic
                        ElseIf LotNoGen = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y'  and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf LotNoGen = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' and CatCd ='" & catcode & "' and VarCode ='" & Txtfields(29).Text & "'", DB, adOpenStatic
                        End If
                        Txtfields(2).Text = rsd("lotno")
                       
             End If
          Else
                Txtfields(29).Text = ""
                Txtfields(21).Text = ""
                Txtfields(29).SetFocus
                Exit Sub
          End If
    Else
        Txtfields(21).Text = Rs(1)
    End If
    Exit Sub
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If

Case 32
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_color", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select colorcode,colorname from rm_color where colorcode = '" & Txtfields(32).Text & "'", DB, adOpenStatic, adLockBatchOptimistic

        If Rs.RecordCount = 0 Then
            StatusBar1.Panels(2).Text = "Select a Color code from the list"
            Call LookuPLoad("Colorcode as Code", "colorname as Name", "Rm_color", Txtfields(22), Txtfields(22), Txtfields(32), Txtfields(31), "Color Listing")
        Else
            Txtfields(31).Text = Rs(1)
        End If
        Exit Sub
Else
End If

Case 30
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_count", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select cntcd,cntname from rm_count where cntcd = '" & Txtfields(30).Text & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount = 0 Then
        StatusBar1.Panels(2).Text = "Select a Mixing Count code from the list"
        LookUp.Clear = True
        LookUp.query = "select Cntcd,Cntname from rm_count Where Divcode ='" & Divcode & "'"
        LookUp.ALIGN = "2000,3000"
        LookUp.DefCol = "Cntname"
        LookUp.Caption = "Count Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(30).Text = LookUp.Fields(0)
            LookUp.Clear = True
        Else
            Txtfields(30).SetFocus
            Cancel = True
        End If
    End If
    Exit Sub
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
'  If (opt = "mod") Then
'    Set rs = New Recordset
'    rs.Open "select arrno,arrdate from rm_arrival a,rm_var b where a.varcode=b.varcode and   lotno is null  and divcode='" & divcode & "'", db, adOpenStatic, adLockBatchOptimistic
'    If rs.RecordCount = 0 Then
'      MsgBox "Lot/Bale Details entered for all the Arrivals", vbInformation, head
'      Call BUTTON_Click(10)
'      Exit Sub
'    Else
'        Label15.Caption = "Arrival Details"
'        KslList1.conn = connectstring
'        KslList1.table = "rm_arrival a,rm_var b where a.varcode=b.varcode and lotno is null and divcode='" & divcode & "'"
'        KslList1.listfield1 = "cast(ARRNO as varchar)"
'        KslList1.listfield2 = "convert(varchar,ARRDATE,103)"
'        Frame3.Visible = True
'        Frame3.ZOrder
'    End If
'  End If

Case 20
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_god where DivCode = '" & Divcode & "'", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select gcode,gname from rm_god where gcode = '" & Txtfields(20).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs.BOF Then
    StatusBar1.Panels(2).Text = "Select a Godown code from the list"
        ''Call LookuPLoad("Gcode as Code", "gname as Name", "rm_god", txtfields(3), txtfields(3), txtfields(20), txtfields(20), "Godown Listing")
        Call LookuPLoad("Gcode""Godown Code""", "gname""Godown Name""", "rm_god", Txtfields(23), Txtfields(20), Txtfields(20), Txtfields(33), "Godown Listing")
    Else
        Txtfields(33).Text = Rs(1)
        Txtfields(23).SetFocus
        Exit Sub
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If


Case 38
          wei = ((val(Txtfields(25).Text) * val(Txtfields(38).Text)) / 100)
       Txtfields(36).Text = (val(Txtfields(25).Text) - wei)
        If val(Txtfields(36).Text) <= 0 Then
            Txtfields(36).Text = 0
        Else
            Txtfields(36).Text = val(Txtfields(36).Text)
        End If

End Select
End If

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
    Set Rs = New Recordset
    ''rs.Open "select distinct a.catcd,catname from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct a.catcd,catname from rm_CAT a where a.catcd='" & Txtfields(0).Text & "'  ", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount = 0 Then
        LookUp.Clear = True
        If Trim(Txtfields(29).Text) = "" Then
            LookUp.query = "select catcd""Category Code"",catname""Category Name"" from rm_cat"
        Else
            LookUp.query = "select distinct a.catcd""Category Code"",catname""Category Name"" from rm_cat a inner join rm_var b on a.catcd=b.catcd where b.varcode='" & Trim(Txtfields(29).Text) & "' "
        End If
        LookUp.DefCol = "Category Name"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "Category Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(0).Text = LookUp.Fields(0)
            LookUp.Clear = True
            Txtfields(1).SetFocus
        Else
            LookUp.Clear = True
            Txtfields(0).SetFocus
            Call BUTTON_Click(10)
        End If
        Exit Sub
''        Label15.Caption = "Category Details"
''        ksllist1.conn = connectstring
''        ksllist1.table = "rm_CAT a"
''        ksllist1.listfield1 = "a.catcd"
''        ksllist1.listfield2 = "catname"
''        Frame3.Visible = True
''        Frame3.ZOrder
    Else
    
    End If
Case 0
    If Txtfields(0).Text = "" Then
        MsgBox "Please Enter Category", vbInformation, head
        Cancel = True
    End If
Case 1
If Txtfields(1).Text = "" Then
    MsgBox "Please Enter Receipt Number", vbInformation, head
    Cancel = True
End If
Case 22
If Txtfields(22).Text = "" Then
    MsgBox "Please Enter Quantity", vbInformation, head
    Cancel = True
End If
Case 23
If Txtfields(23).Text = "" Then
    MsgBox "Please Enter Gross Weight", vbInformation, head
    Cancel = True
End If
If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
Else
    Txtfields(5).Text = val(Txtfields(23).Text) - val(Txtfields(24).Text)
End If
Case 24
If Txtfields(24).Text = "" Then
    MsgBox "Please Enter Tare Weight", vbInformation, head
    Cancel = True
End If
If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
Else
    Txtfields(5).Text = val(Txtfields(23).Text) - val(Txtfields(24).Text)
End If
Case 35

    Set rsg = New Recordset
    rsg.Open "select issue_desc from rm_issuetype where isstype in ('T','J')  And issue_code='" & Txtfields(35).Text & "'", DB, adOpenStatic

    If rsg.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select issue_code""Transfer Type"",issue_desc""Transfer Description"" from rm_issuetype where isstype in ('T','J') "
        LookUp.DefCol = "Transfer Description"
        LookUp.ALIGN = "2000,6000"
        LookUp.Caption = "TransferType Listing"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            Txtfields(35).Text = LookUp.Fields(0)
            Txtfields(34).Text = LookUp.Fields(1)
            LookUp.Clear = True
'            SSTab1.Tab = 1
'            txtFields(3).SetFocus
            Exit Sub
        Else
            Txtfields(34).Text = ""
            Txtfields(35).Text = ""
            SSTab1.Tab = 1
            Txtfields(35).SetFocus
            Exit Sub
        End If
    Else
'            txtfields(34).Text = ""
'            txtfields(35).Text = ""
            SSTab1.Tab = 1
            Txtfields(35).SetFocus
            Exit Sub
    End If
Case 36
       SSTab1.Tab = 1
        Txtfields(3).SetFocus
End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmTransRecp", vbInformation, head
End Sub

Private Sub txtqry_Change()
On Error GoTo txtqry_Change_Error

If Len(txtqry.Text) = 0 Then
Command4.Enabled = False
Else
Command4.Enabled = True
End If

Exit Sub
txtqry_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtqry_KeyPress(KeyAscii As Integer)
Call tonum(txtqry, 3, KeyAscii)
End Sub
Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error

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

Exit Sub
tonum1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tonum1 of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_Click()
On Error GoTo grddatagrid_Click_Error

If Opt = "add" Then
If ADOSECONDARYRS.AbsolutePosition > W Then
ADOSECONDARYRS.Delete
End If
End If

Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_Click of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text5_Change()
On Error GoTo Text5_Change_Error

Text5.Text = Format(Text5.Text, "#0.000")

Exit Sub
Text5_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text5_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text6_Change()
On Error GoTo Text6_Change_Error

Text6.Text = Format(Text6.Text, "#0.000")

Exit Sub
Text6_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text6_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_Change()
On Error GoTo Text7_Change_Error

Text7.Text = Format(Text7.Text, "#0.000")

Exit Sub
Text7_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_Change of Form frmtransrecp", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub SETSIZEORDHead()
With SpdSIZEORD

 
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = E_SIZELISTDC1.SPDISIBALQTY
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSCHECK1, " ", CellTypeCheckBox, 4, , False, False
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSSNO, "S.No.", CellTypeStaticText, 4, , False, True
    
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISDOCNO, "Doc.No", CellTypeStaticText, 7, 0, False, True
    .Col = E_SIZELISTDC1.SPDISDOCNO
    .TypeHAlign = TypeHAlignLeft
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISDOCDT, "Doc.Date", CellTypeStaticText, 8, 0, False, True
    .Col = E_SIZELISTDC1.SPDISDOCDT
    .TypeHAlign = TypeHAlignLeft
    .Col = SPDISVARCODE
    .TypeDateCentury = True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISVARCODE, "Variety Code", CellTypeStaticText, 20, 0, True, True
    .Col = E_SIZELISTDC1.SPDISVARCODE
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISVARNAME, "Variety", CellTypeStaticText, 25, 0, False, True
    .Col = E_SIZELISTDC1.SPDISVARNAME
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISISSUEDQTY, "Issued Wt", CellTypeNumber, 9, 3, True, True
    .Col = E_SIZELISTDC1.SPDISISSUEDQTY
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDISIBALQTY, "Balance Wt", CellTypeNumber, 9, 3, False, True
    .Col = E_SIZELISTDC1.SPDISIBALQTY
    .TypeHAlign = TypeHAlignLeft
    
   
    

End With
Check1.value = False
End Sub

Private Sub SETDESPATCHHead()
With SpdEmpAllocation
        .ClearSelection
        .MaxRows = 0
       ' .ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDDISQTY2DESC
        .MaxCols = SPDDRECQTY
        .Row = 1
      '  .TypeTextWordWrap = True
      '  .TypeHAlign = TypeHAlignLeft
        .FontBold = True
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDSNO, "S.No", CellTypeStaticText, 4, , False, True    'a

'
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVariety, "Variety Code", CellTypeStaticText, 20, , True, True 'd
        
           SpdEmpAllocation.Col = SpdAllocation.SPDVariety
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVarietyName, "Variety", CellTypeEdit, 20, , False, True 'e
         SpdEmpAllocation.Col = SpdAllocation.SPDVarietyName
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
      '  .Col = SpdAllocation.SPDDDOCNO
     '  .TypeNumberDecPlaces = "0"
         SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDDOCNO, "Doc.No.", CellTypeStaticText, 7, , False, True 'i
         
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDISQTY, "Issued Wt.", CellTypeNumber, 9, 3, False, True   'f
        SpdEmpAllocation.Col = SpdAllocation.SPDDISQTY
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft

        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDDOCDT, "Doc.Date", CellTypeStaticText, 7, , False, True  'i
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDBALQTY, "Balance Wt.", CellTypeNumber, 8, 3, False, True  'i
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDRECQTY, "Receipt Wt.", CellTypeNumber, 8, 3, False, True  'i

    End With
End Sub


Private Sub LoadRecDetails()
If Opt = "add" Then
 If JBFlg = "Y" Then
            If val(Txtfields(25).Text) > (val(Txtfields(39).Text) + (IssuedTotQty * 5 / 100)) Then
                MsgBox "Receipt wt cannot be greater than issued quantity", vbInformation, head
                Txtfields(25).Text = ""
                Exit Sub
            End If
            totalWt = val(Txtfields(25).Text)
            If SpdEmpAllocation.MaxRows > 0 Then
                For RW = 1 To SpdEmpAllocation.MaxRows
                    SpdEmpAllocation.Row = RW
                            
                        If totalWt > 0 Then
                            If totalWt >= val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW)) Then
                               
                                SpdEmpAllocation.SetText SpdAllocation.SPDDRECQTY, RW, val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW))
                            Else
                                SpdEmpAllocation.SetText SpdAllocation.SPDDRECQTY, RW, totalWt
                            End If
                            'grdDataGrid.Columns(WBeamNo).Text = (GetText(SpdDESPATCH, E_SIZEDESPDC1.SPDDBEAMNO, RW))
                           
                            totalWt = totalWt - val(GetText(SpdEmpAllocation, SpdAllocation.SPDDBALQTY, RW))
                            If SpdEmpAllocation.MaxRows = RW And totalWt > 0 Then
                                SpdEmpAllocation.SetText SpdAllocation.SPDDRECQTY, RW, val(GetText(SpdEmpAllocation, SpdAllocation.SPDDRECQTY, RW)) + val(totalWt)
                                
                            End If
                            
                          Else
                          SpdEmpAllocation.SetText SpdAllocation.SPDDRECQTY, RW, 0
                       End If
                Next
            
            End If
            
      End If
 End If
End Sub
Private Sub SpdLoad()

    
        Call SETDESPATCHHead
        With SpdEmpAllocation
            .MaxRows = 0
            .MaxCols = SpdAllocation.SPDDRECQTY
            .CursorStyle = CursorStyleArrow
        RW = 1
        Do While Not rsJB.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdAllocation.SPDDSNO, RW, .MaxRows + 1
            .SetText SpdAllocation.SPDVariety, RW, rsJB("varcode")
            .SetText SpdAllocation.SPDVarietyName, RW, rsJB("VARNAME")
            .SetText SpdAllocation.SPDDDOCNO, RW, rsJB("Docno")
            .SetText SpdAllocation.SPDDDOCDT, RW, rsJB("Docdt")
            .SetText SpdAllocation.SPDDISQTY, RW, rsJB("IssuedQty")
            .SetText SpdAllocation.SPDDBALQTY, RW, rsJB("BalQty")
            .SetText SpdAllocation.SPDDRECQTY, RW, rsJB("RecQty")
           
            RW = RW + 1
            rsJB.MoveNext
        Loop
        End With
End Sub

