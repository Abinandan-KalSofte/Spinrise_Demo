VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDatGrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{6481A028-39ED-11DA-B598-00201829543C}#2.0#0"; "Kallistacx.ocx"
Begin VB.Form frmMixingIssue 
   Caption         =   "Mixing Issue"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11625
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11625
   WindowState     =   2  'Maximized
   Begin RMI.UserFooter UserFooter1 
      Height          =   4380
      Left            =   6870
      TabIndex        =   97
      Top             =   1065
      Visible         =   0   'False
      Width           =   4080
      _extentx        =   7197
      _extenty        =   7726
   End
   Begin VB.Frame Frame9 
      Height          =   540
      Left            =   5955
      TabIndex        =   93
      Top             =   540
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   345
         Left            =   4095
         TabIndex        =   98
         Top             =   135
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   255
         Left            =   3015
         TabIndex        =   95
         Top             =   210
         Value           =   -1  'True
         Width           =   1125
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Yes"
         Height          =   225
         Left            =   1755
         TabIndex        =   94
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label7 
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
         Height          =   240
         Left            =   180
         TabIndex        =   96
         Top             =   195
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5295
      Left            =   315
      TabIndex        =   63
      Top             =   1095
      Width           =   11115
      _ExtentX        =   19606
      _ExtentY        =   9340
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Mixing Details"
      TabPicture(0)   =   "frmMixingIssue.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Issue Details"
      TabPicture(1)   =   "frmMixingIssue.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame8"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame8 
         Height          =   4725
         Left            =   -74880
         TabIndex        =   89
         Top             =   435
         Width           =   10875
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   2145
            Left            =   90
            TabIndex        =   90
            Top             =   2370
            Width           =   10635
            _ExtentX        =   18759
            _ExtentY        =   3784
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   0
            HeadLines       =   1
            RowHeight       =   17
            TabAction       =   2
            AllowAddNew     =   -1  'True
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
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Caption         =   "Mixing Issue  Details"
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
         Begin MSDataGridLib.DataGrid wastegrid 
            Height          =   1920
            Left            =   90
            TabIndex        =   91
            Top             =   240
            Width           =   10635
            _ExtentX        =   18759
            _ExtentY        =   3387
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   0
            HeadLines       =   1
            RowHeight       =   17
            TabAction       =   2
            AllowAddNew     =   -1  'True
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
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Caption         =   "Waste Issue  Details"
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
         Begin VB.Line Line1 
            X1              =   15
            X2              =   10845
            Y1              =   2220
            Y2              =   2220
         End
      End
      Begin VB.Frame Frame7 
         Height          =   3090
         Left            =   165
         TabIndex        =   71
         Top             =   330
         Width           =   10785
         Begin VB.Frame Frame4 
            Caption         =   "Blend%"
            Height          =   1050
            Left            =   60
            TabIndex        =   84
            Top             =   1920
            Width           =   10635
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "CatPer1"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   360
               Index           =   16
               Left            =   9120
               MaxLength       =   6
               TabIndex        =   22
               Top             =   195
               Width           =   1410
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "Cat1"
               Height          =   360
               Index           =   17
               Left            =   1245
               MaxLength       =   100
               TabIndex        =   20
               Top             =   195
               Width           =   990
            End
            Begin VB.TextBox Text6 
               BackColor       =   &H00E0E0E0&
               Height          =   360
               Left            =   2310
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   21
               TabStop         =   0   'False
               Text            =   " "
               Top             =   195
               Width           =   5745
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "CatPer2"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   360
               Index           =   18
               Left            =   9105
               MaxLength       =   6
               TabIndex        =   25
               Top             =   600
               Width           =   1410
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "cat2"
               Height          =   360
               Index           =   19
               Left            =   1230
               MaxLength       =   100
               TabIndex        =   23
               Top             =   600
               Width           =   990
            End
            Begin VB.TextBox Text7 
               BackColor       =   &H00E0E0E0&
               Height          =   360
               Left            =   2295
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   24
               TabStop         =   0   'False
               Text            =   " "
               Top             =   600
               Width           =   5745
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "%"
               Height          =   195
               Left            =   8250
               TabIndex        =   88
               Top             =   285
               Width           =   120
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "Category 1"
               Height          =   195
               Left            =   75
               TabIndex        =   87
               Top             =   270
               Width           =   765
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "%"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00%"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   5
               EndProperty
               Height          =   195
               Left            =   8250
               TabIndex        =   86
               Top             =   690
               Width           =   120
            End
            Begin VB.Label Label17 
               AutoSize        =   -1  'True
               Caption         =   "Category 2"
               Height          =   195
               Left            =   60
               TabIndex        =   85
               Top             =   675
               Width           =   765
            End
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "isstype"
            ForeColor       =   &H80000007&
            Height          =   360
            Index           =   10
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   13
            Top             =   525
            Width           =   1005
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H80000007&
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   525
            Width           =   5745
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "mixgrp"
            ForeColor       =   &H80000007&
            Height          =   360
            Index           =   8
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   17
            Top             =   1425
            Width           =   1005
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H80000007&
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1425
            Width           =   2805
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "vehicleno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   7
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   35
            Top             =   1425
            Visible         =   0   'False
            Width           =   1005
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ordno"
            ForeColor       =   &H80000007&
            Height          =   360
            Index           =   13
            Left            =   6420
            MaxLength       =   100
            TabIndex        =   19
            Top             =   1425
            Width           =   1725
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H80000007&
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   945
            Width           =   5745
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "cntcd"
            ForeColor       =   &H80000007&
            Height          =   360
            Index           =   1
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   15
            Top             =   945
            Width           =   1005
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "docno"
            ForeColor       =   &H80000007&
            Height          =   360
            Index           =   0
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   120
            Width           =   1005
         End
         Begin VB.ComboBox Combo3 
            Enabled         =   0   'False
            Height          =   315
            ItemData        =   "frmMixingIssue.frx":0038
            Left            =   -45
            List            =   "frmMixingIssue.frx":003A
            TabIndex        =   74
            Top             =   3435
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   2
            Left            =   2535
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   73
            Top             =   3510
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.TextBox text2 
            DataField       =   "arrno"
            Height          =   330
            Left            =   3720
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   72
            Top             =   3495
            Visible         =   0   'False
            Width           =   1365
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   285
            Index           =   0
            Left            =   3135
            TabIndex        =   12
            Top             =   150
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   503
            _Version        =   393216
            BorderStyle     =   0
            BackColor       =   16777215
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "docdt"
            Height          =   360
            Left            =   3120
            TabIndex        =   75
            Top             =   120
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   635
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   54788097
            CurrentDate     =   36831
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Issue For"
            Height          =   195
            Left            =   120
            TabIndex        =   83
            Top             =   615
            Width           =   645
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   120
            TabIndex        =   81
            Top             =   1035
            Width           =   915
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            Height          =   195
            Left            =   120
            TabIndex        =   80
            Top             =   1500
            Width           =   930
         End
         Begin VB.Label Label21 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Mixing Lot No."
            Height          =   195
            Left            =   5280
            TabIndex        =   79
            Top             =   1515
            Width           =   1020
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Issue No."
            Height          =   195
            Left            =   120
            TabIndex        =   78
            Top             =   203
            Width           =   675
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   2490
            TabIndex        =   77
            Top             =   195
            Width           =   345
         End
         Begin VB.Label Label10 
            Caption         =   "Category"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   76
            Top             =   3390
            Visible         =   0   'False
            Width           =   975
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1605
         Left            =   150
         TabIndex        =   64
         Top             =   3480
         Width           =   10785
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tintwt"
            Height          =   360
            Index           =   9
            Left            =   4065
            MaxLength       =   100
            TabIndex        =   33
            Top             =   1080
            Width           =   1290
         End
         Begin VB.TextBox Text15 
            BackColor       =   &H00E0E0E0&
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   30
            TabStop         =   0   'False
            Text            =   " "
            Top             =   645
            Width           =   5745
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode2"
            Height          =   360
            Index           =   11
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   29
            Top             =   645
            Width           =   990
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT2"
            Height          =   360
            Index           =   12
            Left            =   9255
            MaxLength       =   100
            TabIndex        =   31
            Top             =   645
            Width           =   1410
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "TINT"
            Height          =   330
            Index           =   6
            Left            =   1320
            MaxLength       =   20
            TabIndex        =   32
            Top             =   1050
            Width           =   1560
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   27
            TabStop         =   0   'False
            Text            =   " "
            Top             =   240
            Width           =   5745
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode1"
            Height          =   360
            Index           =   3
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   26
            Top             =   240
            Width           =   990
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT1"
            Height          =   360
            Index           =   4
            Left            =   9255
            MaxLength       =   100
            TabIndex        =   28
            Top             =   240
            Width           =   1410
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "wtrwt"
            Height          =   330
            Index           =   5
            Left            =   6705
            MaxLength       =   100
            TabIndex        =   34
            Top             =   1080
            Width           =   1410
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "TINT Weight"
            Height          =   195
            Left            =   3000
            TabIndex        =   82
            Top             =   1155
            Width           =   930
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code 2"
            Height          =   195
            Left            =   120
            TabIndex        =   70
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight 2"
            Height          =   195
            Left            =   8340
            TabIndex        =   69
            Top             =   675
            Width           =   870
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TINT"
            Height          =   195
            Left            =   120
            TabIndex        =   68
            Top             =   1125
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code 1"
            Height          =   195
            Left            =   120
            TabIndex        =   67
            Top             =   300
            Width           =   735
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight 1"
            Height          =   195
            Left            =   8355
            TabIndex        =   66
            Top             =   285
            Width           =   870
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Water Weight"
            Height          =   195
            Left            =   5520
            TabIndex        =   65
            Top             =   1155
            Width           =   990
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   6525
      Left            =   375
      TabIndex        =   55
      Top             =   1020
      Visible         =   0   'False
      Width           =   10935
      Begin VB.Frame Frame5 
         Height          =   855
         Left            =   120
         TabIndex        =   57
         Top             =   5640
         Width           =   10695
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "frmMixingIssue.frx":003C
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   6240
            Picture         =   "frmMixingIssue.frx":041E
            Style           =   1  'Graphical
            TabIndex        =   59
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "frmMixingIssue.frx":07F1
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2760
            Picture         =   "frmMixingIssue.frx":0BD7
            Style           =   1  'Graphical
            TabIndex        =   58
            Top             =   240
            Width           =   1185
         End
      End
      Begin KalsoftListacx.kalsoftlist KSLLIST1 
         Height          =   4785
         Left            =   0
         TabIndex        =   56
         Top             =   1320
         Width           =   9240
         _ExtentX        =   16298
         _ExtentY        =   8440
         caption         =   ""
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1095
         Left            =   480
         TabIndex        =   60
         Top             =   360
         Visible         =   0   'False
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   1931
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
         Left            =   240
         TabIndex        =   61
         Top             =   120
         Visible         =   0   'False
         Width           =   8730
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4740
      Left            =   630
      TabIndex        =   52
      Top             =   1440
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command4 
         Caption         =   "OK"
         Height          =   480
         Left            =   3420
         TabIndex        =   53
         Top             =   3840
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   3225
         Left            =   120
         TabIndex        =   54
         Top             =   240
         Width           =   7545
         _ExtentX        =   13309
         _ExtentY        =   5689
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
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
         Caption         =   "Issue Details"
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
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   1110
      TabIndex        =   46
      Top             =   2280
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3060
         MaxLength       =   6
         TabIndex        =   49
         Top             =   855
         Width           =   1905
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         DownPicture     =   "frmMixingIssue.frx":0F9D
         Height          =   615
         Left            =   2580
         Picture         =   "frmMixingIssue.frx":1383
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "frmMixingIssue.frx":1749
         Height          =   615
         Left            =   4020
         Picture         =   "frmMixingIssue.frx":1B2B
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Issue  No."
         Height          =   195
         Left            =   2010
         TabIndex        =   51
         Top             =   930
         Width           =   720
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
         TabIndex        =   50
         Top             =   120
         Width           =   7620
      End
   End
   Begin VB.Frame Frame10 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1815
      Left            =   3150
      TabIndex        =   40
      Top             =   4290
      Width           =   4935
      Begin VB.OptionButton Option3 
         Caption         =   "Bale Wise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1560
         TabIndex        =   44
         Top             =   480
         Width           =   3015
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Kgs Wise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   495
         Left            =   1560
         TabIndex        =   43
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Command8 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         Height          =   495
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   42
         Top             =   1200
         Width           =   1095
      End
      Begin VB.CommandButton Command9 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Cancel"
         Height          =   495
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1200
         Width           =   975
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         BackColor       =   &H00400000&
         Caption         =   "Select the Issue Type"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   45
         Top             =   120
         Width           =   4935
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6825
      Top             =   180
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   30
      TabIndex        =   36
      Top             =   -150
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":1EFE
         Height          =   550
         Index           =   4
         Left            =   1065
         Picture         =   "frmMixingIssue.frx":2208
         Style           =   1  'Graphical
         TabIndex        =   92
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   4740
         Picture         =   "frmMixingIssue.frx":259D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":29DF
         Height          =   550
         Index           =   0
         Left            =   30
         Picture         =   "frmMixingIssue.frx":2CE9
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":307C
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
         Left            =   555
         Picture         =   "frmMixingIssue.frx":3386
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":3722
         Height          =   550
         Index           =   8
         Left            =   3165
         Picture         =   "frmMixingIssue.frx":3B6C
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":3ECE
         Height          =   550
         Index           =   10
         Left            =   4215
         Picture         =   "frmMixingIssue.frx":41D8
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":4554
         Height          =   550
         Index           =   9
         Left            =   3690
         Picture         =   "frmMixingIssue.frx":485E
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":4C00
         Height          =   550
         Index           =   11
         Left            =   5265
         Picture         =   "frmMixingIssue.frx":504A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":53DF
         Height          =   550
         Index           =   7
         Left            =   2640
         Picture         =   "frmMixingIssue.frx":5829
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   9000
         Picture         =   "frmMixingIssue.frx":5B79
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":5F10
         Height          =   550
         Index           =   5
         Left            =   1575
         Picture         =   "frmMixingIssue.frx":635A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMixingIssue.frx":66BF
         Height          =   550
         Index           =   6
         Left            =   2115
         Picture         =   "frmMixingIssue.frx":6B09
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   6480
         TabIndex        =   38
         Top             =   240
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8160
         TabIndex        =   37
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   39
      Top             =   8190
      Width           =   11625
      _ExtentX        =   20505
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "14/08/2012"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "4:32 PM"
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mixing Issue"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   330
      TabIndex        =   62
      Top             =   735
      Width           =   1635
   End
End
Attribute VB_Name = "frmMixingIssue"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adosecondaryrs2 As Recordset
Dim z As Integer
Dim updSECONDARYRS As Recordset
Dim UPDRS As Recordset
Dim WithEvents Rs As Recordset
Attribute Rs.VB_VarHelpID = -1
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim db As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldbales As Date
Dim balers As Recordset
Dim qty As Double
Dim tabflag As Boolean
Dim selbale As Integer
Dim selwt As Double
Dim a As String
Dim b As String
Dim wt As Double
Dim str, FLGISSH As String
Dim i As Integer
Dim flg As String
Dim RS2 As Recordset
Dim rx As Integer
Dim S As Double
Dim C As Integer
Dim ChkEx As Integer
Dim J As Integer
Dim ry As New Recordset
Dim xx1 As Integer
Dim tbno As Integer
Dim tgwt As Integer
Dim ttwt As Double
Dim tnwt As Double
Dim taisswt As Double
Dim xx As New Recordset
Dim DYINGHEADRS As Recordset
Dim DYINGTAILRS As Recordset
Dim totv As Double
Dim iKgs As Double
Dim rsa As Recordset

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form mixing Issue"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Dim totkgs As Double
Dim RemainKgs As Double
Dim MixKgs As Double
Dim issKgs As Double

