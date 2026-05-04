VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form Invoice 
   Caption         =   "Waste Invoice"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9540
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   9540
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame4 
      BorderStyle     =   0  'None
      Height          =   3615
      Left            =   120
      TabIndex        =   32
      Top             =   870
      Width           =   9255
      Begin TabDlg.SSTab SSTab3 
         Height          =   3570
         Left            =   6810
         TabIndex        =   83
         Top             =   0
         Width           =   2430
         _ExtentX        =   4286
         _ExtentY        =   6297
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   " "
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame5"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame5 
            Enabled         =   0   'False
            Height          =   3375
            Left            =   60
            TabIndex        =   84
            Top             =   60
            Width           =   2295
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
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   99
               Text            =   " "
               Top             =   2466
               Width           =   1095
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
               TabIndex        =   97
               Text            =   " "
               Top             =   2880
               Width           =   1095
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
               TabIndex        =   95
               Text            =   " "
               Top             =   2085
               Width           =   1095
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
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   93
               Text            =   " "
               Top             =   1704
               Width           =   1095
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
               TabIndex        =   91
               Text            =   " "
               Top             =   1323
               Width           =   1095
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
               TabIndex        =   89
               Text            =   " "
               Top             =   942
               Width           =   1095
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
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   87
               Text            =   " "
               Top             =   561
               Width           =   1095
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
               Height          =   330
               Index           =   40
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   85
               Text            =   " "
               Top             =   210
               Width           =   1095
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Others"
               Height          =   195
               Index           =   9
               Left            =   90
               TabIndex        =   100
               Top             =   2535
               Width           =   465
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Invoice Amt."
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
               Index           =   8
               Left            =   90
               TabIndex        =   98
               Top             =   2925
               Width           =   1080
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Index           =   7
               Left            =   90
               TabIndex        =   96
               Top             =   2153
               Width           =   270
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "AED"
               Height          =   195
               Index           =   6
               Left            =   90
               TabIndex        =   94
               Top             =   1772
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "BED"
               Height          =   195
               Index           =   5
               Left            =   90
               TabIndex        =   92
               Top             =   1391
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   4
               Left            =   90
               TabIndex        =   90
               Top             =   1010
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   3
               Left            =   90
               TabIndex        =   88
               Top             =   629
               Width           =   480
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Assable Val."
               Height          =   195
               Index           =   2
               Left            =   90
               TabIndex        =   86
               Top             =   248
               Width           =   870
            End
         End
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   3585
         Left            =   90
         TabIndex        =   33
         Top             =   0
         Width           =   6735
         _ExtentX        =   11880
         _ExtentY        =   6324
         _Version        =   393216
         Tabs            =   4
         TabsPerRow      =   4
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   "&Customer"
         TabPicture(0)   =   "Invoice.frx":0000
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "&Tax/Duty"
         TabPicture(1)   =   "Invoice.frx":001C
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame3"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "C&arrier"
         TabPicture(2)   =   "Invoice.frx":0038
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame2"
         Tab(2).ControlCount=   1
         TabCaption(3)   =   "&Others"
         TabPicture(3)   =   "Invoice.frx":0054
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Frame7"
         Tab(3).ControlCount=   1
         Begin VB.Frame Frame3 
            Height          =   3075
            Left            =   -74880
            TabIndex        =   34
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
               Left            =   2970
               TabIndex        =   103
               Top             =   2610
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
               Left            =   4590
               TabIndex        =   102
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
               ItemData        =   "Invoice.frx":0070
               Left            =   660
               List            =   "Invoice.frx":007A
               Style           =   2  'Dropdown List
               TabIndex        =   52
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
               Left            =   2970
               MaxLength       =   5
               TabIndex        =   51
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
               TabIndex        =   50
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
               ItemData        =   "Invoice.frx":008B
               Left            =   660
               List            =   "Invoice.frx":0095
               Style           =   2  'Dropdown List
               TabIndex        =   49
               Top             =   593
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
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   48
               Top             =   3120
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
               Left            =   2970
               MaxLength       =   11
               TabIndex        =   47
               Top             =   585
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
               ItemData        =   "Invoice.frx":00A6
               Left            =   660
               List            =   "Invoice.frx":00B0
               Style           =   2  'Dropdown List
               TabIndex        =   46
               Top             =   998
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
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   45
               Top             =   3285
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
               Left            =   2970
               MaxLength       =   11
               TabIndex        =   44
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
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   43
               Top             =   3660
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
               Left            =   2970
               MaxLength       =   11
               TabIndex        =   42
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
               ItemData        =   "Invoice.frx":00C1
               Left            =   660
               List            =   "Invoice.frx":00CB
               Style           =   2  'Dropdown List
               TabIndex        =   41
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
               TabIndex        =   40
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
               Left            =   2970
               MaxLength       =   11
               TabIndex        =   39
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
               TabIndex        =   38
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
               Left            =   2970
               MaxLength       =   11
               TabIndex        =   37
               Top             =   2205
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
               TabIndex        =   36
               Top             =   3300
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
               TabIndex        =   35
               Top             =   3300
               Visible         =   0   'False
               Width           =   2535
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Insurance %"
               Height          =   195
               Index           =   12
               Left            =   1950
               TabIndex        =   105
               Top             =   2678
               Width           =   870
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   11
               Left            =   3900
               TabIndex        =   104
               Top             =   2678
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Height          =   195
               Index           =   7
               Left            =   2640
               TabIndex        =   65
               Top             =   285
               Width           =   45
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   8
               Left            =   180
               TabIndex        =   64
               Top             =   248
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess %"
               Height          =   195
               Index           =   11
               Left            =   1950
               TabIndex        =   63
               Top             =   248
               Width           =   510
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   12
               Left            =   3900
               TabIndex        =   62
               Top             =   248
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   13
               Left            =   180
               TabIndex        =   61
               Top             =   653
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity "
               Height          =   195
               Index           =   14
               Left            =   1950
               TabIndex        =   60
               Top             =   653
               Width           =   525
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Duty"
               Height          =   195
               Index           =   16
               Left            =   180
               TabIndex        =   59
               Top             =   1058
               Width           =   330
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   17
               Left            =   1950
               TabIndex        =   58
               Top             =   1058
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   19
               Left            =   1950
               TabIndex        =   57
               Top             =   1463
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Index           =   21
               Left            =   210
               TabIndex        =   56
               Top             =   1868
               Width           =   270
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   22
               Left            =   1950
               TabIndex        =   55
               Top             =   1868
               Width           =   315
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Surcharage"
               Height          =   195
               Index           =   24
               Left            =   1950
               TabIndex        =   54
               Top             =   2273
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   26
               Left            =   1950
               TabIndex        =   53
               Top             =   3375
               Visible         =   0   'False
               Width           =   315
            End
         End
         Begin VB.Frame Frame7 
            Height          =   3075
            Left            =   -74880
            TabIndex        =   134
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
               TabIndex        =   167
               Top             =   2274
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
               TabIndex        =   162
               Top             =   1925
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
               TabIndex        =   161
               Top             =   1227
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
               TabIndex        =   160
               Top             =   529
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
               TabIndex        =   148
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
               TabIndex        =   147
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
               TabIndex        =   146
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
               TabIndex        =   145
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
               TabIndex        =   144
               Top             =   878
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
               Left            =   1710
               MaxLength       =   8
               TabIndex        =   143
               Top             =   878
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
               TabIndex        =   142
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
               TabIndex        =   141
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
               TabIndex        =   140
               Top             =   1576
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
               Left            =   1740
               MaxLength       =   8
               TabIndex        =   139
               Top             =   1576
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
               TabIndex        =   138
               Top             =   1576
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
               TabIndex        =   137
               Top             =   1925
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
               Left            =   4590
               Locked          =   -1  'True
               TabIndex        =   136
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
               TabIndex        =   135
               Top             =   2625
               Width           =   1815
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Freight/Pack"
               Height          =   195
               Index           =   17
               Left            =   135
               TabIndex        =   168
               Top             =   2342
               Width           =   930
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "PLA No."
               Height          =   195
               Index           =   13
               Left            =   150
               TabIndex        =   159
               Top             =   248
               Width           =   600
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   15
               Left            =   3600
               TabIndex        =   158
               Top             =   248
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " AED "
               Height          =   195
               Index           =   18
               Left            =   3555
               TabIndex        =   157
               Top             =   597
               Width           =   420
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23A No."
               Height          =   195
               Index           =   15
               Left            =   150
               TabIndex        =   156
               Top             =   946
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   20
               Left            =   3555
               TabIndex        =   155
               Top             =   946
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   23
               Left            =   3600
               TabIndex        =   154
               Top             =   1295
               Width           =   375
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23C No."
               Height          =   195
               Index           =   14
               Left            =   150
               TabIndex        =   153
               Top             =   1644
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   25
               Left            =   3555
               TabIndex        =   152
               Top             =   1644
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   31
               Left            =   3600
               TabIndex        =   151
               Top             =   1993
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Freight"
               Height          =   195
               Index           =   28
               Left            =   150
               TabIndex        =   150
               Top             =   2693
               Width           =   480
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Round off"
               Height          =   195
               Index           =   32
               Left            =   3660
               TabIndex        =   149
               Top             =   2693
               Width           =   705
            End
         End
         Begin VB.Frame Frame2 
            Height          =   3075
            Left            =   -74880
            TabIndex        =   111
            Top             =   360
            Width           =   6495
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "LR_DATE"
               Height          =   225
               Index           =   3
               Left            =   5040
               TabIndex        =   116
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
               TabIndex        =   115
               Top             =   870
               Width           =   1815
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
               TabIndex        =   114
               Top             =   510
               Width           =   1815
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
               TabIndex        =   120
               Top             =   2310
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
               TabIndex        =   117
               Top             =   1230
               Width           =   2055
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
               TabIndex        =   119
               Top             =   1830
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
               TabIndex        =   113
               Top             =   150
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
               Left            =   2520
               TabIndex        =   112
               Top             =   150
               Width           =   3825
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
               TabIndex        =   121
               Top             =   1590
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
               TabIndex        =   123
               Top             =   1950
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
               TabIndex        =   125
               Top             =   2310
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
               TabIndex        =   127
               Top             =   2670
               Width           =   2955
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "are_date"
               Height          =   225
               Index           =   1
               Left            =   5040
               TabIndex        =   118
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
               Left            =   4950
               TabIndex        =   122
               Top             =   1245
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   22020097
               CurrentDate     =   37211
            End
            Begin MSComCtl2.DTPicker DTPicker1 
               Height          =   315
               Index           =   3
               Left            =   4950
               TabIndex        =   165
               Top             =   870
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   22020097
               CurrentDate     =   37211
            End
            Begin VB.Line Line2 
               X1              =   4530
               X2              =   6480
               Y1              =   1590
               Y2              =   1590
            End
            Begin VB.Line Line1 
               X1              =   4530
               X2              =   4530
               Y1              =   1590
               Y2              =   3090
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   34
               Left            =   3870
               TabIndex        =   166
               Top             =   930
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "LR Number "
               Height          =   195
               Index           =   30
               Left            =   60
               TabIndex        =   133
               Top             =   930
               Width           =   855
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Vehicle Number"
               Height          =   195
               Index           =   44
               Left            =   60
               TabIndex        =   132
               Top             =   600
               Width           =   1125
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Rem Time"
               Height          =   195
               Index           =   1
               Left            =   4560
               TabIndex        =   131
               Top             =   2340
               Width           =   720
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Prep. Time"
               Height          =   195
               Index           =   10
               Left            =   4560
               TabIndex        =   130
               Top             =   1875
               Width           =   765
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Carrier"
               Height          =   195
               Index           =   27
               Left            =   60
               TabIndex        =   129
               Top             =   195
               Width           =   450
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "ARE No."
               Height          =   195
               Index           =   0
               Left            =   60
               TabIndex        =   128
               Top             =   1305
               Width           =   630
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   30
               Left            =   3870
               TabIndex        =   126
               Top             =   1305
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Consignee Addr."
               Height          =   195
               Index           =   16
               Left            =   60
               TabIndex        =   124
               Top             =   1725
               Width           =   1170
            End
         End
         Begin VB.Frame Frame1 
            Height          =   3135
            Left            =   120
            TabIndex        =   66
            Top             =   360
            Width           =   6495
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
               TabIndex        =   25
               Top             =   2782
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
               TabIndex        =   12
               Top             =   150
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
               TabIndex        =   11
               Top             =   150
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
               TabIndex        =   14
               TabStop         =   0   'False
               Top             =   150
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
               TabIndex        =   13
               TabStop         =   0   'False
               Top             =   150
               Width           =   645
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "BO_No"
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
               TabIndex        =   17
               Top             =   523
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
               TabIndex        =   18
               Top             =   897
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
               TabIndex        =   71
               Top             =   897
               Width           =   4065
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
               TabIndex        =   19
               Top             =   1278
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
               Left            =   2280
               MaxLength       =   50
               TabIndex        =   70
               Top             =   1278
               Width           =   4065
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
               TabIndex        =   20
               Top             =   1659
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
               Left            =   2280
               MaxLength       =   50
               TabIndex        =   69
               Top             =   1659
               Width           =   4065
            End
            Begin VB.TextBox txtFields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "bo_TYPE"
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
               MaxLength       =   2
               TabIndex        =   16
               Top             =   523
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
               ItemData        =   "Invoice.frx":00DC
               Left            =   1125
               List            =   "Invoice.frx":00E9
               Style           =   2  'Dropdown List
               TabIndex        =   21
               Top             =   2040
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
               TabIndex        =   22
               Top             =   2032
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
               Left            =   2250
               MaxLength       =   50
               TabIndex        =   67
               Top             =   2406
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
               Left            =   1125
               MaxLength       =   6
               TabIndex        =   23
               Top             =   2406
               Width           =   1095
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "date"
               Height          =   225
               Index           =   0
               Left            =   1170
               TabIndex        =   15
               Top             =   576
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
               TabIndex        =   72
               Top             =   531
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   22020097
               CurrentDate     =   37211
            End
            Begin VB.TextBox txtFields 
               DataField       =   "BANK_CODE"
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   48
               Left            =   3885
               MaxLength       =   6
               TabIndex        =   68
               Top             =   2070
               Width           =   1065
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "DELIVERY_DT"
               Height          =   225
               Index           =   2
               Left            =   1125
               TabIndex        =   24
               Top             =   2835
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   397
               _Version        =   393216
               BorderStyle     =   0
               BackColor       =   16777152
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
               TabIndex        =   106
               Top             =   2790
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   22020097
               CurrentDate     =   37211
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Credit days"
               Height          =   195
               Index           =   33
               Left            =   3960
               TabIndex        =   110
               Top             =   2850
               Width           =   780
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Delivery Date"
               Height          =   195
               Index           =   32
               Left            =   120
               TabIndex        =   107
               Top             =   2850
               Width           =   960
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Invoice"
               Height          =   195
               Index           =   0
               Left            =   120
               TabIndex        =   82
               Top             =   218
               Width           =   525
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "CEX Invoice"
               Height          =   195
               Index           =   1
               Left            =   3270
               TabIndex        =   81
               Top             =   218
               Width           =   885
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   2
               Left            =   120
               TabIndex        =   80
               Top             =   591
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bale Order No."
               Height          =   195
               Index           =   3
               Left            =   3270
               TabIndex        =   79
               Top             =   591
               Width           =   1050
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Customer"
               Height          =   195
               Index           =   4
               Left            =   120
               TabIndex        =   78
               Top             =   965
               Width           =   660
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Agent"
               Height          =   195
               Index           =   5
               Left            =   120
               TabIndex        =   77
               Top             =   1346
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Broker"
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   76
               Top             =   1727
               Width           =   465
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Pay Mode"
               Height          =   195
               Index           =   9
               Left            =   120
               TabIndex        =   75
               Top             =   2100
               Width           =   720
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bank"
               Height          =   195
               Index           =   10
               Left            =   3390
               TabIndex        =   74
               Top             =   2100
               Width           =   405
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Despatch To"
               Height          =   195
               Index           =   29
               Left            =   120
               TabIndex        =   73
               Top             =   2474
               Width           =   930
            End
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   26
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":011E
         Height          =   550
         Index           =   8
         Left            =   3675
         Picture         =   "Invoice.frx":0568
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         DownPicture     =   "Invoice.frx":08CA
         Height          =   550
         Index           =   10
         Left            =   4725
         Picture         =   "Invoice.frx":0BD4
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":0F50
         Height          =   550
         Index           =   9
         Left            =   4200
         Picture         =   "Invoice.frx":125A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Invoice.frx":15FC
         Height          =   550
         Index           =   11
         Left            =   5250
         Picture         =   "Invoice.frx":1A46
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":1DDB
         Height          =   550
         Index           =   7
         Left            =   3150
         Picture         =   "Invoice.frx":2225
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":2575
         Height          =   550
         Index           =   1
         Left            =   525
         Picture         =   "Invoice.frx":287F
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":2BF9
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
         Left            =   1050
         Picture         =   "Invoice.frx":2F03
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":329F
         Height          =   550
         Index           =   5
         Left            =   2100
         Picture         =   "Invoice.frx":36E9
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":3A4E
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "Invoice.frx":3D58
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":40EB
         Height          =   550
         Index           =   6
         Left            =   2625
         Picture         =   "Invoice.frx":4535
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Invoice.frx":4882
         Height          =   550
         Index           =   4
         Left            =   1575
         Picture         =   "Invoice.frx":4B8C
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   7725
         TabIndex        =   28
         Top             =   268
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
         Left            =   6195
         TabIndex        =   27
         Top             =   268
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   29
      Top             =   6420
      Width           =   9540
      _ExtentX        =   16828
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
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
            TextSave        =   "28/11/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10:59 AM"
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
      Height          =   1770
      Left            =   210
      TabIndex        =   30
      Top             =   4500
      Width           =   9150
      _ExtentX        =   16140
      _ExtentY        =   3122
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Invoice.frx":4F21
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   1575
         Left            =   210
         TabIndex        =   101
         Top             =   90
         Width           =   8850
         _ExtentX        =   15610
         _ExtentY        =   2778
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
   Begin VB.Timer Timer1 
      Interval        =   800
      Left            =   3060
      Top             =   2130
   End
   Begin VB.Frame Frame6 
      Height          =   5370
      Left            =   150
      TabIndex        =   108
      Top             =   870
      Visible         =   0   'False
      Width           =   9180
      Begin listacx.codelist Ksldesc1 
         Height          =   3345
         Left            =   780
         TabIndex        =   169
         Top             =   660
         Width           =   7275
         _ExtentX        =   12832
         _ExtentY        =   5900
         caption         =   ""
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   660
         Left            =   3075
         Style           =   1  'Graphical
         TabIndex        =   164
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4740
         Style           =   1  'Graphical
         TabIndex        =   163
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
         TabIndex        =   109
         Top             =   120
         Width           =   9105
      End
   End
   Begin VB.Frame Frame8 
      Height          =   3390
      Left            =   720
      TabIndex        =   170
      Top             =   960
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
         Left            =   2325
         TabIndex        =   175
         Top             =   1770
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
         Left            =   2325
         TabIndex        =   174
         Top             =   1335
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
         Left            =   2325
         TabIndex        =   173
         Top             =   900
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
         TabIndex        =   172
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
         TabIndex        =   171
         Top             =   2550
         Width           =   1110
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         BorderWidth     =   2
         Height          =   2745
         Left            =   60
         Top             =   600
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
         TabIndex        =   176
         Top             =   150
         Width           =   5670
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Invoice"
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
      Left            =   180
      TabIndex        =   31
      Top             =   570
      Width           =   1770
   End
