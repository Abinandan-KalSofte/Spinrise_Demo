VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form CottonInvoice 
   Caption         =   "Raw Material Invoice"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab2 
      Height          =   2130
      Left            =   450
      TabIndex        =   76
      Top             =   5205
      Width           =   9390
      _ExtentX        =   16563
      _ExtentY        =   3757
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "CottonInvoice.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   1920
         Left            =   90
         TabIndex        =   28
         Top             =   105
         Width           =   9195
         _ExtentX        =   16219
         _ExtentY        =   3387
         _Version        =   393216
         AllowUpdate     =   0   'False
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         Enabled         =   -1  'True
         ForeColor       =   16711680
         HeadLines       =   1
         RowHeight       =   15
         TabAcrossSplits =   -1  'True
         TabAction       =   2
         WrapCellPointer =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
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
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7575
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame4 
      BorderStyle     =   0  'None
      Height          =   6330
      Left            =   405
      TabIndex        =   78
      Top             =   1050
      Width           =   9495
      Begin TabDlg.SSTab SSTab1 
         Height          =   4155
         Left            =   30
         TabIndex        =   79
         Top             =   15
         Width           =   6735
         _ExtentX        =   11880
         _ExtentY        =   7329
         _Version        =   393216
         Tabs            =   4
         TabsPerRow      =   4
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   "&Customer"
         TabPicture(0)   =   "CottonInvoice.frx":001C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "&Tax/Duty"
         TabPicture(1)   =   "CottonInvoice.frx":0038
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame3"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "C&arrier"
         TabPicture(2)   =   "CottonInvoice.frx":0054
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame2"
         Tab(2).ControlCount=   1
         TabCaption(3)   =   "&Others"
         TabPicture(3)   =   "CottonInvoice.frx":0070
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Frame7"
         Tab(3).ControlCount=   1
         Begin VB.Frame Frame3 
            Height          =   3675
            Left            =   -74880
            TabIndex        =   80
            Top             =   360
            Width           =   6495
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ins_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.0000"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   50
               Left            =   2940
               TabIndex        =   40
               Top             =   2655
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "ins_amt"
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
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   49
               Left            =   4635
               TabIndex        =   41
               Top             =   2595
               Width           =   1815
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H00FFFFFF&
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
               Height          =   315
               Index           =   1
               ItemData        =   "CottonInvoice.frx":008C
               Left            =   660
               List            =   "CottonInvoice.frx":0096
               Style           =   2  'Dropdown List
               TabIndex        =   29
               Top             =   188
               Width           =   1215
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "cess_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   15
               Left            =   2955
               MaxLength       =   5
               TabIndex        =   30
               Top             =   180
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "cess_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   16
               Left            =   4590
               MaxLength       =   9
               TabIndex        =   31
               Top             =   180
               Width           =   1785
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H00FFFFFF&
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
               Height          =   315
               Index           =   2
               ItemData        =   "CottonInvoice.frx":00A7
               Left            =   660
               List            =   "CottonInvoice.frx":00B1
               Style           =   2  'Dropdown List
               TabIndex        =   32
               Top             =   585
               Width           =   1215
            End
            Begin VB.TextBox txtFields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   17
               Left            =   1800
               MaxLength       =   5
               TabIndex        =   87
               Top             =   3780
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Charity"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   18
               Left            =   2940
               MaxLength       =   11
               TabIndex        =   33
               Top             =   600
               Width           =   1815
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H00FFFFFF&
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
               Height          =   315
               Index           =   3
               ItemData        =   "CottonInvoice.frx":00C2
               Left            =   660
               List            =   "CottonInvoice.frx":00CC
               Style           =   2  'Dropdown List
               TabIndex        =   34
               Top             =   1020
               Width           =   1215
            End
            Begin VB.TextBox txtFields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   19
               Left            =   1935
               MaxLength       =   5
               TabIndex        =   86
               Top             =   3825
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Bed_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   20
               Left            =   2940
               MaxLength       =   11
               TabIndex        =   35
               Top             =   990
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   21
               Left            =   1905
               MaxLength       =   5
               TabIndex        =   85
               Top             =   3735
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "aed_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   22
               Left            =   2940
               MaxLength       =   11
               TabIndex        =   36
               Top             =   1395
               Width           =   1815
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H00FFFFFF&
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
               Height          =   315
               Index           =   4
               ItemData        =   "CottonInvoice.frx":00DD
               Left            =   660
               List            =   "CottonInvoice.frx":00E7
               Style           =   2  'Dropdown List
               TabIndex        =   37
               Top             =   1808
               Width           =   1215
            End
            Begin VB.TextBox txtFields 
               DataField       =   "tax_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   25
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   84
               Top             =   4050
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Tax_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   26
               Left            =   2940
               MaxLength       =   11
               TabIndex        =   38
               Top             =   1800
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   27
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   83
               Top             =   4440
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "lsc_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   28
               Left            =   2940
               MaxLength       =   11
               TabIndex        =   39
               Top             =   2220
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               DataField       =   " tax_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   23
               Left            =   2970
               MaxLength       =   5
               TabIndex        =   82
               Top             =   3675
               Visible         =   0   'False
               Width           =   825
            End
            Begin VB.TextBox txtFields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   24
               Left            =   3840
               MaxLength       =   5
               TabIndex        =   81
               Top             =   3705
               Visible         =   0   'False
               Width           =   2535
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Insurance %"
               Height          =   195
               Index           =   12
               Left            =   1950
               TabIndex        =   137
               Top             =   2678
               Width           =   870
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   11
               Left            =   3900
               TabIndex        =   136
               Top             =   2678
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Height          =   195
               Index           =   7
               Left            =   2640
               TabIndex        =   100
               Top             =   285
               Width           =   45
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   8
               Left            =   120
               TabIndex        =   99
               Top             =   255
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess %"
               Height          =   195
               Index           =   11
               Left            =   1950
               TabIndex        =   98
               Top             =   248
               Width           =   510
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   12
               Left            =   3900
               TabIndex        =   97
               Top             =   248
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   13
               Left            =   120
               TabIndex        =   96
               Top             =   660
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity "
               Height          =   195
               Index           =   14
               Left            =   1950
               TabIndex        =   95
               Top             =   653
               Width           =   525
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Duty"
               Height          =   195
               Index           =   16
               Left            =   120
               TabIndex        =   94
               Top             =   1065
               Width           =   330
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   17
               Left            =   1950
               TabIndex        =   93
               Top             =   1058
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   19
               Left            =   1950
               TabIndex        =   92
               Top             =   1463
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Index           =   21
               Left            =   150
               TabIndex        =   91
               Top             =   1875
               Width           =   270
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   22
               Left            =   1950
               TabIndex        =   90
               Top             =   1868
               Width           =   315
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Surcharage"
               Height          =   195
               Index           =   24
               Left            =   1950
               TabIndex        =   89
               Top             =   2273
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   26
               Left            =   1950
               TabIndex        =   88
               Top             =   3645
               Visible         =   0   'False
               Width           =   315
            End
         End
         Begin VB.Frame Frame7 
            Height          =   3630
            Left            =   -74880
            TabIndex        =   154
            Top             =   360
            Width           =   6495
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   69
               Left            =   1095
               MaxLength       =   2
               TabIndex        =   69
               Top             =   2340
               Width           =   525
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   68
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   66
               Top             =   1965
               Width           =   2025
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   67
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   61
               Top             =   1260
               Width           =   2025
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   66
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   56
               Top             =   570
               Width           =   2025
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "pla_CODE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   32
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   54
               Top             =   180
               Width           =   525
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "PLA_NO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   33
               Left            =   1680
               Locked          =   -1  'True
               MaxLength       =   8
               TabIndex        =   55
               Top             =   180
               Width           =   975
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "PLA_BED"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   51
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   57
               Top             =   180
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "Pla_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   52
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   58
               Top             =   529
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23a_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   53
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   59
               Top             =   915
               Width           =   525
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23a_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   54
               Left            =   1680
               MaxLength       =   8
               TabIndex        =   60
               Top             =   915
               Width           =   975
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23a_bed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   55
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   62
               Top             =   878
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23a_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   56
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   63
               Top             =   1227
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23c_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   57
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   64
               Top             =   1605
               Width           =   525
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23c_no"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   58
               Left            =   1680
               MaxLength       =   8
               TabIndex        =   65
               Top             =   1605
               Width           =   975
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23c_bed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   59
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   67
               Top             =   1590
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "rg23c_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   60
               Left            =   4590
               MaxLength       =   11
               TabIndex        =   68
               Top             =   1950
               Width           =   1815
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "RND_OFF"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   39
               Left            =   4620
               Locked          =   -1  'True
               TabIndex        =   71
               Top             =   2625
               Width           =   1035
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "freight"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   31
               Left            =   1110
               MaxLength       =   11
               TabIndex        =   70
               Top             =   2715
               Width           =   1815
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Freight/Pack"
               Height          =   195
               Index           =   17
               Left            =   105
               TabIndex        =   170
               Top             =   2370
               Width           =   930
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "PLA No."
               Height          =   195
               Index           =   13
               Left            =   150
               TabIndex        =   165
               Top             =   248
               Width           =   600
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   15
               Left            =   3600
               TabIndex        =   164
               Top             =   248
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " AED "
               Height          =   195
               Index           =   18
               Left            =   3555
               TabIndex        =   163
               Top             =   597
               Width           =   420
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23A No."
               Height          =   195
               Index           =   15
               Left            =   120
               TabIndex        =   162
               Top             =   945
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   20
               Left            =   3555
               TabIndex        =   161
               Top             =   946
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   23
               Left            =   3600
               TabIndex        =   160
               Top             =   1295
               Width           =   375
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23C No."
               Height          =   195
               Index           =   14
               Left            =   120
               TabIndex        =   159
               Top             =   1650
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   25
               Left            =   3555
               TabIndex        =   158
               Top             =   1644
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   31
               Left            =   3600
               TabIndex        =   157
               Top             =   1993
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Freight"
               Height          =   195
               Index           =   28
               Left            =   120
               TabIndex        =   156
               Top             =   2730
               Width           =   480
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Round off"
               Height          =   195
               Index           =   32
               Left            =   3660
               TabIndex        =   155
               Top             =   2693
               Width           =   705
            End
         End
         Begin VB.Frame Frame2 
            Height          =   3615
            Left            =   -74895
            TabIndex        =   143
            Top             =   405
            Width           =   6495
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "LR_DATE"
               Height          =   225
               Index           =   3
               Left            =   5040
               TabIndex        =   45
               Top             =   900
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   397
               _Version        =   393216
               BorderStyle     =   0
               BackColor       =   16777215
               ForeColor       =   16711680
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
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "lr_no"
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
               Height          =   330
               Index           =   35
               Left            =   1440
               MaxLength       =   20
               TabIndex        =   44
               Top             =   960
               Width           =   2280
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "vehicle_no"
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
               Height          =   330
               Index           =   34
               Left            =   1440
               MaxLength       =   15
               TabIndex        =   43
               Top             =   570
               Width           =   2265
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "rem_time"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "dd/mm/yyyy hh:mm:ss AMPM"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   37
               Left            =   5400
               MaxLength       =   8
               TabIndex        =   49
               Top             =   2070
               Width           =   945
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "are_no"
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
               Height          =   330
               Index           =   38
               Left            =   1440
               MaxLength       =   15
               TabIndex        =   46
               Top             =   1350
               Width           =   2265
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "pre_time"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "dd/mm/yyyy hh:mm:ss AMPM"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   36
               Left            =   5400
               MaxLength       =   8
               TabIndex        =   48
               Top             =   1680
               Width           =   945
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "CARRIER_CODE"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   29
               Left            =   1440
               MaxLength       =   11
               TabIndex        =   42
               Top             =   165
               Width           =   945
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   30
               Left            =   2430
               TabIndex        =   144
               Top             =   165
               Width           =   3960
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "CONS_ADD1"
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
               Height          =   330
               Index           =   61
               Left            =   1440
               MaxLength       =   30
               TabIndex        =   50
               Top             =   1755
               Width           =   2955
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "CONS_ADD2"
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
               Height          =   330
               Index           =   62
               Left            =   1440
               MaxLength       =   30
               TabIndex        =   51
               Top             =   2145
               Width           =   2955
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "CONS_ADD3"
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
               Height          =   330
               Index           =   63
               Left            =   1440
               MaxLength       =   30
               TabIndex        =   52
               Top             =   2535
               Width           =   2955
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "CONS_ADD4"
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
               Height          =   330
               Index           =   64
               Left            =   1440
               MaxLength       =   30
               TabIndex        =   53
               Top             =   2940
               Width           =   2955
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "are_date"
               Height          =   225
               Index           =   1
               Left            =   5025
               TabIndex        =   47
               Top             =   1290
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   397
               _Version        =   393216
               BorderStyle     =   0
               BackColor       =   16777215
               ForeColor       =   16711680
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
               Height          =   315
               Index           =   1
               Left            =   5010
               TabIndex        =   145
               Top             =   1245
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   16515073
               CurrentDate     =   37211
            End
            Begin MSComCtl2.DTPicker DTPicker1 
               Height          =   315
               Index           =   3
               Left            =   4995
               TabIndex        =   168
               Top             =   870
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   16515073
               CurrentDate     =   37211
            End
            Begin VB.Line Line3 
               X1              =   4485
               X2              =   6405
               Y1              =   2400
               Y2              =   2400
            End
            Begin VB.Line Line2 
               X1              =   4500
               X2              =   6450
               Y1              =   1590
               Y2              =   1590
            End
            Begin VB.Line Line1 
               X1              =   4485
               X2              =   4485
               Y1              =   1590
               Y2              =   2415
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   34
               Left            =   4500
               TabIndex        =   169
               Top             =   930
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "LR Number "
               Height          =   195
               Index           =   30
               Left            =   60
               TabIndex        =   153
               Top             =   1020
               Width           =   855
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Vehicle Number"
               Height          =   195
               Index           =   44
               Left            =   60
               TabIndex        =   152
               Top             =   615
               Width           =   1125
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Rem Time"
               Height          =   180
               Index           =   1
               Left            =   4575
               TabIndex        =   151
               Top             =   2100
               Width           =   705
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Prep. Time"
               Height          =   195
               Index           =   10
               Left            =   4560
               TabIndex        =   150
               Top             =   1725
               Width           =   765
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Carrier"
               Height          =   195
               Index           =   27
               Left            =   60
               TabIndex        =   149
               Top             =   195
               Width           =   450
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "ARE Number"
               Height          =   195
               Index           =   0
               Left            =   60
               TabIndex        =   148
               Top             =   1380
               Width           =   930
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   30
               Left            =   4485
               TabIndex        =   147
               Top             =   1305
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Consignee Address"
               Height          =   195
               Index           =   16
               Left            =   60
               TabIndex        =   146
               Top             =   1785
               Width           =   1365
            End
         End
         Begin VB.Frame Frame1 
            Height          =   3690
            Left            =   135
            TabIndex        =   101
            Top             =   345
            Width           =   6495
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "bagidno"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0;(0)"
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
               Height          =   330
               Index           =   70
               Left            =   1125
               MaxLength       =   20
               TabIndex        =   27
               Top             =   3165
               Width           =   2910
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "cr_days"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0;(0)"
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
               Height          =   330
               Index           =   65
               Left            =   5250
               MaxLength       =   3
               TabIndex        =   26
               Top             =   2820
               Width           =   1095
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "inv_no"
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
               Height          =   330
               Index           =   1
               Left            =   1815
               MaxLength       =   8
               TabIndex        =   13
               Top             =   180
               Width           =   1425
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "inv_TYPE"
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
               Height          =   330
               Index           =   0
               Left            =   1125
               MaxLength       =   2
               TabIndex        =   12
               Top             =   180
               Width           =   645
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "cex_inv_no"
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
               Height          =   330
               Index           =   3
               Left            =   5070
               MaxLength       =   8
               TabIndex        =   15
               TabStop         =   0   'False
               Top             =   180
               Width           =   1275
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Cex_inv_TYPE"
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
               Height          =   330
               Index           =   2
               Left            =   4350
               MaxLength       =   2
               TabIndex        =   14
               TabStop         =   0   'False
               Top             =   180
               Width           =   645
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "BO_Type"
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
               Height          =   330
               Index           =   5
               Left            =   5070
               MaxLength       =   8
               TabIndex        =   18
               Top             =   555
               Width           =   1275
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Cust_CODE"
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
               Height          =   330
               Index           =   6
               Left            =   1125
               MaxLength       =   7
               TabIndex        =   19
               Top             =   930
               Width           =   1095
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
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
               Height          =   330
               Index           =   7
               Left            =   2280
               MaxLength       =   50
               TabIndex        =   106
               Top             =   930
               Width           =   4080
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Agent_Code"
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
               Height          =   330
               Index           =   8
               Left            =   1125
               MaxLength       =   6
               TabIndex        =   20
               Top             =   1305
               Width           =   1095
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
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
               Height          =   330
               Index           =   9
               Left            =   2265
               MaxLength       =   50
               TabIndex        =   105
               Top             =   1305
               Width           =   4080
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Brok_code"
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
               Height          =   330
               Index           =   10
               Left            =   1125
               MaxLength       =   6
               TabIndex        =   21
               Top             =   1710
               Width           =   1095
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
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
               Height          =   330
               Index           =   11
               Left            =   2265
               MaxLength       =   50
               TabIndex        =   104
               Top             =   1680
               Width           =   4065
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "bo_no"
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
               Height          =   330
               Index           =   4
               Left            =   4365
               MaxLength       =   4
               TabIndex        =   17
               Top             =   570
               Width           =   645
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H00FFFFFF&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   315
               Index           =   0
               ItemData        =   "CottonInvoice.frx":00F8
               Left            =   1125
               List            =   "CottonInvoice.frx":0105
               Style           =   2  'Dropdown List
               TabIndex        =   22
               Top             =   2070
               Width           =   2115
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
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
               Height          =   330
               Index           =   12
               Left            =   3810
               MaxLength       =   50
               TabIndex        =   23
               Top             =   2055
               Width           =   2535
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
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
               Height          =   330
               Index           =   14
               Left            =   2280
               MaxLength       =   50
               TabIndex        =   102
               Top             =   2415
               Width           =   4095
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Despatch_to"
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
               Height          =   330
               Index           =   13
               Left            =   1110
               MaxLength       =   6
               TabIndex        =   24
               Top             =   2430
               Width           =   1095
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "date"
               Height          =   225
               Index           =   0
               Left            =   1170
               TabIndex        =   16
               Top             =   600
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   397
               _Version        =   393216
               BorderStyle     =   0
               BackColor       =   16777215
               ForeColor       =   16711680
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
               Height          =   315
               Index           =   0
               Left            =   1125
               TabIndex        =   107
               Top             =   570
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   16515073
               CurrentDate     =   37211
            End
            Begin VB.TextBox txtFields 
               DataField       =   "BANK_CODE"
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   48
               Left            =   3810
               MaxLength       =   6
               TabIndex        =   103
               Top             =   2055
               Width           =   1065
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "DELIVERY_DT"
               Height          =   225
               Index           =   2
               Left            =   1170
               TabIndex        =   25
               Top             =   2850
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   397
               _Version        =   393216
               BorderStyle     =   0
               BackColor       =   16777215
               ForeColor       =   16711680
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
               Height          =   315
               Index           =   2
               Left            =   1125
               TabIndex        =   138
               Top             =   2805
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   16515073
               CurrentDate     =   37211
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bag Id. No."
               Height          =   195
               Index           =   35
               Left            =   90
               TabIndex        =   179
               Top             =   3255
               Width           =   810
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Credit days"
               Height          =   195
               Index           =   33
               Left            =   4155
               TabIndex        =   142
               Top             =   2880
               Width           =   780
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Delivery Date"
               Height          =   195
               Index           =   32
               Left            =   90
               TabIndex        =   139
               Top             =   2925
               Width           =   960
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Invoice No. "
               Height          =   195
               Index           =   0
               Left            =   90
               TabIndex        =   117
               Top             =   240
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "CEX Invoice"
               Height          =   195
               Index           =   1
               Left            =   3270
               TabIndex        =   116
               Top             =   218
               Width           =   885
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   2
               Left            =   90
               TabIndex        =   115
               Top             =   585
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Issue No."
               Height          =   195
               Index           =   3
               Left            =   3270
               TabIndex        =   114
               Top             =   585
               Width           =   675
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Customer"
               Height          =   195
               Index           =   4
               Left            =   90
               TabIndex        =   113
               Top             =   960
               Width           =   660
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Agent"
               Height          =   195
               Index           =   5
               Left            =   90
               TabIndex        =   112
               Top             =   1350
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Broker"
               Height          =   195
               Index           =   6
               Left            =   90
               TabIndex        =   111
               Top             =   1740
               Width           =   465
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Pay Mode"
               Height          =   195
               Index           =   9
               Left            =   90
               TabIndex        =   110
               Top             =   2160
               Width           =   720
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bank"
               Height          =   195
               Index           =   10
               Left            =   3390
               TabIndex        =   109
               Top             =   2145
               Width           =   405
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Despatch To"
               Height          =   195
               Index           =   29
               Left            =   90
               TabIndex        =   108
               Top             =   2550
               Width           =   930
            End
         End
      End
      Begin TabDlg.SSTab SSTab3 
         Height          =   4155
         Left            =   6750
         TabIndex        =   118
         Top             =   15
         Width           =   2670
         _ExtentX        =   4710
         _ExtentY        =   7329
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   " "
         TabPicture(0)   =   "CottonInvoice.frx":013A
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame5"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame5 
            Enabled         =   0   'False
            Height          =   3810
            Left            =   105
            TabIndex        =   119
            Top             =   225
            Width           =   2490
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "lsc_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   46
               Left            =   1155
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   134
               Text            =   " "
               Top             =   2790
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFF80&
               DataField       =   "TOTAL_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H000000FF&
               Height          =   330
               Index           =   47
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   132
               Text            =   " "
               Top             =   3195
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "TAX_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   45
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   130
               Text            =   " "
               Top             =   2340
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "AED_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   44
               Left            =   1125
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   128
               Text            =   " "
               Top             =   1935
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "BED_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   43
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   126
               Text            =   " "
               Top             =   1500
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "CESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   42
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   124
               Text            =   " "
               Top             =   1065
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "CHARITY"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   330
               Index           =   41
               Left            =   1125
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   122
               Text            =   " "
               Top             =   630
               Width           =   1305
            End
            Begin VB.TextBox txtFields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0FFFF&
               DataField       =   "MATL_VALUE"
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
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   345
               Index           =   40
               Left            =   1125
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   120
               Text            =   " "
               Top             =   195
               Width           =   1305
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Others"
               Height          =   195
               Index           =   9
               Left            =   120
               TabIndex        =   135
               Top             =   2835
               Width           =   465
            End
            Begin VB.Label lblLabels 
               Caption         =   "Invoice  Amount"
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
               Height          =   375
               Index           =   8
               Left            =   120
               TabIndex        =   133
               Top             =   3240
               Width           =   1080
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Index           =   7
               Left            =   120
               TabIndex        =   131
               Top             =   2415
               Width           =   270
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "AED"
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   129
               Top             =   1950
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "BED"
               Height          =   195
               Index           =   5
               Left            =   120
               TabIndex        =   127
               Top             =   1530
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   4
               Left            =   120
               TabIndex        =   125
               Top             =   1125
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   3
               Left            =   120
               TabIndex        =   123
               Top             =   705
               Width           =   480
            End
            Begin VB.Label lblLabels 
               Caption         =   "Assessable Value"
               Height          =   375
               Index           =   2
               Left            =   120
               TabIndex        =   121
               Top             =   225
               Width           =   840
            End
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   72
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         Height          =   570
         Index           =   13
         Left            =   5250
         Picture         =   "CottonInvoice.frx":0156
         Style           =   1  'Graphical
         TabIndex        =   180
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   4740
         Picture         =   "CottonInvoice.frx":0598
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Print"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":09DA
         Height          =   550
         Index           =   8
         Left            =   3165
         Picture         =   "CottonInvoice.frx":0E24
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         DownPicture     =   "CottonInvoice.frx":1186
         Height          =   550
         Index           =   10
         Left            =   4215
         Picture         =   "CottonInvoice.frx":1490
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":180C
         Height          =   550
         Index           =   9
         Left            =   3690
         Picture         =   "CottonInvoice.frx":1B16
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "CottonInvoice.frx":1EB8
         Height          =   550
         Index           =   11
         Left            =   5790
         Picture         =   "CottonInvoice.frx":2302
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":2697
         Height          =   550
         Index           =   7
         Left            =   2640
         Picture         =   "CottonInvoice.frx":2AE1
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":2E31
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
         Left            =   540
         Picture         =   "CottonInvoice.frx":313B
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":34D7
         Height          =   550
         Index           =   5
         Left            =   1590
         Picture         =   "CottonInvoice.frx":3921
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":3C86
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "CottonInvoice.frx":3F90
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":4323
         Height          =   550
         Index           =   6
         Left            =   2115
         Picture         =   "CottonInvoice.frx":476D
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":4ABA
         Height          =   550
         Index           =   4
         Left            =   1065
         Picture         =   "CottonInvoice.frx":4DC4
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoice.frx":5159
         Height          =   550
         Index           =   1
         Left            =   540
         Picture         =   "CottonInvoice.frx":5463
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Visible         =   0   'False
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8505
         TabIndex        =   74
         Top             =   270
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6675
         TabIndex        =   73
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   75
      Top             =   8190
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3528
            MinWidth        =   3528
            Text            =   "KALSOFTE"
            TextSave        =   "KALSOFTE"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10584
            MinWidth        =   10584
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "20/09/2016"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04:18"
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
   Begin VB.Timer Timer1 
      Interval        =   800
      Left            =   3060
      Top             =   2130
   End
   Begin VB.Frame Frame6 
      Height          =   5700
      Left            =   495
      TabIndex        =   140
      Top             =   1530
      Visible         =   0   'False
      Width           =   9180
      Begin listacx.codelist Ksldesc1 
         Height          =   3345
         Left            =   780
         TabIndex        =   171
         Top             =   660
         Width           =   7275
         _ExtentX        =   12832
         _ExtentY        =   5900
         caption         =   ""
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Height          =   660
         Left            =   3075
         Style           =   1  'Graphical
         TabIndex        =   167
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4740
         Style           =   1  'Graphical
         TabIndex        =   166
         Top             =   4110
         Width           =   1185
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   141
         Top             =   120
         Width           =   9105
      End
   End
   Begin VB.Frame Frame8 
      Height          =   3390
      Left            =   630
      TabIndex        =   172
      Top             =   1395
      Visible         =   0   'False
      Width           =   5715
      Begin VB.OptionButton choi 
         Caption         =   "Others"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   2
         Left            =   2250
         TabIndex        =   177
         Top             =   1725
         Width           =   2385
      End
      Begin VB.OptionButton choi 
         Caption         =   "Debtors"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   1
         Left            =   2250
         TabIndex        =   176
         Top             =   1230
         Width           =   1890
      End
      Begin VB.OptionButton choi 
         Caption         =   "Creditors"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   0
         Left            =   2250
         TabIndex        =   175
         Top             =   750
         Value           =   -1  'True
         Width           =   2055
      End
      Begin VB.CommandButton optcan 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   3855
         TabIndex        =   174
         Top             =   2535
         Width           =   1110
      End
      Begin VB.CommandButton optok 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2325
         TabIndex        =   173
         Top             =   2550
         Width           =   1110
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         BorderWidth     =   2
         Height          =   2745
         Left            =   60
         Top             =   585
         Width           =   5595
      End
      Begin VB.Label Label35 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Party Type"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   480
         Left            =   30
         TabIndex        =   178
         Top             =   150
         Width           =   5670
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Raw Material Invoice"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   465
      TabIndex        =   77
      Top             =   690
      Width           =   2775
   End
