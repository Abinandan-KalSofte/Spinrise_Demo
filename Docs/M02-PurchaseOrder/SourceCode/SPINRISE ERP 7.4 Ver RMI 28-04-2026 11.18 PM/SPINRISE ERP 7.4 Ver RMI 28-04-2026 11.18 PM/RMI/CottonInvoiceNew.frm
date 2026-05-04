VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form CottonInvoiceNew 
   Caption         =   "Raw Material Invoice"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      BackColor       =   &H008080FF&
      Caption         =   "Push to E-Invoice"
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
      Left            =   7560
      Style           =   1  'Graphical
      TabIndex        =   217
      Top             =   670
      Width           =   1815
   End
   Begin VB.Frame Frame9 
      Height          =   1095
      Left            =   1440
      TabIndex        =   209
      Top             =   600
      Visible         =   0   'False
      Width           =   2295
      Begin VB.CommandButton Command5 
         Caption         =   "Close"
         Height          =   375
         Left            =   1200
         TabIndex        =   213
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Ok"
         Height          =   375
         Left            =   360
         TabIndex        =   212
         Top             =   600
         Width           =   735
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Cancel"
         Height          =   255
         Left            =   1200
         TabIndex        =   211
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Delete"
         Height          =   255
         Left            =   120
         TabIndex        =   210
         Top             =   240
         Value           =   -1  'True
         Width           =   855
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   2130
      Left            =   450
      TabIndex        =   64
      Top             =   5640
      Width           =   9390
      _ExtentX        =   16563
      _ExtentY        =   3757
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "CottonInvoiceNew.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   1920
         Left            =   105
         TabIndex        =   14
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
      Left            =   7935
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame4 
      BorderStyle     =   0  'None
      Height          =   6810
      Left            =   405
      TabIndex        =   66
      Top             =   1050
      Width           =   9495
      Begin TabDlg.SSTab SSTab1 
         Height          =   4545
         Left            =   30
         TabIndex        =   67
         Top             =   15
         Width           =   6735
         _ExtentX        =   11880
         _ExtentY        =   8017
         _Version        =   393216
         Tabs            =   4
         TabsPerRow      =   4
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   "&Customer"
         TabPicture(0)   =   "CottonInvoiceNew.frx":001C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "&Tax/Duty"
         TabPicture(1)   =   "CottonInvoiceNew.frx":0038
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame3"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "C&arrier"
         TabPicture(2)   =   "CottonInvoiceNew.frx":0054
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame2"
         Tab(2).ControlCount=   1
         TabCaption(3)   =   "&Others"
         TabPicture(3)   =   "CottonInvoiceNew.frx":0070
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Frame7"
         Tab(3).ControlCount=   1
         Begin VB.Frame Frame1 
            Height          =   4100
            Left            =   135
            TabIndex        =   156
            Top             =   345
            Width           =   6495
            Begin VB.TextBox txtfields 
               DataField       =   "BANK_CODE"
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   48
               Left            =   3840
               MaxLength       =   6
               TabIndex        =   184
               Top             =   2040
               Width           =   585
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   181
               Top             =   2430
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   180
               Top             =   2415
               Width           =   4095
            End
            Begin VB.TextBox txtfields 
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
               Left            =   4410
               MaxLength       =   50
               TabIndex        =   179
               Top             =   2055
               Width           =   1935
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
               ItemData        =   "CottonInvoiceNew.frx":008C
               Left            =   1125
               List            =   "CottonInvoiceNew.frx":0099
               Style           =   2  'Dropdown List
               TabIndex        =   178
               Top             =   2070
               Width           =   2115
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   170
               Top             =   570
               Width           =   645
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   176
               Top             =   1680
               Width           =   4065
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   175
               Top             =   1710
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   174
               Top             =   1305
               Width           =   4080
            End
            Begin VB.TextBox txtfields 
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
               MaxLength       =   8
               TabIndex        =   173
               Top             =   1305
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   172
               Top             =   930
               Width           =   4080
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   171
               Top             =   930
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   177
               Top             =   555
               Width           =   1275
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   169
               TabStop         =   0   'False
               Top             =   180
               Width           =   645
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   168
               TabStop         =   0   'False
               Top             =   180
               Width           =   1275
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   166
               Top             =   165
               Width           =   645
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   167
               Top             =   180
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   165
               Top             =   2820
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   164
               Top             =   3165
               Width           =   2910
            End
            Begin VB.Frame Frame12 
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
               TabIndex        =   157
               Top             =   3480
               Width           =   6345
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "igstamt"
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
                  Index           =   108
                  Left            =   4920
                  Locked          =   -1  'True
                  TabIndex        =   160
                  Text            =   " "
                  Top             =   170
                  Width           =   1275
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "sgstamt"
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
                  Index           =   109
                  Left            =   2880
                  Locked          =   -1  'True
                  TabIndex        =   159
                  Text            =   " "
                  Top             =   165
                  Width           =   1275
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "cgstamt"
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
                  Index           =   110
                  Left            =   720
                  Locked          =   -1  'True
                  TabIndex        =   158
                  Text            =   " "
                  Top             =   170
                  Width           =   1275
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
                  TabIndex        =   163
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
                  Left            =   2250
                  TabIndex        =   162
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
                  Left            =   4290
                  TabIndex        =   161
                  Top             =   240
                  Width           =   405
               End
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "date"
               Height          =   225
               Index           =   0
               Left            =   1170
               TabIndex        =   182
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
               TabIndex        =   183
               Top             =   570
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   146604033
               CurrentDate     =   37211
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "DELIVERY_DT"
               Height          =   225
               Index           =   2
               Left            =   1170
               TabIndex        =   185
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
               Left            =   1140
               TabIndex        =   186
               Top             =   2775
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   146604033
               CurrentDate     =   37211
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "LR_DATE"
               Height          =   225
               Index           =   4
               Left            =   5100
               TabIndex        =   1
               Top             =   3210
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
               Index           =   4
               Left            =   5055
               TabIndex        =   0
               Top             =   3180
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   146604033
               CurrentDate     =   37211
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Despatch To"
               Height          =   195
               Index           =   29
               Left            =   90
               TabIndex        =   200
               Top             =   2550
               Width           =   930
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bank"
               Height          =   195
               Index           =   10
               Left            =   3390
               TabIndex        =   199
               Top             =   2145
               Width           =   405
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Pay Mode"
               Height          =   195
               Index           =   9
               Left            =   90
               TabIndex        =   198
               Top             =   2160
               Width           =   720
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Agent 2"
               Height          =   195
               Index           =   6
               Left            =   90
               TabIndex        =   197
               Top             =   1740
               Width           =   555
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Agent"
               Height          =   195
               Index           =   5
               Left            =   90
               TabIndex        =   196
               Top             =   1350
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Customer"
               Height          =   195
               Index           =   4
               Left            =   90
               TabIndex        =   195
               Top             =   960
               Width           =   660
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Issue No."
               Height          =   195
               Index           =   3
               Left            =   3270
               TabIndex        =   194
               Top             =   585
               Width           =   675
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   2
               Left            =   90
               TabIndex        =   193
               Top             =   585
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "CEX Invoice"
               Height          =   195
               Index           =   1
               Left            =   3270
               TabIndex        =   192
               Top             =   218
               Width           =   885
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Invoice No. "
               Height          =   195
               Index           =   0
               Left            =   90
               TabIndex        =   191
               Top             =   240
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Delivery Date"
               Height          =   195
               Index           =   32
               Left            =   90
               TabIndex        =   190
               Top             =   2925
               Width           =   960
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Credit days"
               Height          =   195
               Index           =   33
               Left            =   4155
               TabIndex        =   189
               Top             =   2880
               Width           =   780
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bag Id. No."
               Height          =   195
               Index           =   35
               Left            =   90
               TabIndex        =   188
               Top             =   3255
               Width           =   810
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Issue Date."
               Height          =   195
               Index           =   37
               Left            =   4200
               TabIndex        =   187
               Top             =   3240
               Width           =   810
            End
         End
         Begin VB.Frame Frame3 
            Height          =   3915
            Left            =   -74880
            TabIndex        =   68
            Top             =   360
            Width           =   6495
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "TCSAssValue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Height          =   285
               Index           =   93
               Left            =   5640
               TabIndex        =   207
               TabStop         =   0   'False
               Top             =   3000
               Visible         =   0   'False
               Width           =   720
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "tcs_amt"
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
               Height          =   285
               Index           =   74
               Left            =   4605
               TabIndex        =   203
               TabStop         =   0   'False
               Top             =   3015
               Width           =   960
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               CausesValidation=   0   'False
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
               Height          =   285
               Index           =   73
               Left            =   2910
               MaxLength       =   7
               TabIndex        =   202
               Top             =   3015
               Width           =   840
            End
            Begin VB.ComboBox Combo1 
               Height          =   315
               Index           =   5
               ItemData        =   "CottonInvoiceNew.frx":00CE
               Left            =   1065
               List            =   "CottonInvoiceNew.frx":00D8
               Style           =   2  'Dropdown List
               TabIndex        =   201
               Top             =   3000
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "remarks"
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
               Index           =   72
               Left            =   960
               TabIndex        =   154
               Top             =   3480
               Width           =   5415
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   26
               Top             =   2655
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   27
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
               ItemData        =   "CottonInvoiceNew.frx":00E9
               Left            =   660
               List            =   "CottonInvoiceNew.frx":00F3
               Style           =   2  'Dropdown List
               TabIndex        =   15
               Top             =   188
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   16
               Top             =   180
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   17
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
               ItemData        =   "CottonInvoiceNew.frx":0104
               Left            =   660
               List            =   "CottonInvoiceNew.frx":010E
               Style           =   2  'Dropdown List
               TabIndex        =   18
               Top             =   585
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   75
               Top             =   4020
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   19
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
               ItemData        =   "CottonInvoiceNew.frx":011F
               Left            =   660
               List            =   "CottonInvoiceNew.frx":0129
               Style           =   2  'Dropdown List
               TabIndex        =   20
               Top             =   1020
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   74
               Top             =   3945
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   21
               Top             =   990
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   73
               Top             =   4095
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   22
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
               ItemData        =   "CottonInvoiceNew.frx":013A
               Left            =   660
               List            =   "CottonInvoiceNew.frx":0144
               Style           =   2  'Dropdown List
               TabIndex        =   23
               Top             =   1808
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   72
               Top             =   4050
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   24
               Top             =   1800
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   71
               Top             =   4440
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   25
               Top             =   2220
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   70
               Top             =   4035
               Visible         =   0   'False
               Width           =   825
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   69
               Top             =   4065
               Visible         =   0   'False
               Width           =   2535
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "TCS Amt"
               Height          =   195
               Index           =   19
               Left            =   3840
               TabIndex        =   206
               Top             =   3060
               Width           =   630
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               Caption         =   "TCS %"
               Height          =   195
               Left            =   2280
               TabIndex        =   205
               Top             =   3060
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "TCS"
               Height          =   195
               Index           =   38
               Left            =   120
               TabIndex        =   204
               Top             =   3060
               Width           =   315
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Remarks"
               Height          =   195
               Index           =   36
               Left            =   240
               TabIndex        =   155
               Top             =   3480
               Width           =   630
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Insurance %"
               Height          =   195
               Index           =   12
               Left            =   1950
               TabIndex        =   108
               Top             =   2678
               Width           =   870
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   11
               Left            =   3900
               TabIndex        =   107
               Top             =   2678
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Height          =   195
               Index           =   7
               Left            =   2640
               TabIndex        =   88
               Top             =   285
               Width           =   45
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   8
               Left            =   120
               TabIndex        =   87
               Top             =   255
               Width           =   345
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess %"
               Height          =   195
               Index           =   11
               Left            =   1950
               TabIndex        =   86
               Top             =   248
               Width           =   510
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
               Height          =   195
               Index           =   12
               Left            =   3900
               TabIndex        =   85
               Top             =   248
               Width           =   540
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   13
               Left            =   120
               TabIndex        =   84
               Top             =   660
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity "
               Height          =   195
               Index           =   14
               Left            =   1950
               TabIndex        =   83
               Top             =   653
               Width           =   525
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Duty"
               Height          =   195
               Index           =   16
               Left            =   120
               TabIndex        =   82
               Top             =   1065
               Width           =   330
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   17
               Left            =   1950
               TabIndex        =   81
               Top             =   1058
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   19
               Left            =   1950
               TabIndex        =   80
               Top             =   1463
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
               Height          =   195
               Index           =   21
               Left            =   150
               TabIndex        =   79
               Top             =   1875
               Width           =   270
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   22
               Left            =   1950
               TabIndex        =   78
               Top             =   1868
               Width           =   315
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Surcharage"
               Height          =   195
               Index           =   24
               Left            =   1950
               TabIndex        =   77
               Top             =   2273
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
               Height          =   195
               Index           =   26
               Left            =   1950
               TabIndex        =   76
               Top             =   4005
               Visible         =   0   'False
               Width           =   315
            End
         End
         Begin VB.Frame Frame7 
            Height          =   3630
            Left            =   -74880
            TabIndex        =   122
            Top             =   360
            Width           =   6495
            Begin VB.TextBox txtfields 
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
               TabIndex        =   57
               Top             =   2340
               Width           =   525
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   54
               Top             =   1965
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   49
               Top             =   1260
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   44
               Top             =   570
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   42
               Top             =   180
               Width           =   525
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   43
               Top             =   180
               Width           =   975
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   45
               Top             =   180
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   46
               Top             =   529
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   47
               Top             =   915
               Width           =   525
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   48
               Top             =   915
               Width           =   975
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   50
               Top             =   878
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   51
               Top             =   1227
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   52
               Top             =   1605
               Width           =   525
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   53
               Top             =   1605
               Width           =   975
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   55
               Top             =   1590
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   56
               Top             =   1950
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   59
               Top             =   2625
               Width           =   1035
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   58
               Top             =   2715
               Width           =   1815
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Freight/Pack"
               Height          =   195
               Index           =   17
               Left            =   105
               TabIndex        =   138
               Top             =   2370
               Width           =   930
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "PLA No."
               Height          =   195
               Index           =   13
               Left            =   150
               TabIndex        =   133
               Top             =   248
               Width           =   600
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Height          =   195
               Index           =   15
               Left            =   3600
               TabIndex        =   132
               Top             =   248
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " AED "
               Height          =   195
               Index           =   18
               Left            =   3555
               TabIndex        =   131
               Top             =   597
               Width           =   420
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23A No."
               Height          =   195
               Index           =   15
               Left            =   120
               TabIndex        =   130
               Top             =   945
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   20
               Left            =   3555
               TabIndex        =   129
               Top             =   946
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   23
               Left            =   3600
               TabIndex        =   128
               Top             =   1295
               Width           =   375
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23C No."
               Height          =   195
               Index           =   14
               Left            =   120
               TabIndex        =   127
               Top             =   1650
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Height          =   195
               Index           =   25
               Left            =   3555
               TabIndex        =   126
               Top             =   1644
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Height          =   195
               Index           =   31
               Left            =   3600
               TabIndex        =   125
               Top             =   1993
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Freight"
               Height          =   195
               Index           =   28
               Left            =   120
               TabIndex        =   124
               Top             =   2730
               Width           =   480
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Round off"
               Height          =   195
               Index           =   32
               Left            =   3660
               TabIndex        =   123
               Top             =   2693
               Width           =   705
            End
         End
         Begin VB.Frame Frame2 
            Height          =   4125
            Left            =   -74895
            TabIndex        =   111
            Top             =   405
            Width           =   6495
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
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
               Index           =   76
               Left            =   2580
               MaxLength       =   50
               TabIndex        =   214
               Top             =   3360
               Width           =   4095
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "Delvery_ID"
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
               Index           =   75
               Left            =   1440
               MaxLength       =   10
               TabIndex        =   40
               Top             =   3375
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00FFFFFF&
               DataField       =   "cons_gstinno"
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
               Index           =   71
               Left            =   1440
               MaxLength       =   30
               TabIndex        =   41
               Top             =   3750
               Visible         =   0   'False
               Width           =   2955
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "LR_DATE"
               Height          =   225
               Index           =   3
               Left            =   5040
               TabIndex        =   31
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
            Begin VB.TextBox txtfields 
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
               TabIndex        =   30
               Top             =   960
               Width           =   2280
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   29
               Top             =   570
               Width           =   2265
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   35
               Top             =   2070
               Width           =   945
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   32
               Top             =   1350
               Width           =   2265
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   34
               Top             =   1680
               Width           =   945
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   28
               Top             =   165
               Width           =   945
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   112
               Top             =   165
               Width           =   3960
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   36
               Top             =   1755
               Width           =   2955
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   37
               Top             =   2145
               Width           =   2955
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   38
               Top             =   2535
               Width           =   2955
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   39
               Top             =   2940
               Width           =   2955
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "are_date"
               Height          =   225
               Index           =   1
               Left            =   5025
               TabIndex        =   33
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
               TabIndex        =   113
               Top             =   1245
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   146604033
               CurrentDate     =   37211
            End
            Begin MSComCtl2.DTPicker DTPicker1 
               Height          =   315
               Index           =   3
               Left            =   4995
               TabIndex        =   136
               Top             =   870
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   556
               _Version        =   393216
               Format          =   146604033
               CurrentDate     =   37211
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Delivery Address"
               Height          =   270
               Index           =   39
               Left            =   120
               TabIndex        =   215
               Top             =   3375
               Width           =   1305
               WordWrap        =   -1  'True
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Gstin No."
               Height          =   195
               Index           =   18
               Left            =   255
               TabIndex        =   153
               Top             =   3840
               Visible         =   0   'False
               Width           =   660
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
               TabIndex        =   137
               Top             =   930
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "LR Number "
               Height          =   195
               Index           =   30
               Left            =   60
               TabIndex        =   121
               Top             =   1020
               Width           =   855
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Vehicle Number"
               Height          =   195
               Index           =   44
               Left            =   60
               TabIndex        =   120
               Top             =   615
               Width           =   1125
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Rem Time"
               Height          =   180
               Index           =   1
               Left            =   4575
               TabIndex        =   119
               Top             =   2100
               Width           =   705
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Prep. Time"
               Height          =   195
               Index           =   10
               Left            =   4560
               TabIndex        =   118
               Top             =   1725
               Width           =   765
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Carrier"
               Height          =   195
               Index           =   27
               Left            =   60
               TabIndex        =   117
               Top             =   195
               Width           =   450
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "ARE Number"
               Height          =   195
               Index           =   0
               Left            =   60
               TabIndex        =   116
               Top             =   1380
               Width           =   930
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Index           =   30
               Left            =   4485
               TabIndex        =   115
               Top             =   1305
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Consignee Address"
               Height          =   195
               Index           =   16
               Left            =   60
               TabIndex        =   114
               Top             =   1785
               Width           =   1365
            End
         End
      End
      Begin TabDlg.SSTab SSTab3 
         Height          =   4550
         Left            =   6750
         TabIndex        =   89
         Top             =   15
         Width           =   2670
         _ExtentX        =   4710
         _ExtentY        =   8017
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   " "
         TabPicture(0)   =   "CottonInvoiceNew.frx":0155
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame5"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame5 
            Enabled         =   0   'False
            Height          =   4230
            Left            =   105
            TabIndex        =   90
            Top             =   225
            Width           =   2490
            Begin VB.TextBox txtfields 
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
               TabIndex        =   105
               Text            =   " "
               Top             =   3150
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   103
               Text            =   " "
               Top             =   3675
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   101
               Text            =   " "
               Top             =   2700
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   99
               Text            =   " "
               Top             =   2055
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   97
               Text            =   " "
               Top             =   1620
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   95
               Text            =   " "
               Top             =   1065
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   93
               Text            =   " "
               Top             =   630
               Width           =   1305
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   91
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
               TabIndex        =   106
               Top             =   3195
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
               TabIndex        =   104
               Top             =   3720
               Width           =   1080
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "GST"
               Height          =   195
               Index           =   7
               Left            =   120
               TabIndex        =   102
               Top             =   2775
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "AED"
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   100
               Top             =   2070
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "BED"
               Height          =   195
               Index           =   5
               Left            =   120
               TabIndex        =   98
               Top             =   1650
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
               Height          =   195
               Index           =   4
               Left            =   120
               TabIndex        =   96
               Top             =   1125
               Width           =   345
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
               Height          =   195
               Index           =   3
               Left            =   120
               TabIndex        =   94
               Top             =   705
               Width           =   480
            End
            Begin VB.Label lblLabels 
               Caption         =   "Assessable Value"
               Height          =   375
               Index           =   2
               Left            =   120
               TabIndex        =   92
               Top             =   225
               Width           =   840
            End
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   60
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         Height          =   570
         Index           =   12
         Left            =   5760
         Picture         =   "CottonInvoiceNew.frx":0171
         Style           =   1  'Graphical
         TabIndex        =   208
         ToolTipText     =   "Debit Note"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         Height          =   570
         Index           =   13
         Left            =   5250
         Picture         =   "CottonInvoiceNew.frx":05B3
         Style           =   1  'Graphical
         TabIndex        =   147
         ToolTipText     =   "Invoice Print"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   4740
         Picture         =   "CottonInvoiceNew.frx":09F5
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Print"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":0E37
         Height          =   550
         Index           =   8
         Left            =   3165
         Picture         =   "CottonInvoiceNew.frx":1281
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         DownPicture     =   "CottonInvoiceNew.frx":15E3
         Height          =   550
         Index           =   10
         Left            =   4215
         Picture         =   "CottonInvoiceNew.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":1C69
         Height          =   550
         Index           =   9
         Left            =   3690
         Picture         =   "CottonInvoiceNew.frx":1F73
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "CottonInvoiceNew.frx":2315
         Height          =   550
         Index           =   11
         Left            =   6270
         Picture         =   "CottonInvoiceNew.frx":275F
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":2AF4
         Height          =   550
         Index           =   7
         Left            =   2640
         Picture         =   "CottonInvoiceNew.frx":2F3E
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":328E
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
         Picture         =   "CottonInvoiceNew.frx":3598
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":3934
         Height          =   550
         Index           =   5
         Left            =   1590
         Picture         =   "CottonInvoiceNew.frx":3D7E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":40E3
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "CottonInvoiceNew.frx":43ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":4780
         Height          =   550
         Index           =   6
         Left            =   2115
         Picture         =   "CottonInvoiceNew.frx":4BCA
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":4F17
         Height          =   550
         Index           =   4
         Left            =   1065
         Picture         =   "CottonInvoiceNew.frx":5221
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "CottonInvoiceNew.frx":55B6
         Height          =   550
         Index           =   1
         Left            =   540
         Picture         =   "CottonInvoiceNew.frx":58C0
         Style           =   1  'Graphical
         TabIndex        =   3
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
         TabIndex        =   62
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
         Left            =   7155
         TabIndex        =   61
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   63
      Top             =   8190
      Width           =   11400
      _ExtentX        =   20108
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
            TextSave        =   "25/11/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:10 PM"
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
      TabIndex        =   109
      Top             =   1530
      Visible         =   0   'False
      Width           =   9180
      Begin listacx.codelist Ksldesc1 
         Height          =   3345
         Left            =   780
         TabIndex        =   139
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
         TabIndex        =   135
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4740
         Style           =   1  'Graphical
         TabIndex        =   134
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
         TabIndex        =   110
         Top             =   120
         Width           =   9105
      End
   End
   Begin VB.Frame Frame8 
      Height          =   3390
      Left            =   630
      TabIndex        =   140
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
         TabIndex        =   145
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
         TabIndex        =   144
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
         TabIndex        =   143
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
         TabIndex        =   142
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
         TabIndex        =   141
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
         TabIndex        =   146
         Top             =   150
         Width           =   5670
      End
   End
   Begin TabDlg.SSTab SSTab4 
      Height          =   4095
      Left            =   9960
      TabIndex        =   148
      Top             =   1080
      Visible         =   0   'False
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   7223
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "CottonInvoiceNew.frx":5C3A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame15"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Command1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.CommandButton Command1 
         Caption         =   "&CANCEL"
         Height          =   495
         Left            =   1455
         TabIndex        =   152
         Top             =   3360
         Width           =   975
      End
      Begin VB.Frame Frame15 
         Caption         =   "Print Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3855
         Left            =   120
         TabIndex        =   149
         Top             =   120
         Width           =   3495
         Begin VB.CommandButton CmdDSCSignView 
            Caption         =   "&Print with DSC Sign"
            Height          =   495
            Left            =   2280
            TabIndex        =   216
            Top             =   3240
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.ListBox List1 
            Height          =   2985
            Left            =   120
            Style           =   1  'Checkbox
            TabIndex        =   151
            Top             =   240
            Width           =   3255
         End
         Begin VB.CommandButton cmdprint 
            Caption         =   "&Ok"
            Height          =   495
            Left            =   300
            TabIndex        =   150
            Top             =   3240
            Width           =   975
         End
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
      TabIndex        =   65
      Top             =   690
      Width           =   2775
   End