End
Attribute VB_Name = "Invoice"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim WithEvents adoPrimaryRs As Recordset
'Dim rate As Double
'Dim ADOSECONDARYRS, QryRS As Recordset
'Dim RS, RS1, rs2 As Recordset
'Dim DB As Connection
'Dim Opt, STFLAG As String
'Dim St, st1, st2 As String
'Dim ITARY() As String
'Dim cou, COL As Integer
'Dim cou1, c As Integer
'Dim FLG As String
'Dim rep As Report.ReportView
'Dim a, B As Integer
'Dim XX As Integer
'Dim str As String
'Dim rf As String
'Dim ex1, ex As Double
'
'Dim docNo As String
'Dim SCPer, STPer, AEDPer, BEDPer, CESSPer, CHARPer, INVSNO  As Integer
'Dim errflg, CHFLG, CESSFLG, DUTYFLG, TAXFLG As Boolean
'Dim NettRExR, NettR, ExR, PackNo, invamt, DBED, DAED, Charity, cess, Bed, Aed, Tax, SurCharge, Insur, Rndoff, Assval, TotAmt As Double
'
'Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'If Not adoPrimaryRs.EOF And Not adoPrimaryRs.BOF Then
'    MaskEdBox1(0).Text = IIf(IsNull(adoPrimaryRs("DaTe")), "__/__/____", Format(adoPrimaryRs("date"), "DD/MM/YYYY"))
'    MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRs("DELIVERY_DT")), "__/__/____", Format(adoPrimaryRs("DELIVERY_DT"), "DD/MM/YYYY"))
'    MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRs("ARE_DATE")), "__/__/____", Format(adoPrimaryRs("ARE_DATE"), "DD/MM/YYYY"))
'    MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRs("LR_DATE")), "__/__/____", Format(adoPrimaryRs("LR_DATE"), "DD/MM/YYYY"))
'    If adoPrimaryRs("pay_mode") = "D" Then
'            Combo1(0).ListIndex = 0
'    ElseIf adoPrimaryRs("pay_mode") = "A" Then
'            Combo1(0).ListIndex = 1
'    Else
'            Combo1(0).ListIndex = 2
'    End If
'    stbar.Panels(2).Text = "Record " & adoPrimaryRs.RecordCount & " of " & adoPrimaryRs.AbsolutePosition
'End If
'End Sub
'
'Private Sub BUTTON_Click(Index As Integer)
'Select Case Index
'Case 0
''Addition
'     Opt = "add"
'     desc.Caption = "Addition"
'     CHFLG = False
'     CESSFLG = False
'     DUTYFLG = False
'     TAXFLG = False
'     errflg = False
'     Dim c As Control
'     SSTab1.Enabled = True
'
'     For Each c In Me.Controls
'        If TypeOf c Is TextBox Then
'           c.Text = ""
'        End If
'     Next
'     SSTab1.Tab = 0
'     Screen.MousePointer = 11
'     desc.Caption = "Addition"
'     stbar.Panels(2).Text = "Addition"
'     DB.BeginTrans
'     Set adoPrimaryRs = New Recordset
'     Set ADOSECONDARYRS = New Recordset
'     adoPrimaryRs.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,entdate,user_id from IG_RINVHD where divcode = '" & divcode & "'", DB, adOpenStatic, adLockOptimistic
'     adoPrimaryRs.AddNew
'     Call bindcontls
'     ReDim ITARY(100, 0)
'     ADOSECONDARYRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO  FROM IG_RINVDT where divcode = '" & divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
'     Set grddatagrid.DataSource = ADOSECONDARYRS
'     Call gridalign
'     MaskEdBox1(0).Text = pdate
'     DTPicker1(0).value = pdate
'     MaskEdBox1(2).Text = pdate
'     DTPicker1(2).value = pdate
'     txtFields(36).Text = Mid$(Time, 1, 8)
'     txtFields(37).Text = Mid$(Time, 1, 8)
'     txtFields(15).Text = "0.05"
'     'adoSecondaryRS.AddNew
'     grddatagrid.AllowAddNew = True
'     grddatagrid.AllowUpdate = True
'     Call ENABLCONTLS
'     Call adddelmod(BUTTON)
'     txtFields(0).SetFocus
'     Screen.MousePointer = 0
'
'Case 1 'mod
'    If Record_Exists("IG_RINVHD A WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
'        BUTTON_Click (10)
'        Exit Sub
'    End If
'    SSTab1.Enabled = True
'    Opt = "mod"
'    errflg = False
'    desc.Caption = "Modification"
'    DB.BeginTrans
'    Buttonframe.Enabled = False
'    listlb.Caption = "Invoice Listing"
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "IG_RINVHD A WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)"
'    Ksldesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
'    Ksldesc1.listfield2 = "H.inv_no"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'    Call adddelmod(BUTTON)
'    Call gridalign
'    Call ModLock
'    txtFields(61).Locked = False
'    txtFields(62).Locked = False
'    txtFields(63).Locked = False
'    txtFields(64).Locked = False
'
'Case 2 'DEL
'    If Record_Exists("IG_RINVHD H WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE H.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
'    BUTTON_Click (10)
'    Exit Sub
'    End If
'    Opt = "del"
'    desc.Caption = "Deletion"
'    DB.BeginTrans
'    errflg = False
'    listlb.Caption = "Invoice Listing"
'    Buttonframe.Enabled = False
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "IG_RINVHD H WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE H.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)"
'    Ksldesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
'    Ksldesc1.listfield2 = "H.inv_no"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'    Call adddelmod(BUTTON)
'    Call gridalign
'
'Case 4 'Find
'    If Record_Exists("IG_RINVHD H", "Invoice Not Found") = False Then
'    BUTTON_Click (10)
'    Exit Sub
'    End If
'    Opt = "qry"
'    desc.Caption = "Find"
'    errflg = False
'    listlb.Caption = "Invoice Listing"
'    Buttonframe.Enabled = False
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "IG_RINVHD H"
'    Ksldesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
'    Ksldesc1.listfield2 = "H.inv_no"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'    Call gridalign
'
'Case 5
''First
'         desc.Caption = "Query"
'         On Error GoTo GoFirstError
'         Set RS = New Recordset
'         RS.Open "SELECT  TOP 1 INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' GROUP BY INV_TYPE,INV_NO,DATE ORDER BY DATE ,INV_NO,INV_TYPE", DB
'         Call query_mode(CStr(RS(0)), CStr(RS(1)))
'         QryRS.MoveFirst
'         BUTTON(5).Enabled = False
'         BUTTON(7).Enabled = False
'         BUTTON(6).Enabled = True
'         BUTTON(8).Enabled = True
'         stbar.Panels(2).Text = "First Record"
'         Exit Sub
'GoFirstError:
'
'Case 6
''Next
'            desc.Caption = "Query"
'            On Error GoTo GoNextError
'            Set RS = New Recordset
'            RS.Open "SELECT INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE='" & txtFields(0) & "' AND INV_NO='" & Mid$(txtFields(1).Text, 1, 2) & Padl(Mid$(txtFields(1).Text, 3, 8) + 1, 6, "0") & "'", DB
'            If RS.EOF Then
'                If Not QryRS.EOF Then
'                    QryRS.MoveNext
'                    Set RS = New Recordset
'                    RS.Open "SELECT  TOP 1 INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE ='" & QryRS(0) & "'  GROUP BY INV_TYPE,INV_NO,DATE ORDER BY DATE ,INV_NO", DB
'                    Call query_mode(CStr(RS(0)), CStr(RS(1)))
'                End If
'            Else
'                    Call query_mode(CStr(RS(0)), CStr(RS(1)))
'            End If
'            If Not QryRS.EOF Then
'                BUTTON(5).Enabled = True
'                BUTTON(7).Enabled = True
'                BUTTON(6).Enabled = True
'                BUTTON(8).Enabled = True
'            Else
'                Beep
'                BUTTON(6).Enabled = False
'                BUTTON(8).Enabled = False
'                BUTTON(5).Enabled = True
'                BUTTON(7).Enabled = True
'            End If
'            Exit Sub
'GoNextError:
'
'Case 7
' 'Previous
'        desc.Caption = "Query"
'        On Error GoTo GoPrevError
'            Set RS = New Recordset
'            RS.Open "SELECT INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE='" & txtFields(0) & "' AND INV_NO='" & Mid$(txtFields(1).Text, 1, 2) & Padl(Mid$(txtFields(1).Text, 3, 8) - 1, 6, "0") & "'", DB
'            If RS.EOF Then
'                If Not QryRS.BOF Then
'                    QryRS.MovePrevious
'                    Set RS = New Recordset
'                    RS.Open "SELECT  TOP 1 INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE ='" & QryRS(0) & "'  GROUP BY INV_TYPE,INV_NO,DATE ORDER BY DATE ,INV_NO", DB
'                    Call query_mode(CStr(RS(0)), CStr(RS(1)))
'                End If
'            Else
'                    Call query_mode(CStr(RS(0)), CStr(RS(1)))
'            End If
'        If Not QryRS.BOF Then
'            BUTTON(5).Enabled = True
'            BUTTON(7).Enabled = True
'            BUTTON(6).Enabled = True
'            BUTTON(8).Enabled = True
'        Else
'            Beep
'            BUTTON(5).Enabled = False
'            BUTTON(7).Enabled = False
'            BUTTON(6).Enabled = True
'            BUTTON(8).Enabled = True
'        End If
'        Exit Sub
'
'GoPrevError:
'
'Case 8
''Last
'         desc.Caption = "Query"
'         On Error GoTo GoLastError
'         Set RS = New Recordset
'         RS.Open "SELECT TOP 1 INV_TYPE,INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' GROUP BY INV_TYPE,INV_NO,DATE ORDER BY DATE,INV_NO,INV_TYPE DESC", DB
'         Set QryRS = New Recordset
'         QryRS.Open "SELECT DISTINCT INV_TYPE FROM IG_RINVHD WHERE DIVCODE='" & divcode & "'", DB
'         QryRS.MoveLast
'         Call query_mode(CStr(RS(0)), CStr(RS(1)))
'         Call las(BUTTON)
'         stbar.Panels(2).Text = "Last Record"
'         Exit Sub
'GoLastError:
'
'
'
'Case 9
''SAVE
'    If Opt = "add" Then
'        ADOSECONDARYRS.MoveFirst
'        Do While Not ADOSECONDARYRS.EOF
'            If grddatagrid.Columns(6).Text = "" Then
'                ADOSECONDARYRS.Delete
'            Else
'                ADOSECONDARYRS("DIVCODE") = divcode
'                ADOSECONDARYRS("INV_TYPE") = txtFields(0).Text
'                ADOSECONDARYRS("INV_NO") = txtFields(1).Text
'                ADOSECONDARYRS("INVSNO") = INSNO + 1
'                ADOSECONDARYRS("Cont No.") = IIf(IsNull(ADOSECONDARYRS("Cont No.")), " ", ADOSECONDARYRS("Cont No."))
'                ADOSECONDARYRS("Cont Type") = IIf(IsNull(ADOSECONDARYRS("Cont Type")), " ", ADOSECONDARYRS("Cont Type"))
'            End If
'            ADOSECONDARYRS.MoveNext
'        Loop
'            Call INVCALC
'            DBED = 0
'            DAED = 0
'        If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
'            DBED = Val(txtFields(51).Text) + Val(txtFields(55).Text) + Val(txtFields(59).Text)
'            If Not Val(txtFields(43)) = Val(DBED) Then
'                MsgBox "B.E.D Amount Not Tally", vbInformation, head
'                txtFields(34).SetFocus
'                Exit Sub
'            End If
'            DAED = Val(txtFields(52).Text) + Val(txtFields(56).Text) + Val(txtFields(60).Text)
'            If Not (Val(txtFields(44)) = Val(DAED)) Then
'                MsgBox "A.E.D Amount Not Tally", vbInformation, head
'                txtFields(34).SetFocus
'                Exit Sub
'            End If
'        End If
'        If Combo1(0).ListIndex = 0 Then
'            adoPrimaryRs("pay_mode") = "D"
'        ElseIf Combo1(0).ListIndex = 1 Then
'            adoPrimaryRs("pay_mode") = "A"
'        Else
'            adoPrimaryRs("pay_mode") = "P"
'        End If
'        If STFLAG = "L" Then
'            adoPrimaryRs("TAX_FLAG") = "L"
'        ElseIf STFLAG = "I" Then
'            adoPrimaryRs("TAX_FLAG") = "C"
'        Else
'            adoPrimaryRs("TAX_FLAG") = "N"
'        End If
'        adoPrimaryRs("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
'        If IsDate(MaskEdBox1(2)) Then adoPrimaryRs("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(1)) Then adoPrimaryRs("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(3)) Then adoPrimaryRs("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
'        adoPrimaryRs("divcode") = divcode
'        adoPrimaryRs("User_id") = usrid
'        adoPrimaryRs("entdate") = Format(Date, "yyyy-mm-dd")
'        adoPrimaryRs.UpdateBatch adAffectAllChapters
'        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
'        DB.Execute "UPDATE ig_rDOCCONTROL SET LAST_NO=" & Val(Mid$(txtFields(1).Text, 3, 8)) & " WHERE DOC_TYPE='I' AND DOC_REF='" & txtFields(0).Text & "'"
'        If Not Trim(txtFields(2).Text) = "" Then DB.Execute "UPDATE ig_rDOCCONTROL SET LAST_NO=" & Val(Mid$(txtFields(3).Text, 3, 8)) & " WHERE DOC_TYPE='E' AND DOC_REF='" & txtFields(2).Text & "'"
'        Call AddUpdate
'        If Not errflg Then
'            DB.CommitTrans
'            MsgBox "Record(s) Saved Sucessfully", vbInformation, head
'        End If
'        Opt = " "
'    ElseIf Opt = "mod" Then
'        adoPrimaryRs("User_id") = usrid
'        adoPrimaryRs("entdate") = Format(Date, "yyyy-mm-dd")
'        adoPrimaryRs("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
'        If IsDate(MaskEdBox1(2)) Then adoPrimaryRs("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(1)) Then adoPrimaryRs("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(3)) Then adoPrimaryRs("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
'        adoPrimaryRs.UpdateBatch adAffectAllChapters
'        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
'        If Not errflg Then
'            DB.CommitTrans
'            MsgBox "Records Save Sucessfully", vbInformation, head
'        End If
'            Opt = " "
'    ElseIf Opt = "del" Then
'        On Error GoTo DELERR6
'        Call DelUpdate
'        If Not errflg Then
'            DB.Execute "delete from IG_RINVDT where divcode='" & divcode & "' and inv_type='" & txtFields(0) & "' and inv_no='" & txtFields(1) & "'"
'            DB.Execute "delete from IG_RINVHD where divcode='" & divcode & "' and inv_type='" & txtFields(0) & "' and inv_no='" & txtFields(1) & "'"
'            DB.Execute "UPDATE ig_rDOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='I' AND DOC_REF='" & txtFields(0).Text & "'"
'            'db.Execute "update in_bodt a,inbohd b set b.inv_type=null ,b.invno = null where b.divcode = '" & divcode & "' and b.bo_type = '" & txtFields(5).Text & "' and b.bo_no = '" & txtFields(4) & "' and b.bo_type = a.bo_type and b.bo_no = a.bo_no and b.divcode = a.divcode"
'            If Not Trim(txtFields(2).Text) = "" Then DB.Execute "UPDATE ig_rDOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='E' AND DOC_REF='" & txtFields(2).Text & "'"
'
'            DB.CommitTrans
'            MsgBox "Records Deleted Sucessfully", vbInformation, head
'        End If
'        Opt = " "
'    End If
'        Call query_mode
'        Call cancl(BUTTON, 24)
'        SSTab1.Tab = 0
'DELERR6:
'    If err.Number = "-2147217900" And Opt = "del" Then
'        MsgBox "This Invoice is in use.Cannot delete record.", vbInformation, head
'        Opt = "del"
'        BUTTON_Click (10)
'    End If
'
'Case 10
'    'CANCEL
'    Screen.MousePointer = 11
'    Frame6.Visible = False
'    Select Case Opt
'    Case "mod"
'        DB.RollbackTrans
'    Case "add"
'        DB.RollbackTrans
'    Case "del"
'        DB.RollbackTrans
'    End Select
'    Opt = " "
'    Call query_mode
'    grddatagrid.Visible = True
'    SSTab1.Visible = True
'    Call cancl(BUTTON, 24)
'    BUTTON(0).SetFocus
'    Screen.MousePointer = 0
'
'Case 11
''EXIT
'    Unload Me
'End Select
'End Sub
'
'Private Sub Combo1_Click(Index As Integer)
'Call Combo1_Validate(Index, False)
'End Sub
'
'Private Sub Combo1_Validate(Index As Integer, Cancel As Boolean)
'On Error Resume Next
'Select Case Index
'Case 1
'    If Combo1(1).Text = "Y-YES" Then
'        CESSFLG = 1
'        'cess = 0
'        'grdDataGrid.Columns(22) = 0
'    Else
'        CESSFLG = False
'        cess = 0
'        grddatagrid.Columns(22) = 0
'    End If
'Case 2
'    If Combo1(2).Text = "Y-YES" Then
'        CHFLG = 1
'        Charity = 0
'        grddatagrid.Columns(12) = 0
'    Else
'        CHFLG = False
'        Charity = 0
'        grddatagrid.Columns(12) = 0
'    End If
'Case 3
'    If Combo1(3).Text = "Y-YES" Then
'        DUTYFLG = 1
'        Bed = 0
'        Aed = 0
'        grddatagrid.Columns(19) = 0
'        grddatagrid.Columns(20) = 0
'    Else
'        DUTYFLG = False
'        Bed = 0
'        Aed = 0
'        For i = 51 To 60
'            txtFields(i).Text = ""
'        Next
'        txtFields(66).Text = ""
'        txtFields(67).Text = ""
'        txtFields(68).Text = ""
'        txtFields(32).Text = ""
'        txtFields(33).Text = ""
'        grddatagrid.Columns(19) = 0
'        grddatagrid.Columns(20) = 0
'
'    End If
'Case 4
'    If Combo1(4).Text = "Y-YES" Then
'        TAXFLG = 1
'        Tax = 0
'        grddatagrid.Columns(18) = 0
'        grddatagrid.Columns(21) = 0
'    Else
'        TAXFLG = False
'        Tax = 0
'        grddatagrid.Columns(18) = 0
'        grddatagrid.Columns(21) = 0
'    End If
'
'End Select
'Call INVCALC
'End Sub
'Private Sub DTPicker1_CloseUp(Index As Integer)
'If Opt = "add" Or Opt = "mod" Then
'Select Case Index
'Case 0, 1, 2, 3
'    MaskEdBox1(Index).Text = DTPicker1(Index).value
'End Select
'End If
'End Sub
'
'Private Sub Form_Load()
'   Opt = "qry"
'   B = 0
'   Set DB = New Connection
'   DB.CursorLocation = adUseClient
'   DB.Open "PROVIDER=MSDataShape;" & connectstring
'   desc.Caption = "Query"
'   DATLAB.Caption = Date
'   stbar.Panels(1).Text = head
'   txtFields(47).FontBold = True
'   DTPicker1(0).value = pdate
'   DTPicker1(1).value = pdate
'   DTPicker1(2).value = pdate
'   Call query_mode
'   SSTab1.Tab = 0
'End Sub
'Private Sub query_mode(Optional InvType As String, Optional INVNO As String)
'On Error GoTo er1
'If Opt = " " Or Opt = "qry" Then
'    If INVNO = "" Then
'        Set QryRS = New Recordset
'        QryRS.Open "select inv_type from IG_RINVHD WHERE DIVCODE='" & divcode & "' ORDER BY INV_TYPE", DB
'        Set adoPrimaryRs = New Recordset
'        adoPrimaryRs.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE INV_NO=(SELECT TOP 1 INV_NO FROM IG_RINVHD WHERE DIVCODE='" & divcode & "' ORDER BY DATE,INV_NO,INV_TYPE DESC) AND DIVCODE='" & divcode & "'} AS ParentCMD APPEND " & _
'        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & divcode & "' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
'    Else
'        Set adoPrimaryRs = New Recordset
'        adoPrimaryRs.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,ARE_NO,lr_date,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE='" & InvType & "' AND INV_NO='" & INVNO & "'} AS ParentCMD APPEND " & _
'        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & divcode & "' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
'    End If
'
'    Call disablcontls
'    Call bindcontls
'    If Not adoPrimaryRs.RecordCount > 0 Then
'            MsgBox "No Records Found", vbInformation, head
'            Set grddatagrid.DataSource = Nothing
'            Screen.MousePointer = 0
'            Exit Sub
'    End If
'    Set grddatagrid.DataSource = adoPrimaryRs("childCMD").UnderlyingValue
'    desc.Caption = "Query"
'    stbar.Panels(2).Text = "Query"
'    BUTTON(9).Enabled = False
'    gridalign
'    Call NEWFORM(BUTTON, 24)
'    If adoPrimaryRs.RecordCount = 0 Then
'        BUTTON(5).Enabled = False
'        BUTTON(6).Enabled = False
'        BUTTON(7).Enabled = False
'        BUTTON(8).Enabled = False
'    End If
'    SSTab1.Enabled = False
'    BUTTON(0).SetFocus
'End If
'Exit Sub
'er1:
'If err = 3021 Then
'    MsgBox "No Records Exist", vbInformation, head
'End If
'If err = -2147467259 Then
'    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
'End If
'End Sub
'
'Public Sub bindcontls()
'On Error Resume Next
'If adoPrimaryRs.RecordCount > 0 Then
'Dim c As Control
'For Each c In Me.Controls
' If TypeOf c Is TextBox Then
'    Set c.DataSource = adoPrimaryRs
' End If
'Next
'End If
'End Sub
'
'Public Sub disablcontls()
'Dim c As Control
'For Each c In Me.Controls
' If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = True
'Next
'End Sub
'Public Sub ENABLCONTLS()
'Dim c As Control
'For Each c In Me.Controls
' If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = False
'Next
'For i = 6 To 28
'txtFields(i).Locked = True
'Next
'txtFields(12).Locked = False
'End Sub
'Private Sub gridalign()
'    grddatagrid.Columns(0).Visible = False
'    grddatagrid.Columns(1).Visible = False
'    grddatagrid.Columns(2).Visible = False
'    grddatagrid.Columns(3).Visible = False
'    grddatagrid.Columns(4).Visible = False
'    grddatagrid.EditActive = False
'    For i = 0 To 22
'        grddatagrid.Columns(i).Locked = True
'    Next
'
'End Sub
'
'
'
'Private Sub Form_Resize()
'On Error Resume Next
'stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'End Sub
'
'Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
'    'If ColIndex = 7 Then
'
'    'End If
'End Sub
'
'Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
'If ColIndex = 7 Or 14 Or 9 Then
'    Call INVCALC
'End If
'End Sub
'
'Private Sub grddatagrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
''Call InvCalc
'End Sub
'
'Private Sub lovcancel_Click()
'    Buttonframe.Enabled = True
'    Frame6.Visible = False
'    If Not Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),P.DUTY_CODE)" Then BUTTON_Click (10)
'End Sub
'
'Private Sub lovok_Click()
'Select Case Ksldesc1.listfield1
'
'Case "CAST(inv_type AS VARCHAR(4))"
'    txtFields(0).Text = Ksldesc1.code
'    Set RS = New Recordset
'    'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
'    RS.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref<>'WS'", DB
'    docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'    txtFields(1).Text = docNo
'    txtFields(1).SetFocus
''    txtfields(1).Locked = True
'    Set RS = New Recordset
'    RS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & divcode & "'", DB
'    If RS(0) = "Y" Then
'        Combo1(1).ListIndex = 0
'        CESSFLG = True
'    Else
'        Combo1(1).ListIndex = 1
'    End If
'    If RS(1) = "Y" Then
'        Combo1(2).ListIndex = 0
'        CHFLG = True
'    Else
'        Combo1(2).ListIndex = 1
'    End If
'    If RS(2) = "Y" Then
'        Combo1(3).ListIndex = 0
'        DUTYFLG = True
'    Else
'        Combo1(3).ListIndex = 1
'    End If
'    If RS(3) = "Y" Then
'        Combo1(4).ListIndex = 0
'        TAXFLG = True
'    Else
'        Combo1(4).ListIndex = 1
'    End If
'
'Case "CAST(CEX_INVTYPE AS VARCHAR(4))"
'    txtFields(2).Text = Ksldesc1.code
'    Set RS = New Recordset
'    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
'    RS.Open "Select isnull(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", DB
'    docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'    txtFields(3).Text = docNo
'    MaskEdBox1(0).SetFocus
'Case "convert(varchar,DATE,103)"
'    txtFields(5).Text = Mid$(Ksldesc1.Description, 4, 8)
'    txtFields(4).Text = Mid$(Ksldesc1.Description, 1, 2)
'    Set RS = New Recordset
'    'RS.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
'            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", DB
'    RS.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0),isnull(b.cont_no,0), b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),isnull(a.rate,0),isnull(a.rateflg,'X') rate_flag from IG_RBOHD a, IG_RBODT b where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and  a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rate,a.rateflg", DB
'
'    txtFields(6).Text = RS(0)
'    txtFields(34).Text = RS(1)
'    txtFields(8).Text = RS(8)
'    txtFields(10).Text = RS(9)
'    rf = RS("rate_flag")
'    If RS(10) = "D" Then
'        Combo1(0).ListIndex = 0
'    ElseIf RS(10) = "A" Then
'        Combo1(0).ListIndex = 1
'    Else
'        Combo1(0).ListIndex = 2
'    End If
'    txtFields(48).Text = RS(11)
'    txtFields(65).Text = RS(12)
'    txtFields(13).Text = RS(13)
'    While Not RS.EOF
'        ADOSECONDARYRS.AddNew
'        grddatagrid.Columns(3).Text = RS(2)
'        grddatagrid.Columns(4).Text = RS(3)
'        grddatagrid.Columns(5).Text = RS(4)
'        Set RS1 = New Recordset
'        If STFLAG = "L" Then
'            RS1.Open "SELECT tax_code,st_per,sc_per from ig_rtax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
'        Else
'            RS1.Open "SELECT tax_code,st_per,sc_per from ig_rtax where tax_code=(select ctax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
'        End If
'        Set rs2 = New Recordset
'        rs2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
'        If Not rs2.EOF Then
'        txtFields(15).Text = rs2(3)
'        grddatagrid.Columns(6).Text = RS(5)
'        grddatagrid.Columns(7).Text = RS(6)
'        grddatagrid.Columns(8).Text = RS(7)
'        If RS(14) = "X" Then
'            grddatagrid.Columns(9).Text = RS(15)
'        Else
'            'prakash on 21/6/02
'            rate = IIf(IsNull(RS(15)), 0, RS(15))
'            grddatagrid.Columns(10).Text = IIf(IsNull(RS(15)), 0, RS(15))
'
'        End If
'        'grddatagrid.Columns(10
'        grddatagrid.Columns(13).Text = RS1(0)
'        grddatagrid.Columns(14).Text = RS1(1)
'        grddatagrid.Columns(15).Text = rs2(2)
'        grddatagrid.Columns(16).Text = rs2(1)
'        grddatagrid.Columns(17).Text = RS1(2)
'        End If
'        RS.MoveNext
'    Wend
'    Call NETTOEX
'    Call INVCALC
'    Dim ia As Integer
'    For ia = 0 To 22
'        grddatagrid.Columns(ia).Locked = False
'        'ia = ia + 1
'    Next
'    grddatagrid.AllowUpdate = True
'    SSTab1.Tab = 1
'    txtFields(50).SetFocus
'    'grdDataGrid.AllowAddNew = False
'Case "CONVERT(VARCHAR(4),P.DUTY_CODE)"
'    Set RS = New Recordset
'    RS.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where DOC_TYPE='D' and doc_ref='" & Ksldesc1.code & "' and divcode = '" & divcode & "'", DB
'    docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'    If XX = 66 Then
'        txtFields(32).Text = Ksldesc1.code
'        txtFields(33).Text = docNo
'        txtFields(51).SetFocus
'    ElseIf XX = 67 Then
'        txtFields(53).Text = Ksldesc1.code
'        txtFields(54).Text = docNo
'        txtFields(56).SetFocus
'    Else
'        txtFields(57).Text = Ksldesc1.code
'        txtFields(58).Text = docNo
'        txtFields(59).SetFocus
'    End If
'Case "CONVERT(VARCHAR(4),Carrier_CODE)"
'    txtFields(29).Text = Ksldesc1.code
'Case "CONVERT(VARCHAR(4),BANK_CODE)"
'    txtFields(48).Text = Ksldesc1.code
'Case "CAST(h.inv_type AS VARCHAR(4))"
'       Set adoPrimaryRs = New Recordset
'       adoPrimaryRs.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 from IG_RINVHD where inv_type='" & Ksldesc1.code & "' and inv_no='" & Ksldesc1.Description & "' and divcode = '" & divcode & "'", DB, adOpenStatic, adLockOptimistic
'       Call bindcontls
'       Set ADOSECONDARYRS = New Recordset
'       ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where inv_type='" & Ksldesc1.code & "' and inv_no='" & Ksldesc1.Description & "' and divcode = '" & divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
'       Set grddatagrid.DataSource = ADOSECONDARYRS
'    Set TErs = New Recordset
'    TErs.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & divcode & "'", DB
'    If TErs(0) = "Y" Then
'        Combo1(1).ListIndex = 0
'        CESSFLG = True
'    Else
'        Combo1(1).ListIndex = 1
'    End If
'    If TErs(1) = "Y" Then
'        Combo1(2).ListIndex = 0
'        CHFLG = True
'    Else
'        Combo1(2).ListIndex = 1
'    End If
'    If TErs(2) = "Y" Then
'        Combo1(3).ListIndex = 0
'        DUTYFLG = True
'    Else
'        Combo1(3).ListIndex = 1
'    End If
'    If TErs(3) = "Y" Then
'        Combo1(4).ListIndex = 0
'        TAXFLG = True
'    Else
'        Combo1(4).ListIndex = 1
'    End If
'
'       Call gridalign
'       If Opt = "mod" Then
'            grddatagrid.AllowUpdate = True
'            Call disablcontls
'            For i = 8 To grddatagrid.Columns.Count - 1 Step 1
'                    grddatagrid.Columns(i).Locked = False
'            Next
'       End If
'        Call ModLock
'
'       On Error Resume Next
'       If Opt = "del" Then BUTTON(9).SetFocus
'Case "AREA_CODE"
'    txtFields(13).Text = Ksldesc1.code
'    txtFields(14).Text = Ksldesc1.Description
'
'End Select
'    Buttonframe.Enabled = True
'    Frame6.Visible = False
'End Sub
'
'Private Sub MaskEdBox1_Change(Index As Integer)
'If Opt = "add" Or Opt = "mod" Then
'Select Case Index
'Case 0, 1, 2, 3
'        If IsDate(MaskEdBox1(Index).Text) Then DTPicker1(Index).value = MaskEdBox1(Index).Text
'End Select
'End If
'End Sub
'
'
'
''Private Sub Timer1_Timer()
''If COL = 1 Then
'''16000256
''    txtfields(47).ForeColor = 255
''    COL = 0
''Else
''    txtfields(47).ForeColor = 643110
''    COL = 1
''End If
''End Sub
'
'Private Sub txtfields_Change(Index As Integer)
'On Error Resume Next
'Select Case Index
'Case 6, 8, 10
'        Set RS1 = New Recordset
'        RS1.Open "select isnull(slname,' ') from fa_slmas where slcode='" & txtFields(Index).Text & "'", DB
'        If Not RS1.EOF Then txtFields(Index + 1).Text = RS1(0)
''        Else
''            txtfields(Index + 1).Text = ""
''        End If
'
'Case 7
'        On Error Resume Next
'            Set RS1 = New Recordset
'            RS1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from fa_slmas where slcode='" & txtFields(6).Text & "'", DB
'            If Opt = "add" Then
'                If Ksldesc1.Description <> "" Then
'                    Set RSS = New Recordset
'                    RSS.Open "select deliveyat from IG_RBOHD where bo_no='" & Mid$(Trim(Ksldesc1.Description), 4, Len(Ksldesc1.Description)) & "' ", DB, adOpenStatic
'
'                End If
'            End If
'    If RSS.EOF Then Exit Sub
'    If RSS(0) <> "" Then
'            Set RS1 = New Recordset
'           RS1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from ig_rdeladd where slcode='" & txtFields(6).Text & "' and cname='" & RSS(0) & "'", DB
'            If Opt = "add" And Ksldesc1.Description <> "" And RSS.RecordCount > 0 Then
'                txtFields(61).Text = RSS(0)
'            End If
'                txtFields(62).Text = RS1(0)
'                txtFields(63).Text = RS1(1)
'                txtFields(64).Text = RS1(2)
'                Set dt = New Recordset
'                dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtFields(64).Text & "'", DB, adOpenStatic
'                txtFields(13).Text = dt(0)
'                txtFields(14).Text = dt(1)
'    Else
'            txtFields(61).Text = txtFields(7).Text
'            txtFields(62).Text = RS1(0)
'            txtFields(63).Text = RS1(1)
'            txtFields(64).Text = RS1(2)
'            Set dt = New Recordset
'            dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtFields(64).Text & "'", DB, adOpenStatic
'            If dt.RecordCount > 0 Then
'                txtFields(13).Text = dt(0)
'                txtFields(14).Text = dt(1)
'            Else
'                txtFields(13).Locked = False
'                txtFields(14).Locked = False
'            End If
'    End If
'
'Case 13
'        Set RS1 = New Recordset
'        RS1.Open "select A.name,B.STATE_FLAG from ig_rarea A,ig_rSTATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & txtFields(Index).Text & "'", DB
'        If Not RS1.EOF Then
'            txtFields(Index + 1).Text = RS1(0)
'            STFLAG = RS1(1)
'        End If
'
'        If Opt = "add" Then
'             Set RS1 = New Recordset
'             RS1.Open "select count(*) from ig_rAREA WHERE area_code='" & txtFields(13).Text & "'", DB, adOpenStatic
'             If RS1(0) > 0 Then
'                Set rs2 = New Recordset
'                rs2.Open "select name from ig_rarea where area_code= '" & txtFields(13).Text & "'", DB, adOpenStatic
'                txtFields(14).Text = rs2("name")
'            Else
'                Buttonframe.Enabled = False
'                Ksldesc1.conn = connectstring
'                listlb.Caption = "Area Listing"
'                Ksldesc1.Table = "ig_rAREA"
'                Ksldesc1.listfield1 = "AREA_CODE"
'                Ksldesc1.listfield2 = "NAME"
'                Frame6.ZOrder
'                Frame6.Visible = True
'                Ksldesc1.SetFocus
'
'             End If
'
'
'        End If
'
'
'Case 32
'        Set RS1 = New Recordset
'        RS1.Open "select DESCRIPTION from ig_rDUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & divcode & "'", DB
'        If Not RS1.EOF Then txtFields(66).Text = RS1(0)
'
'Case 53
'        Set RS1 = New Recordset
'        RS1.Open "select DESCRIPTION from ig_rDUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & divcode & "'", DB
'        If Not RS1.EOF Then txtFields(67).Text = RS1(0)
'Case 57
'
'        Set RS1 = New Recordset
'        RS1.Open "select DESCRIPTION from ig_rDUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & divcode & "'", DB
'            If Not RS1.EOF Then txtFields(68).Text = RS1(0)
'
'Case 48
'        Set RS1 = New Recordset
'        RS1.Open "select name from ig_rbank where bank_code='" & txtFields(Index).Text & "'", DB
'        If Not RS1.EOF Then txtFields(12).Text = RS1(0)
'Case 29
'        Set RS1 = New Recordset
'        RS1.Open "select name from ig_rCARRIER where CARRIER_CODE='" & txtFields(Index).Text & "'", DB
'        If Not RS1.EOF Then txtFields(30).Text = RS1(0)
'End Select
'End Sub
'
'Private Sub txtFields_GotFocus(Index As Integer)
'If Opt = "add" Then
'Select Case Index
'Case 0
'    If Record_Exists("ig_invtype where divcode='" & divcode & "'", "Please Define Invoice Type") = False Then
'        Call BUTTON_Click(10)
'        Exit Sub
'    End If
'    Buttonframe.Enabled = False
'    listlb.Caption = "Invoice Type Listing"
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "ig_invtype where divcode='" & divcode & "'"
'    Ksldesc1.listfield1 = "CAST(inv_type AS VARCHAR(4))"
'    Ksldesc1.listfield2 = "DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'
'Case 2
'    If Record_Exists("ig_invtype A,ig_rCEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtFields(0).Text & "' AND A.divcode='" & divcode & "'", "CEXInvoice Type not found") = False Then
''        Call BUTTON_Click(10)
'        Exit Sub
'    End If
'    Buttonframe.Enabled = False
'    Ksldesc1.conn = connectstring
'    listlb.Caption = "Central Excise Invoice Type Listing"
'    Ksldesc1.Table = "ig_invtype A,ig_rCEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtFields(0).Text & "' AND A.divcode='" & divcode & "'"
'    Ksldesc1.listfield1 = "CAST(CEX_INVTYPE AS VARCHAR(4))"
'    Ksldesc1.listfield2 = "B.DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'
'Case 4
'    If Record_Exists("IG_RBOHD where divcode='" & divcode & "' AND INV_NO IS NULL", "Bale Order Not Found") = False Then
'        Call BUTTON_Click(10)
'        Exit Sub
'    End If
'    Buttonframe.Enabled = False
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.conn = connectstring
'    Ksldesc1.ZOrder
'    listlb.Caption = "Bale Order Listing"
'    Ksldesc1.Table = "IG_RBOHD where divcode='" & divcode & "' AND INV_NO IS NULL"
'    Ksldesc1.listfield1 = "convert(varchar,DATE,103)"
'    Ksldesc1.listfield2 = "bo_type+':'+BO_NO"
'    Ksldesc1.SetFocus
'
'Case 32
'    If Record_Exists("ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='P'", "Duty Type Not Found") = False Then Exit Sub
'    XX = 66
'    Buttonframe.Enabled = False
'    Ksldesc1.conn = connectstring
'    listlb.Caption = "PLA-Duty Type Listing"
'    Ksldesc1.Table = "ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='P'"
'    Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),P.DUTY_CODE)"
'    Ksldesc1.listfield2 = "P.DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'Case 53
'    If Record_Exists("ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='A'", "Duty Type Not Found") = False Then Exit Sub
'    Buttonframe.Enabled = False
'    XX = 67
'    Ksldesc1.conn = connectstring
'    listlb.Caption = "RG23A-Duty Type Listing"
'    Ksldesc1.Table = "ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='A'"
'    Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),P.DUTY_CODE)"
'    Ksldesc1.listfield2 = "P.DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'Case 57
'    If Record_Exists("ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='C'", "Duty Type Not Found") = False Then Exit Sub
'    Buttonframe.Enabled = False
'    XX = 68
'    Ksldesc1.conn = connectstring
'    listlb.Caption = "RG23C-Duty Type Listing"
'    Ksldesc1.Table = "ig_rDUTYTYPE P where divcode='" & divcode & "' AND DUTY_CAT='C'"
'    Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),P.DUTY_CODE)"
'    Ksldesc1.listfield2 = "P.DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
'Case 29
'End Select
'End If
'End Sub
'
'Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
'If Opt = "add" Or Opt = "mod" Then
'Select Case Index
'Case 50
'    Call ToNum(txtFields(Index), 3, KeyAscii)
'Case 51, 52, 55, 56, 59, 60, 31
'    Call ToNum(txtFields(Index), 8, KeyAscii)
'Case 29
'    Call ToUpCase(txtFields(Index), KeyAscii)
'
'End Select
'End If
'End Sub
'
'Private Sub txtfields_LostFocus(Index As Integer)
'Select Case Index
'Case 50
'    SSTab1.Tab = 2
'    txtFields(29).SetFocus
'Case 69
'    On Error Resume Next
'    ADOSECONDARYRS.MoveFirst
'    If txtFields(69).Text <> "" And grddatagrid.Columns(6).value <> "" Then
'        txt = txtFields(69).Text * grddatagrid.Columns(6).value
'        txtFields(31).Text = Val(txt)
'        txtFields(31).SetFocus
'    End If
'End Select
'End Sub
'
'Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
'If Opt = "add" Or Opt = "mod" Then
'
'Select Case Index
'    Case 50, 31
'    On Error Resume Next
'        If Index = 31 And rf <> "X" Then
'            grddatagrid.row = 0
'            grddatagrid.Columns(9).Text = 0
'             NETTOEX
'        End If
'              ' Call InvCalc
'    Case 29
'    If Record_Exists("ig_rcarrier", "Carrier Not Found") = False Or Trim(txtFields(29).Text) = "" Then Exit Sub
'    Set RS = New Recordset
'    RS.Open "select count(*) from ig_rcarrier where carrier_code='" & txtFields(29) & "'", DB
'    If RS(0) > 0 Then
'        txtFields(29).Text = txtFields(29).Text
'    Else
'        Buttonframe.Enabled = False
'        listlb.Caption = "Carrier Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_rcarrier"
'        Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),Carrier_CODE)"
'        Ksldesc1.listfield2 = "name"
'        Frame6.ZOrder
'        Frame6.Visible = True
'        Ksldesc1.SetFocus
'    End If
'Case 12
'        If Trim(txtFields(12).Text) <> "" Then
'            Set RS1 = New Recordset
'            RS1.Open "select BANK_CODE,name from ig_rBANK where NAME LIKE'" & txtFields(12).Text & "%'", DB
'            If Not RS1.EOF Then
'                txtFields(48).Text = RS1(0)
'                txtFields(12).Text = RS1(1)
'
'            Else
'                Buttonframe.Enabled = False
'                listlb.Caption = "Bank Listing"
'                Ksldesc1.conn = connectstring
'                Ksldesc1.Table = "ig_rBANK"
'                Ksldesc1.listfield1 = "CONVERT(VARCHAR(4),BANK_CODE)"
'                Ksldesc1.listfield2 = "name"
'                Frame6.ZOrder
'                Frame6.Visible = True
'                Ksldesc1.SetFocus
'        End If
'    End If
'End Select
'End If
'End Sub
'
'Private Sub INVCALC()
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
'    Assval2 = 0
'    NettRExR = 0
''    ex = 0
'    If Not ADOSECONDARYRS.BOF Then ADOSECONDARYRS.MoveFirst
'    Do While Not ADOSECONDARYRS.EOF
'        Set RS = New Recordset
'        RS.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
'                'netr=exr+sc+st+aed+bed+cess+ch
''Ass value
'
'        grddatagrid.Columns(11) = KSLRound((Val(grddatagrid.Columns(7)) * Val(grddatagrid.Columns(9))), 0)
'        Assval = Assval + grddatagrid.Columns(11) + Val(txtFields(31).Text)
'        Assval2 = Assval2 + grddatagrid.Columns(11)
'        NettRExR = Val(grddatagrid.Columns(9))
''Charity
'        If CHFLG Then
'            grddatagrid.Columns(12) = KSLRound(Val(grddatagrid.Columns(6)) * (Val(RS(0))), 0)
'            Charity = Charity + grddatagrid.Columns(12)
'            NettRExR = NettRExR + Val(RS(0) / 100)
'        Else
'            grddatagrid.Columns(12) = 0
'            Charity = Charity + grddatagrid.Columns(12)
'            NettRExR = NettRExR + Val(RS(0) / 100)
'        End If
''Cess
'        If CESSFLG Then
'            grddatagrid.Columns(22) = KSLRound((Val(Assval) + Val(grddatagrid.Columns(12))) * (txtFields(15).Text / 100), 0)
'            cess = cess + Val(grddatagrid.Columns(22))
'            NettRExR = NettRExR + (NettRExR * ((txtFields(15).Text / 100)))
'        Else
'            grddatagrid.Columns(22) = 0
'            cess = cess + Val(grddatagrid.Columns(22))
'            NettRExR = NettRExR + (NettRExR * ((txtFields(15).Text / 100)))
'        End If
''Duty
'        If DUTYFLG Then
'            '*****************
'            'PRAKASH.S
'            grddatagrid.Columns(19) = KSLRound(((Val(Assval) + Val(grddatagrid.Columns(12))) * (Val(grddatagrid.Columns(15)) / 100)), 0)
'            '*****************
'            Bed = Round(Bed + grddatagrid.Columns(19))
'            bedR = NettRExR * Val(grddatagrid.Columns(15)) / 100
'            NettRExR = NettRExR + (NettRExR * Val(grddatagrid.Columns(15)) / 100)
'
'            '***************
'            txtFields(20).Text = Round(Bed, 0)
'            txtFields(43).Text = Round(Bed, 0)
'            '***************
'
'            grddatagrid.Columns(20) = KSLRound((grddatagrid.Columns(19)) * (Val(grddatagrid.Columns(16)) / 100), 0)
'            Aed = Aed + Val(grddatagrid.Columns(20))
'            NettRExR = NettRExR + Val(bedR * Val(grddatagrid.Columns(16)) / 100)
'
'            '*****************
'             txtFields(22).Text = Round(Aed, 0)
'             txtFields(44).Text = Round(Aed, 0)
'            '*****************
'        Else
'            grddatagrid.Columns(19) = 0
'            grddatagrid.Columns(20) = 0
'            Bed = Round(Bed + grddatagrid.Columns(19))
'            bedR = NettRExR * Val(grddatagrid.Columns(15)) / 100
'            NettRExR = NettRExR + (NettRExR * Val(grddatagrid.Columns(15)) / 100)
'            Aed = Aed + Val(grddatagrid.Columns(20))
'            NettRExR = NettRExR + Val(bedR * Val(grddatagrid.Columns(16)) / 100)
'
'        End If
''Tax
'        If TAXFLG Then
'            grddatagrid.Columns(18) = KSLRound((Val(Round(Assval, 0)) + Val(grddatagrid.Columns(12)) + Val(grddatagrid.Columns(22)) + Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20))) * (Val(Round(grddatagrid.Columns(14), 0)) / 100), 0)
'            Tax = Tax + Round(grddatagrid.Columns(18), 0)
'            TaxR = NettRExR * (grddatagrid.Columns(14)) / 100
'            NettRExR = NettRExR + (NettRExR * (grddatagrid.Columns(14)) / 100)
'            grddatagrid.Columns(21) = KSLRound(grddatagrid.Columns(18) * grddatagrid.Columns(17) / 100, 0)
'
'            SurCharge = KSLRound(Val(SurCharge) + Val(grddatagrid.Columns(21)), 0)
'            NettRExR = NettRExR + Val(TaxR * Val(grddatagrid.Columns(17)) / 100)
'        Else
'            grddatagrid.Columns(18) = 0
'            grddatagrid.Columns(21) = 0
'            Tax = Tax + Round(grddatagrid.Columns(18), 0)
'            TaxR = NettRExR * (grddatagrid.Columns(14)) / 100
'            NettRExR = NettRExR + (NettRExR * (grddatagrid.Columns(14)) / 100)
'            SurCharge = KSLRound(Val(SurCharge) + Val(grddatagrid.Columns(21)), 0)
'            NettRExR = NettRExR + Val(TaxR * Val(grddatagrid.Columns(17)) / 100)
'        End If
'        On Error Resume Next
'        grddatagrid.Columns(10).Text = Round(NettRExR + (Val(txtFields(31).Text) / Val(grddatagrid.Columns(7).Text)), 2)
'        ADOSECONDARYRS.MoveNext
'    Loop
'        txtFields(40).Text = Format(Assval2, "#.00")
'        txtFields(41).Text = Format(Charity, "#0.00")
'        txtFields(18).Text = Format(Charity, "#0.00")
'        txtFields(42).Text = Format(cess, "#0.00")
'        txtFields(16).Text = Format(cess, "#0.00")
'        txtFields(43).Text = Format(Round(Bed, 0), "#0.00")
'        txtFields(20).Text = Format(Round(Bed, 0), "#0.00")
'        txtFields(44).Text = Format(Round(Aed, 0), "#0.00")
'        txtFields(22).Text = Format(Round(Aed, 0), "#0.00")
'        txtFields(45).Text = Format(Tax, "#0.00")
'        txtFields(26).Text = Format(Tax, "#0.00")
'        txtFields(28).Text = Format(SurCharge, "#0.00")
'        TotAmt = Assval2 + Charity + cess + Round(Bed, 0) + Round(Aed, 0) + Tax + Val(SurCharge)
'        Insur = 0
'        Insur = KSLRound(TotAmt * Val(txtFields(50)) / 100, 2)
'        txtFields(49).Text = Format(Insur, "#0.00")
'        txtFields(46) = Format(Insur + SurCharge + Val(txtFields(31).Text), "#0.00")
'
'        invamt = Format(Insur + TotAmt + Val(txtFields(31).Text), "#0.00")
'
''-----------------------------------Round-----------------------------
'
'            If InStr(CStr(invamt), ".") > 0 Then
'            tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
'            If Right(tmprnd, 1) >= 5 Then
'            invamt = Format(invamt, "#########0.00")
'            End If
'            Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
'            If Round1 <= 0.5 Then
'                txtFields(39).Text = Format("-" & Round1, "#0.00")
'                txtFields(47) = Format(invamt - Round1, "#0.00")
'            Else
'                txtFields(39).Text = Format(1 - Round1, "#0.00")
'                txtFields(47).Text = Format(invamt + (1 - Round1), "#0.00")
'            End If
'            End If
'End If
'End Sub
''Private Sub InvCalc()
'''INVOICE CALCULATION
''If Opt = "add" Or Opt = "mod" Then
''    Assval = 0
''    Tax = 0
''    SurCharge = 0
''    Aed = 0
''    Bed = 0
''    Charity = 0
''    cess = 0
''    TotAmt = 0
''    Insur = 0
''    NettRExR = 0
''
'''    ex = 0
''    If Not adoSecondaryRS.BOF Then adoSecondaryRS.MoveFirst
''    Do While Not adoSecondaryRS.EOF
''        Set rs = New Recordset
''        rs.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & divcode & "' and a.product_code='" & grdDataGrid.Columns(5).Text & "'", db
''                'netr=exr+sc+st+aed+bed+cess+ch
'''Ass value
''        'grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(7)) * Val(grdDataGrid.Columns(9))), 2)
''        'grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(6)) * Round(ex1, 4)), 3)
''        grdDataGrid.Columns(11) = KSLRound((Val(grdDataGrid.Columns(7)) * Val(grdDataGrid.Columns(9))), 2)
''        Assval = Assval + Val(grdDataGrid.Columns(11)) + Val(txtfields(31))
''        NettRExR = Val(grdDataGrid.Columns(9))
''
''        '**************************
''        Round1 = Val(Mid(CStr(Assval), InStr(Format(CStr(Assval), "#.00"), "."), 3))
''        If Val(Round1) <= 0.5 Then
''            'txtFields(39).Text = Format("-" & Round1, "#0.00")
''            txtfields(40) = Format(Assval - Val(Round1), "#0.00")
''        Else
''            'txtFields(39).Text = Format(1 - Round1, "#0.00")
''            txtfields(40).Text = Format(Assval + (1 - Val(Round1)), "#0.00")
''        End If
''        '**************************
''
''
'''Charity
''        If CHFLG Then
''            grdDataGrid.Columns(12) = KSLRound(Val(grdDataGrid.Columns(6)) * (Val(rs(0))), 2)
''            Charity = Charity + Val(grdDataGrid.Columns(12))
''            NettRExR = NettRExR + Val(rs(0) / 100)
''
''            '**************************
''            Round1 = Val(Mid(CStr(Charity), InStr(Format((Charity), "#0.00"), "."), 3))
''            If Round1 <= 0.5 Then
''                txtfields(18).Text = Format("-" & Round1, "#0.00")
''                txtfields(41) = Format(Charity - Round1, "#0.00")
''            Else
''                txtfields(18).Text = Format(1 - Val(Round1), "#0.00")
''                txtfields(41).Text = Format(Charity + (1 - Val(Round1)), "#0.00")
''            End If
''            '*************************
''
''
''        End If
'''Cess
''        If CESSFLG Then
''            grdDataGrid.Columns(22) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12))) * (txtfields(15).Text / 100), 2)
''            cess = cess + Val(grdDataGrid.Columns(22))
''            NettRExR = NettRExR + (NettRExR * Val((txtfields(15).Text / 100)))
''
''
''            '********************
''            Round1 = Val(Mid(CStr(cess), InStr(CStr(cess), "."), 3))
''            If Round1 <= 0.5 Then
''                txtfields(16).Text = Format("-" & Round1, "#0.00")
''                txtfields(42) = Format(cess - Round1, "#0.00")
''            Else
''                txtfields(16).Text = Format(1 - Round1, "#0.00")
''                txtfields(42).Text = Format(cess + (1 - Round1), "#0.00")
''            End If
''            '********************
''
''
''        End If
'''Duty
''        If DUTYFLG Then
''            'grdDataGrid.Columns(19) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12)) + Val(grdDataGrid.Columns(22))) * (Val(grdDataGrid.Columns(15)) / 100), 2)
''            '*****************
''            'PRAKASH.S
''            grdDataGrid.Columns(19) = KSLRound(((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12))) * (Val(grdDataGrid.Columns(15)) / 100)), 2)
''            '*****************
''
''            'BED
''
''            Bed = Bed + grdDataGrid.Columns(19)
''            BEDR = NettRExR * Val(grdDataGrid.Columns(15)) / 100
''            NettRExR = NettRExR + (NettRExR * Val(grdDataGrid.Columns(15)) / 100)
''
''
''            '***************
''            Round1 = Val(Mid(CStr(Bed), InStr(CStr(Format(Bed, "#0.00")), "."), 3))
''            If Round1 <= 0.5 Then
''                txtfields(20).Text = Format("-" & Round1, "#0.00")
''                txtfields(43) = Format(Bed - Round1, "#0.00")
''            Else
''                txtfields(20).Text = Format(1 - Val(Round1), "#0.00")
''                txtfields(43).Text = Format(Bed + (1 - Val(Round1)), "#0.00")
''            End If
''            '***************
''
''
''
''            'AED
''
''            grdDataGrid.Columns(20) = KSLRound((grdDataGrid.Columns(19)) * (grdDataGrid.Columns(16) / 100), 2)
''            Aed = Aed + Val(grdDataGrid.Columns(20))
''            NettRExR = NettRExR + Val(BEDR * Val(grdDataGrid.Columns(16)) / 100)
''
''            '*****************
''            Round1 = Val(Mid(CStr(Aed), InStr(CStr(Format(Aed, "#0.00")), "."), 3))
''            If Round1 <= 0.5 Then
''                txtfields(22).Text = Format("-" & Round1, "#0.00")
''                txtfields(44) = Format(Aed - Round1, "#0.00")
''            Else
''                txtfields(22).Text = Format(1 - Round1, "#0.00")
''                txtfields(44).Text = Format(Aed + (1 - Round1), "#0.00")
''            End If
''            '*****************
''
''
''
''        End If
'''Tax
''        If TAXFLG Then
''            grdDataGrid.Columns(18) = KSLRound((Val(grdDataGrid.Columns(11)) + Val(grdDataGrid.Columns(12)) + Val(grdDataGrid.Columns(22)) + Val(grdDataGrid.Columns(19)) + Val(grdDataGrid.Columns(20))) * (Val(grdDataGrid.Columns(14)) / 100), 2)
''            Tax = Format(Tax + grdDataGrid.Columns(18), "#0.00")
''            TAXR = (NettRExR * Val(grdDataGrid.Columns(14)) / 100)
''            NettRExR = NettRExR + (NettRExR * Val(grdDataGrid.Columns(14)) / 100)
''            grdDataGrid.Columns(21) = Round(grdDataGrid.Columns(18) * grdDataGrid.Columns(17) / 100, 2)
''            SurCharge = Round(Val(SurCharge) + Val(grdDataGrid.Columns(21)), 2)
''            NettRExR = NettRExR + (TAXR * Val(grdDataGrid.Columns(17)) / 100)
''            grdDataGrid.Columns(10).Text = KSLRound(NettRExR + Val(Val(txtfields(31)) / Val(grdDataGrid.Columns(7))), 2)
''
''            '******************
''            Round1 = Mid(CStr(Tax), InStr(CStr(Tax), "."), 3)
''            If Round1 <= 0.5 Then
''                txtfields(26).Text = Format("-" & Round1, "#0.00")
''                txtfields(45) = Format(Tax - Round1, "#0.00")
''            Else
''                txtfields(26).Text = Format(1 - Round1, "#0.00")
''                txtfields(45).Text = Format(Tax + (1 - Round1), "#0.00")
''            End If
''            '*****************
''            'EXMILL TO NETRATE
''        End If
''        adoSecondaryRS.MoveNext
''    Loop
''        'txtfields(40).Text = Format(Assval, "#.00")
''        'txtfields(41).Text = Format(Charity, "#0.00")
''        'txtfields(18).Text = Format(Charity, "#0.00")
''        'txtfields(42).Text = Format(cess, "#0.00")
''        'txtfields(16).Text = Format(cess, "#0.00")
''        'txtfields(43).Text = Format(Bed, "#0.00")
''        'txtfields(20).Text = Format(Bed, "#0.00")
''        'txtfields(44).Text = Format(Aed, "#0.00")
''        'txtfields(22).Text = Format(Aed, "#0.00")
''        'txtfields(45).Text = Format(Tax, "#0.00")
''        'txtfields(26).Text = Format(Tax, "#0.00")
''        txtfields(28).Text = Format(SurCharge, "#0.00")
''        TotAmt = Assval + Charity + cess + Bed + Aed + Tax + Val(SurCharge)
''        'TotAmt = Val(txtfields(40).Text + txtfields(41).Text + txtfields(42).Text + txtfields(43).Text + txtfields(44).Text + txtfields(45).Text + txtfields(46).Text)
''        Insur = 0
''        Insur = Round(TotAmt * Val(txtfields(50)) / 100, 2)
''        txtfields(49).Text = Format(Insur, "#0.00")
''
''        txtfields(46) = Format(Insur + SurCharge + Val(txtfields(31).Text), "#0.00")
''
''        '****************************
''
''            Round1 = Mid(CStr(txtfields(46)), InStr(CStr(txtfields(46)), "."), 3)
''            If Round1 <= 0.5 Then
''                'txtFields(39).Text = Format("-" & Round1, "#0.00")
''                txtfields(46).Text = Format(txtfields(46) - Round1, "#0.00")
''            Else
''                'txtFields(39).Text = Format(1 - Round1, "#0.00")
''                txtfields(46).Text = Format(txtfields(46) + (1 - Round1), "#0.00")
''            End If
''
''        '****************************
''
''        Invamt = Format(Insur + TotAmt + Val(txtfields(31).Text), "#0.00")
''        txtfields(40).Text = KSLRound((txtfields(40).Text) + KSLRound((Val(Invamt) - (Val(txtfields(40).Text) + Val(txtfields(41).Text) + Val(txtfields(42).Text) + Val(txtfields(43).Text) + Val(txtfields(44).Text) + Val(txtfields(45).Text) + Val(txtfields(46).Text))), 2), 0)
'''-----------------------------------Round-----------------------------
''
''            If InStr(CStr(Invamt), ".") > 0 Then
''            tmprnd = Mid(CStr(Invamt), InStr(CStr(Invamt), "."), 4)
''            If Right(tmprnd, 1) >= 5 Then
''            Invamt = Format(Invamt, "#########0.00")
''            End If
''            Round1 = Mid(CStr(Invamt), InStr(CStr(Invamt), "."), 3)
''            If Round1 <= 0.5 Then
''                txtfields(39).Text = Format("-" & Round1, "#0.00")
''                txtfields(47) = Format(Invamt - Round1, "#0.00")
''            Else
''                txtfields(39).Text = Format(1 - Round1, "#0.00")
''                txtfields(47).Text = Format(Invamt + (1 - Round1), "#0.00")
''            End If
''            End If
''End If
''End Sub
'Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
'Set Rrs = New Recordset
'Rrs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
'KSLRound = Rrs(0)
'End Function
'
'Private Sub AddUpdate()
''ADDITION TIME UPDATATIONS
'On Error GoTo UPDATEERR
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
''----------------------------RG1TRN
'    Set RS = New Recordset
'    RS.Open "Select inv_cat from ig_invtype where inv_type='" & txtFields(0) & "' and divcode = '" & divcode & "'", DB
'    If RS(0) = "E" Then
'        DB.Execute "update ig_rrg1trn set exp_kgs=exp_kgs+" & Val(grddatagrid.Columns(7)) & ",exp_value=exp_value+" & grddatagrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'    ElseIf RS(0) = "P" Then
'        DB.Execute "update ig_rrg1trn set ar3a_kgs=AR3A_kgs+" & Val(grddatagrid.Columns(7)) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'    Else
'
'         Dim SPS1 As Double
'         Dim SPS As New Recordset
'         Set SPS = New Recordset
'         SPS.Open "SELECT PACK_WT FROM ig_product WHERE PRODUCT_CODE='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic
'         SPS1 = Round(Val(grddatagrid.Columns(7).value) - Val((grddatagrid.Columns(6).Text) * SPS("PACK_WT")), 2)
'        'db.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grdDataGrid.Columns(7)) & ",home_value=home_value+" & grdDataGrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "')"
'
'        If SPS1 > 0 Then
'            DB.Execute "update ig_rrg1trn set LOOSE_KGS=LOOSE_KGS-" & SPS1 & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'        End If
'
'        DB.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grddatagrid.Columns(7)) & ",home_value=home_value+" & grddatagrid.Columns(11) + Val(txtFields(46).Text) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'
'
'
'
'
'    End If
'
'        DB.Execute "update ig_rrg1trn set packs=packs+" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs+" & Val(grddatagrid.Columns(7)) & ",bed_amt=bed_amt+" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'        'Easwar db.Execute "update ig_rrg1trn set bed_amt=bed_amt+" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'
''-------------------------------CDSTOCK
'    If RS(0) = "C" Or RS(0) = "T" Or RS(0) = "P" Then
'        Set RS1 = New Recordset
'        RS1.Open "SELECT COUNT(*) FROM ig_rCDSTOCK WHERE DIVCODE='" & divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & Val(CStr(Year(MaskEdBox1(0))) & CStr(Month(MaskEdBox1(0)))), DB
'        If RS1(0) = 0 Then
'            Set rs2 = New Recordset
'            rs2.Open "SELECT OPEN_KGS+TRF_KGS-SOLD_KGS FROM ig_rCDSTOCK X WHERE X.DIVCODE='" & divcode & "' AND X.CUST_CODE='" & txtFields(6) & "' AND X.PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND X.YEARMON=(SELECT MAX(Y.YEARMON) FROM ig_rCDSTOCK Y WHERE  Y.DIVCODE=X.DIVCODE AND Y.CUST_CODE=X.CUST_CODE AND Y.PRODUCT_CODE=X.PRODUCT_CODE)", DB
'            If Not rs2.EOF Then
'                DB.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & divcode & "'," & Val(CStr(Year(MaskEdBox1(0))) & CStr(Month(MaskEdBox1(0)))) & ",'" & txtFields(6) & "','" & grddatagrid.Columns(5) & "'," & Val(rs2(0)) & "," & Val(grddatagrid.Columns(7)) & ",0)"
'            Else
'                DB.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & divcode & "'," & Val(CStr(Year(MaskEdBox1(0))) & CStr(Month(MaskEdBox1(0)))) & ",'" & txtFields(6) & "','" & grddatagrid.Columns(5) & "',0," & Val(grddatagrid.Columns(7)) & ",0)"
'            End If
'        Else
'            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS+" & Val(grddatagrid.Columns(7)) & " WHERE DIVCODE='" & divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & Val(CStr(Year(MaskEdBox1(0))) & CStr(Month(MaskEdBox1(0))))
'
'
'        End If
'    End If
''---------------------------------PACKNOS
'   Set RS = New Recordset
'   RS.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & divcode & "'", DB
'
'   RS.MoveFirst
'   Do While Not RS.EOF
'        For i = RS(0) To RS(1)
'            DB.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & RS(2) & "' and pack_year=" & RS(3) & "and pack_no=" & i
'        Next
'        RS.MoveNext
'   Loop
'
''   Do While PackNo <= rs(1)
''    db.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & rs(2) & "' and pack_year=" & rs(3) & "and pack_no=" & PackNo
''    PackNo = PackNo + 1
''   Loop
'
''--------------------------------Contract
'   DB.Execute "update ig_rcontdt set QTY_DELIVERED=QTY_DELIVERED+" & grddatagrid.Columns(7) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
'
''--------------------------------Product
'   DB.Execute "update ig_product set kg_rate=" & Val(grddatagrid.Columns(9)) & " where Product_code='" & grddatagrid.Columns(5) & "'"
'   ADOSECONDARYRS.MoveNext
'   Loop
'
''---------------------------Bale Order
'      DB.Execute "update IG_RBOHD set inv_type='" & txtFields(0) & "',inv_no='" & txtFields(1) & "' where divcode='" & divcode & "' and bo_type='" & txtFields(4) & "' and bo_no='" & txtFields(5) & "'"
'
''-----------------------Duty TRN & DutyType
'
' If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
'   If Trim(txtFields(32).Text) <> "" Then
'        Set RS = New Recordset
'        RS.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'", DB
'        docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & divcode & "','" & txtFields(32) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',Null," & Val(txtFields(51)) & "," & Val(txtFields(52)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
'        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'"
'        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & Val(txtFields(51)) & ",aed_dr=aed_dr+" & Val(txtFields(52)) & " where divcode='" & divcode & "' and Duty_cat='P' and Duty_code='" & txtFields(32) & "'"
'   End If
'   On Error GoTo sp1
'   If Trim(txtFields(53)) <> "" Then
'        Set RS = New Recordset
'        RS.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'", DB
'        docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & divcode & "','" & txtFields(53) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',null," & Val(txtFields(55)) & "," & Val(txtFields(56)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
'        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'"
'        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & Val(txtFields(55)) & ",aed_dr=aed_dr+" & Val(txtFields(56)) & " where divcode='" & divcode & "' and Duty_cat='A' and Duty_code='" & txtFields(53) & "'"
'   End If
'   If Trim(txtFields(57)) <> "" Then
'        Set RS = New Recordset
'        RS.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'", DB
'        docNo = YearNo & Padl(CStr(RS(0) + 1), 6, "0")
'        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & divcode & "','" & txtFields(57) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',null," & Val(txtFields(59)) & "," & Val(txtFields(60)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
'        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'"
'        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & Val(txtFields(59)) & ",aed_dr=aed_dr+" & Val(txtFields(60)) & " where divcode='" & divcode & "' and Duty_cat='C' and Duty_code='" & txtFields(57) & "'"
'   End If
' End If
' Exit Sub
'sp1:
'    MsgBox "Check the Invoice type you have selected", vbInformation, head
'    DB.RollbackTrans
'    errflg = True
'
'UPDATEERR:
'MsgBox "This Record Not Saved", vbInformation, head
'DB.RollbackTrans
'errflg = True
'End Sub
'Private Sub DelUpdate()
''DELETION TIME UPDATATIONS
'On Error GoTo DELUPDATEERR
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
''----------------------------RG1TRN
'    Set RS = New Recordset
'    RS.Open "Select inv_cat from ig_invtype where inv_type='" & txtFields(0) & "' and divcode = '" & divcode & "'", DB
'    If RS(0) = "E" Then
'        DB.Execute "update ig_rrg1trn set exp_kgs=exp_kgs-" & Val(grddatagrid.Columns(7)) & ",exp_value=exp_value-" & grddatagrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'    ElseIf RS(0) = "P" Then
'        DB.Execute "update ig_rrg1trn set ar3a_kgs=AR3A_kgs-" & Val(grddatagrid.Columns(7)) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'    Else
'        DB.Execute "update ig_rrg1trn set home_kgs=home_kgs-" & Val(grddatagrid.Columns(7)) & ",home_value=home_value-" & grddatagrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'    End If
'        DB.Execute "update ig_rrg1trn set packs=packs-" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs-" & grddatagrid.Columns(7) & ",bed_amt=bed_amt-" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt-" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices,1,len(invoices)),duty_sales=duty_sales-" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
''-------------------------------CDSTOCK
'
'    If RS(0) = "C" Or RS(0) = "T" Or RS(0) = "P" Then
'            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS-" & Val(grddatagrid.Columns(7)) & " WHERE DIVCODE='" & divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & Val(CStr(Year(MaskEdBox1(0))) & CStr(Month(MaskEdBox1(0))))
'    End If
''---------------------------------PACKNOS
'   Set RS = New Recordset
'   RS.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & divcode & "'", DB
'   PackNo = RS(0)
'   Do While PackNo <= RS(1)
'    DB.Execute "update ig_rpacknos set INVOICED='N' where divcode='" & divcode & "' and packno_code='" & RS(2) & "' and pack_year=" & RS(3) & "and pack_no=" & PackNo
'    PackNo = PackNo + 1
'   Loop
'
''--------------------------------Contract
'   DB.Execute "update ig_rcontdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(7) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
'
''--------------------------------Product
'   DB.Execute "update ig_product set kg_rate=" & grddatagrid.Columns(9) & " where Product_code='" & grddatagrid.Columns(5) & "'"
'   ADOSECONDARYRS.MoveNext
'   Loop
'
''---------------------------Bale Order
'      DB.Execute "update IG_RBOHD set inv_type=null,inv_no=null where divcode='" & divcode & "' and bo_type='" & txtFields(4) & "' and bo_no='" & txtFields(5) & "'"
'
''-----------------------Duty TRN & DutyType
'
' If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
'   If Trim(txtFields(32).Text) <> "" Then
'        Set RS = New Recordset
'        RS.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "' and tran_type='I'", DB
'        If RS(0) = Val(Mid$(RS(1), 3, 6)) Then
'            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & divcode & "' AND DUTY_CODE='" & txtFields(32) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
'            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'"
'            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & Val(txtFields(51)) & ",aed_dr=aed_dr-" & Val(txtFields(52)) & " where divcode='" & divcode & "' and Duty_cat='P' and Duty_code='" & txtFields(32) & "'"
'        Else
'            GoTo DELUPDATEERR
'        End If
'   End If
'   If Trim(txtFields(53)) <> "" Then
'        Set RS = New Recordset
'        RS.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "' AND TRAN_TYPE='I'", DB
'        If RS(0) = Val(Mid$(RS(1), 3, 6)) Then
'            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & divcode & "' AND DUTY_CODE='" & txtFields(53) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
'            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'"
'            DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & Val(txtFields(55)) & ",aed_dr=aed_der+" & Val(txtFields(56)) & " where divcode='" & divcode & "' and Duty_cat='A' and Duty_code='" & txtFields(53) & "'"
'        Else
'            GoTo DELUPDATEERR
'        End If
'   End If
'   If Trim(txtFields(57)) <> "" Then
'        Set RS = New Recordset
'        RS.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "' AND TRAN_TYPE='I'", DB
'        If RS(0) = Val(Mid$(RS(1), 3, 6)) Then
'            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & divcode & "' AND DUTY_CODE='" & txtFields(57) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
'            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'"
'            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & Val(txtFields(59)) & ",aed_dr=aed_dr-" & Val(txtFields(60)) & " where divcode='" & divcode & "' and Duty_cat='C' and Duty_code='" & txtFields(57) & "'"
'        Else
'            GoTo DELUPDATEERR
'        End If
'
'   End If
'
'
' End If
' Exit Sub
'DELUPDATEERR:
'MsgBox "This Record Cannot be Deleted" & err.Description, vbInformation, head
'DB.RollbackTrans
'errflg = True
'End Sub
'Private Sub NETTOEX()
''THIS PROCEDURE FIND THE EX-MILL RATE FROM NETT RATE
'ExR = 0
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
'If (Val(grddatagrid.Columns(9)) = 0 Or Trim(grddatagrid.Columns(9)) = "") And rate > 0 Then
'    NettR = rate 'Val(grdDataGrid.Columns(10))
'    STPer = Val(grddatagrid.Columns(14)) / 100
'    SCPer = Val(grddatagrid.Columns(17)) / 100
'    BEDPer = Val(grddatagrid.Columns(15)) / 100
'    AEDPer = Val(grddatagrid.Columns(16)) / 100
'    CESSPer = Val(txtFields(15).Text) / 100
'    Set RS = New Recordset
'    RS.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type=b.product_type and a.divcode='" & divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
'    If Not RS.EOF Then CHARPer = RS(0)
'                        '******************calculation******************
''*************** original comment by prakash
'    ExR = NettR
'    'for rasi changed by senthil
'
'ExR = Round((NettR / (((1 + STPer) + (STPer * SCPer)) * ((1 + BEDPer) + (BEDPer * AEDPer) + CESSPer))) - Val(txtFields(31).Text) / Val(grddatagrid.Columns(7).Text), 3)
'
'
'' '-----------------------------Exmillrate=exmilrate-freight
''      ExR = KSLRound(ExR - Val(txtfields(31).Text) / Val(grdDataGrid.Columns(7).Text), 5)
'''-----------------------nett-st-sc
''      ExR = KSLRound(ExR / (1 + STPer + (STPer * SCPer)), 5)
'''-----------------------nett-st-sc-aed-bed
''     ExR = KSLRound(ExR / (1 + BEDPer + (BEDPer * AEDPer)), 5)
'''-----------------------nett-st-sc-aed-bed-cess
''     'Easwar ExR = KSLRound(ExR - ExR * CESSPer, 5)
''     ExR = KSLRound(ExR - (ExR * CESSPer), 5)
'
'''-----------------------EXMILL RATE = NETTRATE-SC-ST-AED-BED-CESS-CHARITY
'
''     ExR = KSLRound(ExR - (Val(grdDataGrid.Columns(6).Text) * CHARPer), 2)
'
'
''****************************************************
''by prakash.s
''Dim ex As Double
''ex  = 0
''ex1 = 0
''ExR = KSLRound((NettR * (Val(grdDataGrid.Columns(14).Text) + Val(grdDataGrid.Columns(17).Text))) / (100 + (STPer + SCPer) * 100), 4)
''ExR = ExR / (NettR + (STPer + SCPer) * 100)
''ExR = NettR - ExR
''ex  = ExR
''ExR = Val(ex * (18.45)) / (118.45)
''Ex1 = ExR
''ex1 = ex - ExR
''ExR = Round(ex - ExR, 4)
''***************
'
'grddatagrid.Columns(9) = ExR
'STPer = 0
'SCPer = 0
'BEDPer = 0
'AEDPer = 0
'CESSPer = 0
'CHARPer = 0
'End If
'ADOSECONDARYRS.MoveNext
'Loop
'End Sub
'Private Sub ModLock()
''THIS PROCEDURE UNLOCKS THE MODIFIABLE FIELDS
'For i = 61 To 65
'    txtFields(i).Locked = False
'Next
'For i = 34 To 38
'    txtFields(i).Locked = False
'Next
'txtFields(29).Locked = False
'End Sub

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rate As Double
Dim adoSecondaryRS, QryRS As Recordset
Dim Rs, rs1, rs2 As Recordset
Dim DB As Connection
Dim Opt, STFLAG As String
Dim st, st1, st2 As String
Dim itary() As String
Dim cou, Col As Integer
Dim cou1, c As Integer
Dim flg As String
Dim Rep As Report.ReportView
Dim a, b As Integer
Dim xx As Integer
Dim Str As String
Dim rf As String
Dim ex1, ex As Double

Dim docNo As String
Dim SCPer, STPer, AEDPer, BEDPer, CESSPer, CHARPer, INVSNO  As Integer
Dim errflg, CHFLG, CESSFLG, DUTYFLG, TAXFLG As Boolean
Dim NettRExR, NettR, ExR, PackNo, invamt, DBED, DAED, Charity, cess, Bed, Aed, tax, SurCharge, Insur, Rndoff, Assval, TotAmt As Double

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
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
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
'Addition
     Opt = "add"
     desc.Caption = "Addition"
     CHFLG = False
     CESSFLG = False
     DUTYFLG = False
     TAXFLG = False
     errflg = False
     Dim c As Control
     SSTab1.Enabled = True

     For Each c In Me.Controls
        If TypeOf c Is TextBox Then
           c.Text = ""
        End If
     Next
     SSTab1.Tab = 0
     Screen.MousePointer = 11
     desc.Caption = "Addition"
     stbar.Panels(2).Text = "Addition"
     DB.BeginTrans
     Set adoPrimaryRS = New Recordset
     Set adoSecondaryRS = New Recordset
     adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,entdate,user_id from IG_RINVHD where divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
     adoPrimaryRS.AddNew
     Call bindcontls
     ReDim itary(100, 0)
     adoSecondaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO  FROM IG_RINVDT where divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
     Set grddatagrid.DataSource = adoSecondaryRS
     Call GRIDALIGN
     MaskEdBox1(0).Text = pdate
     DTPicker1(0).Value = pdate
     MaskEdBox1(2).Text = pdate
     DTPicker1(2).Value = pdate
     txtFields(36).Text = Mid$(time, 1, 8)
     txtFields(37).Text = Mid$(time, 1, 8)
     txtFields(15).Text = "0.05"
     'adoSecondaryRS.AddNew
     grddatagrid.AllowAddNew = True
     grddatagrid.AllowUpdate = True
     Call ENABLCONTLS
     Call adddelmod(BUTTON)
     txtFields(0).SetFocus
     Screen.MousePointer = 0
     txtFields(13).Locked = False
Case 1 'mod
    If Record_Exists("IG_RINVHD A WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
        BUTTON_Click (10)
        Exit Sub
    End If
    SSTab1.Enabled = True
    Opt = "mod"
    errflg = False
    desc.Caption = "Modification"
    DB.BeginTrans
    LookUp.clear = True
    '' Kuppuram - 27-Apr-2007 - INV_TYPE = 'WS' is changed to INV_TYPE like 'W%'
    ''LookUp.query = "select inv_no,inv_type from ig_rinvhd WHERE INV_TYPE='WS' and divcode='" & Divcode & "' "
    LookUp.Query = "select inv_no""InvoiceNo."",inv_type""Type"" from ig_rinvhd WHERE INV_TYPE  like 'W%' and divcode='" & Divcode & "' "
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "InvoiceNo."
    LookUp.ALIGN = "1500,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 from IG_RINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
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
'''    ksldesc1.table = "IG_RINVHD A WHERE INV_TYPE='WS' AND CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE AND INV_TYPE='WS' GROUP BY CEX_INV_TYPE) AND INV_TYPE='WS'"
'''    ksldesc1.listfield1 = "a.inv_type AS Invoice_type"
'''    ksldesc1.listfield2 = "a.inv_no"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    ksldesc1.SetFocus
    If Opt = "mod" Then
    
    Call adddelmod(BUTTON)