'On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Set adoPrimaryRS = New Recordset
    ''adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  WHERE 1 = 2  order by docno", db, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "SELECT DIVCODE,DOCNO,DOCDT,MIXNO,TINT,OILCODE1,OILWT1,OILCODE2,OILWT2,WTRWT,CNTCD,ORDNO,MIXGRP,TINTWT,isstype,cat1,cat2,catper1,catper2 FROM RM_MIXINGHD  WHERE 1 = 2  order by docno", db, adOpenStatic, adLockOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT divcode,docno,a.varcode,b.varname,kgs,b.catcd,docdt,isslotno,isslotdt,issdt,a.issno,isstype  FROM RM_MIXINGDT a,rm_var b WHERE a.varcode=b.varcode and 1=2 ", db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    
    Set adosecondaryrs2 = New Recordset
    adosecondaryrs2.Open "select a.Divcode,Docno,docdt,wastecode,description,wkgs,ORDNO from rm_mixingwaste a,ig_rproduct b where a.divcode=b.divcode and a.wastecode=b.product_code and 1=2", db, adOpenStatic, adLockBatchOptimistic
    Set wastegrid.DataSource = adosecondaryrs2
    Call GRIDALIGN
    
    flg = ""
    'Set grdData.DataSource = Nothing
    'DTPicker2.Value = pdate
    'Set grid.FormatString = rs
    'Call GRIDALIGN
    Text1.Text = ""
    Text2.Text = ""
    Text5.Text = ""
    Text12.Text = ""
    txtfields(10).SetFocus
    Call bindcontls
    Call ENABLCONTLS
    BUTTON(3).Enabled = False
    adoPrimaryRS.AddNew
    adoSecondaryRS.AddNew
    adosecondaryrs2.AddNew
    Call WASTEALIGN
    Call adddelmod(BUTTON)
    Frame7.Enabled = True
    Frame7.Visible = True
    grddatagrid.AllowUpdate = True
    wastegrid.AllowUpdate = True
    str = ""
    MaskEdBox1(0).Mask = pdate
    MaskEdBox1(0).Text = pdate
    MaskEdBox1(0).Enabled = True
    Frame1.Visible = True
    Command8.Default = True
Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
    'modification
    Opt = "mod"
    'Combo1.Locked = False
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 2
If ToValidFinYear(Divcode) = False Then Exit Sub
    'Deletion
    Opt = "del"
    'Combo1.Locked = False
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 4
    'Find
    Opt = "fnd"
    'Combo1.Locked = False
    desc.Caption = "Find"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 3
     'list
     Exit Sub
    Dim weigh As Double
    Dim qtyt As Double
    Dim amt As Double
    
    weigh = 0
    qtyt = 0
    amt = 0
    gamt = 0
    
    Set Rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Co = 0
    cnt = 0
    Close
   ' Open "c:\isskg.txt" For Output As #f
   Open KALFOLDERDATA & "\isskg.TXT" For Output As #f
    
    Pg = 1
    Print #f,
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
    Print #f, Space(5) & String(85, "-")
    Print #f, Space(5) & "Docno       Docdt          Issue Type       Count     Party Name               Description "
    Print #f, Space(5) & String(85, "-")
    Co = 8
    
    
        If Co >= 57 Then
            Print #f, Space(5) & String(110, "-")
            Print #f, Chr(12)
            Co = 0
            Pg = Pg + 1
            Print #f,
            Print #f, Chr(27) & Chr(77)
            Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
            Print #f, Chr(27) & Chr(205)
            SR = Format(pdate, "dd/mm/yy")
            Pg = Pg + 1
            Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
            Print #f, Space(5) & String(110, "-")
            Print #f, Space(5) & "Docno       Docdt          Issue Type       Count     Party Name               Description "
            Print #f, Space(5) & String(110, "-")
            Co = 8
        End If
    Print #f, Space(5) & String(110, "-")
    Print #f, Chr(12)
    Close #f
'    Open "c:\isskg.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type isskg.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\isskg.txt"
'    Rep.Batfile = "c:\isskg.bat"
     f = FreeFile
     Call KALBATPROCESS("isskg")
    Screen.MousePointer = 0

Case 5
     'first
     desc.Caption = "Query"
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     
     Call bindcontls
     
    'calling fir procedure from module
     Call navi1(BUTTON)
     Call FIR(BUTTON)

     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:
    'MsgBox Err.description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      On Error GoTo GoNextError
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        
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
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
      BUTTON(8).Enabled = False
      BUTTON(6).Enabled = False
      Beep
      Else
      BUTTON(8).Enabled = True
      BUTTON(6).Enabled = True
      End If
      Exit Sub
GoNextError:

Case 7
    'Previous
     desc.Caption = "Query"
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
     
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If

    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
    End If
    'show the current record
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

GoPrevError:
   

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     Call bindcontls
    
    'calling las procedure from module
     Call navi1(BUTTON)
     Call las(BUTTON)
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head

Case 9
'     Save
'lblctrl.Visible = False
If Opt = "add" Or Opt = "mod" Then
   'If Combo1.Text = "PR" Then
    'If Trim(Txtfields(1).Text) = "" Then
    '    MsgBox "Category should not be empty", vbInformation, head
    '    Txtfields(1).SetFocus
    '    Exit Sub
    'End If
    'End If
End If

    If Opt = "add" Then
    Set rs1 = New Recordset
    rs1.Open "SELECT ISNULL(MAX(Docno),0) FROM rm_Mixinghd WHERE docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
    docNo = rs1(0) + 1
        txtfields(0).Text = docNo

    
       If adoSecondaryRS.RecordCount = 0 Then MsgBox "Please enter the Mixing Details", vbInformation, head
    
       opt1 = Opt
       Opt = ""
       adoSecondaryRS.MoveFirst