End
Attribute VB_Name = "CottonInvoiceNew"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rate As Double
Dim ADOSECONDARYRS, QryRS As Recordset
Dim Rs, rs1, RS2 As Recordset
Dim DB As Connection
Dim Opt, STFLAG As String
Dim st, st1, ST2 As String
Dim ITARY() As String
Dim cou, Col As Integer
Dim cou1, c As Integer
Dim FLG As String
Dim REP As Report.ReportView
Dim a, B As Integer
Dim xx As Integer
Dim Str As String
Dim rf As String
Dim RptClick As Integer
Dim RInvTCS_Roff As Integer
Dim BlnTcsCalc, BInCESSTCS, BInPACKTCS As Boolean
Dim ex1, ex As Double
Dim rstParameter As Recordset
Dim rsg As New ADODB.Recordset
Dim InterDivFlg As String
Dim docno As String
Dim TDS_TCS_Cal_Flg As String
Dim SCPer, STPer, AEDPer, BEDPer, CESSPer, CHARPer, INVSNO  As Integer
Dim errflg, CHFLG, CESSFLG, DUTYFLG, TAXFLG, tcsflg  As Boolean
Dim NettRExR, NettR, ExR, packno, invamt, DBED, DAED, Charity, cess, Bed, Aed, tax, SurCharge, Insur, rndoff, Assval, TotAmt As Double
Dim totinvamt As Double
Dim CGSTAMT As Double
Dim IGSTAMT As Double
Dim SGSTAMT As Double
Dim IGSTFLG As String
Dim STCODE As String
Dim Del_Can_Flag As String
Private Enum TErrorCorretion
    QualityLow
    QualityMedium
    QualityStandard
    QualityHigh
End Enum

Private Declare Sub GenerateBMP _
                Lib "quricol32.dll" _
                Alias "GenerateBMPW" ( _
                ByVal FileName As Long, _
                ByVal Text As Long, _
                ByVal Margin As Long, _
                ByVal Size As Long, _
                ByVal Level As TErrorCorretion)

Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
   (ByVal hWnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long
'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
 stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
    MaskEdBox1(0).Text = IIf(IsNull(adoPrimaryRS("DaTe")), "__/__/____", Format(adoPrimaryRS("date"), "DD/MM/YYYY"))
    MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRS("DELIVERY_DT")), "__/__/____", Format(adoPrimaryRS("DELIVERY_DT"), "DD/MM/YYYY"))
    MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRS("ARE_DATE")), "__/__/____", Format(adoPrimaryRS("ARE_DATE"), "DD/MM/YYYY"))
    MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("LR_DATE")), "__/__/____", Format(adoPrimaryRS("LR_DATE"), "DD/MM/YYYY"))
    MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("bo_dt")), "__/__/____", Format(adoPrimaryRS("bo_dt"), "DD/MM/YYYY"))
    If adoPrimaryRS("pay_mode") = "D" Then
            Combo1(0).ListIndex = 0
    ElseIf adoPrimaryRS("pay_mode") = "A" Then
            Combo1(0).ListIndex = 1
    Else
            Combo1(0).ListIndex = 2
    End If
    stbar.Panels(2).Text = "Record " & adoPrimaryRS.RecordCount & " of " & adoPrimaryRS.AbsolutePosition
End If
intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
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
     tcsflg = False
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
     Set ADOSECONDARYRS = New Recordset
     adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE ,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,entdate,user_id ,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,cons_gstinno,remarks,bo_dt,TCSAssValue,tcs_per,tcs_amt,Delvery_ID from RM_CINVHD where divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic, adCmdText
     adoPrimaryRS.AddNew
     Call bindcontls
     ReDim ITARY(100, 0)
     ADOSECONDARYRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as ""Quantity"",Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""Tax Code"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"" ,lotdt ,TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate FROM RM_CINVDT where divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
     Set grddatagrid.DataSource = ADOSECONDARYRS
     Call gridalign
     MaskEdBox1(0).Text = pdate
     DTPicker1(0).value = pdate
     MaskEdBox1(2).Text = pdate
     DTPicker1(2).value = pdate
     txtfields(36).Text = Mid$(Time, 1, 8)
     txtfields(37).Text = Mid$(Time, 1, 8)
     txtfields(15).Text = "0.05"
     'adoSecondaryRS.AddNew
     grddatagrid.AllowAddNew = True
     grddatagrid.AllowUpdate = True
     Call ENABLCONTLS
     Call adddelmod(BUTTON)
     txtfields(0).SetFocus
     Screen.MousePointer = 0
     txtfields(13).Locked = False
     txtfields(5).Locked = True
     txtfields(1).Locked = False
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
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "select inv_no""InvoiceNo."",inv_type""Type"" from RM_CINVHD WHERE divcode='" & Divcode & "' "
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "InvoiceNo."
    LookUp.ALIGN = "1500,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt,TCSAssValue,tcs_per,tcs_amt,Delvery_ID from RM_CINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",INV_KGS""Invoice Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate  FROM RM_CINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = ADOSECONDARYRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax ,isnull(tcs_calc,'N') tcs_calc  from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
    
    If TERS(4) = "Y" Then
        Combo1(5).ListIndex = 0
        Call Combo1_Click(5)
        tcsflg = True
    Else
        Combo1(5).ListIndex = 1
    End If
       
       Call gridalign
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(I).Locked = False
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
    Call query_mode
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
    txtfields(61).Locked = False
    txtfields(62).Locked = False
    txtfields(63).Locked = False
    txtfields(64).Locked = False
     End If