'    Call gridalign
    Call ModLock
    txtFields(61).Locked = False
    txtFields(62).Locked = False
    txtFields(63).Locked = False
    txtFields(64).Locked = False
     End If
Case 2 'DEL
    If Record_Exists("IG_RINVHD H WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE H.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "del"
    desc.Caption = "Deletion"
    DB.BeginTrans
    errflg = False
    LookUp.clear = True
    '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
    ''LookUp.query = "select inv_no,inv_type from ig_rinvhd WHERE INV_TYPE='WS' and divcode='" & Divcode & "' "
    LookUp.Query = "select inv_no""InvoiceNo."",inv_type""Type"" from ig_rinvhd WHERE INV_TYPE like 'W%' and divcode='" & Divcode & "' "
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "InvoiceNo."
    LookUp.ALIGN = "1500,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 from IG_RINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
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
'''    ksldesc1.table = "IG_RINVHD A WHERE INV_TYPE='WS' AND CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE AND INV_TYPE='WS' GROUP BY CEX_INV_TYPE) AND INV_TYPE='WS'"
'''    ksldesc1.listfield1 = "a.inv_type AS Invoice_type"
'''    ksldesc1.listfield2 = "a.inv_no"
'''    Frame6.ZOrder
'''    Frame6.Visible = True
'''    ksldesc1.SetFocus
    Call adddelmod(BUTTON)
'    Call gridalign
    
Case 4 'Find
    If Record_Exists("IG_RINVHD H", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "qry"
    desc.Caption = "Find"
    errflg = False
    listlb.Caption = "Invoice Listing"
    Buttonframe.Enabled = False
    KslDesc1.conn = connectstring
    KslDesc1.Table = "IG_RINVHD H"
    KslDesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
    KslDesc1.listfield2 = "H.inv_no"
    Frame6.ZOrder
    Frame6.Visible = True
    KslDesc1.SetFocus
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
        If Not ADOPRIAMARYRS.BOF Then
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
            If Trim(txtFields(13).Text) = "" Then
                MsgBox "Despatch To cannot be empty", vbInformation, head
                txtFields(13).SetFocus
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
                adoSecondaryRS("INV_TYPE") = txtFields(0).Text
                adoSecondaryRS("INV_NO") = txtFields(1).Text
                adoSecondaryRS("INVSNO") = INSNO + 1
                adoSecondaryRS("Cont No.") = IIf(IsNull(adoSecondaryRS("Cont No.")), " ", adoSecondaryRS("Cont No."))
                adoSecondaryRS("Cont Type") = IIf(IsNull(adoSecondaryRS("Cont Type")), " ", adoSecondaryRS("Cont Type"))
            End If
            adoSecondaryRS.MoveNext
        Loop
            Call INVCALC
            DBED = 0
            DAED = 0
        If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
            DBED = val(txtFields(51).Text) + val(txtFields(55).Text) + val(txtFields(59).Text)
            If Not val(txtFields(43)) = val(DBED) Then
                MsgBox "B.E.D Amount Not Tally", vbInformation, head
                txtFields(34).SetFocus
                Exit Sub
            End If
            DAED = val(txtFields(52).Text) + val(txtFields(56).Text) + val(txtFields(60).Text)
            If Not (val(txtFields(44)) = val(DAED)) Then
                MsgBox "A.E.D Amount Not Tally", vbInformation, head
                txtFields(34).SetFocus
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
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        adoSecondaryRS.UpdateBatch adAffectAllChapters
        DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtFields(1).Text, 3, 8)) & " WHERE DOC_TYPE='I' AND DIVCODE='" & Divcode & "'", a
        If Not Trim(txtFields(2).Text) = "" Then DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtFields(3).Text, 3, 8)) & " WHERE DOC_TYPE='E' AND DOC_REF='" & txtFields(2).Text & "' AND YEAR_NO='" & YearNo & "'"
        Call AddUpdate
        If Not errflg Then
            DB.CommitTrans
            MsgBox "Record(s) Saved Sucessfully", vbInformation, head
        End If
        Opt = " "
    ElseIf Opt = "mod" Then
        adoPrimaryRS("User_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        adoSecondaryRS.UpdateBatch adAffectAllChapters
        If Not errflg Then
            DB.CommitTrans
            MsgBox "Records Save Sucessfully", vbInformation, head
        End If
            Opt = " "
    ElseIf Opt = "del" Then
        On Error GoTo DELERR6
        Call DelUpdate
        If Not errflg Then
            DB.Execute "delete from IG_RINVDT where divcode='" & Divcode & "' and inv_type='" & txtFields(0) & "' and inv_no='" & txtFields(1) & "'"
            DB.Execute "delete from IG_RINVHD where divcode='" & Divcode & "' and inv_type='" & txtFields(0) & "' and inv_no='" & txtFields(1) & "'"
            DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='I' AND DOC_REF='" & txtFields(0).Text & "'"
            'db.Execute "update in_bodt a,inbohd b set b.inv_type=null ,b.invno = null where b.divcode = '" & divcode & "' and b.bo_type = '" & txtFields(5).Text & "' and b.bo_no = '" & txtFields(4) & "' and b.bo_type = a.bo_type and b.bo_no = a.bo_no and b.divcode = a.divcode"
            If Not Trim(txtFields(2).Text) = "" Then DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='E' AND DOC_REF='" & txtFields(2).Text & "'"
            
            DB.CommitTrans
            MsgBox "Records Deleted Sucessfully", vbInformation, head
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
        
Case 10
    'CANCEL
    Screen.MousePointer = 11
    Frame6.Visible = False
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call cancl1(BUTTON, 24)
    Buttonframe.Enabled = True
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
        
Case 11
'EXIT
    Unload Me
End Select
End Sub


Private Sub Combo1_Click(Index As Integer)
Call Combo1_Validate(Index, False)
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
        grddatagrid.Columns(22) = 0
    End If
Case 2
    If Combo1(2).Text = "Y-YES" Then
        CHFLG = 1
        Charity = 0
        grddatagrid.Columns(12) = 0
    Else
        CHFLG = False
        Charity = 0
        grddatagrid.Columns(12) = 0
    End If
Case 3
    If Combo1(3).Text = "Y-YES" Then
        DUTYFLG = 1
        Bed = 0
        Aed = 0
        grddatagrid.Columns(19) = 0
        grddatagrid.Columns(20) = 0
    Else
        DUTYFLG = False
        Bed = 0
        Aed = 0
        For i = 51 To 60
            txtFields(i).Text = ""
        Next
        txtFields(66).Text = ""
        txtFields(67).Text = ""
        txtFields(68).Text = ""
        txtFields(32).Text = ""
        txtFields(33).Text = ""
        grddatagrid.Columns(19) = 0
        grddatagrid.Columns(20) = 0

    End If
Case 4
    If Combo1(4).Text = "Y-YES" Then
        TAXFLG = 1
        tax = 0
        grddatagrid.Columns(18) = 0
        grddatagrid.Columns(21) = 0
    Else
        TAXFLG = False
        tax = 0
        grddatagrid.Columns(18) = 0
        grddatagrid.Columns(21) = 0
    End If

End Select
Call INVCALC
End Sub
Private Sub DTPicker1_CloseUp(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3
    MaskEdBox1(Index).Text = DTPicker1(Index).Value
End Select
End If
End Sub



Private Sub Form_Load()
   Opt = "qry"
   b = 0
   Set DB = New Connection
   DB.CursorLocation = adUseClient
   DB.Open "PROVIDER=MSDataShape;" & connectstring
   desc.Caption = "Query"
   DATLAB.Caption = Date
   stbar.Panels(1).Text = head
   txtFields(47).FontBold = True
   DTPicker1(0).Value = pdate
   DTPicker1(1).Value = pdate
   DTPicker1(2).Value = pdate
   Call QUERY_MODE
   SSTab1.Tab = 0
End Sub
Private Sub QUERY_MODE(Optional InvType As String, Optional INVNO As String)
On Error GoTo ER1
If Opt = " " Or Opt = "qry" Then
    If INVNO = "" Then
        Set QryRS = New Recordset
        '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
        ''QryRS.Open "select inv_type from IG_RINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE='WS' ORDER BY INV_TYPE", DB
        QryRS.Open "select inv_type from IG_RINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE like 'W%' ORDER BY INV_TYPE", DB
        Set adoPrimaryRS = New Recordset
        '' Kuppuram - 27-Apr-2007 - INV_TYPE='WS' is changed to INV_TYPE like 'W%'
        ''adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE='WS' } AS ParentCMD APPEND " & _
        ''"({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & Divcode & "' AND INV_TYPE='WS' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
        
        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE DIVCODE='" & Divcode & "' AND INV_TYPE like 'W%' } AS ParentCMD APPEND " & _
        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & Divcode & "' AND INV_TYPE  like 'W%' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
    Else
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,ARE_NO,lr_date,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE='" & InvType & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' } AS ParentCMD APPEND " & _
'        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & divcode & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' AND INV_TYPE='WS' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        adoPrimaryRS.MoveLast
    End If
    Call disablcontls
    Call bindcontls
    If Not adoPrimaryRS.RecordCount > 0 Then
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
            Screen.MousePointer = 0
            Exit Sub
    End If
    Set grddatagrid.DataSource = adoPrimaryRS("childCMD").UnderlyingValue
    desc.Caption = "Query"
    stbar.Panels(2).Text = "Query"
    BUTTON(9).Enabled = False
    GRIDALIGN
    Call NEWFORM1(BUTTON, 24)
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    End If
    SSTab1.Enabled = True
    SSTab1.Tab = 0
    BUTTON(0).SetFocus
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
Dim c As Control
For Each c In Me.Controls
 If TypeOf c Is TextBox Then
    Set c.DataSource = adoPrimaryRS
 End If