'       While Not adoSecondaryRS.EOF
'            'If IIf(IsNull(adoSecondaryRS(2)), "", adoSecondaryRS(2)) = "" And IIf(IsNull(adoSecondaryRS(3)), "", adoSecondaryRS(3)) = "" And val(IIf(IsNull(adoSecondaryRS(2)), 0, adoSecondaryRS(2))) = 0 Then
'            If CStr(adoSecondaryRS(2)) = "" Then
'                adoSecondaryRS.Delete adAffectCurrent
'            End If
'            adoSecondaryRS.MoveNext
'
'            'adoSecondaryRS.MoveNext
'       Wend
'            adoSecondaryRS.MoveFirst
       cat1 = CStr(txtfields(17).Text)
       cat2 = CStr(txtfields(19).Text)
       cat1kgs = 0: cat2kgs = 0: totkgs = 0
       While Not adoSecondaryRS.EOF
            If adoSecondaryRS.EOF = False Then Exit Sub
            If val(adoSecondaryRS(4)) = 0 Then
               MsgBox "Please enter the Mixing KGS", vbInformation, head
               Opt = opt1
               Exit Sub
            End If
            
            Set rsg = New Recordset
            rsg.Open "select catcd from rm_var where varcode='" & adoSecondaryRS(2) & "'", db, adOpenStatic
            
            If UCase(rsg(0)) = UCase(cat1) Then
                cat1kgs = cat1kgs + val(adoSecondaryRS(4))
            End If
            If UCase(rsg(0)) = UCase(cat2) Then
                cat2kgs = cat2kgs + val(adoSecondaryRS(4))
            End If
            totkgs = totkgs + val(adoSecondaryRS(4))
            adoSecondaryRS.MoveNext
      Wend
       
      If val(txtfields(16).Text) - 5 < (Round(cat1kgs / totkgs, 2) * 100) And val(txtfields(16).Text) + 5 > (Round(cat1kgs / totkgs, 2) * 100) Then
      Else
             MsgBox "Category 1 Percentage And Variety Kgs do not match", vbInformation, head
             Opt = opt1
             Exit Sub
      End If
    
      If val(txtfields(18).Text) - 5 < (Round(cat2kgs / totkgs, 2) * 100) And val(txtfields(18).Text) + 5 > (Round(cat2kgs / totkgs, 2) * 100) Then
      Else
             MsgBox "Category 2 Percentage And Variety Kgs do not match", vbInformation, head
             Opt = opt1
             Exit Sub
      End If
       
       
       
        adoSecondaryRS.MoveFirst
       
            db.BeginTrans
            adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            adoPrimaryRS("divcode") = Divcode
            adoPrimaryRS("docno") = txtfields(0).Text
            adoPrimaryRS("oilcode1") = Trim(txtfields(3).Text)
            adoPrimaryRS("oilwt1") = val(txtfields(4).Text)
            adoPrimaryRS("oilcode2") = Trim(txtfields(11).Text)
            adoPrimaryRS("oilwt2") = val(txtfields(12).Text)
            adoPrimaryRS("wtrwt") = val(txtfields(5).Text)
            adoPrimaryRS("TINT") = IIf(IsNull(Trim(txtfields(6).Text)), "", Trim(txtfields(6).Text))
            adoPrimaryRS("CNTCD") = Trim(txtfields(1).Text)
            adoPrimaryRS("ordno") = Trim(txtfields(13).Text)
            adoPrimaryRS("mixgrp") = Trim(txtfields(8).Text)
            adoPrimaryRS("TINTWT") = val(txtfields(9).Text)
            adoPrimaryRS("isstype") = Trim(txtfields(10).Text)
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            
           ''Rm_wastemixstock --Updation for MIXKGS
           
           ''---------------------------------------------------
            
            
            Set rsm = New Recordset
            rsm.Open "select * from rm_mixingwaste where 1=2", db, adOpenStatic, adLockBatchOptimistic
                 
            If adosecondaryrs2.RecordCount > 0 Then adosecondaryrs2.MoveFirst
            
            While Not adosecondaryrs2.EOF
            
                If IsNull(adosecondaryrs2(3)) = False And IsNull(adosecondaryrs2(5)) = False Then
                    
                    If Trim(adosecondaryrs2(3)) <> "" And val(adosecondaryrs2(5)) <> 0 Then
                        Set rst = New Recordset
                        rst.Open "Select Issno,Issdt,Isskgs,isnull(Mixkgs,0)MIXKGS from rm_wastemixstock where Isskgs-isnull(Mixkgs,0)>0 and divcode='" & Divcode & "' and varcode='" & adosecondaryrs2(3) & "' AND ISSTYPE='" & txtfields(10).Text & "' order by issno", db, adOpenStatic
                        IssuedKgs = val(adosecondaryrs2(5))
                        issKgs = val(adosecondaryrs2(5))
                        While Not rst.EOF
                            If issKgs > 0 Then
                                Balkg = rst("isskgs") - rst("mixkgs")
                                If Balkg <= issKgs Then
                                    db.Execute "Update rm_wastemixstock set mixkgs=mixkgs+" & Balkg & " where varcode='" & adosecondaryrs2(3) & "' and issno='" & rst("issno") & "' and issdt='" & Format(rst("issdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  AND ISSTYPE='" & txtfields(10).Text & "'"
                                Else
                                    db.Execute "Update rm_wastemixstock set mixkgs=mixkgs+" & issKgs & " where varcode='" & adosecondaryrs2(3) & "' and issno='" & rst("issno") & "' and issdt='" & Format(rst("issdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  AND ISSTYPE='" & txtfields(10).Text & "'"
                                End If
                                issKgs = issKgs - Balkg
                            End If
                            rst.MoveNext
                        Wend
                        rsm.AddNew
                        rsm("DIVCODE") = Divcode
                        rsm("DOCNO") = val(txtfields(0).Text)
                        rsm("DOCDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                        rsm("WASTECODE") = adosecondaryrs2(3)
                        rsm("WKGS") = val(adosecondaryrs2(5))
                        rsm("ordno") = txtfields(13).Text
                        rsm.UpdateBatch adAffectAllChapters
                    End If
                End If
                adosecondaryrs2.MoveNext
            Wend
              
       adoSecondaryRS.MoveFirst
       Dim RstTmp As Recordset
       Set rsa = New Recordset
       rsa.Open "select * from Rm_MixingDt where 1=2", db, adOpenDynamic, adLockOptimistic
       Do While Not adoSecondaryRS.EOF
            rsa.AddNew
            rsa("divcode") = Divcode
            rsa("docno") = txtfields(0).Text
            rsa("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsa("varcode") = adoSecondaryRS("varcode")
            rsa("kgs") = adoSecondaryRS("kgs")
            rsa("catcd") = adoSecondaryRS("catcd")
            rsa("isstype") = Trim(txtfields(10).Text)
            rsa.Update
            totkgs = adoSecondaryRS("kgs")
            Set RstTmp = New Recordset
            RstTmp.Open "Select * from rm_Mixingstock a where (isskgs-Mixkgs)>0 and varcode='" & adoSecondaryRS("varcode") & "' and catcd='" & adoSecondaryRS("catcd") & "' AND ISSTYPE='" & txtfields(10).Text & "' order by issno", db, adOpenDynamic, adLockOptimistic
            issKgs = 0
            MixKgs = 0: remkgs = 0
            
            Do While Not RstTmp.EOF
                issKgs = RstTmp("isskgs")
                MixKgs = RstTmp("mixkgs")
                remkgs = issKgs - MixKgs
                If remkgs <= totkgs Then
                    db.Execute "update rm_mixingstock set mixkgs=mixkgs+" & remkgs & " where varcode='" & RstTmp("varcode") & "' and issdt='" & Format(RstTmp("issdt"), "yyyy-mm-dd") & "' and lotno=" & RstTmp("lotno") & " and lotdt='" & Format(RstTmp("lotdt"), "yyyy-mm-dd") & "' and issno='" & RstTmp("issno") & "'"
                Else
                    If totkgs > 0 Then
                        db.Execute "update rm_mixingstock set mixkgs=mixkgs+" & totkgs & " where varcode='" & RstTmp("varcode") & "' and issdt='" & Format(RstTmp("issdt"), "yyyy-mm-dd") & "' and lotno=" & RstTmp("lotno") & " and lotdt='" & Format(RstTmp("lotdt"), "yyyy-mm-dd") & "' and issno='" & RstTmp("issno") & "'"
                    End If
                End If
                totkgs = totkgs - remkgs
                RstTmp.MoveNext
                If totkgs <= 0 Then
                    Exit Do
                End If
            Loop
            adoSecondaryRS.MoveNext
       Loop
       adoSecondaryRS.MoveFirst
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
     ' adoSecondaryRS.UpdateBatch adAffectCurrent
      db.CommitTrans
       MsgBox "Issue Details Saved!", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
      End If
   
   If Opt = "mod" Then
        db.BeginTrans
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            Set rs1 = New Recordset
            db.Execute ("update rm_mixingdt set Kgs= " & val(adoSecondaryRS("Issued Kgs")) & " where docno='" & adoSecondaryRS("docNo") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and docno = " & txtfields(0).Text & " and docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and varcode='" & adoSecondaryRS("code") & "'")
            adoSecondaryRS.MoveNext
        Loop
        db.CommitTrans
        MsgBox "Issue Detail Modified", vbInformation, head
        Screen.MousePointer = 0
        Opt = ""
    End If
 
 If Opt = "del" Then
    Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
         db.BeginTrans
         On Error GoTo del
         Do While Not adoSecondaryRS.EOF
            totkgs = adoSecondaryRS("Issued Kgs")
            Set RstTmp = New Recordset
            RstTmp.Open "Select * from rm_Mixingstock a where  varcode='" & adoSecondaryRS("code") & "' and catcd='" & adoSecondaryRS("catcd") & "' and isnull(mixkgs,0)<>0 AND ISSTYPE='" & txtfields(10).Text & "' order by issno desc ", db, adOpenDynamic, adLockOptimistic
            issKgs = 0
            MixKgs = 0: remkgs = 0
            Do While Not RstTmp.EOF
                MixKgs = RstTmp("mixkgs")
                If MixKgs <= totkgs Then
                    remkgs = totkgs - MixKgs
                Else
                    remkgs = totkgs
                End If
                If totkgs >= MixKgs Then
                    db.Execute "update rm_mixingstock set mixkgs=0  where varcode='" & RstTmp("varcode") & "' and issdt='" & Format(RstTmp("issdt"), "yyyy-mm-dd") & "' and lotno=" & RstTmp("lotno") & " and lotdt='" & Format(RstTmp("lotdt"), "yyyy-mm-dd") & "' and issno='" & RstTmp("issno") & "'"
                Else
                    db.Execute "update rm_mixingstock set mixkgs=mixkgs-" & remkgs & " where varcode='" & RstTmp("varcode") & "' and issdt='" & Format(RstTmp("issdt"), "yyyy-mm-dd") & "' and lotno=" & RstTmp("lotno") & " and lotdt='" & Format(RstTmp("lotdt"), "yyyy-mm-dd") & "' and issno='" & RstTmp("issno") & "'"
                End If
                totkgs = totkgs - MixKgs
                RstTmp.MoveNext
                
                If totkgs <= 0 Then
                    Exit Do
                End If
            Loop
            adoSecondaryRS.MoveNext
        Loop
        
        ''REUPDATE
        
         
         Set rsm = New Recordset
         rsm.Open "SELECT * FROM RM_MIXINGWASTE WHERE DIVCODE='" & Divcode & "' AND DOCNO=" & adoPrimaryRS("DOCNO") & " AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'", db, adOpenStatic
         
         
         If rsm.RecordCount > 0 Then rsm.MoveFirst
        
         While Not rsm.EOF
            Set rst = New Recordset
            rst.Open "Select Issno,Issdt,Isskgs,isnull(Mixkgs,0)MIXKGS from rm_wastemixstock where ISNULL(Mixkgs,0)<>0 and divcode='" & Divcode & "' and varcode='" & rsm("WASTECODE") & "'  AND ISSTYPE='" & txtfields(10).Text & "' order by issno DESC", db, adOpenStatic
            IssuedKgs = val(rsm("WKGS"))
            issKgs = val(rsm("WKGS"))
            While Not rst.EOF
                If issKgs > 0 Then
                    If rst("MIXKGS") <= issKgs Then
                        db.Execute "Update rm_wastemixstock set mixkgs=mixkgs-" & rst("MIXKGS") & " where varcode='" & rsm("WASTECODE") & "' and issno='" & rst("issno") & "' and issdt='" & Format(rst("issdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  AND ISSTYPE='" & txtfields(10).Text & "'"
                    Else
                        db.Execute "Update rm_wastemixstock set mixkgs=mixkgs-" & issKgs & " where varcode='" & rsm("WASTECODE") & "' and issno='" & rst("issno") & "' and issdt='" & Format(rst("issdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  AND ISSTYPE='" & txtfields(10).Text & "'"
                    End If
                    issKgs = issKgs - rst("MIXKGS")
                End If
                rst.MoveNext
            Wend
            rsm.MoveNext
        Wend
        ''-----


        db.Execute ("delete from rm_MIXINGWASTE where docno =" & Trim(txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        db.Execute ("delete from rm_MixingHd where docno =" & Trim(txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        db.Execute ("delete from rm_MixingDt where docno =" & Trim(txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        MsgBox "Issue Details Deleted!", vbOKOnly, head
        BUTTON(9).ToolTipText = "Save"
        On Error GoTo s1:
        db.CommitTrans
s1:
        Opt = ""
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
End If
    'Return to query mode
    Call QUERY_MODE
    Call disablcontls
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:
If Err.Number = -2147217900 Then

    MsgBox "This Division code cannot be deleted as dependencies exist", , head
    BUTTON(9).ToolTipText = "Save"
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
    Case "add"
        db.RollbackTrans
    Case "mod"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    Case "fnd"
        db.RollbackTrans
    End Select
    Opt = ""
    Call QUERY_MODE
    Screen.MousePointer = 0
    Call disablcontls
    grddatagrid.Enabled = True
   ' lblctrl.Visible = False
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Frame3.Visible = False
    Frame1.Visible = True
    Call NEWFORM1(BUTTON, GSNO)
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 12
    Frame9.Visible = True
    Frame9.ZOrder 0
    Option5.value = True
    Option5.SetFocus
    SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
    UserFooter1.ClearFooter
'    cmd_report.Visible = False
    Buttonframe.Enabled = False
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmMixingIssue", vbInformation, head
End Sub



Private Sub Combo1_Change()
On Error GoTo Combo1_Change_Error

ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') from rm_issuetype where issue_code='" & ISSTYPE & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))

''
''If Opt = "" Or Opt = " " Then
''On Error Resume Next
''   If adoPrimaryRS("isstype") <> "P" Then
''      TXTFIELDS(2).Visible = True
''      Text2.Visible = True
''      Label2.Visible = True
''   Else
''      TXTFIELDS(2).Visible = False
''      Text2.Visible = False
''      Label2.Visible = False
''   End If
''   If adoPrimaryRS("isstype") = "PR" Then
''      Combo1.Text = "PR-Production"
''        TXTFIELDS(1).Visible = True
''        TXTFIELDS(8).Visible = False
''        Label14.Visible = False
''        TXTFIELDS(7).Visible = False
''
''      TXTFIELDS(1).ZOrder
''   ElseIf adoPrimaryRS("isstype") = "T2" Then
''      Combo1.Text = "T2-Transfer"
''      TXTFIELDS(1).Visible = True
''      TXTFIELDS(8).Visible = False
''        Label14.Visible = True
''        TXTFIELDS(7).Visible = True
''
''      TXTFIELDS(1).ZOrder
''    ElseIf adoPrimaryRS("isstype") = "T3" Then
''      TXTFIELDS(1).Visible = True
''      TXTFIELDS(8).Visible = False
''      Label14.Visible = True
''      TXTFIELDS(7).Visible = True
''
''      Combo1.Text = "T3-Transfer"
''      TXTFIELDS(1).ZOrder
''   ElseIf adoPrimaryRS("isstype") = "SA" Then
''      Combo1.Text = "SA-Sales"
''      TXTFIELDS(1).Visible = False
''      TXTFIELDS(8).Visible = True
''      Label14.Visible = True
''      TXTFIELDS(7).Visible = True
''      TXTFIELDS(8).ZOrder
''   End If
''   If adoPrimaryRS("ISSTO") = "M" Then
''      Combo2.Text = "M-Mixing"
''   ElseIf adoPrimaryRS("ISSTO") = "D" Then
''      Combo2.Text = "D-Dying"
''   End If
''End If


Exit Sub
Combo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Change of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub Combo1_Click()
''If Left(Combo1.Text, 2) = "PR" Then
''    TXTFIELDS(2).Visible = False
''    Text2.Visible = False
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(4).Visible = True
''    TXTFIELDS(5).Visible = True
''    TXTFIELDS(6).Visible = True
''    TXTFIELDS(3).Visible = True
''    text1.Visible = True
''    Text3.Visible = True
''    Label3.Visible = True
''    Label1.Visible = True
''    Label4.Visible = True
''    Label8.Visible = True
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(8).Visible = False
''
''    TXTFIELDS(1).ZOrder
''    Label5.Caption = "Mixingcount"
''    Label5.Visible = True
''ElseIf Left(Combo1.Text, 2) = "SA" Then
''    TXTFIELDS(2).Visible = True
''    Text2.Visible = True
''    TXTFIELDS(1).Visible = True
''    Text5.Visible = True
''    Label14.Visible = True
''    TXTFIELDS(7).Visible = True
''
''    TXTFIELDS(4).Visible = False
''    TXTFIELDS(5).Visible = False
''    TXTFIELDS(6).Visible = False
''    TXTFIELDS(3).Visible = False
''    TXTFIELDS(8).ZOrder
''    text1.Visible = False
''    Text3.Visible = False
''    Label5.Caption = "Party"
''    Label3.Visible = False
''    Label1.Visible = False
''    TXTFIELDS(1).Visible = False
''    TXTFIELDS(8).Visible = True
''
''    Label4.Visible = False
''    Label8.Visible = False
''    Label5.Visible = True
''ElseIf Left(Combo1.Text, 1) = "T" Then
''    TXTFIELDS(2).Visible = True
''    Label5.Caption = "Count"
''    Text2.Visible = True
''    TXTFIELDS(1).Visible = False
''    TXTFIELDS(4).Visible = False
''    TXTFIELDS(5).Visible = False
''    TXTFIELDS(6).Visible = False
''    Label14.Visible = True
''    TXTFIELDS(7).Visible = True
''
''    TXTFIELDS(3).Visible = False
''    Label2.Visible = True
''    text1.Visible = False
''    Text3.Visible = False
''    TXTFIELDS(1).Visible = True
''    TXTFIELDS(8).Visible = False
''
''    Label3.Visible = False
''    Label1.Visible = False
''    Label4.Visible = False
''    Label8.Visible = False
''    TXTFIELDS(1).ZOrder
''    Label5.Visible = True
''End If
On Error GoTo Combo1_Click_Error

On Error GoTo Combo1_Click_Error

ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') as isstype from rm_issuetype where issue_code='" & ISSTYPE & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))


Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form frmMixingIssue", vbInformation, head

Screen.MousePointer = 0

End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyPress of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

If Combo1.Text = "" And Opt = "add" Then
   MsgBox "Select Any Type From the Drop Down List", vbInformation, head
   Combo1.SetFocus
   Exit Sub
End If

If Left(Combo1.Text, 2) = "SA" Then
    Set Rs = New Recordset
    Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 2) & "'", db, adOpenStatic, adLockBatchOptimistic
    docNo = Rs(0)
Else
    Set Rs = New Recordset
    Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
    docNo = Rs(0)
End If
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    BUTTON(9).ToolTipText = "Add Record"
    txtfields(0).Locked = True
    SSTab1.TabEnabled(1) = True
End If


Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo2_KeyDown_Error

If Opt = "ADD" Then
Flag = "Y"
End If
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()

On Error GoTo Command1_Click_Error

On Error GoTo Command1_Click_Error

If (Combo1.Text = "PR-Production") Then
   If Trim(txtfields(1).Text) = "" Then
      MsgBox "Please Enter The mixing Count", vbInformation, head & "Message"
      Exit Sub
   End If
End If
If Option3.value = True Then
        If S = val(grddatagrid.Columns(8).value) Or ChkEx = val(grddatagrid.Columns(8).value) Then
           adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
           adoPrimaryRS("divcode") = Divcode
           adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
           adoPrimaryRS("issto") = Left(Combo2.Text, 1)
           adoPrimaryRS("docno") = txtfields(0).Text
           If (Combo1.Text = "T") Or (Combo1.Text = "SA") Then
               Set rst = New Recordset
               rst.Open "Select CNTCODE from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(4).Text & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
               If Not rst.EOF Then
                  adoPrimaryRS("CNTCD") = rst(0)
               End If
           Else
               adoPrimaryRS("CNTCD") = txtfields(1).Text
           End If
           adoPrimaryRS("oilcode") = txtfields(3).Text
           adoPrimaryRS("oilwt") = val(txtfields(4).Text)
           adoPrimaryRS("wtrwt") = val(txtfields(5).Text)
           adoPrimaryRS("oilcode1") = txtfields(11).Text
           adoPrimaryRS("oilwt1") = val(txtfields(12).Text)
           adoPrimaryRS("tintwt") = Trim(txtfields(9).Text)
           adoPrimaryRS("cat1") = txtfields(17).Text
           adoPrimaryRS("cat2") = txtfields(19).Text
           adoPrimaryRS("catper1") = txtfields(16).Text
           adoPrimaryRS("catper2") = txtfields(18).Text
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           
                    
           
           ''---------------------------------------------------
           
                
           If Grid.Rows - 1 > 0 Then
              For i = 1 To Grid.Rows
                 Dim refrs As Recordset
                 If Grid.TextMatrix(i, 1) <> "" Then
                 adoSecondaryRS.AddNew
                 adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
                 adoSecondaryRS("BALENO") = Grid.TextMatrix(i, 1)
                 adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
                 
                 Set rsa = New Recordset
                 rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
                 If rsa.RecordCount > 0 Then
                    adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                 End If
                 
                 adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                 adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
                 adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
                 adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                 adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                 'adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
                 adoSecondaryRS("Issued Kgs") = val(Grid.TextMatrix(i, 4))
                 adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
                 If Grid.TextMatrix(i, 5) = "" Then
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                    adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(i, 5))
                 Else
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                    adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(i, 5))
                 End If
                 'If DataGrid1.Columns(5).Text = "" Then
                 'If Val(adoSecondaryRS("Issued Kgs")) = Val(adoSecondaryRS("AIKgs")) Then
                 If Grid.TextMatrix(i, 6) = "Y" Then
                    'DataGrid1.Columns(5).Text = "Y"
                    Grid.TextMatrix(i, 6) = "Y"
                    adoSecondaryRS("ISSUED") = "Y"
                    
                 Else
                   'DataGrid1.Columns(5).Text = "N"
                   Grid.TextMatrix(i, 6) = "N"
                    'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
                    adoSecondaryRS("ISSUED") = Grid.TextMatrix(i, 6)
                 End If
                 End If
              Next
        '---------------Entry Save
           Else
              balers.MoveFirst
              While Not balers.EOF
                 If Not IsNull(balers(4)) = True Then
                    If val(balers(4)) > 0 Then
                       adoSecondaryRS.AddNew
                       adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
                       adoSecondaryRS("BALENO") = balers("baleno")
                       Set rsa = New Recordset
                        rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
                        If rsa.RecordCount > 0 Then
                           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                        End If
                       adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
                       adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                       adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
                       adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
                       adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                       adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                       adoSecondaryRS("Issued Kgs") = val(Grid.TextMatrix(1, 4))
                       adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
                       
                      If Grid.TextMatrix(1, 5) = "" Then
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                           adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(1, 5))
                        Else
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                           adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(1, 5))
                        End If
                       
                        If val(adoSecondaryRS("Issued Kgs")) = val(adoSecondaryRS("AIKgs")) Then
                        'If DataGrid1.Columns(5).Text = "" Then
                           adoSecondaryRS("ISSUED") = "Y"
                        Else
                           adoSecondaryRS("ISSUED") = Grid.TextMatrix(1, 6)
                        End If
                     End If
                 End If
                 balers.MoveNext
              Wend
           End If
        '---------------
        Else
           MsgBox "Select only " & grddatagrid.Columns(10).Text & " Records from Datagrid", , head
           Command1.Enabled = False
           Exit Sub
        End If
Else

   
   
   
      For i = 1 To Grid.Rows
         
'         balers.Bookmark = grid.RowBookmark(I)
'         balers.Bookmark = grid.RowBookmark(I)
        If Grid.TextMatrix(i, 1) <> "" Then
         adoSecondaryRS.AddNew
         adoSecondaryRS("DIVCODE") = Divcode
         adoSecondaryRS("BALENO") = Grid.TextMatrix(i, 1)
         adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
         adoSecondaryRS("ISSTYPE") = Left(Combo1.Text, 2)
         Set rsa = New Recordset
         rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", db, adOpenStatic
         If rsa.RecordCount > 0 Then
           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
         End If
         adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
         adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
         adoSecondaryRS("DOCDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
         adoSecondaryRS("DOCNO") = txtfields(0).Text
         'adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
         adoSecondaryRS("Issued Kgs") = val(Grid.TextMatrix(i, 4))
         adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
         adoSecondaryRS("VARIETY") = grddatagrid.Columns(3).Text
         If Grid.TextMatrix(i, 5) = "" Then
            'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
            adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(i, 5))
         Else
            'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
            adoSecondaryRS("AIKgs") = val(Grid.TextMatrix(i, 5))
         End If
         'If DataGrid1.Columns(5).Text = "" Then
         'If Val(adoSecondaryRS("Issued Kgs")) = Val(adoSecondaryRS("AIKgs")) Then
         If Grid.TextMatrix(i, 6) = "Y" Then
            'DataGrid1.Columns(5).Text = "Y"
            Grid.TextMatrix(i, 6) = "Y"
            adoSecondaryRS("ISSUED") = "Y"
            
         Else
           'DataGrid1.Columns(5).Text = "N"
           Grid.TextMatrix(i, 6) = "N"
            'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
            adoSecondaryRS("ISSUED") = Grid.TextMatrix(i, 6)
         End If
         End If
      Next
'---------------Entry Save
  
'---------------
End If


If vbYes = MsgBox("Any Corrections?", vbYesNo, head) Then
   'DataGrid1.Enabled = True
   Grid.Enabled = True
   Grid.SetFocus
   Text3.Text = ""
  
   'Set adoSecondaryRS = New Recordset
  ' adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",varcode ""Variety"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,B.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2  ", DB, adOpenStatic, adLockBatchOptimistic
   Command1.Enabled = True
Else
    Frame1.Enabled = True
    Frame7.Enabled = True
   If vbYes = MsgBox("Do you want to enter more Lot details?", vbYesNo, head) Then
      SSTab1.Tab = 0
      grddatagrid.Enabled = True
      Frame7.Visible = True
      Frame7.Enabled = True
      
      UPDRS.AddNew
      UPDRS("Iss Kgs") = val(Text4.Text)
      UPDRS("Iss bales") = val(Text3.Text)
      UPDRS("Lot No.") = grddatagrid.Columns(0).Text
      UPDRS("Lot Dt.") = grddatagrid.Columns(1).Text
      UPDRS("Lot Type.") = grddatagrid.Columns(2).Text
      updSECONDARYRS.AddNew
      grddatagrid.Col = 0
      grddatagrid.SetFocus
      BUTTON(9).Enabled = True
   Else
      UPDRS.AddNew
      UPDRS("Iss Kgs") = val(Text4.Text)
      UPDRS("Iss bales") = val(Text3.Text)
      UPDRS("Lot No.") = grddatagrid.Columns(0).Text
      UPDRS("Lot Dt.") = grddatagrid.Columns(1).Text
      UPDRS("Lot Type.") = grddatagrid.Columns(2).Text
      SSTab1.Tab = 0
      Frame1.Visible = True
      Frame7.Visible = True
      Frame7.Enabled = True
      'lblctrl.Enabled = False
      BUTTON(9).Enabled = True
      BUTTON(9).SetFocus
      grddatagrid.Enabled = False
   End If
   i = 0: wt = 0
End If


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmMixingIssue", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub cmd_report_Click()
     Dim F_Date As String
On Error GoTo cmd_report_Click_Error

     F_Date = MaskEdBox1(0).Text
     
     Screen.MousePointer = 11
    'REPINDEX = 62
    'rmireports.Show
    'typeflg = Left(Combo1.Text, 2)
    typeflg = Left(txtfields(10).Text, 2)
    LtN = txtfields(0).Text
        Set Cnn = New Connection
        Cnn.Open connectstring
            If LtN <> "" Then
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct A.LotNo,A.LotDt,B.VARCODE from rm_issb A,RM_LOT B where A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode and docNo=" & LtN & _
                          " AND ISSTYPE='" & typeflg & "' and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & _
                          Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & _
                          "' order by A.lotno", db, adOpenStatic
            Else
                MsgBox "No Record Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            If ResultRs.EOF Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            Set RPTV = New Report.ReportView
            z = FreeFile
            Close #z
            'Close
            'Open "C:\CotRecn.TXT" For Output As #z
             Open KALFOLDERDATA & "\CotRecn.TXT" For Output As #z
            pg1 = 1
            Co = 0
            dt = ResultRs!LOTNO & " - " & ResultRs!LOTDT
            Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            Co = Co + 9
            tot = 0
            tot1 = 0
            tot2 = 0
            
            Print #z, Space(7) & "Doc No. :" & Padr(LtN, 5, " ") & Space(2) & "Doc Date:" & Format(MaskEdBox1(0).Text, "dd-mm-yy") & Space(2) & "Mixing Count : " & Chr(15) & Text5.Text & Chr(15)
            Print #z,
            Co = Co + 2
            Do While Not ResultRs.EOF
                
                
                Print #z, Space(5) & Chr(18) & "Lot :"; Padl(ResultRs("lotno"), 5, " ") & Space(13) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " "); Space(3) & Padr(ResultRs("VARCODE"), 10, " ")
                
                Print #z,
                Co = Co + 2
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                If typeflg <> "A" Then
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs  from rm_lot a,rm_bale b,rm_issb c where a.divcode=b.divcode and a.divcode=c.divcode and a.divcode='" & Divcode & "' and c.isstype ='" & typeflg & "' and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", db, adOpenStatic
                Else
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs from rm_lot a,rm_bale b,rm_issb c where a.divcode=b.divcode and a.divcode=c.divcode and c.isstype in ('P','Q') and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' order by c.baleno", db, adOpenStatic
                End If
                'result.Open "select distinct LotNo,LotDt,isnull(ISSKGS,0)'IsQty',isnull(ActIssKgs,0) 'AIKgs',isnull(ActIssKgs,0)-isnull(IsSKGS,0) 'Excess',Baleno from rm_issb  where docno = " & LtN & "  and LotNo=" & ResultRs("lotno") & " and lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "'  AND '" & Format(yldate, "yyyy-mm-dd") & "'  order by baleno", DB, adOpenStatic
                Do While Not RESULT.EOF
                Print #z, Space(5) & Padl(RESULT!baleno, 10, " ") + Space(2) + Padl(INF(RESULT("grwt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("tarewt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("MOITURE"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("netwt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("actisskgs"), 3), 8, " ")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                If Not IsNull(RESULT!grwt) = True Then tot = tot + val(RESULT!grwt)
                If Not IsNull(RESULT!ActissKgs) = True Then tot1 = tot1 + val(RESULT!ActissKgs)
                If Not IsNull(RESULT("grwt")) = True Then gtot = gtot + val(RESULT("grwt"))
                If Not IsNull(RESULT("actisskgs")) = True Then gtot1 = gtot1 + val(RESULT("actisskgs"))
                    
                RESULT.MoveNext
                Loop
                
                Print #z,
                Co = Co + 1
                If RESULT.RecordCount > 1 Then
                    Print #z, Space(5); "Lot Total:" + Padl(INF(Format(tot, "##.000"), 3), 10, " ") + Space(25) + Padl(INF((Format(tot1, "##.000")), 3), 15, " ") '; Chr(27); "F"
                    Co = Co + 1
                End If
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                tot = 0
                tot1 = 0
                ResultRs.MoveNext
                 
                    Print #z,
                    Co = Co + 1
                    If Co >= PageLen Then
                       Print #z, Space(5) & String(60, "-")
                       Print #z, Chr(12)
                       pg1 = pg1 + 1
                       Co = 0
                       Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                       Co = Co + 9
                    End If
            Loop
            Print #z, Space(5) & String(60, "-")
            Co = Co + 1
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
               Co = Co + 9
            End If
            Print #z, Space(5); "** Grand Total **" + Space(4) + Padl(INF(Format(gtot, "##.000"), 3), 10, " ") + Space(14) + Padl(INF(Format(gtot1, "##.000"), 3), 15, " ") '; Chr(27); "F"
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            End If
            Print #z, Space(5) & String(60, "-")
        Close #z
        z = FreeFile
'        Open "c:\CotRec.bat" For Output As #z
'        Print #z, "cd\"
'        Print #z, "c:"
'        Print #z, "cd\"
'        Print #z, "type CotRecn.TXT>prn"
'        Close #z
'        z = FreeFile
'        RPTV.txtfile = "c:\CotRecn.TXT"
'        RPTV.Batfile = "c:\CotRec.bat"
Call KALBATPROCESS("CotRec")
        

     If typeflg = "PR" Then
        Screen.MousePointer = 0
        Exit Sub
     End If
     Set Rep = New Report.ReportView
     a = FreeFile
     totqty = 0
     totkgs = 0
     pgn = 1
     lno = 7
      Close
        'Open "C:\ind.txt" For Output As #a
         Open KALFOLDERDATA & "\ind.TXT" For Output As #a
        If txtfields(0).Text = "" Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
        pg1 = 1
        SNO = 1
        Call hdlist(CInt(pg1))
        totv = 0
        totqty = 0
        totkgs = 0
        Set rs1 = New Recordset
        
        rs1.Open "select varcode,sum(a.actisskgs) as kgs,count(baleno) as quantity,sum(a.actisskgs*b.rateKG) as value from rm_issb a,rm_lot b where a.divcode='" & Divcode & "' and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and docno='" & txtfields(0).Text & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "' group by varcode", db, adOpenStatic
        Do While Not rs1.EOF
            Set rsa = New Recordset
            rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", db
            If rsa.RecordCount > 0 Then
                VarName = rsa(0)
            Else
                VarName = ""
            End If
                
            Print #a, Space(3) + Padr(SNO, 10, " "); Space(2); Padr(VarName, 15, " "); Space(2); Padl(rs1("quantity"), 10, " ") + Space(7) + Padl(INF(Format(rs1("kgs"), "##.000"), 3), 10, " ") + Space(4) + Padl(INF(Format(rs1("value"), "##.00"), 2), 10, " ")
            totqty = totqty + rs1("quantity")
            totkgs = totkgs + rs1("kgs")
            totv = totv + rs1("value")
            
            SNO = SNO + 1
            lno = lno + 1
            Call pblist
            rs1.MoveNext
        Loop
        Do While Not lno > 30
            Print #a,
            lno = lno + 1
        Loop
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(3) + "TOTAL                      "; Space(2); Padl(totqty, 10, " ") + "Qty" + Padl(INF(Format(totkgs, "##.000"), 3), 10, " ") + "Kgs" + Space(3) & Padl(INF(Format(totv, "##.00"), 2), 10, " ")
        Print #a, Space(3) + String(85, "-")
        lno = 0
        SNO = 1
        Call gatepass(CInt(pg1))
        Set rs1 = New Recordset
  '     rs2.Open "select VEHICLENO from rm_ISSH where slcode='" & txtfields(7).Text & "' and DoCDT='" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' ", DB, adOpenStatic
      ' RS1.Open "select * from  RM_ISSH where DOCNO = '" & txtfields(0).Text & "' AND DOCDT = '" & Format(x, "DD/MM/YY") & "' ", DB, adOpenStatic
      
        rs1.Open "select * from rm_issh where docno='" & txtfields(0).Text & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "' and divcode='" & Divcode & "'", db, adOpenStatic
        Do While Not rs1.EOF
        totqty = 0
        totkgs = 0
                  Set rsa = New Recordset
                  
                  ''''RSA.Open "select sum(a.actISSKGS)as kgs,sum(a.actISSKGS)*RATEKG AS VALUE,VARCODE from rm_ISSB A,RM_LOT B,FA_SLMAS C where b.SUPCD=c.SLCODE and isstype='" & adoPrimaryRS("isstype") & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DOCNO='" & RS1("DOCNO") & "'AND  a.DoCDT='" & Format(F_DATE, "yyyy-mm-dd") & "' group by varcode,RATEKG", DB, adOpenStatic
                  rsa.Open "select varcode,sum(a.actisskgs) as kgs,count(baleno) as quantity,sum(a.actisskgs*b.rate) as value from rm_issb a,rm_lot b where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.divcode='" & Divcode & "' and docno='" & val(txtfields(0).Text) & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "' group by varcode", db, adOpenStatic
                  Do While Not rsa.EOF
                        If rsa.RecordCount > 0 Then
                            docNo = rsa(0)
                        Else
                            docNo = ""
                        End If
                
                        Print #a, Space(3) + Padr(SNO, 15, " ") + Space(7); Padr(rsa("VARCODE"), 15, " "); Space(2); Padl(INF(Format(rsa("quantity"), "##.000"), 3), 15, " ") + Padl(INF(Format(rsa("kgs"), "##.000"), 2), 16, " ") + Space(3)
                        totqty = totqty + rsa("quantity")
                        totkgs = totkgs + rsa("kgs")
                        SNO = SNO + 1
                        lno = lno + 1
                        Call pblist
                        rsa.MoveNext
                  Loop
            rs1.MoveNext
        Loop
        Do While Not lno > 20
            Print #a,
            lno = lno + 1
        Loop
        Print #a,
        Print #a, Space(3) + String(85, "-")
        'Print #a, Space(3) + "TOTAL                      "; Space(2) + Space(10); Padl(totqty, 10, " ") + Padl(INF(totkgs, 3), 16, " ") + Space(3)
        Print #a, Space(3) + Padr("TOTAL", 15, " ") + Space(7); Space(17); Padl(INF(totqty, 3), 15, " ") + Padl(INF(totkgs, 2), 16, " ") + Space(3)
     '   Print #a, Space(3) + Padr(slno, 15, " ") + Space(2); Padr(VarName, 15, " "); Space(2); Padl(RS1("quantity"), 10, " ") + "Qty" + " --- " + Padl(INF(RS1("kgs"), 3), 20, " ") + "Kgs" + Space(3)
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(5); "Returnable"; Space(35); Chr(27) + "E" + "For"; CENTRE(DIVNAME, 40, " ") + Chr(27) + "F"
        Print #a,
        Print #a,
        Print #a, Space(5) + "Receiver Signature" + Space(25) + "Prepared by" + Space(20) + "FM"
        Close #a
'        Open "C:\ind.bat" For Output As #a
'        Print #a, "C:"
'        Print #a, "cd\"
'        Print #a, "type ind.txt>prn"
'        Rep.txtfile = "C:\ind.txt"
'        Rep.Batfile = "C:\ind.bat"
'        Close #a
         a = FreeFile
         Call KALBATPROCESS("ind")
        Screen.MousePointer = 0

Exit Sub
cmd_report_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_Click of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub cmd_report_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo cmd_report_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame9.Visible = True Then
        Frame9.Visible = False
        UserFooter1.Visible = False
'        cmd_report.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
cmd_report_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()    'Find Okay
On Error GoTo Command2_Click_Error

desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   MsgBox "No Such Arrival No. Found", vbInformation, head
   Exit Sub
End If
Call bindcontls
'calling query procedure from module
Call query(BUTTON)
Frame6.Visible = False


Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form frmMixingIssue", vbInformation, head
End Sub
Private Sub Command3_Click()    'Find Cancel
Frame6.Visible = False
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

grddatagrid.Columns(1).Text = Rs(0)
grddatagrid.Columns(2).Text = Rs(1)
grddatagrid.Columns(3).Text = Rs(2)
Text6.Text = Rs("date")
Set Namers = New Recordset
Namers.Open "Select varname from rm_var where varcode='" & Rs(2) & "'", db, adOpenStatic
If Not Namers.EOF Then
   grddatagrid.Columns(4).Width = 2500
   grddatagrid.Columns(4).Text = Namers(0)
End If
grddatagrid.Columns(5).value = Rs(3)
grddatagrid.Columns(6).value = Rs(4)
grddatagrid.Columns(7).value = Rs(5)
Frame2.Visible = False
SSTab1.Visible = True
SSTab1.ZOrder
grddatagrid.Col = 8
grddatagrid.SetFocus
SendKeys ("{right}")


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form frmMixingIssue", vbInformation, head
End Sub



Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Label15.Caption = "Oil Details" Then
   Frame3.Visible = False
   SSTab1.Tab = 0
   txtfields(3).Text = ""
   Exit Sub
End If
Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Tab = 0
'Call BUTTON_Click(10)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Command6_Click()    'activex ok
On Error GoTo Command6_Click_Error

Select Case Ksllist1.listfield1
    Case "LOTNO" '"cast(a.lotno as varchar)"
         txtfields(1).Text = Ksllist1.Code
         MaskEdBox1(1).Text = Format(Ksllist1.Description, "dd/mm/yyyy")
         Dim partyrs As Recordset
         Set partyrs = New Recordset
         partyrs.Open "select catcd from rm_lot where lotno=" & txtfields(1).Text & " and lotdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
         txtfields(2).Text = partyrs(0)
         Combo1.SetFocus
    Case "slname as SupplierName,city as City" '"slcode"
         If Combo1.Text <> "T-Transfer" Then
'            txtFields(2).Text = KslList1.description
'            Text2.Text = Trim(KslList1.Code)
            txtfields(1).Text = Ksllist1.Description
            Text5.Text = Trim(Ksllist1.Code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         Else
            txtfields(2).Text = Trim(Ksllist1.Description)
            Text2.Text = Trim(Ksllist1.Code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         End If
    Case "Product_Code" 'Or "cntcd as CountCode" '"cntcd"
         txtfields(1).Text = Ksllist1.Code
         Text5.Text = Ksllist1.Description
         grddatagrid.Col = 0
         grddatagrid.Enabled = True
         grddatagrid.SetFocus
    Case "oilcode"
         txtfields(3).Text = Ksllist1.Code
         Text1.Text = Ksllist1.Description
         txtfields(4).SetFocus
    Case "docno"
         txtfields(0).Text = Ksllist1.Code
         MaskEdBox1(0).Text = Format(Ksllist1.Description, "dd/mm/yyyy")
         a = txtfields(0).Text
         b = MaskEdBox1(0).Text
         Text1.Text = ""
         Call delmodproc(CStr(a), CStr(b))
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form frmMixingIssue", vbInformation, head
End Sub


Private Sub Command7_Click()

On Error GoTo Command7_Click_Error

If Option1.value = True Then

        If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Text7.Text = "" Then
            MsgBox "Please enter the Bale Number", vbInformation, head
            Text7.SetFocus
        Else
            grddatagrid.Enabled = False
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame7.Enabled = False
            Frame1.Enabled = False
        SSTab1.Tab = 1
        
        Grid.RowHeader = True
        Grid.Enabled = True
        SSTab1.Visible = True
        Set chrs = New Recordset
        chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and divcode='" & Divcode & "'", db, adOpenDynamic, adLockBatchOptimistic
        If IsNull(chrs(0)) Then
        chrs(0) = ""
        End If
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
        If balers.RecordCount = 0 Then
        Set issrs = New Recordset
        issrs.Open "select Baleno,docno,docdt from rm_issb where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and issued='Y' and baleno='" & Text7.Text & "' and divcode='" & Divcode & "'", db, adOpenDynamic, adLockBatchOptimistic
        MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
        End If
        If balers.RecordCount > 0 Then
        For i = 1 To Grid.Rows
        If balers(0) = Grid.TextMatrix(i - 1, 1) Then
        MsgBox "This Bale No. already Issued", vbInformation, head
        flg = "y"
        Else
        flg = ""
        End If
        Next
        
        If Grid.Rows <= S And Not flg = "y" Then
        Grid.RowHeight(Grid.Rows) = 20
        Grid.Rows = Grid.Rows + 1
        
        tbno = tbno + 1
        Text3.Visible = True
        Text3.Text = val(tbno)
        Grid.TextMatrix(Grid.Rows - 1, 0) = Grid.Rows - 1
        Grid.TextMatrix(Grid.Rows - 1, 1) = Text7
        Grid.TextMatrix(Grid.Rows - 1, 2) = balers("gross weight")
        tgwt = tgwt + balers("gross weight")
        Text9.Text = val(tgwt)
        Grid.TextMatrix(Grid.Rows - 1, 3) = balers("Tare weight")
        ttwt = ttwt + balers("Tare weight")
        Text10.Text = val(ttwt)
        Grid.TextMatrix(Grid.Rows - 1, 4) = balers("net weight")
        tnwt = tnwt + balers("net weight")
        Text11.Text = val(tnwt)
        Grid.TextMatrix(Grid.Rows - 1, 6) = "Y"
        If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
        MsgBox "Issued KGS must be less than or equal to the Actual Stock KGS", vbInformation, head
        Grid.TextMatrix(Grid.Rows - 1, 5) = balers("net weight")
        taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
        Text4.Text = val(taisswt)
        End If
        If chrs(0) = "Y" Then
         
         Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
         taisswt = taisswt + val(Grid.TextMatrix(Grid.Rows - 1, 5))
        Text4.Text = val(taisswt)
        End If
        If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
        'grid.TextMatrix(grid.Rows - 1, 5) = Text8
        Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
        taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
        Text4.Text = val(taisswt)
        End If
        If chrs(0) = "N" Then
        Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
        'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
        Text4.Text = val(taisswt)
        End If
        
        Text7 = ""
        Text8 = ""
        Text7.SetFocus
        Else
        MsgBox "Closing Bales are Entered  ", vbInformation, head
        Text7 = ""
        Text8 = ""
        Text7.SetFocus
        'Command7.Enabled = False
        End If
        Else
        'MsgBox "This Baleno Already Issued ", vbInformation, head
        Text7 = ""
        Text8 = ""
        Text7.SetFocus
        End If
        Label25.Caption = ""
        If val(grddatagrid.Columns(8).Text) = val(tbno) Then
        Command7.Enabled = False
        Command1.Enabled = True
        Command1.SetFocus
        End If
        End If
        End If
End If
If Option2.value = True Then
    If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Trim(TxtIsskgs.Text) = "" Then
            MsgBox "Please enter the KGS", vbInformation, head
            TxtIsskgs.SetFocus
        Else
            grddatagrid.Enabled = False
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame1.Enabled = False
            Frame7.Enabled = False
            SSTab1.Tab = 1
        
            Grid.RowHeader = True
            Grid.Enabled = True
            SSTab1.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and divcode='" & Divcode & "'", db, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                  chrs(0) = ""
            End If
            'Grid.clear
            'Call Format_Grid
            Grid.Rows = 1
            Grid.RowHeight(Grid.Rows) = 20
            Grid.Rows = Grid.Rows + 1
           ' On Error Resume Next
            db.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            db.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(0).Text) & "' and Catcd = '" & grddatagrid.Columns(5).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            twt = 0
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", db, adOpenStatic
            If Rs.RecordCount > 0 Then
                Rs.MoveFirst
                TEMP = val(TxtIsskgs.Text)
                t1grwt = 0
                t1tarewt = 0
                t1netwt = 0
                t1actisskgs = 0
                t1bales = 0
                While Not Rs.EOF And TEMP > 0 And balers.RecordCount > 0
                    
                    If balers(4) > TEMP Then
                        Grid.TextMatrix(Grid.Rows - 1, 0) = Grid.Rows - 1
                        Grid.TextMatrix(Grid.Rows - 1, 1) = balers("Baleno")
                        Grid.TextMatrix(Grid.Rows - 1, 2) = balers(1) 'grwt
                        Grid.TextMatrix(Grid.Rows - 1, 3) = balers(2) 'tarewt
                        Grid.TextMatrix(Grid.Rows - 1, 4) = balers(3) 'netwt
                        Grid.TextMatrix(Grid.Rows - 1, 5) = val(TEMP) 'actisskgs
                        Grid.TextMatrix(Grid.Rows - 1, 6) = "N" 'issued
                        TEMP = TEMP - val(TxtIsskgs.Text)
                        twt = twt + val(Grid.TextMatrix(Grid.Rows - 1, 5))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + Grid.TextMatrix(Grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + Grid.TextMatrix(Grid.Rows - 1, 3)
                        t1netwt = t1netwt + Grid.TextMatrix(Grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + Grid.TextMatrix(Grid.Rows - 1, 5)
                        
                    Else
                    
                        Grid.TextMatrix(Grid.Rows - 1, 0) = Grid.Rows - 1
                        Grid.TextMatrix(Grid.Rows - 1, 1) = balers("Baleno")
                        Grid.TextMatrix(Grid.Rows - 1, 2) = balers(1) 'grwt
                        Grid.TextMatrix(Grid.Rows - 1, 3) = balers(2) 'tarewt
                        Grid.TextMatrix(Grid.Rows - 1, 4) = balers(3) 'netwt
                        Grid.TextMatrix(Grid.Rows - 1, 5) = balers(4) 'actisskgs
                        TEMP = TEMP - balers(4)
                        
                        Grid.TextMatrix(Grid.Rows - 1, 6) = "Y"
                        twt = twt + val(Grid.TextMatrix(Grid.Rows - 1, 4))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + Grid.TextMatrix(Grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + Grid.TextMatrix(Grid.Rows - 1, 3)
                        t1netwt = t1netwt + Grid.TextMatrix(Grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + Grid.TextMatrix(Grid.Rows - 1, 5)
                        
                    End If
                   
                  
                    balers.MoveNext
                    
                    If balers.EOF = False Then
                        Grid.Rows = Grid.Rows + 1
                    Else
                        GoTo GG:
                    End If
                   
                    
                    
                Wend
GG:
                    Text3.Text = t1bales
                    Text9.Text = val(t1grwt)
                    Text10.Text = val(t1tarewt)
                    Text11.Text = val(t1netwt)
                    Text4.Text = t1actisskgs
    
            Else
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
            End If
            Label25.Caption = ""
            'If val(grddatagrid.Columns(8).Text) = val(tbno) Then
                Command7.Enabled = True
                Command1.Enabled = True
                Command1.SetFocus
           ' End If
        
        End If
    End If
    On Error Resume Next
    cnt1 = Grid.Rows
    For i = 2 To cnt1
        If Grid.TextMatrix(i, 1) = "" Then
            Grid.Rows = Grid.Rows - 1
            cnt1 = cnt1 - 1
        End If
    Next
End If
If Option1.value = False And Option2.value = False Then
    MsgBox "Choose (Balewise/Kgswise) ", vbInformation, head
    Exit Sub
End If


Exit Sub
Command7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_Click of Form frmMixingIssue", vbInformation, head

End Sub



Private Sub Command8_Click()
On Error GoTo Command8_Click_Error

If Option3.value = False And Option4.value = False Then
    MsgBox "Please choose any one from the List", vbInformation, head
    Exit Sub
End If

If Option3.value = True Then
    Option1.value = True
Else
    Option1.value = False
End If
If Option4.value = True Then
    Option2.value = True
Else
    Option2.value = False
End If
Frame10.Visible = False
SSTab1.Enabled = True
Combo1.SetFocus
Command8.Default = False


Exit Sub
Command8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command8_Click of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub Command9_Click()
Call BUTTON_Click(10)
Frame10.Visible = False
End Sub

'Private Sub DataGrid1_AfterColEdit(ByVal ColIndex As Integer)
''If Opt = "add" Or Opt = "mod" Then
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text > DataGrid1.Columns(3).Text Then
''        MsgBox "Actisskgs cannot be Greater than Net Weight ", vbInformation, head
''        grdDataGrid.Columns(4).Text = DataGrid1.Columns(3).Text
''        grdDataGrid.Col = 4
''       ' grdDataGrid.SetFocus
''
''    End If
''End If
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text Then
''     '   adoSecondaryRS("issued") = "N"
''        grdDataGrid.Columns(5).Text = "N"
''    End If
''End If
''
''End If
'
'If Opt = "add" Or Opt = "mod" Then
'    If DataGrid1.Col = 4 Then
'        If SSTab1.Tab = 1 Then
'            If Val(DataGrid1.Columns(4).Text) > Val(DataGrid1.Columns(3).Text) Then
'                MsgBox "Actual Issue Kgs cannot be Greater than Net Weight", vbInformation
'                DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) = Val(DataGrid1.Columns(3).Text) Then
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) < Val(DataGrid1.Columns(3).Text) And Val(DataGrid1.Columns(4).Text) <> 0 Then
'                DataGrid1.Columns(5).Text = "N"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            End If
'        End If
'    End If
'End If
'End Sub

'Private Sub DataGrid1_Click()
'If Opt = "add" Then
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   'DataGrid1.Columns(4).Locked = False
'   DataGrid1.Enabled = True
'   RX = balers.AbsolutePosition
'   If grddatagrid.Row >= 0 Then
'      If DataGrid1.SelBookmarks.Count > Val(grddatagrid.Columns(10).Text) Then
'         MsgBox "Select only " & grddatagrid.Columns(8).Text & " Records from Datagrid", , head
'         Command1.Enabled = False
'         Exit Sub
'      ElseIf DataGrid1.SelBookmarks.Count <= Val(grddatagrid.Columns(10).Text) Then
'         If DataGrid1.SelBookmarks.Count > 1 Then
'            Text4 = ""
'            Text3 = ""
'            For I = 0 To DataGrid1.SelBookmarks.Count - 1
'               balers.Bookmark = DataGrid1.SelBookmarks(I)
'               Text4 = Val(Text4) + balers(3)
'               Text3.Text = DataGrid1.SelBookmarks.Count
'               Text3.Visible = True
'            Next
'         Else
'            On Error Resume Next
'            Text3.Text = DataGrid1.SelBookmarks.Count
'            Text3.Visible = True
'
'         End If
'      End If
'      If DataGrid1.SelBookmarks.Count = Val(grddatagrid.Columns(10).Text) Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'End If
'
'
'
'End Sub



'Private Sub DataGrid1_DblClick()
''''''''''''''''''
'End Sub

'Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
''If KeyCode = vbKeyA And Shift = vbAltMask Then
'If KeyCode = vbKeyF1 Then
'  DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'
'End If
'If KeyCode = vbKeyD And Shift = vbAltMask Then
'  DataGrid1.Columns(4).Text = ""
'End If




'End Sub


'Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
'If Opt = "mod" Then Exit Sub
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   DataGrid1.Columns(4).Locked = False
'   RX = balers.AbsolutePosition
'   DataGrid1.EditActive = True
'   DataGrid1.Enabled = True
'   On Error GoTo BBB
'   If KeyAscii = 9 Or KeyAscii = 13 Then
'      Text4 = ""
'      ChkEx = 0
'      balers.MoveFirst
'      While Not balers.EOF
'         If Not IsNull(balers(4)) = True Then
'            If Val(balers(4)) <> 0 Then Text4 = Val(Text4) + Val(balers(4)): ChkEx = ChkEx + 1
'         End If
'         If ChkEx > Val(grddatagrid.Columns(8).Text) Then
'            MsgBox "Only " & grddatagrid.Columns(8).Text & " Records can be Selected from Datagrid", vbOKOnly, head
'            Command1.Enabled = False
'            Exit Sub
'         ElseIf ChkEx < Val(grddatagrid.Columns(8).Text) Then
'         End If
'         balers.MoveNext
'      Wend
'      If ChkEx = grddatagrid.Columns(8).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'      balers.MoveFirst
'      For I = 0 To RX - 1
'         If balers.EOF <> True Then balers.MoveNext
'      Next
'      If balers.BOF <> True Then balers.MovePrevious
'      DataGrid1.Col = 4
'   End If
'
'
'
'
'
'   If KeyAscii = 19 Then
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      For I = 0 To DataGrid1.ApproxCount
'        If Val(DataGrid1.Columns(4).Text) > 0 Then
'           DataGrid1.SelBookmarks.Add (DataGrid1.Bookmark)
'        End If
'        DataGrid1.Row = DataGrid1.Row + 1
'        Call DataGrid1.Scroll(0, 1)
'      Next
'      If DataGrid1.SelBookmarks.Count = grddatagrid.Columns(7).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'   Exit Sub
'BBB:
'MsgBox ""
'End Sub

'Private Sub DataGrid1_KeyUp(KeyCode As Integer, Shift As Integer)
'If DataGrid1.Col = 4 Then
'   Call ToNumber(DataGrid1, KeyCode)
'End If
'End Sub



Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
   MsgBox "Issue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(0).Mask = DTPicker1.value
   MaskEdBox1(0).Text = DTPicker1.value
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

If Not (DTPicker2.value >= yfdate And DTPicker2.value <= pdate) Then
   MsgBox "Issue date should fall within the processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(1).Mask = DTPicker2.value
   MaskEdBox1(1).Text = DTPicker2.value
   txtfields(10).SetFocus
End If

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0

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
        Call BUTTON_Click(10)   ''Cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo Form_KeyPress_Error

    If KeyAscii = 13 Then SendKeys "({Tab})"

Exit Sub
Form_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyPress of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
SSTab1.Visible = True
DATLAB.Caption = pdate
desc.Caption = "Query"
Call QUERY_MODE
DTPicker1.MinDate = yfdate
DTPicker1.MaxDate = pdate
DTPicker1.value = pdate
'grid.RowHeader = False
BUTTON(3).Enabled = False
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
Screen.MousePointer = vbDefault
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

On Error GoTo BUTTON_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
        'Call Command6_Click
    End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
Dim iRecCnt As Integer
On Error GoTo adoPrimaryRS_MoveComplete_Error

If adoPrimaryRS.RecordCount <= 0 Then
    iRecCnt = 0
    StatusBar1.Panels(2).Text = "Records " & CStr(iRecCnt) & " of " & CStr(adoPrimaryRS.RecordCount)
Else
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
End If
If Opt <> "add" And Opt <> "mod" Then


If adoPrimaryRS.RecordCount > 0 Then
            On Error Resume Next
            
            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
            
           
            
            Set rsg = New Recordset
            rsg.Open "SELECT catname FROM rm_cat WHERE catcd='" & adoPrimaryRS("cat1") & "'", db, adOpenStatic
            Text6.Text = ""
            If rsg.RecordCount > 0 Then
                Text6.Text = rsg(0)
            End If
            
            Set rsg = New Recordset
            rsg.Open "SELECT catname FROM rm_cat WHERE catcd='" & adoPrimaryRS("cat2") & "'", db, adOpenStatic
            Text7.Text = ""
            If rsg.RecordCount > 0 Then
                Text7.Text = rsg(0)
            End If
            Set adosecondaryrs2 = New Recordset
            adosecondaryrs2.Open "SELECT a.divcode,docno,docdt,wastecode,description,wkgs FROM RM_MIXINGWASTE a,ig_rproduct b WHERE a.divcode=b.divcode and a.wastecode=b.product_code and  a.DIVCODE='" & Divcode & "' AND DOCNO=" & adoPrimaryRS("DOCNO") & " AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'", db, adOpenStatic, adLockBatchOptimistic
            If adosecondaryrs2.RecordCount > 0 Then
                Set wastegrid.DataSource = adosecondaryrs2
            Else
                Set wastegrid.DataSource = Nothing
            End If
            Call WASTEALIGN
            grddatagrid.Columns(2).Width = 2500
            grddatagrid.Columns(3).Width = 3500
            grddatagrid.Columns(4).Width = 2500
End If
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

'assigning values from adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
Combo1.DataField = "isstype"
Set Combo1.DataSource = adoPrimaryRS
Set MaskEdBox1(0).DataSource = adoPrimaryRS
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("DOCDT"), "dd/mm/yyyy")
        
End If
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 0 To 1 - 1
    txtfields(i).Locked = False
Next
MaskEdBox1(0).Enabled = True
DTPicker1.Enabled = True
'Combo1.Enabled = True
End Sub

Public Sub disablcontls()
Dim i As Integer
For i = 0 To 1 - 1
    txtfields(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
DTPicker1.Enabled = False
'Combo1.Enabled = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)

On Error GoTo grdDataGrid_AfterColEdit_Error

On Error GoTo grdDataGrid_AfterColEdit_Error

If ColIndex = 4 Then
       If val(grddatagrid.Columns(4)) > (iKgs) Then
            MsgBox "Kgs must be less than or equal to Actual Balance Kgs", vbInformation, head
            grddatagrid.Columns(4).Text = iKgs
            grddatagrid.Col = 4
            grddatagrid.SetFocus
            Exit Sub
        End If
End If
''If ColIndex = 0 Then
''   If grddatagrid.Columns(0).Text <> "" Then
''
''    If Left(Combo2.Text, 1) = "M" Or Left(Combo2.Text, 3) = "D" Then
''        Set rsa = New Recordset
''        rsa.Open "SELECT OPFLG FROM RM_LOT WHERE divcode='" & Divcode & "' and lotno='" & grddatagrid.Columns(0).Text & "' and LOTYEAR='" & Year(yfdate) & "'", db, adOpenStatic
''        If rsa.RecordCount > 0 Then
''            If rsa(0) = "N" Then
''                Set rs = New Recordset
''                rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - isnull(isswt,0),a.colorcode from rm_lot A, rm_arrival b  where a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(0).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic, adLockBatchOptimistic
''            Else
''                Set rs = New Recordset
''                rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - isnull(isswt,0),a.colorcode from rm_lot A where a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic, adLockBatchOptimistic
''            End If
''        Else
''            GoTo 10
''        End If
''    Else
''      Set rs = New Recordset
''      rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - (SELECT isnull(sum(actisskgs),0) FROM RM_issb B WHERE lotno=" & grddatagrid.Columns(0).Text & "  and divcode='" & Divcode & "'),a.colorcode,a.arrdt from rm_lot A,RM_BALE B where STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(grddatagrid.Columns(0).Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and isnull(b.rejflg,'N')='N'", db, adOpenStatic
''    End If
''      'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_BALE B WHERE ISNULL(B.ISQTY,0)= 0 and lotno=" & grddatagrid.Columns(0).Text & " ),A.netwt-isnull(sum(isnull(b.actisskgs,0)),0) from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & Val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD group by a.lotdt,a.lottype,a.varcode,a.catcd,a.bales,a.netwt", DB, adOpenStatic
''      'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_BALE B WHERE ISNULL(B.ISQTY,0)= 0 and lotno=" & grddatagrid.Columns(0).Text & " ),A.netwt-isnull(A.isswt,0) from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & Val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD group by a.lotdt,a.lottype,a.varcode,a.catcd,a.bales,a.netwt,a.isswt", DB, adOpenStatic
''      If rs.RecordCount = 0 Then
''         Set xx = New Recordset
''         xx.Open "select rejflg from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", db, adOpenStatic
''         If xx.RecordCount > 0 Then
''            If xx("rejflg") = "Y" Then
''               MsgBox "This Lot is Rejected,Please Select the another Lot", vbInformation, head
''               Exit Sub
''            Else
''               GoTo 10
''            End If
''         End If
''10:      MsgBox "The Lot was issued / not available for the selected Count. ", vbInformation, head
''         On Error Resume Next
''         grddatagrid.Columns(0).Text = ""
''         grddatagrid.COL = 0
''         grddatagrid.SetFocus
''      ElseIf rs.RecordCount > 1 Then
''         Set DataGrid2.DataSource = rs
''         SSTab1.Visible = False
''
''         Frame2.Visible = True
''         Frame2.ZOrder
''         Command4.Enabled = True
''         Command4.SetFocus
''      Else
''         xx1 = 0
''         Set ry = New Recordset
''         ry.Open "select * from rm_bale where STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grddatagrid.Columns(0).Text & "'  and lotdt='" & Format(rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'", db, adOpenStatic
''         If ry.EOF = False Then
''            Text6.Text = IIf(IsNull(ry("ARRDT")), " ", ry("arrdt"))
''         End If
''         Do While Not ry.EOF
''            xx1 = xx1 + 1
''            ry.MoveNext
''         Loop
''
''         'Text6.Text = ry("ARRDT")
''         grddatagrid.Columns(1).Text = rs(0)
''         grddatagrid.Columns(2).Text = rs(1)
''         grddatagrid.Columns(3).Text = rs(2)
''         Set Namers = New Recordset
''         Namers.Open "Select varname from rm_var where varcode='" & rs(2) & "'", db, adOpenStatic
''         If Not Namers.EOF Then
''            grddatagrid.Columns(4).Value = Namers(0)
''         End If
''         Set Namers = New Recordset
''         Namers.Open "Select colorname from rm_color where colorcode='" & rs("colorcode") & "'", db, adOpenStatic
''         If Not Namers.EOF Then
''            grddatagrid.Columns(6).Value = Namers(0)
''         End If
''         'grdDataGrid.Columns(5).Value = IIf(IsNull(rs("colorcode")), "  ", rs("colorcode"))
''         'grdDataGrid.Columns(5).Value = IIf((rs("colorcode") = "Null"), Null, rs("colorcode"))
''         grddatagrid.Columns(5).Value = rs(3)
''         'grddatagrid.Columns(6).Value = Rs(4)
''         grddatagrid.Columns(6).Value = xx1
''         grddatagrid.Columns(7).Value = rs(5)
''         grddatagrid.COL = 8
''         grddatagrid.SetFocus
''      End If
''   End If
''ElseIf ColIndex = 8 Then
''   If val(grddatagrid.Columns(8).Text) > val(grddatagrid.Columns(7).Text) Then
''      MsgBox "Issued Bales should not be greater than Closing Bales", vbInformation, head
''      grddatagrid.Columns(8).Value = grddatagrid.Columns(6).Value
''      SSTab1.Tab = 0
''      grddatagrid.Enabled = True
''      grddatagrid.Columns(8).Text = 0
''      grddatagrid.COL = 8
''      grddatagrid.SetFocus
''
''      Exit Sub
''   Else
''      'lblctrl.Visible = True
''      SSTab1.Tab = 1
''      Frame4.Visible = True
''      grid.clear
''      grid.Rows = 1
''
''      'grid.RowHeader = False
''      grid.ColAllowEdit(1) = False
''      grid.ColAllowEdit(1) = False
''      grid.ColAllowEdit(2) = False
''      grid.ColAllowEdit(3) = False
''      grid.ColAllowEdit(4) = False
''      grid.ColAllowEdit(5) = False
''      s = val(grddatagrid.Columns(8).Text)
''      'Set balers = New Recordset
''
''      'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where 1=2 ", db, adOpenDynamic, adLockBatchOptimistic
''      'Set DataGrid1.DataSource = balers
''      Command7.Enabled = True
''      Text7.Locked = False
''      Text8.Locked = False
''      Text7.Text = ""
''      Text8.Text = ""
''      Label25.Caption = ""
''      tbno = 0
''      tgwt = 0
''      ttwt = 0
''      tnwt = 0
''      taisswt = 0
''      Text3.Text = ""
''      Text10.Text = ""
''      Text11.Text = ""
''      Text4.Text = ""
''      grid.Enabled = True
''
''      grddatagrid.Enabled = False
''      Command1.Enabled = False
''      Frame1.Visible = True
''      Frame1.Enabled = True
''
''      If Text7.Enabled = True And Text7.Visible = True Then Text7.SetFocus
''
''      Set avilbalers = New Recordset
''      avilbalers.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
''      Set grdData.DataSource = avilbalers
''
''
''      'grid.SetFocus
''      '-------10-05-06
'''      Set balers = New Recordset
'''      ''''
''''''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'''      Set DataGrid1.DataSource = balers
''
''      '----------10-05-06
'''    'Set rs1 = New Recordset
'''    'rs1.Open "select (NETWT-ISNULL(ISQTY,0))""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and netwt-isnull(isqty,0) >0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenStatic, adLockBatchOptimistic
'''    ' rs1.MoveFirst
'''     DataGrid1.Row = 0
'''     row1 = rs1.AbsolutePosition - 1
'''     On Error Resume Next
'''     Do While Not rs1.EOF
'''     DataGrid1.Columns(3).Value = rs1(0)
'''     'DataGrid1.Columns(4).Value = rs1(1)
'''     DataGrid1.Row = DataGrid1.Row + 1
'''     rs1.MoveNext
'''     Loop
''
'''      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'''      DataGrid1.Row = 0
'''      DataGrid1.Col = 4
'''      DataGrid1.Enabled = True
'''      DataGrid1.Enabled = True
'''      DataGrid1.AllowUpdate = True
'''      DataGrid1.EditActive = True
'''      DataGrid1.Columns(2).Locked = True
'''      DataGrid1.Columns(0).Locked = True
'''      DataGrid1.Columns(1).Locked = True
'''      DataGrid1.Columns(3).Locked = False
'''      DataGrid1.Columns(4).Locked = False
'''      DataGrid1.Columns(4).Text = Empty
'''      DataGrid1.Columns(4).Width = 1980.284
'''      DataGrid1.Columns(3).Width = 1980.284
'''      DataGrid1.Columns(2).Width = 1085.166
'''      DataGrid1.Columns(1).Width = 1250.142
'''      DataGrid1.Columns(0).Width = 1544.882
'''      DataGrid1.Columns(1).Alignment = dbgRight
'''      DataGrid1.Columns(2).Alignment = dbgRight
'''      DataGrid1.Columns(3).Alignment = dbgRight
'''      DataGrid1.Columns(4).Alignment = dbgRight
'''      DataGrid1.Columns(4).NumberFormat = "######.000"
'''      DataGrid1.Columns(3).NumberFormat = "######.000"
'''      DataGrid1.Columns(2).NumberFormat = "######.000"
'''      DataGrid1.Columns(1).NumberFormat = "######.000"
'''      grdDataGrid.Enabled = False
'''      Command1.Enabled = True
'''      Frame1.Visible = True
'''      Frame1.Enabled = True
'''      'txtfields(3).SetFocus
'''      SSTab1.SetFocus
''   End If
''End If


Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_Click()
On Error GoTo grddatagrid_Click_Error

If Opt = "" Or Opt = " " Then
'   If grddatagrid.row > 0 Then
'      Set RS1 = New Recordset
'      'rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' AND LOTDT='" & Format(Trim(grdDataGrid.Columns(0).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", db, adOpenStatic, adLockBatchOptimistic
'      RS1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(4).Text) & "' AND LOTDT='" & Format(Trim(grddatagrid.Columns(5).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", DB, adOpenStatic, adLockBatchOptimistic
'      Set DataGrid1.DataSource = RS1
'      DataGrid1.Columns(0).Width = 1000
'      DataGrid1.Columns(1).Width = 2000
'      DataGrid1.Columns(2).Width = 2000
'      DataGrid1.Columns(3).Width = 3000
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'   End If
End If

Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_Click of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form frmMixingIssue", vbInformation, head
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
        'Call BUTTON_Click(3)    ''List
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "add" Then
    If (KeyAscii = 13 Or KeyAscii = 9) And grddatagrid.Col = 4 Then
        'Call grdDataGrid_AfterColEdit(8)
        'grddatagrid.AllowAddNew = True
        adoSecondaryRS.AddNew
        'grddatagrid.AllowAddNew = True
        'grddatagrid.row = grddatagrid.row + 1
        grddatagrid.Col = 1
        grddatagrid.SetFocus
         MaskEdBox1(0).Enabled = False
        'TxtIsskgs.SetFocus
    End If
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Then
If grddatagrid.Col = 3 Then
    Set Rs = New Recordset
    Rs.Open "Select a.varcode,varname from rm_Mixingstock a,rm_var b where (isskgs-Mixkgs)>0 and a.varcode=b.varcode AND A.ISSTYPE='" & txtfields(10).Text & "'", db, adOpenStatic
           
        If Rs.RecordCount > 0 Then
            LookUp.clear = True
            LookUp.query = "Select distinct a.varcode as Varietycode,varname as Variety,B.CATCD""CategoryCode"",isnull(sum(ISSKGs),0)-isnull(sum(MixKGS),0) as BalanceKgs from rm_Mixingstock a,rm_var b where  A.ISSTYPE='" & txtfields(10).Text & "' AND a.varcode=b.varcode Group by a.varcode,varname,b.catcd having (isnull(sum(ISSKGs),0)-isnull(sum(MixKGS),0)) >0 "
            LookUp.Caption = "Stock Listing"
            LookUp.DefCol = "Variety"
            LookUp.ALIGN = "1200,2500,1500,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    'Dim rsn As Recordset
                    Set rsn = New Recordset
                     rsn.DataSource = adoSecondaryRS
                     If rsn.RecordCount > 0 Then rsn.MoveFirst
                     For i = 1 To rsn.RecordCount - 1
                            If LookUp.Fields(0) = rsn("VARCODE") Then
                                MsgBox "Already Exists in Grid", vbInformation, head
                                rsn.MoveLast
                                grddatagrid.Col = 2 ''3
                                grddatagrid.SetFocus
                                Exit Sub
                            End If
                            rsn.MoveNext
                     Next
                     If rsn.RecordCount > 0 Then rsn.MoveLast
                grddatagrid.Columns(2) = LookUp.Fields(0) ''varcode
                grddatagrid.Columns(3) = LookUp.Fields(1) ''varname
                iKgs = LookUp.Fields(3)
                grddatagrid.Columns(4) = LookUp.Fields(3) ''kgs
                grddatagrid.Columns(5) = LookUp.Fields(2) ''catcd
                Label19.Visible = True
                LookUp.clear = True
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                Exit Sub
           End If
    Else
        MsgBox "No Balance kgs available", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    End If
    End If
End If


'    If Opt = "add" Then
'    If grddatagrid.COL = 5 Then
'        'Call grdDataGrid_AfterColEdit(8)
'        grddatagrid.AllowAddNew = True
'        adoSecondaryRS.AddNew
'        'grddatagrid.row = grddatagrid.row + 1
'        grddatagrid.COL = 1
'        grddatagrid.SetFocus
'         MaskEdBox1(0).Enabled = False
'        'TxtIsskgs.SetFocus
'    End If
'End If


If Opt = "add" Or Opt = "mod" Then
   If grddatagrid.Col = 0 Then
      StatusBar1.Panels(2).Text = "Enter Lot Number"
   End If
   If grddatagrid.Col = 1 Then
      StatusBar1.Panels(2).Text = "Enter Valid Date"
   End If
   If grddatagrid.Col = 2 Then
      StatusBar1.Panels(2).Text = "Enter Variety Code"
   End If
   If grddatagrid.Col = 3 Then
      StatusBar1.Panels(2).Text = "Enter Variety Name"
   End If
    If grddatagrid.Col = 6 Then
      StatusBar1.Panels(2).Text = "Enter Category"
   End If
   If grddatagrid.Col = 7 Then
      StatusBar1.Panels(2).Text = "Enter Closing Bales"
   End If
   If grddatagrid.Col = 8 Then
      StatusBar1.Panels(2).Text = "Enter Closing Weights"
   End If
   If grddatagrid.Col = 9 Then
      StatusBar1.Panels(2).Text = "Enter Issued Bales"
   End If
End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form frmMixingIssue", vbInformation, head
End Sub
Private Sub Grid_DblClick()
On Error GoTo grid_DblClick_Error

If Opt = "add" Then
Grid.TextMatrix(Grid.Row, 6) = "N"
End If
If val(grddatagrid.Columns(8).Text) = val(tbno) Then
Command1.Enabled = True
Else
Command1.Enabled = False
End If

Exit Sub
grid_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid_DblClick of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

'''Private Sub MaskEdBox1_Change(Index As Integer)
'''If Opt = "add" Or Opt = "mod" Then
'''   Select Case Index
'''   Case 0
'''      If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'''         If Not (IsDate(MaskEdBox1(0).Text)) Then
'''            MsgBox ("invalid date")
'''            MaskEdBox1(0).Text = pdate
'''            MaskEdBox1(0).SetFocus
'''         ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
'''            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
'''            MaskEdBox1(0).SetFocus
'''         End If
'''      End If
'''   End Select
'''End If
'''End Sub

Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form frmMixingIssue", vbInformation, head
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
        ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
           MsgBox "ATL Date must be before Arrival Date", vbInformation, head
           MaskEdBox1(2).Text = MaskEdBox1(0).Text
        End If
     End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
'Private Sub Text7_LostFocus()
'Set balers = New Recordset
''balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
''If balers.RecordCount > 0 Then
''Label25.Caption = balers("net weight")
'''Else
'''MsgBox " This Baleno  Already issued", vbInformation, head
'''Text7.SetFocus
''End If
'End Sub




Private Sub Option1_Click()
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
'    cmd_report.Visible = True
End Sub

Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

Frame8.Visible = False
Frame9.Visible = True
TxtIsskgs.Text = " "
If TxtIsskgs.Enabled = False Then TxtIsskgs.Enabled = True
If TxtIsskgs.Visible = False Then TxtIsskgs.Visible = True
If SSTab1.Tab = 1 Then TxtIsskgs.SetFocus

Exit Sub
Option2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_Click of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option1_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame9.Visible = True Then
        Frame9.Visible = False
        UserFooter1.Visible = False
'        cmd_report.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
'    cmd_report.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame9.Visible = True Then
        Frame9.Visible = False
        UserFooter1.Visible = False
'        cmd_report.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Then
   Select Case Index
    Case 10
        Set Rs = New Recordset
        Rs.Open "select issue_desc from rm_issuetype where issue_code='" & txtfields(10).Text & "'", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text3.Text = Rs(0)
        End If
        Rs.Close
    Case 1
        Set Rs = New Recordset
        Rs.Open "select description from ig_product where product_code='" & txtfields(1).Text & "'", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text5.Text = Rs(0)
        End If
        Rs.Close
   Case 8
        Set Rs = New Recordset
        Rs.Open "select mixgrpname from rm_mixgrp where mixgrpcd='" & txtfields(8).Text & "' and DivCode = '" & Divcode & "'", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text12.Text = Rs(0)
        End If
        Rs.Close
    
   
     Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text2.Text = Rs(0)
        End If
        Rs.Close
     Case 3
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & txtfields(3).Text & "' ", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text1.Text = Rs(0)
        Else
           Text1.Text = ""
        End If
        Rs.Close
     Case 11
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & txtfields(11).Text & "' ", db, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text15.Text = Rs(0)
        Else
           Text15.Text = ""
        End If
        Rs.Close
   End Select
End If
If Opt = "" Or Opt = " " Then
   Select Case Index
      Case 4
         txtfields(4).Text = Format(txtfields(4).Text, "#0.000")
      Case 5
         txtfields(5).Text = Format(txtfields(5).Text, "#0.000")
   End Select
End If


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
If Opt = "add" Or Opt = "mod" Then
    txtfields(Index).BackColor = &HC0FFC0
End If
If Opt = "add" Then
   Select Case Index
     Case 2
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            KslList1.Visible = True
'            KslList1.conn = connectstring
'            KslList1.listfield1width = 5500
'            KslList1.listfield1width = 3500
'
'            KslList1.table = "fa_slmas where slcode like 'C1%'"
'            KslList1.listfield1 = "slname as SupplierName,city as City"
'            KslList1.listfield2 = "slcode as SupplierCode"
'            KslList1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            KslList1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If
        End Select
    End If
    If Opt = "add" Or Opt = "mod" Then
          Select Case Index
               Case 0
                    StatusBar1.Panels(2).Text = "Enter Issue Number"
               Case 1
                    StatusBar1.Panels(2).Text = "Enter Count"
               Case 2
                    StatusBar1.Panels(2).Text = "Enter Party Name"
               Case 3
                    StatusBar1.Panels(2).Text = "Enter oil Code"
               Case 4
                    StatusBar1.Panels(2).Text = "Enter oil Weight"
               Case 5
                    StatusBar1.Panels(2).Text = "Enter water weight"
          End Select
    End If
'------------------------------------From Lost Focus
     If Opt = "add" Then
        Select Case Index
        Case 1
                    
'        If Combo1.Text = "PR--PRODUCTION" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
'            LookUp.clear = True
'            If Combo2.Text = "D-Dying" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select cntcd,cntname from rm_count"
'            Flag = ""
'             LookUp.Caption = "Count Details"
'            LookUp.DefCol = "CNTNAME"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'                Exit Sub
'            Else
'            Exit Sub
'
'            End If
'            txtfields(13).SetFocus
'            ElseIf Combo2.Text = "M-Mixing" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select product_code,long_desc1 FROM ig_product"
'            LookUp.Caption = "Count Details"
'            LookUp.DefCol = "long_desc1"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'
'            Else
'            LookUp.clear = True
'            'lookup.
'            txtfields(1).SetFocus
'
'            End If
'            End If
'
'
'
'
'
'         Else
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            ksllist1.Visible = True
'            ksllist1.conn = connectstring
'            ksllist1.listfield1width = 5500
'            ksllist1.listfield1width = 3500
'
'            ksllist1.table = "fa_slmas where slcode like 'C1%'"
'            ksllist1.listfield1 = "slname as SupplierName,city as City"
'            ksllist1.listfield2 = "slcode as SupplierCode"
'            ksllist1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            ksllist1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If
'
'        End If
        
        Case 3
              If str <> "n" Then
                str = "n"
                Set Rs = New Recordset
                Rs.Open "select count(*) from rm_oil", db
            If Not Rs(0) = 0 Then
            Else
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
            End If
        Case 2
            On Error Resume Next
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        
        
        End Select
End If


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form frmMixingIssue", vbInformation, head
End Sub
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Index = 0 And Opt = "add" And KeyAscii = 13 Then
      If Combo1.Text = "P-Production" And Trim(txtfields(0)) <> "" Then
         txtfields(7).Text = UCase(txtfields(7).Text)
         Set Rs = New Recordset
         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
         Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
         txtfields(0).Text = Rs(0)
         Call adddelmod(BUTTON)
         BUTTON(9).Enabled = False
         BUTTON(9).ToolTipText = "Add Record"
         txtfields(0).Locked = True
         MaskEdBox1(0).Text = pdate
         txtfields(0).SetFocus
         SSTab1.TabEnabled(1) = True
      End If
   End If

If Opt = "" Or Opt = " " Or Opt = "del" Then
   KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 1, 3
        ToUpCase txtfields(Index), KeyAscii
    Case 16, 18
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
   Case 4, 5, 9, 12
        Call ToNumberAssign(txtfields(Index), 8, KeyAscii, 8, 3)
   End Select
End If


Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 16, 18
                
                If val(txtfields(Index)) > 100 Then
                    MsgBox "Percentage must be between Zero and 100", vbInformation, head
                    txtfields(Index).SetFocus
                    Exit Sub
                End If

                TOTPER = val(txtfields(16).Text) + val(txtfields(18).Text)
                If TOTPER > 100 Then
                    txtfields(Index).Text = ""

                    MsgBox "Total Percentage must be Hundred", vbInformation, head
                End If

                If Index = 18 Then
                    If TOTPER <> 100 Then
                        txtfields(Index).Text = ""
                        txtfields(Index).SetFocus
                        MsgBox "Total Percentage must be Hundred", vbInformation, head
                    End If
                End If
    End Select
   If Index = 5 Then
      txtfields(5).Text = Format(txtfields(5).Text, "#0.000")
      SSTab1.Tab = 1
      wastegrid.Col = 3
      wastegrid.SetFocus
      Exit Sub
   End If
   If Index = 12 Then
      txtfields(12).Text = Format(txtfields(12).Text, "#0.000")
   End If
   If Index = 13 Then
      txtfields(5).Text = UCase(txtfields(5).Text)
   End If
   If Index = 4 Then
      txtfields(4).Text = Format(txtfields(4).Text, "#0.000")
   End If
   If Index = 9 Then
      txtfields(9).Text = Format(txtfields(9).Text, "#0.000")
   End If
   If Index = 6 Then
      txtfields(6).Text = UCase(txtfields(6).Text)
   End If
   If Index = 5 Then
      grddatagrid.Enabled = True
      grddatagrid.Col = 2
      grddatagrid.SetFocus
    End If
      'DataGrid1.Columns(0).Text = DataGrid1.row + 1
      'DataGrid1.COL = 1
      'DataGrid1.SetFocus


      
   'End If
   If Index = 0 And Opt = "add" Then
      If Combo1.Text = "PR--PRODUCTION" And Trim(txtfields(0)) = "" Then
         'txtFields(7).Text = UCase(txtFields(7).Text)
         Set Rs = New Recordset
         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
         Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
         txtfields(0).Text = Rs(0)
         Call adddelmod(BUTTON)
         BUTTON(9).Enabled = False
         BUTTON(9).ToolTipText = "Add Record"
         txtfields(0).Locked = True
         MaskEdBox1(0).Text = pdate
         txtfields(0).SetFocus
         SSTab1.TabEnabled(1) = True
      End If
   End If
End If
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 3, 11
   
   'If Txtfields(3).Text <> "" Or Txtfields(11).Text <> "" Then
         Set Rs = New Recordset
           Rs.Open "select oilcode from rm_oil where oilcode='" & Trim(txtfields(Index).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
           If Rs.RecordCount = 0 Then
              Set Rs = New Recordset
              Rs.Open "select count(*) from rm_oil", db
              If Not Rs(0) = 0 Then
                 If Index = 3 Then
                    Call LookuPLoad("oilCode""Oil Code""", "Oildesc""Oil Description""", "rm_oil", txtfields(4), txtfields(4), txtfields(3), txtfields(1), "Oil Listing")
                 End If
                 If Index = 11 Then
                    Call LookuPLoad("oilCode""Oil Code""", "Oildesc""Oil Description""", "rm_oil", txtfields(12), txtfields(12), txtfields(11), txtfields(1), "Oil Listing")
                 End If
              Else
                 MsgBox "No record Found"
                 Screen.MousePointer = 0
                 Exit Sub
              End If
           End If
    'End If
        
If Index = 1 Then
    txtfields(1).SetFocus
End If
   End Select
End If
If Opt = "add" Or Opt = "mod" Then
    txtfields(Index).BackColor = &HFFFFFF
End If
Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form frmMixingIssue", vbInformation, head
End Sub

Public Sub GRIDALIGN()

If Opt = "mod" Then

Else

   grddatagrid.Columns(3).Locked = True
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(7).Visible = False
    grddatagrid.Columns(2).Caption = "Code"
    grddatagrid.Columns(3).Caption = "Variety"
    grddatagrid.Columns(4).Caption = "Kgs"
    grddatagrid.Columns(5).Caption = "Catcd"
    grddatagrid.Columns(5).Visible = False 'True
    grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(7).Visible = False
    grddatagrid.Columns(8).Visible = False
    grddatagrid.Columns(9).Visible = False
    grddatagrid.Columns(10).Visible = False
    grddatagrid.Columns(2).Width = 3000
    grddatagrid.Columns(3).Width = 3500       ''1635.024
    grddatagrid.Columns(4).Width = 2000       ''1425.26
    grddatagrid.Columns(5).Width = 1100       ''1860.095
    grddatagrid.Columns(6).Width = 1100       ''1860.095
    grddatagrid.Columns(7).Width = 800

grddatagrid.Columns(3).NumberFormat = "###.000"
grddatagrid.Columns(4).NumberFormat = "###.000"
grddatagrid.Columns(5).NumberFormat = "###.000"
grddatagrid.Columns(6).NumberFormat = "###.000"

grddatagrid.Columns(2).Alignment = dbgLeft
grddatagrid.Columns(3).Alignment = dbgLeft
grddatagrid.Columns(4).Alignment = dbgRight
grddatagrid.Columns(5).Alignment = dbgCenter
grddatagrid.Columns(6).Alignment = dbgCenter
grddatagrid.Columns(7).Alignment = dbgCenter


grddatagrid.Columns(11).Visible = False
If Opt <> "add" Or Opt <> "mod" Or Opt <> "del" Then
        'grddatagrid.Columns(9).Visible = False
        'grddatagrid.Columns(10).Visible = False
End If

End If
End Sub

Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

If Opt = " " Or Opt = "" Then
Set adoPrimaryRS = New Recordset
                     
adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,DOCNO,DOCDT,isnull(mixno,0),TINT,OILCODE1,OILWT1,OILCODE2,OILWT2,WTRWT,CNTCD,ORDNO,MIXGRP,TINT,isstype,cat1,cat2,catper1,catper2 FROM RM_mixingHd  " & _
                     "  where DIVCODE = '" & Divcode & "'" & _
                     " Order by DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT DIVCODE,DOCNO,DOCDT,issLOTDT ""Date"",a.VARCODE""code"",varname ""Variety"" ,kgs ""Issued Kgs"",isslotno""Lot No"",issno,issdt,isstype  FROM RM_MixingDt a ,rm_var b" & _
                     " where a.varcode=b.varcode order by docno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic

    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        adoPrimaryRS.MoveLast
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
    
    Set adoSecondaryRS = New Recordset
    
                      
    
    '''adoSecondaryRS.Open "SELECT divcode,docno,a.varcode,b.varname,kgs,b.catcd,docdt,isslotno,isslotdt,issdt,issno  FROM RM_MIXINGDT a,rm_var b WHERE a.varcode=b.varcode and a.docno=" & adoPrimaryRS("Docno"), db, adOpenStatic, adLockBatchOptimistic
    Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
    
  
    Set grddatagrid.DataSource = adoSecondaryRS
    
    Set adosecondaryrs2 = New Recordset
    adosecondaryrs2.Open "SELECT a.divcode,docno,docdt,wastecode,description,wkgs FROM RM_MIXINGWASTE a,ig_rproduct b WHERE a.divcode=b.divcode and a.wastecode=b.product_code and  a.DIVCODE='" & Divcode & "' AND DOCNO=" & adoPrimaryRS("DOCNO") & " AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'", db, adOpenStatic, adLockBatchOptimistic
    If adosecondaryrs2.RecordCount > 0 Then
        Set wastegrid.DataSource = adosecondaryrs2
    Else
        Set wastegrid.DataSource = Nothing
    End If
    Call WASTEALIGN
    
    ''Call GRIDALIGN
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    'grddatagrid.Columns(6).Visible = False
    grddatagrid.Columns(7).Visible = False
     grddatagrid.Columns(8).Visible = False
     grddatagrid.Columns(9).Visible = False
     grddatagrid.Columns(10).Visible = False
     grddatagrid.Columns(4).Locked = True
     grddatagrid.Columns(5).Locked = True
     grddatagrid.AllowUpdate = False
     Frame2.Visible = True
     grddatagrid.Visible = True
    If Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
    End If
   

    'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     Call disablcontls
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
     'Call DisplayVal
     SSTab1.Tab = 0
     StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
     Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
       Call disablcontls
       Call Norecfound(BUTTON)
       Dim rst As Recordset
       Set rst = New Recordset
       rst.Open "select * from rm_mixingDt where 1=2", db, adOpenDynamic, adLockOptimistic
       grddatagrid.ClearFields
       Call ClearAll
       SSTab1.Tab = 0
       Buttonframe.Enabled = True
       Call NEWFORM1(BUTTON, GSNO)
       'BUTTON(0).SetFocus
  End If
End If


Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form frmMixingIssue", vbInformation, head
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error

Set Rs = New Recordset
Rs.Open "select a.docno,a.docdt from rm_MixingHd a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
   
   StatusBar1.Panels(2).Text = "Select Any Document Number For Deletion"
   
         LookUp.clear = True
         LookUp.query = "select distinct a.docno""IssueNo"",a.docdt""IssueDate"" from rm_mixinghd a where a.divcode='" & Divcode & "' and docno in (select max(docno) from rm_MixingHd a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
         LookUp.Caption = "Mixing Issue Listing"
         LookUp.DefCol = "IssueNo"
         LookUp.ALIGN = "1500,1500,1500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
             txtfields(0).Text = LookUp.Fields(0)
             MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/mm/yyyy")
             MaskEdBox1(0).Text = MaskEdBox1(0).Mask
             a = txtfields(0).Text
             b = MaskEdBox1(0).Text
             'Text1.Text = ""
             Call delmodproc(CStr(a), CStr(b))
         Else
         Opt = ""
         desc.Caption = "Query"
         Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Opt = ""
    Call QUERY_MODE
    Screen.MousePointer = 0
    Call disablcontls
    grddatagrid.Enabled = True
   ' lblctrl.Visible = False
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Frame3.Visible = False
    Frame1.Visible = True
         End If
'''   KslList1.Visible = True
'''   KslList1.conn = connectstring
'''
'''   KslList1.listfield1width = 2500
'''   KslList1.listfield2width = 5500
'''   KslList1.Caption = "Issue Details"
'''   Label15.Caption = "Issue Details"
'''   KslList1.table = "rm_issh"
'''   KslList1.listfield1 = "docno"
'''   KslList1.listfield2 = "docdt"
'''
'''   Frame3.Visible = True
'''   Frame3.ZOrder
'''   KslList1.SetFocus
Else
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
'If Opt = "add" Then DB.BeginTrans


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form frmMixingIssue", vbInformation, head
End Sub

Public Sub delmodproc(a As String, b As String)
On Error GoTo delmodproc_Error

If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
   'adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
                                          
    adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,DOCNO,DOCDT,isnull(mixno,0),TINT,OILCODE1,OILWT1,OILCODE2,OILWT2,WTRWT,CNTCD,ORDNO,MIXGRP,TINTWT,isstype,cat1,cat2,catper1,catper2 FROM RM_mixingHd  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT DIVCODE,DOCNO,DOCDT,issLOTDT ""Date"",a.VARCODE""code"",varname ""Variety"" ,kgs ""Issued Kgs"",isslotno""Lot No"",issno,issdt,isstype  FROM RM_MixingDt a ,rm_var b" & _
                     " where a.varcode=b.varcode and docno = '" & Trim(txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' order by docno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
   If Not adoPrimaryRS.EOF Then
      Call bindcontls
'      If adoPrimaryRS("isstype") = "PR" Then
'         Combo1.Text = "PR-Production"
'      ElseIf adoPrimaryRS("isstype") = "T2" Then
'         Combo1.Text = "T2-Transfer To unit2"
'         ElseIf adoPrimaryRS("isstype") = "T3" Then
'         Combo1.Text = "T3-Transfer To unit3"
'      ElseIf adoPrimaryRS("isstype") = "SA" Then
'         Combo1.Text = "SA-Sales"
'      End If
      
'        If adoPrimaryRS("ISSTO") = "M" Then
'           Combo2.Text = "M-Mixing"
'        ElseIf adoPrimaryRS("ISSTO") = "D" Then
'           Combo2.Text = "D-Dying"
'        End If
      
      Call disablcontls
      SSTab1.TabVisible(1) = False
      SSTab1.TabEnabled(1) = False
      
      Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
      Set grddatagrid.DataSource = adoSecondaryRS
      Call GRIDALIGN
      
      grddatagrid.Columns(0).Visible = False
      grddatagrid.Columns(1).Visible = False
      grddatagrid.Columns(2).Visible = False
      grddatagrid.Columns(3).Visible = False
      'grddatagrid.Columns(6).Visible = False
      grddatagrid.Columns(7).Visible = False
      grddatagrid.Columns(8).Visible = False
      grddatagrid.Columns(9).Visible = False
      grddatagrid.Columns(4).Locked = True
      grddatagrid.Columns(5).Locked = True
    

      SSTab1.Tab = 0
      Frame1.Visible = True
      grddatagrid.AllowUpdate = False
   '   TXTFIELDS(3).Locked = False
   '   TXTFIELDS(4).Locked = False
   '   TXTFIELDS(6).Locked = False
    '  Frame2.Visible = True
   '   Text4.Visible = True
      grddatagrid.AllowUpdate = True
      'grddatagrid.AllowAddNew = True
      Screen.MousePointer = 0
    '  Call GRIDALIGN
   Else
      Set grddatagrid.DataSource = Nothing
   End If
Else
   BUTTON(9).Enabled = True
   Set adoPrimaryRS = New Recordset
   'adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({(SELECT distinct a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARCODE""Variety"",a.CATCD""Category"",b.ISSwt""Issued Kgs"",b.issbal""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and  docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "') Order by A.LOTno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
                     
    adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,DOCNO,DOCDT,isnull(mixno,0),TINT,OILCODE1,OILWT1,OILCODE2,OILWT2,WTRWT,isstype,cat1,cat2,catper1,catper2 FROM RM_mixingHd  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,DOCNO,DOCDT,issLOTDT ""Date"",a.VARCODE""code"",varname ""Variety"" ,kgs ""Issued Kgs"",isslotno""Lot No"",issno,issdt,c.catcd,isstype  FROM RM_MixingDt a ,rm_var b,rm_lot c" & _
                     " where a.varcode=b.varcode and docno = '" & Trim(txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and c.varcode=a.varcode order by docno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
                     
   Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
   Set grddatagrid.DataSource = adoSecondaryRS
   'Call GRIDALIGN
   Call bindcontls
   SSTab1.Visible = True
   grddatagrid.Visible = True
   grddatagrid.AllowAddNew = False
    grddatagrid.Columns(0).Visible = False
     grddatagrid.Columns(1).Visible = False
     grddatagrid.Columns(2).Visible = False
     grddatagrid.Columns(3).Visible = False
     'grddatagrid.Columns(6).Visible = False
     grddatagrid.Columns(7).Visible = False
     grddatagrid.Columns(8).Visible = False
     grddatagrid.Columns(9).Visible = False
     grddatagrid.Columns(10).Visible = False
     grddatagrid.Columns(4).Locked = True
     grddatagrid.Columns(5).Locked = True
    

End If
If Opt = "mod" Then
   txtfields(3).Locked = False
   txtfields(4).Locked = False
   txtfields(6).Locked = False
   Frame2.Visible = True
   grddatagrid.AllowUpdate = True
   grddatagrid.AllowAddNew = True
   Screen.MousePointer = 0
   Call GRIDALIGN
End If
Screen.MousePointer = 0


Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form frmMixingIssue", vbInformation, head
End Sub

Public Sub navi1(tol As Object)
tol(0).Enabled = True 'ADD
'tol(1).Enabled = True 'MOD
tol(2).Enabled = True 'DEL
On Error Resume Next
'  tol(3).Enabled = True 'LIST
tol(4).Enabled = False 'QUERY
tol(9).Enabled = False 'SAVE
tol(10).Enabled = False 'CANCEL
tol(11).Enabled = True  'EXIT
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

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index


Case 17, 19

        If Index = 17 Then GG = 19
        If Index = 19 Then GG = 17
        
        

        Set Rs = New Recordset
        Rs.Open "select catcd""Category"",catname""Description""  from rm_cat where catcd='" & txtfields(Index).Text & "' and catcd not in ('" & CStr(txtfields(GG).Text) & "')", db, adOpenStatic
                
        If Rs.RecordCount = 0 Then
            LookUp.query = "select catcd""Category Name"",catname""Category Description""  from rm_cat WHERE catcd not in ('" & CStr(txtfields(GG).Text) & "')"
            LookUp.Caption = "Category Listing"
            LookUp.DefCol = "Category Description"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                If Index = 17 Then Text6.Text = LookUp.Fields(1)
                If Index = 19 Then Text7.Text = LookUp.Fields(1)
                LookUp.clear = True
                If Index = 17 Then txtfields(16).SetFocus
                If Index = 19 Then txtfields(18).Text = CStr(100 - val(txtfields(16).Text)): txtfields(18).SetFocus
                Exit Sub
            Else
                txtfields(Index).Text = ""
                If Index = 17 Then Text6.Text = ""
                If Index = 19 Then Text7.Text = ""
                If Index = 17 Then txtfields(16).SetFocus
                If Index = 19 Then txtfields(18).SetFocus
            End If
        Else
                If Index = 17 Then Text6.Text = Rs(1)
                If Index = 19 Then Text7.Text = Rs(1)
                LookUp.clear = True
                If Index = 17 Then txtfields(16).SetFocus
                If Index = 19 Then txtfields(18).SetFocus
                Exit Sub
        End If


        

Case 14
Case 8
    Call MixgrpLookup
    txtfields(13).SetFocus
Case 1
Set Rs = New Recordset

           
            LookUp.clear = True
            Set rsd = New Recordset
            rsd.Open "select description from ig_product where product_code='" & txtfields(1).Text & "'", db
            If rsd.RecordCount > 0 Then
                Text5.Text = rsd(0)
            Else
            LookUp.query = "Select Distinct Product_code""Count Code"",Description""Count Description"" FROM ig_product"
            LookUp.Caption = "Count Listing"
            LookUp.DefCol = "Count Description"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(1).Text = LookUp.Fields(0)
                Text5.Text = LookUp.Fields(1)
                txtfields(13).SetFocus
                LookUp.clear = True
                Call MixgrpLookup
            Else
                LookUp.clear = True
                txtfields(1).SetFocus
                Exit Sub
            End If
            End If
 Case 8
            Set Rs = New Recordset
            Rs.Open "select * from fa_slmas where slcode='" & Trim(txtfields(8).Text) & "' and slcode like 'c1%'", db, adOpenStatic
             
             If Rs.RecordCount = 0 Then
                LookUp.clear = True
                LookUp.query = "Select Slcode as Code,slname as Name FROM fa_slmas where slcode like 'c1%'"
                LookUp.Caption = "Supplier Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                        txtfields(8).Text = LookUp.Fields(0)
                        txtfields(8).Locked = False
                        Text5.Text = LookUp.Fields(1)
                        grddatagrid.Col = 0
                        LookUp.clear = True
                        grddatagrid.Enabled = True
                        grddatagrid.SetFocus
                Else
                    txtfields(1).SetFocus
                End If
            Else
                Text5.Text = Rs("slname")
            End If
Case 10
            Set rsg = New Recordset
            rsg.Open "select * from rm_issuetype where issue_code='" & txtfields(10).Text & "' and isstype='P'", db, adOpenStatic
            
            If rsg.RecordCount > 0 Then
                txtfields(10).Text = rsg("issue_code")
                Text3.Text = rsg("issue_desc")
            Else
                LookUp.clear = True
                LookUp.query = "Select issue_code""Issue Type Code"",issue_desc""Issue Type Name"" FROM rm_issuetype WHERE isstype='P'"
                LookUp.Caption = "Issue Type Listing"
                LookUp.DefCol = "Issue Type Name"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(10).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    txtfields(1).SetFocus
                Else
                    txtfields(10).SetFocus
                End If
            End If
Case 13
    txtfields(13).Text = UCase(txtfields(13).Text)
    If Trim(txtfields(3).Text) <> "" Then
        Dim os As New Recordset
        Set os = New Recordset
        os.Open "select * from rm_oil where oilcode = '" & Trim(txtfields(3).Text) & "'", db
        If os.RecordCount > 0 Then
            txtfields(3).Text = os(0)
            Text1.Text = os(1)
        Else
            Ksllist1.Visible = True
            Ksllist1.conn = connectstring
            Ksllist1.Table = "rm_oil"
            Ksllist1.listfield1width = 2500
            Ksllist1.listfield2width = 7500
            Ksllist1.listfield1 = "oilcode"
            Ksllist1.listfield2 = "oildesc"
            Ksllist1.Caption = "oil Details"
            Frame3.Visible = True
            Frame3.ZOrder
            Ksllist1.SetFocus
        End If
End If
End Select
End If


Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form frmMixingIssue", vbInformation, head
End Sub



Private Sub Format_Grid()
On Error GoTo Format_Grid_Error

On Error GoTo Format_Grid_Error

Grid.clear
Grid.Rows = 2
Grid.FormatString = "^Baleno       |^Gr|^Net Wght                    |^Issue Qty        |^Act Issue Kgs         |^Issued    "

Exit Sub
Format_Grid_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Format_Grid of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub TxtIsskgs_KeyPress(KeyAscii As Integer)
On Error GoTo TxtIsskgs_KeyPress_Error

If KeyAscii = 13 Then
    SendKeys "{tab}"
End If

Exit Sub
TxtIsskgs_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TxtIsskgs_KeyPress of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TxtIsskgs_LostFocus()
On Error GoTo TxtIsskgs_LostFocus_Error

On Error Resume Next

            db.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            db.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(0).Text) & "' and Catcd = '" & grddatagrid.Columns(5).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            twt = 0
            TEMP = val(TxtIsskgs.Text)
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", db, adOpenStatic
            If Rs.RecordCount > 0 Then
                Rs.MoveFirst
                t1bales = 0
                While Not Rs.EOF And TEMP > 0
                            If balers(4) > TEMP Then
                        t1bales = t1bales + 1
                         TEMP = TEMP - val(TxtIsskgs.Text)
                    Else
                        t1bales = t1bales + 1
                        TEMP = TEMP - balers(4)
                    End If
                    balers.MoveNext
                Wend
            End If
            
            
        Txtissbale.Text = t1bales
        Command7.SetFocus

Exit Sub
TxtIsskgs_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TxtIsskgs_LostFocus of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub gatepass(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
    Rs.Open "select distinct slname,add3,a.isstype from rm_issb a,rm_lot c,fa_slmas b where a.lotno=c.lotno and a.lotdt=c.lotdt and  c.supcd=b.slcode and a.divcode=c.divcode  and c.divcode = '" & Divcode & "'   AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  docno = " & Trim(val(txtfields(0).Text)) & "  Order by slname ", db, adOpenStatic
    Print #a, Space(3) + Padr("DC for Gatepass List ", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    
    Print #a, Space(3) + "        Please Allow The Following Materials Through         "
    
    If Rs(2) = "T3" Then
        g = "UNIT-III"
    ElseIf Rs(2) = "T2" Then
        g = "UNIT-II"
    ElseIf Rs(2) = "S" Then
         g = "SALES"
    End If
    Print #a, Space(14) + Padl(UCase(txtfields(7).Text), 10, " ") + Space(1) + "For transfer to " + Space(5) + Padr(g, 10, " ")
    Print #a, Space(3) + "                                     " + Padr(Rs("add3"), 40, " ") + Space(12)
    Print #a,
    Print #a, Space(3) + "S.No                  Description             Quantity             Kgs"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub pblist()
    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    pg1 = pg1 + 1
    Call gatepass(CInt(pg1))
    End If
End Sub

Public Sub hdlist(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
  Rs.Open "select slname,add3 from fa_slmas where slcode='" & txtfields(8).Text & "'", db
    Print #a, Space(3) + Padr("DC for Issue List", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "Doc No         :" + Padr(txtfields(0).Text, 10, " ") + Space(45) + "Date :" + Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 10, " ")
    If Rs.RecordCount > 0 Then
    Print #a, Space(3) + "Supplier       :" + Padr(Rs("slname"), 40, " ") + Space(12) + "Remarks :" + Padr(" ", 10, " ")
    
     Print #a, Space(3) + "                           " + Padr(Rs("add3"), 40, " ") + Space(12)
     End If
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + "S.No        VarityDescription       Quntity          Kgs        values    Remarks"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub CottRecnHeader(pg1 As Integer, Co As Integer, LDT As String)
    Print #z, Chr(18)
    Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 60, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(5) & "Issue Weight Report " + Space(16) + Space(2) + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
    'Print #z, Space(5) & Chr(27) + "E" + "Lot No./Dt. : " & LDT + Chr(27) + "F"
    Print #z, Space(5) & String(60, "-")
    Print #z, Space(5) & "   Lot No.             LotDate      Variety"
    Print #z, Space(5) & "  Bale No.   Gross Wt.  Tare Wt. Moist.Wt. Net Wt.  Actiss Kgs."
    Print #z, Space(5) & String(60, "-")
    Co = Co + 9
End Sub
Sub VisText(IType As String)
Select Case IType
Case "P"  'production
    Label9.Visible = True  'issto
    Combo2.Visible = True
    Label21.Caption = "MixLotNo"
    txtfields(13).Visible = True  'mixing lotno
    Label21.Visible = True
    Label5.Visible = True  'mixing count
    Label5.Caption = "Mixing Count"
    txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = True
    Label14.Visible = False 'Vehicle

    Label16.Visible = True 'mix grp label
    txtfields(8).Visible = True 'mix grp code
    Text12.Visible = True 'mixing Grp Name
      
    txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    Label32.Visible = False
    
    txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    
Case "T" 'Transfer
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    
    DTPicker2.Visible = True 'Invdate
    DTPicker2.value = pdate
    MaskEdBox1(1).Visible = True
    Label32.Visible = True
    txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Division"
    txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    txtfields(7).Visible = True  'Vehicle
    Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
Case "B"
    Label9.Visible = False  'issto
    Combo2.Visible = False
    txtfields(13).Visible = False  'mixing lotno
    Label21.Visible = False
    
    Label5.Visible = False  'mixing count
    txtfields(1).Visible = False 'code
    Text5.Visible = False  'mix desc
    txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = False
    Label14.Visible = False 'Vehicle
    Label32.Visible = False
    Label16.Visible = False 'mix grp label
    txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
  
    
    txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    
    txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False

End Select
End Sub
Sub MixgrpLookup()
On Error GoTo MixgrpLookup_Error

Set rsd = New Recordset
rsd.Open "select Mixgrpname from rm_mixgrp where mixgrpcd='" & txtfields(8).Text & "' and DivCode = '" & Divcode & "'", db
If rsd.RecordCount > 0 Then
    Text2.Text = rsd(0)
Else
LookUp.query = "Select Distinct MixgrpCd""Mixing Group Code"",MixGrpName""Mixing Group Name"" FROM rm_mixgrp where 1=1 and DivCode = '" & Divcode & "'"
LookUp.Caption = "Mixing Group Listing"
LookUp.DefCol = "Mixing Group Name"
LookUp.ALIGN = "2500,5000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(8).Text = LookUp.Fields(0)
    Text12.Text = LookUp.Fields(1)
    'grddatagrid.SetFocus
    LookUp.clear = True
    txtfields(13).SetFocus
Else
    LookUp.clear = True
    'lookup.
    txtfields(8).SetFocus
    Exit Sub
End If
txtfields(13).SetFocus
End If


Exit Sub
MixgrpLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MixgrpLookup of Form frmMixingIssue", vbInformation, head
End Sub


Private Sub clears()
    'TXTFIELDS(1).Text = ""
    'TXTFIELDS(8).Text = ""
    'TXTFIELDS(13).Text = ""
    'Text5.Text = ""
    'Text12.Text = ""
    'TXTFIELDS(7).Text = ""
    'TXTFIELDS(10).Text = ""
    'TXTFIELDS(9).Text = ""
   '' MaskEdBox1(1).Text = "__/__/____"
'    Option5.Value = False
 ''   Option6.Value = False
  '  Option7.Value = True
On Error GoTo clears_Error

    

Exit Sub
clears_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clears of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Function LookuPLoad(Fld1 As String, Fld2 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
On Error GoTo LookuPLoad_Error

        LookUp.clear = True
        LookUp.query = "select " & Fld1 & "," & Fld2 & " from " & Tbl & ""
        LookUp.DefCol = "Oil Description"
        LookUp.ALIGN = "2000,6000"
        LookUp.Caption = Caption
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Fld1focus.Text = LookUp.Fields(0)
            If Fld1focus <> Fld1focus Then
            fld2Focus.Text = LookUp.Fields(1)
            End If
            LookUp.clear = True
            LookuPLoad = True
            NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad = False
            LookUp.clear = True
        End If


Exit Function
LookuPLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LookuPLoad of Form frmMixingIssue", vbInformation, head
End Function
Private Sub ClearAll()
On Error GoTo ClearAll_Error

    txtfields(3).Text = Empty
    txtfields(4).Text = Empty
    txtfields(6).Text = Empty
    txtfields(12).Text = Empty
    txtfields(5).Text = Empty
    Text1.Text = Empty
    Text15.Text = Empty

Exit Sub
ClearAll_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearAll of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub wastegrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo wastegrid_AfterColEdit_Error

On Error GoTo wastegrid_AfterColEdit_Error

If Opt = "add" Then
    If ColIndex = 5 Then
        Set rst = New Recordset
        rst.Open "Select isnull(sum(ISSKGs),0)-isnull(sum(mixkgs),0) as BalanceKgs from rm_wastemixstock where Isskgs-isnull(Mixkgs,0)>0 and divcode='" & Divcode & "' and varcode='" & wastegrid.Columns(3) & "'", db, adOpenStatic
        balkgs = 0
        If rst.RecordCount > 0 Then
            balkgs = rst(0)
        End If
        
        If val(wastegrid.Columns(5).Text) > balkgs Then
            MsgBox "Please enter a valid Issue Kgs. Must be less than or equal to Balance Kgs.", vbInformation, head
            wastegrid.Columns(5).Text = val(balkgs)
            wastegrid.Col = 5
            wastegrid.SetFocus
            Exit Sub
        End If
        
        
        g = MsgBox("Do You want to enter one more variety?", vbYesNo, head)
        
        If g = vbNo Then
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
        
    End If

End If


Exit Sub
wastegrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure wastegrid_AfterColEdit of Form frmMixingIssue", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub wastegrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo wastegrid_KeyDown_Error

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
wastegrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure wastegrid_KeyDown of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub WasteGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo WasteGrid_RowColChange_Error

If Opt = "add" Then

    If LastCol = 3 Then
        Set Rs = New Recordset
        Rs.Open "select a.varcode,Description from rm_wastemixstock a,ig_rproduct b where Isskgs-isnull(Mixkgs,0)>0 and a.varcode=b.product_code and a.divcode=b.divcode and  a.divcode='" & Divcode & "' AND Isstype='" & txtfields(10).Text & "'", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            LookUp.query = "Select distinct a.varcode as WasteCode,Description as WasteName,isnull(sum(ISSKGs),0)-isnull(sum(mixkgs),0) as BalanceKgs from rm_wastemixstock a,ig_rproduct b where Isskgs-isnull(Mixkgs,0)>0 and a.varcode=b.product_code and a.divcode=b.divcode and  a.divcode='" & Divcode & "'  AND Isstype='" & txtfields(10).Text & "' Group by a.varcode,Description having (isnull(sum(ISSKGs),0)-isnull(sum(MixKgs),0)) >0"
            LookUp.Caption = "Waste Stock Listing"
            LookUp.DefCol = "WasteName"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                
                Set rsg = New Recordset
                Set rsg.DataSource = adosecondaryrs2.DataSource
                
                If rsg.RecordCount > 0 Then rsg.MoveFirst
                While Not rsg.EOF
                    If LookUp.Fields(0) = rsg(3) Then
                        MsgBox "Already issued", vbInformation, head
                        LookUp.clear = True
                        wastegrid.Col = 3
                        wastegrid.SetFocus
                        Exit Sub
                    End If
                    rsg.MoveNext
                Wend
                adosecondaryrs2.MoveLast
                
                wastegrid.Columns(3).Text = LookUp.Fields(0)
                wastegrid.Columns(4).Text = LookUp.Fields(1)
                wastegrid.Columns(5).Text = val(LookUp.Fields(2))
                LookUp.clear = True
                wastegrid.Col = 5
                wastegrid.SetFocus
                Exit Sub
            Else
                wastegrid.Columns(3).Text = ""
                wastegrid.Columns(4).Text = ""
                wastegrid.Columns(5).Text = ""
                wastegrid.Col = 3
                wastegrid.SetFocus
            End If
        Else
            MsgBox "Nil waste Stock found!", vbInformation, head
            wastegrid.Columns(3).Text = ""
            wastegrid.Columns(4).Text = ""
            wastegrid.Columns(5).Text = ""
            wastegrid.Col = 3
            wastegrid.SetFocus
            Exit Sub
        End If
    End If
    
    If LastCol = 4 Then
        If adosecondaryrs2.RecordCount = adosecondaryrs2.AbsolutePosition Then
        
            
            g = MsgBox("Do You want to enter one more variety?", vbYesNo, head)
        
            If g = vbNo Then
                grddatagrid.Col = 2
                grddatagrid.SetFocus
                Exit Sub
            End If
        
            adosecondaryrs2.AddNew
            ''wastegrid.row = wastegrid.row + 1
            wastegrid.Col = 3
            wastegrid.SetFocus
            Exit Sub
        End If
    End If
End If


Exit Sub
WasteGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure WasteGrid_RowColChange of Form frmMixingIssue", vbInformation, head
End Sub
Private Sub WASTEALIGN()

On Error GoTo WASTEALIGN_Error

If adosecondaryrs2.RecordCount > 0 Then
    wastegrid.Columns(0).Visible = False
    wastegrid.Columns(1).Visible = False
    wastegrid.Columns(2).Visible = False
    wastegrid.Columns(3).Caption = "Code"
    wastegrid.Columns(4).Caption = "Name"
    wastegrid.Columns(5).Caption = "Kgs"
    wastegrid.Columns(3).Width = 2500
    wastegrid.Columns(4).Width = 2500
    wastegrid.Columns(5).Width = 2500
    wastegrid.Columns(5).NumberFormat = "####.000"
    wastegrid.Columns(4).Alignment = dbgRight
    
    If Opt = "add" Then
        wastegrid.Columns(6).Visible = False
    End If
End If

Exit Sub
WASTEALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure WASTEALIGN of Form frmMixingIssue", vbInformation, head
Screen.MousePointer = 0
End Sub