End
Attribute VB_Name = "CottonInvoice"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rate As Double
Dim adoSecondaryRS, QryRS As Recordset
Dim Rs, rs1, RS2 As Recordset
Dim db As Connection
Dim Opt, STFLAG As String
Dim st, st1, st2 As String
Dim itary() As String
Dim cou, Col As Integer
Dim cou1, C As Integer
Dim flg As String
Dim Rep As Report.ReportView
Dim a, b As Integer
Dim xx As Integer
Dim str As String
Dim rf As String
Dim ex1, ex As Double
Dim rstParameter As Recordset

Dim docNo As String
Dim SCPer, STPer, AEDPer, BEDPer, CESSPer, CHARPer, INVSNO  As Integer
Dim errflg, CHFLG, CESSFLG, DUTYFLG, TAXFLG As Boolean
Dim NettRExR, NettR, ExR, PackNo, invamt, DBED, DAED, Charity, cess, Bed, Aed, tax, SurCharge, Insur, Rndoff, Assval, TotAmt As Double
Dim totinvamt As Double
'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error

 stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
    MaskEdBox1(0).Text = IIf(IsNull(adoPrimaryRS("DaTe")), "__/__/____", Format(adoPrimaryRS("date"), "DD/MM/YYYY"))
    MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRS("DELIVERY_DT")), "__/__/____", Format(adoPrimaryRS("DELIVERY_DT"), "DD/MM/YYYY"))
    MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRS("ARE_DATE")), "__/__/____", Format(adoPrimaryRS("ARE_DATE"), "DD/MM/YYYY"))
    MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("LR_DATE")), "__/__/____", Format(adoPrimaryRS("LR_DATE"), "DD/MM/YYYY"))
    If adoPrimaryRS("pay_mode") = "D" Then
            Combo1(0).ListIndex = 0
    ElseIf adoPrimaryRS("pay_mode") = "A" Then
            Combo1(0).ListIndex = 1
    Else
            Combo1(0).ListIndex = 2
    End If
    stbar.Panels(2).Text = "Record " & adoPrimaryRS.RecordCount & " of " & adoPrimaryRS.AbsolutePosition
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
'Addition
 If ToValidFinYear(Divcode) = False Then Exit Sub
     Opt = "add"
     desc.Caption = "Addition"
     CHFLG = False
     CESSFLG = False
     DUTYFLG = False
     TAXFLG = False
     errflg = False
     Dim C As Control
     SSTab1.Enabled = True

     For Each C In Me.Controls
        If TypeOf C Is TextBox Then
           C.Text = ""
        End If
     Next
     SSTab1.Tab = 0
     Screen.MousePointer = 11
     desc.Caption = "Addition"
     stbar.Panels(2).Text = "Addition"
     db.BeginTrans
     Set adoPrimaryRS = New Recordset
     Set adoSecondaryRS = New Recordset
     adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,entdate,user_id,bagidno from RM_CINVHD where divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
     adoPrimaryRS.AddNew
     Call bindcontls
     ReDim itary(100, 0)
     adoSecondaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as ""Quantity"",Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""Tax Code"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO ,lotdt FROM RM_CINVDT where divcode = '" & Divcode & "' and 1=2", db, adOpenStatic, adLockBatchOptimistic
     Set grddatagrid.DataSource = adoSecondaryRS
     Call GRIDALIGN
     MaskEdBox1(0).Text = pdate
     DTPicker1(0).value = pdate
     MaskEdBox1(2).Text = pdate
     DTPicker1(2).value = pdate
     Txtfields(36).Text = Mid$(Time, 1, 8)
     Txtfields(37).Text = Mid$(Time, 1, 8)
     Txtfields(15).Text = "0.05"
     'adoSecondaryRS.AddNew
     grddatagrid.AllowAddNew = True
     grddatagrid.AllowUpdate = True
     Call ENABLCONTLS
     Call adddelmod(BUTTON)
     Txtfields(0).SetFocus
     Screen.MousePointer = 0
     Txtfields(13).Locked = False
     Txtfields(5).Locked = True
     Txtfields(1).Locked = False