Next
End If
End Sub

Public Sub disablcontls()
Dim c As Control
For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = True
Next
End Sub
Public Sub ENABLCONTLS()
Dim c As Control
For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = False
Next
For i = 6 To 28
txtFields(i).Locked = True
Next
txtFields(12).Locked = False
End Sub
Private Sub GRIDALIGN()
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Visible = False
    grddatagrid.EditActive = False
    For i = 0 To 22
        grddatagrid.Columns(i).Locked = True
   Next

End Sub



Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
    'If ColIndex = 7 Then
        
    'End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
If ColIndex = 7 Or ColIndex = 14 Or ColIndex = 9 Then
    Call INVCALC
End If

Buttonframe.Enabled = True
End Sub
Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
'Call InvCalc
If Opt = "add" Or Opt = "mod" Then
If LastCol = 13 Then
    LookUp.clear = True
    LookUp.Query = "select TAX_CODE""TaxCode"",DESCRIPTION,ABBR""Abbreviation"",ST_PER""Percentage""  from ig_tax where  taxstatus='Y'"
    LookUp.Caption = "Tax Type Listing"
    LookUp.DefCol = "TaxCode"
    LookUp.ALIGN = "1500,2500,1500,1500"
    LookUp.Show vbModal
    
    If LookUp.Cancel = False Then
            grddatagrid.Columns(13).Text = LookUp.Fields(0)
            grddatagrid.Columns(14).Text = LookUp.Fields(3)
            LookUp.clear = True
            Call INVCALC
            grddatagrid.Col = 16
            grddatagrid.SetFocus
    End If