Case 2 'DEL
 If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("RM_CINVHD H WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE H.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "del"
    desc.Caption = "Deletion"
    Del_Can_Flag = "D"
    Frame9.Visible = True
    Exit Sub
    DB.BeginTrans
    
    errflg = False
    LookUp.Clear = True
    strSQL = "select top 1 a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
             " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' and isnull(appflg,'N')='N' AND  A.DIVCODE='" & Divcode & "'" & _
             " AND A.CUST_CODE=B.SLCODE Order by a.date desc, a.Inv_No desc "
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic, adLockReadOnly
    If Rs.EOF = True Then
        MsgBox "No Record Found to Modify", vbInformation, head
        Exit Sub
    End If
    strSQL = ""
    strSQL = "select a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
             " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'" & _
             " AND A.CUST_CODE=B.SLCODE " & _
             " and Inv_No='" & NULLCHECK(Rs("Inv_no")) & "'" & _
             " and Inv_Type='" & NULLCHECK(Rs("Inv_Type")) & "' and isnull(appflg,'N')='N'"
             
    LookUp.query = strSQL
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "Invoice No."
    LookUp.ALIGN = "1000,1000,2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt,tcs_per,tcs_amt,TCSAssValue,Delvery_ID from RM_CINVHD where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate  FROM RM_CINVDT where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = ADOSECONDARYRS
        Set TERS = New Recordset
        TERS.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
        If TERS(4) = "Y" Then
            Combo1(5).ListIndex = 0
            Call Combo1_Click(5)
            tcsflg = True
        Else
            Combo1(5).ListIndex = 1
        End If
        
    End If
       Call gridalign
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(I).Locked = False
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
        Call query_mode
        grddatagrid.Visible = True
        SSTab1.Visible = True
        Call cancl1(BUTTON, 24)
        Buttonframe.Enabled = True
        BUTTON(0).SetFocus
        Screen.MousePointer = 0
    End If
    Call adddelmod(BUTTON)
    
Case 4 'Find
   ' If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("RM_CINVHD A WHERE CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM RM_CINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
        BUTTON_Click (10)
        Exit Sub
    End If
    SSTab1.Enabled = True
    Opt = "fnd"
    errflg = False
    desc.Caption = "Modification"
    LookUp.Clear = True
    LookUp.query = "select inv_no""InvoiceNo."",inv_type""Type"",Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
                   " WHERE divcode='" & Divcode & "'" & _
                   " AND A.CUST_CODE=B.SLCODE  " & _
                   " and Date Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
                   
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "InvoiceNo."
    LookUp.ALIGN = "1500,1000,2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Buttonframe.Enabled = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt,tcs_per,tcs_amt,TCSAssValue,Delvery_ID from RM_CINVHD where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",INV_KGS""Invoice Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate  FROM RM_CINVDT where inv_type='" & LookUp.Fields(1) & "' and inv_no='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Set TERS = New Recordset
        TERS.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
        
        If TERS(4) = "Y" Then
            Combo1(5).ListIndex = 0
            Call Combo1_Click(5)
            tcsflg = True
        Else
            Combo1(5).ListIndex = 1
        End If
        
       
        On Error Resume Next
        Call cancl1(BUTTON, 24)
        Buttonframe.Enabled = True
        BUTTON(10).SetFocus
        Screen.MousePointer = 0
        Call gridalign
        If Opt = "fnd" Then
            grddatagrid.AllowUpdate = False
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                grddatagrid.Columns(I).Locked = True
            Next
       End If
    End If
    
Case 5
'First
         desc.Caption = "Query"
         On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
      '  Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
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
          '  Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
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
      '  Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
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
     '   Call QUERY_MODE(CStr(adoPrimaryRS!Inv_Type), CStr(adoPrimaryRS!Inv_NO))
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:

     
     
Case 9
'SAVE

        If Opt = "add" Then
            If Trim(txtfields(13).Text) = "" Then
                MsgBox "Please enter valid Despatch To", vbInformation, head
                txtfields(13).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(0).Text) = "" Then
                MsgBox "Please enter Invoice Number", vbInformation, head
                txtfields(0).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(1).Text) = "" Then
                MsgBox "EPlease enter valid Invoice Number", vbInformation, head
                txtfields(0).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(4).Text) = "" Then
                MsgBox "Please enter Issue Number", vbInformation, head
                txtfields(4).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(5).Text) = "" Then
                MsgBox "Please enter valid Issue Number", vbInformation, head
                txtfields(4).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(6).Text) = "" Then
                MsgBox "Please enter valid Customer ", vbInformation, head
                txtfields(6).SetFocus
                Exit Sub
            End If
            If val(txtfields(47).Text) = 0 Then
                MsgBox "Invoice Amount must be greater than zero", vbInformation, head
                grddatagrid.Col = 9
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
    If Opt = "add" Then
       INSNO = 0
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
            If grddatagrid.Columns(6).Text = "" Then
                ADOSECONDARYRS.Delete
            Else
                If val(ADOSECONDARYRS("Rate_Ex") & "") = 0 Then
                    MsgBox "Please Enter Rate", vbInformation, head
                    Exit Sub
                End If
                If val(ADOSECONDARYRS("INV Kgs") & "") = 0 Then
                    MsgBox "Please Enter Invoice Kgs", vbInformation, head
                    Exit Sub
                End If
                
            
                ADOSECONDARYRS("DIVCODE") = Divcode
                ADOSECONDARYRS("INV_TYPE") = txtfields(0).Text
                ADOSECONDARYRS("INV_NO") = txtfields(1).Text
                ADOSECONDARYRS("INVSNO") = INSNO + 1
                ADOSECONDARYRS("inv kgs") = grddatagrid.Columns(9).Text
                ADOSECONDARYRS("Cont No.") = IIf(IsNull(ADOSECONDARYRS("Cont No.")), " ", ADOSECONDARYRS("Cont No."))
                ADOSECONDARYRS("Cont Type") = IIf(IsNull(ADOSECONDARYRS("Cont Type")), " ", ADOSECONDARYRS("Cont Type"))
            
            
            End If
            ADOSECONDARYRS.MoveNext
        Loop
            Call INVCALC
            Call invamtcheck
            If val(totinvamt) <> val(txtfields(47).Text) Then
                MsgBox "Invoice Amount Not Tallied", vbInformation, head
                Exit Sub
            End If
            DBED = 0
            DAED = 0
        If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
            DBED = val(txtfields(51).Text) + val(txtfields(55).Text) + val(txtfields(59).Text)
            If Not val(txtfields(43)) = val(DBED) Then
                MsgBox "B.E.D Amount Not Tally", vbInformation, head
                txtfields(34).SetFocus
                Exit Sub
            End If
            DAED = val(txtfields(52).Text) + val(txtfields(56).Text) + val(txtfields(60).Text)
            If Not (val(txtfields(44)) = val(DAED)) Then
                MsgBox "A.E.D Amount Not Tally", vbInformation, head
                txtfields(34).SetFocus
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
        
        Set RSCHECK = DB.Execute("Select GetDate()")
        adoPrimaryRS("entdate") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
        
        adoPrimaryRS("bo_dt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
        adoPrimaryRS("bagidno") = txtfields(70).Text
        adoPrimaryRS("cgstamt") = val(txtfields(110).Text)
        adoPrimaryRS("sgstamt") = val(txtfields(109).Text)
        adoPrimaryRS("igstamt") = val(txtfields(108).Text)
          adoPrimaryRS("remarks") = txtfields(72).Text
           adoPrimaryRS("Delvery_ID") = Trim(txtfields(75).Text)
           
'        adoPrimaryRS("INV_TYPE") = txtFields(0).Text
'        adoPrimaryRS("INV_NO") = txtFields(1).Text
'        adoPrimaryRS("AGENT_CODE") = txtFields(8).Text
'        adoPrimaryRS("BROK_CODE") = txtFields(10).Text
'        adoPrimaryRS("CEX_INV_TYPE") = txtFields(2).Text
'        adoPrimaryRS("CEX_INV_NO") = txtFields(3).Text
'        adoPrimaryRS("CEX_INV_TYPE") = txtFields(2).Text
'        adoPrimaryRS("CEX_INV_NO") = txtFields(3).Text
'        adoPrimaryRS("Date") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
'        adoPrimaryRS("CUST_CODE") = txtFields(6).Text
'
'         adoPrimaryRS("BO_TYPE") = ""
'          adoPrimaryRS("BO_NO") = ""
'           adoPrimaryRS("CUST_CODE") = txtFields(6).Text
           adoPrimaryRS("RCM") = "N"
     
        ' BO_TYPE, BO_NO, PAY_MODE, BANK_CODE, MATL_VALUE, CESS_PER, CESS_AMT, Charity, BED_AMT, AED_AMT, TAX_FLAG, TAX_AMT, LSC_AMT, Freight, INS_PER, INS_AMT, RND_OFF, total_amt, RECEIPT_AMT, DN_AMT, CN_AMT, CONS_ADD1, CONS_ADD2, CONS_ADD3, CONS_ADD4, DESPATCH_TO, PRE_TIME, REM_TIME, CARRIER_CODE, VEHICLE_NO, LR_NO, LR_date, ARE_NO, ARE_DATE, CANCELLED, CANCEL_DT, CANCEL_REM, CR_DAYS, PLA_CODE, PLA_NO, PLA_BED, PLA_AED, RG23A_CODE, RG23A_NO, RG23A_BED, RG23A_AED, RG23C_CODE, RG23C_NO, RG23C_AED, RG23C_BED, DELIVERY_DT, CONS_ADD1, CONS_ADD2, CONS_ADD3, CONS_ADD4, ,
       ' Call CleanRecordsetFields(adoPrimaryRS)
        adoPrimaryRS.UpdateBatch adAffectAllChapters     ' commented on 05-09-2025
        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
        Call SaveTransLog
        DocNoGrp = 0
        CEXNOGRP = 0
        divgrp = ""
        YearNo = Format(yfdate, "yy")

        Set rsg = New Recordset
        rsg.Open "SELECT isnull(DocNoGrp,0)""DocNoGrp"",isnull(CexNoGrp,0)""CexNoGrp"",ISNULL(DIVGRP,'') DIVGRP from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            DocNoGrp = rsg("DOCNOGRP")
            CEXNOGRP = rsg("CexNoGrp")
            divgrp = rsg("DIVGRP")
        End If
        
        DB.Execute "update ig_doccontrol set Cex_lastno =" & val(Mid$(txtfields(3).Text, 3, 8)) & " where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND CexNoGRP=" & CEXNOGRP & "  AND DOC_TYPE='I'", a
        DB.Execute "update ig_doccontrol set last_no =" & val(Mid$(txtfields(1).Text, 3, 8)) & " where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND DOCNOGRP=" & DocNoGrp & " AND DOC_TYPE='I'", a
                
                
'        DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtfields(1).Text, 3, 8)) & " WHERE DOC_TYPE='I' AND DIVCODE='" & Divcode & "'", a
'        If Not Trim(txtfields(2).Text) = "" Then DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtfields(3).Text, 3, 8)) & " WHERE DOC_TYPE='E' AND DOC_REF='" & txtfields(2).Text & "' AND YEAR_NO='" & YearNo & "'"
        
        
        'Call AddUpdate
        If Not errflg Then
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
        End If
        Opt = " "
        If UCase(getFAtransferFlg(Trim(txtfields(0).Text))) = UCase("Y") Then
                'If UCase(CustID) = "KUMARAGIRI" Then
                    Dim frmFa As New frmFaPostingVerification
                    frmFa.sTC = getTCRecords(txtfields(0).Text)
                    frmFa.sVocno = val(Right(txtfields(1).Text, 6))
                    frmFa.sVocdt = Format(MaskEdBox1(0).Text, "dd/mm/yyyy")
                    frmFa.sBillNo = Trim("")
                    frmFa.sBillDt = Trim("")
                    frmFa.sTrnType = "SA"
                    frmFa.Show vbModal
                    If Not frmFa.bolTally Then
                        Opt = "del"
                        delflg = "Y"
                        DB.BeginTrans
                        BolAutoDel = True
                        Call BUTTON_Click(9)
                        BolAutoDel = False
                        Exit Sub
                    End If
         End If
        
        
        
    ElseIf Opt = "mod" Then
        adoPrimaryRS("User_id") = CStr(usrid)
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
'        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        adoPrimaryRS("bagidno") = (txtfields(70).Text)
        adoPrimaryRS("cgstamt") = val(txtfields(110).Text)
        adoPrimaryRS("sgstamt") = val(txtfields(109).Text)
        adoPrimaryRS("igstamt") = val(txtfields(108).Text)
        
'        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
'        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")

        adoPrimaryRS.UpdateBatch adAffectAllChapters
        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
       Call SaveTransLog
        If Not errflg Then
            DB.CommitTrans
            MsgBox "Record(s) Modified", vbInformation, head
        End If
            Opt = " "
    ElseIf Opt = "del" Then
        On Error GoTo DELERR6
        
        If Del_Can_Flag = "C" Then
            Set rsupate = New Recordset
            DB.Execute "update  RM_CINVHD set CANCELLED='Y',CANCEL_DT=getdate(),CANCEL_REM='CANCELLED' where divcode='" & Divcode & "' and inv_type='" & txtfields(0) & "' and inv_no='" & txtfields(1) & "'"
            DB.CommitTrans
            MsgBox "Record(s) Cancelled", vbInformation, head
        Else
            If MsgBox("Do you want to delete?", vbYesNo, head) = vbNo Then Exit Sub
            Call DelUpdate
            If Not errflg Then
                DB.Execute "delete from RM_CINVDT where divcode='" & Divcode & "' and inv_type='" & txtfields(0) & "' and inv_no='" & txtfields(1) & "'"
                DB.Execute "delete from RM_CINVHD where divcode='" & Divcode & "' and inv_type='" & txtfields(0) & "' and inv_no='" & txtfields(1) & "'"
                Call SaveTransLog
                DocNoGrp = 0
                CEXNOGRP = 0
                divgrp = ""
                YearNo = Format(yfdate, "yy")
                Set rsg = New Recordset
                rsg.Open "SELECT isnull(DocNoGrp,0)""DocNoGrp"",isnull(CexNoGrp,0)""CexNoGrp"",ISNULL(DIVGRP,'') DIVGRP from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
                If rsg.RecordCount > 0 Then
                    DocNoGrp = rsg("DOCNOGRP")
                    CEXNOGRP = rsg("CexNoGrp")
                    divgrp = rsg("DIVGRP")
                End If
                
                DB.Execute "update ig_doccontrol set Cex_lastno =Cex_lastno-1 where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND CexNoGRP=" & CEXNOGRP & "  AND DOC_TYPE='I'", a
                DB.Execute "update ig_doccontrol set last_no =last_no-1 where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND DOCNOGRP=" & DocNoGrp & " AND DOC_TYPE='I' ", a
                
                DB.CommitTrans
                MsgBox "Record(s) Deleted", vbInformation, head
            End If
        End If
        Opt = " "
    End If
        Call query_mode
        Call cancl1(BUTTON, 24)
        Call NEWFORM1(BUTTON, GSNO)
        SSTab1.Tab = 0
DELERR6:
    If Err.Number = "-2147217900" And Opt = "del" Then
        MsgBox "This Invoice is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
Case 3  'Document Print
    If divabbr = "SS" Or divabbr = "SVTM" Or divabbr = "SVAN" Then
        Call Inv_Preprint_sona.WasteInv_PrePrintsona(CStr(txtfields(0)), CStr(txtfields(1).Text), CStr(txtfields(1).Text))
        Exit Sub
    End If
    If CustID = "BANNARI" Then
        Call WasteInv_PrePrintBANNARI(CStr(txtfields(0)), CStr(txtfields(1).Text), CStr(txtfields(1).Text))
        Exit Sub
    End If

     Set Rs = New Recordset
     Rs.Open " select Distinct Hd.Inv_No,Hd.date,Hd.Cust_Code,sl.SlName,Sl.Add1,Sl.Add2,Sl.city," & _
             " Sl.PIN,Sl.State,Dt.product_code as LotNo,Vr.HSN,Sl.gstinno,Sl.gststatecode,sl.pan,Vr.VarName,Dt.Packs,Dt.InvSNo," & _
             " Dt.Nett_Kgs,Dt.RAte_nett,ISNULL(dt.inv_kgs,0) AS INV_KGS,ISNULL(Dt.inv_Kgs * Dt.RAte_ex,0) as Value,hd.cess_per,hd.Cess_Amt,Dt.Tax_Amt,ta.DESCRIPTION,hd.RND_OFF,l.plotno, " & _
             " dt.AED_Amt ,Dt.RAte_ex, dt.BED_Amt, hd.Carrier_code, Car.CARNAME, PRE_TIME, REM_TIME, LR_NO, VEHICLE_NO,isnull(bagidno,'') as prno " & _
             "  , isnull(hd.cons_add1,'')ConAdd1,isnull(hd.cons_add2,'')ConAdd2,isnull(hd.cons_add3,'')ConAdd3,isnull(hd.cons_add4,'')ConAdd4 ," & _
             " hd.AGENT_CODE,al.slname as agentname,  isnull(dt.cgstper,0) cgstper,isnull(hd.cgstamt,0) cgstamt,  isnull(dt.sgstper,0) sgstper,   isnull(hd.sgstamt,0) sgstamt, " & _
             " isnull(dt.igstper,0) igstper,isnull(hd.igstamt,0) igstamt,isnull(hd.tcs_per,0) tcs_per ,isnull(hd.tcs_amt,0) tcs_amt,hd.vehicle_no,isnull(hd.freight,0) freight,isnull(hd.total_amt,0) total_amt " & _
             " FROM RM_CinvHd hd " & _
             " INNER JOIN RM_Cinvdt dt ON Hd.Divcode=dt.Divcode and Hd.Inv_Type=Dt.Inv_Type and Hd.Inv_No=dt.Inv_No " & _
             " LEFT OUTER JOIN RM_Lot L ON L.LotNo=Dt.Product_code and L.Divcode=Dt.Divcode and dt.LOTDT=l.lotdt and l.lotyear='" & Format(yfdate, "yyyy") & "' " & _
             " INNER JOIN Fa_SlMas Sl ON Sl.SlCode=Hd.Cust_Code  LEFT OUTER JOIN  Fa_SlMas al ON al.SlCode=Hd.Agent_Code " & _
             " LEFT OUTER JOIN RM_Var Vr ON Vr.VarCode=L.VarCode " & _
             " LEFT OUTER JOIN po_car Car ON Car.CARCODE=Hd.Carrier_Code " & _
             " LEFT OUTER JOIN ig_tax ta ON ta.TAX_CODE=dt.TAX_CODE " & _
             " WHERE Hd.Inv_No='" & txtfields(1).Text & "' and Hd.Date='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'  and Hd.Divcode='" & Divcode & "'", DB
'     rs.Open " select Distinct Hd.Inv_No,Hd.date,Hd.Cust_Code,sl.SlName,Sl.Add1,Sl.Add2,Sl.city," & _
'             " Sl.PIN,Dt.product_code as LotNo ,Sl.TINNO,Vr.VarName,Dt.Packs,Dt.InvSNo," & _
'             " Dt.Nett_Kgs,Dt.RAte_nett,ISNULL(dt.inv_kgs,0) AS INV_KGS,ISNULL(Dt.inv_Kgs * Dt.RAte_ex,0) as Value,hd.cess_per,hd.Cess_Amt,Dt.Tax_Amt,ta.DESCRIPTION,hd.RND_OFF,l.plotno, " & _
'             " dt.AED_Amt , dt.BED_Amt, hd.Carrier_code, Car.CARNAME, PRE_TIME, REM_TIME, LR_NO, VEHICLE_NO,isnull(bagidno,'') as prno " & _
'             " FROM RM_CinvHd hd " & _
'             " INNER JOIN RM_Cinvdt dt ON Hd.Divcode=dt.Divcode and Hd.Inv_Type=Dt.Inv_Type and Hd.Inv_No=dt.Inv_No " & _
'             " LEFT OUTER JOIN RM_Lot L ON L.LotNo=Dt.Cont_No and L.Divcode=Dt.Divcode " & _
'             " INNER JOIN Fa_SlMas Sl ON Sl.SlCode=Hd.Cust_Code " & _
'             " LEFT OUTER JOIN RM_Var Vr ON Vr.VarCode=L.VarCode " & _
'             " LEFT OUTER JOIN po_car Car ON Car.CARCODE=Hd.Carrier_Code " & _
'             " LEFT OUTER JOIN ig_tax ta ON ta.TAX_CODE=dt.TAX_CODE " & _
'             " INNER JOIN RM_ARRIVAL AR ON L.LOTNO=AR.LOTNO AND L.LOTDT=AR.lotdt AND L.DIVCODE=AR.DIVCODE AND L.LOTTYPE=AR.lottype AND " & _
'             " L.catcd = AR.catcd WHERE Hd.Inv_No='" & txtFields(1).Text & "' and Hd.Date='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'  and Hd.Divcode='" & Divcode & "'", db
    If Rs.EOF = False Then
    Rs.MoveFirst
 Set rs1 = New Recordset
     rs1.Open "SELECT IB.BALENO FROM RM_ISSH IH,RM_ISSB IB,RM_CINVHD A WHERE IB.DOCNO=IH.DOCNO AND IH.DOCNO=A.BO_NO AND IH.DOCDT=IB.DOCDT AND IB.DIVCODE=IH.DIVCODE AND A.INV_NO='" & Me.txtfields(1) & "' AND A.DATE='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "' AND IH.DIVCODE='" & Divcode & "' AND IH.ISSTYPE='SA' ", DB, adOpenStatic
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
    Set rptv = New Report.ReportView
    Close
    Close #a
    a = FreeFile
    'Open "C:\PPINV.TXT" For Output As #a
     Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
    SR = CStr(pdate) + Space(2)
    pg1 = 1
    va = 1
    K = 1
    cnt = 0
    Ct = 0
    Print #a,
    Print #a,
    Print #a,
'    Print #a,
    Print #a, Space(66) & Padr(val(Right(Rs.Fields("INV_NO"), 6)), 10, "")
    Print #a,
    Print #a, Space(66) & Padr(Rs.Fields("DATE"), 10, "")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Space(1) & Padr(Rs.Fields("slname"), 50, "")
    Print #a, Space(1) & Padr(Rs.Fields("add1"), 45, "") & Space(13) & " Order No : "
    Print #a, Space(1) & Padr(Rs.Fields("add2"), 45, "") & Space(13) & " Order Dt : "
    Print #a, Space(1) & Padr(Rs.Fields("city") & " " & Rs.Fields("pin"), 30, "")
    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
    Print #a, Space(10) & Padr(Rs.Fields("gstinno"), 15, "")
    Print #a, Space(10) & "PAN No : " & Padr(Rs.Fields("pan"), 15, "")
'    Print #a, Space(63) & Padr("1.00", 4, " ")
    Print #a, Space(5) & Space(5) & Padr(Rs.Fields("State"), 15, " ") & Space(2) & Padr(Rs.Fields("gststatecode"), 2, " ") & Space(36) & "Lot No : "
'    Print #a, Space(5) & " COTTON BALES "
    'Print #a, Space(5) & " Party Lot No:" & Padr(Rs.Fields("PLotNo"), 10, "")
    Print #a,
'    Print #a,
    Print #a,
    Print #a, Space(10) & Padr(Rs.Fields("vehicle_no"), 30, " ")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Space(0) & Padl(Rs.Fields("HSN"), 8, " ") & Space(3) & Padr(Rs.Fields("Varname"), 18, "") & Space(3) & CENTRE(Rs.Fields("packs"), 8, "") & Space(5) & CENTRE(Format(Rs.Fields("INV_kgs"), "#0.000"), 10, "") & Space(2) & CENTRE(Format(Rs.Fields("Rate_Ex"), "#0.0000"), 10, "") & Space(2) & Padl(Format(Round(Rs.Fields("Value"), 2), "#0.00"), 13, "")
'    Print #a, Space(5) & " Mill Lot No :" & Padr(Rs.Fields("Lotno"), 10, "")
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
'    Print #a,
'    Print #a,
    Print #a, Space(65) & Padl(INF(Format(Round(Rs.Fields("Value"), 2), "#0.00"), 2), 15, "")
'    Print #a,
'    If Rs("prno") = "" Then
'        Print #a, Space(5) & Padr(bale, 30, "") & Space(15) & Padr(Rs("description"), 17, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
'    Else
'        Print #a, Space(5) & Padr(Rs("prno"), 30, "") & Space(15) & Padr(Rs("description"), 17, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
'    End If
'    Print #a,
    'Print #a, Space(65) & Padr(Rs("description"), 15, "") & Padl(Format(Rs("Tax_amt"), "#0.00"), 14, "")
'    Print #a,
    '''''-------------
    Print #a, Space(1) & Padr(Rs.Fields("slname"), 30, "")
    
    If Rs("cgstamt") > 0 Then
        Print #a, Space(1) & Padr(Rs.Fields("Add1"), 30, "");
        Print #a, Space(19) & " CGST @ " & Padl(Format(Rs("cgstper"), "#0.00") & " % ", 3, "") & Space(8) & Padl(INF(Format(Rs("cgstamt"), "#0.00"), 2), 11, "")
    ElseIf Rs("igstamt") > 0 Then
        Print #a, Space(1) & Padr(Rs.Fields("Add1"), 30, "");
        Print #a, Space(19) & " IGST @ " & Padl(Format(Rs("igstper"), "#0.00") & " % ", 3, "") & Space(8) & Padl(INF(Format(Rs("igstamt"), "#0.00"), 2), 11, "")
    Else
        Print #a, Space(1) & Padr(Rs.Fields("Add1"), 30, "")
        
    End If
    
    Print #a, Space(1) & Padr(Rs.Fields("add2"), 30, "")
    
    If Rs("sgstamt") > 0 Then
        Print #a, Space(1) & Padr(Rs.Fields("city") & " " & Rs.Fields("pin"), 30, "");
        Print #a, Space(19) & " SGST @ " & Padl(Format(Rs("sgstper"), "#0.00") & " % ", 3, "") & Space(8) & Padl(INF(Format(Rs("sgstamt"), "#0.00"), 2), 11, "")
    Else
        Print #a, Space(1) & Padr(Rs.Fields("city") & " " & Rs.Fields("pin"), 30, "");
    End If
    
'    If Rs("igstamt") > 0 Then
'        Print #a, Space(5) & Padr(Rs.Fields("add2"), 30, "");
'        Print #a, Space(15) & " IGST @ " & Padl(Format(Rs("igstper"), "#0.00") & " % ", 3, "") & Space(8) & Padl(INF(Format(Rs("igstamt"), "#0.00"), 2), 12, "")
'    Else
'        Print #a, Space(5) & Padr(Rs.Fields("add2"), 30, "")
'    End If
'    Print #a, Space(5) & Padr(Rs.Fields("city"), 25, "") & Space(1) & Padr(Rs.Fields("pin"), 7, "");
    If Rs("Freight") > 0 Then
        Print #a, Space(1) & "GSTIN NO : " & Padr(Rs.Fields("gstinno"), 15, ""); '& Space(11) & "Freight :" & Padl(INF(Format(Rs("freight"), "#0.00"), 2), 11, "")
        Print #a, Space(23) & " Freight  " & Padl("" & "  ", 3, "") & Space(6) & Padl(INF(Format(Rs("Freight"), "#0.00"), 2), 11, "")
    Else
        Print #a, Space(1) & "GSTIN NO : " & Padr(Rs.Fields("gstinno"), 15, "")
        
    End If
    If Rs("Tcs_amt") > 0 Then
        Print #a, Space(50) & " TCS  @ " & Padl(Format(Rs("tcs_per"), "#0.000") & " % ", 5, "") & Space(6) & Padl(INF(Format(Rs("Tcs_amt"), "#0.00"), 2), 11, "")
    End If
    '''''------------------
'    Print #a, Space(67) & Padl(Format(Rs("bed_amt"), "#0.00"), 14, "")
'    Print #a, Space(55) & " M.CESS " & Padr(Rs("Cess_per"), 4, "") & "%" & Padl(Format(Rs("cess_amt"), "#0.00"), 13, "")
    Print #a,
'    Print #a, Space(1) & "GSTIN NO : " & Padr(Rs.Fields("gstinno"), 15, "") & Space(19) & " Round Off " & Space(6) & Padl(Format(Rs("rnd_off"), "#0.00"), 14, "")
    Print #a, Space(48) & " Round Off " & Space(6) & Padl(Format(Rs("rnd_off"), "#0.00"), 15, "")
'    Print #a, Space(50) & " Round Off " & Space(6) & Padl(Format(Rs("rnd_off"), "#0.00"), 14, "")
   tot = Round(Rs("Value"), 0) + Rs("Tax_Amt") + Rs("Cess_Amt") + Rs("BED_Amt") + Rs("rnd_off") + Rs("Tcs_amt")
'    Print #a,
'    Print #a,
'    Print #a,
    Print #a,
    Print #a, Space(65); Padl(INF(Format(Round(Rs("total_amt"), 0), "#0.00"), 2), 15, "")
'    Print #a,
    Print #a,
    Print #a,
    X = Num_To_Word(Round(Rs("total_amt"), 0))
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
    Print #a, Space(5) & X
    Print #a,
'    Print #a, Space(15) & Padr(Rs("carname"), 10, "") & Space(35) & Rs("rem_time")
'    Print #a, Space(15) & Rs("Vehicle_No")
'    Print #a, Space(60) & Rs("pre_time")
'    Print #a, Space(10) & Padr(Format(pdate, "dd-mm-yyyy"), 10, "")
'    Print #a, Space(10) & Padr("", 10, "") & Space(30) & Padr(Rs("Lr_no"), 10, "") & Space(14) & Padr(Format(pdate, "dd-mm-yyyy"), 10, "")
'    Print #a, Chr(12)
     Y = Num_To_Word(Round(Rs("Tax_Amt"), 0))
     Print #a, Space(5) & Y
     Print #a,
     Print #a, Space(5) & Padr(Rs.Fields("Agentname"), 30, "")
     
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
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call cancl1(BUTTON, 24)
    Buttonframe.Enabled = True
   ' BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Call NEWFORM1(BUTTON, GSNO)
Case 13, 12
    If Index = 13 Then
        RptClick = 1
    Else
        RptClick = 2
    End If
'    AmtWords = Num_To_Word(val(txtfields(47).Text))
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = ""
'    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\CottonSales_Print.rpt"
'    CrystalReport1.StoredProcParam(0) = Divcode
'    CrystalReport1.StoredProcParam(1) = txtfields(1).Text
'    CrystalReport1.StoredProcParam(2) = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
'    CrystalReport1.StoredProcParam(3) = Year(yfdate)
'    CrystalReport1.Formulas(0) = "Value_Text='" & AmtWords & "'"
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{ENTER}"
'    CrystalReport1.Action = True
'    CrystalReport1.PrinterCopies = 1

'    Dim clsCryRpt As New clsCrystal
'      Set clsCryRpt.cryRept = Cry_CottonInvoice
'      clsCryRpt.CrystalPrint
'
'      CrystalReport1.Reset

        Dim clsCryRpt1 As New clsCrystal
       ' If UCase(CustID) = "SOUTHERN" Then
        
            OLDPRINT = "NO"
            List1.Clear
            SSTab4.Visible = True
            Set repfrs = New Recordset
            If UCase(CustID) = "KUMARAGIRI" Then
                repfrs.Open "SELECT DISTINCT  DESCRIPTION FROM IG_PRINTTYPE   ORDER BY DESCRIPTION", DB, adOpenStatic
            Else
                repfrs.Open "SELECT DISTINCT  DESCRIPTION FROM WVG_PRINTTYPE  WHERE DIVCODE='" & Divcode & "' ORDER BY DESCRIPTION", DB, adOpenStatic
            End If
            If repfrs.RecordCount > 0 Then
               
                    FileAvailable = "N"
                    Set fso = New FileSystemObject
                    Do While Not repfrs.EOF
                    List1.AddItem repfrs(0)
                    If UCase(CustID) = "KUMARAGIRI" Then
                        List1.Selected(I) = True
                        If FileAvailable = "N" Then
                            Set Rs = New Recordset
                            Rs.Open "exec Ksp_Invoice_DSCSignFile '" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Trim(txtfields(1).Text) & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Trim(txtfields(7).Text) & "','" & repfrs(0) & "','RMI'", DB, adOpenStatic
                            If Not Rs.EOF Then
                                If IsNull(Rs(0)) = False Then
                                    sFilePath = Replace(Rs(0), "\\", "\")
                                    sFile = sFilePath
                                    If fso.FileExists(sFilePath) Then
                                        FileAvailable = "Y"
                                        CmdDSCSignView.Visible = True
                                    End If
                                        
                                End If
                            End If
                        End If
                    End If
                repfrs.MoveNext
                Loop
                Exit Sub
            Else
                MsgBox "No Print Type!!"
            End If
'        If UCase(CustID) = "SJS" Then
'            Set clsCryRpt1.cryRept = Cry_CottonInvoice_Southern 'Rep_stock_varwise
'           Exit Sub
'        Else
            Set clsCryRpt1.cryRept = Cry_CottonInvoice 'Rep_stock_varwise
'       End If
        clsCryRpt1.CrystalPrint
        CrystalReport1.Reset



      CrystalReport1.Connect = connectstring
      CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

      CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
      CrystalReport1.ParameterFields(1) = "@InvNo;" & txtfields(1).Text & ""
      CrystalReport1.ParameterFields(2) = "@InvDt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & ""
      CrystalReport1.ParameterFields(3) = "@Lotyear;" & Year(yfdate) & ""


    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
       
 



Case 11
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
'EXIT
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub



Private Sub CmdDSCSignView_Click()
On Error GoTo CmdFrtSUp_Click_Error

   'loop through the items in the ListBox
Dim fso As New FileSystemObject

For I = 0 To List1.ListCount - 1
    If List1.Selected(I) = True Then
        listval = List1.List(I)
        Set Rs = New Recordset
        Rs.Open "exec Ksp_Invoice_DSCSignFile '" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Trim(txtfields(1).Text) & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Trim(txtfields(7).Text) & "','" & Trim(listval) & "'", DB, adOpenStatic
        If Not Rs.EOF Then
            If IsNull(Rs(0)) = False Then
                sFilePath = Replace(Rs(0), "\\", "\") ''App.path & "\RMERPPO" & CustId & "\" & Divcode & "-PONO-" & Trim(txtfields(0).Text) + " DT-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) & ".pdf"
                sFile = sFilePath
                If fso.FileExists(sFilePath) Then
                    ShellExecute 0&, "Print", sFilePath, "", "", vbNormalFocus
                                        
                End If
            End If
        End If
     End If
  Next
  SSTab4.Visible = False
Exit Sub
CmdFrtSUp_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CmdFrtSUp_Click of Form Invoice", vbInformation, head


End Sub

Private Sub cmdPrint_Click()
  intervalMinutes = -1
      
    rfooter = ""
    a = 0
    B = List1.ListCount
    List1.ListIndex = 0
    
    bol1 = False

    I = 0
    Set Rs = New Recordset
    Rs.Open "select distinct isnull(einvoice_flg,'N') einvoice_flg from  pp_divmas ", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
      EinvFlg = Rs("einvoice_flg")
      
    Else
        EinvFlg = "N"
       
    End If
    
    If EinvFlg = "Y" Then
     Set rsinnew = New Recordset
    rsinnew.Open "select isnull(Qrcode,'') Qrcode ,isnull(sno,0) sno from RM_einvoice where  divcode='" & Divcode & "' and  isnull(irn_no,'')<>''  AND INV_NO='" & txtfields(1).Text & "' AND INV_TYPE='" & txtfields(0).Text & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsinnew.RecordCount > 0 Then
      strfile = rsinnew(0)
      SNO = rsinnew(1)
    Else
        strfile = ""
        SNO = 0
    End If
    
     GenerateBMP StrPtr("c:\SignQR.bmp"), StrPtr(strfile), 1.2, 1.2, QualityLow

        Set rsin = New Recordset
        rsin.Open "select Qrcode from RM_einvoice where  divcode='" & Divcode & "' and sno='" & SNO & "' AND INV_NO='" & Trim(txtfields(1).Text) & "' and  isnull(irn_no,'')<>'' AND  INV_TYPE='" & Trim(txtfields(0).Text) & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If rsin.EOF = True Then
        End If

            Dim binObj As ADODB.Stream
                sql = "SELECT  * FROM RM_einvoice WHERE divcode='" & Divcode & "' and sno='" & SNO & "' and INV_NO='" & val(txtfields(1).Text) & "' and  isnull(irn_no,'')<>'' AND INV_TYPE='" & Trim(txtfields(0).Text) & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' "
                Set rsnew = New Recordset
                rsnew.Open sql, DB, adOpenKeyset, adLockOptimistic
                If Not (rsnew.BOF And rsnew.EOF) Then
                         Set binObj = New ADODB.Stream
                         binObj.Type = adTypeBinary
                         binObj.Open
                         binObj.LoadFromFile "c:\SignQR.bmp"
                         rsnew!QrcodeImg = binObj.Read
                         rsnew.Update
                         binObj.Close
                         Set binObj = Nothing
                 End If
    
    
    '-------------------------
    
'code added on 20-03-2019
    
    End If
    
    
        ''PRINT TABLE ''SASI 20.3.18
    DB.CommandTimeout = 1000
    DB.Execute " set arithabort on "
    DB.Execute "ksp_TableExists TEMP_PRINTTYPE"
    DB.Execute "CREATE TABLE TEMP_PRINTTYPE (INV_NO [varchar](12) NULL,INV_TYPE [varchar](4) NULL, ipad [varchar](6),Divcode varchar(3),invsno numeric(4),PRINTHEAD VARCHAR(30))"
    
Do While Not a = B
    If List1.Selected(List1.ListIndex) = True Then
      
      rfooter = "" & List1.List(List1.ListIndex) & ""
      DB.Execute "INSERT INTO TEMP_PRINTTYPE  (INV_NO ,INV_TYPE , ipad ,Divcode,invsno,PRINTHEAD ) VALUES('" & txtfields(1).Text & "','" & txtfields(0).Text & "','" & LocalIPAdd1 & "','" & Divcode & "','" & (a + 1) & "','" & rfooter & "')"


  
  
     Dim clsCryRpt1 As New clsCrystal
          '  Set clsCryRpt1.cryRept = Cry_CottonInvoice '_Southern 'Rep_stock_varwise
    If RptClick = 2 Then
       Set clsCryRpt1.cryRept = Cry_SRG_DebitNote
    Else
         If UCase(CustID) = "SJS" Then
                Set clsCryRpt1.cryRept = Cry_CottonInvoice_Southern 'Rep_stock_varwis
         ElseIf UCase(CustID) = "SOUTHERN" Then
                Set clsCryRpt1.cryRept = Cry_RMInv_Southern 'Cry_RMI_SalesInv_Southern
         Else
            If EinvFlg = "Y" Then
                 If UCase(CustID) = "ASM" Then
                        Set clsCryRpt1.cryRept = Cry_RMI_Inv_ASM 'Cry_Einvoice_PrintASM
                 ElseIf UCase(CustID) = "SARANYA" Then
                       Set clsCryRpt1.cryRept = Cry_RMI_Invoice_Ashoktex
                 ElseIf UCase(CustID) = "KUMARAGIRI" Then
                    InvoiceCategory = "D"
                    
                    Set rs1 = New Recordset
                    rs1.Open "select inv_cat from ig_invtype where divcode='" & Divcode & "' and inv_type='" & txtfields(0).Text & "'", DB, adOpenStatic
                    If Not rs1.EOF Then
                        InvoiceCategory = rs1(0)
                    End If
                    If InvoiceCategory = "J" Then
                        Set clsCryRpt1.cryRept = Cry_RMIInvoice_KSPL 'Cry_SalesInv_KSPL
                    Else
                        Set clsCryRpt1.cryRept = Cry_SalesInv_KSPL
                    End If
                    
                 Else
                        If UCase(CustID) = "JTCL" Then
                               Set clsCryRpt1.cryRept = Cry_RMI_EInvoice_JTCL
                        Else
                               Set clsCryRpt1.cryRept = Cry_RMI_EInvoice_NEw 'Cry_Einvoice_Print
                        End If
                End If
                
                 ElseIf UCase(CustID) = "SKY" Then
                       Set clsCryRpt1.cryRept = Cry_RMI_Inv_Sky
                 ElseIf UCase(CustID) = "PGTSPG" Then
                       Set clsCryRpt1.cryRept = Cry_RMInvoice_PGT
                 ElseIf UCase(CustID) = "MOTHERLAND" Then
                       Set clsCryRpt1.cryRept = Cry_RMI_Inv_ML
                 ElseIf UCase(CustID) = "COTTON" And UCase(CustID1) = "SCM" Then
                       Set clsCryRpt1.cryRept = Cry_RMSalesInv_SCMTS
                 ElseIf UCase(CustID) = "CHERAN" Then
                       Set clsCryRpt1.cryRept = Cry_RMSales_Inv_Cheran
             Else
                Set clsCryRpt1.cryRept = Cry_RMInvoice
            End If 'Cry_CottonInvoice 'Rep_stock_varwise
    
        End If
     
  
     
    End If
         
       
            clsCryRpt1.CrystalPrint
            CrystalReport1.Reset
            
            
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            
            CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
            CrystalReport1.ParameterFields(1) = "@InvNo;" & txtfields(1).Text & ""
            CrystalReport1.ParameterFields(2) = "@InvDt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & ""
            CrystalReport1.ParameterFields(3) = "@Lotyear;" & Year(yfdate) & ""
            CrystalReport1.ParameterFields(4) = "@invtype;" & txtfields(0).Text & ""
            
            CrystalReport1.Formulas(0) = "invHead='" & Trim(rfooter) & "'"
            
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
     End If

     
     If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
        a = a + 1
        I = I + 1
      Loop
    intervalMinutes = -1
    
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form CottonInvoice", vbInformation, head
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
        For I = 51 To 60
            txtfields(I).Text = ""
        Next
        txtfields(66).Text = ""
        txtfields(67).Text = ""
        txtfields(68).Text = ""
        txtfields(32).Text = ""
        txtfields(33).Text = ""
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
Case 5
    If Combo1(5).Text = "Y-YES" Then
        tcsflg = True
        grddatagrid.Columns("tcs_amt") = 0
   
    Else
        tcsflg = False
        grddatagrid.Columns("TCS_AMT") = 0
  
    End If
End Select
Call INVCALC
End Sub

Private Sub Command1_Click()
  SSTab4.Visible = False
End Sub

Private Sub Command2_Click()
    If UserName <> "" Then
        webuser = Trim(UserName)
    Else
        webuser = ""
    End If
    
    Set rsnew = New Recordset
    rsnew.Open "select dbo.decryptstring(password) password from pp_passwd where module='" & ModuleNo & "' and user_name='" & webuser & "'", DB, adOpenStatic
    
    If rsnew.RecordCount > 0 Then
        Webpasswd = Trim(rsnew("password"))
    Else
        webpath = ""
    End If
    
    Set rsnew = New Recordset
    rsnew.Open "select EInvoicePath from rm_param", DB, adOpenStatic
    
    If rsnew.RecordCount > 0 Then
        webpath = Trim(rsnew("EInvoicePath"))
    Else
        webpath = ""
    End If
    
    Dim r As Long
'    r = ShellExecute(0, "open", "" & webpath & "?Databasename=" & GSTRDBNAME & "&module=" & ModuleNo & "&Date=" & pdate & "&divcode=" & Divcode & "&unitcode=" & unitcode & "&username=" & webuser & "&password=" & Webpasswd & " ", 0, 0, 1)
    
    
    
    
      Token = 0
    Set RsEInv = New Recordset
    RsEInv.Open "EXEC ksp_UserSessionInsert '" & Divcode & "','" & ModuleNo & "','" & usrid & "','" & UserName & "','" & Format(pdate, "yyyy-MM-dd") & "','" & LocalIPAdd & "','" & LocalHost & "','" & GSTRDBNAME & "'", DB
    If Not RsEInv.EOF Then
        Token = RsEInv(0)
    Else
        MsgBox "Please Create user rights", vbInformation
        Exit Sub
    End If
    

    
    r = ShellExecute(0, "open", "" & webpath & "?TokenId=" & Token & " ", 0, 0, 1)

End Sub

Private Sub Command4_Click()
On Error Resume Next
        DB.BeginTrans
    If Option1.value Then
        Del_Can_Flag = "D"
    Else
        Del_Can_Flag = "C"
    End If
    
    errflg = False
    LookUp.Clear = True
    If Del_Can_Flag = "D" Then
        strSQL = "select top 1 a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'  AND ISNULL(A.IRNFlg,'')<>'F' AND ISNULL(A.IRNFlg,'')<>'Y' " & _
                 " AND A.CUST_CODE=B.SLCODE AND ENTDATE BETWEEN dateadd(day,-1,GETDATE())  AND GETDATE() Order by a.Inv_No desc "
    Else
                strSQL = "select top 1 a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "' " & _
                 " AND A.CUST_CODE=B.SLCODE AND ENTDATE BETWEEN dateadd(day,-1,GETDATE())  AND GETDATE() AND( ISNULL(A.IRNFlg,'')='Y' OR ISNULL(A.IRNFlg,'')='F') Order by a.Inv_No desc "

    End If
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic, adLockReadOnly
    If Rs.EOF = True Then
        MsgBox "No Record Found to Modify", vbInformation, head
        Exit Sub
    End If
    strSQL = ""
    If Del_Can_Flag = "D" Then
    
        strSQL = "select a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'" & _
                 " AND A.CUST_CODE=B.SLCODE " & _
                 " and Inv_No='" & NULLCHECK(Rs("Inv_no")) & "'" & _
                 " and Inv_Type='" & NULLCHECK(Rs("Inv_Type")) & "' AND ENTDATE BETWEEN dateadd(day,-1,GETDATE())  AND GETDATE() and isnull(appflg,'N')='N' AND ISNULL(A.IRNFlg,'')<>'F' AND ISNULL(A.IRNFlg,'')<>'Y'"
             
'        strSQL = "select a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
'                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'" & _
'                 " AND A.CUST_CODE=B.SLCODE " & _
'                 " and Inv_No='" & NULLCHECK(Rs("Inv_no")) & "'" & _
'                 " and Inv_Type='" & NULLCHECK(Rs("Inv_Type")) & "' and date='" & Format(pdate, "yyyy-mm-dd") & "'"
    Else
        strSQL = "select a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'" & _
                 " AND A.CUST_CODE=B.SLCODE " & _
                 " and Inv_No='" & NULLCHECK(Rs("Inv_no")) & "'" & _
                 " and Inv_Type='" & NULLCHECK(Rs("Inv_Type")) & "'AND ENTDATE BETWEEN dateadd(day,-1,GETDATE())  AND GETDATE() and isnull(appflg,'N')='N' AND( ISNULL(A.IRNFlg,'')='Y' OR ISNULL(A.IRNFlg,'')='F')"
                 
'        strSQL = "select a.Inv_Type,a.Inv_no,Date,slname from  RM_CINVHD A ,FA_SLMAS B " & _
'                 " WHERE  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & Divcode & "'" & _
'                 " AND A.CUST_CODE=B.SLCODE " & _
'                 " and Inv_No='" & NULLCHECK(Rs("Inv_no")) & "'" & _
'                 " and Inv_Type='" & NULLCHECK(Rs("Inv_Type")) & "' and date='" & Format(pdate, "yyyy-mm-dd") & "'"   '' and isnull(irnflg,'N')='Y'
    End If
             
    LookUp.query = strSQL
    LookUp.Caption = "Invoice Listing"
    LookUp.DefCol = "Invoice No."
    LookUp.ALIGN = "1000,1000,2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      Buttonframe.Enabled = True
      Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt,tcs_per,tcs_amt,TCSAssValue from RM_CINVHD where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       If Del_Can_Flag = "D" Then
            Set rsout = New Recordset
            rsout.Open "select divcode from RM_OutpassDt where IssueNo='" & adoPrimaryRS("bo_no") & "' and IssueDate='" & Format(adoPrimaryRS("bo_dt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
            If Not rsout.EOF Then
                MsgBox "Out Pass Entry has been completed. Deletion is not permitted", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
       End If
       
       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate FROM RM_CINVDT where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = ADOSECONDARYRS
        Set TERS = New Recordset
        TERS.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
        If TERS(4) = "Y" Then
            Combo1(5).ListIndex = 0
            Call Combo1_Click(5)
            tcsflg = True
        Else
            Combo1(5).ListIndex = 1
        End If
        
    End If
       Call gridalign
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(I).Locked = False
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
        Call query_mode
        grddatagrid.Visible = True
        SSTab1.Visible = True
        Call cancl1(BUTTON, 24)
        Buttonframe.Enabled = True
        On Error Resume Next
        BUTTON(0).SetFocus
        Screen.MousePointer = 0
    End If
    Frame9.Visible = False
    Call adddelmod(BUTTON)
'    If LookUp.Cancel = False Then
'      Buttonframe.Enabled = True
'      Set adoPrimaryRS = New Recordset
'       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt,tcs_per,tcs_amt,TCSAssValue,Delvery_ID from RM_CINVHD where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
'       Call bindcontls
'       Set adoSecondaryRS = New Recordset
'       adoSecondaryRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",LotDt,TCS_PER ,TCS_AMT,Freight_Amt  FROM RM_CINVDT where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
'       Set grdDataGrid.DataSource = adoSecondaryRS
'    Set TERS = New Recordset
'    TERS.Open "select cess,charity,duty,tax from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", db
'    If TERS.RecordCount > 0 Then
'        If TERS(0) = "Y" Then
'            Combo1(1).ListIndex = 0
'            Call Combo1_Click(1)
'            CESSFLG = True
'        Else
'            Combo1(1).ListIndex = 1
'        End If
'        If TERS(1) = "Y" Then
'            Combo1(2).ListIndex = 0
'            Call Combo1_Click(2)
'            CHFLG = True
'        Else
'            Combo1(2).ListIndex = 1
'        End If
'        If TERS(2) = "Y" Then
'            Combo1(3).ListIndex = 0
'            Call Combo1_Click(3)
'            DUTYFLG = True
'        Else
'            Combo1(3).ListIndex = 1
'        End If
'        If TERS(3) = "Y" Then
'            Combo1(4).ListIndex = 0
'            Call Combo1_Click(4)
'            TAXFLG = True
'        Else
'            Combo1(4).ListIndex = 1
'        End If
'    End If
'       Call gridalign
'       If Opt = "mod" Then
'            grdDataGrid.AllowUpdate = True
'            Call disablcontls
'            For I = 8 To grdDataGrid.Columns.Count - 1 Step 1
'                    grdDataGrid.Columns(I).Locked = False
'            Next
'       End If
'        Call ModLock
'
'       On Error Resume Next
'    If Opt = "del" Then BUTTON(9).SetFocus
'
'    Else
'        Screen.MousePointer = 11
'        Frame6.Visible = False
'
'        Select Case Opt
'        Case "mod"
'            db.RollbackTrans
'        Case "add"
'            db.RollbackTrans
'        Case "del"
'            db.RollbackTrans
'        End Select
'        Opt = " "
'        Call query_mode
'        grdDataGrid.Visible = True
'        SSTab1.Visible = True
'        Call cancl1(BUTTON, 24)
'        Buttonframe.Enabled = True
''        BUTTON(0).SetFocus
'        Screen.MousePointer = 0
'    End If
'    Call adddelmod(BUTTON)
'    Frame9.Visible = False
End Sub

Private Sub Command5_Click()
Frame9.Visible = False
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
Case 0, 1, 2, 3, 4
    MaskEdBox1(Index).Text = DTPicker1(Index).value
End Select
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form CottonInvoice", vbInformation, head
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
intervalMinutes = -1
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form CottonInvoice", vbInformation, head
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

intervalMinutes = -1
   Opt = "qry"
   B = 0
   Set DB = New Connection
   DB.CursorLocation = adUseClient
   DB.Open "PROVIDER=MSDataShape;" & connectstring
   desc.Caption = "Query"
   DATLAB.Caption = pdate
   stbar.Panels(1).Text = head
   txtfields(47).FontBold = True
   DTPicker1(0).value = pdate
   DTPicker1(1).value = pdate
   DTPicker1(2).value = pdate
    BlnTcsCalc = False
    BInCESSTCS = False
    BInPACKTCS = False
   Call query_mode
   SSTab1.Tab = 0
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub query_mode(Optional INVTYPE As String, Optional INVNO As String)
On Error GoTo er1
intervalMinutes = -1
If Opt = " " Or Opt = "qry" Then
    If INVNO = "" Then
        Set QryRS = New Recordset
        QryRS.Open "select inv_type from RM_CINVHD WHERE date between '" & Format(yfdate, "yyyy-MM-dd") & "'  and '" & Format(yldate, "yyyy-MM-dd") & "' and  DIVCODE='" & Divcode & "'ORDER BY DATE,INV_TYPE", DB
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,cons_gstinno,remarks,bo_dt,tcs_per,tcs_amt,TCSAssValue,Delvery_ID from RM_CINVHD WHERE date between '" & Format(yfdate, "yyyy-MM-dd") & "' and  '" & Format(yldate, "yyyy-MM-dd") & "' and  DIVCODE='" & Divcode & "' order by DATE ,cast(inv_no as numeric) } AS ParentCMD APPEND " & _
        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""Tax Code"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",LotDt,TCS_PER ,TCS_AMT,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate  FROM RM_CINVDT where divcode = '" & Divcode & "' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
    Else
        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT,bagidno,CGSTAMT,SGSTAMT,IGSTAMT,RCM,cons_gstinno,remarks,bo_dt,tcs_per,tcs_amt,TCSAssValue,Delvery_ID from RM_CINVHD WHERE date between '" & Format(yfdate, "yyyy-MM-dd") & "' and  '" & Format(yldate, "yyyy-MM-dd") & "' and  DIVCODE='" & Divcode & "' order by DATE,cast(inv_no as numeric)} AS ParentCMD APPEND " & _
            "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs As Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",inv_kgs""INV Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %"",Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",LotDt,TCS_PER ,TCS_AMT ,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate FROM RM_CINVDT where divcode = '" & Divcode & "' AND INV_TYPE  like 'W%' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
        
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
    gridalign
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    End If
    SSTab1.Enabled = True
    SSTab1.Tab = 0
    BUTTON(0).SetFocus
    Call NEWFORM1(BUTTON, GSNO)
End If
Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If Err = -2147467259 Then
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

'---------------------------------------------------------------------------------------
' Procedure : disablcontls
' DateTime  : 07/12/2008 14:31
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub disablcontls()
Dim c As Control
On Error GoTo disablcontls_Error

For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form CottonInvoice", vbInformation, head
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
Dim c As Control
On Error GoTo ENABLCONTLS_Error

For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = False
Next
For I = 6 To 28
txtfields(I).Locked = True
Next
txtfields(15).Locked = False
txtfields(12).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : GRIDALIGN
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub gridalign()
On Error GoTo GRIDALIGN_Error

    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Visible = False
'    grddatagrid.Columns(5).Visible = False
    grddatagrid.EditActive = False
    For I = 0 To 22
        grddatagrid.Columns(I).Locked = True
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
    grddatagrid.Columns("IGST Amt").NumberFormat = "#####0.00"
    grddatagrid.Columns("SGST Amt").NumberFormat = "#####0.00"
    grddatagrid.Columns("CGST Amt").NumberFormat = "#####0.00"
    grddatagrid.Columns("IGST %").NumberFormat = "#####0.00"
    grddatagrid.Columns("SGST %").NumberFormat = "#####0.00"
    grddatagrid.Columns("CGST %").NumberFormat = "#####0.00"
    
    grddatagrid.Columns("tcs_Per").NumberFormat = "#######.000"
    grddatagrid.Columns("tcs_amt").NumberFormat = "#######.00"
    grddatagrid.Columns("Freight_Amt").NumberFormat = "#######.00"
   
   
'   Dim J As Integer
   For I = 7 To 23
        grddatagrid.Columns(I).Alignment = dbgRight
   Next
   grddatagrid.Columns(7).Width = 1200
   grddatagrid.Columns(8).Width = 1200
   grddatagrid.Columns(9).Width = 1200
   For I = 10 To 23
        grddatagrid.Columns(I).Width = 1200
   Next

   grddatagrid.Columns(7).Locked = True
   grddatagrid.Columns(8).Locked = True
   grddatagrid.Columns(9).Locked = False
   
   grddatagrid.Columns("JobOrdNo").Locked = True
   grddatagrid.Columns("JobOrddate").Locked = True
   grddatagrid.Columns("MixRate").Locked = True
   
   grddatagrid.Columns("JobOrdNo").Visible = False
   grddatagrid.Columns("JobOrddate").Visible = False
   grddatagrid.Columns("MixRate").Visible = False
    grddatagrid.Columns("Varcode").Visible = False
 grddatagrid.Columns("Varcode").Locked = True
Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRIDALIGN of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0

End Sub



Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub


Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
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
    LookUp.Clear = True
    LookUp.query = "select TAX_CODE""Tax Code"",DESCRIPTION,ABBR""Tax Abbreviation"",ST_PER""Tax Percentage""  from ig_tax where  taxstatus='Y'"
    LookUp.Caption = "Tax Type Listing"
    LookUp.DefCol = "Tax Code"
    LookUp.ALIGN = "1500,2500,1500,1500"
    LookUp.Show vbModal
    
    If LookUp.Cancel = False Then
            grddatagrid.Columns(14).Text = LookUp.Fields(0)
            grddatagrid.Columns(15).Locked = True
            grddatagrid.Columns(15).Text = LookUp.Fields(3)
            grddatagrid.Columns(15).Locked = False
            
            LookUp.Clear = True
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

 If LastCol = 10 Then
   ' If val(grdDataGrid.Columns(10).Text) = 0 Then
      '  MsgBox "Rate cannot be empty", vbInformation, head
'        grdDataGrid.Col = 10
'        grdDataGrid.SetFocus
        'Exit Sub
   ' End If
End If
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
    txtfields(0).Text = ksldesc1.code
    Set Rs = New Recordset
    'rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='I' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'and doc_ref = '" & ksldesc1.code & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", DB
    docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtfields(1).Text = docno
    txtfields(1).SetFocus
'    txtfields(1).Locked = True
    Set Rs = New Recordset
    Rs.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
    If Rs(4) = "Y" Then
        Combo1(5).ListIndex = 0
        tcsflg = True
    Else
        Combo1(5).ListIndex = 1
        tcsflg = False
    End If
    
    
Case "slcode"
     txtfields(6).Text = ksldesc1.code
      txtfields(7).Text = ksldesc1.Description
      txtfields(50).SetFocus
Case "CEX_INVTYPE"
    txtfields(2).Text = ksldesc1.code
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & ksldesc1.code & "' AND YEAR_NO='" & YearNo & "'", DB
    docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtfields(3).Text = docno
    MaskEdBox1(0).SetFocus
Case "DATE", "convert(varchar,DATE,103)"
    ADOSECONDARYRS.Requery
    Call gridalign
    txtfields(5).Text = Mid$(ksldesc1.Description, 1, 8)
    txtfields(4).Text = Right(ksldesc1.Description, 4)
    
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0),isnull(b.cont_no,0), b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),0,isnull(a.rateflg,'X') from IG_RBOHD a, IG_RBODT b where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and  a.divcode='" & Divcode & "' and a.bo_no='" & Mid$(ksldesc1.Description, 1, 8) & "' and a.bo_type='" & Right(ksldesc1.Description, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rateflg", DB
    txtfields(6).Text = Rs(0)
    txtfields(34).Text = Rs(1)
    While Not Rs.EOF
        ADOSECONDARYRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        Set rs1 = New Recordset
        
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from ig_product where product_code='" & grddatagrid.Columns(5) & "')", DB
        End If
        Set RS2 = New Recordset
        RS2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_product a left join   ig_producttype b on a.product_type=b.product_type  where  a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        If Not RS2.EOF Then
        txtfields(15).Text = RS2(3)
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
    Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where DOC_TYPE='D' and doc_ref='" & ksldesc1.code & "' and divcode = '" & Divcode & "'", DB
    docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    If xx = 66 Then
        txtfields(32).Text = ksldesc1.code
        txtfields(33).Text = docno
        txtfields(51).SetFocus
    ElseIf xx = 67 Then
        txtfields(53).Text = ksldesc1.code
        txtfields(54).Text = docno
        txtfields(56).SetFocus
    Else
        txtfields(57).Text = ksldesc1.code
        txtfields(58).Text = docno
        txtfields(59).SetFocus
    End If