Case 1 'mod
 If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("RM_CINVHD A WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
        BUTTON_Click (10)
        Exit Sub
    End If
    SSTab1.Enabled = True
    Opt = "mod"
    errflg = False
    desc.Caption = "Modification"
    db.BeginTrans
    LookUp.clear = True
    '' Kuppuram - 27-Apr-2007 - INV_TYPE = 'WS' is changed to INV_TYPE like 'W%'
    ''LookUp.query = "select inv_no,inv_type from RM_CINVHD WHERE INV_TYPE='WS' and divcode='" & Divcode & "' "
    LookUp.query = "select inv_no""InvoiceNo."",inv_type""Type"" from RM_CINVHD WHERE divcode='" & Divcode & "' "
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "InvoiceNo."
    LookUp.ALIGN = "1500,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno from RM_CINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",INV_KGS""Invoice Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,lotdt FROM RM_CINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & Txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
    If TERS(0) = "Y" Then
        Combo1(1).ListIndex = 0
        Call Combo1_Click(1)
        CESSFLG = True
    Else
        Combo1(1).ListIndex = 1
    End If
    If TERS(1) = "Y" Then
        Combo1(2).ListIndex = 0
        Call Combo1_Click(2)
        CHFLG = True
    Else
        Combo1(2).ListIndex = 1
    End If
    If TERS(2) = "Y" Then
        Combo1(3).ListIndex = 0
        Call Combo1_Click(3)
        DUTYFLG = True
    Else
        Combo1(3).ListIndex = 1
    End If
    If TERS(3) = "Y" Then
        Combo1(4).ListIndex = 0
        Call Combo1_Click(4)
        TAXFLG = True
    Else
        Combo1(4).ListIndex = 1
    End If
       
       Call GRIDALIGN
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For i = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(i).Locked = False
            Next
       End If
        Call ModLock
       
       On Error Resume Next
       If Opt = "del" Then BUTTON(9).SetFocus
      Else
    Screen.MousePointer = 11
    Frame6.Visible = False
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call cancl1(BUTTON, 24)
    Buttonframe.Enabled = True
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    
    End If
'''    Buttonframe.Enabled = False
'''    listlb.Caption = "Invoice Listing"
'''    ksldesc1.conn = connectstring
'''    ksldesc1.table = "RM_CINVHD A WHERE INV_TYPE='WS' AND CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE AND INV_TYPE='WS' GROUP BY CEX_INV_TYPE) AND INV_TYPE='WS'"
'''    ksldesc1.listfield1 = "a.inv_type AS Invoice_type"
'''    ksldesc1.listfield2 = "a.inv_no"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    ksldesc1.SetFocus
    If Opt = "mod" Then
    
    Call adddelmod(BUTTON)
'    Call gridalign
    Call ModLock
    Txtfields(61).Locked = False
    Txtfields(62).Locked = False
    Txtfields(63).Locked = False
    Txtfields(64).Locked = False
     End If
Case 2 'DEL
 If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("RM_CINVHD H WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE H.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "del"
    desc.Caption = "Deletion"
    db.BeginTrans
    errflg = False
    LookUp.clear = True
    '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
    ''LookUp.query = "select inv_no,inv_type from RM_CINVHD WHERE INV_TYPE='WS' and divcode='" & Divcode & "' "
    LookUp.query = "select inv_no""Invoice No."",inv_type""Invoice Type"" from RM_CINVHD WHERE divcode='" & Divcode & "' "
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "Invoice No."
    LookUp.ALIGN = "2000,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno from RM_CINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,lotdt FROM RM_CINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & Txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
    If TERS.RecordCount > 0 Then
        If TERS(0) = "Y" Then
            Combo1(1).ListIndex = 0
            Call Combo1_Click(1)
            CESSFLG = True
        Else
            Combo1(1).ListIndex = 1
        End If
        If TERS(1) = "Y" Then
            Combo1(2).ListIndex = 0
            Call Combo1_Click(2)
            CHFLG = True
        Else
            Combo1(2).ListIndex = 1
        End If
        If TERS(2) = "Y" Then
            Combo1(3).ListIndex = 0
            Call Combo1_Click(3)
            DUTYFLG = True
        Else
            Combo1(3).ListIndex = 1
        End If
        If TERS(3) = "Y" Then
            Combo1(4).ListIndex = 0
            Call Combo1_Click(4)
            TAXFLG = True
        Else
            Combo1(4).ListIndex = 1
        End If
    End If
       Call GRIDALIGN
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For i = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(i).Locked = False
            Next
       End If
        Call ModLock
       
       On Error Resume Next
       If Opt = "del" Then BUTTON(9).SetFocus
      Else
    Screen.MousePointer = 11
    Frame6.Visible = False
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call cancl1(BUTTON, 24)
    Buttonframe.Enabled = True
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    
    End If
'''    Buttonframe.Enabled = False
'''    listlb.Caption = "Invoice Listing"
'''    ksldesc1.conn = connectstring
'''    ksldesc1.table = "RM_CINVHD A WHERE INV_TYPE='WS' AND CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE AND INV_TYPE='WS' GROUP BY CEX_INV_TYPE) AND INV_TYPE='WS'"
'''    ksldesc1.listfield1 = "a.inv_type AS Invoice_type"
'''    ksldesc1.listfield2 = "a.inv_no"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    ksldesc1.SetFocus
    Call adddelmod(BUTTON)
'    Call gridalign
    
Case 4 'Find
    If Record_Exists("RM_CINVHD H", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "qry"
    desc.Caption = "Find"
    errflg = False
    listlb.Caption = "Invoice Listing"
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    ksldesc1.Table = "RM_CINVHD H"
    ksldesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
    ksldesc1.listfield2 = "H.inv_no"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
    Call GRIDALIGN
    
Case 5
'First
         desc.Caption = "Query"
         On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
         BUTTON(5).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(6).Enabled = True
         BUTTON(8).Enabled = True
         stbar.Panels(2).Text = "First Record"
         Exit Sub
GoFirstError:

Case 6
'Next
            desc.Caption = "Query"
            On Error GoTo GoNextError
            adoPrimaryRS.MoveNext
            If adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveLast
            End If
            Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
            If Not adoPrimaryRS.EOF Then
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            Else
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
            End If
            Exit Sub
GoNextError:

Case 7
 'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        adoPrimaryRS.MovePrevious
        If adoPrimaryRS.BOF Then
            adoPrimaryRS.MoveFirst
        End If
        Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
        If Not adoPrimaryRS.BOF Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        Else
            Beep
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        Exit Sub

GoPrevError:
       
Case 8
'Last
         desc.Caption = "Query"
         On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        If adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveLast
        End If
        Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:

     
     
Case 9
'SAVE

        If Opt = "add" Then
            If Trim(Txtfields(13).Text) = "" Then
                MsgBox "Please enter valid Despatch To", vbInformation, head
                Txtfields(13).SetFocus
                Exit Sub
            End If
            If Trim(Txtfields(0).Text) = "" Then
                MsgBox "Please enter Invoice Number", vbInformation, head
                Txtfields(0).SetFocus
                Exit Sub
            End If
            If Trim(Txtfields(1).Text) = "" Then
                MsgBox "EPlease enter valid Invoice Number", vbInformation, head
                Txtfields(0).SetFocus
                Exit Sub
            End If
            If Trim(Txtfields(4).Text) = "" Then
                MsgBox "Please enter Issue Number", vbInformation, head
                Txtfields(4).SetFocus
                Exit Sub
            End If
            If Trim(Txtfields(5).Text) = "" Then
                MsgBox "Please enter valid Issue Number", vbInformation, head
                Txtfields(4).SetFocus
                Exit Sub
            End If
            If val(Txtfields(47).Text) = 0 Then
                MsgBox "Invoice Amount must be greater than zero", vbInformation, head
                grddatagrid.Col = 9
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
    If Opt = "add" Then
       INSNO = 0
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If grddatagrid.Columns(6).Text = "" Then
                adoSecondaryRS.Delete
            Else
                adoSecondaryRS("DIVCODE") = Divcode
                adoSecondaryRS("INV_TYPE") = Txtfields(0).Text
                adoSecondaryRS("INV_NO") = Txtfields(1).Text
                adoSecondaryRS("INVSNO") = INSNO + 1
                adoSecondaryRS("inv kgs") = grddatagrid.Columns(9).Text
                adoSecondaryRS("Cont No.") = IIf(IsNull(adoSecondaryRS("Cont No.")), " ", adoSecondaryRS("Cont No."))
                adoSecondaryRS("Cont Type") = IIf(IsNull(adoSecondaryRS("Cont Type")), " ", adoSecondaryRS("Cont Type"))
            End If
            adoSecondaryRS.MoveNext
        Loop
            Call INVCALC
            Call invamtcheck
            If val(totinvamt) <> val(Txtfields(47).Text) Then
                MsgBox "Invoice Amount Not Tallied", vbInformation, head
                Exit Sub
            End If
            DBED = 0
            DAED = 0
        If Trim(Txtfields(32).Text) <> "" Or Trim(Txtfields(53).Text) <> "" Or Trim(Txtfields(57).Text) <> "" Then
            DBED = val(Txtfields(51).Text) + val(Txtfields(55).Text) + val(Txtfields(59).Text)
            If Not val(Txtfields(43)) = val(DBED) Then
                MsgBox "B.E.D Amount Not Tally", vbInformation, head
                Txtfields(34).SetFocus
                Exit Sub
            End If
            DAED = val(Txtfields(52).Text) + val(Txtfields(56).Text) + val(Txtfields(60).Text)
            If Not (val(Txtfields(44)) = val(DAED)) Then
                MsgBox "A.E.D Amount Not Tally", vbInformation, head
                Txtfields(34).SetFocus
                Exit Sub
            End If
        End If
        If Combo1(0).ListIndex = 0 Then
            adoPrimaryRS("pay_mode") = "D"
        ElseIf Combo1(0).ListIndex = 1 Then
            adoPrimaryRS("pay_mode") = "A"
        Else
            adoPrimaryRS("pay_mode") = "P"
        End If
        If STFLAG = "L" Then
            adoPrimaryRS("TAX_FLAG") = "L"
        ElseIf STFLAG = "I" Then
            adoPrimaryRS("TAX_FLAG") = "C"
        Else
            adoPrimaryRS("TAX_FLAG") = "N"
        End If
        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("User_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("bagidno") = Txtfields(70).Text
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        adoSecondaryRS.UpdateBatch adAffectAllChapters
        
        DOCNOGRP = 0
        CEXNOGRP = 0
        divgrp = ""
        YearNo = Format(yfdate, "yy")
        Dim rsg As New ADODB.Recordset
        Set rsg = New Recordset
        rsg.Open "SELECT isnull(DocNoGrp,0)""DocNoGrp"",isnull(CexNoGrp,0)""CexNoGrp"",ISNULL(DIVGRP,'') DIVGRP from ig_doccontrol where DOC_REF='" & Txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", db, adOpenStatic
        If rsg.RecordCount > 0 Then
            DOCNOGRP = rsg("DOCNOGRP")
            CEXNOGRP = rsg("CexNoGrp")
            divgrp = rsg("DIVGRP")
        End If
        
        db.Execute "update ig_doccontrol set Cex_lastno =" & val(Mid$(Txtfields(3).Text, 3, 8)) & " where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND CexNoGRP=" & CEXNOGRP & "  AND DOC_TYPE='I'", a
         
        db.Execute "update ig_doccontrol set last_no =" & val(Mid$(Txtfields(1).Text, 3, 8)) & " where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND DOCNOGRP=" & DOCNOGRP & " AND DOC_TYPE='I' and isnull(divGRP,'')='" & divgrp & "'", a
                
                
'        DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtfields(1).Text, 3, 8)) & " WHERE DOC_TYPE='I' AND DIVCODE='" & Divcode & "'", a
'        If Not Trim(txtfields(2).Text) = "" Then DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtfields(3).Text, 3, 8)) & " WHERE DOC_TYPE='E' AND DOC_REF='" & txtfields(2).Text & "' AND YEAR_NO='" & YearNo & "'"
        
        
        'Call AddUpdate
        If Not errflg Then
            db.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
        End If
        Opt = " "
    ElseIf Opt = "mod" Then
        adoPrimaryRS("User_id") = CStr(usrid)
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
'        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        adoPrimaryRS("bagidno") = (Txtfields(70).Text)
'        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")

        adoPrimaryRS.UpdateBatch adAffectAllChapters
        adoSecondaryRS.UpdateBatch adAffectAllChapters
        If Not errflg Then
            db.CommitTrans
            MsgBox "Record(s) Modified", vbInformation, head
        End If
            Opt = " "
    ElseIf Opt = "del" Then
        On Error GoTo DELERR6
        If MsgBox("Do you want to delete?", vbYesNo, head) = vbNo Then Exit Sub
        Call DelUpdate
        If Not errflg Then
            db.Execute "delete from RM_CINVDT where divcode='" & Divcode & "' and inv_type='" & Txtfields(0) & "' and inv_no='" & Txtfields(1) & "'"
            db.Execute "delete from RM_CINVHD where divcode='" & Divcode & "' and inv_type='" & Txtfields(0) & "' and inv_no='" & Txtfields(1) & "'"
            Set Rs = New Recordset
            Rs.Open "SELECT LAST_NO FROM IG_DOCCONTROL WHERE DOC_TYPE='I' AND DOC_REF='" & Txtfields(0).Text & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
            If val(Rs("LAST_NO")) = val(Right(Txtfields(1).Text, 6)) Then
                db.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='I' AND DOC_REF='" & Txtfields(0).Text & "'"
            End If
                'DB.Execute "update iG_bodt a,iG_bohd b set b.inv_type=null ,b.invno = null where b.divcode = '" & Divcode & "' and b.bo_type = '" & txtfields(5).Text & "' and b.bo_no = '" & txtfields(4) & "' and b.bo_type = a.bo_type and b.bo_no = a.bo_no and b.divcode = a.divcode"
            If Not Trim(Txtfields(2).Text) = "" Then db.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='E' AND DOC_REF='" & Txtfields(2).Text & "'"
            
            db.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
        End If
        Opt = " "
    End If
        Call QUERY_MODE
        Call cancl1(BUTTON, 24)
        SSTab1.Tab = 0
DELERR6:
    If err.Number = "-2147217900" And Opt = "del" Then
        MsgBox "This Invoice is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
Case 3  'Document Print
    If Not adoPrimaryRS.EOF Then
        If divabbr = "SS" Or divabbr = "SVTM" Or divabbr = "SVAN" Then
            Call Inv_Preprint_sona.WasteInv_PrePrintsona(CStr(Txtfields(0)), CStr(Txtfields(1).Text), CStr(Txtfields(1).Text))
            Exit Sub
        End If
         Set Rs = New Recordset
         Rs.Open " select Distinct Hd.Inv_No,Hd.date,Hd.Cust_Code,sl.SlName,Sl.Add1,Sl.Add2,Sl.city," & _
                 " Sl.PIN,Dt.product_code as LotNo ,Sl.TINNO,Vr.VarName,Dt.Packs,Dt.InvSNo," & _
                 " Dt.Nett_Kgs,Dt.RAte_nett,ISNULL(dt.inv_kgs,0) AS INV_KGS,ISNULL(Dt.inv_Kgs * Dt.RAte_ex,0) as Value,hd.cess_per,hd.Cess_Amt,Dt.Tax_Amt,ta.DESCRIPTION,hd.RND_OFF,l.plotno, " & _
                 " dt.AED_Amt ,Dt.RAte_ex, dt.BED_Amt, hd.Carrier_code, Car.CARNAME, PRE_TIME, REM_TIME, LR_NO, VEHICLE_NO,isnull(bagidno,'') as prno " & _
                 " FROM RM_CinvHd hd " & _
                 " INNER JOIN RM_Cinvdt dt ON Hd.Divcode=dt.Divcode and Hd.Inv_Type=Dt.Inv_Type and Hd.Inv_No=dt.Inv_No " & _
                 " LEFT OUTER JOIN RM_Lot L ON L.LotNo=Dt.Product_code and L.Divcode=Dt.Divcode " & _
                 " INNER JOIN Fa_SlMas Sl ON Sl.SlCode=Hd.Cust_Code " & _
                 " LEFT OUTER JOIN RM_Var Vr ON Vr.VarCode=L.VarCode " & _
                 " LEFT OUTER JOIN po_car Car ON Car.CARCODE=Hd.Carrier_Code " & _
                 " LEFT OUTER JOIN ig_tax ta ON ta.TAX_CODE=dt.TAX_CODE " & _
                 " WHERE Hd.Inv_No='" & Txtfields(1).Text & "' and Hd.Date='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'  and Hd.Divcode='" & Divcode & "'", db
                 
            If Rs.EOF = False Then
                Rs.MoveFirst
                Set rs1 = New Recordset
                rs1.Open "SELECT IB.BALENO FROM RM_ISSH IH,RM_ISSB IB,RM_CINVHD A WHERE IB.DOCNO=IH.DOCNO AND IH.DOCNO=A.BO_NO AND IH.DOCDT=IB.DOCDT AND IB.DIVCODE=IH.DIVCODE AND A.INV_NO='" & Me.Txtfields(1) & "' AND A.DATE='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "' AND IH.DIVCODE='" & Divcode & "' AND IH.ISSTYPE='SA' ", db, adOpenStatic
                Dim bale As String
                Dim CA As Integer
                If Not rs1.EOF Then
                   bale = CStr(rs1("BALENO")) + "-"
                   BA = rs1("BALENO")
                   rs1.MoveNext
                End If
                Do While Not rs1.EOF
                   CA = rs1("BALENO") - BA
                   If CA <> 1 Then
                       bale = bale + CStr(Rs("packs")) + ","
                       Rs.MoveNext
                       bale = bale + CStr(Rs("packs")) + "-"
                       BA = rs1("baleno")
                   End If
                   BA = rs1("BALENO")
                   rs1.MoveNext
                Loop
                If rs1.EOF = False Then
                    rs1.MoveLast
                    bale = bale + CStr(rs1("BALENO"))
                End If
                Set RPTV = New Report.ReportView
                Close
                Close #a
                a = FreeFile
                'Open "C:\PPINV.TXT" For Output As #a
                 Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
                SR = CStr(pdate) + Space(2)
                pg1 = 1
                va = 1
                k = 1
                cnt = 0
                Ct = 0
                
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a, Space(10) & Padr(val(Right(Rs.Fields("INV_NO"), 6)), 10, "") & Space(48) & Padr(Rs.Fields("DATE"), 10, "")
                Print #a,
                Print #a, Space(5) & Padr(Rs.Fields("slname"), 50, "")
                Print #a, Space(5) & Padr(Rs.Fields("add1"), 30, "")
                Print #a, Space(5) & Padr(Rs.Fields("add2"), 30, "")
                Print #a, Space(5) & Padr(Rs.Fields("city") & " " & Rs.Fields("pin"), 30, "") & Space(10) & "TIN NO :" & Padr(Rs.Fields("Tinno"), 15, "")
                Print #a,
                Print #a,
                Print #a, Space(63) & Padr("1.00", 4, " ")
                Print #a,
                Print #a, Space(5) & " COTTON BALES "
                'Print #a, Space(5) & " Party Lot No:" & Padr(Rs.Fields("PLotNo"), 10, "")
                Print #a, Space(5) & " VARIETY     :" & Padr(Rs.Fields("Varname"), 10, "") & Space(10) & CENTRE(Rs.Fields("packs"), 10, "") & CENTRE(Format(Rs.Fields("INV_kgs"), "#0.000"), 10, "") & CENTRE(Format(Rs.Fields("Rate_Ex"), "#0.0000"), 10, "") & Padl(Format(Round(Rs.Fields("Value"), 0), "#0.00"), 12, "")
                Print #a, Space(5) & " Mill Lot No :" & Padr(Rs.Fields("Lotno"), 10, "")
                Print #a,
                Print #a,
                Print #a,
                Print #a, Space(67) & Padl(Format(Round(Rs.Fields("Value"), 0), "#0.00"), 14, "")
                Print #a,
                If Rs("prno") = "" Then
                    Print #a, Space(5) & Padr(bale, 30, "") & Space(15) & Padr(Rs("description"), 17, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
                Else
                    Print #a, Space(5) & Padr(Rs("prno"), 30, "") & Space(15) & Padr(Rs("description"), 17, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
                End If
                Print #a,
                'Print #a, Space(65) & Padr(Rs("description"), 15, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
                Print #a,
                Print #a, Space(67) & Padl(Format(Rs("bed_amt"), "#0.00"), 14, "")
                Print #a, Space(55) & " M.CESS " & Padr(Rs("Cess_per"), 4, "") & "%" & Padl(Format(Rs("cess_amt"), "#0.00"), 13, "")
                Print #a,
                Print #a,
                Print #a, Space(67); Padl(Format(Rs("rnd_off"), "#0.00"), 14, "")
                tot = Round(Rs("Value"), 0) + Rs("Tax_Amt") + Rs("Cess_Amt") + Rs("BED_Amt") + Rs("rnd_off")
                Print #a,
                Print #a, Space(67); Padl(Format(Round(tot, 0), "#0.00"), 14, "")
                X = Num_To_Word(Round(tot, 0))
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a,
                Print #a, Space(20) & X
                Print #a,
                Print #a, Space(15) & Padr(Rs("carname"), 10, "") & Space(35) & Rs("rem_time")
                Print #a, Space(15) & Rs("Vehicle_No")
                Print #a, Space(60) & Rs("pre_time")
                Print #a, Space(10) & Padr(Format(pdate, "dd-mm-yyyy"), 10, "")
                Print #a, Space(10) & Padr("", 10, "") & Space(30) & Padr(Rs("Lr_no"), 10, "") & Space(14) & Padr(Format(pdate, "dd-mm-yyyy"), 10, "")
                Print #a, Chr(12)
                   
                Close #a
                a = FreeFile
                Call KALBATPROCESS("PPINV")
            End If
        End If
''''
''''    CrystalReport1.ReportFileName = ""
''''    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\CottonSales_Print.rpt"
''''    CrystalReport1.StoredProcParam(0) = Divcode
''''    CrystalReport1.StoredProcParam(1) = txtfields(1).Text
''''    CrystalReport1.StoredProcParam(2) = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
''''    CrystalReport1.ParameterFields(0) = "@bale;" & bale
''''    CrystalReport1.WindowState = crptMaximized
''''    SendKeys "{ENTER}"
''''    CrystalReport1.Action = 2
''''    CrystalReport1.PrinterCopies = 1


Case 10
    'CANCEL
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    Screen.MousePointer = 11
    Frame6.Visible = False
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call cancl1(BUTTON, 24)
    Buttonframe.Enabled = True
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Call NEWFORM1(BUTTON, GSNO)
Case 13

    'AmtWords = Num_To_Word(val(txtFields(47).Text))
    'CrystalReport1.Reset
    'CrystalReport1.Connect = connectstring
    'CrystalReport1.ReportFileName = ""
    'CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\CottonSales_Print.rpt"
    'CrystalReport1.StoredProcParam(0) = Divcode
    'CrystalReport1.StoredProcParam(1) = txtFields(1).Text
    'CrystalReport1.StoredProcParam(2) = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
    'CrystalReport1.StoredProcParam(3) = Year(yfdate)
    'CrystalReport1.Formulas(0) = "Value_Text='" & AmtWords & "'"
    'CrystalReport1.WindowState = crptMaximized
    'SendKeys "{ENTER}"
    'CrystalReport1.Action = True
    'CrystalReport1.PrinterCopies = 1
    If Trim(Txtfields(1).Text) <> "" Then
        Dim clsCryRpt As New clsCrystal
        Set clsCryRpt.cryRept = CottonSales_Print
        clsCryRpt.CrystalPrint
                    
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
         
        CrystalReport1.ParameterFields(0) = "@bale;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@Divcode;" & Divcode & ""
        CrystalReport1.ParameterFields(2) = "@InvNo;" & Txtfields(1).Text & ""
        CrystalReport1.ParameterFields(3) = "@InvDt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & ""
        CrystalReport1.ParameterFields(4) = "@Lotyear;" & Format(yfdate, "yyyy") & ""
    
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
    End If
Case 11
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
'EXIT
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub



'---------------------------------------------------------------------------------------
' Procedure : Combo1_Click
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Combo1_Click(Index As Integer)
On Error GoTo Combo1_Click_Error

Call Combo1_Validate(Index, False)

Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Combo1_Click of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Validate(Index As Integer, Cancel As Boolean)
On Error Resume Next
Select Case Index
Case 1
    If Combo1(1).Text = "Y-YES" Then
        CESSFLG = 1
        'cess = 0
        'grdDataGrid.Columns(22) = 0
    Else
        CESSFLG = False
        cess = 0
'        grddatagrid.Columns(23) = 0
    End If
Case 2
    If Combo1(2).Text = "Y-YES" Then
        CHFLG = 1
        Charity = 0
        grddatagrid.Columns(13) = 0
    Else
        CHFLG = False
        Charity = 0
        grddatagrid.Columns(13) = 0
    End If
Case 3
    If Combo1(3).Text = "Y-YES" Then
        DUTYFLG = 1
        Bed = 0
        Aed = 0
        grddatagrid.Columns(20) = 0
        grddatagrid.Columns(21) = 0
    Else
        DUTYFLG = False
        Bed = 0
        Aed = 0
        For i = 51 To 60
            Txtfields(i).Text = ""
        Next
        Txtfields(66).Text = ""
        Txtfields(67).Text = ""
        Txtfields(68).Text = ""
        Txtfields(32).Text = ""
        Txtfields(33).Text = ""
        grddatagrid.Columns(20) = 0
        grddatagrid.Columns(21) = 0

    End If
Case 4
    If Combo1(4).Text = "Y-YES" Then
        TAXFLG = 1
        tax = 0
        grddatagrid.Columns(19) = 0
        grddatagrid.Columns(22) = 0
    Else
        TAXFLG = False
        tax = 0
        grddatagrid.Columns(19) = 0
        grddatagrid.Columns(22) = 0
    End If

End Select
Call INVCALC
End Sub
'---------------------------------------------------------------------------------------
' Procedure : DTPicker1_CloseUp
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub DTPicker1_CloseUp(Index As Integer)
On Error GoTo DTPicker1_CloseUp_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3
    MaskEdBox1(Index).Text = DTPicker1(Index).value
End Select
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_CloseUp of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub



'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
'ElseIf KeyCode = vbKeyM And Shift = 2 Then
'   If BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)    ''Modify
'   End If
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
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0

End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Load()
On Error GoTo Form_Load_Error

   Opt = "qry"
   b = 0
   Set db = New Connection
   db.CursorLocation = adUseClient
   db.Open "PROVIDER=MSDataShape;" & connectstring
   desc.Caption = "Query"
   DATLAB.Caption = Date
   stbar.Panels(1).Text = head
   Txtfields(47).FontBold = True
   DTPicker1(0).value = pdate
   DTPicker1(1).value = pdate
   DTPicker1(2).value = pdate
   Call QUERY_MODE
   SSTab1.Tab = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub QUERY_MODE(Optional INVTYPE As String, Optional INVNO As String)
On Error GoTo ER1
If Opt = " " Or Opt = "qry" Then
    If INVNO = "" Then
        Set QryRS = New Recordset
        '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
        ''QryRS.Open "select inv_type from RM_CINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE='WS' ORDER BY INV_TYPE", DB
        QryRS.Open "select inv_type from RM_CINVHD WHERE DIVCODE='" & Divcode & "'ORDER BY INV_TYPE", db
        Set adoPrimaryRS = New Recordset
        '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
        ''adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from RM_CINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE='WS' } AS ParentCMD APPEND " & _
        ''"({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM RM_CINVDT where divcode = '" & Divcode & "' AND INV_TYPE='WS' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
        
        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT,bagidno from RM_CINVHD WHERE DIVCODE='" & Divcode & "' } AS ParentCMD APPEND " & _
        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""Tax Code"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,lotdt FROM RM_CINVDT where divcode = '" & Divcode & "' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", db, adOpenStatic, adLockBatchOptimistic
    Else
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,ARE_NO,lr_date,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from RM_CINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE='" & InvType & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' } AS ParentCMD APPEND " & _
'        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM RM_CINVDT where divcode = '" & Divcode & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' AND INV_TYPE='WS' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic

    adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT,bagidno from RM_CINVHD WHERE DIVCODE='" & Divcode & "' } AS ParentCMD APPEND " & _
        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs As Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,lotdt FROM RM_CINVDT where divcode = '" & Divcode & "' AND INV_TYPE  like 'W%' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", db, adOpenStatic, adLockBatchOptimistic
        
    End If
    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        adoPrimaryRS.MoveLast
    End If
    Call disablcontls
    Call bindcontls
    If Not adoPrimaryRS.RecordCount > 0 Then
            MsgBox "No Records Found", vbInformation, head
             Call NEWFORM1(BUTTON, GSNO)
            Set grddatagrid.DataSource = Nothing
            Screen.MousePointer = 0
            Exit Sub
    End If
    Set grddatagrid.DataSource = adoPrimaryRS("childCMD").UnderlyingValue
    desc.Caption = "Query"
    stbar.Panels(2).Text = "Query"
    BUTTON(9).Enabled = False
    GRIDALIGN
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(9).Enabled = False
    End If
    SSTab1.Enabled = True
    SSTab1.Tab = 0
    BUTTON(0).SetFocus
    Call NEWFORM1(BUTTON, GSNO)
End If
Exit Sub
ER1:
If err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If
End Sub

Public Sub bindcontls()
On Error Resume Next
If adoPrimaryRS.RecordCount > 0 Then
Dim C As Control
For Each C In Me.Controls
 If TypeOf C Is TextBox Then
    Set C.DataSource = adoPrimaryRS
 End If
Next
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : disablcontls
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub disablcontls()
Dim C As Control
On Error GoTo disablcontls_Error

For Each C In Me.Controls
 If TypeOf C Is TextBox Or TypeOf C Is ComboBox Then C.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure disablcontls of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : ENABLCONTLS
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub ENABLCONTLS()
Dim C As Control
On Error GoTo ENABLCONTLS_Error

For Each C In Me.Controls
 If TypeOf C Is TextBox Or TypeOf C Is ComboBox Then C.Locked = False
Next
For i = 6 To 28
Txtfields(i).Locked = True
Next
Txtfields(15).Locked = False
Txtfields(12).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLCONTLS of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : GRIDALIGN
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub GRIDALIGN()
On Error GoTo GRIDALIGN_Error

    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Visible = False
'    grddatagrid.Columns(5).Visible = False
    grddatagrid.EditActive = False
    For i = 0 To 22
        grddatagrid.Columns(i).Locked = True
   Next
   
   grddatagrid.Columns(7).NumberFormat = "#######.000"
   grddatagrid.Columns(8).NumberFormat = "#######.000"
   grddatagrid.Columns(9).NumberFormat = "#######.000"
   grddatagrid.Columns(10).NumberFormat = "#######.0000"
   grddatagrid.Columns(11).NumberFormat = "#######.0000"
   grddatagrid.Columns(12).NumberFormat = "#######.00"
   grddatagrid.Columns(13).NumberFormat = "#######.00"
   grddatagrid.Columns(14).NumberFormat = "#######.00"
   grddatagrid.Columns(15).NumberFormat = "#######.00"
   grddatagrid.Columns(16).NumberFormat = "#######.00"
   grddatagrid.Columns(17).NumberFormat = "#######.00"
   grddatagrid.Columns(18).NumberFormat = "#######.00"
   grddatagrid.Columns(19).NumberFormat = "#######.00"
   grddatagrid.Columns(20).NumberFormat = "#######.00"
   grddatagrid.Columns(21).NumberFormat = "#######.00"
   grddatagrid.Columns(22).NumberFormat = "#######.00"
   grddatagrid.Columns(23).NumberFormat = "#######.00"
   
'   Dim J As Integer
   For i = 7 To 23
        grddatagrid.Columns(i).Alignment = dbgRight
   Next
   grddatagrid.Columns(7).Width = 1200
   grddatagrid.Columns(8).Width = 1200
   grddatagrid.Columns(9).Width = 1200
   For i = 10 To 23
        grddatagrid.Columns(i).Width = 1000
   Next

   grddatagrid.Columns(7).Locked = True
   grddatagrid.Columns(8).Locked = True
   grddatagrid.Columns(9).Locked = False
   grddatagrid.Columns("lotdt").Visible = False
Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRIDALIGN of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0

End Sub



Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub


'---------------------------------------------------------------------------------------
' Procedure : grddatagrid_AfterColUpdate
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColUpdate_Error

If ColIndex = 8 Or ColIndex = 15 Or ColIndex = 10 Then
    Call INVCALC
End If

Buttonframe.Enabled = True

Exit Sub
grddatagrid_AfterColUpdate_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_AfterColUpdate of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : GRDDATAGRID_RowColChange
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
'Call InvCalc
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
If LastCol = 14 Then
    LookUp.clear = True
    LookUp.query = "select TAX_CODE""Tax Code"",DESCRIPTION,ABBR""Tax Abbreviation"",ST_PER""Tax Percentage""  from ig_tax where  taxstatus='Y'"
    LookUp.Caption = "Tax Type Listing"
    LookUp.DefCol = "Tax Code"
    LookUp.ALIGN = "1500,2500,1500,1500"
    LookUp.Show vbModal
    
    If LookUp.Cancel = False Then
            grddatagrid.Columns(14).Text = LookUp.Fields(0)
            grddatagrid.Columns(15).Text = LookUp.Fields(3)
            LookUp.clear = True
            Call INVCALC
            grddatagrid.Col = 16
            grddatagrid.SetFocus
    End If
End If
'If LastCol = 9 Then
'    If val(grddatagrid.Columns(9).Text) = 0 Then
'        MsgBox "Invoice weight should not be empty", vbInformation, head
'        grddatagrid.Col = 9
'        grddatagrid.SetFocus
'        Exit Sub
'    End If
'End If
'If LastCol = 0 Then
'    GrdDataGrid.Col = 9
'    GrdDataGrid.SetFocus
'End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRDDATAGRID_RowColChange of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovcancel_Click()
    Buttonframe.Enabled = True
    Frame6.Visible = False
    If Not ksldesc1.listfield1 = "P.DUTY_CODE" Then BUTTON_Click (10)
End Sub

'---------------------------------------------------------------------------------------
' Procedure : lovok_Click
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

Select Case ksldesc1.listfield1

Case "Inv_type"
    Txtfields(0).Text = ksldesc1.Code
    Set Rs = New Recordset
    'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'and doc_ref = '" & ksldesc1.Code & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", db
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    Txtfields(1).Text = docNo
    Txtfields(1).SetFocus
'    txtfields(1).Locked = True
    Set Rs = New Recordset
    Rs.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & Txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
    If Rs(0) = "Y" Then
        Combo1(1).ListIndex = 0
        CESSFLG = True
    Else
        Combo1(1).ListIndex = 1
    End If
    If Rs(1) = "Y" Then
        Combo1(2).ListIndex = 0
        CHFLG = True
    Else
        Combo1(2).ListIndex = 1
    End If
    If Rs(2) = "Y" Then
        Combo1(3).ListIndex = 0
        DUTYFLG = True
    Else
        Combo1(3).ListIndex = 1
    End If
    If Rs(3) = "Y" Then
        Combo1(4).ListIndex = 0
        TAXFLG = True
    Else
        Combo1(4).ListIndex = 1
    End If
Case "slcode"
     Txtfields(6).Text = ksldesc1.Code
      Txtfields(7).Text = ksldesc1.Description
      Txtfields(50).SetFocus
Case "CEX_INVTYPE"
    Txtfields(2).Text = ksldesc1.Code
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & ksldesc1.Code & "' AND YEAR_NO='" & YearNo & "'", db
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    Txtfields(3).Text = docNo
    MaskEdBox1(0).SetFocus
Case "DATE", "convert(varchar,DATE,103)"
    adoSecondaryRS.Requery
    Call GRIDALIGN
    Txtfields(5).Text = Mid$(ksldesc1.Description, 1, 8)
    Txtfields(4).Text = Right(ksldesc1.Description, 4)
    
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0),isnull(b.cont_no,0), b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),0,isnull(a.rateflg,'X') from IG_RBOHD a, IG_RBODT b where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and  a.divcode='" & Divcode & "' and a.bo_no='" & Mid$(ksldesc1.Description, 1, 8) & "' and a.bo_type='" & Right(ksldesc1.Description, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rateflg", db
    Txtfields(6).Text = Rs(0)
    Txtfields(34).Text = Rs(1)
    While Not Rs.EOF
        adoSecondaryRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        Set rs1 = New Recordset
        
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", db
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", db
        End If
        Set RS2 = New Recordset
        RS2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", db
        If Not RS2.EOF Then
        Txtfields(15).Text = RS2(3)
        grddatagrid.Columns(6).Text = Rs(5)
        grddatagrid.Columns(7).Text = Rs(6)
        grddatagrid.Columns(8).Text = Rs(7)
        If Rs(9) = "X" Then
            grddatagrid.Columns(10).Text = Rs(8)
            rf = Rs(9)
        Else
            'prakash on 21/6/02
            Rate = IIf(IsNull(Rs(8)), 0, Rs(8))
            grddatagrid.Columns(11).Text = IIf(IsNull(Rs(8)), 0, Rs(8))
            rf = Rs(9)
        End If
        'grddatagrid.Columns(10
        If Not rs1.EOF Then
            grddatagrid.Columns(14).Text = rs1(0)
            grddatagrid.Columns(15).Text = rs1(1)
            grddatagrid.Columns(18).Text = rs1(2)
        End If
        grddatagrid.Columns(16).Text = RS2(2)
        grddatagrid.Columns(17).Text = RS2(1)

        End If
        Rs.MoveNext
    Wend
    Call NETTOEX
    Call INVCALC
    Dim ia As Integer
    For ia = 0 To 22
        grddatagrid.Columns(ia).Locked = False
        'ia = ia + 1
    Next
    grddatagrid.AllowUpdate = True
    SSTab1.Tab = 0

    Frame8.Visible = True
    'txtFields(6).SetFocus
    'grdDataGrid.AllowAddNew = False
    'SSTab1.Tab = 0
Case "P.DUTY_CODE"
    Set Rs = New Recordset
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where DOC_TYPE='D' and doc_ref='" & ksldesc1.Code & "' and divcode = '" & Divcode & "'", db
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    If xx = 66 Then
        Txtfields(32).Text = ksldesc1.Code
        Txtfields(33).Text = docNo
        Txtfields(51).SetFocus
    ElseIf xx = 67 Then
        Txtfields(53).Text = ksldesc1.Code
        Txtfields(54).Text = docNo
        Txtfields(56).SetFocus
    Else
        Txtfields(57).Text = ksldesc1.Code
        Txtfields(58).Text = docNo
        Txtfields(59).SetFocus
    End If
Case "CarCODE"
    Txtfields(29).Text = ksldesc1.Code
    Txtfields(30).Text = ksldesc1.Description
Case "BANK_CODE"
    Txtfields(48).Text = ksldesc1.Code
Case "a.inv_type AS Invoice_type"
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 from RM_CINVHD where inv_type='" & ksldesc1.Code & "' and inv_no='" & ksldesc1.Description & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",INV_KGS""Invoice Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %,Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,lotdt FROM RM_CINVDT where inv_type='" & ksldesc1.Code & "' and inv_no='" & ksldesc1.Description & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & Txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
    If TERS(0) = "Y" Then
        Combo1(1).ListIndex = 0
        Call Combo1_Click(1)
        CESSFLG = True
    Else
        Combo1(1).ListIndex = 1
    End If
    If TERS(1) = "Y" Then
        Combo1(2).ListIndex = 0
        Call Combo1_Click(2)
        CHFLG = True
    Else
        Combo1(2).ListIndex = 1
    End If
    If TERS(2) = "Y" Then
        Combo1(3).ListIndex = 0
        Call Combo1_Click(3)
        DUTYFLG = True
    Else
        Combo1(3).ListIndex = 1
    End If
    If TERS(3) = "Y" Then
        Combo1(4).ListIndex = 0
        Call Combo1_Click(4)
        TAXFLG = True
    Else
        Combo1(4).ListIndex = 1
    End If
       
       Call GRIDALIGN
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For i = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(i).Locked = False
            Next
       End If
        Call ModLock
       
       On Error Resume Next
       If Opt = "del" Then BUTTON(9).SetFocus
Case "AREA_CODE"
    Txtfields(13).Text = ksldesc1.Code
    Txtfields(14).Text = ksldesc1.Description
    
End Select
    Buttonframe.Enabled = True
    Frame6.Visible = False

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure lovok_Click of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : MaskEdBox1_Change
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub MaskEdBox1_Change(Index As Integer)
On Error GoTo MaskEdBox1_Change_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3
        If IsDate(MaskEdBox1(Index).Text) Then DTPicker1(Index).value = MaskEdBox1(Index).Text
End Select
End If

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_Change of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub



'---------------------------------------------------------------------------------------
' Procedure : MaskEdBox1_KeyDown
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_KeyDown of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub



'Private Sub Timer1_Timer()
'If COL = 1 Then
''16000256
'    txtfields(47).ForeColor = 255
'    COL = 0
'Else
'    txtfields(47).ForeColor = 643110
'    COL = 1
'End If
'End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error Resume Next
Select Case Index
Case 6, 8, 10
        Set rs1 = New Recordset
        rs1.Open "select isnull(slname,' ') from fa_slmas where slcode='" & Txtfields(Index).Text & "'", db
        If Not rs1.EOF Then Txtfields(Index + 1).Text = rs1(0)
        
Case 7
        On Error Resume Next
            Set rs1 = New Recordset
            rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from fa_slmas where slcode='" & Txtfields(6).Text & "'", db
            If Opt = "add" Then
                'If Ksldesc1.description <> "" Then
                    Set rss = New Recordset
                    rss.Open "select deliveyat from IG_RBOHD where bo_no='" & Mid$(Trim(ksldesc1.Description), 4, Len(ksldesc1.Description)) & "' and DivCode ='" & Divcode & "'", db, adOpenStatic
                'End If
            End If
    If rss.EOF Then Exit Sub
    If rss(0) <> "" Then
            Set rs1 = New Recordset
           rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from ig_rdeladd where slcode='" & Txtfields(6).Text & "' and cname='" & rss(0) & "'", db
            If Opt = "add" And ksldesc1.Description <> "" And rss.RecordCount > 0 Then
                Txtfields(61).Text = rss(0)
            End If
                Txtfields(62).Text = rs1(0)
                Txtfields(63).Text = rs1(1)
                Txtfields(64).Text = rs1(2)
                Set dt = New Recordset
                dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & Txtfields(64).Text & "'", db, adOpenStatic
                Txtfields(13).Text = dt(0)
                Txtfields(14).Text = dt(1)
    Else
            Txtfields(61).Text = Txtfields(7).Text
            Txtfields(62).Text = rs1(0)
            Txtfields(63).Text = rs1(1)
            Txtfields(64).Text = rs1(2)
            Set dt = New Recordset
            dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & Txtfields(64).Text & "'", db, adOpenStatic
            If dt.RecordCount > 0 Then
                Txtfields(13).Text = dt(0)
                Txtfields(14).Text = dt(1)
            Else
                Txtfields(13).Locked = False
                Txtfields(14).Locked = False
            End If
    End If
    
Case 13
        Set rs1 = New Recordset
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & Txtfields(Index).Text & "'", db
        If Not rs1.EOF Then Txtfields(14).Text = rs1(0)
    
Case 32
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & Txtfields(Index).Text & "' and divcode = '" & Divcode & "'", db
        If Not rs1.EOF Then Txtfields(66).Text = rs1(0)
        
Case 53
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & Txtfields(Index).Text & "' and divcode = '" & Divcode & "'", db
        If Not rs1.EOF Then Txtfields(67).Text = rs1(0)
Case 57

        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & Txtfields(Index).Text & "' and divcode = '" & Divcode & "'", db
            If Not rs1.EOF Then Txtfields(68).Text = rs1(0)
        
Case 48
        Set rs1 = New Recordset
        rs1.Open "select name from ig_bank where bank_code='" & Txtfields(Index).Text & "'", db
        If Not rs1.EOF Then Txtfields(12).Text = rs1(0)
Case 29
        Set rs1 = New Recordset
        rs1.Open "select Carname from PO_Car where CarCODE='" & Txtfields(Index).Text & "'", db
        If Not rs1.EOF Then Txtfields(30).Text = rs1(0)
End Select
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_GotFocus
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
Select Case Index

    
'''    listlb.Caption = "Invoice Type Listing"
'''    ksldesc1.conn = connectstring
'''    ksldesc1.table = "ig_invtype where divcode='" & Divcode & "' AND INV_TYPE='WS'"
'''    ksldesc1.listfield1 = "Inv_type"
'''    ksldesc1.listfield2 = "DESCRIPTION"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    ksldesc1.SetFocus
    

    

    
Case 32
If Record_Exists("ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'", "Duty Type Not Found") = False Then Exit Sub
    xx = 66
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    listlb.Caption = "PLA-Duty Type Listing"
    ksldesc1.Table = "ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 53
    If Record_Exists("ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 67
    ksldesc1.conn = connectstring
    listlb.Caption = "RG23A-Duty Type Listing"
    ksldesc1.Table = "ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 57
    If Record_Exists("ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 68
    ksldesc1.conn = connectstring
    listlb.Caption = "RG23C-Duty Type Listing"
    ksldesc1.Table = "ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 29
End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_GotFocus of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_KeyPress
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

Call ToUpCase(Txtfields, KeyAscii)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 50
    Call ToNumberAssign(Txtfields(Index), 3, KeyAscii, 3, 2)
Case 65, 69
    Call ToNumberAssign(Txtfields(Index), 3, KeyAscii, 3, 0)
Case 51, 52, 55, 56, 59, 60, 31, 39, 49, 16, 18, 20, 22, 26
    Call ToNumberAssign(Txtfields(Index), 8, KeyAscii, 8, 2)
Case 29
    Call ToUpCase(Txtfields(Index), KeyAscii)
Case 70
    'Call ToAlphaNumber(txtFields(Index), 20, KeyAscii)
End Select
End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_KeyPress of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_LostFocus
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtFields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error

Select Case Index
Case 50
    SSTab1.Tab = 2
    Txtfields(29).SetFocus
Case 69
    On Error Resume Next
    adoSecondaryRS.MoveFirst
    If Txtfields(69).Text <> "" And grddatagrid.Columns(6).value <> "" Then
        txt = Txtfields(69).Text * grddatagrid.Columns(6).value
        Txtfields(31).Text = val(txt)
        Txtfields(31).SetFocus
    End If
Case 70
    grddatagrid.SetFocus
    grddatagrid.Col = 7

End Select

Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_LostFocus of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 0
    If Opt = "add" Then
        If Record_Exists("ig_invtype where divcode='" & Divcode & "'", "Please Define Invoice Type") = False Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
    '    If txtfields(0).Text <> "" Then
    '        Exit Sub
    '    End If
        Set rs1 = New Recordset
        rs1.Open "select * from rm_param", db, adOpenStatic
        
        '' Kuppuram - 27-Apr-2007 - Check for Waste Sales Invoice Type is defined
        Set rs_invtype = New Recordset
        rs_invtype.Open "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like '" & rs1("cottoninv_type") & "'", db
            
        If rs_invtype.RecordCount < 1 Then
            'MsgBox "Pls. define Invoice Type as starting with 'C' for Waste Sales", vbInformation, head
            MsgBox "Please define Invoice Type in Parameter for Raw Material Sales", vbInformation, head
            Txtfields(0).Text = ""
            Txtfields(0).SetFocus
            rs_invtype.Close
            Exit Sub
        End If
        rs_invtype.Close
        
        Buttonframe.Enabled = False
        LookUp.clear = True
        '' Kuppuram - 27-Apr-2007
        '' INV_TYPE = 'WS' is changed to INV_TYPE like 'W%'
        ''LookUp.query = "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE='WS' "
        LookUp.query = "select inv_type""Invoice Type"",DESCRIPTION""Type Description"" from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like '" & rs1("cottoninv_type") & "' "
        LookUp.Caption = "Invoice Type Listing"
        LookUp.DefCol = "Type Description"
        LookUp.ALIGN = "2000,3400"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            SSTab1.Visible = True
            Txtfields(0).Text = LookUp.Fields(0)
            Set Rs = New Recordset
            'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
            YearNo = Right(Year(yfdate), 2)
            Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'and doc_ref = '" & LookUp.Fields(0) & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", db
            docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
            Txtfields(1).Text = docNo
            Txtfields(1).Locked = False

            
            ' Kuppuram - 27-Apr-2007 - CEX Invoice Type and Number assigned
            ' as Invoice Type and Invoice Number and Locked
'            TXTFIELDS(1).Text = ""
            Txtfields(2).Text = Txtfields(0).Text
            Txtfields(3).Text = docNo
'            TXTFIELDS(3).Text = ""
            Txtfields(2).Locked = True
            Txtfields(3).Locked = True
            Txtfields(4).SetFocus
            
        '    txtfields(1).Locked = True
            Set Rs = New Recordset
            Rs.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & Txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
            If Rs.RecordCount() > 0 Then
                If Rs(0) = "Y" Then
                    Combo1(1).ListIndex = 0
                    CESSFLG = True
                Else
                    Combo1(1).ListIndex = 1
                End If
                If Rs(1) = "Y" Then
                    Combo1(2).ListIndex = 0
                    CHFLG = True
                Else
                    Combo1(2).ListIndex = 1
                End If
                If Rs(2) = "Y" Then
                    Combo1(3).ListIndex = 0
                    DUTYFLG = True
                Else
                    Combo1(3).ListIndex = 1
                End If
                If Rs(3) = "Y" Then
                    Combo1(4).ListIndex = 0
                    TAXFLG = True
                Else
                    Combo1(4).ListIndex = 1
                End If
                LookUp.clear = True
            Else
                MsgBox "Pls. define Invoice Type as starting with 'W' for Waste Sales", vbInformation, head
                Txtfields(0).Text = ""
                Txtfields(0).SetFocus
                Exit Sub
            End If
        Else
            Buttonframe.Enabled = True
            SSTab1.Visible = True
            SSTab1.Tab = 0
            Txtfields(0).SetFocus
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
Case 2
    If Record_Exists("ig_INVTYPE A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & Txtfields(0).Text & "' AND A.divcode='" & Divcode & "'", "CEXInvoice Type not found") = False Then
'        Call BUTTON_Click(10)
        Exit Sub
    End If
    Set rs1 = New Recordset
    rs1.Open "select * from rm_param", db, adOpenStatic
    Buttonframe.Enabled = False
    LookUp.clear = True
    LookUp.query = "select CEX_INVTYPE,B.DESCRIPTION from ig_invtype A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & Txtfields(0).Text & "' AND A.divcode='" & Divcode & "'"
    LookUp.Caption = "Central Excise Invoice Type Listing"
    LookUp.DefCol = "CEX_INVTYPE"
    LookUp.ALIGN = "1500,1500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    Txtfields(2).Text = LookUp.Fields(0)
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & LookUp.Fields(0) & "' AND YEAR_NO='" & YearNo & "'", db
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    Txtfields(3).Text = docNo
    MaskEdBox1(0).SetFocus
    LookUp.clear = True
    Else
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    SSTab1.Tab = 0
    Txtfields(2).SetFocus
    End If
'''    Ksldesc1.conn = connectstring
'''    listlb.Caption = "Central Excise Invoice Type Listing"
'''    Ksldesc1.table = "ig_invtype A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtFields(0).Text & "' AND A.divcode='" & Divcode & "'"
'''    Ksldesc1.listfield1 = "CEX_INVTYPE"
'''    Ksldesc1.listfield2 = "B.DESCRIPTION"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    Ksldesc1.SetFocus
Case 4
    If Record_Exists("RM_IssH where divcode='" & Divcode & "' and issType in (select Issue_code From rm_issuetype where isstype in('R','S'))", "Issue Not Found") = False Then
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Set rs1 = New Recordset
    rs1.Open "select * from rm_param", db, adOpenStatic
    Buttonframe.Enabled = True
    LookUp.clear = True
    'LookUp.query = "select DATE,BO_NO,bo_type from IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL and ISSFLG='SA' "
    'LookUp.Query = "select Distinct Docno,Docdt,IssType from RM_Issb  where divcode='" & Divcode & "'  and ISSTYpe='SA'  group by DocDt,DocNo,IssType "
    LookUp.query = "select Distinct Docno""Doc. No."",Docdt""Doc. Date"",IssType""Issue Type"" from RM_Issb  where divcode='" & Divcode & "'  and ISSTYpe in (select Issue_code From rm_issuetype where isstype in('R','S')) and docno not in(select bo_no from rm_cinvhd where divcode='" & Divcode & "') group by DocDt,DocNo,IssType "
    LookUp.Caption = "Sales Issue Listing"
    LookUp.ALIGN = "1500,1500,1500"
    LookUp.DefCol = "Doc. Date"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    adoSecondaryRS.Requery
    Call GRIDALIGN
    Txtfields(4).Text = LookUp.Fields(0)
    Txtfields(5).Text = LookUp.Fields(2)
    
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.Slcode,'') as Slcode,ISNULL(a.vehicleno, '') as vehicleno,isnull(b.Isstype,'SA') as Isstype,isnull(b.Docno,0) as Docno, b.LOtNo,Count(b.BaleNo) as packs, SUM(b.Isskgs) as Isskgs ,SUM(b.ActIsskgs) as ActIsskgs,0,'X' as rateflg,b.LOtdt from RM_Issh a, RM_Issb b where a.divcode = b.divcode and a.Isstype = b.Isstype and a.Docno = b.Docno and  a.divcode='" & Divcode & "' and a.Docno='" & LookUp.Fields(0) & "' and a.docdt='" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' and a.Isstype in (select Issue_code From rm_issuetype where isstype in('R','S'))    GROUP BY  b.LotNo,b.LOtdt,a.Slcode,a.vehicleno, b.Isstype, b.Docno", db
    Txtfields(6).Text = Rs(0)
    Txtfields(34).Text = Rs(1)
    While Not Rs.EOF
        adoSecondaryRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        grddatagrid.Columns("lotdt").Text = Rs("lotdt")
        
        
        Set rs1 = New Recordset
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select Distinct isnull(tax_code,'') as tax_code from RM_lot where LotNo='" & grddatagrid.Columns(5) & "' and  Lotdt='" & Format(Rs!LOTDT, "yyyy-MM-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND isnull(tax_code,'')<>'')", db
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select Distinct isnull(tax_code,'') as tax_code from RM_Lot where LotNo='" & grddatagrid.Columns(5) & "' and  Lotdt='" & Format(Rs!LOTDT, "yyyy-MM-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND isnull(tax_code,'')<>'')", db
        End If
        Set RS2 = New Recordset
        'rs2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        RS2.Open "select Distinct  isnull(CharityAmt,0),isnull(aedper,0),isnull(bedper,0),isnull(cessper,0) from RM_Lot a LEFT JOIN  RM_Issb b " & _
                " on a.LotNo =b.LotNo where a.divcode='" & Divcode & "' and a.LotNo='" & grddatagrid.Columns(5).Text & "'", db
        If Not RS2.EOF Then
        Txtfields(15).Text = RS2(3)
        grddatagrid.Columns(6).Text = Rs(5)
        grddatagrid.Columns(7).Text = Rs(6)
        grddatagrid.Columns(8).Text = Rs(7)
        If Rs("RateFlg") = "X" Then
            grddatagrid.Columns(10).Text = Rs(8)
            rf = Rs("RateFlg")
        Else
            'prakash on 21/6/02
            Rate = IIf(IsNull(Rs(8)), 0, Rs(8))
            grddatagrid.Columns(11).Text = IIf(IsNull(Rs(8)), 0, Rs(8))
            rf = Rs("RateFlg")
        End If
        'grddatagrid.Columns(10
        If Not rs1.EOF Then
            grddatagrid.Columns(14).Text = rs1(0)
            grddatagrid.Columns(15).Text = rs1(1)
            grddatagrid.Columns(18).Text = rs1(2)
        Else
            grddatagrid.Columns(14).Text = " "
        End If
        grddatagrid.Columns(16).Text = RS2(2)
        grddatagrid.Columns(17).Text = RS2(1)

        End If
        Rs.MoveNext
    Wend
    Call NETTOEX
    Call INVCALC
    Dim ia As Integer
    For ia = 0 To 22
        grddatagrid.Columns(ia).Locked = False
        'ia = ia + 1
    Next
    grddatagrid.AllowUpdate = True
    SSTab1.Tab = 0
    LookUp.clear = True
    Frame8.Visible = True
    Txtfields(6).SetFocus
    'grdDataGrid.AllowAddNew = False
    'SSTab1.Tab = 0
    Else
    
    End If
    
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    Ksldesc1.conn = connectstring
'''    Ksldesc1.ZOrder
'''    listlb.Caption = "Bale Order Listing"
'''    Ksldesc1.table = "IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL and ISSFLG='SA'"
'''    Ksldesc1.listfield1 = "DATE"
'''    Ksldesc1.listfield2 = "BO_NO+':'+bo_type"
'''    Ksldesc1.SetFocus


    Case 1
        If Opt = "add" Then
            If Trim(Txtfields(0).Text) <> "" Then
                Set Rs = New Recordset
                Rs.Open "Select * from RM_CINVHD where inv_type='" & Trim(Txtfields(0).Text) & "' and inv_no='" & Txtfields(1).Text & "' and DivCode ='" & Divcode & "'", db, adOpenStatic
                If Not Rs.EOF Then
                    MsgBox "This Invoice Number Already Defined", vbInformation, head
                    Txtfields(1).SetFocus
                    Cancel = True
                    Exit Sub
                End If
                
            End If
        End If
    Case 50, 31
    On Error Resume Next
        If Index = 31 And rf <> "X" Then
            grddatagrid.Row = 0
            grddatagrid.Columns(10).Text = 0
             NETTOEX
        End If
        Call INVCALC
Case 29
    
    If Record_Exists("PO_Car", "Carrier Not Found") = False Then Exit Sub
    
    Set rs1 = New Recordset
    rs1.Open "select Carname from PO_Car where carcode='" & Txtfields(29) & "'", db
    If Not rs1.EOF Then
        Txtfields(30).Text = rs1(0)
    Else
        LookUp.clear = True
        LookUp.query = "select cARCODE""Carrier Code"",CarNAME""Carrier Name"" from PO_Car "
        LookUp.Caption = "Carrier Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.DefCol = "Carrier Name"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(29).Text = LookUp.Fields(0)
            Txtfields(30).Text = LookUp.Fields(1)
            LookUp.clear = True
            Txtfields(34).SetFocus
        Else
            LookUp.clear = True
            Txtfields(34).SetFocus
        End If
    End If

Case 6
    'If Record_Exists("fa_slmas", "Supplier Not Found") = False Or Trim(txtfields(6).Text) = "" Then Exit Sub
    
    Set Rs = New Recordset
    Rs.Open "select count(*) from fa_slmas where slcode ='" & Txtfields(6) & "'", db
    If Rs(0) > 0 Then
        Txtfields(6).Text = Txtfields(6).Text
    Else
        Set rs1 = New Recordset
        rs1.Open "Select * from masterlen", db, adOpenStatic
        If rs1.RecordCount > 0 Then
            sup = rs1("ptypecotton") & "%"
        Else
            sup = ""
        End If
        Buttonframe.Enabled = False
        LookUp.clear = True
        '' Kuppuram - 27-Apr-2007
        '' SLCODE LIKE 'C%' is changed to SLCODE LIKE 'D%', as it waste sales
        ''LookUp.query = "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE 'C%' "
        LookUp.query = "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE '" & sup & "' "
        LookUp.Caption = "Supplier Listing"
        LookUp.ALIGN = "1500,3000"
        LookUp.DefCol = "slname"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
        Buttonframe.Enabled = True
        SSTab1.Tab = 0
        Txtfields(6).Text = LookUp.Fields(0)
        Txtfields(7).Text = LookUp.Fields(1)
        LookUp.clear = True
        Txtfields(13).SetFocus
        
        Else
        Buttonframe.Enabled = True
        SSTab1.Tab = 0
        Txtfields(6).SetFocus
        End If
'''        listlb.Caption = "Supplier Listing"
'''        ksldesc1.conn = connectstring
'''        ksldesc1.table = "FA_SLMAS WHERE SLCODE LIKE 'C1%'"
'''        ksldesc1.listfield1 = "slcode"
'''        ksldesc1.listfield2 = "slname"
'''        Frame6.ZOrder
'''        Frame6.Visible = True
'''        ksldesc1.SetFocus
    End If
Case 12
        If Trim(Txtfields(12).Text) <> "" Then
            Set rs1 = New Recordset
            rs1.Open "select BANK_CODE,name from ig_BANK where NAME LIKE'" & Txtfields(12).Text & "%'", db
            If Not rs1.EOF Then
                Txtfields(48).Text = rs1(0)
                Txtfields(12).Text = rs1(1)
          
            Else
                Buttonframe.Enabled = False
                listlb.Caption = "Bank Listing"
                ksldesc1.conn = connectstring
                ksldesc1.Table = "ig_BANK"
                ksldesc1.listfield1 = "BANK_CODE"
                ksldesc1.listfield2 = "name"
                Frame6.ZOrder
                Frame6.Visible = True
                ksldesc1.SetFocus
        End If
        End If
Case 13
        Set rs1 = New Recordset
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & Txtfields(Index).Text & "'", db
        If Not rs1.EOF Then
            Txtfields(Index + 1).Text = rs1(0)
            STFLAG = rs1(1)
        End If
        
        If Opt = "add" Then
             Set rs1 = New Recordset
             rs1.Open "select count(*) from ig_AREA WHERE area_code='" & Txtfields(13).Text & "'", db, adOpenStatic
             If rs1(0) > 0 Then
                Set RS2 = New Recordset
                RS2.Open "select name from ig_area where area_code= '" & Txtfields(13).Text & "'", db, adOpenStatic
                Txtfields(14).Text = RS2("name")
            Else
                Buttonframe.Enabled = False
                LookUp.clear = True
                LookUp.query = "select AREA_CODE""Area Code"",NAME""Area Name"" from ig_AREA "
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "2000,3000"
                LookUp.DefCol = "Area Name"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Buttonframe.Enabled = True
                SSTab1.Tab = 0
                Txtfields(13).Text = LookUp.Fields(0)
                Txtfields(14).Text = LookUp.Fields(1)
                LookUp.clear = True
                'txtFields(50).SetFocus
                Else
                Buttonframe.Enabled = True
                LookUp.clear = True
                SSTab1.Tab = 0
                Txtfields(13).SetFocus
                End If
                
                
'''                ksldesc1.conn = connectstring
'''                listlb.Caption = "Area Listing"
'''                ksldesc1.table = "ig_AREA"
'''                ksldesc1.listfield1 = "AREA_CODE"
'''                ksldesc1.listfield2 = "NAME"
'''                Frame6.ZOrder
'''                Frame6.Visible = True
'''                ksldesc1.SetFocus
'''
             End If
             
             
        End If
        
        



Case 61
     SSTab2.Visible = True
     SSTab2.SetFocus
     grddatagrid.SetFocus
     grddatagrid.Enabled = True
     grddatagrid.Visible = True
     grddatagrid.Col = 8
End Select
End If
Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Validate of Form CottonInvoice", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : invamtcheck
' DateTime  : 13/06/2009 15:54
' Author    : Rejitha
' Purpose   : Invoice Amount checking
'---------------------------------------------------------------------------------------
'
Private Sub invamtcheck()
   On Error GoTo invamtcheck_Error
    totinvamt = 0
    totinvamt = val(Txtfields(40).Text)
    If CHFLG Then
        totinvamt = totinvamt + val(Txtfields(41).Text)
    End If
    If CESSFLG Then
        totinvamt = totinvamt + val(Txtfields(42).Text)
    End If
    If DUTYFLG Then       'BED                          AED
        totinvamt = totinvamt + val(Txtfields(43).Text) + val(Txtfields(44).Text)
    End If
    If TAXFLG Then
        totinvamt = totinvamt + val(Txtfields(45).Text)
    End If
    '                           Surcharge                Insurance Amount           Frieght                   Round Off
    totinvamt = totinvamt + val(Txtfields(28).Text) + val(Txtfields(49).Text) + val(Txtfields(31).Text) + val(Txtfields(39).Text)
   On Error GoTo 0
   Exit Sub

invamtcheck_Error:

    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure invamtcheck of Form CottonInvoice"

End Sub
'---------------------------------------------------------------------------------------
' Procedure : INVCALC
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub INVCALC()
'INVOICE CALCULATION
On Error GoTo INVCALC_Error

If Opt = "add" Or Opt = "mod" Then
    Assval = 0
    tax = 0
    SurCharge = 0
    Aed = 0
    Bed = 0
    Charity = 0
    cess = 0
    TotAmt = 0
    Insur = 0
    Assval2 = 0
    NettRExR = 0
''    ex = 0
    If Not adoSecondaryRS.BOF Then adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        Set Rs = New Recordset
        'rs.Open "select isnull(charity_rate,0) from ig_Rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        Rs.Open "select Distinct  isnull(CharityAmt,0),isnull(aedper,0),isnull(bedper,0),isnull(cessper,0) from RM_Lot a Left Join RM_Issb b on a.LotNo=b.LotNo where a.divcode='" & Divcode & "' and a.LotNo='" & grddatagrid.Columns(5).Text & "'", db
                'netr=exr+sc+st+aed+bed+cess+ch
'Ass value

        grddatagrid.Columns(12) = KSLRound((val(grddatagrid.Columns(9)) * val(grddatagrid.Columns(10))), 0)
        Assval = Assval + grddatagrid.Columns(12) + val(Txtfields(31).Text)
        Assval2 = Assval2 + grddatagrid.Columns(12)
        NettRExR = val(grddatagrid.Columns(10))
'Charity
        If CHFLG Then
            grddatagrid.Columns(13) = KSLRound(val(grddatagrid.Columns(6)) * (val(Rs(0))), 0)
            Charity = Charity + grddatagrid.Columns(13)
            NettRExR = NettRExR + val(Rs(0) / 100)
        Else
            grddatagrid.Columns(13) = 0
            Charity = Charity + grddatagrid.Columns(13)
            NettRExR = NettRExR + val(Rs(0) / 100)
        End If
'Cess
        If CESSFLG Then
            'grddatagrid.Columns(22) = KSLRound((Val(Assval) + Val(grddatagrid.Columns(12))) * (txtFields(15).Text / 100), 0)
' *** chinnapparaj 03/02/2005
            grddatagrid.Columns(23) = KSLRound(val(grddatagrid.Columns(12)) * (Txtfields(15).Text / 100), 0)
            cess = cess + val(grddatagrid.Columns(23))
            NettRExR = NettRExR + (NettRExR * ((Txtfields(15).Text / 100)))
        Else
            grddatagrid.Columns(23) = 0
            cess = cess + val(grddatagrid.Columns(23))
            NettRExR = NettRExR + (NettRExR * ((Txtfields(15).Text / 100)))
        End If
'Duty
        If DUTYFLG Then
            '*****************
            'PRAKASH.S
            grddatagrid.Columns(20) = KSLRound(((val(Assval) + val(grddatagrid.Columns(13))) * (val(grddatagrid.Columns(16)) / 100)), 0)
            '*****************
            Bed = Round(Bed + grddatagrid.Columns(20))
            bedR = NettRExR * val(grddatagrid.Columns(16)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(16)) / 100)
            
            '***************
            Txtfields(20).Text = Round(Bed, 0)
            Txtfields(43).Text = Round(Bed, 0)
            '***************

            grddatagrid.Columns(21) = KSLRound((grddatagrid.Columns(20)) * (val(grddatagrid.Columns(17)) / 100), 0)
            Aed = Aed + val(grddatagrid.Columns(21))
            NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(17)) / 100)
            
            '*****************
             Txtfields(22).Text = Round(Aed, 0)
             Txtfields(44).Text = Round(Aed, 0)
            '*****************
        Else
            grddatagrid.Columns(20) = 0
            grddatagrid.Columns(21) = 0
            Bed = Round(Bed + grddatagrid.Columns(20))
            bedR = NettRExR * val(grddatagrid.Columns(16)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(16)) / 100)
            Aed = Aed + val(grddatagrid.Columns(21))
            NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(17)) / 100)
        
                End If
'Tax
        If TAXFLG Then
'            grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + Val(grddatagrid.Columns(12)) + Val(grddatagrid.Columns(22)) + Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            'grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + (KSLRound(Val(Assval) * (txtfields(15).Text / 100), 0))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            Set rstParameter = New Recordset
            rstParameter.Open "Select CessCalCulateTax From Rm_param", db, adOpenStatic
            If rstParameter.EOF = False Then
                If rstParameter!CessCalCulateTax = "Y" Then
                     grddatagrid.Columns(19) = Round((val(grddatagrid.Columns(12)) + val(grddatagrid.Columns(23))) * (val(grddatagrid.Columns(15)) / 100), 0)
                     tax = tax + Round(grddatagrid.Columns(19), 0)
                    
                Else
                    grddatagrid.Columns(19) = Round((val(grddatagrid.Columns(12))) * (val(grddatagrid.Columns(15)) / 100), 0)
                    tax = tax + Round(grddatagrid.Columns(19), 0)

                End If

            End If
            TaxR = NettRExR * val(grddatagrid.Columns(15)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(15)) / 100)
            grddatagrid.Columns(22) = KSLRound(val(grddatagrid.Columns(19)) * val(grddatagrid.Columns(18)) / 100, 0)
            
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(22)), 0)
            NettRExR = NettRExR + val(TaxR * val(grddatagrid.Columns(18)) / 100)
        Else
            grddatagrid.Columns(19) = 0
            grddatagrid.Columns(22) = 0
            tax = tax + Round(grddatagrid.Columns(19), 0)
            TaxR = NettRExR * val(grddatagrid.Columns(15)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(15)) / 100)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(22)), 0)
            NettRExR = NettRExR + val(TaxR * val(grddatagrid.Columns(18)) / 100)
        End If
            SurCharge = KSLRound((tax * val(grddatagrid.Columns(18))) / 100, 2)
        On Error Resume Next
        grddatagrid.Columns(11).Text = Round(NettRExR + (val(Txtfields(31).Text) / val(grddatagrid.Columns(9).Text)), 4)
        adoSecondaryRS.MoveNext
    Loop
        Txtfields(40).Text = Format(Assval2, "#.00")
        Txtfields(41).Text = Format(Charity, "#0.00")
        Txtfields(18).Text = Format(Charity, "#0.00")
        If CESSFLG Then
            cess_amt = KSLRound(val(Assval2 + Charity) * (Txtfields(15).Text / 100), 0)
            cess = cess_amt
        Else
            cess = 0
        End If
        Txtfields(42).Text = Format(cess, "#0.00")
        Txtfields(16).Text = Format(cess, "#0.00")
        Txtfields(43).Text = Format(Round(Bed, 0), "#0.00")
        Txtfields(20).Text = Format(Round(Bed, 0), "#0.00")
        Txtfields(44).Text = Format(Round(Aed, 0), "#0.00")
        Txtfields(22).Text = Format(Round(Aed, 0), "#0.00")
        Txtfields(45).Text = Format(tax, "#0.00")
        Txtfields(26).Text = Format(tax, "#0.00")
        Txtfields(28).Text = Format(SurCharge, "#0.00")
        TotAmt = Assval2 + Charity + cess + Round(Bed, 0) + Round(Aed, 0) + tax + val(SurCharge)
        Insur = 0
        Insur = KSLRound(TotAmt * val(Txtfields(50)) / 100, 2)
        Txtfields(49).Text = Format(Insur, "#0.00")
        Txtfields(46) = Format(Insur + SurCharge + val(Txtfields(31).Text), "#0.00")

        invamt = Format(Insur + TotAmt + val(Txtfields(31).Text), "#0.00")