End If
End If
End Sub

Private Sub Lovcancel_Click()
    Buttonframe.Enabled = True
    Frame6.Visible = False
    If Not KslDesc1.listfield1 = "P.DUTY_CODE" Then BUTTON_Click (10)
End Sub

Private Sub lovok_Click()
Select Case KslDesc1.listfield1

Case "Inv_type"
    txtFields(0).Text = KslDesc1.Code
    Set Rs = New Recordset
    'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'and doc_ref = '" & KslDesc1.Code & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", DB
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtFields(1).Text = docNo
    txtFields(1).SetFocus
'    txtfields(1).Locked = True
    Set Rs = New Recordset
    Rs.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
     txtFields(6).Text = KslDesc1.Code
      txtFields(7).Text = KslDesc1.description
      txtFields(50).SetFocus
Case "CEX_INVTYPE"
    txtFields(2).Text = KslDesc1.Code
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & KslDesc1.Code & "' AND YEAR_NO='" & YearNo & "'", DB
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtFields(3).Text = docNo
    MaskEdBox1(0).SetFocus
Case "DATE", "convert(varchar,DATE,103)"
    adoSecondaryRS.Requery
    Call GRIDALIGN
    txtFields(5).Text = Mid$(KslDesc1.description, 1, 8)
    txtFields(4).Text = Right(KslDesc1.description, 2)
    
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0),isnull(b.cont_no,0), b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),0,isnull(a.rateflg,'X') from IG_RBOHD a, IG_RBODT b where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and  a.divcode='" & Divcode & "' and a.bo_no='" & Mid$(KslDesc1.description, 1, 8) & "' and a.bo_type='" & Right(KslDesc1.description, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rateflg", DB
    txtFields(6).Text = Rs(0)
    txtFields(34).Text = Rs(1)
    While Not Rs.EOF
        adoSecondaryRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        Set rs1 = New Recordset
        
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
        End If
        Set rs2 = New Recordset
        rs2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_product a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        If Not rs2.EOF Then
        txtFields(15).Text = rs2(3)
        grddatagrid.Columns(6).Text = Rs(5)
        grddatagrid.Columns(7).Text = Rs(6)
        grddatagrid.Columns(8).Text = Rs(7)
        If Rs(9) = "X" Then
            grddatagrid.Columns(9).Text = Rs(8)
            rf = Rs(9)
        Else
            'prakash on 21/6/02
            Rate = IIf(IsNull(Rs(8)), 0, Rs(8))
            grddatagrid.Columns(10).Text = IIf(IsNull(Rs(8)), 0, Rs(8))
            rf = Rs(9)
        End If
        'grddatagrid.Columns(10
        If Not rs1.EOF Then
            grddatagrid.Columns(13).Text = rs1(0)
            grddatagrid.Columns(14).Text = rs1(1)
            grddatagrid.Columns(17).Text = rs1(2)
        End If
        grddatagrid.Columns(15).Text = rs2(2)
        grddatagrid.Columns(16).Text = rs2(1)

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
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where DOC_TYPE='D' and doc_ref='" & KslDesc1.Code & "' and divcode = '" & Divcode & "'", DB
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    If xx = 66 Then
        txtFields(32).Text = KslDesc1.Code
        txtFields(33).Text = docNo
        txtFields(51).SetFocus
    ElseIf xx = 67 Then
        txtFields(53).Text = KslDesc1.Code
        txtFields(54).Text = docNo
        txtFields(56).SetFocus
    Else
        txtFields(57).Text = KslDesc1.Code
        txtFields(58).Text = docNo
        txtFields(59).SetFocus
    End If