Case "CarCODE"
    txtfields(29).Text = ksldesc1.code
    txtfields(30).Text = ksldesc1.Description
Case "BANK_CODE"
    txtfields(48).Text = ksldesc1.code
Case "a.inv_type AS Invoice_type"
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DIVCODE,entdate,user_id,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4 ,CGSTAMT,SGSTAMT,IGSTAMT,RCM,bo_dt ,tcs_per,tcs_amt ,TCSAssValue from RM_CINVHD where inv_type='" & ksldesc1.code & "' and inv_no='" & ksldesc1.Description & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
       Call bindcontls
       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Lot No."",Packs as Quantity,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",INV_KGS""Invoice Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per""Tax %"",Bed_Per""BED %"",Aed_Per""AED %,Lsc_Per""LSC %"",Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,HSN ""HSN Code"",CGSTPER ""CGST %"",CGSTAMT ""CGST Amt"",SGSTPER ""SGST %"",SGSTAMT ""SGST Amt"",IGSTPER ""IGST %"",IGSTAMT ""IGST Amt"",tcs_per,tcs_amt,Freight_Amt,Varcode,JobOrdNo,JobOrddate,MixRate FROM RM_CINVDT where inv_type='" & ksldesc1.code & "' and inv_no='" & ksldesc1.Description & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Set grddatagrid.DataSource = ADOSECONDARYRS
    Set TERS = New Recordset
    TERS.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
    If TERS(4) = "Y" Then
        Combo1(5).ListIndex = 0
        Call Combo1_Click(5)
       tcsflg = True
    Else
        Combo1(5).ListIndex = 1
    End If
    
       
       Call gridalign
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                    grddatagrid.Columns(I).Locked = False
            Next
       End If
        Call ModLock
       
       On Error Resume Next
       If Opt = "del" Then BUTTON(9).SetFocus