'-----------------------------------Round-----------------------------

            If InStr(CStr(invamt), ".") > 0 Then
            tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
            If Right(tmprnd, 1) >= 5 Then
            invamt = Format(invamt, "#########0.00")
            End If
            Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
            If Round1 <= 0.5 Then
                Txtfields(39).Text = Format("-" & Round1, "#0.00")
                Txtfields(47) = Format(invamt - Round1, "#0.00")
            Else
                Txtfields(39).Text = Format(1 - Round1, "#0.00")
                Txtfields(47).Text = Format(invamt + (1 - Round1), "#0.00")
            End If
            End If
End If

Exit Sub
INVCALC_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure INVCALC of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub InvCalc()
''INVOICE CALCULATION
'If Opt = "add" Or Opt = "mod" Then
'    Assval = 0
'    Tax = 0
'    SurCharge = 0
'    Aed = 0
'    Bed = 0
'    Charity = 0
'    cess = 0
'    TotAmt = 0
'    Insur = 0
'    NettRExR = 0
'
''    ex = 0
'    If Not adoSecondaryRS.BOF Then adoSecondaryRS.MoveFirst
'    Do While Not adoSecondaryRS.EOF
'        Set rs = New Recordset
'        rs.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & divcode & "' and a.product_code='" & grdDataGrid.Columns(5).Text & "'", db
'                'netr=exr+sc+st+aed+bed+cess+ch
''Ass value
'        'grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(7)) * Val(grdDataGrid.Columns(9))), 2)
'        'grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(6)) * Round(ex1, 4)), 3)
'        grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(7)) * Val(grdDataGrid.Columns(9))), 2)
'        Assval = Assval + Val(grdDataGrid.Columns(11)) + Val(txtfields(31))
'        NettRExR = Val(grdDataGrid.Columns(9))
'
'        '**************************
'        Round1 = Val(Mid(CStr(Assval), InStr(Format(CStr(Assval), "#.00"), "."), 3))
'        If Val(Round1) <= 0.5 Then
'            'txtFields(39).Text = Format("-" & Round1, "#0.00")
'            txtfields(40) = Format(Assval - Val(Round1), "#0.00")
'        Else
'            'txtFields(39).Text = Format(1 - Round1, "#0.00")
'            txtfields(40).Text = Format(Assval + (1 - Val(Round1)), "#0.00")
'        End If
'        '**************************
'
'
''Charity
'        If CHFLG Then
'            grdDataGrid.Columns(12) = KSLRound(Val(grdDataGrid.Columns(6)) * (Val(rs(0))), 2)
'            Charity = Charity + Val(grdDataGrid.Columns(12))
'            NettRExR = NettRExR + Val(rs(0) / 100)
'
'            '**************************
'            Round1 = Val(Mid(CStr(Charity), InStr(Format((Charity), "#0.00"), "."), 3))
'            If Round1 <= 0.5 Then
'                txtfields(18).Text = Format("-" & Round1, "#0.00")
'                txtfields(41) = Format(Charity - Round1, "#0.00")
'            Else
'                txtfields(18).Text = Format(1 - Val(Round1), "#0.00")
'                txtfields(41).Text = Format(Charity + (1 - Val(Round1)), "#0.00")
'            End If
'            '*************************
'
'
'        End If
''Cess
'        If CESSFLG Then
'            grdDataGrid.Columns(22) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12))) * (txtfields(15).Text / 100), 2)
'            cess = cess + Val(grdDataGrid.Columns(22))
'            NettRExR = NettRExR + (NettRExR * Val((txtfields(15).Text / 100)))
'
'
'            '********************
'            Round1 = Val(Mid(CStr(cess), InStr(CStr(cess), "."), 3))
'            If Round1 <= 0.5 Then
'                txtfields(16).Text = Format("-" & Round1, "#0.00")
'                txtfields(42) = Format(cess - Round1, "#0.00")
'            Else
'                txtfields(16).Text = Format(1 - Round1, "#0.00")
'                txtfields(42).Text = Format(cess + (1 - Round1), "#0.00")
'            End If
'            '********************
'
'
'        End If
''Duty
'        If DUTYFLG Then
'            'grdDataGrid.Columns(19) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12)) + Val(grdDataGrid.Columns(22))) * (Val(grdDataGrid.Columns(15)) / 100), 2)
'            '*****************
'            'PRAKASH.S
'            grdDataGrid.Columns(19) = KSLRound(((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12))) * (Val(grdDataGrid.Columns(15)) / 100)), 2)
'            '*****************
'
'            'BED
'
'            Bed = Bed + grdDataGrid.Columns(19)
'            BEDR = NettRExR * Val(grdDataGrid.Columns(15)) / 100
'            NettRExR = NettRExR + (NettRExR * Val(grdDataGrid.Columns(15)) / 100)
'
'
'            '***************
'            Round1 = Val(Mid(CStr(Bed), InStr(CStr(Format(Bed, "#0.00")), "."), 3))
'            If Round1 <= 0.5 Then
'                txtfields(20).Text = Format("-" & Round1, "#0.00")
'                txtfields(43) = Format(Bed - Round1, "#0.00")
'            Else
'                txtfields(20).Text = Format(1 - Val(Round1), "#0.00")
'                txtfields(43).Text = Format(Bed + (1 - Val(Round1)), "#0.00")
'            End If
'            '***************
'
'
'
'            'AED
'
'            grdDataGrid.Columns(20) = KSLRound((grdDataGrid.Columns(19)) * (grdDataGrid.Columns(16) / 100), 2)
'            Aed = Aed + Val(grdDataGrid.Columns(20))
'            NettRExR = NettRExR + Val(BEDR * Val(grdDataGrid.Columns(16)) / 100)
'
'            '*****************
'            Round1 = Val(Mid(CStr(Aed), InStr(CStr(Format(Aed, "#0.00")), "."), 3))
'            If Round1 <= 0.5 Then
'                txtfields(22).Text = Format("-" & Round1, "#0.00")
'                txtfields(44) = Format(Aed - Round1, "#0.00")
'            Else
'                txtfields(22).Text = Format(1 - Round1, "#0.00")
'                txtfields(44).Text = Format(Aed + (1 - Round1), "#0.00")
'            End If
'            '*****************
'
'
'
'        End If
''Tax
'        If TAXFLG Then
'            grdDataGrid.Columns(18) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12)) + Val(grdDataGrid.Columns(22)) + Val(grdDataGrid.Columns(19)) + Val(grdDataGrid.Columns(20))) * (Val(grdDataGrid.Columns(14)) / 100), 2)
'            Tax = Format(Tax + grdDataGrid.Columns(18), "#0.00")
'            TAXR = (NettRExR * Val(grdDataGrid.Columns(14)) / 100)
'            NettRExR = NettRExR + (NettRExR * Val(grdDataGrid.Columns(14)) / 100)
'            grdDataGrid.Columns(21) = Round(grdDataGrid.Columns(18) * grdDataGrid.Columns(17) / 100, 2)
'            SurCharge = Round(Val(SurCharge) + Val(grdDataGrid.Columns(21)), 2)
'            NettRExR = NettRExR + (TAXR * Val(grdDataGrid.Columns(17)) / 100)
'            grdDataGrid.Columns(10).Text = KSLRound(NettRExR + Val(Val(txtfields(31)) / Val(grdDataGrid.Columns(7))), 2)
'
'            '******************
'            Round1 = Mid(CStr(Tax), InStr(CStr(Tax), "."), 3)
'            If Round1 <= 0.5 Then
'                txtfields(26).Text = Format("-" & Round1, "#0.00")
'                txtfields(45) = Format(Tax - Round1, "#0.00")
'            Else
'                txtfields(26).Text = Format(1 - Round1, "#0.00")
'                txtfields(45).Text = Format(Tax + (1 - Round1), "#0.00")
'            End If
'            '*****************
'            'EXMILL TO NETRATE
'        End If
'        adoSecondaryRS.MoveNext
'    Loop
'        'txtfields(40).Text = Format(Assval, "#.00")
'        'txtfields(41).Text = Format(Charity, "#0.00")
'        'txtfields(18).Text = Format(Charity, "#0.00")
'        'txtfields(42).Text = Format(cess, "#0.00")
'        'txtfields(16).Text = Format(cess, "#0.00")
'        'txtfields(43).Text = Format(Bed, "#0.00")
'        'txtfields(20).Text = Format(Bed, "#0.00")
'        'txtfields(44).Text = Format(Aed, "#0.00")
'        'txtfields(22).Text = Format(Aed, "#0.00")
'        'txtfields(45).Text = Format(Tax, "#0.00")
'        'txtfields(26).Text = Format(Tax, "#0.00")
'        txtfields(28).Text = Format(SurCharge, "#0.00")
'        TotAmt = Assval + Charity + cess + Bed + Aed + Tax + Val(SurCharge)
'        'TotAmt = Val(txtfields(40).Text + txtfields(41).Text + txtfields(42).Text + txtfields(43).Text + txtfields(44).Text + txtfields(45).Text + txtfields(46).Text)
'        Insur = 0
'        Insur = Round(TotAmt * Val(txtfields(50)) / 100, 2)
'        txtfields(49).Text = Format(Insur, "#0.00")
'
'        txtfields(46) = Format(Insur + SurCharge + Val(txtfields(31).Text), "#0.00")
'
'        '****************************
'
'            Round1 = Mid(CStr(txtfields(46)), InStr(CStr(txtfields(46)), "."), 3)
'            If Round1 <= 0.5 Then
'                'txtFields(39).Text = Format("-" & Round1, "#0.00")
'                txtfields(46).Text = Format(txtfields(46) - Round1, "#0.00")
'            Else
'                'txtFields(39).Text = Format(1 - Round1, "#0.00")
'                txtfields(46).Text = Format(txtfields(46) + (1 - Round1), "#0.00")
'            End If
'
'        '****************************
'
'        Invamt = Format(Insur + TotAmt + Val(txtfields(31).Text), "#0.00")
'        txtfields(40).Text = KSLRound((txtfields(40).Text) + KSLRound((Val(Invamt) - (Val(txtfields(40).Text) + Val(txtfields(41).Text) + Val(txtfields(42).Text) + Val(txtfields(43).Text) + Val(txtfields(44).Text) + Val(txtfields(45).Text) + Val(txtfields(46).Text))), 2), 0)
''-----------------------------------Round-----------------------------
'
'            If InStr(CStr(Invamt), ".") > 0 Then
'            tmprnd = Mid(CStr(Invamt), InStr(CStr(Invamt), "."), 4)
'            If Right(tmprnd, 1) >= 5 Then
'            Invamt = Format(Invamt, "#########0.00")
'            End If
'            Round1 = Mid(CStr(Invamt), InStr(CStr(Invamt), "."), 3)
'            If Round1 <= 0.5 Then
'                txtfields(39).Text = Format("-" & Round1, "#0.00")
'                txtfields(47) = Format(Invamt - Round1, "#0.00")
'            Else
'                txtfields(39).Text = Format(1 - Round1, "#0.00")
'                txtfields(47).Text = Format(Invamt + (1 - Round1), "#0.00")
'            End If
'            End If
'End If
'End Sub
'---------------------------------------------------------------------------------------
' Procedure : KSLRound
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
On Error GoTo KSLRound_Error