Case "Carrier_CODE"
    txtFields(29).Text = KslDesc1.Code
    txtFields(30).Text = KslDesc1.description
Case "BANK_CODE"
    txtFields(48).Text = KslDesc1.Code
Case "a.inv_type AS Invoice_type"
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 from IG_RINVHD where inv_type='" & KslDesc1.Code & "' and inv_no='" & KslDesc1.description & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where inv_type='" & KslDesc1.Code & "' and inv_no='" & KslDesc1.description & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = adoSecondaryRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
    txtFields(13).Text = KslDesc1.Code
    txtFields(14).Text = KslDesc1.description
    
End Select
    Buttonframe.Enabled = True
    Frame6.Visible = False
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3
        If IsDate(MaskEdBox1(Index).Text) Then DTPicker1(Index).Value = MaskEdBox1(Index).Text
End Select
End If
End Sub



Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If
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
        rs1.Open "select isnull(slname,' ') from fa_slmas where slcode='" & txtFields(Index).Text & "'", DB
        If Not rs1.EOF Then txtFields(Index + 1).Text = rs1(0)
        
Case 7
        On Error Resume Next
            Set rs1 = New Recordset
            rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from fa_slmas where slcode='" & txtFields(6).Text & "'", DB
            If Opt = "add" Then
                If KslDesc1.description <> "" Then
                    Set Rss = New Recordset
                    Rss.Open "select deliveyat from IG_RBOHD where bo_no='" & Mid$(Trim(KslDesc1.description), 4, Len(KslDesc1.description)) & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
                    
                End If
            End If
    If Rss.EOF Then Exit Sub
    If Rss(0) <> "" Then
            Set rs1 = New Recordset
           rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from ig_rdeladd where slcode='" & txtFields(6).Text & "' and cname='" & Rss(0) & "'", DB
            If Opt = "add" And KslDesc1.description <> "" And Rss.RecordCount > 0 Then
                txtFields(61).Text = Rss(0)
            End If
                txtFields(62).Text = rs1(0)
                txtFields(63).Text = rs1(1)
                txtFields(64).Text = rs1(2)
                Set dt = New Recordset
                dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtFields(64).Text & "'", DB, adOpenStatic
                txtFields(13).Text = dt(0)
                txtFields(14).Text = dt(1)
    Else
            txtFields(61).Text = txtFields(7).Text
            txtFields(62).Text = rs1(0)
            txtFields(63).Text = rs1(1)
            txtFields(64).Text = rs1(2)
            Set dt = New Recordset
            dt.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtFields(64).Text & "'", DB, adOpenStatic
            If dt.RecordCount > 0 Then
                txtFields(13).Text = dt(0)
                txtFields(14).Text = dt(1)
            Else
                txtFields(13).Locked = False
                txtFields(14).Locked = False
            End If
    End If
     