Case "AREA_CODE"
    txtfields(13).Text = ksldesc1.code
    txtfields(14).Text = ksldesc1.Description
    
End Select
    Buttonframe.Enabled = True
    Frame6.Visible = False

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form CottonInvoice", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form CottonInvoice", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form CottonInvoice", vbInformation, head
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
intervalMinutes = -1
On Error Resume Next
Select Case Index
Case 6, 8, 10
        Set rs1 = New Recordset
        rs1.Open "select isnull(slname,' ') from fa_slmas where slcode='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then txtfields(Index + 1).Text = rs1(0)
        
Case 7
        On Error Resume Next
            Set rs1 = New Recordset
            rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from fa_slmas where slcode='" & txtfields(6).Text & "'", DB
            If Opt = "add" Then
                'If Ksldesc1.description <> "" Then
                    Set RSS = New Recordset
                    RSS.Open "select deliveyat from IG_RBOHD where bo_no='" & Mid$(Trim(ksldesc1.Description), 4, Len(ksldesc1.Description)) & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
                'End If
            End If
    If RSS.EOF Then Exit Sub
    If RSS(0) <> "" Then
            Set rs1 = New Recordset
           rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from ig_rdeladd where slcode='" & txtfields(6).Text & "' and cname='" & RSS(0) & "'", DB
            If Opt = "add" And ksldesc1.Description <> "" And RSS.RecordCount > 0 Then
                txtfields(61).Text = RSS(0)
            End If
                txtfields(62).Text = rs1(0)
                txtfields(63).Text = rs1(1)
                txtfields(64).Text = rs1(2)
                Set DT = New Recordset
                DT.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtfields(64).Text & "'", DB, adOpenStatic
                txtfields(13).Text = DT(0)
                txtfields(14).Text = DT(1)
    Else
            txtfields(61).Text = txtfields(7).Text
            txtfields(62).Text = rs1(0)
            txtfields(63).Text = rs1(1)
            txtfields(64).Text = rs1(2)
            Set DT = New Recordset
            DT.Open "SELECT AREA_CODE,NAME FROM ig_rAREA WHERE NAME='" & txtfields(64).Text & "'", DB, adOpenStatic
            If DT.RecordCount > 0 Then
                txtfields(13).Text = DT(0)
                txtfields(14).Text = DT(1)
            Else
                txtfields(13).Locked = False
                txtfields(14).Locked = False
            End If
    End If
    
Case 13
        Set rs1 = New Recordset
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then txtfields(14).Text = rs1(0)
    
Case 32
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtfields(66).Text = rs1(0)
        
Case 53
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtfields(67).Text = rs1(0)
Case 57

        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
            If Not rs1.EOF Then txtfields(68).Text = rs1(0)
        
Case 48
        Set rs1 = New Recordset
        rs1.Open "select name from ig_bank where bank_code='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then txtfields(12).Text = rs1(0)
Case 29
        Set rs1 = New Recordset
        rs1.Open "select Carname from PO_Car where CarCODE='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then txtfields(30).Text = rs1(0)
Case 75
        Set rs1 = New Recordset
        If UCase(CustID) = "SARANYA" Then
            rs1.Open " select delcode,cname from ig_deladd where delcode = '" & Trim(txtfields(75).Text) & "'", DB, adOpenStatic
        Else
            rs1.Open " select slcode as delcode,slname as cname from ig_delmas where slcode = '" & Trim(txtfields(75).Text) & "'", DB, adOpenStatic
        End If
        If rs1.EOF = False Then
           txtfields(75).Text = rs1("delcode")
           txtfields(76).Text = rs1("cname")
        Else
            txtfields(75).Text = ""
            txtfields(76).Text = ""
        End If
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
'If Record_Exists("ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'", "Duty Type Not Found") = False Then Exit Sub
'    xx = 66
'    Buttonframe.Enabled = False
'    Ksldesc1.conn = connectstring
'    listlb.Caption = "PLA-Duty Type Listing"
'    Ksldesc1.Table = "ig_DUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'"
'    Ksldesc1.listfield1 = "P.DUTY_CODE"
'    Ksldesc1.listfield2 = "P.DESCRIPTION"
'    Frame6.ZOrder
'    Frame6.Visible = True
'    Ksldesc1.SetFocus
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form CottonInvoice", vbInformation, head
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
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error
intervalMinutes = -1
Call ToUpCase(txtfields, KeyAscii)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 50
    Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
Case 65, 69
    Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 0)
Case 51, 52, 55, 56, 59, 60, 31, 39, 49, 16, 18, 20, 22, 26
    Call ToNumberAssign(txtfields(Index), 8, KeyAscii, 8, 2)
Case 29
    Call ToUpCase(txtfields(Index), KeyAscii)
Case 70
    'Call ToAlphaNumber(txtFields(Index), 20, KeyAscii)
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_LostFocus
' DateTime  : 07/12/2008 14:32
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

Select Case Index
Case 50
    SSTab1.Tab = 2
    txtfields(29).SetFocus
Case 69
    On Error Resume Next
    ADOSECONDARYRS.MoveFirst
    If txtfields(69).Text <> "" And grddatagrid.Columns(6).value <> "" Then
        txt = txtfields(69).Text * grddatagrid.Columns(6).value
        txtfields(31).Text = val(txt)
        txtfields(31).SetFocus
    End If
Case 70
    grddatagrid.SetFocus
    grddatagrid.Col = 7

End Select

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
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
        rs1.Open "select * from rm_param", DB, adOpenStatic
        
        '' Kuppuram - 27-Apr-2007 - Check for Waste Sales Invoice Type is defined
        Set rs_invtype = New Recordset
        'rs_invtype.Open "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like '" & RS1("cottoninv_type") & "'", DB
         rs_invtype.Open "select inv_type,DESCRIPTION from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE in (SELECT items FROM dbo.Split('" & rs1("cottoninv_type") & "', ','))  ", DB
   
        If rs_invtype.RecordCount < 1 Then
            'MsgBox "Pls. define Invoice Type as starting with 'C' for Waste Sales", vbInformation, head
            MsgBox "Please define Invoice Type in Parameter for Raw Material Sales", vbInformation, head
            txtfields(0).Text = ""
            txtfields(0).SetFocus
            rs_invtype.Close
            Exit Sub
        End If
        rs_invtype.Close
        
        Buttonframe.Enabled = False
        LookUp.Clear = True
      '  LookUp.query = "select inv_type""Invoice Type"",DESCRIPTION""Type Description"" from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE like '" & RS1("cottoninv_type") & "' "
         LookUp.query = "select inv_type""Invoice Type"",DESCRIPTION""Type Description"" from ig_invtype where divcode='" & Divcode & "' AND INV_TYPE in (SELECT items FROM dbo.Split('" & rs1("cottoninv_type") & "', ',')) "
        LookUp.Caption = "Invoice Type Listing"
        LookUp.DefCol = "Type Description"
        LookUp.ALIGN = "2000,3400"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            SSTab1.Visible = True
            txtfields(0).Text = LookUp.Fields(0)
            DocNoGrp = 0
            CEXNOGRP = 0
            divgrp = ""
            YearNo = Format(yfdate, "yy")
            Set rsg = New Recordset
            rsg.Open "SELECT isnull(DocNoGrp,0)""DocNoGrp"",isnull(CexNoGrp,0)""CexNoGrp"",ISNULL(DIVGRP,'') DIVGRP from ig_doccontrol where DOC_REF='" & LookUp.Fields(0) & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                DocNoGrp = rsg("DOCNOGRP")
                CEXNOGRP = rsg("CexNoGrp")
                divgrp = rsg("DIVGRP")
            End If
            
            Set Rs = New Recordset
            Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I' and DOCNOGRP = '" & DocNoGrp & "' AND YEAR_NO='" & Right(Year(yfdate), 2) & "'", DB
            docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
            txtfields(1).Text = docno
            txtfields(1).Locked = False

            txtfields(2).Text = txtfields(0).Text
            txtfields(3).Text = docno