Set RRs = New Recordset
RRs.Open "select Round(" & Rval & "," & Rdeci & ")", db
KSLRound = RRs(0)

Exit Function
KSLRound_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure KSLRound of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Function

Private Sub AddUpdate()
'ADDITION TIME UPDATATIONS
On Error GoTo UPDATEERR
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & Txtfields(0) & "' and divcode = '" & Divcode & "'", db
    If Rs(0) = "E" Then
        db.Execute "update ig_rg1trn set exp_kgs=exp_kgs+" & val(grddatagrid.Columns(9)) & ",exp_value=exp_value+" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        db.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs+" & val(grddatagrid.Columns(9)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        
         Dim SPS1 As Double
         Dim SPS As New Recordset
         Set SPS = New Recordset
         SPS.Open "SELECT PACK_WT FROM ig_product WHERE PRODUCT_CODE='" & grddatagrid.Columns(5).Text & "' and DivCode ='" & Divcode & "'", db, adOpenStatic
         SPS1 = Round(val(grddatagrid.Columns(9).value) - val((grddatagrid.Columns(6).Text) * SPS("PACK_WT")), 2)
        'db.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grdDataGrid.Columns(7)) & ",home_value=home_value+" & grdDataGrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "')"
        
        If SPS1 > 0 Then
            'db.Execute "update ig_rg1trn set LOOSE_KGS=LOOSE_KGS-" & SPS1 & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        End If
        
        db.Execute "update ig_rg1trn set home_kgs=home_kgs+" & val(grddatagrid.Columns(9)) & ",home_value=home_value+" & grddatagrid.Columns(12) + val(Txtfields(46).Text) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
        
        
        
        
    End If
        
        db.Execute "update ig_rg1trn set packs=packs+" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs+" & val(grddatagrid.Columns(9)) & ",bed_amt=bed_amt+" & val(grddatagrid.Columns(20)) & ",aed_amt=aed_amt+" & val(grddatagrid.Columns(21)) & ",invoices=substring(invoices+'" & IIf(IsNull(Txtfields(3).Text) Or Trim(Txtfields(3).Text) = "", "", "," + CStr(val(Mid$(Txtfields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(val(grddatagrid.Columns(20)) + val(grddatagrid.Columns(21)) > 0, val(grddatagrid.Columns(12)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        'Easwar db.Execute "update ig_rrg1trn set bed_amt=bed_amt+" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
'-------------------------------CDSTOCK
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT COUNT(*) FROM ig_CDSTOCK WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & Txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))), db
        If rs1(0) = 0 Then
            Set RS2 = New Recordset
            RS2.Open "SELECT OPEN_KGS+TRF_KGS-SOLD_KGS FROM ig_CDSTOCK X WHERE X.DIVCODE='" & Divcode & "' AND X.CUST_CODE='" & Txtfields(6) & "' AND X.PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND X.YEARMON=(SELECT MAX(Y.YEARMON) FROM ig_CDSTOCK Y WHERE  Y.DIVCODE=X.DIVCODE AND Y.CUST_CODE=X.CUST_CODE AND Y.PRODUCT_CODE=X.PRODUCT_CODE)", db
            If Not RS2.EOF Then
                db.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & Txtfields(6) & "','" & grddatagrid.Columns(5) & "'," & val(RS2(0)) & "," & val(grddatagrid.Columns(9)) & ",0)"
            Else
                db.Execute "INSERT INTO ig_CDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & Txtfields(6) & "','" & grddatagrid.Columns(5) & "',0," & val(grddatagrid.Columns(9)) & ",0)"
            End If
        Else
            db.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS+" & val(grddatagrid.Columns(9)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & Txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))

            
        End If
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", db
   Rs.MoveFirst
   Do While Not Rs.EOF
        For i = Rs(0) To Rs(1)
            db.Execute "update IG_RPACKNOS set INVOICED='Y' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & " and pack_no=" & i, a
        Next
        Rs.MoveNext
   Loop
   