Case 32
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtFields(66).Text = rs1(0)
        
Case 53
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtFields(67).Text = rs1(0)
Case 57

        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtFields(Index).Text & "' and divcode = '" & Divcode & "'", DB
            If Not rs1.EOF Then txtFields(68).Text = rs1(0)
        
Case 48
        Set rs1 = New Recordset
        rs1.Open "select name from ig_bank where bank_code='" & txtFields(Index).Text & "'", DB
        If Not rs1.EOF Then txtFields(12).Text = rs1(0)
Case 29
        Set rs1 = New Recordset
        rs1.Open "select name from ig_CARRIER where CARRIER_CODE='" & txtFields(Index).Text & "'", DB
        If Not rs1.EOF Then txtFields(30).Text = rs1(0)
End Select
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
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
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'", "Duty Type Not Found") = False Then Exit Sub
    xx = 66
    Buttonframe.Enabled = False
    KslDesc1.conn = connectstring
    listlb.Caption = "PLA-Duty Type Listing"
    KslDesc1.Table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'"
    KslDesc1.listfield1 = "P.DUTY_CODE"
    KslDesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    KslDesc1.SetFocus
Case 53
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 67
    KslDesc1.conn = connectstring
    listlb.Caption = "RG23A-Duty Type Listing"
    KslDesc1.Table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'"
    KslDesc1.listfield1 = "P.DUTY_CODE"
    KslDesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    KslDesc1.SetFocus
Case 57
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 68
    KslDesc1.conn = connectstring
    listlb.Caption = "RG23C-Duty Type Listing"
    KslDesc1.Table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'"
    KslDesc1.listfield1 = "P.DUTY_CODE"
    KslDesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    KslDesc1.SetFocus
Case 29
End Select
End If
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
Call ToUpCase(txtFields, KeyAscii)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 50
'    Call ToNum(txtfields(Index), 3, KeyAscii)
Case 51, 52, 55, 56, 59, 60, 31
    Call tonum(txtFields(Index), 8, KeyAscii)
Case 29
    Call ToUpCase(txtFields(Index), KeyAscii)
    
End Select
End If
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
Select Case Index
Case 50
    SSTab1.Tab = 2
    txtFields(29).SetFocus
Case 69
    On Error Resume Next
    adoSecondaryRS.MoveFirst
    If txtFields(69).Text <> "" And grddatagrid.Columns(6).Value <> "" Then
        txt = txtFields(69).Text * grddatagrid.Columns(6).Value
        txtFields(31).Text = val(txt)
        txtFields(31).SetFocus
    End If
End Select
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 0
    If Record_Exists("ig_invtype where divcode='" & Divcode & "'", "Please Define Invoice Type") = False Then
        Call BUTTON_Click(10)
        Exit Sub
    End If
    
    '' Kuppuram - 27-Apr-2007 - Check for Waste Sales Invoice Type is defined
    Set rs_invtype = New Recordset
    rs_invtype.Open "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like 'W%'", DB
        
    If rs_invtype.RecordCount < 1 Then
        MsgBox "Pls. define Invoice Type as starting with 'W' for Waste Sales", vbInformation, head
        txtFields(0).Text = ""
        txtFields(0).SetFocus
        rs_invtype.Close
        Exit Sub
    End If
    rs_invtype.Close
    
    Buttonframe.Enabled = False
    LookUp.clear = True
    '' Kuppuram - 27-Apr-2007
    '' INV_TYPE = 'WS' is changed to INV_TYPE like 'W%'
    ''LookUp.query = "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE='WS' "
    LookUp.Query = "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like 'W%' "
    LookUp.Caption = "Invoice Type Listing"
    LookUp.DefCol = "DESCRIPTION"
    LookUp.ALIGN = "1500,1500"
    LookUp.Show vbModal
    
    If LookUp.Cancel = False Then
        Buttonframe.Enabled = True
        SSTab1.Visible = True
        txtFields(0).Text = LookUp.Fields(0)
        Set Rs = New Recordset
        'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
        YearNo = Right(Year(yfdate), 2)
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'and doc_ref = '" & LookUp.Fields(0) & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", DB
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        txtFields(1).Text = docNo
        
        
        '' Kuppuram - 27-Apr-2007 - CEX Invoice Type and Number assigned
        '' as Invoice Type and Invoice Number and Locked
        txtFields(2).Text = txtFields(0).Text
        txtFields(3).Text = docNo
        txtFields(2).Locked = True
        txtFields(3).Locked = True
        txtFields(4).SetFocus
        
    '    txtfields(1).Locked = True
        Set Rs = New Recordset
        Rs.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtFields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
            txtFields(0).Text = ""
            txtFields(0).SetFocus
            Exit Sub
        End If
    Else
        Buttonframe.Enabled = True
        SSTab1.Visible = True
        SSTab1.Tab = 0
        txtFields(0).SetFocus
    End If
Case 2
    If Record_Exists("ig_INVTYPE A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtFields(0).Text & "' AND A.divcode='" & Divcode & "'", "CEXInvoice Type not found") = False Then
'        Call BUTTON_Click(10)
        Exit Sub
    End If
    Buttonframe.Enabled = False
    LookUp.clear = True
    LookUp.Query = "select CEX_INVTYPE,B.DESCRIPTION from ig_invtype A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtFields(0).Text & "' AND A.divcode='" & Divcode & "'"
    LookUp.Caption = "Central Excise Invoice Type Listing"
    LookUp.DefCol = "CEX_INVTYPE"
    LookUp.ALIGN = "1500,1500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    txtFields(2).Text = LookUp.Fields(0)
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & LookUp.Fields(0) & "' AND YEAR_NO='" & YearNo & "'", DB
    docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtFields(3).Text = docNo
    MaskEdBox1(0).SetFocus
    LookUp.clear = True
    Else
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    SSTab1.Tab = 0
    txtFields(2).SetFocus
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
    If Record_Exists("IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL and issflg='SA'", "Waste Issue Not Found") = False Then
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Buttonframe.Enabled = True
    LookUp.clear = True
    LookUp.Query = "select DATE,BO_NO,bo_type from IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL and ISSFLG='SA' "
    LookUp.Caption = "Bale Order Listing"
    LookUp.ALIGN = "1500,1500,1500"
    LookUp.DefCol = "date"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    adoSecondaryRS.Requery
    Call GRIDALIGN
    txtFields(5).Text = LookUp.Fields(1)
    txtFields(4).Text = LookUp.Fields(2)
    
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0),isnull(b.cont_no,0), b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),0,isnull(a.rateflg,'X') from IG_RBOHD a, IG_RBODT b where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and  a.divcode='" & Divcode & "' and a.bo_no='" & LookUp.Fields(1) & "' and a.bo_type='" & LookUp.Fields(2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rateflg", DB
    txtFields(6).Text = Rs(0)
    txtFields(34).Text = Rs(1)
    While Not Rs.EOF
        adoSecondaryRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        Set rs1 = New Recordset
        
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_rproduct where product_code='" & grddatagrid.Columns(5) & "')", DB
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_rproduct where product_code='" & grddatagrid.Columns(5) & "')", DB
        End If
        Set rs2 = New Recordset
        rs2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        If Not rs2.EOF Then
        txtFields(15).Text = rs2(3)
        grddatagrid.Columns(6).Text = Rs(5)
        grddatagrid.Columns(7).Text = Rs(6)
        grddatagrid.Columns(8).Text = Rs(7)
        If Rs(9) = "X" Then
            grddatagrid.Columns(9).Text = Rs(8)
            rf = Rs(9)
        Else
            'prakash on 21/6/02
            Rate = IIf(IsNull(Rs(8)), 0, Rs(8))
            grddatagrid.Columns(10).Text = IIf(IsNull(Rs(8)), 0, Rs(8))
            rf = Rs(9)
        End If
        'grddatagrid.Columns(10
        If Not rs1.EOF Then
            grddatagrid.Columns(13).Text = rs1(0)
            grddatagrid.Columns(14).Text = rs1(1)
            grddatagrid.Columns(17).Text = rs1(2)
        End If
        grddatagrid.Columns(15).Text = rs2(2)
        grddatagrid.Columns(16).Text = rs2(1)

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
    txtFields(6).SetFocus
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
            If Trim(txtFields(0).Text) <> "" Then
                Set Rs = New Recordset
                Rs.Open "Select * from IG_RINVHD where inv_type='" & Trim(txtFields(0).Text) & "' and inv_no='" & txtFields(1).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                    MsgBox "This Invoice Number Already Defined", vbInformation, head
                    txtFields(1).SetFocus
                    Cancel = True
                    Exit Sub
                End If
                
            End If
    Case 50, 31
    On Error Resume Next
        If Index = 31 And rf <> "X" Then
            grddatagrid.Row = 0
            grddatagrid.Columns(9).Text = 0
             NETTOEX
        End If
               Call INVCALC
    Case 29
    If Record_Exists("ig_carrier", "Carrier Not Found") = False Or Trim(txtFields(29).Text) = "" Then Exit Sub
    Set Rs = New Recordset
    Rs.Open "select count(*) from ig_carrier where carrier_code='" & txtFields(29) & "'", DB
    If Rs(0) > 0 Then
        txtFields(29).Text = txtFields(29).Text
    Else
        Buttonframe.Enabled = False
        listlb.Caption = "Carrier Listing"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "ig_carrier"
        KslDesc1.listfield1 = "Carrier_CODE"
        KslDesc1.listfield2 = "name"
        Frame6.ZOrder
        Frame6.Visible = True
        KslDesc1.SetFocus
    End If