'            TXTFIELDS(3).Text = ""
            txtfields(2).Locked = True
            txtfields(3).Locked = True
            txtfields(4).SetFocus
            
        '    txtfields(1).Locked = True
            Set Rs = New Recordset
            Rs.Open "select cess,charity,duty,tax,isnull(tcs_calc,'N') tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
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
                
                If Rs(4) = "Y" Then
                    Combo1(5).ListIndex = 0
                     tcsflg = True
                Else
                    Combo1(5).ListIndex = 1
                End If
                
                
                LookUp.Clear = True
            Else
                MsgBox "Pls. define Invoice Type as starting with 'W' for Waste Sales", vbInformation, head
                txtfields(0).Text = ""
                txtfields(0).SetFocus
                Exit Sub
            End If
        Else
            Buttonframe.Enabled = True
            SSTab1.Visible = True
            SSTab1.Tab = 0
            txtfields(0).SetFocus
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
Case 2
    If Record_Exists("ig_INVTYPE A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtfields(0).Text & "' AND A.divcode='" & Divcode & "'", "CEXInvoice Type not found") = False Then
'        Call BUTTON_Click(10)
        Exit Sub
    End If
    Set rs1 = New Recordset
    rs1.Open "select * from rm_param", DB, adOpenStatic
    Buttonframe.Enabled = False
    LookUp.Clear = True
    LookUp.query = "select CEX_INVTYPE,B.DESCRIPTION from ig_invtype A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtfields(0).Text & "' AND A.divcode='" & Divcode & "'"
    LookUp.Caption = "Central Excise Invoice Type Listing"
    LookUp.DefCol = "CEX_INVTYPE"
    LookUp.ALIGN = "1500,1500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    txtfields(2).Text = LookUp.Fields(0)
    Set Rs = New Recordset
    'Easwar rs.Open "Select max(LAST_NO) from ig_rdoccontrol where divcode='" & divcode & "' and  DOC_TYPE='E' and doc_ref='" & Ksldesc1.code & "'", db
    Rs.Open "Select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='E' and doc_ref='" & LookUp.Fields(0) & "' AND YEAR_NO='" & YearNo & "'", DB
    docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    txtfields(3).Text = docno
    MaskEdBox1(0).SetFocus
    LookUp.Clear = True
    Else
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    SSTab1.Tab = 0
    txtfields(2).SetFocus
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
    If Record_Exists("RM_IssH where divcode='" & Divcode & "' and issType in (select Issue_code From rm_issuetype where isstype in('R','S','J'))", "Issue Not Found") = False Then
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Set rs1 = New Recordset
    rs1.Open "select * from rm_param", DB, adOpenStatic
    Buttonframe.Enabled = True
    LookUp.Clear = True
    'LookUp.query = "select DATE,BO_NO,bo_type from IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL and ISSFLG='SA' "
    'LookUp.Query = "select Distinct Docno,Docdt,IssType from RM_Issb  where divcode='" & Divcode & "'  and ISSTYpe='SA'  group by DocDt,DocNo,IssType "
    LookUp.query = "select Distinct Docno""Doc. No."",Docdt""Doc. Date"",IssType""Issue Type"" from RM_Issb a where a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(pdate, "YYYY-MM-DD") & "'  and ISSTYpe in (select Issue_code From rm_issuetype where isstype in('R','S','J')) and docno not in(select aa.bo_no from rm_cinvhd aa  where aa.Divcode=a.Divcode and aa.Bo_no=a.Docno and aa.Bo_dt=a.Docdt and aa.divcode='" & Divcode & "' and isnull(aa.cancelled,'')<>'Y') group by DocDt,DocNo,IssType "
    LookUp.Caption = "Sales Issue Listing"
    LookUp.ALIGN = "1500,1500,1500"
    LookUp.DefCol = "Doc. Date"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    ADOSECONDARYRS.Requery
    Call gridalign
    txtfields(4).Text = LookUp.Fields(0)
    txtfields(5).Text = LookUp.Fields(2)
     MaskEdBox1(4).Text = LookUp.Fields(1)
    'Easwar rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs), c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate from IG_RBOHD a, IG_RBODT b, ig_rconthd c, ig_rcontdt d where a.divcode = b.divcode and a.bo_type = b.bo_type and a.bo_no = b.bo_no and b.divcode = c.divcode AND b.cont_type = c.cont_type and b.cont_no = c.cont_no and c.divcode = d.divcode and c.cont_type = d.cont_type and c.cont_no = d.cont_no AND b.divcode = d.divcode and b.cont_type = d.cont_type and b.cont_no = d.cont_no AND b.product_code = d.product_code and a.divcode='" & divcode & "' and a.bo_no='" & Mid$(Ksldesc1.Description, 4, 8) & "' and a.bo_type='" & Mid$(Ksldesc1.Description, 1, 2) & "' GROUP BY  b.product_code,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no," & _
            "c.agent_code, c.broker_code, c.pay_mode, c.bank_code, c.credit_days, c.despatch_to, d.rate_flag, d.rate", db
    Set Rs = New Recordset
    Rs.Open "select isnull(a.Slcode,'') as Slcode,ISNULL(a.vehicleno, '') as vehicleno,isnull(b.Isstype,'SA') as Isstype,isnull(b.Docno,0) as Docno, b.LOtNo,Count(b.BaleNo) as packs, SUM(b.Isskgs) as Isskgs ,SUM(b.ActIsskgs) as ActIsskgs,0,'X' as rateflg,b.lotdt,b.Varcode,a.driver,a.InvoiceNo ,a.InvDate from RM_Issh a, RM_Issb b where a.divcode = b.divcode and a.Isstype = b.Isstype and a.Docno = b.Docno and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.Docno='" & LookUp.Fields(0) & "' and a.docdt='" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' and a.Isstype in (select Issue_code From rm_issuetype where isstype in('R','S','J')) GROUP BY  b.LotNo,a.Slcode,a.vehicleno, b.Isstype, b.Docno,b.lotdt,b.Varcode,a.driver,a.InvoiceNo ,a.InvDate", DB
    txtfields(6).Text = Rs(0)
    txtfields(34).Text = Rs(1)
    While Not Rs.EOF
        ADOSECONDARYRS.AddNew
        grddatagrid.Columns(3).Text = Rs(2)
        grddatagrid.Columns(4).Text = Rs(3)
        grddatagrid.Columns(5).Text = Rs(4)
        
        grddatagrid.Columns("Varcode").Text = Rs("Varcode")
        
        grddatagrid.Columns("JobOrdNo").Text = Rs("InvoiceNo")
        grddatagrid.Columns("JobOrddate").Text = Rs("InvDate")
        If IsNumeric(Rs("driver")) = True Then
            grddatagrid.Columns("MixRate").Text = Rs("driver")
        End If
        
        
        grddatagrid.Columns("LotDt").Text = Format(Rs("lotdt"), "dd/mm/yyyy")
          If tcsflg = True Then
          
             Set RS2 = New Recordset
            RS2.Open "select isnull(pan,'') pan,len(isnull(pan,'')) psnlen from fa_slmas where slcode='" & Trim(Rs(0)) & "' ", DB
            If Not RS2.EOF Then
                If RS2(0) = "" Then
                    MsgBox "PAN No is Empty for selected Customer!!!", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                
                 If RS2(1) <> 10 Then
                    MsgBox "PAN No Should be 10 Digit!!!", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                
            End If
          
          End If
      
         
         
         
        
            Set rs1 = New Recordset
            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(TDS_TCS_Cal_Flg,'Y') TDS_TCS_Cal_Flg,isnull(supptype,'R') supptype FROM FA_SLMAS WHERE SLCODE='" & Trim(Rs(0)) & "' ", DB
            If rs1.EOF Then
                            'If RS1("GSTSTATECODE") = 0 Then
                    MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                           ' End If
            Else
            TDS_TCS_Cal_Flg = rs1("TDS_TCS_Cal_Flg")
                If rs1("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                End If
                    
            
            STCODE = rs1("GSTSTATECODE")
            If rs1("supptype") <> "U" Then
                If rs1("GSTINNO") = "" Then
                        MsgBox "PLEASE ENTER GST NO IN CUSTOMER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                End If
            
            
                   '' txtFields(26).Text = rs1("GSTSTATECODE")
                   ' 'txtFields(25).Text = rs1("GSTINNO")
                                 
                End If
             End If
            InterDivFlg = "N"
            Set Rsgst = New Recordset
            Rsgst.Open "SELECT A.GSTINNO FROM PP_DIVMAS A  WHERE A.DIVCODE='" & Divcode & "' and a.GSTINNO='" & rs1("GSTINNO") & "'", DB
            If UCase(CustID) <> "KUMARAGIRI" Then
                If Not Rsgst.EOF Then
                    InterDivFlg = "Y"
                Else
                    InterDivFlg = "N"
                End If
            End If
                
            Set rs1 = New Recordset

            rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON   A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "' and SLCODE='" & Trim(Rs(0)) & "' ", DB

            If Not rs1.EOF Then
                If InterDivFlg = "N" Then
                    IGSTFLG = "Y"
                    TAXFLG = True
                Else
                   IGSTFLG = "N"
                    TAXFLG = True
                End If
            Else
                IGSTFLG = "N"
                TAXFLG = True
            End If
     
    
        
        Set rs1 = New Recordset
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select Distinct isnull(tax_code,'') as tax_code from RM_lot where lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and LotNo='" & grddatagrid.Columns(5) & "' and varcode='" & grddatagrid.Columns("varcode") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND isnull(tax_code,'')<>'')", DB
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select Distinct isnull(tax_code,'') as tax_code from RM_Lot where lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and LotNo='" & grddatagrid.Columns(5) & "' and varcode='" & grddatagrid.Columns("varcode") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND isnull(tax_code,'')<>'')", DB
        End If
        Set RS2 = New Recordset
        'rs2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0) from ig_rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        RS2.Open "select Distinct  isnull(CharityAmt,0),isnull(aedper,0),isnull(bedper,0),isnull(cessper,0) ,isnull(c.cgstper,0) cgstper,isnull(c.sgstper,0) sgstper,isnull(c.igstper,0) igstper,taxcode,isnull(c.hsn,'')hsn,isnull(a.RATEKG,0) RATEKG from RM_Lot a left join  RM_Issb b on   a.LotNo=b.LotNo and a.lotdt=b.lotdt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode left join rm_var c on a.VARCODE =c.VARCODE where a.divcode='" & Divcode & "' and a.varcode='" & grddatagrid.Columns("varcode").Text & "'  and a.LotNo='" & grddatagrid.Columns(5).Text & "'  and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'  ", DB
        If Not RS2.EOF Then
        txtfields(15).Text = RS2(3)
        grddatagrid.Columns(6).Text = Rs(5)
        grddatagrid.Columns(7).Text = Rs(6)
        grddatagrid.Columns(8).Text = Rs(7)
        If RS2("HSN") = "" Then
            MsgBox "HSN code Cannot be Empty", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        grddatagrid.Columns("HSN Code").Text = RS2("hsn")
                       
        If InterDivFlg = "N" Then
             If IGSTFLG = "Y" Then
                 grddatagrid.Columns("CGST %").Text = val(RS2("cgstper")) 'cgstper
                 grddatagrid.Columns("SGST %").Text = val(RS2("sgstper"))
                 grddatagrid.Columns("IGST %").Text = "0"
                 grddatagrid.Columns("IGST Amt").Text = "0"
                 grddatagrid.Columns("Tax Code").Text = RS2("taxcode")
             Else
                 grddatagrid.Columns("IGST %").Text = val(RS2("igstper"))
                 grddatagrid.Columns("SGST Amt").Text = "0"
                 grddatagrid.Columns("CGST Amt").Text = "0"
                 grddatagrid.Columns("CGST %").Text = "0"
                 grddatagrid.Columns("SGST %").Text = "0"
                 grddatagrid.Columns("Tax Code").Text = RS2("taxcode")
            End If
       Else
            grddatagrid.Columns("SGST Amt").Text = "0"
            grddatagrid.Columns("CGST Amt").Text = "0"
            grddatagrid.Columns("CGST %").Text = "0"
            grddatagrid.Columns("SGST %").Text = "0"
            grddatagrid.Columns("IGST %").Text = "0"
            grddatagrid.Columns("IGST Amt").Text = "0"
       
       End If
        
        If Rs("RateFlg") = "X" Then
            grddatagrid.Columns(10).Text = Rs(8)
            
            rf = Rs("RateFlg")
        Else
            'prakash on 21/6/02
            Rate = IIf(IsNull(Rs(8)), 0, Rs(8))
            grddatagrid.Columns(11).Text = IIf(IsNull(Rs(8)), 0, Rs(8))
                    rf = Rs("RateFlg")
        End If
           If UCase(CustID) = "JTCL" Then
                grddatagrid.Columns(9).Text = IIf(IsNull(Rs(6)), 0, Rs(6))
                grddatagrid.Columns(10).Text = RS2("ratekg")
           End If
        
        'grddatagrid.Columns(10
        If Not rs1.EOF Then
            grddatagrid.Columns(14).Text = rs1(0)
            grddatagrid.Columns(15).Text = rs1(1)
            grddatagrid.Columns(18).Text = rs1(2)
       ' commented on 24-04-19 by mariyaiya
       ' Else
          '  grdDataGrid.Columns(14).Text = " "
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
    LookUp.Clear = True
    Frame8.Visible = True
    txtfields(6).SetFocus
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
            If Trim(txtfields(0).Text) <> "" Then
                Set Rs = New Recordset
                Rs.Open "Select * from RM_CINVHD where inv_type='" & Trim(txtfields(0).Text) & "' and inv_no='" & txtfields(1).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                    MsgBox "This Invoice Number Already Defined", vbInformation, head
                    txtfields(1).SetFocus
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
          Call Frieght_SPLITUP
        Call INVCALC
Case 29
    
    If Record_Exists("PO_Car", "Carrier Not Found") = False Then Exit Sub
    
    Set rs1 = New Recordset
    rs1.Open "select Carname from PO_Car where carcode='" & txtfields(29) & "'", DB
    If Not rs1.EOF Then
        txtfields(30).Text = rs1(0)
    Else
        LookUp.Clear = True
        LookUp.query = "select cARCODE""Carrier Code"",CarNAME""Carrier Name"" from PO_Car "
        LookUp.Caption = "Carrier Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.DefCol = "Carrier Name"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(29).Text = LookUp.Fields(0)
            txtfields(30).Text = LookUp.Fields(1)
            LookUp.Clear = True
            txtfields(34).SetFocus
        Else
            LookUp.Clear = True
            txtfields(34).SetFocus
        End If
    End If
Case 12
    If Record_Exists("ig_bank", "Bank Not Found") = False Then Exit Sub
    Set rs1 = New Recordset
    rs1.Open "select name from ig_bank where bank_code='" & txtfields(48) & "'", DB
    If Not rs1.EOF Then
        txtfields(12).Text = rs1(0)
    Else
        LookUp.Clear = True
        LookUp.query = "select bank_code ""Code"", name ""Bank Name"" from ig_bank  "
        LookUp.Caption = "Bank Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.DefCol = "Bank Name"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(48).Text = LookUp.Fields(0)
            txtfields(12).Text = LookUp.Fields(1)
            LookUp.Clear = True
            txtfields(13).SetFocus
        Else
            LookUp.Clear = True
            txtfields(48).SetFocus
        End If
    End If
Case 8
    Set rsc = New Recordset
    rsc.Open "select PurYarnAgent from masterlen", DB, adOpenStatic
    
    PurYarnAgent = rsc(0)
    Set rs1 = New Recordset
    rs1.Open "select slname from fa_slmas where slcode='" & txtfields(Index) & "' and isnull(isactive,'')='Y'  and left(slcode,2) in (select items from dbo.split('" & PurYarnAgent & "',','))", DB
    If Not rs1.EOF Then
        txtfields(9).Text = rs1(0)
    Else
        LookUp.Clear = True
        LookUp.query = "select slcode ""Code"", slname ""Agent Name"" from fa_slmas where isnull(isactive,'')='Y'  and left(slcode,2) in (select items from dbo.split('" & PurYarnAgent & "',',')) "
        LookUp.Caption = "Agent Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.DefCol = "Bank Name"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(8).Text = LookUp.Fields(0)
            txtfields(9).Text = LookUp.Fields(1)
            LookUp.Clear = True
            txtfields(8).SetFocus
        Else
            LookUp.Clear = True
            txtfields(8).SetFocus
        End If
    End If
Case 6
    'If Record_Exists("fa_slmas", "Supplier Not Found") = False Or Trim(txtfields(6).Text) = "" Then Exit Sub
    
    Set Rs = New Recordset
    Rs.Open "select count(SLCODE) from fa_slmas where slcode ='" & txtfields(6) & "'", DB
    If Rs(0) > 0 Then
        txtfields(6).Text = txtfields(6).Text
    Else
        Set rs1 = New Recordset
        rs1.Open "Select * from masterlen", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            sup = rs1("ptypecotton") '& "%"
        Else
            sup = ""
        End If
        Buttonframe.Enabled = False
        LookUp.Clear = True
        '' Kuppuram - 27-Apr-2007
        '' SLCODE LIKE 'C%' is changed to SLCODE LIKE 'D%', as it waste sales
        ''LookUp.query = "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE 'C%' "
        LookUp.query = "select slcode,slname from FA_SLMAS WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',','))  and isnull(isactive,'N')='Y'"
        LookUp.Caption = "Supplier Listing"
        LookUp.ALIGN = "1500,3000"
        LookUp.DefCol = "slname"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            SSTab1.Tab = 0
            txtfields(6).Text = LookUp.Fields(0)
            txtfields(7).Text = LookUp.Fields(1)
            
        
            Set rs1 = New Recordset
            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(TDS_TCS_Cal_Flg,'Y') TDS_TCS_Cal_Flg,isnull(supptype,'R') supptype FROM FA_SLMAS WHERE SLCODE='" & Trim(txtfields(6).Text) & "' ", DB
            If rs1.EOF Then
                            'If RS1("GSTSTATECODE") = 0 Then
                    MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                           ' End If
            Else
            TDS_TCS_Cal_Flg = rs1("TDS_TCS_Cal_Flg")
                If rs1("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                End If
                    
            
            STCODE = rs1("GSTSTATECODE")
            If rs1("supptype") <> "U" Then
                If rs1("GSTINNO") = "" Then
                        MsgBox "PLEASE ENTER GST NO IN CUSTOMER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                End If
            
            
                   '' txtFields(26).Text = rs1("GSTSTATECODE")
                   ' 'txtFields(25).Text = rs1("GSTINNO")
                                 
                End If
             End If
            InterDivFlg = "N"
            Set Rsgst = New Recordset
            Rsgst.Open "SELECT A.GSTINNO FROM PP_DIVMAS A  WHERE A.DIVCODE='" & Divcode & "' and a.GSTINNO='" & rs1("GSTINNO") & "'", DB
            If UCase(CustID) <> "KUMARAGIRI" Then
                If Not Rsgst.EOF Then
                    InterDivFlg = "Y"
                Else
                    InterDivFlg = "N"
                End If
            End If
                
            Set rs1 = New Recordset

            rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON   A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "' and SLCODE='" & Trim(txtfields(6).Text) & "' ", DB

            If Not rs1.EOF Then
                If InterDivFlg = "N" Then
                    IGSTFLG = "Y"
                    TAXFLG = True
                Else
                   IGSTFLG = "N"
                    TAXFLG = True
                End If
            Else
                IGSTFLG = "N"
                TAXFLG = True
            End If
            
            
            LookUp.Clear = True
            txtfields(13).SetFocus
        
        Else
        Buttonframe.Enabled = True
        SSTab1.Tab = 0
        txtfields(6).SetFocus
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
        If Trim(txtfields(12).Text) <> "" Then
            Set rs1 = New Recordset
            rs1.Open "select BANK_CODE,name from ig_BANK where NAME LIKE'" & txtfields(12).Text & "%'", DB
            If Not rs1.EOF Then
                txtfields(48).Text = rs1("BANK_CODE")
                txtfields(12).Text = rs1("name")
          
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
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(Index + 1).Text = rs1(0)
            STFLAG = rs1(1)
        End If
        
        If Opt = "add" Then
             Set rs1 = New Recordset
             rs1.Open "select count(*) from ig_AREA WHERE area_code='" & txtfields(13).Text & "'", DB, adOpenStatic
             If rs1(0) > 0 Then
                Set RS2 = New Recordset
                RS2.Open "select name from ig_area where area_code= '" & txtfields(13).Text & "'", DB, adOpenStatic
                txtfields(14).Text = RS2("name")
            Else
                Buttonframe.Enabled = False
                LookUp.Clear = True
                LookUp.query = "select AREA_CODE""Area Code"",NAME""Area Name"" from ig_AREA "
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "2000,3000"
                LookUp.DefCol = "Area Name"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Buttonframe.Enabled = True
                SSTab1.Tab = 0
                txtfields(13).Text = LookUp.Fields(0)
                txtfields(14).Text = LookUp.Fields(1)
                LookUp.Clear = True
                'txtFields(50).SetFocus
                Else
                Buttonframe.Enabled = True
                LookUp.Clear = True
                SSTab1.Tab = 0
                txtfields(13).SetFocus
                End If
                
                
'''                ksldesc1.conn = connectstring
'''                listlb.Caption = "Area Listing"
'''                ksldesc1.table = "ig_AREA"
'''                ksldesc1.listfield1 = "AREA_CODE"
'''                ksldesc1.listfield2 = "NAME"
'''                Frame6.ZOrder
'''                Frame6.Visible = True
'''                ksldesc1.SetFocus

             End If
        End If
Case 31
   
Case 61
     SSTab2.Visible = True
     SSTab2.SetFocus
     grddatagrid.SetFocus
     grddatagrid.Enabled = True
     grddatagrid.Visible = True
     grddatagrid.Col = 8
Case 75
        Set RS2 = New Recordset
        If RS2.State = adStateOpen Then RS2.Close
           If UCase(CustID) = "SARANYA" Then
                RS2.Open "select delcode,cname from ig_deladd where slcode='" & txtfields(6).Text & "' and delcode = '" & Trim(txtfields(75).Text) & "'", DB, adOpenStatic
           Else
                RS2.Open "select slcode as delcode,slname as cname from ig_delmas where  slcode = '" & Trim(txtfields(72).Text) & "'", DB, adOpenStatic
           End If
        If RS2.EOF = False Then
           txtfields(72).Text = RS2("delcode")
           txtfields(71).Text = RS2("cname")
            
        Else
            stbar.Panels(2).Text = "Select Delivery Details from the List"
            LookUp.Clear = True
            If UCase(CustID) = "SARANYA" Then
                LookUp.query = "select a.DELCODE as Delivery_Code,a.CNAME as Name ,isnull(GSTSTATECODE,'0') GSTSTATECODE ,isnull(GSTINNO,'') GSTINNO from ig_deladd a where slcode='" & txtfields(6).Text & "'"
            Else
                LookUp.query = "select a.slcode as Delivery_Code,a.slname as Name ,isnull(GSTSTATECODE,'0') GSTSTATECODE ,isnull(GSTINNO,'') GSTINNO from ig_delmas a where slcode like 'D8%'"
            End If
            LookUp.DefCol = "Delivery Address"
            LookUp.ALIGN = "1500,3500"
            LookUp.Caption = "Delivery Detail Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
'                If Trim(LookUp.Fields("GSTINNO")) = "" Then
'                    MsgBox "PLEASE ENTER GST NO IN DELIVERY SETUP ", vbInformation, head
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
'                If LookUp.Fields("GSTSTATECODE") = "0" Then
'                    MsgBox "PLEASE ENTER GST STATE CODE IN DELIVERY SETUP  ", vbInformation, head
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
                    txtfields(75).Text = LookUp.Fields(0)
                    txtfields(76).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                Else
                    txtfields(75).Text = ""
                    txtfields(76).SetFocus
                    Exit Sub
                End If
        End If
End Select
End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form CottonInvoice", vbInformation, head
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
    totinvamt = val(txtfields(40).Text)
    If CHFLG Then
        totinvamt = totinvamt + val(txtfields(41).Text)
    End If
    If CESSFLG Then
        totinvamt = totinvamt + val(txtfields(42).Text)
    End If
    If DUTYFLG Then       'BED                          AED
        totinvamt = totinvamt + val(txtfields(43).Text) + val(txtfields(44).Text)
    End If
    If TAXFLG Then
        totinvamt = totinvamt + val(txtfields(45).Text)
    End If
    
    '                           Surcharge                Insurance Amount           Frieght                   Round Off
    totinvamt = totinvamt + val(txtfields(28).Text) + val(txtfields(49).Text) + val(txtfields(31).Text) + val(txtfields(39).Text) + val(txtfields(74).Text)   '+ val(txtfields(71).Text)
   On Error GoTo 0
   Exit Sub

invamtcheck_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure invamtcheck of Form CottonInvoice"

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
On Error GoTo InvCalc_Error
intervalMinutes = -1
Call Frieght_SPLITUP
Dim adopos As Integer
adopos = ADOSECONDARYRS.AbsolutePosition
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
    TCSAssValue = 0
    CGSTAMT = 0
    IGSTAMT = 0
    SGSTAMT = 0
    tcsval = 0
        Set rsrec = New Recordset
        rsrec.Open "select isnull(TCS_FLG,'N') TCS_FLG,isnull(cess_tcs,'N') cess_tcs ,isnull(pack_tcs,'N') pack_tcs,isnull(RInvTCS_Roff,0) RInvTCS_Roff,isnull(RASSVAL_ROFF,0) RASSVAL_ROFF,isnull(RInvASSVAL_ROFF,0) RInvASSVAL_ROFF  from rm_param", DB, adOpenStatic
        RInvTCS_Roff = rsrec("RInvTCS_Roff")
        RASSVAL_ROFF = rsrec("RInvASSVAL_ROFF")
        If rsrec("TCS_FLG") = "Y" Then
            BlnTcsCalc = True
         End If
         
        If rsrec("cess_tcs") = "Y" Then
            BInCESSTCS = True
         End If
        If rsrec("pack_tcs") = "Y" Then
            BInPACKTCS = True
         End If
    
''    ex = 0
    If Not ADOSECONDARYRS.BOF Then ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        Set Rs = New Recordset
        'rs.Open "select isnull(charity_rate,0) from ig_Rproduct a, ig_producttype b where a.product_type*=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
        Rs.Open "select Distinct  isnull(CharityAmt,0),isnull(aedper,0),isnull(bedper,0),isnull(cessper,0) from RM_Lot a left join  RM_Issb b on a.LotNo=b.LotNo and a.lotdt=b.lotdt and a.divcode=b.divcode and a.varcode=b.varcode and a.lottype=b.lottype where  a.divcode='" & Divcode & "' and a.varcode='" & grddatagrid.Columns("Varcode").Text & "' and a.LotNo='" & grddatagrid.Columns(5).Text & "' and a.lotdt='" & Format(grddatagrid.Columns("LotDt").Text, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' ", DB   ''a.lotyear='" & Format(yfdate, "yyyy") & "'
                'netr=exr+sc+st+aed+bed+cess+ch
'Ass value

        grddatagrid.Columns(12) = KSLRound((val(grddatagrid.Columns(9)) * val(grddatagrid.Columns(10))), val(RASSVAL_ROFF))
        Assval = Assval + grddatagrid.Columns(12) + val(txtfields(31).Text)
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
            grddatagrid.Columns(23) = KSLRound(val(grddatagrid.Columns(12)) * (txtfields(15).Text / 100), 0)
            cess = cess + val(grddatagrid.Columns(23))
            NettRExR = NettRExR + (NettRExR * ((txtfields(15).Text / 100)))
        Else
            grddatagrid.Columns(23) = 0
            cess = cess + val(grddatagrid.Columns(23))
            NettRExR = NettRExR + (NettRExR * ((txtfields(15).Text / 100)))
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
            txtfields(20).Text = Round(Bed, 0)
            txtfields(43).Text = Round(Bed, 0)
            '***************

            grddatagrid.Columns(21) = KSLRound((grddatagrid.Columns(20)) * (val(grddatagrid.Columns(17)) / 100), 0)
            Aed = Aed + val(grddatagrid.Columns(21))
            NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(17)) / 100)
            
            '*****************
             txtfields(22).Text = Round(Aed, 0)
             txtfields(44).Text = Round(Aed, 0)
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
          Dim frieght As Double, tSurcharge As Double, cessamt As Double
          
          Dim cflg, fflg, surflg As String
'            grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + Val(grddatagrid.Columns(12)) + Val(grddatagrid.Columns(22)) + Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            'grddatagrid.Columns(18) = KSLRound((Val(grddatagrid.Columns(11)) + (KSLRound(Val(Assval) * (txtfields(15).Text / 100), 0))) * (Val(Round(Val(grddatagrid.Columns(14)), 0)) / 100), 0)
            Set rstParameter = New Recordset
            rstParameter.Open "Select isnull(CessCalCulateTax,'N') CessCalCulateTax,isnull(FrieghtCalCulateTax,'N') FrieghtCalCulateTax,isnull(SURCalCulateTax,'N') SURCalCulateTax,isnull(insCalCulateTax,'N') insCalCulateTax  From Rm_param", DB, adOpenStatic
            If rstParameter.EOF = False Then
                cflg = rstParameter(0)
                fflg = rstParameter(1)
                surflg = rstParameter(2)
            End If
            
            If cflg = "Y" Then
            tSurcharge = val(grddatagrid.Columns(22))
            End If
            If fflg = "Y" Then
            frieght = val(txtfields(31).Text) / ADOSECONDARYRS.RecordCount
            End If
            If cflg = "Y" Then
            cessamt = val(grddatagrid.Columns(23))
            End If
            
        If InterDivFlg = "N" Then
        
            If IGSTFLG = "Y" Then
        
                'grddatagrid.Columns("IGST %").Text = val(grddatagrid.Columns(15).Text)
                grddatagrid.Columns("CGST %").Text = val(grddatagrid.Columns(15).Text) / 2
                grddatagrid.Columns("SGST %").Text = val(grddatagrid.Columns(15).Text) / 2
                grddatagrid.Columns("IGST %").Text = 0
                grddatagrid.Columns("CGST Amt").Text = Format(Abs(Round(((val(grddatagrid.Columns(12)) + cessamt + frieght + tSurcharge) * val(val(grddatagrid.Columns("CGST %").Text)) / 100), 0)), "#.00")
                grddatagrid.Columns("SGST Amt").Text = Format(Abs(Round(((val(grddatagrid.Columns(12)) + cessamt + frieght + tSurcharge) * val(val(grddatagrid.Columns("SGST %").Text)) / 100), 0)), "#.00")
                grddatagrid.Columns("IGST Amt").Text = 0
                CGSTAMT = CGSTAMT + val(grddatagrid.Columns("CGST Amt").Text)
                SGSTAMT = SGSTAMT + val(grddatagrid.Columns("SGST Amt").Text)
                
             'grddatagrid.Columns(12).Text = Format(Abs(INFG(val(grddatagrid.Columns("SGST Amt").Text), val(rsPara("TAX_roff")))), "#.00")
            Else
                grddatagrid.Columns("SGST Amt").Text = 0
                grddatagrid.Columns("CGST Amt").Text = 0
                grddatagrid.Columns("CGST %").Text = 0
                grddatagrid.Columns("SGST %").Text = 0
                grddatagrid.Columns("IGST %").Text = val(grddatagrid.Columns(15).Text)
                grddatagrid.Columns("IGST Amt").Text = Format(Abs(Round(((val(grddatagrid.Columns(12)) + cessamt + frieght + tSurcharge) * val(val(grddatagrid.Columns("IGST %").Text)) / 100), 0)), "#.00")
                IGSTAMT = IGSTAMT + val(grddatagrid.Columns("IGST Amt").Text)
              'Format(Abs(INFG(TaxAmt, Val(RSPARA("TAX_roff")))), "#.00")
'                grddatagrid.Columns("CGST %").Text = val(grddatagrid.Columns(15)) / 2
'                grddatagrid.Columns("SGST %").Text = val(grddatagrid.Columns(15)) / 2

                'grddatagrid.Columns(12).Text = Format(Abs(INFG(val(grddatagrid.Columns("SGST Amt").Text) + val(grddatagrid.Columns("CGST Amt").Text), 0)), "#.00")
            End If
        Else
                grddatagrid.Columns("CGST Amt").Text = "0"
                grddatagrid.Columns("SGST Amt").Text = "0"
                grddatagrid.Columns("IGST Amt").Text = "0"
                CGSTAMT = 0
                SGSTAMT = 0
                IGSTAMT = 0
                Set rsparam = New Recordset
                rsparam.Open "SELECT ISNULL(INTERDIVGST,'G')INTERDIVGST FROM RM_PARAM ", DB, adOpenStatic
                If Not rsparam.EOF Then
                    grddatagrid.Columns("Tax Code").Text = rsparam("INTERDIVGST")
                    grddatagrid.Columns(15).Text = "0.00"
                    
                Else
                    grddatagrid.Columns("Tax Code").Text = "G"
                    grddatagrid.Columns(15).Text = "0.00"
                End If
        End If
                    tax = tax + Format(Abs(Round(val(grddatagrid.Columns("IGST Amt").Text) + val(grddatagrid.Columns("SGST Amt").Text) + val(grddatagrid.Columns("CGST Amt").Text), 0)), "#.00")
            
'            If rstParameter.EOF = False Then '''sasi 25.8.17
'                If rstParameter!CessCalCulateTax = "Y" Then
'                     grddatagrid.Columns(19) = Round((val(grddatagrid.Columns(12)) + val(grddatagrid.Columns(23))) * (val(grddatagrid.Columns(15)) / 100), 0)
'                     tax = tax + Round(grddatagrid.Columns(19), 0)
'
'                Else
                   ' grdDataGrid.Columns(19) = Round((val(grdDataGrid.Columns(12)) + cessamt + frieght + Surcharge) * (val(grdDataGrid.Columns(15)) / 100), 0)
                   
                   
                   grddatagrid.Columns(19).Text = Format(Abs(Round(val(grddatagrid.Columns("IGST Amt").Text) + val(grddatagrid.Columns("SGST Amt").Text) + val(grddatagrid.Columns("CGST Amt").Text), 0)), "#.00")
                 '   tax = Round(grdDataGrid.Columns(19), 0)

'                End If
'
'            End If
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
       If tcsflg = True And UCase(TDS_TCS_Cal_Flg) = "N" Then
            Packing_Charges1 = 0
            Taxamt = 0
            If BInPACKTCS = True Then
                Packing_Charges1 = val(grddatagrid.Columns("Freight_Amt").Text)
            End If
            cessamt = 0
            If BInCESSTCS = True Then
               cessamt = val(grddatagrid.Columns("Cess_Amt").Text)
            End If
            If BlnTcsCalc = True Then
               Taxamt = Round(val(grddatagrid.Columns("IGST Amt").Text) + val(grddatagrid.Columns("SGST Amt").Text) + val(grddatagrid.Columns("CGST Amt").Text), 0)
            End If
            
             Dim adosPOS As Integer
            Dim totalInvAmt As Double
            totalInvAmt = 0
            
            adosPOS = ADOSECONDARYRS.AbsolutePosition
            ADOSECONDARYRS.MoveFirst
            Do While Not ADOSECONDARYRS.EOF
                totalInvAmt = val(totalInvAmt) + val(val(val(grddatagrid.Columns(12)) + val(cessamt) + val(Packing_Charges1) + val(tSurcharge) + val(Taxamt)))
                ADOSECONDARYRS.MoveNext
            Loop
            
            
             ADOSECONDARYRS.AbsolutePosition = adosPOS
            Dim totalsaleAmt As Double
            totalsaleAmt = 0
            Dim PANNO As String
            
            Set Rs222 = New Recordset
            Rs222.Open "select isnull(pan,'') pan from fa_slmas where slcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If Not Rs222.EOF Then
            PANNO = Rs222(0)
            
            End If
            Set tcscheck = New Recordset
            tcscheck.Open "exec KSP_TCSAmountCheck '" & Divcode & "','" & Format(yfdate, "yyyy-mm-dd") & "' ,'" & Format(yldate, "yyyy-mm-dd") & "' ,'" & Trim(PANNO) & "' ,'" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            If Not tcscheck.EOF Then
                    totalsaleAmt = IIf(IsNull(tcscheck(0)), 0, tcscheck(0))
            End If
        
         Set rs1 = New Recordset
        rs1.Open "select isnull(INVTCS_GrossAmt,0) TCS_GrossAmt,isnull(invTCSPER_WPan,0.00) TCSPER_WPan, isnull(invTCSPER_WOPan,0.00) TCSPER_WOPan from rm_param b ", DB
        If (val(totalsaleAmt) + val(totalInvAmt)) >= rs1(0) Then
          Set Rs222 = New Recordset
            Rs222.Open "select isnull(pan,'') pan from fa_slmas where slcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If Not Rs222.EOF Then
                If Len(Rs222("pan")) = 10 Then
                    txtfields(73).Text = Format(rs1(1), "#0.000")
                Else
                   txtfields(73).Text = Format(rs1(2), "#0.000")
                 
                End If
                

          TCSAssValue = TCSAssValue + val(val(grddatagrid.Columns(12) + cessamt + Packing_Charges1 + tSurcharge + val(Taxamt)))
           grddatagrid.Columns("tcs_per").Text = Format(txtfields(73).Text, "#0.000")
           grddatagrid.Columns("TCS_AMT").Text = Format(KSLRound(val(val(grddatagrid.Columns(12) + cessamt + Packing_Charges1 + tSurcharge + Taxamt)) * (val(txtfields(73).Text) / 100), val(RInvTCS_Roff)), "#0.00")
           tcsval = val(tcsval) + (val(grddatagrid.Columns("TCS_AMT").Text))
           txtfields(74).Text = Format(Round(tcsval, 0), "#0.00")
       
                
            End If
    End If

       Else
       
        grddatagrid.Columns("tcs_amt").Text = 0
        grddatagrid.Columns("tcs_per").Text = 0
       
       
       End If
        
        
        
        
            SurCharge = KSLRound((tax * val(grddatagrid.Columns(18))) / 100, 2)
        On Error Resume Next
        grddatagrid.Columns(11).Text = Round(NettRExR + (val(txtfields(31).Text) / val(grddatagrid.Columns(9).Text)), 4)
        ADOSECONDARYRS.MoveNext
    Loop
        txtfields(40).Text = Format(Assval2, "#.00")
        txtfields(41).Text = Format(Charity, "#0.00")
        txtfields(18).Text = Format(Charity, "#0.00")
        If CESSFLG Then
            cess_amt = KSLRound(val(Assval2 + Charity) * (txtfields(15).Text / 100), 0)
            cess = cess_amt
        Else
            cess = 0
        End If
        txtfields(42).Text = Format(cess, "#0.00")
        txtfields(16).Text = Format(cess, "#0.00")
        txtfields(43).Text = Format(Round(Bed, 0), "#0.00")
        txtfields(20).Text = Format(Round(Bed, 0), "#0.00")
        txtfields(44).Text = Format(Round(Aed, 0), "#0.00")
        txtfields(22).Text = Format(Round(Aed, 0), "#0.00")
           txtfields(45).Text = Format(tax, "#0.00")
        txtfields(26).Text = Format(tax, "#0.00")
        
            
        txtfields(110).Text = Format(Abs(Round(CGSTAMT, 0)), "#.00")
        txtfields(109).Text = Format(Abs(Round(SGSTAMT, 0)), "#.00")
        txtfields(108).Text = Format(Abs(Round(IGSTAMT, 0)), "#.00")
        txtfields(93).Text = Format(Abs(Round(TCSAssValue, 0)), "#0.00")
        txtfields(74).Text = Format(Abs(Round(tcsval, 0)), "#0.00")
            
        txtfields(28).Text = Format(SurCharge, "#0.00")
        TotAmt = Assval2 + Charity + cess + Round(Bed, 0) + Round(Aed, 0) + tax + val(SurCharge) + val(txtfields(74).Text)
        Insur = 0
        Insur = KSLRound(TotAmt * val(txtfields(50)) / 100, 2)
        txtfields(49).Text = Format(Insur, "#0.00")
        txtfields(46) = Format(Insur + SurCharge + val(txtfields(31).Text) + val(txtfields(74).Text), "#0.00")

        invamt = Format(Insur + TotAmt + val(txtfields(31).Text), "#0.00")

'-----------------------------------Round-----------------------------

            If InStr(CStr(invamt), ".") > 0 Then
            tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
            If Right(tmprnd, 1) >= 5 Then
            invamt = Format(invamt, "#########0.00")
            End If
            Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
            If Round1 <= 0.5 Then
                txtfields(39).Text = Format("-" & Round1, "#0.00")
                txtfields(47) = Format(invamt - Round1, "#0.00")
            Else
                txtfields(39).Text = Format(1 - Round1, "#0.00")
                txtfields(47).Text = Format(invamt + (1 - Round1), "#0.00")
            End If
            End If
End If
intervalMinutes = -1
If adopos > 0 Then
 ADOSECONDARYRS.AbsolutePosition = adopos
 End If
Exit Sub
InvCalc_Error:
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
RRs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
KSLRound = RRs(0)

Exit Function
KSLRound_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KSLRound of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Function

Private Sub AddUpdate()
'ADDITION TIME UPDATATIONS
On Error GoTo UPDATEERR
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtfields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs+" & val(grddatagrid.Columns(9)) & ",exp_value=exp_value+" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs+" & val(grddatagrid.Columns(9)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        
         Dim SPS1 As Double
         Dim SPS As New Recordset
         Set SPS = New Recordset
         SPS.Open "SELECT PACK_WT FROM ig_product WHERE PRODUCT_CODE='" & grddatagrid.Columns(5).Text & "' and DivCode ='" & Divcode & "'", DB, adOpenStatic
         SPS1 = Round(val(grddatagrid.Columns(9).value) - val((grddatagrid.Columns(6).Text) * SPS("PACK_WT")), 2)
        'db.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grdDataGrid.Columns(7)) & ",home_value=home_value+" & grdDataGrid.Columns(11) & " where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grdDataGrid.Columns(5).Text & "')"
        
        If SPS1 > 0 Then
            'db.Execute "update ig_rg1trn set LOOSE_KGS=LOOSE_KGS-" & SPS1 & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        End If
        
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs+" & val(grddatagrid.Columns(9)) & ",home_value=home_value+" & grddatagrid.Columns(12) + val(txtfields(46).Text) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
        
        
        
        
    End If
        
        DB.Execute "update ig_rg1trn set packs=packs+" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs+" & val(grddatagrid.Columns(9)) & ",bed_amt=bed_amt+" & val(grddatagrid.Columns(20)) & ",aed_amt=aed_amt+" & val(grddatagrid.Columns(21)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtfields(3).Text) Or Trim(txtfields(3).Text) = "", "", "," + CStr(val(Mid$(txtfields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(val(grddatagrid.Columns(20)) + val(grddatagrid.Columns(21)) > 0, val(grddatagrid.Columns(12)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        'Easwar db.Execute "update ig_rrg1trn set bed_amt=bed_amt+" & Val(grddatagrid.Columns(19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(19)) + Val(grddatagrid.Columns(20)) > 0, Val(grddatagrid.Columns(11)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
        
'-------------------------------CDSTOCK
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT COUNT(*) FROM ig_CDSTOCK WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))), DB
        If rs1(0) = 0 Then
            Set RS2 = New Recordset
            RS2.Open "SELECT OPEN_KGS+TRF_KGS-SOLD_KGS FROM ig_CDSTOCK X WHERE X.DIVCODE='" & Divcode & "' AND X.CUST_CODE='" & txtfields(6) & "' AND X.PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND X.YEARMON=(SELECT MAX(Y.YEARMON) FROM ig_CDSTOCK Y WHERE  Y.DIVCODE=X.DIVCODE AND Y.CUST_CODE=X.CUST_CODE AND Y.PRODUCT_CODE=X.PRODUCT_CODE)", DB
            If Not RS2.EOF Then
                DB.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtfields(6) & "','" & grddatagrid.Columns(5) & "'," & val(RS2(0)) & "," & val(grddatagrid.Columns(9)) & ",0)"
            Else
                DB.Execute "INSERT INTO ig_CDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtfields(6) & "','" & grddatagrid.Columns(5) & "',0," & val(grddatagrid.Columns(9)) & ",0)"
            End If
        Else
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS+" & val(grddatagrid.Columns(9)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))

            
        End If
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", DB
   Rs.MoveFirst
   Do While Not Rs.EOF
        For I = Rs(0) To Rs(1)
            DB.Execute "update IG_RPACKNOS set INVOICED='Y' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & " and pack_no=" & I, a
        Next
        Rs.MoveNext
   Loop
   