'   Do While PackNo <= rs(1)
'    db.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & rs(2) & "' and pack_year=" & rs(3) & "and pack_no=" & PackNo
'    PackNo = PackNo + 1
'   Loop
   
'--------------------------------Contract
   db.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED+" & grddatagrid.Columns(9) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   db.Execute "update ig_product set kg_rate=" & val(grddatagrid.Columns(10)) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   adoSecondaryRS.MoveNext
   Loop
   
'---------------------------Bale Order
      db.Execute "update IG_RBOHD set inv_type='" & Txtfields(0) & "',inv_no='" & Txtfields(1) & "' where divcode='" & Divcode & "' and bo_type='" & Txtfields(4) & "' and bo_no='" & Txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(Txtfields(32).Text) <> "" Or Trim(Txtfields(53).Text) <> "" Or Trim(Txtfields(57).Text) <> "" Then
   If Trim(Txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(32) & "'", db
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        db.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & Txtfields(32) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(Txtfields(3) = "", "null", Txtfields(3)) & "',Null," & val(Txtfields(51)) & "," & val(Txtfields(52)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        db.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(32) & "'"
        db.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(Txtfields(51)) & ",aed_dr=aed_dr+" & val(Txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & Txtfields(32) & "'"
   End If
   On Error GoTo sp1
   If Trim(Txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(53) & "'", db
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        db.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & Txtfields(53) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(Txtfields(3) = "", "null", Txtfields(3)) & "',null," & val(Txtfields(55)) & "," & val(Txtfields(56)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        db.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(53) & "'"
        db.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(Txtfields(55)) & ",aed_dr=aed_dr+" & val(Txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & Txtfields(53) & "'"
   End If
   If Trim(Txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(57) & "'", db
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        db.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & Txtfields(57) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(Txtfields(3) = "", "null", Txtfields(3)) & "',null," & val(Txtfields(59)) & "," & val(Txtfields(60)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        db.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(57) & "'"
        db.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(Txtfields(59)) & ",aed_dr=aed_dr+" & val(Txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & Txtfields(57) & "'"
   End If
 End If
 Exit Sub
sp1:
    MsgBox "Please check the Invoice type you have selected", vbInformation, head
    db.RollbackTrans
    errflg = True

UPDATEERR:
MsgBox "This Record Not Saved", vbInformation, head
db.RollbackTrans
errflg = True
End Sub
Private Sub DelUpdate()
'DELETION TIME UPDATATIONS
On Error GoTo DELUPDATEERR
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & Txtfields(0) & "' and divcode = '" & Divcode & "'", db
    If Rs(0) = "E" Then
        db.Execute "update ig_rg1trn set exp_kgs=exp_kgs-" & val(grddatagrid.Columns(9)) & ",exp_value=exp_value-" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        db.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs-" & val(grddatagrid.Columns(9)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        db.Execute "update ig_rg1trn set home_kgs=home_kgs-" & val(grddatagrid.Columns(9)) & ",home_value=home_value-" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    End If
        db.Execute "update ig_rg1trn set packs=packs-" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs-" & grddatagrid.Columns(9) & ",bed_amt=bed_amt-" & val(grddatagrid.Columns(20)) & ",aed_amt=aed_amt-" & val(grddatagrid.Columns(21)) & ",invoices=substring(invoices,1,len(invoices)),duty_sales=duty_sales-" & IIf(val(grddatagrid.Columns(20)) + val(grddatagrid.Columns(21)) > 0, val(grddatagrid.Columns(12)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'-------------------------------CDSTOCK
    
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
            db.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS-" & val(grddatagrid.Columns(9)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & Txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", db
   If Rs.RecordCount > 0 Then
   PackNo = Rs(0)
   Do While PackNo <= Rs(1)
    db.Execute "update IG_RPACKNOS set INVOICED='N' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & "and pack_no=" & PackNo
    PackNo = PackNo + 1
   Loop
   End If
   
'--------------------------------Contract
   db.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(9) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   db.Execute "update ig_product set kg_rate=" & grddatagrid.Columns(10) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   adoSecondaryRS.MoveNext
   Loop
   
'---------------------------Bale Order
      db.Execute "update IG_RBOHD set inv_type=null,inv_no=null where divcode='" & Divcode & "' and bo_type='" & Txtfields(4) & "' and bo_no='" & Txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(Txtfields(32).Text) <> "" Or Trim(Txtfields(53).Text) <> "" Or Trim(Txtfields(57).Text) <> "" Then
   If Trim(Txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(32) & "' and tran_type='I'", db
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            db.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & Txtfields(32) & "' AND TRAN_TYPE='I' AND REFERENCE='" & Txtfields(3) & "'"
            db.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(32) & "'"
            db.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(Txtfields(51)) & ",aed_dr=aed_dr-" & val(Txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & Txtfields(32) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(Txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(53) & "' AND TRAN_TYPE='I'", db
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            db.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & Txtfields(53) & "' AND TRAN_TYPE='I' AND REFERENCE='" & Txtfields(3) & "'"
            db.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(53) & "'"
            db.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(Txtfields(55)) & ",aed_dr=aed_der+" & val(Txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & Txtfields(53) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(Txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(57) & "' AND TRAN_TYPE='I'", db
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            db.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & Txtfields(57) & "' AND TRAN_TYPE='I' AND REFERENCE='" & Txtfields(3) & "'"
            db.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & Txtfields(57) & "'"
            db.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(Txtfields(59)) & ",aed_dr=aed_dr-" & val(Txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & Txtfields(57) & "'"
        Else
            GoTo DELUPDATEERR
        End If
            
   End If


 End If
 Exit Sub
DELUPDATEERR:
MsgBox "This Record Cannot be Deleted" & err.Description, vbInformation, head
db.RollbackTrans
errflg = True
End Sub
'---------------------------------------------------------------------------------------
' Procedure : NETTOEX
' DateTime  : 07/12/2008 14:33
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub NETTOEX()
'THIS PROCEDURE FIND THE EX-MILL RATE FROM NETT RATE
On Error GoTo NETTOEX_Error

ExR = 0
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
If (val(grddatagrid.Columns(9)) = 0 Or Trim(grddatagrid.Columns(9)) = "") And Rate > 0 Then
    NettR = Rate 'Val(grdDataGrid.Columns(10))
    STPer = val(grddatagrid.Columns(15)) / 100
    SCPer = val(grddatagrid.Columns(18)) / 100
    BEDPer = val(grddatagrid.Columns(16)) / 100
    AEDPer = val(grddatagrid.Columns(17)) / 100
    CESSPer = val(Txtfields(16).Text) / 100
    Set Rs = New Recordset
    Rs.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", db
    If Not Rs.EOF Then CHARPer = Rs(0)
                        '******************calculation******************
'*************** original comment by prakash
    ExR = NettR
    'for rasi changed by senthil
    
    ExR = Round((NettR / (((1 + STPer) + (STPer * SCPer)) * ((1 + BEDPer) + (BEDPer * AEDPer) + CESSPer))) - val(Txtfields(31).Text) / val(grddatagrid.Columns(9).Text), 3)
    
    
' '-----------------------------Exmillrate=exmilrate-freight
'      ExR = KSLRound(ExR - Val(txtfields(31).Text) / Val(grdDataGrid.Columns(7).Text), 5)
''-----------------------nett-st-sc
'      ExR = KSLRound(ExR / (1 + STPer + (STPer * SCPer)), 5)
''-----------------------nett-st-sc-aed-bed
'     ExR = KSLRound(ExR / (1 + BEDPer + (BEDPer * AEDPer)), 5)
''-----------------------nett-st-sc-aed-bed-cess
'     'Easwar ExR = KSLRound(ExR - ExR * CESSPer, 5)
'     ExR = KSLRound(ExR - (ExR * CESSPer), 5)
''-----------------------EXMILL RATE = NETTRATE-SC-ST-AED-BED-CESS-CHARITY
'     ExR = KSLRound(ExR - (Val(grdDataGrid.Columns(6).Text) * CHARPer), 2)


'****************************************************
'by prakash.s
'Dim ex As Double
'ex  = 0
'ex1 = 0
'ExR = KSLRound((NettR * (Val(grdDataGrid.Columns(14).Text) + Val(grdDataGrid.Columns(17).Text))) / (100 + (STPer + SCPer) * 100), 4)
'ExR = ExR / (NettR + (STPer + SCPer) * 100)
'ExR = NettR - ExR
'ex  = ExR
'ExR = Val(ex * (18.45)) / (118.45)
'Ex1 = ExR
'ex1 = ex - ExR
'ExR = Round(ex - ExR, 4)
'***************

grddatagrid.Columns(10) = ExR
STPer = 0
SCPer = 0
BEDPer = 0
AEDPer = 0
CESSPer = 0
CHARPer = 0
End If
adoSecondaryRS.MoveNext
Loop

Exit Sub
NETTOEX_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure NETTOEX of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : ModLock
' DateTime  : 07/12/2008 14:33
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub ModLock()
'THIS PROCEDURE UNLOCKS THE MODIFIABLE FIELDS
On Error GoTo ModLock_Error

For i = 61 To 65
    Txtfields(i).Locked = False
Next
For i = 34 To 38
    Txtfields(i).Locked = False
Next
Txtfields(29).Locked = False
Txtfields(70).Locked = False

Exit Sub
ModLock_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ModLock of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub Inv_PrePrintFormFABNEW(U As String, V As String, W As String, rh As String, ln As String, C As Integer)
On Error Resume Next
Dim va As Integer
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim HHAD As String
Dim memtax As String
Dim rup1 As String
Dim rup2 As String
Dim rup3 As String
Dim rup4 As String
Dim X As String
'Dim tot1 As Double
Dim tot As Double
Dim SNO As Integer
Dim crdate As String
Dim crdate1 As String
Dim descrip As String
Set Cnn = New Connection
Cnn.Open connectstring
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim pack_no As String
Dim pack_no1 As String
Dim pack_no2 As String
Dim pack_no3 As String
Dim pack_no4 As String
Dim pack_no5 As String
Dim pack_no6 As String
Dim pack_no7 As String
  
Set RS2 = New Recordset
RS2.Open "select a.inv_no,a.cr_days,a.pay_mode,a.cess_amt,a.pla_bed,a.pla_aed,a.rg23a_bed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.name,'')as  city,a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,a.vehicle_no,isnull(C.NAME,' ') despto,e.ordrefno,e.ordredate,d.name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY " & _
         " from ig_invhd a,fa_slmas b,ig_area c,ig_area d ,ig_bohd e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code and a.inv_no*=e.inv_no and a.inv_type*=e.inv_type and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", Cnn, adOpenStatic
If RS2.EOF = True Then
   MsgBox "No Records found for selected Invoice Number", vbInformation, head
   Exit Sub
End If
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,tngstdt,isnull(cgst,'') as cgst,cgstdt,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3 from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
If rs1.EOF Then
   MsgBox "No Record Found"
   Exit Sub
End If
    
Set temprs = New Recordset
Set RPTV = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\PPINV.TXT" For Output As #a
 Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
pg1 = 1
va = 1
    
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt,isnull(cgst,'') as cgst,isnull(cgstdt,'') as cgstdt ,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3,collectorate,pincode from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
    
Do While Not RS2.EOF
   tot1 = 0: tot2 = 0: tot3 = 0
        
   Set rs4 = New Recordset
   rs4.Open "select slname,add1,add2,isnull(add3,'') as add3,city,pin,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt, isnull(ecc,' ') as ecc,isnull(cgst,'')as cgst,isnull(cgstdt,'') as cgstdt,rc_no from fa_slmas where slcode='" & RS2("cust_code") & "'", Cnn, adOpenStatic
        
   Set rs3 = New Recordset
   rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle,b.pack_type from ig_invdt a,ig_product b,ig_bodt d where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "'", Cnn, adOpenStatic, adLockBatchOptimistic
           
   Dim IR As Integer
   IR = 0
   SNO = 0
   Set rsc = New Recordset
   rsc.Open "select name,lr_no,isnull(b.rnd_off,0) as round ,isnull(total_amt,0) as total from ig_carrier a,ig_invhd b where a.carrier_code=b.carrier_code and b.inv_no='" & RS2("inv_no") & "'", Cnn
      
   If Not rsc.EOF Then car = rsc(0)
      Print #a, Chr(18)
      Print #a,
      Print #a,
      Print #a,
      Print #a,
      Print #a, Chr(27) & "E" & Space(6) & Chr(15) & Chr(14) & Padr(rs4("slname"), 40, " ") & Chr(18)
      Print #a, Chr(27) & "E" & Space(6) & Padr(rs4("add1"), 30, " ") & Space(48) & Chr(14) & Padr(Format(val(Right(RS2("inv_no"), 6)), "#0000"), 8, " ") & Chr(18)
      Print #a, Space(6) & Padr(rs4("add2"), 30, " ")             '***  & Space(24) & Space(14) & Chr(14) & Padr(Val(Right(rs2("inv_no"), 6)), 8, " ") & Chr(18)
      If Trim(rs4("add3")) = "" Then
         Print #a, Chr(27) & "E" & Space(6) & Padr(rs4("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 30, " ") & Chr(27) & "F" & Space(12) & Padr(rs4("tngst"), 25, " ") & Space(11) & Padr(RS2("date"), 12, " ")
         Print #a, Space(48) & Padr(rs4("cgst"), 25, " ") & Chr(27) & "F"
      Else
         Print #a, Chr(27) & "E" & Space(6) & Padr(rs4("add3"), 30, " ") & Chr(27) & "F" & Space(12) & Padr(rs4("tngst"), 25, " ") & Space(11) & Padr(RS2("date"), 12, " ")
         Print #a, Chr(27) & "E" & Space(6) & Padr(rs4("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 20, " ") & Chr(27) & "F";
         Print #a, Space(16) & Padr(rs4("cgst"), 25, " ")
      End If
      If Trim(rs4("add3")) = "" Then
         Print #a,
      End If
      crdate = RS2("cr_days")
      crdate1 = DateAdd("d", crdate, RS2("date"))
      Print #a,
      Print #a,
      Print #a,
      Print #a,
      Print #a,
      Print #a,
      Print #a, Space(15)
      Print #a,
      Print #a, Space(33) & Padr(RS2("BED_NOTIFY"), 30, " ")
      Print #a,
      Print #a,
      Print #a,
      Print #a,
      descrip = rs3("description")
      pack_type = rs3("Pack_type")
      Set rs3 = New Recordset
      'rs3.Open "select distinct a.product_code,b.cone_wt,b.description,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,a.tax_per,a.lsc_per,PACK_WT,isnull(b.bundle_wt,1) as bundle,B.PACK_TYPE,a.lsc_amt,tax_amt,d.lot_code,d.case_rate,isnull(d.cont_sno,0) as cont_sno from ig_invdt a,ig_product b,ig_bodt d where a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and inv_no between '" & v & "' and '" & w & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_type=d.bo_type and a.product_code=d.product_code and d.pack_type='" & pack_type & "' AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.invsno=d.sl_no", cnn, adOpenStatic
       rs3.Open "select distinct a.product_code,b.description,a.packs,a.nett_kgs,a.value as value,a.rate_ex,d.lot_code,b.pack_type,d.case_rate,a.invsno from ig_invdt a,ig_product b,ig_bodt d,IG_BOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and A.inv_no between '" & V & "' and '" & W & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code AND A.NETT_KGS=D.NETT_KGS ORDER BY A.INVSNO", Cnn, adOpenStatic
      Do While Not rs3.EOF
         Rate = val(rs3!RAte_ex) '* Val(cone1)
         SNO = SNO + 1
         Print #a, Chr(18)
         Print #a, Space(1) & Chr(15) & Padr(SNO, 3, " ") & Space(3) & Padr(rs3("description"), 48, " ") & Chr(18) & Space(5) & Padl(rs3("packs"), 4, " ") & Space(1) & Padl(INF(rs3("nett_kgs"), 3), 11, " ") & Space(4) & Padl(INF((rs3("Value") / rs3("packs")), 2), 9, " ") & Space(4) & Padl(INF(rs3("value"), 2), 12, " ") & Space(6) & Padl(INF(rs3("value"), 2), 12, " ")
         'Print #a, Space(1) & Chr(15) & Padr(sno, 3, " ") & Space(3) & Padr(rs3("description"), 48, " ") & Space(5) & Padl(rs3("packs"), 5, " ") & Space(9) & Padl(INF(rs3("nett_kgs"), 2), 8, " ") & Space(4) & Padl(INF((rs3("Value") / rs3("packs")), 2), 12, " ") & Space(13) & Padl(INF(rs3("value"), 2), 12, " ") & Chr(18) & Space(15) & Padl(INF(rs3("value"), 2), 12, " ")
         
         i = 48
         Set UOMRS = New Recordset
         UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
         UOMRS.MoveFirst
            
            ' ** Modified by B.V.Srinivasan on 16-04-2005 **
         UNT = UOMRS("description")
         If rs5.State = adStateOpen Then rs5.Close
            Set rs5 = New Recordset
            rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code from ig_invdt a,ig_product b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "'" & _
                     " and a.inv_no='" & RS2("inv_no") & "'", Cnn, adOpenStatic, adLockBatchOptimistic
            
            pack_no = " "
            rs5.MoveFirst
        
            While Not rs5.EOF
               If pack_no = " " Then
                  If rs5("spack_no") = rs5("epack_no") Then
                     pack_no = CStr(rs5("spack_no"))
                  ElseIf rs5("spack_no") <> rs5("epack_no") Then
                     pack_no = CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
                  End If
               Else
                  If CStr(rs5("spack_no")) = rs5("epack_no") Then
                     pack_no = pack_no & "," & CStr(rs5("spack_no"))
                  ElseIf rs5("spack_no") <> rs5("epack_no") Then
                     pack_no = pack_no & "," & CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
                  End If
               End If
               rs5.MoveNext
            Wend
            
            pack_no1 = Mid$(pack_no, 1, 40)
            tcnt = 0
             
            If Len(pack_no1) > 0 Then
               tcnt = tcnt + 1
               Print #a, Space(4) & Chr(15) & Padr(" ", 41, " ") & Chr(18) & Space(9) & Padr(IIf(tcnt <= 1, UNT, " "), 6, " ") & Space(2) & IIf(tcnt <= 1, "KGS", " ") '& Space(2) & " Lot : " & Padr(" ", 6, " ") & Space(5) & "0.00"
               'Print #a, Space(4) & Chr(15) & Padr(" ", 41, " ") & Space(15) & Padr(IIf(TCNT <= 1, UNT, " "), 12, " ") & Space(2) & IIf(TCNT <= 1, "KGS", " ") '& Space(2) & " Lot : " & Padr(" ", 10, " ") & Space(4) & "0.00"
               
               
            End If
            tot1 = tot1 + rs3!value
            
            Set RSfabcont = New Recordset
            RSfabcont.Open "select c.cont_no,c.gauge,c.dia,c.gsm,c.fabtype from ig_fabcontdt c,ig_bodt t,ig_bohd d where" & _
                           " T.cont_type = c.cont_type And T.cont_no = c.cont_no And T.bo_no = d.bo_no And T.bo_type = d.bo_type " & _
                           " and d.inv_no='" & RS2("inv_no") & "' and d.inv_type='" & RS2("inv_type") & "' and d.divcode='" & Divcode & "' and t.divcode=d.divcode and t.divcode=c.divcode and c.sno=t.cont_sno and c.sno='" & rs3("cont_sno") & "'", Cnn, adOpenStatic, adLockBatchOptimistic
            Print #a, Space(8) & "Ord. No: " & Padr(Format(val(Right(RSfabcont("cont_no"), 6)), "#0000"), 8, " ") & Space(2) & "Dia: " & Padr(RSfabcont("dia"), 3, " ") & Space(2) & "GSM: " & Padr(RSfabcont("gsm"), 3, " ") & Space(3) & "Fab. Type: " & Padr(RSfabcont("fabtype"), 45, " ")
            rs3.MoveNext
        Loop
        
        ' *** Modified by B.V.Srinivasan on 16-04-2005
        t1 = 0
        
        If SNO > 0 Then
            t1 = 7 - Round((7 / (SNO * 3)), 0)
            For i = t1 To 7
                Print #a,
            Next i
        End If
        If SNO = 1 Then
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            'Print #a, commented for fabric type
        End If
        If SNO = 2 Then
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            'Print #a, commented for fabric type
        End If
        'I = 1
        Do While i <= 2
            Print #a,
            i = i + 1
        Loop

        Print #a, Chr(18) & Space(90) & String(12, "-")
        Print #a, Space(89) & Padl(INF(tot1, 2), 12, " ")
        Print #a,
        Print #a,
        Print #a,
        'Print #a,
             Set Rs = New Recordset
             'rs.Open "select distinct d.tax_per, d.lsc_per,B.NAME,c.vehicle_no,PRE_TIME,REM_TIME,a.PONO,a.PODATE,a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,total_Amt,c.ordrefno,c.ordredate,a.entdate from ig_invhd A,IG_CARRIER B,ig_bohd c,ig_invdt d where a.inv_no='" & rs2(0) & "' and a.date='" & Format(rs2("DATE"), "yyyy/mm/dd") & "' AND A.CARRIER_CODE=B.CARRIER_CODE AND a.INV_TYPE='" & rs2("inv_type") & "' and a.inv_no=d.inv_no and a.inv_type=c.inv_type ", cnn, adOpenStatic
             
             Rs.Open "select distinct d.tax_per,d.tax_amt, d.lsc_per,c.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME,a.PONO,a.PODATE," & _
                     " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,total_Amt,c.ordrefno," & _
                     " c.ordredate,a.entdate from ig_invhd A,ig_bohd c,ig_invdt d where " & _
                     " a.inv_no='" & RS2(0) & "' and a.date='" & Format(RS2("DATE"), "yyyy/mm/dd") & "' " & _
                     " AND a.INV_TYPE='" & RS2("inv_type") & "' and a.inv_no=d.inv_no" & _
                     " and a.inv_type=d.inv_type  and a.divcode=d.divcode and a.inv_type=c.bo_type and" & _
                     " a.divcode=c.divcode ", Cnn, adOpenStatic
             
             
             X = Num_To_Word(Round(Rs("total_amt"), 0))
             tot3 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
             tot1 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt
             Print #a, Chr(18) & Space(89) & Padl(INF(Rs("bed_amt"), 2), 12, " ")
             Print #a,
             Print #a,
             Print #a, Space(89) & Padl(INF(Rs("aed_amt"), 2), 12, " ")
             Print #a,
             Print #a, ' ADDED ON 08-09-2005
             Print #a, Space(89) & Padl(INF(Rs("cess_amt"), 2), 12, " ")
             Print #a, Space(41) & Padr(Rs("vehicle"), 24, " ") '& Space(25) & Padl(INF(rs("cess_amt"), 2), 12, " ")
             Print #a, Space(29) & Format(Rs("entdate"), "dd/mm/yyyy") & Space(1) & Padr(Rs("pre_time"), 10, " ") & Space(39) & Padl(INF(tot1, 2), 12, " ")
             Print #a, Space(29) & Format(Rs("entdate"), "dd/mm/yyyy") '& Space(1) & Padr(rs("rem_time"), 10, " ")
             If Rs("tax_per") <> Empty And Rs("tax_per") <> "0" Then
                Print #a, Space(10) & Padr(Rs("ordrefno"), 15, " ") & Space(29) & Padr(Rs("ordredate"), 12, " ") & Space(13) & Padl(Rs("tax_per") & "%", 5, " ") & Space(5) & Padl(INF(Rs("tax_amt"), 2), 12, " ")
             Else
                Print #a, Space(10) & Padr(Rs("ordrefno"), 15, " ") & Space(29) & Padr(Rs("ordredate"), 12, " ")
             End If
             Print #a,
             If Rs("lsc_per") <> Empty And Rs("lsc_per") <> "0" Then
                Print #a, Space(79) & Padl(Rs("lsc_per") & "%", 5, " ") & Space(5) & Padl(INF(Rs("lsc_Amt"), 2), 12, " ")
             Else
                Print #a,
             End If
             Print #a,
             Print #a, Space(89) & Padl(INF(Rs("rnd_off"), 2), 12, " ")
             
             aa = "": b = 0:
             ' *** Total Invoice Value in Words and ***
             ' *** Triming more than one space      ***
             X = IIf(Rs!total_amt = 0, "-- Nil --", Replace(Num_To_Word(Round(Rs!total_amt, 0)), "  ", " "))
             X = Replace(X, "RUPEES ", "")
             If Len(X) > 40 Then
                 If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
                    Print #a, Space(6) & Padr(Mid(X, 1, 40), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, 41, Len(X)), 40, " ") & Space(43) & Padl(INF(Rs("total_amt"), 2), 12, " ")
                Else
                    aa = Right(Mid(X, 1, 40), 8)
                    For J = 1 To 8
                        If Mid(aa, J, 1) = " " Then
                            Exit For
                        End If
                    Next J
                    b = 40 - 8 + (J - 1)
                    Print #a, Space(6) & Padr(Mid(X, 1, b), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, b + 1, Len(X)), 40, " ") & Space(43) & Padl(INF(Rs("total_amt"), 2), 12, " ")
                End If
             ElseIf Len(X) > 0 Then
                    Print #a,
                    Print #a, Space(6) & Padr(Mid(X, 1, Len(X)), 40, " ") & Space(43) & Padl(INF(Rs("total_amt"), 2), 12, " ")
             End If
             
             Print #a,
             Print #a,
             Print #a,
             
             ' *** Total AED & BED amt in Words ***
             X = IIf(Rs!bed_amt + Rs!aed_amt = 0, "-- Nil --", Replace(Num_To_Word(Round(Rs!bed_amt + Rs!aed_amt, 0)), "  ", " "))
             X = Replace(X, "RUPEES ", "")
             If Len(X) > 40 Then
                 If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
                    Print #a, Space(6) & Padr(Mid(X, 1, 40), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, 41, Len(X)), 40, " ")
                Else
                    aa = Right(X, 8)
                    For J = 1 To 8
                        If Mid(aa, J, 1) = " " Then
                            Exit For
                        End If
                    Next J
                    b = 40 - 8 + (J - 1)
                    'Print #a, Space(6) & Padr(Mid(x, 1, B), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                    Print #a, Space(6) & Padr(Mid(X, 1, b), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, b + 1, Len(X)), 40, " ")
                End If
             ElseIf Len(X) > 0 Then
                    'Print #a, Space(6) & Padr(Mid(x, 1, Len(x)), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                    Print #a, Space(6) & Padr(Mid(X, 1, Len(X)), 40, " ")
             End If
             If Len(X) = 0 Then
                    Print #a, Space(6) & "Nill"
             End If
                       
             RS2.MoveNext
             Print #a, Chr(12)
    Loop

'PRIYA
Close #a
 a = FreeFile
'    Open "C:\PPINV.BAT" For Output As #a
'    Print #a, "CD\"
'    Print #a, "C:"
'    Print #a, "CD\"
'    Print #a, "type PPINV.TXT> PRN"
'    Close
'    RPTV.txtfile = "C:\PPINV.TXT"
'    RPTV.Batfile = "C:\PPINV.BAT"
Call KALBATPROCESS("PPINV")
ER1:
    If err.Number = 3021 Then
        MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
    End Sub

Public Sub Inv_PrePrintFormNEW(U As String, V As String, W As String, rh As String, ln As String, C As Integer)
On Error Resume Next
Dim va As Integer
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rs7 As Recordset
Dim HHAD As String
Dim memtax As String
Dim rup1 As String
Dim rup2 As String
Dim rup3 As String
Dim rup4 As String
Dim X As String
Dim tot As Double
Dim SNO As Integer
Dim crdate As String
Dim crdate1 As String
Dim descrip As String
On Error GoTo Inv_PrePrintFormNEW_Error
Set Cnn = New Connection
Cnn.Open connectstring
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim pack_no As String
Dim pack_no1 As String
Dim pack_no2 As String
Dim pack_no3 As String
Dim pack_no4 As String
Dim pack_no5 As String
Dim pack_no6 As String
Dim pack_no7 As String
Dim per As String
Dim k As Integer
Dim SPack   As String
Dim EPack   As String
Dim cnt     As Double
Dim Ct      As Double
Dim Rate As Double, value As Double, total_amt As Double


per = Right(Trim(U), 2)
Set RS2 = New Recordset
             
RS2.Open "select Distinct a.inv_no,a.cr_days,a.pay_mode,a.cess_amt,0 as educess_amt,a.pla_bed,a.pla_aed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.Areaname,'') as  city, " & _
        "a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,a.vehicle_no,isnull(C.AREANAME,' ') despto,'' as ordrefno,'' as ordredate,d.AREAname as Name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY ,B.rc_no,A.PRE_TIME,A.REM_TIME,A.DELIVERY_DT,A.INS_AMT,'' as orderno,'' as orderdate  " & _
        " from RM_Cinvhd a,fa_slmas b,RM_area c,RM_area d, RM_Issh e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.areacode and a.despatch_to *=c.areacode and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", Cnn, adOpenStatic
    
If RS2.EOF = True Then
    MsgBox "No Records found for selected Invoice Number", vbInformation, head
    Exit Sub
End If
    
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,tngstdt,isnull(cgst,'') as cgst,cgstdt,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3 from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
If rs1.EOF Then
    MsgBox "No Record Found"
    Exit Sub
End If
    
Set temprs = New Recordset
Set RPTV = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\PPINV.TXT" For Output As #a
 Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
pg1 = 1
va = 1
k = 1
cnt = 0
Ct = 0
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt,isnull(cgst,'') as cgst,isnull(cgstdt,'') as cgstdt ,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3,collectorate,pincode from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
    
Do While Not RS2.EOF
    tot1 = 0
    tot2 = 0
    tot3 = 0
    
    Set rs4 = New Recordset
    rs4.Open "select slname,add1,add2,isnull(add3,'') as add3,city,pin,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt, isnull(ecc,' ') as ecc,isnull(cgst,'')as cgst,isnull(cgstdt,'') as cgstdt,rc_no,phone1,TINNO from fa_slmas where slcode='" & RS2("cust_code") & "'", Cnn, adOpenStatic
        
    Set rs3 = New Recordset
    rs3.Open "select distinct a.Product_Code,'' as description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(d.IssKgs,1) as bundle," & _
            "a.inv_type,'' AS NAME from RM_Cinvdt a,RM_Lot b,RM_Issb d where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and a.divcode=b.divcode and a.Cont_No=b.LotNo and a.inv_no='" & RS2("inv_no") & "' ", Cnn, adOpenStatic, adLockBatchOptimistic
           
    Dim IR As Integer
    IR = 0
    SNO = 0
        
    Set rsc = New Recordset
    rsc.Open "select Carname,lr_no,isnull(b.rnd_off,0) as round ,isnull(total_amt,0) as total from PO_car a,RM_Cinvhd b where a.carcode=b.carrier_code and b.inv_no='" & RS2("inv_no") & "'", Cnn
    Set RSNOT = New Recordset
    RSNOT.Open "select DISTINCT a.bed_notify,a.aed_notify,b.Netwt,'' as tariffhead,b.LotNo as description ,b.bedper as bed_per,b.aedper as aed_per,b.cessper as cess_per ,0 as educess_per,d.lsc_per,d.tax_per,e.description from ig_notify a," & _
            "RM_Lot b,RM_Cinvdt d ,ig_tax e where d.inv_no= '" & RS2(0) & "' and d.inv_type='" & RS2("inv_type") & "' and b.LotNO = d.product_code  and d.divcode = '" & Divcode & "' and b.tax_code*=e.tax_code and  d.divcode=b.divcode and b.divcode='" & Divcode & "'", Cnn, adOpenStatic

    If Not rsc.EOF Then car = rsc(0)
    If k <> 1 Then
        Print #a,
    End If
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
   'Print #a, Space(5) & CENTRE("(Under Rule 11(2) of Central Excise Rule 2002)", 80, " ")
    Print #a,
    'Print #a, Space(23) & Chr(14) & Mid$(U, 5, Len(U)) & Chr(18)
    Print #a, Space(5) & CENTRE(rs1("divname"), 80, " ")
    Print #a,
    Print #a,
    Print #a,
    'Print #a, Space(10) & Space(43) & Space(0) & Chr(27) & Chr(87) & "1" & Padr(Format(Val(Right(rs2("inv_no"), 6)), "#0000"), 6, " ") & Chr(27) & Chr(87) & "0" & Space(0) & Chr(27) & Chr(87) & "1" & Padr(Format(rs2("Date"), "DD/MM/YY"), 10, " ") & Chr(27) & Chr(87) + "0"
    Print #a, Space(17) & Space(0) & Chr(27) & Chr(87) & "1" & Padr(Format(val(Right(RS2("inv_no"), 6)), "#0000"), 6, " ") & Chr(27) & Chr(87) & "0" & Space(40) & Chr(27) & Chr(87) & "1" & Padr(Format(RS2("Date"), "DD/MM/YY"), 10, " ") & Chr(27) & Chr(87) + "0"
    
    Print #a,
    If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Or rs3("inv_type") = "DX" Then
        Print #a, Space(30) & Chr(18) & Chr(14) + Chr(27) + "E" + "EXPORT INVOICE" + Chr(27) + "F" + Chr(18)
        Print #a, Space(10) & Chr(27) & Padr(rs4("slname"), 55, " ") & Chr(27) & "F"
    Else
        Print #a, Space(10) & Chr(27) & "E" & Padr(rs4("slname"), 45, " ") & Chr(27) & "F"
    End If

    Print #a, Space(10) & Padr(rs4("add1"), 45, " ") & Space(4) & Padr(RS2("orderno"), 10, " ") & Space(1) & Padr(Format(RS2("orderdate"), "dd/mm/yy"), 8, " ")
    If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Or rs3("inv_type") = "DX" Then
        Print #a, Space(10) & Padr(rs4("add2"), 45, " ") & Space(5) '& Padr(rs2("LR_no"), 10, " ") & Space(1) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
    Else
        Print #a, Space(10) & Padr(rs4("add2"), 45, " ") & Space(5) '& Padr(rs2("LR_no"), 10, " ") & Space(1) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
    End If

    Print #a, Space(10) & Padr(RS2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 50, " ") & Space(0); 'Padr(rs2("VEHICLE_NO"), 12, " ")

    If rs4("PHONE1") = "" Then
        'Print #a, Space(68) & Padr(rs2("DESPTO"), 25, " ")
    Else
        Print #a, Space(10) & Padr(rs4("phone1"), 35, " ") '& Space(8) & Padr(rs2("DESPTO"), 25, " ")
    End If
    
    If Not (IsNull(rs4("TINNO") & " ")) Then
        Print #a, Space(10) & "TIN NO:" & Padr(rs4("TINNO"), 15, " ")
    Else
        Print #a,
    End If
    

    'crdate = rs2("cr_days")
    'crdate1 = DateAdd("d", crdate, rs2("date"))
    'Print #a, Space(10) & "R.C.No  :" & IIf(IsNull(rs2("rc_no")), Space(14), Padr(rs2("RC_NO"), 14, " ")) & Space(27) & Padr(Format(Val(Right(rs2("inv_no"), 6)), "#0000"), 8, " ") & Space(3) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " ")
    
    Print #a,
    Print #a,
    Print #a,
    descrip = rs3("description")
    Set rs3 = New Recordset

    rs3.Open "select distinct a.product_code,'' as description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(a.rate_ex) as rate_ex,b.LotType as pack_type,Rate_Nett as case_rate ,d.IssKgs as packchrg_wt,B.LotTYPE ,b.lotdt from RM_Cinvdt a,RM_Lot b,RM_Issb d,RM_IssH E where D.DocNO=E.DocNO AND D.IssTYPE=E.IssTYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.CatCd and a.inv_no='" & RS2("inv_no") & "' and a.Cont_type=E.Isstype " & _
            "and a.product_code=d.CatCd group by a.product_code,b.Lottype,d.IssKgs,Rate_Nett,B.LOTTYPE ORDER BY A.product_code", Cnn, adOpenStatic
        
    Set rsb = New Recordset
    rsb.Open "select distinct a.product_code,'' as description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(*) as rate_ex,b.LotType as pack_type,sum(a.Rate_Nett ) as case_rate,a.invsno,a.lotdt from RM_Cinvdt a,RM_Lot b,RM_Issb d,RM_Issh E where D.DocNO=E.DocNO AND D.IssTYPE=E.IssTYPE AND " & _
            " D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and  a.divcode=b.divcode and a.product_code=b.catCd and a.inv_no='" & RS2("inv_no") & "' and a.product_code=d.CatCd AND A.NETT_KGS=D.IssKGS  group by a.product_code,b.Lottype,a.invsno ORDER BY A.product_code,INVSNO", Cnn, adOpenStatic
    Do While Not rs3.EOF
        
        Rate = IIf(val(rs3!RAte_ex) = 0, 0, val(rs3!RAte_ex))
        SNO = SNO + 1
        v1 = 0
        v1 = rs3("VALUE") + RS2("CHARITY")
        value = IIf(val(rs3("VALUE")) = 0, 0, val(rs3("value")))
        'Print #a,
        'print #a, Space(22) & Padr(rs3("description"), 48, " ")
         Print #a, Space(4) & Padr(rs3("description"), 38, " ") & Space(2) & Padl(rs3("packs"), 4, " ") & Space(4) & Padl(INF(rs3("nett_kgs"), 3), 8, " ") & Space(3) & Padl(Format(Rate, "#0.00"), 8, " ") & Space(2) & Padl(Format(value, "#0.00"), 14, " ")
         'Print #a,
        'Print #a,
        'Print #a,
        'Print #a,
        'Print #a,
        'Print #a, Space(15) & Space(48) & Space(45) & Padl(INF(v1, 2), 14, " ")
           
        'Print #a, Space(10) & Padl(rs3("packs"), 4, " ") & Space(5) & Padl(INF(rs3("nett_kgs"), 3), 8, " ") & Space(4) & Padl(INF(rs3("rate_ex"), 2), 12, " ") & Space(2); Space(2 + 5) & Padl(INF(rs3("value"), 2), 14, " ") & Space(4) & Padl(INF(v1, 2), 14, " ")
        'Print #a, Space(45) & "       Charity" & Space(1) & Padr(INF(rs2("CHARITY"), 2), 14, " ")
        i = 48
        Set UOMRS = New Recordset
        UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
        UOMRS.MoveFirst
        
        Set COMMODITY = New Recordset
        COMMODITY.Open "SELECT DESCRIPTION FROM IG_PRODUCTTYPE WHERE PRODUCT_TYPE='" & rs3("PRODUCT_TYPE") & "' ", Cnn, adOpenStatic
        COMMODITY.MoveFirst

        UNT = UOMRS("description")
        Set rs5 = New Recordset
        rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_invdt a,ig_product b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
                " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and " & _
                " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
                " and a.inv_no='" & RS2("inv_no") & "' and d.packchrg_wt=" & rs3("packchrg_wt") & " ", Cnn, adOpenStatic, adLockBatchOptimistic

        pack_no = " "
             
        tot1 = tot1 + value
        rs3.MoveNext
        ci = ci + 1
        rsb.MoveNext
    Loop
        
    For i = 1 To 5 - rs3.RecordCount
      Print #a,
    Next i
      
    
    
    t1 = 0
'    If ci <= 3 Then 'starting if for 1 to 3 items edited on 08-09-2005
'        If sno = 1 Then
'            Print #a,
'        End If
'    Else
'        If sno = 4 Then
'            Print #a,
'        End If
'    End If 'Closing if for items ranging 1 to 3 on 08-09-2005
        
'    If rsnot.RecordCount > 0 Then
'        Print #a, Space(18) & Padr(COMMODITY("DESCRIPTION"), 20, " ") & Space(14) & IIf(IsNull(rsnot("bed_per")), "0.00", Padl(rsnot("bed_per"), 5, " ")) & "% BED  " & Space(6) & Padl(INF(rs2("bed_amt"), 2), 14, " ")
'        Print #a, Space(18) & Padr(rsnot("tariffhead"), 12, " ") & Space(22) & Padl(rsnot("educess_per"), 5, " ") & "% EDU.CESS" & Space(3) & Padl(INF(rs2("educess_amt"), 2), 14, " ")
'    Else
'        Print #a, Space(18) & Padr(COMMODITY("DESCRIPTION"), 20, " ") & Space(14) & "CENVAT 8% ON AV" & Space(1) & Padl(INF(rs2("bed_amt"), 2), 14, " ")
'        Print #a, Space(18) & Space(12) & Space(22) & Space(5) & "           " & Space(1) & Padl(INF(rs2("aed_amt"), 2), 14, " ")
'    End If

                              
'    If rs("tax_per") <> Empty And rs("tax_per") <> "0" Then
'        ' *** Total AED & BED amt in Words ***
'        X = IIf(rs!bed_amt + rs!aed_amt = 0, " ", Replace(Num_To_Word(Round(rs!bed_amt + rs!aed_amt, 0)), "  ", " "))
'        X = Replace(X, "RUPEES ", "")
'        If Len(X) > 40 Then
'            If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
'                Print #a, Space(10) & Padr(Mid(X, 1, 40), 40, " ");
'                Print #a, Padr(Mid(X, 41, Len(X)), 40, " ")
'            Else
'                aa = Right(X, 8)
'                For j = 1 To 8
'                    If Mid(aa, j, 1) = " " Then
'                        Exit For
'                    End If
'                Next j
'                B = 40 - 8 + (j - 1)
'                Print #a, Space(10) & Padr(Mid(X, 1, B), 40, " ");
'                Print #a, Padr(Mid(X, B + 1, Len(X)), 40, " ")
'            End If
'        ElseIf Len(X) > 0 Then
'            Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 40, " ")
'        End If
'        If Len(X) = 0 Then
'            Print #a, Space(10)
'        End If
'    Else
'        X = rs("remarks")
'        If Len(X) > 70 Then
'            If Mid(X, 70, 1) = " " Or Mid(X, 71, 1) = " " Then
'                Print #a, Space(10) & Padr(Mid(X, 1, 70), 70, " ")
'                Print #a, Space(10) & Padr(Mid(X, 71, Len(X)), 70, " ")
'            Else
'                aa = Right(X, 8)
'                For j = 1 To 8
'                    If Mid(aa, j, 1) = " " Then
'                        Exit For
'                    End If
'                Next j
'                B = 80 - 8 + (j - 1)
'                Print #a, Space(10) & Padr(Mid(X, 1, B), 70, " ")
'                Print #a, Space(10) & Padr(Mid(X, B + 1, Len(X)), 70, " ")
'            End If
'        ElseIf Len(X) > 0 Then
'            Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 70, " ")
'        End If
'        If Len(X) = 0 Then
'            Print #a, Space(10)
'        End If
   'End If
    
    Set rsd = New Recordset
    'rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type,(d.case_rate) as case_rate ,d.packchrg_wt from ig_invdt a,ig_product b,ig_bodt d,IG_BOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,b.pack_type,d.packchrg_wt,case_rate ORDER BY A.product_code", cnn, adOpenStatic

    rsd.Open "select distinct a.product_code,'' as description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.Lottype,0 as case_rate ,d.IssKgs as packchrg_wt from RM_Cinvdt a,RM_lot b,RM_Issb d,RM_Issh E where D.DocNO=E.DocNO AND D.IssTYPE=E.IssTYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.LotNo and a.inv_no='" & RS2("inv_no") & "' and a.product_code=d.LotNo group by a.product_code,b.Lottype,d.IssKgs,a.rate_ex ORDER BY A.product_code", Cnn, adOpenStatic
   
   pack_no = ""
    Do While Not rsd.EOF
        If rs5.State = adStateOpen Then rs5.Close
        Set RS6 = New Recordset
        RS6.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,isnull(a.bo_no,'') as bo_no from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and a.bo_no='" & RS2("bo_no") & "' and INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", Cnn, adOpenStatic
        
        Set rs5 = New Recordset
        rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and c.INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "' and b.bo_no='" & RS2("bo_no") & "' order by b.lot_code", Cnn, adOpenStatic
        
        'pack_no = " "
        rs5.MoveFirst
        lot_des = ""
        lot_desc = ""
        GG = 1
        Dim pp As String
        pp = IIf(IsNull(rsd("printprefix") & ""), "", rsd("printprefix"))
        While Not rs5.EOF
        If rs5("spack_no") = rs5("epack_no") Then
            If pack_no = "" Then
                    pack_no = pp + CStr(rs5("spack_no"))
            Else
                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no"))
            End If
        Else
            If pack_no = "" Then
                    pack_no = pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
            Else
                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
            End If
        End If
        rs5.MoveNext
       Wend
     rsd.MoveNext
    Loop
        
'        While Not rs5.EOF
'            Set rs7 = New Recordset
'            rs7.Open "select pack_no from ig_packnos where bo_no not in ('" & rs2("bo_no") & "') and product_code='" & rs5("product_code") & "' and pack_year='" & rs5("pack_year") & "' and lot_code='" & rs5("ldesc") & "' and pack_no between '" & rs5("spack_no") & "' and '" & rs5("epack_no") & "' order by pack_no", cnn, adOpenStatic
'            Set rs8 = New Recordset
'            rs8.Open "select pack_no from ig_packnos where divcode='" & divcode & "' and pack_year='" & rs5("pack_year") & "' and product_code='" & rs5("product_code") & "' and lot_code='" & rs5("ldesc") & "' and bo_no='" & rs2("bo_no") & "' and pack_no between '" & rs5("spack_no") & "' and '" & rs5("epack_no") & "' order by pack_no", cnn, adOpenStatic
'
'            If pack_no = " " Then
'                If rs7.RecordCount = 0 Then
'                    If rs5("spack_no") = rs5("epack_no") Then
'                        pack_no = rsd("printprefix") & CStr(rs8("pack_no"))
'                    Else
'                        pack_no = rsd("printprefix") & CStr(rs5("spack_no")) + "-" + rsd("printprefix") & CStr(rs5("epack_no"))
'                    End If
'                ElseIf rs7.RecordCount > 0 Then
'                    cnt = rs8("pack_no") - 1
'                    pack_no = pack_no + "-" + CStr(cnt)
'                End If
'            Else
'                If rs7.RecordCount = 0 Then
'                    If rs5("spack_no") = rs5("epack_no") Then
'                        If Ct > 0 Then
'                            pack_no = pack_no + "," + CStr(Ct) + "," + rsd("printprefix") & CStr(rs5("spack_no"))
'                        Else
'                            pack_no = pack_no + "," + rsd("printprefix") & CStr(rs5("spack_no"))
'                        End If
'                    Else
'                        pack_no = pack_no + "," + rsd("printprefix") & CStr(rs5("spack_no")) + "-" + rsd("printprefix") & CStr(rs5("epack_no"))
'                    End If
'                    Ct = 0
'                ElseIf rs7.RecordCount > 0 Then
'                    cnt = rs7("pack_no") - 1
'                    Ct = rs7("pack_no") + 1
'                    pack_no = pack_no + "," + rsd("printprefix") & CStr(rs5("spack_no")) + "-" + CStr(cnt)
'                End If
'            End If
'
'            If rs5("ldesc") <> lot_Des Then
'                If GG = 1 Then
'                    lot_desc = rs5("ldesc")
'                Else
'                    lot_desc = lot_desc + " , " + rs5("ldesc")
'                End If
'                lot_Des = rs5("ldesc")
'            End If
'            GG = GG + 1
'            rs5.MoveNext
'        Wend
'       rsd.MoveNext
'    Loop
        pack_no1 = Mid$(pack_no, 1, 40)
        pack_no2 = Mid$(pack_no, 41, 80)
        pack_no3 = Mid$(pack_no, 81, 120)
        pack_no4 = Mid$(pack_no, 121, 160)
        pack_no5 = Mid$(pack_no, 161, 200)
             
'        tcnt = 0
'        'Print #a,
'        Print #a, Space(15) & Padr(lot_desc, 60, " ") + Chr(15)
'        If Len(pack_no1) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no1)), 132, " ")
'        End If
'        If Len(pack_no2) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no2)), 132, " ")
'        End If
'        If Len(pack_no3) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no3)), 132, " ")
'        End If
'        If Len(pack_no4) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no4)), 132, " ")
'        End If
'        If Len(pack_no5) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no5)), 132, " ")
'        End If
        

    Bed = IIf(IsNull(RSNOT("bed_per") Or RSNOT("bed_per") = 0), Padl("", 19, " "), Padl(RSNOT("bed_per"), 5, " ")) & Padl(INF(RS2("bed_amt"), 2), 14, " ")
    Print #a,
    Print #a, Space(73) & Padl(Format(tot1, "#0.00"), 14, " ")
    Print #a,
    'Print #a, Space(8) & Padr(Trim(CStr(pack_no1)), 33, " ") & Space(15) & IIf(IsNull(rsnot("bed_per") Or rsnot("bed_per") = 0), Padl("", 19, " "), Padl(rsnot("bed_per"), 5, " ")) & Padl(INF(rs2("bed_amt"), 2), 14, " ")
    Print #a, Space(3) & Padr(Trim(CStr(pack_no1)), 40, " ") & Space(17) & IIf(Bed = 0, " ", Bed)
    Print #a, Space(3) & Padr(Trim(CStr(pack_no2)), 40, " ")
    Print #a, Space(3) & Padr("", 35, " ") & Space(22) & IIf(IsNull(RS2("aed_amt")), " ", Padl(INF(RS2("aed_amt"), 2), 14, " "))
    'Print #a,
    'Print #a, Space(15) & Space(48) & Space(45) & Padl(rsnot("educess_per"), 5, " ")
    
        
    Set Rs = New Recordset
    Rs.Open "select distinct d.tax_per,d.lsc_per,c.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME,a.PONO,a.PODATE," & _
            " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,total_Amt,c.ordrefno," & _
            " c.ordredate,a.entdate,a.charity,A.REMARKS  from ig_invhd A,ig_bohd c,ig_invdt d where " & _
            " a.inv_no='" & RS2(0) & "' and a.date='" & Format(RS2("DATE"), "yyyy/mm/dd") & "' " & _
            " AND a.INV_TYPE='" & RS2("inv_type") & "' and a.inv_no=d.inv_no" & _
            " and a.inv_type=d.inv_type  and a.divcode=d.divcode  and" & _
            " a.DATE=c.DATE and a.divcode=c.divcode and a.bo_no=c.bo_no and a.inv_no=c.inv_no and a.cust_code=c.cust_code and a.divcode=d.divcode", Cnn, adOpenStatic
    
    
    'Print #a,
    X = Num_To_Word(Round(Rs("total_amt"), 0))
    tot3 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
    tot1 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!Charity
    totd = Rs!bed_amt + Rs!aed_amt + Rs!cess_amt
    If RSNOT.RecordCount > 0 Then
'        Print #a, Space(10) & Padr(rsnot("BED_NOTIFY"), 40, " ") & Space(2) & IIf(rsnot("CESS_PER") > 0, Padl(rsnot("CESS_PER"), 5, " ") & "%          ", Space(5) & "           ") & Space(2) & Padl(INF(rs("cess_amt"), 2), 14, " ")
'        Print #a, Space(10) & Padr(rsnot("AED_NOTIFY"), 40, " ")
'        Print #a, Space(70) & Padl(INF(tot1, 2), 14, " ")\
                  
          Print #a, Space(10) & IIf(totd > 0, Padl(totd, 14, " "), Padl("", 14, " ")) & Space(25) & IIf(RSNOT("CESS_PER") > 0, Padl(RSNOT("CESS_PER"), 5, " ") & " ", Space(5) & "    ") & Space(2) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
          'Print #a,
          'Print #a, Space(70) & Padl(INF(tot1, 2), 14, " ")
    Else
        'Print #a, Space(10) & Space(40) & Space(2) & Space(5) & "%          " & Space(2) & Padl(INF(rs("cess_amt"), 2), 14, " ")
        'Print #a, Space(10) & Space(40)
        'Print #a, Space(70) & Padl(INF(tot1, 2), 14, " ")
        Print #a, Space(10) & IIf(totd > 0, Padl(INF(totd, 2), 14, " "), Padl("", 14, " "))
    End If
     
    Print #a,
    Print #a,
    If Rs("tax_amt") <> Empty And Rs("tax_amt") <> "0" Then
        'Print #a, Space(10) & IIf(rs("tax_amt") > 0, Padl(INF(rs("tax_amt"), 2), 14, " "), Padl("", 14, " ")) & Space(25)
        Print #a, Space(62) & Padl(Rs("tax_per") & "", 3, " ") & Space(8) & Padl(INF(Rs("tax_amt"), 2), 14, " ")
    End If
'    If rs2("tax_amt") = Empty Or rs2("tax_amt") = 0 Then
'        Print #a, Space(50) & Padl("EXEMPTED  ", 10, " ")
'    End If
'    If rs("lsc_per") <> Empty And rs("lsc_per") <> "0" Then
'        Print #a, Space(53) & Padl(rs("lsc_per") & "%", 5, " ") & Space(12) & Padl(INF(rs("lsc_Amt"), 2), 14, " ")
'    Else
'        Print #a, Space(85)
'    End If
'
'    Print #a, Space(85)
'    Print #a, Space(70) & IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " "))
'    Print #a, Space(70) & IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " "))
'    Print #a, Space(85)
    If Rs("rnd_off") = 0 Then
        Print #a,
    Else
        Print #a, Space(77) & Padl(Format(Rs("rnd_off"), "0.00"), 14, " ")
    End If
    Print #a, Space(85)
    total_amt = IIf(val(Rs("total_amt")) = 0, 0, val(Rs("total_amt")))
    Print #a, Space(73) & Chr(27) + "E" & Padl(Format(total_amt, "#0.00"), 14, " ") & Chr(27) + "F"
    Print #a, Space(85)
    aa = "": b = 0:
    ' *** Total Invoice Value in Words and ***
    ' *** Triming more than one space      ***
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Space(22) + IIf(totd > 0, Padr(Trim(Mid$(Num_To_Word(CStr(totd)), 8, Len(Num_To_Word(CStr(totd))))), 65, " "), "")
    Print #a,
    Print #a, Space(22) + Padr(Trim(Mid$(Num_To_Word(CStr(Rs("total_amt"))), 8, Len(Num_To_Word(CStr(Rs("total_amt")))))), 65, " ")
    
'    If rs("remarks") <> "" Or rs("remarks") <> Null Then
'        'Print #a, Space(10) & Padr(rs("REMARKS"), 75, " ")
'    Else
'        Print #a,
'    End If
             
 '   Print #a, Space(74)
'
'    If rs("tax_per") <> Empty And rs("tax_per") <> "0" Then
'        ' *** Total AED & BED amt in Words ***
'        X = IIf(rs!bed_amt + rs!aed_amt = 0, " ", Replace(Num_To_Word(Round(rs!bed_amt + rs!aed_amt, 0)), "  ", " "))
'        X = Replace(X, "RUPEES ", "")
'        If Len(X) > 40 Then
'            If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
'                Print #a, Space(10) & Padr(Mid(X, 1, 40), 40, " ");
'                Print #a, Padr(Mid(X, 41, Len(X)), 40, " ")
'            Else
'                aa = Right(X, 8)
'                For j = 1 To 8
'                    If Mid(aa, j, 1) = " " Then
'                        Exit For
'                    End If
'                Next j
'                B = 40 - 8 + (j - 1)
'                Print #a, Space(10) & Padr(Mid(X, 1, B), 40, " ");
'                Print #a, Padr(Mid(X, B + 1, Len(X)), 40, " ")
'            End If
'        ElseIf Len(X) > 0 Then
'            Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 40, " ")
'        End If
'        If Len(X) = 0 Then
'            Print #a, Space(10)
'        End If
'    Else
'        X = rs("remarks")
'        If Len(X) > 70 Then
'            If Mid(X, 70, 1) = " " Or Mid(X, 71, 1) = " " Then
'                Print #a, Space(10) & Padr(Mid(X, 1, 70), 70, " ")
'                Print #a, Space(10) & Padr(Mid(X, 71, Len(X)), 70, " ")
'            Else
'                aa = Right(X, 8)
'                For j = 1 To 8
'                    If Mid(aa, j, 1) = " " Then
'                        Exit For
'                    End If
'                Next j
'                B = 80 - 8 + (j - 1)
'                Print #a, Space(10) & Padr(Mid(X, 1, B), 70, " ")
'                Print #a, Space(10) & Padr(Mid(X, B + 1, Len(X)), 70, " ")
'            End If
'        ElseIf Len(X) > 0 Then
'            Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 70, " ")
'        End If
'        If Len(X) = 0 Then
'            Print #a, Space(10)
'        End If
'    End If
'
'    Set rsd = New Recordset
'    rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type,(d.case_rate) as case_rate ,d.packchrg_wt from ig_invdt a,ig_product b,ig_bodt d,IG_BOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
'            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,b.pack_type,d.packchrg_wt,case_rate ORDER BY A.product_code", cnn, adOpenStatic
'
'    Do While Not rsd.EOF
'        If rs5.State = adStateOpen Then rs5.Close
'        Set rs6 = New Recordset
'        rs6.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,isnull(a.bo_no,'') as bo_no from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
'                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
'                " a.pack_no>=spack_no and a.pack_no<=epack_no and a.bo_no='" & rs2("bo_no") & "' and INV_no='" & rs2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", cnn, adOpenStatic
'
'        Set rs5 = New Recordset
'        rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
'                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
'                " a.pack_no>=spack_no and a.pack_no<=epack_no and INV_no='" & rs2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "' and a.bo_no='" & rs2("bo_no") & "' order by b.lot_code", cnn, adOpenStatic
'
'        pack_no = " "
'        rs5.MoveFirst
'        lot_Des = ""
'        lot_desc = ""
'        GG = 1
'
'        While Not rs5.EOF
'            Set rs7 = New Recordset
'            rs7.Open "select pack_no from ig_packnos where bo_no not in ('" & rs2("bo_no") & "') and product_code='" & rs5("product_code") & "' and pack_year='" & rs5("pack_year") & "' and lot_code='" & rs5("ldesc") & "' and pack_no between '" & rs5("spack_no") & "' and '" & rs5("epack_no") & "' order by pack_no", cnn, adOpenStatic
'            Set rs8 = New Recordset
'            rs8.Open "select pack_no from ig_packnos where divcode='" & divcode & "' and pack_year='" & rs5("pack_year") & "' and product_code='" & rs5("product_code") & "' and lot_code='" & rs5("ldesc") & "' and bo_no='" & rs2("bo_no") & "' and pack_no between '" & rs5("spack_no") & "' and '" & rs5("epack_no") & "' order by pack_no", cnn, adOpenStatic
'
'            If pack_no = " " Then
'                If rs7.RecordCount = 0 Then
'                    If rs5("spack_no") = rs5("epack_no") Then
'                        pack_no = CStr(rs8("pack_no"))
'                    Else
'                        pack_no = CStr(rs5("spack_no")) + "-" + CStr(rs5("epack_no"))
'                    End If
'                ElseIf rs7.RecordCount > 0 Then
'                    cnt = rs8("pack_no") - 1
'                    pack_no = pack_no + "-" + CStr(cnt)
'                End If
'            Else
'                If rs7.RecordCount = 0 Then
'                    If rs5("spack_no") = rs5("epack_no") Then
'                        If Ct > 0 Then
'                            pack_no = pack_no + "," + CStr(Ct) + "," + CStr(rs5("spack_no"))
'                        Else
'                            pack_no = pack_no + "," + CStr(rs5("spack_no"))
'                        End If
'                    Else
'                        pack_no = pack_no + "," + CStr(rs5("spack_no")) + "-" + CStr(rs5("epack_no"))
'                    End If
'                    Ct = 0
'                ElseIf rs7.RecordCount > 0 Then
'                    cnt = rs7("pack_no") - 1
'                    Ct = rs7("pack_no") + 1
'                    pack_no = pack_no + "," + CStr(rs5("spack_no")) + "-" + CStr(cnt)
'                End If
'            End If
'
'            If rs5("ldesc") <> lot_Des Then
'                If GG = 1 Then
'                    lot_desc = rs5("ldesc")
'                Else
'                    lot_desc = lot_desc + " , " + rs5("ldesc")
'                End If
'                lot_Des = rs5("ldesc")
'            End If
'            GG = GG + 1
'            rs5.MoveNext
'        Wend
'
'        pack_no1 = Mid$(pack_no, 1, 132)
'        pack_no2 = Mid$(pack_no, 133, 264)
'        pack_no3 = Mid$(pack_no, 264, 396)
'        pack_no4 = Mid$(pack_no, 397, 528)
'        pack_no5 = Mid$(pack_no, 529, 660)
'
'        tcnt = 0
'        'Print #a,
'        Print #a, Space(15) & Padr(lot_desc, 60, " ") + Chr(15)
'        If Len(pack_no1) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no1)), 132, " ")
'        End If
'        If Len(pack_no2) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no2)), 132, " ")
'        End If
'        If Len(pack_no3) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no3)), 132, " ")
'        End If
'        If Len(pack_no4) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no4)), 132, " ")
'        End If
'        If Len(pack_no5) > 0 Then
'            tcnt = tcnt + 1
'            Print #a, Space(8) & Padr(Trim(CStr(pack_no5)), 132, " ")
'        End If
'        rsd.MoveNext
'    Loop
             
'    If tcnt = 1 Then
'        Print #a,
'        Print #a,
'        Print #a,
'        Print #a,
'    End If
'    If tcnt = 2 Then
'        Print #a,
'        Print #a,
'        Print #a,
'    End If
'    If tcnt = 3 Then
'        Print #a,
'        Print #a,
'    End If
'    If tcnt = 4 Then
'        Print #a,
'    End If
    
    Print #a, Chr(18)
 
    Print #a, Space(66) & Format(RS2("REM_TIME"), "HH:MM")
    Print #a,
    Print #a, Space(66) & Format(RS2("PRE_TIME"), "HH:MM") '& Space(7) & Format(rs2("REM_TIME"), "HH:MM")
    Print #a, Space(12) & Format(RS2("DATE"), "DD/MM/YY") '& Space(4) & Format(rs2("DATE"), "DD/MM/YY")
    'Print #a, Space(12) & rs1("City")
    RS2.MoveNext
    k = k + 1
    Print #a,
    Print #a,
    Print #a, Chr(12)
Loop
Close #a
a = FreeFile
'Open "C:\PPINV.BAT" For Output As #a
'Print #a, "CD\"
'Print #a, "C:"
'Print #a, "CD\"
'Print #a, "type PPINV.TXT> PRN"
'Close
'RPTV.txtfile = "C:\PPINV.TXT"
'RPTV.Batfile = "C:\PPINV.BAT"
Call KALBATPROCESS("PPINV")
ER1:
    If err.Number = 3021 Then
        MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
Exit Sub
Inv_PrePrintFormNEW_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Inv_PrePrintFormNEW of Form CottonInvoice", vbInformation, head

End Sub