Case 6
    'If Record_Exists("fa_slmas", "Supplier Not Found") = False Or Trim(txtfields(6).Text) = "" Then Exit Sub
    
    Set Rs = New Recordset
    Rs.Open "select count(*) from fa_slmas where slcode ='" & txtFields(6) & "'", DB
    If Rs(0) > 0 Then
        txtFields(6).Text = txtFields(6).Text
    Else
        Buttonframe.Enabled = False
        LookUp.clear = True
        '' Kuppuram - 27-Apr-2007
        '' SLCODE LIKE 'C%' is changed to SLCODE LIKE 'D%', as it waste sales
        ''LookUp.query = "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE 'C%' "
        LookUp.Query = "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE 'D%' "
        LookUp.Caption = "Supplier Listing"
        LookUp.ALIGN = "1500,3000"
        LookUp.DefCol = "slname"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
        Buttonframe.Enabled = True
        SSTab1.Tab = 0
        txtFields(6).Text = LookUp.Fields(0)
        txtFields(7).Text = LookUp.Fields(1)
        LookUp.clear = True
        txtFields(13).SetFocus
        
        Else
        Buttonframe.Enabled = True
        SSTab1.Tab = 0
        txtFields(6).SetFocus
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
        If Trim(txtFields(12).Text) <> "" Then
            Set rs1 = New Recordset
            rs1.Open "select BANK_CODE,name from ig_rBANK where NAME LIKE'" & txtFields(12).Text & "%'", DB
            If Not rs1.EOF Then
                txtFields(48).Text = rs1(0)
                txtFields(12).Text = rs1(1)
          
            Else
                Buttonframe.Enabled = False
                listlb.Caption = "Bank Listing"
                KslDesc1.conn = connectstring
                KslDesc1.Table = "ig_rBANK"
                KslDesc1.listfield1 = "BANK_CODE"
                KslDesc1.listfield2 = "name"
                Frame6.ZOrder
                Frame6.Visible = True
                KslDesc1.SetFocus
        End If
        End If
Case 13
        Set rs1 = New Recordset
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & txtFields(Index).Text & "'", DB
        If Not rs1.EOF Then
            txtFields(Index + 1).Text = rs1(0)
            STFLAG = rs1(1)
        End If
        
        If Opt = "add" Then
             Set rs1 = New Recordset
             rs1.Open "select count(*) from ig_AREA WHERE area_code='" & txtFields(13).Text & "'", DB, adOpenStatic
             If rs1(0) > 0 Then
                Set rs2 = New Recordset
                rs2.Open "select name from ig_area where area_code= '" & txtFields(13).Text & "'", DB, adOpenStatic
                txtFields(14).Text = rs2("name")
            Else
                Buttonframe.Enabled = False
                LookUp.clear = True
                LookUp.Query = "select AREA_CODE,NAME from ig_AREA "
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "1500,2000"
                LookUp.DefCol = "name"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Buttonframe.Enabled = True
                SSTab1.Tab = 0
                txtFields(13).Text = LookUp.Fields(0)
                txtFields(14).Text = LookUp.Fields(1)
                LookUp.clear = True
                txtFields(50).SetFocus
                Else
                Buttonframe.Enabled = True
                LookUp.clear = True
                SSTab1.Tab = 0
                txtFields(13).SetFocus
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
End Sub

Private Sub INVCALC()
'INVOICE CALCULATION
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
'    ex = 0
    If Not adoSecondaryRS.BOF Then adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        Set Rs = New Recordset
        Rs.Open "select isnull(charity_rate,0) from ig_Rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
                'netr=exr+sc+st+aed+bed+cess+ch
'Ass value

        grddatagrid.Columns(11) = KSLRound((val(grddatagrid.Columns(7)) * val(grddatagrid.Columns(9))), 0)
        Assval = Assval + grddatagrid.Columns(11) + val(txtFields(31).Text)
        Assval2 = Assval2 + grddatagrid.Columns(11)
        NettRExR = val(grddatagrid.Columns(9))
'Charity
        If CHFLG Then
            grddatagrid.Columns(12) = KSLRound(val(grddatagrid.Columns(6)) * (val(Rs(0))), 0)
            Charity = Charity + grddatagrid.Columns(12)
            NettRExR = NettRExR + val(Rs(0) / 100)
        Else
            grddatagrid.Columns(12) = 0
            Charity = Charity + grddatagrid.Columns(12)
            NettRExR = NettRExR + val(Rs(0) / 100)
        End If
'Cess
        If CESSFLG Then
            'grddatagrid.Columns(22) = KSLRound((Val(Assval) + Val(grddatagrid.Columns(12))) * (txtFields(15).Text / 100), 0)
' *** chinnapparaj 03/02/2005
            grddatagrid.Columns(22) = KSLRound(val(grddatagrid.Columns(11)) * (txtFields(15).Text / 100), 0)
            cess = cess + val(grddatagrid.Columns(22))
            NettRExR = NettRExR + (NettRExR * ((txtFields(15).Text / 100)))
        Else
            grddatagrid.Columns(22) = 0
            cess = cess + val(grddatagrid.Columns(22))
            NettRExR = NettRExR + (NettRExR * ((txtFields(15).Text / 100)))
        End If
'Duty
        If DUTYFLG Then
            '*****************
            'PRAKASH.S
            grddatagrid.Columns(19) = KSLRound(((val(Assval) + val(grddatagrid.Columns(12))) * (val(grddatagrid.Columns(15)) / 100)), 0)
            '*****************
            Bed = Round(Bed + grddatagrid.Columns(19))
            bedR = NettRExR * val(grddatagrid.Columns(15)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(15)) / 100)
            
            '***************
            txtFields(20).Text = Round(Bed, 0)
            txtFields(43).Text = Round(Bed, 0)
            '***************

            grddatagrid.Columns(20) = KSLRound((grddatagrid.Columns(19)) * (val(grddatagrid.Columns(16)) / 100), 0)
            Aed = Aed + val(grddatagrid.Columns(20))
            NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(16)) / 100)
            
            '*****************
             txtFields(22).Text = Round(Aed, 0)
             txtFields(44).Text = Round(Aed, 0)
            '*****************
        Else
            grddatagrid.Columns(19) = 0
            grddatagrid.Columns(20) = 0
            Bed = Round(Bed + grddatagrid.Columns(19))
            bedR = NettRExR * val(grddatagrid.Columns(15)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(15)) / 100)
            Aed = Aed + val(grddatagrid.Columns(20))
            NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(16)) / 100)
        
        End If
'Tax
        If TAXFLG Then
'            grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + Val(grddatagrid.Columns(12)) + Val(grddatagrid.Columns(22)) + Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            'grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + (KSLRound(Val(Assval) * (txtfields(15).Text / 100), 0))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            grddatagrid.Columns(18) = (val(grddatagrid.Columns(11)) + val(grddatagrid.Columns(22))) * (val(grddatagrid.Columns(14)) / 100)
            tax = tax + Round(grddatagrid.Columns(18), 2)
            TaxR = NettRExR * val(grddatagrid.Columns(14)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(14)) / 100)
            grddatagrid.Columns(21) = KSLRound(val(grddatagrid.Columns(18)) * val(grddatagrid.Columns(17)) / 100, 0)
            
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(21)), 0)
            NettRExR = NettRExR + val(TaxR * val(grddatagrid.Columns(17)) / 100)
        Else
            grddatagrid.Columns(18) = 0
            grddatagrid.Columns(21) = 0
            tax = tax + Round(grddatagrid.Columns(18), 0)
            TaxR = NettRExR * val(grddatagrid.Columns(14)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(14)) / 100)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(21)), 0)
            NettRExR = NettRExR + val(TaxR * val(grddatagrid.Columns(17)) / 100)
        End If
            SurCharge = KSLRound((tax * val(grddatagrid.Columns(17))) / 100, 2)
        On Error Resume Next
        grddatagrid.Columns(10).Text = Round(NettRExR + (val(txtFields(31).Text) / val(grddatagrid.Columns(7).Text)), 2)
        adoSecondaryRS.MoveNext
    Loop
        txtFields(40).Text = Format(Assval2, "#.00")
        txtFields(41).Text = Format(Charity, "#0.00")
        txtFields(18).Text = Format(Charity, "#0.00")
        If CESSFLG Then
            CESS_AMT = KSLRound(val(Assval2 + Charity) * (txtFields(15).Text / 100), 0)
            cess = CESS_AMT
        Else
            cess = 0
        End If
        txtFields(42).Text = Format(cess, "#0.00")
        txtFields(16).Text = Format(cess, "#0.00")
        txtFields(43).Text = Format(Round(Bed, 0), "#0.00")
        txtFields(20).Text = Format(Round(Bed, 0), "#0.00")
        txtFields(44).Text = Format(Round(Aed, 0), "#0.00")
        txtFields(22).Text = Format(Round(Aed, 0), "#0.00")
        txtFields(45).Text = Format(tax, "#0.00")
        txtFields(26).Text = Format(tax, "#0.00")
        txtFields(28).Text = Format(SurCharge, "#0.00")
        TotAmt = Assval2 + Charity + cess + Round(Bed, 0) + Round(Aed, 0) + tax + val(SurCharge)
        Insur = 0
        Insur = KSLRound(TotAmt * val(txtFields(50)) / 100, 2)
        txtFields(49).Text = Format(Insur, "#0.00")
        txtFields(46) = Format(Insur + SurCharge + val(txtFields(31).Text), "#0.00")

        invamt = Format(Insur + TotAmt + val(txtFields(31).Text), "#0.00")

'-----------------------------------Round-----------------------------

            If InStr(CStr(invamt), ".") > 0 Then
            tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
            If Right(tmprnd, 1) >= 5 Then
            invamt = Format(invamt, "#########0.00")
            End If
            Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
            If Round1 <= 0.5 Then
                txtFields(39).Text = Format("-" & Round1, "#0.00")
                txtFields(47) = Format(invamt - Round1, "#0.00")
            Else
                txtFields(39).Text = Format(1 - Round1, "#0.00")
                txtFields(47).Text = Format(invamt + (1 - Round1), "#0.00")
            End If
            End If
End If
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
Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
Set rrs = New Recordset
rrs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
KSLRound = rrs(0)
End Function

Private Sub AddUpdate()
'ADDITION TIME UPDATATIONS
On Error GoTo UPDATEERR
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtFields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs+" & val(grddatagrid.Columns(7)) & ",exp_value=exp_value+" & grddatagrid.Columns(11) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs+" & val(grddatagrid.Columns(7)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        
         Dim SPS1 As Double
         Dim SPS As New Recordset
         Set SPS = New Recordset
         SPS.Open "SELECT PACK_WT FROM ig_product WHERE PRODUCT_CODE='" & grddatagrid.Columns(5).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
         SPS1 = Round(val(grddatagrid.Columns(7).Value) - val((grddatagrid.Columns(6).Text) * SPS("PACK_WT")), 2)
        'db.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grdDataGrid.Columns(7)) & ",home_value=home_value+" & grdDataGrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "')"
        
        If SPS1 > 0 Then
            'db.Execute "update ig_rg1trn set LOOSE_KGS=LOOSE_KGS-" & SPS1 & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        End If
        
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs+" & val(grddatagrid.Columns(7)) & ",home_value=home_value+" & grddatagrid.Columns(11) + val(txtFields(46).Text) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
        
        
        
        
    End If
        
        DB.Execute "update ig_rg1trn set packs=packs+" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs+" & val(grddatagrid.Columns(7)) & ",bed_amt=bed_amt+" & val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(val(grddatagrid.Columns(19)) + val(grddatagrid.Columns(20)) > 0, val(grddatagrid.Columns(11)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        'Easwar db.Execute "update ig_rrg1trn set bed_amt=bed_amt+" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
'-------------------------------CDSTOCK
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT COUNT(*) FROM ig_CDSTOCK WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))), DB
        If rs1(0) = 0 Then
            Set rs2 = New Recordset
            rs2.Open "SELECT OPEN_KGS+TRF_KGS-SOLD_KGS FROM ig_CDSTOCK X WHERE X.DIVCODE='" & Divcode & "' AND X.CUST_CODE='" & txtFields(6) & "' AND X.PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND X.YEARMON=(SELECT MAX(Y.YEARMON) FROM ig_CDSTOCK Y WHERE  Y.DIVCODE=X.DIVCODE AND Y.CUST_CODE=X.CUST_CODE AND Y.PRODUCT_CODE=X.PRODUCT_CODE)", DB
            If Not rs2.EOF Then
                DB.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtFields(6) & "','" & grddatagrid.Columns(5) & "'," & val(rs2(0)) & "," & val(grddatagrid.Columns(7)) & ",0)"
            Else
                DB.Execute "INSERT INTO ig_CDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtFields(6) & "','" & grddatagrid.Columns(5) & "',0," & val(grddatagrid.Columns(7)) & ",0)"
            End If
        Else
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS+" & val(grddatagrid.Columns(7)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))

            
        End If
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", DB
   Rs.MoveFirst
   Do While Not Rs.EOF
        For i = Rs(0) To Rs(1)
            DB.Execute "update IG_RPACKNOS set INVOICED='Y' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & " and pack_no=" & i, a
        Next
        Rs.MoveNext
   Loop
   
'   Do While PackNo <= rs(1)
'    db.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & rs(2) & "' and pack_year=" & rs(3) & "and pack_no=" & PackNo
'    PackNo = PackNo + 1
'   Loop
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED+" & grddatagrid.Columns(7) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   DB.Execute "update ig_product set kg_rate=" & val(grddatagrid.Columns(9)) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   adoSecondaryRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type='" & txtFields(0) & "',inv_no='" & txtFields(1) & "' where divcode='" & Divcode & "' and bo_type='" & txtFields(4) & "' and bo_no='" & txtFields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
   If Trim(txtFields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'", DB
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtFields(32) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',Null," & val(txtFields(51)) & "," & val(txtFields(52)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtFields(51)) & ",aed_dr=aed_dr+" & val(txtFields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtFields(32) & "'"
   End If
   On Error GoTo sp1
   If Trim(txtFields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'", DB
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtFields(53) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',null," & val(txtFields(55)) & "," & val(txtFields(56)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtFields(55)) & ",aed_dr=aed_dr+" & val(txtFields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtFields(53) & "'"
   End If
   If Trim(txtFields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'", DB
        docNo = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtFields(57) & "','" & docNo & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtFields(3) = "", "null", txtFields(3)) & "',null," & val(txtFields(59)) & "," & val(txtFields(60)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtFields(59)) & ",aed_dr=aed_dr+" & val(txtFields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtFields(57) & "'"
   End If
 End If
 Exit Sub
sp1:
    MsgBox "Check the Invoice type you have selected", vbInformation, head
    DB.RollbackTrans
    errflg = True

UPDATEERR:
MsgBox "This Record Not Saved", vbInformation, head
DB.RollbackTrans
errflg = True
End Sub
Private Sub DelUpdate()
'DELETION TIME UPDATATIONS
On Error GoTo DELUPDATEERR
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtFields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs-" & val(grddatagrid.Columns(7)) & ",exp_value=exp_value-" & grddatagrid.Columns(11) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs-" & val(grddatagrid.Columns(7)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs-" & val(grddatagrid.Columns(7)) & ",home_value=home_value-" & grddatagrid.Columns(11) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    End If
        DB.Execute "update ig_rg1trn set packs=packs-" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs-" & grddatagrid.Columns(7) & ",bed_amt=bed_amt-" & val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt-" & val(grddatagrid.Columns(20)) & ",invoices=substring(invoices,1,len(invoices)),duty_sales=duty_sales-" & IIf(val(grddatagrid.Columns(19)) + val(grddatagrid.Columns(20)) > 0, val(grddatagrid.Columns(11)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'-------------------------------CDSTOCK
    
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS-" & val(grddatagrid.Columns(7)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtFields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", DB
   PackNo = Rs(0)
   Do While PackNo <= Rs(1)
    DB.Execute "update IG_RPACKNOS set INVOICED='N' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & "and pack_no=" & PackNo
    PackNo = PackNo + 1
   Loop
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(7) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   DB.Execute "update ig_product set kg_rate=" & grddatagrid.Columns(9) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   adoSecondaryRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type=null,inv_no=null where divcode='" & Divcode & "' and bo_type='" & txtFields(4) & "' and bo_no='" & txtFields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtFields(32).Text) <> "" Or Trim(txtFields(53).Text) <> "" Or Trim(txtFields(57).Text) <> "" Then
   If Trim(txtFields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "' and tran_type='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtFields(32) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(32) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtFields(51)) & ",aed_dr=aed_dr-" & val(txtFields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtFields(32) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtFields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtFields(53) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(53) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtFields(55)) & ",aed_dr=aed_der+" & val(txtFields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtFields(53) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtFields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtFields(57) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtFields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtFields(57) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtFields(59)) & ",aed_dr=aed_dr-" & val(txtFields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtFields(57) & "'"
        Else
            GoTo DELUPDATEERR
        End If
            
   End If


 End If
 Exit Sub
DELUPDATEERR:
MsgBox "This Record Cannot be Deleted" & err.description, vbInformation, head
DB.RollbackTrans
errflg = True
End Sub
Private Sub NETTOEX()
'THIS PROCEDURE FIND THE EX-MILL RATE FROM NETT RATE
ExR = 0
adoSecondaryRS.MoveFirst
Do While Not adoSecondaryRS.EOF
If (val(grddatagrid.Columns(9)) = 0 Or Trim(grddatagrid.Columns(9)) = "") And Rate > 0 Then
    NettR = Rate 'Val(grdDataGrid.Columns(10))
    STPer = val(grddatagrid.Columns(14)) / 100
    SCPer = val(grddatagrid.Columns(17)) / 100
    BEDPer = val(grddatagrid.Columns(15)) / 100
    AEDPer = val(grddatagrid.Columns(16)) / 100
    CESSPer = val(txtFields(15).Text) / 100
    Set Rs = New Recordset
    Rs.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
    If Not Rs.EOF Then CHARPer = Rs(0)
                        '******************calculation******************
'*************** original comment by prakash
    ExR = NettR
    'for rasi changed by senthil
    
    ExR = Round((NettR / (((1 + STPer) + (STPer * SCPer)) * ((1 + BEDPer) + (BEDPer * AEDPer) + CESSPer))) - val(txtFields(31).Text) / val(grddatagrid.Columns(7).Text), 3)
    
    
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

grddatagrid.Columns(9) = ExR
STPer = 0
SCPer = 0
BEDPer = 0
AEDPer = 0
CESSPer = 0
CHARPer = 0
End If
adoSecondaryRS.MoveNext
Loop
End Sub
Private Sub ModLock()
'THIS PROCEDURE UNLOCKS THE MODIFIABLE FIELDS
For i = 61 To 65
    txtFields(i).Locked = False
Next
For i = 34 To 38
    txtFields(i).Locked = False
Next
txtFields(29).Locked = False
End Sub