'   Do While PackNo <= rs(1)
'    db.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & rs(2) & "' and pack_year=" & rs(3) & "and pack_no=" & PackNo
'    PackNo = PackNo + 1
'   Loop
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED+" & grddatagrid.Columns(9) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   DB.Execute "update ig_product set kg_rate=" & val(grddatagrid.Columns(10)) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   ADOSECONDARYRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type='" & txtfields(0) & "',inv_no='" & txtfields(1) & "' where divcode='" & Divcode & "' and bo_type='" & txtfields(4) & "' and bo_no='" & txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
   If Trim(txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(32) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',Null," & val(txtfields(51)) & "," & val(txtfields(52)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(51)) & ",aed_dr=aed_dr+" & val(txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtfields(32) & "'"
   End If
   On Error GoTo sp1
   If Trim(txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(53) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',null," & val(txtfields(55)) & "," & val(txtfields(56)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(55)) & ",aed_dr=aed_dr+" & val(txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtfields(53) & "'"
   End If
   If Trim(txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(57) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',null," & val(txtfields(59)) & "," & val(txtfields(60)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(59)) & ",aed_dr=aed_dr+" & val(txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtfields(57) & "'"
   End If
 End If
 Exit Sub
sp1:
    MsgBox "Please check the Invoice type you have selected", vbInformation, head
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
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtfields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs-" & val(grddatagrid.Columns(9)) & ",exp_value=exp_value-" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs-" & val(grddatagrid.Columns(9)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    Else
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs-" & val(grddatagrid.Columns(9)) & ",home_value=home_value-" & grddatagrid.Columns(12) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
    End If
        DB.Execute "update ig_rg1trn set packs=packs-" & grddatagrid.Columns(6) & ",pack_kgs=pack_kgs-" & grddatagrid.Columns(9) & ",bed_amt=bed_amt-" & val(grddatagrid.Columns(20)) & ",aed_amt=aed_amt-" & val(grddatagrid.Columns(21)) & ",invoices=substring(invoices,1,len(invoices)),duty_sales=duty_sales-" & IIf(val(grddatagrid.Columns(20)) + val(grddatagrid.Columns(21)) > 0, val(grddatagrid.Columns(12)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(5).Text & "')"
'-------------------------------CDSTOCK
    
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS-" & val(grddatagrid.Columns(9)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "' and divcode = '" & Divcode & "'", DB
   If Rs.RecordCount > 0 Then
   packno = Rs(0)
   Do While packno <= Rs(1)
    DB.Execute "update IG_RPACKNOS set INVOICED='N' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & "and pack_no=" & packno
    packno = packno + 1
   Loop
   End If
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(9) & " where CONT_TYPE='" & grddatagrid.Columns(3) & "' AND CONT_NO='" & grddatagrid.Columns(4) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(5) & "'"
   
'--------------------------------Product
   DB.Execute "update ig_product set kg_rate=" & grddatagrid.Columns(10) & " where Product_code='" & grddatagrid.Columns(5) & "'"
   ADOSECONDARYRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type=null,inv_no=null where divcode='" & Divcode & "' and bo_type='" & txtfields(4) & "' and bo_no='" & txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
   If Trim(txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "' and tran_type='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(32) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtfields(51)) & ",aed_dr=aed_dr-" & val(txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtfields(32) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(53) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(55)) & ",aed_dr=aed_der+" & val(txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtfields(53) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(57) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtfields(59)) & ",aed_dr=aed_dr-" & val(txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtfields(57) & "'"
        Else
            GoTo DELUPDATEERR
        End If
            
   End If


 End If
 Exit Sub
DELUPDATEERR:
MsgBox "This Record Cannot be Deleted" & Err.Description, vbInformation, head
DB.RollbackTrans
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
intervalMinutes = -1
ExR = 0
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
If (val(grddatagrid.Columns(9)) = 0 Or Trim(grddatagrid.Columns(9)) = "") And Rate > 0 Then
    NettR = Rate 'Val(grdDataGrid.Columns(10))
    STPer = val(grddatagrid.Columns(15)) / 100
    SCPer = val(grddatagrid.Columns(18)) / 100
    BEDPer = val(grddatagrid.Columns(16)) / 100
    AEDPer = val(grddatagrid.Columns(17)) / 100
    CESSPer = val(txtfields(16).Text) / 100
    Set Rs = New Recordset
    Rs.Open "select isnull(charity_rate,0) from ig_product a, ig_producttype b where a.product_type=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(5).Text & "'", DB
    If Not Rs.EOF Then CHARPer = Rs(0)
                        '******************calculation******************
'*************** original comment by prakash
    ExR = NettR
    'for rasi changed by senthil
    
    ExR = Round((NettR / (((1 + STPer) + (STPer * SCPer)) * ((1 + BEDPer) + (BEDPer * AEDPer) + CESSPer))) - val(txtfields(31).Text) / val(grddatagrid.Columns(9).Text), 3)
    
    
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
ADOSECONDARYRS.MoveNext
Loop

Exit Sub
NETTOEX_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure NETTOEX of Form CottonInvoice", vbInformation, head
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

For I = 61 To 65
    txtfields(I).Locked = False
Next
For I = 34 To 38
    txtfields(I).Locked = False
Next
txtfields(29).Locked = False
txtfields(70).Locked = False

Exit Sub
ModLock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ModLock of Form CottonInvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub Inv_PrePrintFormFABNEW(U As String, v As String, W As String, rh As String, ln As String, c As Integer)
On Error Resume Next
Exit Sub
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
Cnn.CursorLocation = adUseClient
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
         " from ig_invhd a fa_slmas b,ig_area c,ig_area d ,ig_bohd e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code and a.inv_no*=e.inv_no and a.inv_type*=e.inv_type and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", Cnn, adOpenStatic
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
Set rptv = New Report.ReportView
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
   rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle,b.pack_type from ig_invdt a,ig_product b,ig_bodt d where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "'", Cnn, adOpenStatic, adLockBatchOptimistic
           
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
       rs3.Open "select distinct a.product_code,b.description,a.packs,a.nett_kgs,a.value as value,a.rate_ex,d.lot_code,b.pack_type,d.case_rate,a.invsno from ig_invdt a,ig_product b,ig_bodt d,IG_BOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and A.inv_no between '" & v & "' and '" & W & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code AND A.NETT_KGS=D.NETT_KGS ORDER BY A.INVSNO", Cnn, adOpenStatic
      Do While Not rs3.EOF
         Rate = val(rs3!RAte_ex) '* Val(cone1)
         SNO = SNO + 1
         Print #a, Chr(18)
         Print #a, Space(1) & Chr(15) & Padr(SNO, 3, " ") & Space(3) & Padr(rs3("description"), 48, " ") & Chr(18) & Space(5) & Padl(rs3("packs"), 4, " ") & Space(1) & Padl(INF(rs3("nett_kgs"), 3), 11, " ") & Space(4) & Padl(INF((rs3("Value") / rs3("packs")), 2), 9, " ") & Space(4) & Padl(INF(rs3("value"), 2), 12, " ") & Space(6) & Padl(INF(rs3("value"), 2), 12, " ")
         'Print #a, Space(1) & Chr(15) & Padr(sno, 3, " ") & Space(3) & Padr(rs3("description"), 48, " ") & Space(5) & Padl(rs3("packs"), 5, " ") & Space(9) & Padl(INF(rs3("nett_kgs"), 2), 8, " ") & Space(4) & Padl(INF((rs3("Value") / rs3("packs")), 2), 12, " ") & Space(13) & Padl(INF(rs3("value"), 2), 12, " ") & Chr(18) & Space(15) & Padl(INF(rs3("value"), 2), 12, " ")
         
         I = 48
         Set UOMRS = New Recordset
         UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
         UOMRS.MoveFirst
            
            ' ** Modified by B.V.Srinivasan on 16-04-2005 **
         UNT = UOMRS("description")
         If rs5.State = adStateOpen Then rs5.Close
            Set rs5 = New Recordset
            rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code from ig_invdt a,ig_product b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "'" & _
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
            For I = t1 To 7
                Print #a,
            Next I
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
        Do While I <= 2
            Print #a,
            I = I + 1
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
             tot3 = tot1 + Rs!BED_AMT + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
             tot1 = tot1 + Rs!BED_AMT + Rs!aed_amt + Rs!cess_amt
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
             
             aa = "": B = 0:
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
                    For j = 1 To 8
                        If Mid(aa, j, 1) = " " Then
                            Exit For
                        End If
                    Next j
                    B = 40 - 8 + (j - 1)
                    Print #a, Space(6) & Padr(Mid(X, 1, B), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, B + 1, Len(X)), 40, " ") & Space(43) & Padl(INF(Rs("total_amt"), 2), 12, " ")
                End If
             ElseIf Len(X) > 0 Then
                    Print #a,
                    Print #a, Space(6) & Padr(Mid(X, 1, Len(X)), 40, " ") & Space(43) & Padl(INF(Rs("total_amt"), 2), 12, " ")
             End If
             
             Print #a,
             Print #a,
             Print #a,
             
             ' *** Total AED & BED amt in Words ***
             X = IIf(Rs!BED_AMT + Rs!aed_amt = 0, "-- Nil --", Replace(Num_To_Word(Round(Rs!BED_AMT + Rs!aed_amt, 0)), "  ", " "))
             X = Replace(X, "RUPEES ", "")
             If Len(X) > 40 Then
                 If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
                    Print #a, Space(6) & Padr(Mid(X, 1, 40), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, 41, Len(X)), 40, " ")
                Else
                    aa = Right(X, 8)
                    For j = 1 To 8
                        If Mid(aa, j, 1) = " " Then
                            Exit For
                        End If
                    Next j
                    B = 40 - 8 + (j - 1)
                    'Print #a, Space(6) & Padr(Mid(x, 1, B), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                    Print #a, Space(6) & Padr(Mid(X, 1, B), 40, " ")
                    Print #a, Space(6) & Padr(Mid(X, B + 1, Len(X)), 40, " ")
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
er1:
    If Err.Number = 3021 Then
        MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
    End Sub

Public Sub Inv_PrePrintFormNEW(U As String, v As String, W As String, rh As String, ln As String, c As Integer)
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
Cnn.CursorLocation = adUseClient
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
Dim K As Integer
Dim SPack   As String
Dim EPack   As String
Dim cnt     As Double
Dim Ct      As Double
Dim Rate As Double, value As Double, total_amt As Double


per = Right(Trim(U), 2)
Set RS2 = New Recordset
             
RS2.Open "select Distinct a.inv_no,a.cr_days,a.pay_mode,a.cess_amt,0 as educess_amt,a.pla_bed,a.pla_aed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.Areaname,'') as  city, " & _
        "a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,a.vehicle_no,isnull(C.AREANAME,' ') despto,'' as ordrefno,'' as ordredate,d.AREAname as Name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY ,B.rc_no,A.PRE_TIME,A.REM_TIME,A.DELIVERY_DT,A.INS_AMT,'' as orderno,'' as orderdate  " & _
        " from RM_Cinvhd a,fa_slmas b,RM_area c,RM_area d, RM_Issh e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.areacode and a.despatch_to *=c.areacode and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", Cnn, adOpenStatic
    
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
Set rptv = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\PPINV.TXT" For Output As #a
 Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
pg1 = 1
va = 1
K = 1
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
    If K <> 1 Then
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

    rs3.Open "select distinct a.product_code,'' as description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(a.rate_ex) as rate_ex,b.LotType as pack_type,Rate_Nett as case_rate ,d.IssKgs as packchrg_wt,B.LotTYPE  from RM_Cinvdt a,RM_Lot b,RM_Issb d,RM_IssH E where D.DocNO=E.DocNO AND D.IssTYPE=E.IssTYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.CatCd and a.inv_no='" & RS2("inv_no") & "' and a.Cont_type=E.Isstype " & _
            "and a.product_code=d.CatCd group by a.product_code,b.Lottype,d.IssKgs,Rate_Nett,B.LOTTYPE ORDER BY A.product_code", Cnn, adOpenStatic
        
    Set rsb = New Recordset
    rsb.Open "select distinct a.product_code,'' as description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(*) as rate_ex,b.LotType as pack_type,sum(a.Rate_Nett ) as case_rate,a.invsno from RM_Cinvdt a,RM_Lot b,RM_Issb d,RM_Issh E where D.DocNO=E.DocNO AND D.IssTYPE=E.IssTYPE AND " & _
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
        I = 48
        Set UOMRS = New Recordset
        UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
        UOMRS.MoveFirst
        
        Set COMMODITY = New Recordset
        COMMODITY.Open "SELECT DESCRIPTION FROM IG_PRODUCTTYPE WHERE PRODUCT_TYPE='" & rs3("PRODUCT_TYPE") & "' ", Cnn, adOpenStatic
        COMMODITY.MoveFirst

        UNT = UOMRS("description")
        Set rs5 = New Recordset
        rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_invdt a,ig_product b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
                " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and " & _
                " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
                " and a.inv_no='" & RS2("inv_no") & "' and d.packchrg_wt=" & rs3("packchrg_wt") & " ", Cnn, adOpenStatic, adLockBatchOptimistic

        pack_no = " "
             
        tot1 = tot1 + value
        rs3.MoveNext
        ci = ci + 1
        rsb.MoveNext
    Loop
        
    For I = 1 To 5 - rs3.RecordCount
      Print #a,
    Next I
      
    
    
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
        Set rs6 = New Recordset
        rs6.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,isnull(a.bo_no,'') as bo_no from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and a.bo_no='" & RS2("bo_no") & "' and INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", Cnn, adOpenStatic
        
        Set rs5 = New Recordset
        rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_packnos a,ig_bodt b,IG_BOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and c.INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "' and b.bo_no='" & RS2("bo_no") & "' order by b.lot_code", Cnn, adOpenStatic
        
        'pack_no = " "
        rs5.MoveFirst
        lot_Des = ""
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
    tot3 = tot1 + Rs!BED_AMT + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
    tot1 = tot1 + Rs!BED_AMT + Rs!aed_amt + Rs!cess_amt + Rs!Charity
    totd = Rs!BED_AMT + Rs!aed_amt + Rs!cess_amt
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
    aa = "": B = 0:
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
    K = K + 1
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
er1:
    If Err.Number = 3021 Then
        MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
Exit Sub
Inv_PrePrintFormNEW_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Inv_PrePrintFormNEW of Form CottonInvoice", vbInformation, head

End Sub

Private Sub SaveTransLog()

ADOSECONDARYRS.MoveFirst
 Do While Not ADOSECONDARYRS.EOF

       Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,dutyValue,dutyWt,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,MRNValue,BILLValue,DBCR,dutyWt,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "RMI Sales"
            TrnLog("Trans_Mod") = Opt
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
'            TrnLog("plcode") = Trim(txtfields(120).Text)
'            TrnLog("Line_No") = Trim(txtfields(121).Text)
'            TrnLog("arrno") = Trim(txtfields(96).Text)
'            TrnLog("arrdt") = Format(MaskEdBox1(4).Text, "YYYY-MM-DD")

            TrnLog("slcode") = txtfields(6).Text
            TrnLog("purtype") = txtfields(0).Text
     
            TrnLog("areacode") = IIf(Trim(txtfields(13).Text) = "", Null, txtfields(13).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(8).Text) = "", Null, txtfields(8).Text)
'                Set Rs = New Recordset
'
'           Rs.Open "select Distinct a.varcode from RM_Lot a left join  RM_Issb b on a.LotNo=b.LotNo and a.lotdt=b.lotdt and a.divcode=b.divcode and a.varcode=b.varcode where  a.divcode='" & Divcode & "' and a.LotNo='" & grdDataGrid.Columns(5).Text & "' and a.lotdt='" & Format(grdDataGrid.Columns("LotDt").Text, "yyyy-mm-dd") & "'", DB
'           If Not Rs.EOF Then
'           trnlog("varcode") = Rs("varcode")
'           End If
            If Opt = "add" Then
            TrnLog("lotdt") = Format(grddatagrid.Columns("LotDt").Text, "yyyy-mm-dd")
            End If
            TrnLog("lotno") = val(grddatagrid.Columns(5).Text)
            
            TrnLog("docno") = val(txtfields(1).Text)
       
            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            
           
            TrnLog("billno") = txtfields(5).Text
            
            If MaskEdBox1(4).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
            
       

            TrnLog("Frg_Amt") = val(txtfields(31).Text)
            TrnLog("ins_Amt") = val(txtfields(49).Text)
            TrnLog("Oth_Amt") = val(txtfields(46).Text)
            
            TrnLog("billvalue") = val(txtfields(47).Text)
            TrnLog("MRNValue") = val(txtfields(47).Text)
       

            TrnLog("netwt") = val(grddatagrid.Columns(9))
            
            TrnLog("AssAmount") = val(txtfields(40).Text)
     
            TrnLog("ratekg") = val(grddatagrid.Columns(10))
           
       
            TrnLog("cGSTper") = val(grddatagrid.Columns("CGST %").Text)
            TrnLog("cGSTamt") = grddatagrid.Columns("CGST Amt").Text
            TrnLog("SGSTper") = val(grddatagrid.Columns("SGST %").Text)
            TrnLog("SGSTamt") = grddatagrid.Columns("CGST Amt").Text
            TrnLog("IGSTper") = val(grddatagrid.Columns("IGST %").Text)
            TrnLog("IGSTamt") = grddatagrid.Columns("CGST Amt").Text
    
  

            TrnLog.UpdateBatch adAffectAllChapters
ADOSECONDARYRS.MoveNext
Loop
End Sub

Public Sub Frieght_SPLITUP()
Dim totalKgs As Double
Dim fwd_AMT As Double
If ADOSECONDARYRS.RecordCount > 0 Then
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        totalKgs = totalKgs + ADOSECONDARYRS("INV Kgs")
        ADOSECONDARYRS.MoveNext
    Loop
    totalKgs = Format(totalKgs, "#####0.00")
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        fwd_AMT = Round((val(txtfields(31).Text) / totalKgs) * val(ADOSECONDARYRS("INV Kgs")), 2)
        grddatagrid.Columns("Freight_Amt").Text = val(fwd_AMT)
        ADOSECONDARYRS.MoveNext
    Loop
    
End If
End Sub
Private Function getTCRecords(SINVTYPE As String) As String
    
    getTCRecords = ""
    strQty = "select ISNULL(tc_code,0) as TC from IG_INVTYPE where DIVCODE='" & Divcode & "' and INV_TYPE='" & SINVTYPE & "'"
    Set rstgetTC = New ADODB.Recordset
    rstgetTC.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstgetTC.EOF Then
        getTCRecords = rstgetTC("TC")
    Else
        getTCRecords = ""
    End If
    
End Function


Private Function getFAtransferFlg(SINVTYPE As String) As String
    
   On Error GoTo getFAtransferFlg_Error
'''========================================================

    getFAtransferFlg = ""
    strQty = "select isnull(FA_TRANSFER,'N') as FA_TRANSFER from IG_INVTYPE where DIVCODE='" & Divcode & "' and INV_TYPE='" & SINVTYPE & "'"
    Set rstgetTC = New ADODB.Recordset
    rstgetTC.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstgetTC.EOF Then
        getFAtransferFlg = rstgetTC("FA_TRANSFER")
    Else
        getFAtransferFlg = "N"
    End If


'''========================================================
   On Error GoTo 0
   Exit Function

getFAtransferFlg_Error:
    getFAtransferFlg = "N"
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure getFAtransferFlg of Form Invoice"
    
End Function

Public Sub CleanRecordsetFields(Rs As ADODB.Recordset)
    Dim f As ADODB.Field
    Dim r As Long
    
    For r = 1 To Rs.RecordCount
        Rs.AbsolutePosition = r
        For Each f In Rs.Fields
            Select Case f.Type
                Case adDBDate, adDate, adDBTime, adDBTimeStamp
                    ' If blank or placeholder, then make it NULL
                    If Trim(f.value & "") = "" Or f.value = "____/__/__" Then
                        f.value = Null
                    Else
                        ' Convert to actual VB Date
                        f.value = CDate(f.value)
                    End If
                Case adNumeric, adInteger, adBigInt, adDouble, adDecimal, adSmallInt, adTinyInt
                    ' If blank then use 0
                    If Trim(f.value & "") = "" Then f.value = 0
            End Select
        Next f
    Next r
End Sub
