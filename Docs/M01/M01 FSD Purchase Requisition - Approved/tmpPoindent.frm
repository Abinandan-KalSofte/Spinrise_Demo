VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form tmpPOINDENT 
   Caption         =   "Purchase Requisition"
   ClientHeight    =   9495
   ClientLeft      =   0
   ClientTop       =   345
   ClientWidth     =   11100
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9495
   ScaleWidth      =   11100
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   8400
      Left            =   840
      TabIndex        =   42
      Top             =   960
      Width           =   12780
      _ExtentX        =   22543
      _ExtentY        =   14817
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "tmpPoindent.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame2"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "FrameItem"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).ControlCount=   5
      Begin VB.Frame FrameItem 
         Height          =   6015
         Left            =   600
         TabIndex        =   120
         Top             =   360
         Visible         =   0   'False
         Width           =   10095
         Begin VB.Frame dlmdfrm 
            Height          =   5760
            Left            =   360
            TabIndex        =   121
            Top             =   120
            Visible         =   0   'False
            Width           =   9555
            Begin VB.CommandButton CmdCancel 
               Caption         =   "&Cancel"
               Height          =   320
               Left            =   5400
               TabIndex        =   130
               Top             =   5370
               Width           =   1305
            End
            Begin VB.CommandButton CmdItemSelect 
               Caption         =   "&OK"
               Height          =   320
               Left            =   3465
               TabIndex        =   122
               Top             =   5370
               Width           =   1305
            End
            Begin FPSpreadADO.fpSpread FpSpdInd 
               Height          =   4290
               Left            =   150
               TabIndex        =   123
               Top             =   975
               Visible         =   0   'False
               Width           =   9390
               _Version        =   524288
               _ExtentX        =   16563
               _ExtentY        =   7567
               _StockProps     =   64
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               MaxCols         =   1
               MaxRows         =   1
               SpreadDesigner  =   "tmpPoindent.frx":001C
               AppearanceStyle =   0
            End
            Begin MSDataGridLib.DataGrid DataGrid3 
               Height          =   660
               Left            =   585
               TabIndex        =   124
               Top             =   1815
               Width           =   10155
               _ExtentX        =   17912
               _ExtentY        =   1164
               _Version        =   393216
               AllowArrows     =   -1  'True
               ForeColor       =   8388608
               HeadLines       =   1
               RowHeight       =   19
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
                  Name            =   "MS Sans Serif"
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
                     Type            =   1
                     Format          =   "dd/MM/yyyy"
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
            Begin FPSpreadADO.fpSpread FpSpdIndHead 
               Height          =   555
               Left            =   165
               TabIndex        =   125
               Top             =   495
               Visible         =   0   'False
               Width           =   9375
               _Version        =   524288
               _ExtentX        =   16536
               _ExtentY        =   979
               _StockProps     =   64
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               MaxCols         =   1
               MaxRows         =   1
               ScrollBars      =   0
               SpreadDesigner  =   "tmpPoindent.frx":0437
               AppearanceStyle =   0
            End
            Begin VB.Label Label24 
               Alignment       =   2  'Center
               BackColor       =   &H8000000D&
               Caption         =   "Item  Listing"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H8000000E&
               Height          =   285
               Left            =   -960
               TabIndex        =   126
               Top             =   120
               Width           =   10485
            End
         End
      End
      Begin VB.Frame Frame2 
         Height          =   615
         Left            =   210
         TabIndex        =   22
         Top             =   6900
         Visible         =   0   'False
         Width           =   11205
         Begin VB.TextBox txtItemgrpcode 
            Appearance      =   0  'Flat
            Height          =   350
            Left            =   1140
            TabIndex        =   19
            Top             =   180
            Width           =   1350
         End
         Begin VB.TextBox txtItemgrpName 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   350
            Left            =   2505
            Locked          =   -1  'True
            TabIndex        =   105
            TabStop         =   0   'False
            Top             =   180
            Width           =   6645
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Item Group"
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
            Height          =   240
            Left            =   120
            TabIndex        =   106
            Top             =   240
            Width           =   1140
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1875
         Left            =   120
         TabIndex        =   43
         Top             =   15
         Width           =   12585
         Begin VB.TextBox Text12 
            Height          =   330
            Left            =   7920
            TabIndex        =   118
            Top             =   1380
            Visible         =   0   'False
            Width           =   795
         End
         Begin VB.TextBox Text11 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   8760
            TabIndex        =   116
            TabStop         =   0   'False
            Top             =   1380
            Visible         =   0   'False
            Width           =   2115
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "PO_GRP"
            Height          =   330
            Index           =   7
            Left            =   7920
            TabIndex        =   115
            Top             =   1380
            Visible         =   0   'False
            Width           =   795
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "budgetBALAMT"
            Height          =   330
            Index           =   6
            Left            =   7935
            MaxLength       =   20
            TabIndex        =   113
            Top             =   1200
            Visible         =   0   'False
            Width           =   2880
         End
         Begin VB.TextBox Text3 
            Appearance      =   0  'Flat
            DataField       =   "section"
            Height          =   315
            Left            =   1680
            MaxLength       =   20
            TabIndex        =   17
            Top             =   960
            Width           =   4890
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "depcode"
            Height          =   330
            Index           =   5
            Left            =   1680
            TabIndex        =   14
            Top             =   585
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "scopecode"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   315
            Index           =   3
            Left            =   1710
            TabIndex        =   23
            Top             =   2115
            Width           =   1035
         End
         Begin VB.TextBox Text7 
            Appearance      =   0  'Flat
            Height          =   315
            Left            =   2790
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   2115
            Width           =   3315
         End
         Begin VB.TextBox Text4 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2760
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   1320
            Width           =   3795
         End
         Begin VB.ComboBox Combo2 
            DataField       =   "ABCFLG"
            Height          =   315
            ItemData        =   "tmpPoindent.frx":085D
            Left            =   7935
            List            =   "tmpPoindent.frx":085F
            Style           =   2  'Dropdown List
            TabIndex        =   16
            Top             =   585
            Width           =   2880
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "reqname"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   1680
            TabIndex        =   20
            Top             =   1320
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "prno"
            Height          =   330
            Index           =   2
            Left            =   1680
            TabIndex        =   12
            Top             =   210
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   8
            Left            =   7935
            MaxLength       =   20
            TabIndex        =   18
            Top             =   960
            Width           =   2880
         End
         Begin VB.TextBox Text2 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "depname"
            Height          =   330
            Left            =   2760
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   585
            Width           =   3795
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "prdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   5160
            TabIndex        =   13
            Top             =   180
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   582
            _Version        =   393216
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
            Height          =   330
            Left            =   5160
            TabIndex        =   55
            Top             =   180
            Width           =   1395
            _ExtentX        =   2461
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            CalendarForeColor=   -2147483640
            Format          =   173277185
            CurrentDate     =   36218
         End
         Begin VB.TextBox Text5 
            Appearance      =   0  'Flat
            Height          =   315
            Left            =   8820
            TabIndex        =   83
            TabStop         =   0   'False
            Top             =   555
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Order Type *"
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
            Index           =   9
            Left            =   6720
            TabIndex        =   117
            Top             =   1440
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Budget Amont"
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
            Index           =   7
            Left            =   6720
            TabIndex        =   114
            Top             =   1275
            Visible         =   0   'False
            Width           =   1260
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Section"
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
            Left            =   135
            TabIndex        =   104
            Top             =   1020
            Width           =   675
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Department *"
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
            Index           =   5
            Left            =   120
            TabIndex        =   101
            Top             =   660
            Width           =   1170
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00359F9D&
            Height          =   195
            Index           =   6
            Left            =   7710
            TabIndex        =   99
            Top             =   240
            Width           =   2700
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "User :"
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
            Index           =   4
            Left            =   6720
            TabIndex        =   98
            Top             =   240
            Width           =   525
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Requisition Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   480
            Index           =   0
            Left            =   6720
            TabIndex        =   82
            Top             =   510
            Width           =   1335
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Requester Name"
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
            Left            =   120
            TabIndex        =   81
            Top             =   1395
            Width           =   1545
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "PR.No."
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
            Index           =   2
            Left            =   120
            TabIndex        =   58
            Top             =   285
            Width           =   645
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "PR.Date"
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
            Index           =   3
            Left            =   3840
            TabIndex        =   57
            Top             =   240
            Width           =   765
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Reference "
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
            Index           =   8
            Left            =   6720
            TabIndex        =   56
            Top             =   1035
            Width           =   990
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Scope"
            Height          =   270
            Left            =   270
            TabIndex        =   84
            Top             =   2175
            Width           =   465
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Item Details"
         Height          =   2205
         Left            =   75
         TabIndex        =   71
         Top             =   1890
         Width           =   12615
         Begin VB.CommandButton Cmdnewitem 
            Caption         =   "New Item"
            Height          =   375
            Left            =   11280
            TabIndex        =   129
            Top             =   960
            Visible         =   0   'False
            Width           =   1170
         End
         Begin VB.CommandButton CmdAddOk 
            Caption         =   "Add"
            Height          =   375
            Left            =   11640
            TabIndex        =   127
            Top             =   1560
            Visible         =   0   'False
            Width           =   690
         End
         Begin VB.CommandButton cmd_history 
            Caption         =   "Item History"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   9270
            TabIndex        =   108
            Top             =   1020
            Width           =   1185
         End
         Begin VB.TextBox Text10 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2385
            Locked          =   -1  'True
            TabIndex        =   102
            TabStop         =   0   'False
            Top             =   1050
            Width           =   4530
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            DataField       =   "SubCost"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   1020
            TabIndex        =   31
            Top             =   1050
            Width           =   1305
         End
         Begin VB.CheckBox ChkSample 
            Caption         =   "Samples Yes/No"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   10245
            TabIndex        =   30
            Top             =   630
            Width           =   2040
         End
         Begin VB.TextBox TxtDays 
            Appearance      =   0  'Flat
            Height          =   350
            Left            =   1005
            TabIndex        =   33
            Top             =   1590
            Width           =   585
         End
         Begin VB.TextBox TxtMacModel 
            Appearance      =   0  'Flat
            Height          =   350
            Left            =   3585
            Locked          =   -1  'True
            TabIndex        =   35
            Top             =   1590
            Width           =   1215
         End
         Begin VB.TextBox Text9 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0;(0)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   350
            Left            =   9660
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   195
            Width           =   1215
         End
         Begin VB.TextBox Text8 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
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
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   360
            Left            =   1005
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   39
            TabStop         =   0   'False
            Top             =   615
            Width           =   1350
         End
         Begin VB.CommandButton Command3 
            Caption         =   "&Ok"
            Height          =   375
            Left            =   10800
            TabIndex        =   38
            Top             =   1590
            Width           =   570
         End
         Begin VB.TextBox RemarksTextBox 
            Height          =   350
            Left            =   8100
            TabIndex        =   37
            Top             =   1590
            Width           =   2655
         End
         Begin VB.TextBox AppCostTextBox 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   350
            Left            =   5745
            MaxLength       =   8
            TabIndex        =   36
            Top             =   1590
            Width           =   1215
         End
         Begin VB.TextBox ItemNameTextBox 
            BackColor       =   &H00E0E0E0&
            Height          =   350
            Left            =   2415
            Locked          =   -1  'True
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   195
            Width           =   6615
         End
         Begin VB.TextBox ItemCodeTextBox 
            Height          =   350
            Left            =   1005
            MaxLength       =   10
            TabIndex        =   25
            Top             =   195
            Width           =   1350
         End
         Begin VB.TextBox Text6 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   350
            Left            =   6855
            Locked          =   -1  'True
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   630
            Width           =   2805
         End
         Begin VB.TextBox MachineTextBox 
            Height          =   350
            Left            =   5640
            MaxLength       =   10
            TabIndex        =   29
            Top             =   630
            Width           =   1200
         End
         Begin VB.TextBox QtyReqTextBox 
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
            Height          =   350
            Left            =   3375
            TabIndex        =   28
            Top             =   630
            Width           =   1215
         End
         Begin MSMask.MaskEdBox MaskEdBox2 
            Height          =   345
            Left            =   1620
            TabIndex        =   34
            Top             =   1590
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   609
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.TextBox RateTextBox 
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
            Height          =   345
            Left            =   7620
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   41
            TabStop         =   0   'False
            Top             =   1050
            Width           =   1530
         End
         Begin VB.TextBox PlaceTextBox 
            Height          =   350
            Left            =   3615
            MaxLength       =   40
            TabIndex        =   40
            Top             =   1515
            Visible         =   0   'False
            Width           =   1200
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Rate"
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
            Left            =   6960
            TabIndex        =   107
            Top             =   1140
            Width           =   435
         End
         Begin VB.Label LblSubCost 
            Caption         =   "Sub Cost Centre"
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
            Left            =   105
            TabIndex        =   103
            Top             =   1035
            Width           =   825
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Max. Cost"
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
            Left            =   4845
            TabIndex        =   79
            Top             =   1665
            Width           =   870
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Required Days/Date"
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
            Height          =   480
            Left            =   105
            TabIndex        =   86
            Top             =   1575
            Width           =   975
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label17 
            Caption         =   "Current Stock"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   480
            Left            =   135
            TabIndex        =   85
            Top             =   555
            Width           =   990
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
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
            Left            =   7170
            TabIndex        =   80
            Top             =   1665
            Width           =   825
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Model"
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
            Left            =   2880
            TabIndex        =   78
            Top             =   1665
            Width           =   570
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Item *"
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
            Left            =   150
            TabIndex        =   77
            Top             =   270
            Width           =   495
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Machine"
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
            Left            =   4725
            TabIndex        =   76
            Top             =   705
            Width           =   765
         End
         Begin VB.Label Label10 
            Caption         =   "Quantity Required *"
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
            Height          =   435
            Left            =   2445
            TabIndex        =   74
            Top             =   585
            Width           =   915
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Rate"
            Height          =   195
            Left            =   120
            TabIndex        =   73
            Top             =   825
            Visible         =   0   'False
            Width           =   345
         End
         Begin VB.Label UnitLabel 
            AutoSize        =   -1  'True
            Caption         =   "UOM"
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
            Left            =   9090
            TabIndex        =   72
            Top             =   270
            Width           =   465
         End
         Begin VB.Label CurrentQtyLabel 
            AutoSize        =   -1  'True
            Caption         =   "Current Qty"
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
            Height          =   240
            Left            =   120
            TabIndex        =   75
            Top             =   825
            Visible         =   0   'False
            Width           =   315
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2670
         Left            =   90
         TabIndex        =   94
         Top             =   4200
         Width           =   12585
         _ExtentX        =   22199
         _ExtentY        =   4710
         _Version        =   393216
         AllowUpdate     =   -1  'True
         HeadLines       =   2
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
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
            ScrollBars      =   0
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame UserFooterFrame 
      Height          =   4965
      Left            =   7275
      TabIndex        =   95
      Top             =   1665
      Visible         =   0   'False
      Width           =   4245
      Begin VB.CommandButton FooterCmd 
         Caption         =   "&OK"
         Height          =   450
         Left            =   1560
         TabIndex        =   97
         Top             =   4380
         Width           =   1320
      End
      Begin PurOrd.UserFooter UserFooter1 
         Height          =   4215
         Left            =   120
         TabIndex        =   96
         Top             =   165
         Width           =   4095
         _extentx        =   7223
         _extenty        =   7435
      End
   End
   Begin VB.Frame FooterFrame 
      BorderStyle     =   0  'None
      Height          =   975
      Left            =   7140
      TabIndex        =   88
      Top             =   810
      Visible         =   0   'False
      Width           =   4575
      Begin TabDlg.SSTab FooterTab 
         Height          =   735
         Left            =   120
         TabIndex        =   89
         Top             =   120
         Width           =   4305
         _ExtentX        =   7594
         _ExtentY        =   1296
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "tmpPoindent.frx":0861
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "FooterFrame8"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame FooterFrame8 
            Height          =   615
            Left            =   60
            TabIndex        =   90
            Top             =   45
            Width           =   4140
            Begin VB.OptionButton FooterNo 
               Caption         =   "No"
               Height          =   285
               Left            =   3120
               TabIndex        =   92
               Top             =   240
               Width           =   540
            End
            Begin VB.OptionButton FooterYes 
               Caption         =   "Yes"
               Height          =   315
               Left            =   1755
               TabIndex        =   91
               Top             =   240
               Width           =   780
            End
            Begin VB.Label Label18 
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
               TabIndex        =   93
               Top             =   210
               Width           =   1425
            End
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   120
      Top             =   5640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   52
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":087D
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "tmpPoindent.frx":0B87
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5250
         Picture         =   "tmpPoindent.frx":0F1A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Crystal (Ctrl Y)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":135C
         Height          =   510
         Index           =   3
         Left            =   1560
         Picture         =   "tmpPoindent.frx":1666
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":19FB
         Height          =   510
         Index           =   6
         Left            =   2595
         Picture         =   "tmpPoindent.frx":1E45
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":2192
         Height          =   510
         Index           =   5
         Left            =   2070
         Picture         =   "tmpPoindent.frx":25DC
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":2941
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
         Picture         =   "tmpPoindent.frx":2C4B
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":2FE7
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "tmpPoindent.frx":32F1
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":366B
         Height          =   510
         Index           =   7
         Left            =   3120
         Picture         =   "tmpPoindent.frx":3AB5
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":3E05
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "tmpPoindent.frx":424F
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":45E4
         Height          =   510
         Index           =   9
         Left            =   4170
         Picture         =   "tmpPoindent.frx":48EE
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":4C90
         Height          =   510
         Index           =   10
         Left            =   4695
         Picture         =   "tmpPoindent.frx":4F9A
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "tmpPoindent.frx":5316
         Height          =   510
         Index           =   8
         Left            =   3645
         Picture         =   "tmpPoindent.frx":5760
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   10140
         TabIndex        =   54
         Top             =   240
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7935
         TabIndex        =   53
         Top             =   240
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   51
      Top             =   9195
      Width           =   11100
      _ExtentX        =   19579
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   14993
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "11/04/2026"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07:36 PM"
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
   Begin VB.TextBox txtfields 
      Appearance      =   0  'Flat
      DataField       =   "DIVCODE"
      Height          =   285
      Index           =   0
      Left            =   10680
      TabIndex        =   44
      Top             =   600
      Visible         =   0   'False
      Width           =   150
   End
   Begin VB.Frame Frame5 
      Height          =   2430
      Left            =   1110
      TabIndex        =   48
      Top             =   2910
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command5 
         Caption         =   "&OK"
         DownPicture     =   "tmpPoindent.frx":5AC2
         Height          =   615
         Left            =   2580
         Picture         =   "tmpPoindent.frx":5EA8
         Style           =   1  'Graphical
         TabIndex        =   66
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command4 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "tmpPoindent.frx":626E
         Height          =   615
         Left            =   4020
         Picture         =   "tmpPoindent.frx":6650
         Style           =   1  'Graphical
         TabIndex        =   65
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   3360
         MaxLength       =   6
         TabIndex        =   49
         Top             =   1110
         Width           =   2055
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Find"
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
         TabIndex        =   59
         Top             =   120
         Width           =   7530
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Indent  Number "
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1515
         TabIndex        =   50
         Top             =   1140
         Width           =   1140
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4980
      Left            =   960
      TabIndex        =   60
      Top             =   1200
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton delmodok 
         Caption         =   "&OK"
         Height          =   320
         Left            =   5880
         TabIndex        =   61
         Top             =   840
         Width           =   975
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2580
         TabIndex        =   62
         Top             =   870
         Width           =   3015
         _ExtentX        =   5318
         _ExtentY        =   556
         _Version        =   393216
         Style           =   2
         ForeColor       =   -2147483640
         ListField       =   ""
         Text            =   ""
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3540
         Left            =   90
         TabIndex        =   63
         Top             =   1320
         Visible         =   0   'False
         Width           =   8625
         _ExtentX        =   15214
         _ExtentY        =   6244
         _Version        =   393216
         AllowUpdate     =   0   'False
         HeadLines       =   1
         RowHeight       =   15
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
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Double Click the required record"
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "dd/MM/yyyy"
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
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Indent No"
         Height          =   195
         Index           =   1
         Left            =   1680
         TabIndex        =   87
         Top             =   960
         Width           =   705
      End
      Begin VB.Label delmodoklabel 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Indent Listing"
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
         TabIndex        =   64
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Frame Frame4 
      Height          =   1755
      Left            =   2550
      TabIndex        =   67
      Top             =   2430
      Width           =   4215
      Begin VB.OptionButton Option2 
         Caption         =   "&Line Deletion"
         Height          =   255
         Left            =   1140
         TabIndex        =   70
         Top             =   1260
         Width           =   1635
      End
      Begin VB.OptionButton Option1 
         Caption         =   "&Complete Deletion"
         Height          =   345
         Left            =   1140
         TabIndex        =   69
         Top             =   720
         Width           =   1905
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Choose the  deletion type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   30
         TabIndex        =   68
         Top             =   120
         Width           =   4155
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Item History"
      Height          =   5835
      Left            =   840
      TabIndex        =   109
      Top             =   3600
      Width           =   9315
      Begin VB.CommandButton cmd_close 
         Caption         =   "&Close"
         Height          =   555
         Left            =   3480
         TabIndex        =   111
         Top             =   5190
         Width           =   1905
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   4545
         Left            =   120
         TabIndex        =   110
         Top             =   570
         Width           =   8715
         _ExtentX        =   15372
         _ExtentY        =   8017
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   15
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
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
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         BackColor       =   &H00FF0000&
         Caption         =   "Item History"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   -30
         TabIndex        =   112
         Top             =   30
         Width           =   9255
      End
   End
   Begin VB.Label LblTotrow 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   855
      Left            =   3480
      TabIndex        =   128
      Top             =   10320
      Width           =   7455
   End
   Begin VB.Label LblApproval 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   855
      Left            =   14040
      TabIndex        =   119
      Top             =   1080
      Width           =   3975
   End
   Begin VB.Label LblLineDel 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
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
      Height          =   240
      Left            =   510
      TabIndex        =   100
      Top             =   7485
      Width           =   1845
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Requisition"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   360
      Left            =   360
      TabIndex        =   47
      Top             =   555
      Width           =   2985
   End
   Begin VB.Label Label5 
      Caption         =   "TC"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   46
      Top             =   1080
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "GIN No."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   45
      Top             =   1080
      Visible         =   0   'False
      Width           =   1815
   End
End
Attribute VB_Name = "tmpPOINDENT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim Status As String
Dim StRs As Recordset
Dim WithEvents adoprimaryrs1 As Recordset
Attribute adoprimaryrs1.VB_VarHelpID = -1
Dim adoSecondaryRS1 As Recordset
Dim RSG As Recordset
Dim itemrs As Recordset
Dim db As Connection
Dim Opt As String
Dim deltype As String
Dim tax As Double
Dim mvd As String
Dim rs1 As Recordset
Dim ITARY() As String
Dim modqty As Double
Dim Fnd As String
Dim rsmin As New Recordset
Dim FLG As String
Dim GRP As String
Dim RepFoot As String
Dim RW As Long
Dim rpt As String
Dim st2 As String, ST1 As String
Dim ChRS As Recordset
Dim find As Boolean
Dim optionval As String
Dim RPTV As Report.ReportView
Dim prano As Integer
Dim A As Integer
Dim tit As Recordset
Dim lno As Integer
Dim pgn As Integer
Dim tlno As Integer
Dim SNO As Integer
Dim BudgetPara As String
Dim rs As Recordset
Dim ItemMod, ManualIndNo As String
Dim bolLookupItemgrpwise As Boolean
Dim Logrecordset As New Recordset

Dim indentrs As Recordset

Private Enum E_SpdIndentHead
    SprdHCheck = 1
    sprdHItemCode
    sprdHItemName
    SprdHUom
    SprdHCatalog
    SprdHdrawno

End Enum
Private Enum E_SpdIndent
    SprdCheck = 1

    SprdItemcode
    sprdItemname
    Sprduom

    SprdCatalog
    Sprddrawno

End Enum




Private Sub AppCostTextBox_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    Call ToNum(AppCostTextBox, 8, KeyAscii, 2)
End Sub

Private Sub BUTTON_Click(Index As Integer)
  intervalminutes = 0
On Error Resume Next

Dim adoitypers As Recordset

Select Case Index
Case 13

        
        If val(txtfields(2).Text) > 0 And MaskEdBox1(0).Text <> "__/__/____" Then
            Dim Cry_PO_IndentcrTransPrint As New clsCrystal
            
            If EmpCommon = True Then
                Set Cry_PO_IndentcrTransPrint.cryRept = Cry_Purchase_Req
            Else
                Set Cry_PO_IndentcrTransPrint.cryRept = Cry_PR_KSL
            End If
          
            Cry_PO_IndentcrTransPrint.CrystalPrint
    
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepPO.rpt"
            pno = val(txtfields(2).Text)
            docdt = Format(MaskEdBox1(0).Text, "DD/MM/YY")
            
            GNAME = Padr(Text4.Text, 25, " ")
            
            If EmpCommon = False Then

                CrystalReport1.ParameterFields(0) = "@divcode;" & divcode & ""
                CrystalReport1.ParameterFields(1) = "@prdate;" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & ""
                CrystalReport1.ParameterFields(2) = "@prno;" & pno & ""
              CrystalReport1.Formulas(2) = "NAME =  '" & GNAME & "'"


            ElseIf EmpCommon = True Then
                CrystalReport1.ParameterFields(0) = "@divcode;" & divcode & ""
                CrystalReport1.ParameterFields(1) = "@Docno;" & pno & ""
                CrystalReport1.ParameterFields(2) = "@Docdt;" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & ""
                CrystalReport1.Formulas(3) = "IndUserNAME =  '" & lblLabels(6).Caption & "'"
            Else
            
                CrystalReport1.Formulas(2) = "NAME =  '" & GNAME & "'"
    
                CrystalReport1.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(docdt)) & "," & val(Month(docdt)) & "," & val(Day(docdt)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & divcode & "'"
            End If
                        
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 2
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
        Else
            MsgBox "NO RECORDS TO PRINT", vbInformation, vbhead
            Exit Sub
        End If

Case 0
    LblApproval.Caption = ""
    If Record_Exists("in_item", "Please Define Item in Item Maste") = False Then Exit Sub
    If Record_Exists("in_dep where divcode='" & divcode & "'", "Please Define Department in Setup") = False Then Exit Sub
    If Record_Exists("po_doc_para where tc = 'PURCHASE REQUISITION'", "Please Define Document No. for Requisition in Housekeeping") = False Then Exit Sub
    Frame1.Enabled = True
    Call UnLockTextBox
    Frame7.Enabled = True
    LblApproval.Visible = False
    Set rspara = New Recordset
    rspara.Open "select isnull(backdate,'N') from in_para", db, adOpenStatic
    If rspara(0) = "N" Then
            Set RSG = New Recordset
            RSG.Open "select max(prdate) from po_prh where divcode='" & divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
            If RSG.RecordCount > 0 Then
                If IsNull(RSG(0)) = False Then
                    If pdate < RSG(0) Then
                        MsgBox "Date should be Equal to Current Date Or Max PR. Date", vbInformation, head
                        Exit Sub
                    End If
                End If
            End If
    End If
    
    lblLabels(6).Visible = True
    cmd_history.Visible = True
    
    Set rs = New Recordset
    rs.Open "Select isnull(User_Name,'')user_Name From PP_Passwd where divcode = '" & divcode & "' and Module = " & ModuleNo & " and User_Id='" & usrid & "'", db, adOpenStatic, adLockReadOnly
    If rs.RecordCount > 0 Then
        lblLabels(6).Caption = Trim(rs("user_Name"))
        UserName = Trim(rs("user_Name"))
    End If
    
    lblLabels(6).Caption = UserName
    DTPicker1.Enabled = True
    Opt = "add"
    desc.Caption = "Addition"
    Text3.Text = ""
    Screen.MousePointer = 11
    stbar.Panels(2).Text = "Addition"
    Set adoPrimaryRS = New Recordset
    
    adoPrimaryRS.Open "select DIVCODE,PRNO,PRDATE,DEPCODE,SubCost,REFNO,SECTION,ITYPE,reqname,scopecode,PO_GRP,createdby,createddt from  po_prh where 1= 2", db, adOpenStatic, adLockBatchOptimistic



    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select B.DIVCODE,PRNO,PRDATE,PRSNO,a.ITEMCODE ""Item"",a.itemname""Item Description"",uom""UOM"",a.rate ""Rate"",b.curstock ""Current Stock"", QTYIND ""Quantity Required"",b.CATCODE ""Category"",CCCODE ""Cost Centre"",BGRPCODE ""Budget Group"",b.MACNO ""Machine Code"",REQDDATE ""Required Date"",place ""Place"",appcost ""Approx. Cost"",REMARKS ""Remarks"",REMARK1 ""REMARKS1"",LPO_RATE,LPO_DATE,PUR_FROM,c.slname,Sample from  po_prl b,in_item a,fa_slmas c WHERE a.itemcode=b.itemcode   and 1 =2 ", db, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    Text2.Text = ""
    adoPrimaryRS.AddNew
    adoSecondaryRS.AddNew
    Set grddatagrid.DataSource = adoSecondaryRS
    grddatagrid.Columns(11).Width = 2940.095
    grddatagrid.Columns(10).Visible = False
    

    ReDim ITARY(100, 0)
    db.BeginTrans
    Call IndType

    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False

    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(5).Locked = True
    grddatagrid.Columns(4).Caption = "Code"
    grddatagrid.Columns(4).Width = 750.882
    grddatagrid.Columns(5).Width = 3000.764
    grddatagrid.Columns(6).Width = 550
    grddatagrid.Columns(7).Width = 720
    grddatagrid.Columns(8).Width = 750
    grddatagrid.Columns(9).Width = 1260.284
    grddatagrid.Columns(11).Width = 1349.858
    grddatagrid.Columns(12).Width = 2115
    grddatagrid.Columns(13).Width = 800
    grddatagrid.Columns(10).Visible = True
    grddatagrid.Columns(10).Width = 1275.024
    grddatagrid.Columns(13).Visible = True
    grddatagrid.Columns(14).Visible = True
    grddatagrid.Columns(14).Width = 900
    grddatagrid.Columns(15).Visible = True
    grddatagrid.Columns(15).Width = 1000
    grddatagrid.Columns(16).Visible = True
    grddatagrid.Columns(16).Width = 750
    grddatagrid.Columns(17).Visible = True
    grddatagrid.Columns(18).Visible = False
    grddatagrid.Columns(7).Locked = True
    grddatagrid.Columns(8).Locked = True
    grddatagrid.Columns(19).Locked = True
    grddatagrid.Columns(20).Locked = True
    grddatagrid.Columns(21).Locked = True
    grddatagrid.Columns(22).Locked = True
    grddatagrid.Columns(6).Alignment = dbgLeft
    grddatagrid.Columns(7).Alignment = dbgRight
    grddatagrid.Columns(8).Alignment = dbgRight
    grddatagrid.Columns(9).Alignment = dbgRight
    grddatagrid.Columns(16).Alignment = dbgRight
    grddatagrid.Columns(19).Alignment = dbgRight
    grddatagrid.Columns(19).NumberFormat = "#0.0000"
    grddatagrid.Columns(7).Caption = "    Rate"
    grddatagrid.Columns(19).Caption = "     Last       Rate"
    grddatagrid.Columns(20).Caption = "Last PO Date"
    grddatagrid.Columns(21).Caption = "Supplier Code"
    grddatagrid.Columns(22).Caption = "Supplier Name"
    grddatagrid.Columns(19).Width = 800
    grddatagrid.Columns(20).Width = 900
    grddatagrid.Columns(21).Width = 850
    
     grddatagrid.Columns(9).Locked = False
    Call EmptyTextBox
    Call ENABLCONTLS
    ST1 = "B"
    st2 = "B"
    txtfields(0).Text = divcode
    
     Call adddelmod(BUTTON)
     BUTTON(9).Enabled = False
     FLG = "Y"
     Fnd = "n"
     mvd = "N"
     RW = 1000
    Screen.MousePointer = 0
    txtfields(5).SetFocus
    For XX = 0 To 18
        grddatagrid.Columns(XX).Locked = True
    Next
    QtyReqTextBox.Locked = False

    
    Set adoitypers = New Recordset
    adoitypers.Open "select * from PO_INDENTTYPE where Def = 'Y' ", db, adOpenStatic, adLockReadOnly
    If adoitypers.RecordCount > 0 Then
        ss = adoitypers("itype")
        For i = 0 To Combo2.ListCount
           Combo2.ListIndex = i
           If Trim(Mid(Combo2.Text, 1, InStr(Combo2.Text, "--") - 1)) = Trim(ss) Then
               Text5.Text = Trim(ss)
             Exit For
           End If
        Next i
    Else
        Text5.Text = ""
        Combo2.ListIndex = 0
    End If

    MaskEdBox2.Text = pdate
    Purstock = ""
     
        Command3.Visible = False
        CmdAddOk.Visible = True
        Cmdnewitem.Visible = True
  
Case 1
    
   LblApproval.Caption = ""
    Frame7.Enabled = True
    Call adddelmod(BUTTON)
    If backend = "Sql Server" Then
        If Record_Exists("po_prL where divcode = '" & divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' and (QTYIND- isnull(QTYREQD,0)) <> 0 ", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
    Else
        If Record_Exists("po_prh where divcode = '" & divcode & "'  AND prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
    End If
    
    
    Dim qry As String
    Opt = "mod"
    desc.Caption = "Modification"
    DTPicker1.Enabled = True
    LookUp.Clear = True
    If PurTypeFlg = 1 Then
    LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department Code',d.depname 'Department Name' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on  d.divcode='" & divcode & "' and  H.DEPCODE = D.DEPCODE WHERE  isnull(amdflg,' ')<>'Y' and h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg <>'Y' AND CANCELFLAG IS NULL and (amendno=0 or amendno is null) and po_grp in (select purtype from tempPurType" & TLocalIPAdd & ")  group by h.prno,h.prdate,h.depcode,d.depname "
    Else
    LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department Code',d.depname 'Department Name' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on  d.divcode='" & divcode & "' and  H.DEPCODE = D.DEPCODE WHERE   isnull(amdflg,' ')<>'Y' and h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg <>'Y' AND CANCELFLAG IS NULL and (amendno=0 or amendno is null)   group by h.prno,h.prdate,h.depcode,d.depname "
    End If
    LookUp.Caption = "PR. Listing"
    LookUp.DefCol = "PR. No."
    LookUp.ALIGN = "1500,1000,1500,4500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        b = LookUp.Fields(1)
        A = LookUp.Fields(2)
        C = LookUp.Fields(0)
        Call delmodproc(CStr(A), CStr(b), CStr(C))
        LookUp.Clear = True
        cmd_history.Visible = True
        Call UnLockTextBox
    Else
        Call LockTextBox
        Call IndType
        Call Query_mode(0)
        Call cancl(BUTTON, GSNO)
    End If
    stbar.Panels(2).Text = "Select the Records to Modify"
      
        Command3.Visible = False
        CmdAddOk.Visible = True
  
         txtfields(4).Locked = False
        txtfields(4).Enabled = True
        Buttonframe.Enabled = True
       
        Command3.Visible = False
        CmdAddOk.Visible = True
        Cmdnewitem.Visible = True
     
     
 Case 2
    LblApproval.Caption = ""

    Frame7.Enabled = True
    If Record_Exists("po_prh where divcode = '" & divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record can be Deleted as Purchase Order is placed for all Records") = False Then Exit Sub
    Set RSG = New Recordset
    Call adddelmod(BUTTON)
    RSG.Open "select max(prdate) from po_prh where divcode='" & divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
    If RSG.RecordCount > 0 Then
        If IsNull(RSG(0)) = False Then
            If pdate < RSG(0) Then
                MsgBox "Date should be Equal to Current Date Or Max PR. Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Opt = "del"
    desc.Caption = "Deletion"
    LookUp.Clear = True
    
    If PurTypeFlg = 1 Then
        LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department',d.depname 'Description' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on d.divcode='" & divcode & "' and H.DEPCODE = D.DEPCODE WHERE   isnull(amdflg,' ')<>'Y' and h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg <>'Y' AND CANCELFLAG IS NULL and (amendno is null or amendno =0) and h.po_grp in (select purtype from tempPurType" & TLocalIPAdd & ")  group by h.prno,h.prdate,h.depcode,d.depname "
    Else
        LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department',d.depname 'Description' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on d.divcode='" & divcode & "' and H.DEPCODE = D.DEPCODE WHERE  isnull(amdflg,' ')<>'Y' and h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and h.appflg <>'Y' AND CANCELFLAG IS NULL and (amendno is null or amendno =0)  group by h.prno,h.prdate,h.depcode,d.depname "
    End If
    LookUp.Caption = "PR. Listing"
    LookUp.DefCol = "PR. No."
    LookUp.ALIGN = "1500,1000,1500,4500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        b = LookUp.Fields(1)
        A = LookUp.Fields(2)
        C = LookUp.Fields(0)
        Call delmodproc(CStr(A), CStr(b), CStr(C))
        cmd_history.Visible = True
        LookUp.Clear = True
    Else
        Call BUTTON_Click(10)
    End If
    stbar.Panels(2).Text = "Select the Records to Delete"
Case 3
   LblApproval.Visible = True
    desc.Caption = "Find"
    If Record_Exists("po_prh where divcode = '" & divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
    LookUp.Clear = True
      
      If PurTypeFlg = 1 Then
    LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department Code',d.depname 'Department Name' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on H.DEPCODE = D.DEPCODE and d.divcode='" & divcode & "'  WHERE   h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "'  and  CANCELFLAG IS NULL and po_grp in (select purtype from tempPurType" & TLocalIPAdd & ")   group by h.prno,h.prdate,h.depcode,d.depname "
    Else
    LookUp.QUERY = "SELECT h.prno 'PR. No.',h.prdate 'Date',h.depcode 'Department Code',d.depname 'Department Name' from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on d.divcode='" & divcode & "' and H.DEPCODE = D.DEPCODE WHERE   h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "'  and  CANCELFLAG IS NULL   group by h.prno,h.prdate,h.depcode,d.depname "
    End If
    LookUp.Caption = "PR. Listing"
    LookUp.DefCol = "PR. No."
    LookUp.ALIGN = "1500,1000,1500,4500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    cmd_history.Visible = False
    If LookUp.Cancel = False Then
        b = LookUp.Fields(1)
        A = LookUp.Fields(2)
        C = LookUp.Fields(0)
        Set adoPrimaryRS = New Recordset
        

                 adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,AppFlg,APP1,App2,App3,UserId,th.SubCost,PO_GRP from  PO_PRH th left join IN_DEP D on  d.divcode='" & divcode & "'  and  th.DEPCODE  = D.DEPCODE where  TH.PRDATE = '" & Format(b, "YYYY/MM/DD") & "'  AND TH.DIVCODE = '" & divcode & "'   and th.prno='" & C & "' " & _
                        " Order by PRNO", db, adOpenStatic, adLockBatchOptimistic

        Call GRDALIN
        Call grdnumall
        Call bindcontls
        Call NEWFORM(BUTTON, GSNO)
        If adoPrimaryRS.RecordCount > 0 Then
            find = True
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        Else
            MsgBox "No Record found"
            Text1.Text = Empty
            Text1.SetFocus
        End If
        LookUp.Clear = True
    Else
        Call BUTTON_Click(10)
    End If
    stbar.Panels(2).Text = "Select the Records to Find"

Case 5

     desc.Caption = "Query"
     If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        


        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,th.SubCost,PO_GRP from  PO_PRH th, IN_DEP D  where d.divcode='" & divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "'   Order by PRNO", db, adOpenStatic

     End If
     Opt = "qry"
     If Record_Exists("po_prh where divcode = '" & divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     cmd_history.Visible = False

     grddatagrid.Columns(0).Visible = False
     grddatagrid.Columns(1).Visible = False
     grddatagrid.Columns(2).Visible = False
     Call bindcontls
     Call FIR(BUTTON)
     stbar.Panels(2).Text = "First Record"
     Exit Sub
GoFirstError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
       
Case 6
       
    desc.Caption = "Query"
    If Opt = "add" Then
       Set adoPrimaryRS = New Recordset



       adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,UserId,th.SubCost,PO_GRP from  PO_PRH th, IN_DEP D  where d.divcode='" & divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "'   Order by PRNO", db, adOpenStatic

    End If

    Opt = "qry"
    If Record_Exists("po_prh where divcode = '" & divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True

        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
    End If

    Call bindcontls
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    Exit Sub
GoNextError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
  
Case 7

    desc.Caption = "Query"
    If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
 
    

        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost,PO_GRP from  PO_PRH th, IN_DEP D  where d.divcode='" & divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "'   Order by PRNO", db, adOpenStatic

    End If
    Opt = "qry"
    If Record_Exists("po_prh where divcode = '" & divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then

        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True

        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
    End If

    Call bindcontls
    Call grdnumall
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    Exit Sub
GoPrevError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
 
Case 8

        desc.Caption = "Query"
        If Opt = "add" Then
           Set adoPrimaryRS = New Recordset


           adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,th.SubCost,PO_GRP from  PO_PRH th, IN_DEP D  where d.divcode='" & divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "'   Order by PRNO", db, adOpenStatic
 
        End If
        Opt = "qry"
        If Record_Exists("po_prh where divcode = '" & divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"

        
        Call las(BUTTON)
        

        Call bindcontls
        
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoLastError:
       If err = 3021 Then
         MsgBox " No records Found", vbInformation, head
       End If

Case 9

        Screen.MousePointer = 11
        desc.Caption = "Query"
        DTPicker1.Enabled = False
        On Error GoTo er1
        If Opt = "add" Then
            If txtfields(5).Text = "" Then
                MsgBox "Department Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            If PurTypeFlg = 1 Then
                If Trim(txtfields(7).Text) = "" Then
                    MsgBox "Please Select Order Type", vbInformation, head
                    txtfields(7).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                If txtfields(1).Text = "" Then
                    MsgBox "Requester Name Cannot be empty", vbInformation, head
                    txtfields(1).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
            
            End If
            Opt = ""
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                If adoSecondaryRS(4) = "" Or adoSecondaryRS(4) = " " Then
                    adoSecondaryRS.Delete
                ElseIf IsNull(adoSecondaryRS(9)) Then
                    MsgBox "Required quantity cannot be empty ", vbInformation, head
                    grddatagrid.Col = 9
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                adoSecondaryRS.MoveNext
            Loop
            If adoSecondaryRS.RecordCount <= 0 Then
                MsgBox "Purchase Requisition Requires at least one Item", vbInformation, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
            adoPrimaryRS(2) = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
            adoPrimaryRS("section") = Trim(Text3.Text)
            adoPrimaryRS("itype") = Text5.Text
            adoPrimaryRS("REFNO") = txtfields(8).Text
            adoPrimaryRS("SubCost") = val(txtfields(4).Text)
            
            adoPrimaryRS("createdby") = usrid
            adoPrimaryRS("createddt") = Format(pdate, "yyyy-MM-dd") & "" & Format(Now, "HH:MM:SS ")
            
            Opt = "add"
            
              Set ManIndRs = New Recordset
                     ManIndRs.Open "Select isnull(Manual_IndNo,'')ManualIndNo from Po_Para where Divcode = '" & divcode & "'", db, adOpenStatic, adLockReadOnly
                     ManualIndNo = ManIndRs(0)
                     If ManualIndNo = "Y" Then
                        txtfields(2).Text = newdocno
                     Else
                        txtfields(2).Locked = True
                     End If
                     
                      If ManualIndNo = "Y" Then
                Call IndentNoChk
                docno = val(txtfields(2).Text)
            Else
                docno = newdocno()
            End If
            If docno = "" Then Exit Sub
            
                
                  Set Logrecordset = New Recordset
                  Set Logrecordset.DataSource = adoSecondaryRS
                  
                  
                adoPrimaryRS(1) = docno
                Opt = ""
                adoSecondaryRS.MoveFirst
                Set rs = New Recordset
                rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,ITEMCODE ""Item"",MACNO ""Machine Code"",QTYIND ""Quantity Required"",CATCODE ""Cate  gory"",CCCODE ""Cost Centre"",BGRPCODE ""Budget Group"",REQDDATE ""Required Date"",place ""Place"",appcost ""Apprpx. Cost"",REMARKS ""Remarks"",RATE,curstock,LPO_RATE,LPO_DATE,PUR_FROM,DepCode,SubCost,Sample from  po_prl  WHERE  1 =2 ", db, adOpenStatic, adLockBatchOptimistic
                SNos = 1
                Do While Not adoSecondaryRS.EOF
                    rs.AddNew
                    adoSecondaryRS(0).Value = divcode
                    adoSecondaryRS(1).Value = docno
                    adoSecondaryRS(4).Value = adoSecondaryRS(4).Value
                    rs("divcode").Value = adoSecondaryRS("divcode").Value
                    rs("prno").Value = adoSecondaryRS("prno").Value
                    rs("prdate").Value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                    rs("prsno").Value = SNos
                    rs("item").Value = adoSecondaryRS("Item").Value
                    rs("Machine Code").Value = adoSecondaryRS("Machine Code").Value
                    rs("RATE") = adoSecondaryRS("RATE").Value
                    rs("Quantity Required").Value = val(adoSecondaryRS("Quantity Required").Value)
                    rs("Cate  gory").Value = adoSecondaryRS("Category").Value
                    rs("Cost Centre").Value = IIf(IsNull(adoSecondaryRS("Cost Centre").Value), 0, adoSecondaryRS("Cost Centre").Value) 'adoSecondaryRS("Cost Centre").Value
                    rs("Budget Group").Value = adoSecondaryRS("Budget Group").Value
                    rs("Required Date").Value = adoSecondaryRS("Required Date").Value
                    rs("Remarks").Value = adoSecondaryRS("Remarks").Value
                    rs("Place").Value = adoSecondaryRS("Place").Value
                    rs("Apprpx. Cost") = adoSecondaryRS("Approx. Cost").Value
                    rs("CurStock") = adoSecondaryRS("Current Stock").Value
                    rs("LPO_RATE") = adoSecondaryRS("LPO_RATE").Value
                    If IsNull(adoSecondaryRS("lpo_date")) = False Then
                        rs("LPO_DATE") = Format(adoSecondaryRS("LPO_DATE").Value, "yyyy-mm-dd")
                    End If
                    rs("PUR_FROM") = adoSecondaryRS("PUR_FROM").Value
                    rs("DepCode") = txtfields(5).Text
                    rs("SubCost") = adoSecondaryRS("Cost Centre").Value
                    rs("Sample") = adoSecondaryRS("Sample")
                   

                    SNos = SNos + 1
                    adoSecondaryRS.MoveNext
                Loop
                
              
            
                 On Error GoTo Log_Error
                    Logrecordset.MoveFirst
                    SlNos = 1
                    Set Rslog = New Recordset
                    Rslog.Open "select * from  LogDet_PO  WHERE  1 =2 ", db, adOpenStatic, adLockBatchOptimistic
                    SNos = 1
                    Do While Not Logrecordset.EOF
                        Rslog.AddNew
                        Rslog("divcode").Value = divcode
                        Rslog("prno").Value = val(txtfields(2).Text)
                        Rslog("prdate").Value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                        Rslog("depcode").Value = Trim(txtfields(5).Text)
                        Rslog("reqname").Value = Trim(txtfields(1).Text)
                        Rslog("SubCost").Value = adoSecondaryRS("Cost Centre").Value
                        Rslog("prsno").Value = val(SlNos)
                        Rslog("itemcode") = adoSecondaryRS("Item").Value
                        
                        Rslog("macno") = adoSecondaryRS("Machine Code").Value
                        Rslog("RATE") = adoSecondaryRS("RATE").Value
                        Rslog("quantity") = adoSecondaryRS("Quantity Required").Value
                        Rslog("username") = UserName
                        Rslog("Trans_UserId").Value = uid
                        Rslog("Trans_date") = Format(Now, "YYYY-MM-DD HH:MM:SS")
                        Rslog("Trans_Name") = "Purchase Requisition"
                        Rslog("Trans_Mod") = "ADD"
                        Rslog("Trans_IPADD") = LocalIP
                        Rslog("Trans_Host") = LocalHost
                        Rslog("moduleNo") = ModuleNo
                        
                        Rslog("lastporate") = adoSecondaryRS("LPO_RATE").Value
                        Rslog("lastpodate").Value = Format(adoSecondaryRS("LPO_DATE"), "YYYY/MM/DD")
                         Rslog("lastposlcode").Value = adoSecondaryRS("PUR_FROM").Value
                         
                        SlNos = SlNos + 1
                        Logrecordset.MoveNext
                    Loop
                     Rslog.UpdateBatch adAffectAllChapters
                
Log_Error:
                
                
                
                SSTab1.ZOrder
    
                  
                dt = Format(pdate, "DD/MM/YYYY") & " " & Format(Now, "HH:MM:SS AM/PM")
                


                db.Execute "insert into po_prh (divcode, prno, prdate, depcode, refno, section, itype,reqname, scopecode, UserId,SubCost,Planno,Amendno,PO_GRP,createdby,createddt) values('" & divcode & "', " & adoPrimaryRS("prno") & ",'" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "','" & txtfields(5).Text & "'," & IIf(Trim(adoPrimaryRS("refno")) <> "", "'" & adoPrimaryRS("refno") & "'", 0) & ",'" & adoPrimaryRS("section") & "','" & adoPrimaryRS("itype") & "','" & val(txtfields(1).Text) & "','" & Trim(txtfields(3).Text) & "','" & UserID & "'," & val(txtfields(4).Text) & ",0,0,'" & Trim(txtfields(7).Text) & "','" & usrid & "','" & dt & "' ) "

                
               
                rs.UpdateBatch adAffectAllChapters
                adoSecondaryRS.MoveFirst
                Screen.MousePointer = 0
                


                MsgBox "PR. No. for your transaction is " & docno, vbInformation, head
                If prano <> 0 Then
                    db.Execute "UPDATE PO_PAH SET PRNO=" & adoPrimaryRS("PRNO") & " WHERE PRANO=" & prano & ""
                End If
                

                db.CommitTrans
                Screen.MousePointer = 0
                Opt = "add"
        End If
        
        If Opt = "mod" Then
            If PurTypeFlg = 1 Then
                If Trim(txtfields(7).Text) = "" Then
                    MsgBox "Please Select Order Type", vbInformation, head
                    txtfields(7).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
            End If
            db.BeginTrans
            i = 0
            Dim vrs As Variant
            Set vrs = adoPrimaryRS("CHILDCMD").Value
            
                
                  
            Opt = ""
            
            adoPrimaryRS("itype") = Text5.Text
            adoPrimaryRS("section") = Text3.Text
            vrs.MoveFirst
            
            Do While Not vrs.EOF
                If Trim(vrs(4)) = "" Then
                    vrs.Delete adAffectCurrent
                End If
                vrs.MoveNext
            Loop

            db.Execute "Delete from PO_Prl where DivCode  = '" & divcode & "' and prno = '" & txtfields(2).Text & "' and Prdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'"
                 
                 Set Logrecordset = New Recordset
                  Set Logrecordset = adoSecondaryRS.Clone
            
                  
             adoSecondaryRS.MoveFirst
                Set rs = New Recordset
                rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,ITEMCODE ""Item"",MACNO ""Machine Code"",QTYIND ""Quantity Required"",CATCODE ""Cate  gory"",CCCODE ""Cost Centre"",BGRPCODE ""Budget Group"",REQDDATE ""Required Date"",place ""Place"",appcost ""Apprpx. Cost"",REMARKS ""Remarks"",RATE,curstock,LPO_RATE,LPO_DATE,PUR_FROM,DepCode,SubCost,Sample from  po_prl  WHERE  1 =2 ", db, adOpenStatic, adLockBatchOptimistic
                SNos = 1
                Do While Not adoSecondaryRS.EOF
                    rs.AddNew
                    adoSecondaryRS(0).Value = divcode
                    adoSecondaryRS(1).Value = docno
                    adoSecondaryRS(4).Value = adoSecondaryRS(4).Value
                    rs("divcode").Value = adoSecondaryRS("divcode").Value
                    rs("prno").Value = txtfields(2).Text
                    rs("prdate").Value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                    rs("prsno").Value = SNos
                    rs("item").Value = adoSecondaryRS("item Code").Value
                    rs("Machine Code").Value = adoSecondaryRS("Machine Code").Value
                    rs("RATE") = adoSecondaryRS("RATE").Value
                    rs("Quantity Required").Value = val(adoSecondaryRS("Quantity Required").Value)
                    rs("Cate  gory").Value = adoSecondaryRS("Category").Value
                    rs("Cost Centre").Value = adoSecondaryRS("Cost Centre").Value
                    rs("Budget Group").Value = adoSecondaryRS("Budget Group").Value
                    rs("Required Date").Value = adoSecondaryRS("Required Date").Value
                    rs("Remarks").Value = adoSecondaryRS("Remarks").Value
                    rs("Place").Value = adoSecondaryRS("Place").Value
                    rs("Apprpx. Cost") = adoSecondaryRS("Approx. Cost").Value
                    rs("CurStock") = adoSecondaryRS("Current Stock").Value
                    rs("LPO_RATE") = adoSecondaryRS("LPO_RATE").Value
                    If IsNull(adoSecondaryRS("lpo_date")) = False Then
                        rs("LPO_DATE") = Format(adoSecondaryRS("LPO_DATE").Value, "yyyy-mm-dd")
                    End If
                    rs("PUR_FROM") = adoSecondaryRS("PUR_FROM").Value
                    rs("DepCode") = txtfields(5).Text
                    rs("SubCost") = adoSecondaryRS("Cost Centre").Value

                    On Error Resume Next

                 db.Execute "insert into LogDet_PO (divcode, prno, prdate, depcode,reqname,Trans_UserId,SubCost,prsno,itemcode,macno,RATE,quantity,username,Trans_date,Trans_Name,Trans_Mod,Trans_IPADD,Trans_Host,moduleno,lastporate,lastpodate,lastposlcode) values('" & divcode & "', " & adoPrimaryRS("prno") & ",'" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "','" & txtfields(5).Text & "','" & txtfields(1).Text & "','" & uid & "','" & adoSecondaryRS("Cost Centre").Value & "'," & val(SNos) & ",'" & adoSecondaryRS("item Code").Value & "','" & adoSecondaryRS("Machine Code").Value & "'," & val(adoSecondaryRS("RATE").Value) & "," & val(adoSecondaryRS("Quantity Required").Value) & ",'" & UserName & "', '" & Format(Now, "YYYY-MM-DD HH:MM:SS") & "','Purchase Requisition ','MODIFY','" & LocalIP & "','" & LocalHost & "','" & ModuleNo & "', " & adoSecondaryRS("LPO_RATE").Value & ", '" & Format(adoSecondaryRS("LPO_DATE"), "YYYY/MM/DD") & "','" & adoSecondaryRS("PUR_FROM") & "' ) "

                    SNos = SNos + 1
                    adoSecondaryRS.MoveNext
                Loop
                
                
                   
                
              rs.UpdateBatch adAffectAllChapters
              


            db.Execute "update po_prh set PO_GRP='" & Trim(txtfields(7).Text) & "' ,UserId ='" & UserID & "', scopecode='" & txtfields(3).Text & "', reqname='" & txtfields(1).Text & "' , itype = " & IIf(Trim(adoPrimaryRS("itype")) <> "" And IsNull(adoPrimaryRS("itype")) = False, "'" & adoPrimaryRS("itype") & "'", "Null") & ", section =" & IIf(Trim(adoPrimaryRS("section")) <> "" And IsNull(adoPrimaryRS("section")) = False, "'" & adoPrimaryRS("section") & "'", "Null") & " where divcode ='" & divcode & "' and prno =" & adoPrimaryRS("prno") & " and prdate='" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "'"

            db.CommitTrans
            Opt = "mod"
            MsgBox "Records Modified Successfully", vbInformation, head
            Screen.MousePointer = 0
            Buttonframe.Enabled = True
        End If
        
        If Opt = "del" Then
             If deltype = "1" Then
                                   Set Logrecordset = New Recordset
                  Set Logrecordset.DataSource = adoSecondaryRS
               
               adoSecondaryRS.MoveFirst
             Do While Not adoSecondaryRS.EOF
                                If grddatagrid.Columns("delete reason").Text = "" Then
                                     MsgBox "Delete Reason Cannot be Empty", vbInformation, head
                                      grddatagrid.Columns("delete reason").Locked = False
                                      grddatagrid.Col = 22
                                      grddatagrid.SetFocus
                                      Screen.MousePointer = 0
                                      Exit Sub
                                       
                                End If
                           adoSecondaryRS.MoveNext
                        Loop
            End If

            db.BeginTrans
            If deltype = "1" Then
              

                Screen.MousePointer = 0
                If MsgBox("Are you sure you want to delete this record?", vbYesNo, head) = vbYes Then
                    Screen.MousePointer = 11
                    Set rs = New Recordset
                    rs.Open "SELECT 'x' from PO_ORDL WHERE PRNO = " & val(adoPrimaryRS("PRNO")) & " AND PRDATE = '" & Format(adoPrimaryRS("PRDATE"), "dd-mmm-yyyy") & "' AND DIVCODE = '" & divcode & "'", db, adOpenStatic, adLockReadOnly
                    If Not rs.BOF Then
                        MsgBox "This PR. Amendment cannot be deleted as dependencies exist ", vbInformation, head
                        Screen.MousePointer = 0
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    db.Execute ("DELETE FROM  PO_PRL WHERE DIVCODE = '" & divcode & "' AND prno = " & val(adoPrimaryRS("prno")) & " AND PRDATE = '" & Format(adoPrimaryRS("prdate"), "dd-mmm-yyyy") & "'")
                    db.Execute ("DELETE FROM  PO_PRH WHERE DIVCODE = '" & divcode & "' AND prno = " & val(adoPrimaryRS("prno")) & " AND PRDATE = '" & Format(adoPrimaryRS("prdate"), "dd-mmm-yyyy") & "'")

                 On Error GoTo Logdel_Error
                    Logrecordset.MoveFirst
                    SlNos = 1
                    Set Rslog = New Recordset
                    Rslog.Open "select * from  LogDet_PO  WHERE  1 =2 ", db, adOpenStatic, adLockBatchOptimistic
                    SNos = 1
                    Do While Not Logrecordset.EOF
                        Rslog.AddNew
                        Rslog("divcode").Value = divcode
                        Rslog("prno").Value = val(txtfields(2).Text)
                        Rslog("prdate").Value = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                        Rslog("depcode").Value = Trim(txtfields(5).Text)
                        Rslog("reqname").Value = Trim(txtfields(1).Text)
                        Rslog("SubCost").Value = adoSecondaryRS("Cost Centre").Value
                        Rslog("prsno").Value = val(SlNos)
                        Rslog("itemcode") = Logrecordset("Item Code")
                        Rslog("itemname") = Logrecordset("Item Description")
                        Rslog("macno") = Logrecordset("Machine Code").Value
                        Rslog("RATE") = Logrecordset("RATE").Value
                        Rslog("quantity") = Logrecordset("Quantity Required").Value
                        Rslog("username") = UserName
                        Rslog("Trans_UserId").Value = uid
                        Rslog("Trans_date") = Format(Now, "YYYY-MM-DD HH:MM:SS")
                        Rslog("Trans_Name") = "Purchase Requisition"
                        Rslog("Trans_Mod") = "Delete"
                        Rslog("Trans_IPADD") = LocalIP
                        Rslog("Trans_Host") = LocalHost
                        Rslog("moduleNo") = ModuleNo
                        SlNos = SlNos + 1
                        Logrecordset.MoveNext
                    Loop
                     Rslog.UpdateBatch adAffectAllChapters
                
Logdel_Error:
                        
              
                
                   
                    db.Execute "UPDATE PO_PAH SET PRNO=NULL WHERE  Divcode='" & divcode & "' AND  prno = " & val(adoPrimaryRS("prno")) & ""
                    db.CommitTrans
                    MsgBox "Successfully deleted", vbOKOnly, head
                    Screen.MousePointer = 0
                 Else
                    Screen.MousePointer = 11
                    db.RollbackTrans
                 End If
            Else
           
                db.CommitTrans
                MsgBox "Transaction Complete", vbInformation, head
            End If
            Opt = "del"
        End If
        DataCombo1.Visible = False
        delmodoklabel.Visible = False
        delmodok.Visible = False

        Call NEWFORM(BUTTON, GSNO)
        BUTTON(3).Enabled = True
        If BUTTON(0).Enabled = True Then BUTTON(0).SetFocus

       Frame7.Enabled = False
        
Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Frame7.Enabled = False
    Screen.MousePointer = 11
    Frame3.Visible = False
    Frame4.Visible = False
    DTPicker1.Enabled = False
    LblLineDel.Caption = ""
    Frame6.Visible = False
    cmd_history.Visible = False

    Select Case Opt
    Case "mod"

        db.RollbackTrans
        DataCombo1.Visible = False
    Case "add"
   
        db.RollbackTrans
    Case "del"

        DataCombo1.Visible = False
        db.RollbackTrans
        grddatagrid.ToolTipText = ""
     
         
End Select
Opt = " "
Screen.MousePointer = 0

    Call Query_mode(0)
    DataCombo1.Visible = False
    delmodok.Value = False
    delmodoklabel.Visible = False
    delmodok.Visible = False

    Frame2.Visible = False
    Label4.Visible = False
    Label5.Visible = False
    DataGrid1.Visible = False
    Frame1.Visible = True
    grddatagrid.Visible = True

    Call cancl(BUTTON, GSNO)
    BUTTON(0).SetFocus
    Buttonframe.Enabled = True


Case 11

    Unload Me
  
End Select
Exit Sub
er1:
If err = -2147467259 Then
MsgBox err.description, vbInformation, head
    If Mid$(err.description, InStr(err.description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox err.description, vbInformation, head
End If
End Sub
Private Sub EmptyTextBox()
        ItemCodeTextBox.Text = Empty
        ItemNameTextBox.Text = Empty


        Text8.Text = Empty
        Text9.Text = Empty
        RateTextBox.Text = Empty
        QtyReqTextBox.Text = Empty
        MachineTextBox.Text = Empty
        MaskEdBox2.Text = pdate
        PlaceTextBox.Text = Empty
        AppCostTextBox.Text = Empty
        RemarksTextBox.Text = Empty
        Text10.Text = Empty
        MaskEdBox2.Text = "__/__/____"
End Sub
Private Sub ChkSample_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    SendKeys "{tab}"
End If
End Sub

Private Sub cmd_close_Click()
intervalminutes = 0
Frame6.Visible = False
End Sub

Private Sub cmd_history_Click()
intervalminutes = 0
Dim STR As String


If ItemCodeTextBox.Text <> "" Then
    SqlStr = " select pp.PORDNO""PO No."",isnull(convert(varchar(15),pp.PORDDT,103) ,'' )""PO Date."",s.slname""Supplier Name"",i.ITEMCODE""Code"",I.ITEMNAME ""Description"",pp2.ORDQTY ""Order Qty"" ,pp2.RATE ,CONVERT(DECIMAL(18,2),( ISNULL( pp2.ORDQTY ,0)* ISNULL( pp2.RATE,0)))  Itemrate,pp2.DISPER ""Dis. %"",pp2.DISAMT ""Discunt Amt."", pp2.TAXPER""Tax. %"",TAXAMT ""Tax Amount"""
    SqlStr = SqlStr + "  ,pp2.LANDCOST ""LandCost"""
    SqlStr = SqlStr + " FROM PO_ORDH pp "
    SqlStr = SqlStr + " INNER JOIN PO_ORDL pp2 ON pp2.divcode = pp.divcode AND pp2.PORDNO = pp.PORDNO AND pp2.PORDDT = pp.PORDDT "
    SqlStr = SqlStr + " INNER JOIN IN_ITEM I ON i.ITEMCODE=pp2.itemcode "
    SqlStr = SqlStr + " INNER JOIN FA_SLMAS S ON s.slcode=pp.SLCODE "
    SqlStr = SqlStr + " where  pp.PORDDT between '" & Format(yfdate, "yyyy-MM-dd") & "' and  '" & Format(yldate, "yyyy-MM-dd") & "' "

        If adoSecondaryRS.AbsolutePosition > 0 Then
            SqlStr = SqlStr + " and i.ITEMCODE='" & grddatagrid.Columns(4).Text & "' and pp.divcode ='" & divcode & "' ORDER BY 1"
        End If

    
Set rs = New Recordset
    rs.Open SqlStr, db, adOpenStatic, adLockReadOnly
    Set DataGrid2.DataSource = Nothing
    If Not rs.EOF Then
        Frame6.Visible = True
        Frame6.ZOrder

      Set DataGrid2.DataSource = rs
    Else
        Frame6.Visible = False
        MsgBox "No Records Found", vbCritical, Message
    End If
Else
    MsgBox "No Records Found", vbCritical, Message
    
End If

 
End Sub

Private Sub CmdAddOk_Click()
Command3_Click

  tmp = Opt
  
  If adoSecondaryRS.RecordCount > 0 Then
    
   Set RSG = New Recordset
        Set RSG.DataSource = adoSecondaryRS
        opt1 = Opt
        Opt = ""
        If RSG.RecordCount > 0 Then
            RSG.MoveFirst
             While Not RSG.EOF
                grddatagrid.Columns(13).Text = MachineTextBox.Text
                grddatagrid.Columns(11).Text = val(txtfields(4).Text)
            RSG.MoveNext
            Wend
            
        End If
        
  End If
  
  Opt = tmp
End Sub

Private Sub CmdCancel_Click()
 FrameItem.Visible = False
End Sub

Private Sub CmdItemSelect_Click()
 If Opt = "add" Or Opt = "mod" Then
  Dim totrow As Integer
  totrow = 0
 grddatagrid.EditActive = True
 grddatagrid.AllowUpdate = True
        BUTTON(9).Enabled = True


        grddatagrid.Columns(10).Locked = False
        grddatagrid.Columns(9).Locked = False
        grddatagrid.Columns(9).Locked = False
        grddatagrid.Columns(11).Locked = False
        dd = adoSecondaryRS.AbsolutePosition
        ''To Avoid Duplicate Record
        Set RSG = New Recordset
        Set RSG.DataSource = adoSecondaryRS
        opt1 = Opt
        Opt = ""

        
        Opt = opt1
        If indentrs.RecordCount > 0 And Opt = "add" Then
     
                
                 With FpSpdInd
        chk = 0
    
         If adoSecondaryRS.RecordCount > 1 Then
         adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount
            totrow = adoSecondaryRS.RecordCount
         Else
         adoSecondaryRS.AbsolutePosition = 1
         End If

        For SpRW = 1 To .MaxRows
            .Row = SpRW
            .Col = E_SpdIndent.SprdCheck
            If .Value = True Then
            

            Call stock_find
            Call Rate_Find
            
            grddatagrid.Columns(4).Text = GetText(FpSpdInd, E_SpdIndent.SprdItemcode, SpRW)
            grddatagrid.Columns(5).Text = GetText(FpSpdInd, E_SpdIndent.sprdItemname, SpRW)
            grddatagrid.Columns(6).Text = GetText(FpSpdInd, E_SpdIndent.Sprduom, SpRW)
            grddatagrid.Columns(7).Text = IIf(val(RateTextBox.Text) = 0, "0.0000", Format(RateTextBox.Text, "####0.0000"))
            grddatagrid.Columns(8).Text = Format(val(Text8.Text), "###0.000")
            
            RateTextBox.Text = 0
            Text8.Text = 0


            grddatagrid.Columns(7).NumberFormat = "##0.000"
            grddatagrid.Columns(8).NumberFormat = "##0.000"
            grddatagrid.Columns(9).NumberFormat = "##0.000"
            grddatagrid.Columns(16).NumberFormat = "##0.00"

            
            Set RSA = New Recordset
            RSA.Open "select top 1 a.pordno,a.porddt,rate,a.slcode,c.slname from po_ordh a,po_ordl b,fa_slmas c where a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt and a.slcode =c.slcode and b.itemcode='" & GetText(FpSpdInd, E_SpdIndent.SprdItemcode, SpRW) & "' and a.divcode='" & divcode & "' order by a.porddt desc,a.pordno desc", db, adOpenStatic, adLockReadOnly
            If RSA.RecordCount > 0 Then
                grddatagrid.Columns(19).Text = RSA("rate")
                grddatagrid.Columns(20).Text = RSA("porddt")
                grddatagrid.Columns(21).Text = RSA("slcode")
                grddatagrid.Columns(22).Text = RSA("slname")
            End If
            


             totrow = totrow + 1
                adoSecondaryRS.AddNew
            End If
        Next
    End With

         FrameItem.Visible = True
        dlmdfrm.Visible = True
        dlmdfrm.Visible = True
        stbar.Panels(2).Text = "Select PR. from the list"
        OrderbyIndent (0)
        FrameItem.ZOrder
        FpSpdInd.SetFocus

    
    If totrow > 1 Then
        LblTotrow.Caption = "No.of Records : " & totrow
    Else
        LblTotrow.Caption = "No.of Record : " & totrow
    End If
        ElseIf Opt = "mod" Then

            Set RSA = New Recordset
            RSA.Open "select a.pordno,a.porddt,rate,a.slcode,c.slname from po_ordh a,po_ordl b,fa_slmas c where a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt and a.slcode =c.slcode and b.itemcode='" & ItemCodeTextBox.Text & "' order by a.pordno desc,a.porddt desc", db, adOpenStatic, adLockReadOnly
            If RSA.RecordCount > 0 Then
                grddatagrid.Columns(18).Text = RSA("rate")
                grddatagrid.Columns(19).Text = RSA("porddt")
                grddatagrid.Columns(20).Text = RSA("slcode")
                grddatagrid.Columns(21).Text = RSA("slname")
            End If

        End If
        
        grddatagrid.EditActive = True
        

    End If
End Sub

Private Sub Cmdnewitem_Click()
If (Opt = "add" Or Opt = "mod") Then



      abspos = adoSecondaryRS.AbsolutePosition

        Call ItemLookup

        
        Set RSG = New Recordset
        Set RSG.DataSource = adoSecondaryRS
        opt1 = Opt
        Opt = ""
        If RSG.RecordCount > 0 Then
            RSG.MoveFirst
            If opt1 = "add" Then
                While Not RSG.EOF

                    If ItemCodeTextBox = grddatagrid.Columns(4).Text And ItemCodeTextBox <> "" Then
                    
                        MsgBox " Same Item should not Be repeat", vbInformation, head
                        ItemCodeTextBox.SetFocus
                        RSG.MoveLast
                        Opt = opt1
                        Exit Sub
                    End If
                    RSG.MoveNext
                Wend
                If RSG.RecordCount > 0 Then RSG.MoveLast
            End If
        End If
        Opt = opt1
        
        Set itemrs = New Recordset
        itemrs.Open "Select itemname,uom ""unit"",RATE,CURSTK from in_item where itemcode='" & ItemCodeTextBox.Text & "'", db, adOpenStatic, adLockReadOnly
        If itemrs.EOF Then
           Cancel = False
        End If
    End If
             Dim oym As String
           oym = Year(yfdate) & "00"
           

    

Exit Sub



Command3.Visible = True
End Sub

Private Sub Combo2_Click()
  intervalminutes = 0
Dim ss As String
 ss = Combo2.Text
 Text5.Text = Mid(ss, 1, InStr(ss, "--") - 1)
End Sub

Private Sub Combo2_GotFocus()
      intervalminutes = 0
    stbar.Panels(2).Text = "Select the PR. Type"
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    SendKeys " {tab} "
End If
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
Buttonframe.Enabled = True
Frame2.Visible = False
If (Opt = "add" Or Opt = "mod") And (ksldesc1.listfield1 = "depcode") Then
    txtfields(5).SetFocus
ElseIf grddatagrid.Col = 4 And ksldesc1.listfield1 = "grpcode" And grddatagrid.Row > 1 Then
        grddatagrid.Col = 11
        grddatagrid.SetFocus
        Exit Sub
ElseIf grddatagrid.Col <> 4 And grddatagrid.Col <> 0 Then
        grddatagrid.Columns(11).Text = ""
        grddatagrid.Col = 12
        grddatagrid.SetFocus
ElseIf grddatagrid.Col = 4 And ksldesc1.listfield1 = "s.macno" Then
    grddatagrid.Col = 6
    grddatagrid.SetFocus
    Exit Sub
ElseIf grddatagrid.Col = 4 And ksldesc1.listfield1 = "MACDES" Then
    
    MaskEdBox2.SetFocus
    Exit Sub
End If
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form Purchase Requisition", vbInformation, head

End Sub

Private Sub Command3_Click()
intervalminutes = 0
On Error GoTo Command3_Click_Error
    If Opt = "add" Or Opt = "mod" Then
        BUTTON(9).Enabled = True
        
        If ItemCodeTextBox.Text = Empty Then
            ItemCodeTextBox.SetFocus
            Exit Sub
        End If
        
        If val(QtyReqTextBox.Text) <= 0 Then
            QtyReqTextBox.SetFocus
            Exit Sub
        End If
        If adoSecondaryRS.AbsolutePosition < 0 Then
            QtyReqTextBox.SetFocus
            Exit Sub
        End If
        dd = adoSecondaryRS.AbsolutePosition

        Set RSG = New Recordset
        Set RSG.DataSource = adoSecondaryRS
        opt1 = Opt
        Opt = ""
        If RSG.RecordCount > 0 Then
            RSG.MoveFirst
            If opt1 = "add" Then
                While Not RSG.EOF
              
                    If ItemCodeTextBox = grddatagrid.Columns(4).Text Then
         
                        MsgBox " Same Item should not Be repeat", vbInformation, head
                        ItemCodeTextBox.SetFocus
                        RSG.MoveLast
                        Opt = opt1
                        Exit Sub
                    End If
                    RSG.MoveNext
                Wend
                If RSG.RecordCount > 0 Then RSG.MoveLast
            End If
        End If
        
        Opt = opt1
        If ItemCodeTextBox.Text <> Empty And Opt = "add" Then

            grddatagrid.Columns(4).Text = ItemCodeTextBox.Text
            grddatagrid.Columns(5).Text = ItemNameTextBox.Text
            grddatagrid.Columns(6).Text = Text9.Text
            grddatagrid.Columns(7).Text = IIf(val(RateTextBox.Text) = 0, "0.0000", Format(RateTextBox.Text, "####0.0000"))
            grddatagrid.Columns(8).Text = Format(val(Text8.Text), "###0.000")
            grddatagrid.Columns(9).Text = Format(QtyReqTextBox.Text, "###0.000")
            grddatagrid.Columns(13).Text = MachineTextBox.Text
            grddatagrid.Columns(23).Text = IIf(ChkSample.Value = 1, "Y", "N")
            If MaskEdBox2.Text <> "__/__/____" Then
                grddatagrid.Columns(14).Text = MaskEdBox2.Text
            End If
            grddatagrid.Columns(15).Text = PlaceTextBox.Text
            grddatagrid.Columns(16).Text = Format(AppCostTextBox.Text, "###0.00")
            grddatagrid.Columns(17).Text = RemarksTextBox.Text
            grddatagrid.Columns(7).NumberFormat = "##0.000"
            grddatagrid.Columns(8).NumberFormat = "##0.000"
            grddatagrid.Columns(9).NumberFormat = "##0.000"
            grddatagrid.Columns(16).NumberFormat = "##0.00"
            grddatagrid.Columns(11).Text = val(txtfields(4).Text)
            
            Set RSA = New Recordset
            RSA.Open "select a.pordno,a.porddt,rate,a.slcode,c.slname from po_ordh a,po_ordl b,fa_slmas c where a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt and a.slcode =c.slcode and b.itemcode='" & ItemCodeTextBox.Text & "' and a.divcode='" & divcode & "' order by a.porddt desc,a.pordno desc", db, adOpenStatic, adLockReadOnly
            If RSA.RecordCount > 0 Then
                grddatagrid.Columns(19).Text = RSA("rate")
                grddatagrid.Columns(20).Text = RSA("porddt")
                grddatagrid.Columns(21).Text = RSA("slcode")
                grddatagrid.Columns(22).Text = RSA("slname")
            End If
            
            Buttonframe.Enabled = True
            adoSecondaryRS.MoveLast
            If grddatagrid.Columns(4).Text = Empty Then
                adoSecondaryRS.Delete adAffectCurrent
            End If
            adoSecondaryRS.AddNew
            CurrentQtyLabel.Caption = "Current Qty : "
            ItemCodeTextBox.Text = Empty
            ItemNameTextBox.Text = Empty
            Text8.Text = Empty
            Text9.Text = Empty
            RateTextBox.Text = Empty
            QtyReqTextBox.Text = Empty
            MachineTextBox.Text = Empty

            PlaceTextBox.Text = Empty
            AppCostTextBox.Text = Empty
            RemarksTextBox.Text = Empty
            Text6.Text = Empty
            TxtMacModel.Text = Empty
            TxtDays.Text = Empty
            ChkSample.Value = 0
        ElseIf Opt = "mod" Then
            Buttonframe.Enabled = True
            If ItemCodeTextBox.Text <> Empty Then
            adoSecondaryRS.AbsolutePosition = dd

            grddatagrid.Columns(4).Text = ItemCodeTextBox.Text
            grddatagrid.Columns(5).Text = ItemNameTextBox.Text

            grddatagrid.Columns(6).Text = Text9.Text
            grddatagrid.Columns(7).Text = IIf(val(RateTextBox.Text) = 0, "0.0000", Format(RateTextBox.Text, "####0.0000"))

            grddatagrid.Columns(8).Text = Mid$(CurrentQtyLabel.Caption, InStr(1, CurrentQtyLabel.Caption, ": ") + 2, Len(CurrentQtyLabel.Caption))
            grddatagrid.Columns(9).Text = QtyReqTextBox.Text
            grddatagrid.Columns(13).Text = MachineTextBox.Text
           
            If MaskEdBox2.Text <> "__/__/____" Then
                grddatagrid.Columns(14).Text = MaskEdBox2.Text
            End If
            grddatagrid.Columns(15).Text = PlaceTextBox.Text
            grddatagrid.Columns(16).Text = AppCostTextBox.Text
            grddatagrid.Columns(17).Text = RemarksTextBox.Text
            
            Set RSA = New Recordset
            RSA.Open "select a.pordno,a.porddt,rate,a.slcode,c.slname from po_ordh a,po_ordl b,fa_slmas c where a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt and a.slcode =c.slcode and b.itemcode='" & ItemCodeTextBox.Text & "' order by a.pordno desc,a.porddt desc", db, adOpenStatic, adLockReadOnly
            If RSA.RecordCount > 0 Then
                grddatagrid.Columns(18).Text = RSA("rate")
                grddatagrid.Columns(19).Text = RSA("porddt")
                grddatagrid.Columns(20).Text = RSA("slcode")
                grddatagrid.Columns(21).Text = RSA("slname")
            End If
            
            adoSecondaryRS.MoveLast
                If grddatagrid.Columns(4).Text = Empty Then
                    adoSecondaryRS.Delete adAffectCurrent
                End If
            Buttonframe.Enabled = True
            CurrentQtyLabel.Caption = "Current Qty : "
            ItemCodeTextBox.Text = Empty
            ItemNameTextBox.Text = Empty

            Text8.Text = Empty
            Text9.Text = Empty
            RateTextBox.Text = Empty
            QtyReqTextBox.Text = Empty
            MachineTextBox.Text = Empty

            PlaceTextBox.Text = Empty
            AppCostTextBox.Text = Empty
            RemarksTextBox.Text = Empty
            Text6.Text = Empty
            TxtMacModel.Text = Empty
            End If

            ItemCodeTextBox.Text = Empty
            ItemNameTextBox.Text = Empty

            Text8.Text = Empty
            Text9.Text = Empty
            RateTextBox.Text = Empty
            QtyReqTextBox.Text = Empty
            MachineTextBox.Text = Empty
            MaskEdBox2.Text = "__/__/____"
            PlaceTextBox.Text = Empty
            AppCostTextBox.Text = Empty
            RemarksTextBox.Text = Empty

        End If
        

            Command3.Visible = False
            txtfields(4).Text = ""
            MachineTextBox.Text = ""

    End If
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command3_Click of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub Command4_Click()

intervalminutes = 0
On Error GoTo Command4_Click_Error
Buttonframe.Enabled = True
If Opt = "mod" Then
   Frame5.Visible = False
   Text1.Text = ""
   Label3.Caption = "Find"
   Label7.Caption = "Find from PR. No."
   Exit Sub
 End If

Opt = "fnd"
Screen.MousePointer = 11
Call Query_mode(0)
Frame5.Visible = False
Buttonframe.Enabled = True
BUTTON(0).SetFocus
Exit Sub
Command4_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command4_Click of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub FooterCmd_Click()
    RepFoot = UserFooter1.SelectedStr
    Call BUTTON_Click(12)
End Sub



Private Sub FpSpdIndHead_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
 FpSpdInd.OperationMode = OperationModeNormal
End Sub

Private Sub FpSpdIndHead_Change(ByVal Col As Long, ByVal Row As Long)


        FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 1, stext
    If KeyAscii = 8 Then
        If Len(stext) = 1 Then stext = ""
    ElseIf KeyAscii <> "" Then
        stext = stext & Chr(KeyAscii)
    End If
        
        FindMatch FpSpdIndHead.ActiveCol, CStr(stext)
        FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 0, fpfname
        Call IndentAddnew(1, CStr(stext), val(Col))

End Sub

Private Sub FpSpdIndHead_KeyPress(KeyAscii As Integer)
Dim stext, fpfname

    FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 1, stext
    If KeyAscii = 8 Then
        If Len(stext) = 1 Then stext = ""
    Else
        stext = stext & Chr(KeyAscii)
    End If
    FindMatch FpSpdIndHead.ActiveCol, CStr(stext)
    FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 0, fpfname

End Sub

Private Sub ItemCodeTextBox_Change()


   Set itemrs = New Recordset
    itemrs.Open "Select itemname,uom ""unit"",RATE,CURSTK from in_item where itemcode='" & ItemCodeTextBox.Text & "'", db, adOpenStatic, adLockReadOnly
    If Not itemrs.EOF Then
        ItemNameTextBox.Text = itemrs(0)
        Call stock_find
        Call Rate_Find
    Else
     ItemNameTextBox.Text = ""

    End If
     
   On Error GoTo 0
   Exit Sub

ItemCodeTextBox_Change_Error:

    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ItemCodeTextBox_Change of Form Purchase Requisition"
 
End Sub

Private Sub ItemCodeTextBox_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    Call ToAlphanumNoSp(txtfields(Index), 10, KeyAscii)
End Sub


Private Sub DataGrid1_DblClick()
intervalminutes = 0
On Error GoTo DataGrid1_DblClick_Error
Exit Sub
Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
Else
    Call disablcontls
End If

    b = DataGrid1.Columns(2).Text

    A = DataGrid1.Columns(3).Text
    C = DataGrid1.Columns(1).Text
    Call delmodproc(CStr(A), CStr(b), CStr(C))
Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DataGrid1_DblClick of Form Purchase Requisition", vbInformation, head
   
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error
Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
Else
    Call disablcontls
End If
If DataCombo1.Text <> Empty Then

    C = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "          ") - 1)

    b = Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "          ") + 10, 10)
    A = Empty
    Call delmodproc(CStr(A), CStr(b), CStr(C))
    If Opt = "mod" Then
    BUTTON(9).Enabled = True
    End If
Else
   MsgBox "Select a value from the list", vbOKOnly, head
   Screen.MousePointer = 0
   BUTTON(10).Enabled = True
End If

If Opt = "mod" Or Opt = "del" Then
    On Error Resume Next
    stbar.Panels(2).Text = "Click Save or Cancel Button to Continue...."
    grddatagrid.Col = 7
    grddatagrid.SetFocus
End If
Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure delmodok_Click of Form Purchase Requisition", vbInformation, head
End Sub
Private Sub DTPicker1_CloseUp()
intervalminutes = 0
MaskEdBox1(0).Text = DTPicker1.Value
MaskEdBox1(0).SetFocus
End Sub

Private Sub DTPicker1_LostFocus()
intervalminutes = 0
On Error GoTo DTPicker1_LostFocus_Error
If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("PR. Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = pdate
            MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
            MsgBox ("PR. Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = pdate
            MaskEdBox1(0).SetFocus
    End If
End If
Exit Sub
DTPicker1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DTPicker1_LostFocus of Form Purchase Requisition", vbInformation, head

End Sub

Private Sub Command5_Click()
'----------------
intervalminutes = 0
On Error GoTo Command5_Click_Error
Buttonframe.Enabled = True
If Opt = "mod" Then
   If CDate(Text1.Text) Then
     Dim T_rs As Recordset
     Set T_rs = New Recordset
     Set T_rs = grddatagrid.DataSource
     T_rs.MoveFirst
     Do While Not T_rs.EOF
       If Trim(grddatagrid.Columns(10)) = "" Then
         grddatagrid.Columns(10) = Text1.Text
         T_rs.MoveNext
        Else
         T_rs.MoveNext
        End If
     Loop
     Frame5.Visible = False
     Text1.Text = ""
     Label3.Caption = "Find"
     Label7.Caption = "Find from PR. No."
     Exit Sub
   Else
     MsgBox "Enter the Date Only", vbInformation, head
     Text1.Text = ""
     Text1.SetFocus
   End If
 End If
'-----------------
Opt = "fnd"
Screen.MousePointer = 11
If Opt = "fnd" Then
    Opt = "f"
    Set adoPrimaryRS = New Recordset
    
     
    
    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,PO_GRP from  PO_PRH th left join IN_DEP D  on  th.DEPCODE  = D.DEPCODE where  d.divcode='" & divcode & "'  and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "' AND d.DIVCODE = '" & divcode & "'  and th.prno='" & val(Text1.Text) & "' " & _
                    " Order by PRNO} AS ParentCMD APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.ITEMCODE ""Item"",i.itemname ""Description"",i.UOM ""Unit"",I.RATE ""Rate"",Description ""Machine"",t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'PR. Status' = (case PRSTATUS when 'O' then 'ORDERED' when 'E' then 'ENQUIRED' when 'R' then 'RECEIVED' when 'C' then 'RECEIVED' else 'Requested' end ),place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"" from PO_PRL t inner join IN_ITEM i on t.itemcode = i.itemcode left join mm_MACmas S  on t.macno = s.mac_no inner join po_prh h on t.prno=h.prno and t.prdate=h.prdate " & _
                     " and h.depcode=s.depcode where s.divcode='" & divcode & "' and  snull(amdflg,'N')<>'Y'   Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic


    Call bindcontls
    Call NEWFORM(BUTTON, GSNO)
    If adoPrimaryRS.RecordCount > 0 Then
        find = True
    End If
End If


If find = True Then
    BUTTON(10).Enabled = True
    Frame5.Visible = False
    find = False
Else
    MsgBox "No Record found"
    Text1.Text = Empty
    Text1.SetFocus
    
End If
Screen.MousePointer = 0
Exit Sub
Command5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command5_Click of Form Purchase Requisition", vbInformation, head
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
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
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

ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)
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
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_KeyDown of Form Purchase Requisition", vbInformation, head
    
End Sub



Private Sub Form_Load()

  On Error GoTo Form_Load_Error
  stbar.Panels(1).Text = SbMsg
  
  Set db = New Connection
  db.ConnectionTimeout = 1200
  db.CursorLocation = adUseClient
  db.Open "PROVIDER=MSDataShape;" + connectstring
  db.CommandTimeout = 1200
   Frame6.Visible = False

  Opt = "qry"
   
     intervalminutes = 0

    
  
  Dim ParaRs As New Recordset
  Dim YearChkRs As New Recordset
  Set ParaRs = New Recordset
  ParaRs.Open "Select Isnull(BudgetQty,'N')BudgetQty  from PO_para where DivCode = '" & divcode & "'", db, adOpenStatic, adLockReadOnly
  If val(ParaRs.RecordCount) > 0 Then

    
    BudgetPara = ParaRs("BudgetQty")
      If ParaRs("BudgetQty") = "Y" Then
        LblSubCost.ForeColor = &HFF0000
    End If
  Else

    
    MsgBox "Budget Qty Not Defined . So check Parameter", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
    
  End If
    

  Frame7.Enabled = False
  Call IndType
  Call Query_mode(0)
  If PurTypeFlg = 1 Then
    lblLabels(9).Visible = True
    txtfields(7).Visible = True
    Text11.Visible = True
  End If
 Purstock = ""
  Call LookupItemgrpwise
  Call LookupItemgrpwiseintform
  
  Opt = "qry"
  DATLAB.Caption = pdate
  grddatagrid.ScrollBars = dbgAutomatic
  grddatagrid.Caption = "Item Details"
  DATLAB.Caption = pdate
  DTPicker1.MaxDate = yldate
  DTPicker1.MinDate = yfdate
  DTPicker1.Value = pdate
  
  stbar.Panels(1).Text = SbMsg
  If MibEnableFlg = "N" Then
    Label16.Visible = False
    txtfields(3).Visible = False
    Text7.Visible = False
  Else
    Label16.Visible = True
    txtfields(3).Visible = True
    Text7.Visible = True
 End If
 

    
  Call disablcontls
     SSTab1.Height = 7500
     Dim C As Control
  On Error Resume Next
  For Each C In Me.Controls
    C.Font.Name = "tahoma"

    
    grddatagrid.Font = "tahoma"
    grddatagrid.Font.Size = 8
Next
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form Purchase Requisition", vbInformation, head
    
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
     intervalminutes = 0

On Error GoTo Form_Unload_Error
  Screen.MousePointer = vbDefault
  On Error Resume Next
  db.Close

  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Indent = Nothing
  Reset
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Unload of Form Purchase Requisition", vbInformation, head
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
  intervalminutes = 0
LblApproval.Caption = ""
If Opt <> "add" And Opt <> "mod" And Opt <> "del" And Opt <> "fnd" Then
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        Set adoSecondaryRS = New Recordset
     
        adoSecondaryRS.Open "select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.ITEMCODE ""Item"",i.itemname ""Item Description"",i.UOM ""UOM"",I.RATE ""Rate"",Description ""Machine"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'PR. Status' = (case    WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'Requested'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'PR. CANCELLED'  WHEN PRSTATUS ='D' OR DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS ='T' OR ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS ='S' OR SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS= 'F' or FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
                                "WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED'  END ),FinalLevel_Remarks, place ""Place Of Issue"",IsNull(t.CATCODE,'') ""Category"",SCCName ""Cost Centre"",BGRPCODE ""Budget Group"",appcost ""Approx. Cost"",t.remarks ""Remarks"",LPO_RATE 'Last P.O.Rate',LPO_DATE 'Last P.O.Date',PUR_FROM 'Purchase From',p.slname 'Supplier',Sample from " & _
                                " PO_PRL t   " & _
                                " Inner join po_prh h on t.divcode=h.divcode and t.prno=h.prno and t.prdate=h.prdate " & _
                                " inner join IN_ITEM i on t.itemcode = i.itemcode " & _
                                " Left  join  mm_MACmas S on t.divcode =s.divcode and  t.macno = s.mac_no and h.depcode = s.depcode " & _
                                " Left join fa_slmas p on t.pur_from = p.slcode " & _
                                " Left JOin in_scc sc on sc.Divcode = t.Divcode  and sc.scccode = t.CCCODE " & _
                                " where isnull(amdflg,' ')<>'Y'  and t.divcode='" & divcode & "' and t.prno='" & adoPrimaryRS("prno") & "' and t.prdate='" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "' Order by t.prsno ", db, adOpenStatic, adLockBatchOptimistic
        Set rs = New Recordset
        rs.Open "Select isnull(User_Name,'')user_Name From PP_Passwd where divcode = '" & divcode & "' and Module = " & ModuleNo & " and User_Id='" & usrid & "'", db, adOpenStatic, adLockReadOnly
        If rs.RecordCount > 0 Then
            lblLabels(6).Caption = Trim(rs("user_Name"))
        End If
        

        
        Set grddatagrid.DataSource = adoSecondaryRS
        If adoSecondaryRS.RecordCount > 0 Then
                Call GRDALIN
                Call grdnumall
                Call GridCaption
            grddatagrid.Row = 0
             Do While Not adoSecondaryRS.EOF
                adoSecondaryRS.MoveNext
             Loop
        End If
     End If
End If
 If Opt <> "qry" Then Exit Sub
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        If Not IsNull(adoPrimaryRS("section")) Then
            Text3.Text = adoPrimaryRS("section")
        Else
            Text3.Text = ""
        End If
       

    
     Set rspopara = New Recordset
     rspopara.Open "select isnull(PRapprovalstatus,'N') PRapprovalstatus from po_para where divcode='" & divcode & "'", db, adOpenStatic
     
      If UCase(rspopara("PRapprovalstatus")) = "Y" Then
           
           LblApproval.Visible = True
           Set rsnew = New Recordset
           rsnew.Open "select distinct isnull(th.app1,'') Firstlevelapp,isnull(th.app2,'') Secondlevelapp,isnull(th.app3,'') Thirdlevelapp,isnull(th.appflg,'N') conflg,prstatus from po_prh th inner join po_prl td on th.prno=td.prno and td.prdate=th.prdate and th.divcode=td.divcode where th.divcode='" & divcode & "' and th.prno='" & adoPrimaryRS(1) & "' and th.prdate='" & Format(Format(adoPrimaryRS(2).Value, "yyyy-mm-dd"), "YYYY-MM-DD") & "' ", db, adOpenStatic
           If rsnew.RecordCount > 0 Then
              
                LblApproval.Caption = "Not Approved"
                LblApproval.ForeColor = &HFF&
             
                If rsnew("prstatus") = "F" Then
                   LblApproval.Caption = "First Level Approved"
                   LblApproval.ForeColor = &H8000&
                End If
                
                If rsnew("Secondlevelapp") <> "" Then
                  LblApproval.Caption = "Second Level Approved"
                  LblApproval.ForeColor = &H8000&
                End If
                
                If rsnew("Thirdlevelapp") <> "" Then
                   LblApproval.Caption = "Third Level Approved"
                   LblApproval.ForeColor = &H8000&
                End If
                
                If rsnew("prstatus") = "D" Then
                   LblApproval.Caption = "Final Level Approved"
                   LblApproval.ForeColor = &H8000&
                End If
                
           End If
        Else
            LblApproval.Caption = ""
        End If
    
    End If
     
     
        
Dim adoitypers As ADODB.Recordset
Dim i As Integer
Dim ss As String

    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        If Not IsNull(adoPrimaryRS("itype")) Then
        Set adoitypers = New Recordset
        adoitypers.Open "select * from PO_INDENTTYPE where itype = '" & adoPrimaryRS("itype") & "'  ", db, adOpenStatic, adLockReadOnly
        If adoitypers.RecordCount > 0 Then
            ss = adoitypers("itype")
            For i = 0 To Combo2.ListCount
               Combo2.ListIndex = i
               If Trim(Mid(Combo2.Text, 1, InStr(Combo2.Text, "--") - 1)) = Trim(ss) Then
                   Text5.Text = Trim(ss)
                 Exit For
               End If
            Next i
        End If
    Else
        Text5.Text = ""
        Combo2.ListIndex = 0
    End If
End If

Dim intyrs As New ADODB.Recordset
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
    txtfields(1).Text = IIf(IsNull(adoPrimaryRS!reqname), "", adoPrimaryRS!reqname)
End If

If IsNull(adoPrimaryRS("reqname")) = False Then
    Set intyrs = New Recordset
    If EmpCommon = True Then
        intyrs.Open "select Empno,ename from pr_emp where Empno = " & val(txtfields(1).Text) & "", db, adOpenStatic, adLockReadOnly
    Else
        intyrs.Open "select Empno,ename from pr_emp where divcode='" & divcode & "' and Empno = " & val(txtfields(1).Text) & "", db, adOpenStatic, adLockReadOnly
    End If
    If intyrs.RecordCount > 0 Then
        Text4.Text = intyrs!ename
    End If
Else
    Text4.Text = ""
End If
  
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
    txtfields(3).Text = IIf(IsNull(adoPrimaryRS!Scopecode), "", adoPrimaryRS!Scopecode)
End If
  
If txtfields(3) <> "" Then
    Set intyrs = New Recordset
    intyrs.Open "SELECT type_code, typname FROM PO_SCOPETYPE where type_code = '" & Trim(txtfields(3).Text) & "'", db, adOpenStatic, adLockReadOnly
    If intyrs.RecordCount > 0 Then
        Text7.Text = intyrs!typname
    End If
Else
    Text7.Text = ""
End If

If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
    If adoPrimaryRS("SubCost") <> "" Then
        Set rs1 = New Recordset
        rs1.Open "select SccCode,SccName from in_Scc S,In_Dep D,PO_Prh H  where H.DivCOde = S.Divcode and H.DepCode=S.DepCode and H.SubCost=S.SccCode and D.DepCode =S.DepCode and D.DivCode=S.DivCode and S.DepCode ='" & adoPrimaryRS("DepCode") & "' and s.divcode='" & divcode & "' and s.SccCode = '" & adoPrimaryRS("SubCost") & "' Order by 1", db, adOpenStatic, adLockReadOnly
        If rs1.RecordCount > 0 Then
            Text10.Text = Trim(rs1("Sccname"))
        End If
    Else
        txtfields(4).Text = ""
        Text10.Text = ""
    End If
End If


Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure adoPrimaryRS_MoveComplete of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
  intervalminutes = 0
Dim uprs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error
If Opt = "add" Or Opt = "mod" Then
    If ColIndex = 12 Then
        grddatagrid.Columns(12).Text = UCase(grddatagrid.Columns(12).Text)
    End If
    If ColIndex = 12 And Opt = "add" Then
        If Not grddatagrid.Columns(11).Text = "" Then
        If CDate(grddatagrid.Columns(11)) < CDate(MaskEdBox1(0).Text) Then
            MsgBox "Required Date must be equal to or after the Processing Date.", vbInformation, head
            st2 = "A"
            grddatagrid.Columns(12).Text = ""
            Exit Sub
        End If
        End If
    End If
End If
If (Opt = "add" Or Opt = "mod") And ColIndex = 10 And Not grddatagrid.Row = 0 Then
   mvd = "Y"
   grddatagrid.Row = grddatagrid.Row + 1
   grddatagrid.Row = grddatagrid.Row - 1
End If

'-----------------
If Opt = "mod" Then
   If grddatagrid.Col = 6 Then
      Dim C_Rs As Recordset
      Set C_Rs = New Recordset
      If backend = "Sql Server" Then
          C_Rs.Open "select isnull(QTYREQD,0) from po_prl where divcode = '" & grddatagrid.Columns(0) & "' and prno = " & grddatagrid.Columns(1) & " and prdate = '" & Format(grddatagrid.Columns(2), "dd-mmm-yyyy") & "' and prsno = " & grddatagrid.Columns(3) & " and itemcode = '" & grddatagrid.Columns(4) & "' ", db, adOpenStatic, adLockReadOnly
      Else
          C_Rs.Open "select nvl(QTYREQD,0) from po_prl where divcode = '" & grddatagrid.Columns(0) & "' and prno = " & grddatagrid.Columns(1) & " and prdate = '" & Format(grddatagrid.Columns(2), "dd-mmm-yyyy") & "' and prsno = " & grddatagrid.Columns(3) & " and itemcode = '" & grddatagrid.Columns(4) & "' ", db, adOpenStatic, adLockReadOnly
      End If
      If C_Rs.RecordCount > 0 Then
      If grddatagrid.Columns(6) < C_Rs(0) Then
         Dim T_rs As Recordset
         Set T_rs = New Recordset
         Set T_rs = grddatagrid.DataSource
         MsgBox "Quantity Cannot Less than Ordered quantity", vbInformation, head
         grddatagrid.Columns(6) = T_rs(6).OriginalValue
      End If
      End If
   End If
   End If
Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_AfterColUpdate of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub grddatagrid_Click()
  intervalminutes = 0
On Error GoTo grddatagrid_Click_Error
On Error Resume Next
Dim ss As String

If (Opt = "add" Or Opt = "mod") Then
    grddatagrid.EditActive = True
    grddatagrid.AllowUpdate = True
    BUTTON(9).Enabled = True
    grddatagrid.Columns(9).Locked = False

    txtfields(4).Locked = False
    txtfields(4).Enabled = True
End If

    If Opt <> "del" Then
        BUTTON(9).Enabled = False
    End If
    If Opt = "mod" Then
        If Len(grddatagrid.Columns(4).Text) > 0 Then
            ItemMod = "mod"
        ElseIf Len(grddatagrid.Columns(4).Text) = 0 Then
            ItemMod = "add"
        End If
        ItemCodeTextBox.Text = grddatagrid.Columns(4).Text
        ItemNameTextBox.Text = grddatagrid.Columns(5).Text

        Text9.Text = grddatagrid.Columns(6).Text
        RateTextBox.Text = grddatagrid.Columns(7).Text
        QtyReqTextBox.Text = Format(grddatagrid.Columns(9).Text, "##0.#0")
        MachineTextBox.Text = grddatagrid.Columns(13).Text
        Dim RstMac As Recordset
        Set RstMac = New Recordset
        RstMac.Open "select Mac_no,Description,Model from mm_macmas where divcode='" & divcode & "' and mac_no='" & Trim(MachineTextBox.Text) & "'", db, adOpenStatic, adLockReadOnly
        If Not RstMac.EOF Then
            Text6.Text = RstMac("description")
            TxtMacModel = RstMac("Model")
        End If
        If MaskEdBox2.Text <> "__/__/____" Then
            If Trim(grddatagrid.Columns(14).Text) <> "" Then
                MaskEdBox2.Text = Format(grddatagrid.Columns(14).Text, "DD/MM/YYYY")
            End If
        End If

        ss = Format(grddatagrid.Columns(14).Text, "DD/MM/YYYY")
        
        If ss <> "" Then
           MaskEdBox2.Text = Format(ss, "DD/MM/YYYY")
        End If
        
        PlaceTextBox.Text = grddatagrid.Columns(15).Text
        AppCostTextBox.Text = Format(grddatagrid.Columns(16).Text, "##0.#0")
        RemarksTextBox.Text = grddatagrid.Columns(17).Text
        If Opt = "mod" Then
            grddatagrid.Columns(9).Locked = True
        End If
        ItemCodeTextBox.SetFocus
        Call stock_find
        Exit Sub
    End If
Exit Sub
Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_Click of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub grdDataGrid_DblClick()
  intervalminutes = 0
Dim rs As Recordset

On Error GoTo grdDataGrid_DblClick_Error
On Error Resume Next

If Opt = "add" Or Opt = "mod" Then
     If adoSecondaryRS.RecordCount > 2 Then
        If MsgBox("Do You Want to Delete this Item " & adoSecondaryRS(5) & "-" & adoSecondaryRS(4), vbYesNo, head) = vbNo Then Exit Sub Else: adoSecondaryRS.Delete
        BUTTON(9).Enabled = True
        Exit Sub
    End If
 
End If
If Opt = "add" Then

    If deltype = "2" Then
        If grddatagrid.Columns("delete reason").Text = "" Then
                                     MsgBox "Delete Reason Cannot be Empty", vbInformation, head
                                      grddatagrid.Columns("delete reason").Locked = False
                                      grddatagrid.Col = 22
                                      grddatagrid.SetFocus
                                      Screen.MousePointer = 0
                                      Exit Sub
                                End If

        If MsgBox("Do you want to delete this record?", vbYesNo, head) = vbYes Then
            If Not (grddatagrid.ApproxCount = 1) Then
                Set rs = New Recordset
                rs.Open "SELECT 'x' from PO_ORDL WHERE PRNO = " & val(adoPrimaryRS("PRNO")) & " AND PRDATE = '" & Format(adoPrimaryRS("PRDATE"), "dd-mmm-yyyy") & "' AND DIVCODE = '" & adoPrimaryRS("DIVCODE") & "' AND ITEMCODE = '" & grddatagrid.Columns(4) & "'", db, adOpenStatic, adLockReadOnly
                If Not rs.BOF Then
                    MsgBox "This PR. Amendment cannot be deleted as dependencies exist ", vbInformation, head
                    Exit Sub
                End If
                db.Execute ("DELETE FROM  PO_PRL WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND prno = " & val(adoPrimaryRS("prno")) & " AND prsno = " & val(grddatagrid.Columns(3).Text) & " and prdate = '" & Format(grddatagrid.Columns(2), "dd-mmm-yyyy") & "' and itemcode = '" & grddatagrid.Columns(4) & "'"), A
                adoPrimaryRS.UpdateBatch adAffectCurrent
                Set rs = New Recordset
                              rs.Open "select DIVCODE,PRNO,PRDATE,PRSNO,a.ITEMCODE ""Item"",a.itemname""Description"",uom""Unit"",A.RATE ""Rate"",b.curstock ""Current Stock"",QTYIND ""Quantity Required"",b.CATCODE ""Category"",CCCODE ""Cost Centre"",BGRPCODE ""Budget Group"",b.MACNO ""Machine Code"",REQDDATE ""Required Date"",place ""Place"",appcost ""Approx. Cost"",REMARKS ""Remarks"",LPO_RATE,LPO_DATE,PUR_FROM,'' slname,DeleteReason ""Delete Reason"" from  po_prl b,in_item a  WHERE  isnull(amdflg,' ')<>'Y' and  a.itemcode=b.itemcode  and PRNO = " & val(adoPrimaryRS("PRNO")) & " AND PRDATE = '" & Format(adoPrimaryRS("PRDATE"), "dd-mmm-yyyy") & "' AND DIVCODE = '" & adoPrimaryRS("DIVCODE") & "' Order by PRSNO", db, adOpenStatic, adLockReadOnly
                Set grddatagrid.DataSource = rs
                grddatagrid.Columns(0).Visible = False
                grddatagrid.Columns(1).Visible = False
                grddatagrid.Columns(2).Visible = False
                grddatagrid.Columns(3).Visible = False
                grddatagrid.Columns(0).Width = 0
                grddatagrid.Columns(4).Caption = "Code"
                grddatagrid.Columns(4).Width = 810.1418
                grddatagrid.Columns(5).Width = 3089.764
                grddatagrid.Columns(6).Width = 464.8819
                grddatagrid.Columns(10).Width = 1709.858
                grddatagrid.Columns(11).Width = 1154.835
                grddatagrid.Columns(9).Width = 1275.024
  On Error Resume Next
                  
                    db.Execute "insert into LogDet_PO (divcode, prno, prdate, depcode,reqname,Trans_UserId,SubCost,prsno,itemcode,macno,RATE,quantity,username,Trans_date,Trans_Name,Trans_Mod,Trans_IPADD,Trans_Host,moduleNo,reason) values('" & divcode & "', " & adoPrimaryRS("prno") & ",'" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "','" & txtfields(5).Text & "','" & txtfields(1).Text & "','" & uid & "','" & adoSecondaryRS("Cost Centre").Value & "'," & val(SNos) & ",'" & adoSecondaryRS("item Code").Value & "','" & adoSecondaryRS("Machine Code").Value & "','" & adoSecondaryRS("RATE").Value & "'," & val(adoSecondaryRS("Quantity Required").Value) & ",'" & UserName & "', '" & Format(Now, "YYYY-MM-DD HH:MM:SS") & "','Purchase Requisition ','DELETE','" & LocalIP & "','" & LocalHost & "','" & ModuleNo & "','" & adoSecondaryRS("Delete Reason").Value & "' ) "


          
                MsgBox "Successfully deleted", vbOKOnly, head
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = False
            Else
               
                MsgBox "You cannot delete this record - Detail Can have atleast one record", vbInformation, head
            
            End If
        End If
     Else
      
        MsgBox "Line deletion not possible now", vbOKOnly, head
     End If
End If






Exit Sub
grdDataGrid_DblClick_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grdDataGrid_DblClick of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error
    Response = 0
    Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grdDataGrid_Error of Form Purchase Requisition", vbInformation, head
End Sub
Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
Dim intyrs As New ADODB.Recordset



  For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
  

  If txtfields(1).Text <> "" And txtfields(1).Text <> "AG" Then
    Set intyrs = New Recordset
    If EmpCommon = True Then
        intyrs.Open "select Empno,ename from pr_emp where Empno = '" & Trim(txtfields(1).Text) & "'", db, adOpenStatic, adLockReadOnly
    Else
        intyrs.Open "select Empno,ename from pr_emp where divcode='" & divcode & "' and  Empno = '" & Trim(txtfields(1).Text) & "'", db, adOpenStatic, adLockReadOnly
    End If
    
    If intyrs.RecordCount > 0 Then
        Text4.Text = intyrs!ename
    End If
  ElseIf txtfields(1).Text = "AG" Then
     Text4.Text = "AUTO GENERATED PR."
  Else
     Text4.Text = ""
  End If
  
  If txtfields(3) <> "" Then
    Set intyrs = New Recordset
    intyrs.Open "SELECT type_code, typname FROM PO_SCOPETYPE where type_code = '" & Trim(txtfields(3).Text) & "'", db, adOpenStatic, adLockReadOnly
    If intyrs.RecordCount > 0 Then
        Text7.Text = intyrs!typname
    End If
  Else
     Text7.Text = ""
  End If
  
Dim adoitypers As ADODB.Recordset
Dim i As Integer
Dim ss As String

 If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
    If Not IsNull(adoPrimaryRS("itype")) Then

        Set adoitypers = New Recordset
        adoitypers.Open "select * from PO_INDENTTYPE where itype = '" & adoPrimaryRS("itype") & "'", db, adOpenStatic, adLockReadOnly
        
        If adoitypers.RecordCount > 0 Then
            ss = adoitypers("itype")
            For i = 0 To Combo2.ListCount
               Combo2.ListIndex = i
               If Trim(Mid(Combo2.Text, 1, InStr(Combo2.Text, "--") - 1)) = Trim(ss) Then
                   Text5.Text = Trim(ss)
                 Exit For
               End If
            Next i
        End If
    Else
        Text5.Text = ""
        Combo2.ListIndex = 0
    End If
 End If
  
  
  If Opt = "add" Then
   MaskEdBox1(0).Text = pdate
  End If
  
  
On Error Resume Next
If Trim(adoPrimaryRS.Source) <> "select DIVCODE,PRNO,PRDATE,DEPCODE,SubCost,REFNO,SECTION,ITYPE,reqname,scopecode,PO_GRP from  po_prh where 1= 2" Then
    Set MaskEdBox1(0).DataSource = adoPrimaryRS
End If
Exit Sub

End Sub

Public Sub disablcontls()
    Dim oText As TextBox
On Error GoTo disablcontls_Error
    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    Text2.Locked = True
    Text3.Locked = True
    Text4.Locked = True
    Text7.Locked = True
    MaskEdBox1(0).Enabled = False
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False
Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure disablcontls of Form Purchase Requisition", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    Dim oText As TextBox
On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
    
    Text3.Locked = False
    
    
    MaskEdBox1(0).Enabled = True
    DTPicker1.Enabled = True
    DTPicker1.MaxDate = pdate
    If Opt = "add" Then
        MaskEdBox1(0).Text = pdate
        Text4.Text = ""
    End If
    grddatagrid.AllowUpdate = True
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ENABLCONTLS of Form Purchase Requisition", vbInformation, head
    End Sub


Private Sub grdDataGrid_KeyDown(KeyCode As Integer, Shift As Integer)
  intervalminutes = 0
On Error GoTo GrdDatagrid_KeyDown_Error
On Error Resume Next
If Opt = "add" And grddatagrid.Col = 18 And KeyCode = vbKeyTab And adoSecondaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
  adoSecondaryRS.AddNew
  grddatagrid.Col = 3
  grddatagrid.SetFocus
  grddatagrid.EditActive = True
End If
If Opt = "add" And grddatagrid.Col = 10 And KeyCode = vbKeyTab Then
 If grddatagrid.Columns(10).Text = "" Then
            grddatagrid.Col = 12
            grddatagrid.SetFocus
            'KeyCode = 0
            Exit Sub
End If
End If



Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_KeyDown of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
  intervalminutes = 0
On Error GoTo GrdDatagrid_KeyPress_Error
    If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 6 Then
            Call ToNum(grddatagrid, 10, KeyAscii)
            Exit Sub
        End If
           
        If grddatagrid.Col = 11 And Opt = "add" Then
            Call ToUpCase(grddatagrid, KeyAscii)
            Call ToAlphaNumber(grddatagrid, 20, KeyAscii)
            Exit Sub

        End If
        If grddatagrid.Col = 8 Then
            Call ToUpCase(grddatagrid.Columns(8), KeyAscii)
            Exit Sub
        End If
    End If
    If grddatagrid.Col = 15 And Opt = "add" Then
        Call ToAlphaNumber(grddatagrid, 40, KeyAscii)
        Exit Sub
    End If
    If Not (grddatagrid.Col = 11 Or grddatagrid.Col = 18) And Opt = "add" Then
        Call ToUpCase(grddatagrid, KeyAscii)
        Exit Sub
    End If
    If Not (grddatagrid.Col = 11 Or grddatagrid.Col = 17) And Opt = "mod" Then
        Call ToUpCase(grddatagrid, KeyAscii)
        Exit Sub
    End If
    If grddatagrid.Col = 17 And Opt = "mod" Then
        Call ToUpCase(grddatagrid, KeyAscii)
        Call ToAlphaNumber(grddatagrid, 20, KeyAscii)
        Exit Sub
    End If
    
If UCase(Opt) = "DEL" And grddatagrid.Col = 22 Then
                    apos = adoSecondaryRS.AbsolutePosition
                    LookUp.Clear = True
                    LookUp.QUERY = "select Delcode,Delreason from po_txndelreason "
                    LookUp.Caption = "Deleting Reason"
                    LookUp.DefCol = "Delcode"
                    LookUp.ALIGN = "1500,5000"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then  '8
                     adoSecondaryRS.AbsolutePosition = apos
                           grddatagrid.Columns(22).Text = LookUp.Fields(0)
                    End If
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_KeyPress of Form Purchase Requisition", vbInformation, head
    
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
  intervalminutes = 0
Dim CHKRS As Recordset
On Error GoTo grdDataGrid_RowColChange_Error
On Error Resume Next
Call grdnumall
If Opt = "add" Or Opt = "mod" Then


If grddatagrid.Col = 5 Then
    Set CHKRS = New Recordset
    CHKRS.Open "SELECT * FROM IN_ITEM WHERE ITEMCODE='" & Trim(grddatagrid.Columns(4).Text) & "'", db, adOpenStatic, adLockReadOnly
    If CHKRS.RecordCount <= 0 Then

         Set RSA = New Recordset
       RSA.Open "select isnull(curstk,0) from in_item where itemcode='" & ItemCodeTextBox.Text & "'", db, adOpenStatic, adLockReadOnly
       If RSA.RecordCount > 0 Then
            curstk1 = RSA(0)
        End If
        CurrentQtyLabel.Caption = "Current Qty : " & curstk1

        Exit Sub
    Else
        grddatagrid.Columns(5).Text = CHKRS!ItemName
        grddatagrid.Columns(6).Text = CHKRS!UOM
        grddatagrid.Columns(7).Text = CHKRS!rate
        grddatagrid.Columns(8).Text = CHKRS!curstk
        grddatagrid.Col = 9
        grddatagrid.SetFocus
    End If
End If


                    
If Opt = "add" Then
    If grddatagrid.Col = 4 Then
        grddatagrid.Columns(4).Locked = False
        
       
        grddatagrid.Row = grddatagrid.VisibleRows
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        Exit Sub
    End If
End If
    If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 10 Then
        If (grddatagrid.Columns(9) = "" Or grddatagrid.Columns(9).Text <= 0) Then
                    MsgBox "Required Quantity Cannot be Empty or Negative", vbInformation, head
                    grddatagrid.Col = 9
                    grddatagrid.SetFocus
                    Screen.MousePointer = 0
                    grddatagrid.Columns(9).Text = ""
                    Exit Sub
        End If
        
        
        Set rsmin = New Recordset
        rsmin.Open " select isnull(MINLEVEL,0) MINLEVEL from in_item where itemcode='" & Trim(grddatagrid.Columns("code").Text) & "' ", db, adOpenDynamic
        If rsmin.RecordCount > 0 Then
            If val(grddatagrid.Columns(9).Text) < rsmin("MINLEVEL") Then
                 MsgBox "Required Quantity Cannot be Less than Minimum Order Quantity.." & rsmin("MINLEVEL"), vbInformation, head
                grddatagrid.Columns(9).Text = rsmin(0)
                grddatagrid.Col = 9
                grddatagrid.SetFocus
                Screen.MousePointer = 0
           
            End If
        End If
        
        
    End If
    End If
            If grddatagrid.Col = 11 And LastCol = 10 Then
                If grddatagrid.Columns(10).Text <> "" Then
                    grddatagrid.Columns(10).Text = UCase(grddatagrid.Columns(10).Text)
                    Set temprs = New Recordset
                    temprs.Open "select catcode,catdesc from in_cat where catcode='" & Trim(grddatagrid.Columns(10).Text) & "'", db, adOpenStatic, adLockReadOnly
                    If temprs.RecordCount < 1 Then
                        Frame2.Visible = True
                        Frame2.ZOrder
                        listlb.Caption = "Category Listing"
                        ksldesc1.conn = connectstring
                        ksldesc1.listfield1width = 1500
                        ksldesc1.listfield2width = 4500
    
                        ksldesc1.Table = " IN_CAT"
                        ksldesc1.listfield1 = "catcode"
                        ksldesc1.listfield2 = "catdesc"
                        ksldesc1.SetFocus
                        Exit Sub
                    End If
                Else
                    Frame2.Visible = True
                    Frame2.ZOrder
                    Buttonframe.Enabled = False
                    listlb.Caption = "Category Listing"
                    ksldesc1.conn = connectstring
                    ksldesc1.Table = " IN_CAT"
                    ksldesc1.listfield1width = 1500
                    ksldesc1.listfield2width = 4500

                    ksldesc1.listfield1 = "catcode"
                    ksldesc1.listfield2 = "catdesc"
                    ksldesc1.SetFocus
                    Exit Sub
                End If
            End If
                    
                    
            If grddatagrid.Col = 12 And LastCol = 11 Then
                If Trim(grddatagrid.Columns(11).Text) <> "" Then
                    grddatagrid.Columns(11).Text = UCase(grddatagrid.Columns(11).Text)
                    Set temprs = New Recordset
                    temprs.Open "Select cccode,ccname from in_cc where divcode='" & divcode & "' and cccode='" & Trim(grddatagrid.Columns(11).Text) & "'", db, adOpenStatic, adLockReadOnly
                    If temprs.RecordCount < 1 Then
                        Frame2.Visible = True
                        Frame2.ZOrder
                        Buttonframe.Enabled = False
                        listlb.Caption = "Cost Centre Listing"
                        ksldesc1.conn = connectstring
                        ksldesc1.Table = " IN_CC where divcode='" & divcode & "'"
                        ksldesc1.listfield1width = 1500
                        ksldesc1.listfield2width = 4500
    
                        ksldesc1.listfield1 = "cccode"
                        ksldesc1.listfield2 = "ccname"
                        ksldesc1.SetFocus
                        Exit Sub
                    End If
                Else

                End If
                End If

            If grddatagrid.Col = 14 And LastCol = 13 Then
                Set temprs = New Recordset
                temprs.Open "select macno,macdes from in_mac where macno='" & Trim(grddatagrid.Columns(13).Text) & "'", db, adOpenStatic, adLockReadOnly
                If temprs.RecordCount < 1 Then

                    Call MacLookup
                    Exit Sub
                End If
            End If
                    
                    
            If grddatagrid.Col = 13 And LastCol = 12 Then
                If Trim(grddatagrid.Columns(12).Text) <> "" Then
                    grddatagrid.Columns(12).Text = UCase(grddatagrid.Columns(12).Text)
                    Set temprs = New Recordset
                    temprs.Open "SELECT BGRPCODE,BGRPNAME FROM IN_BGRP WHERE BGRPCODE='" & Trim(grddatagrid.Columns(12).Text) & "'", db, adOpenStatic, adLockReadOnly
                    If temprs.RecordCount < 1 Then

                        Call MacLookup
                        Exit Sub
                    End If
                End If
            End If
End If
If Not (grddatagrid.Col = 0 Or grddatagrid.Col = 1 Or grddatagrid.Col = 2 Or grddatagrid.Col = 3) Then
If Not grddatagrid.Row = -1 Then
    If ST1 = "A" Then
        grddatagrid.Col = 6
        ST1 = "B"
    End If
    If st2 = "A" Then
        grddatagrid.Col = 13
        st2 = "B"
    End If
    If (Opt = "mod") And grddatagrid.Columns(4).Text = "" And grddatagrid.Col = 13 Then
        Frame2.Visible = True
        Frame2.ZOrder
        rpt = "N"
        Buttonframe.Enabled = False
        listlb.Caption = "Group Listing"
        ksldesc1.conn = connectstring
        ksldesc1.listfield1width = 4500
        ksldesc1.listfield2width = 1500

        If backend = "Sql Server" Then
            ksldesc1.Table = " IN_GRP where grpcode in (select substring(itemcode,1,2) from in_item)"
        Else
            ksldesc1.Table = " IN_GRP where grpcode in (select substr(itemcode,1,2) from in_item)"
        End If
        ksldesc1.listfield1 = "grpcode"
        ksldesc1.listfield2 = "grpname"
     End If
    End If
    End If

If Opt = "add" Or Opt = "mod" Then
   If LastCol = 12 And mvd = "N" And grddatagrid.Col = 4 Then
            If Opt = "add" Then
                adoSecondaryRS.AddNew
            Else
                Set vrs = adoPrimaryRS("childcmd").Value
                grddatagrid.Row = grddatagrid.Row + 2
            End If
                rpt = "N"
            
            If grddatagrid.Columns(9).Text = "" Then
                grddatagrid.Col = 4
                Frame2.Visible = True
                Frame2.ZOrder
                Buttonframe.Enabled = False
                listlb.Caption = "Group Listing"
                ksldesc1.conn = connectstring
                End If
           ksldesc1.listfield1width = 4500
           ksldesc1.listfield2width = 1500

            If backend = "Sql Server" Then
                ksldesc1.Table = " IN_GRP where grpcode in (select substring(itemcode,1,2) from in_item)"
            Else
                ksldesc1.Table = " IN_GRP where grpcode in (select substr(itemcode,1,2) from in_item)"
            End If
                
                ksldesc1.listfield1 = "grpcode"
                ksldesc1.listfield2 = "grpname"
       End If
        End If


        If Not RW = grddatagrid.Row Then
            RW = grddatagrid.Row
            If Opt = "add" Or Opt = "mod" Then
                Set rs = New Recordset
                On Error Resume Next
                If Not grddatagrid.Columns(4).Text = "" Then
                    rs.Open "select itemname from  IN_ITEM where itemcode  ='" & grddatagrid.Columns(4) & "'", db, adOpenStatic, adLockReadOnly
                    stbar.Panels(2).Text = rs(0)
                End If
            End If
        End If
  
er1:
Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure grddatagrid_RowColChange of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub ItemCodeTextBox_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo ItemCodeTextBox_KeyDown_Error

If KeyCode = 27 Then
   BUTTON(10).SetFocus
End If

If Opt = "add" Or Opt = "mod" Then
    If KeyCode = 13 Then

        CurrentQtyLabel.Caption = "Current Qty : " & curstk1
End If
End If

Exit Sub
ItemCodeTextBox_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ItemCodeTextBox_KeyDown of Form Purchase Requisition", vbInformation, head
End Sub
Private Sub ItemCodeTextBox_Validate(Cancel As Boolean)
On Error GoTo ItemCodeTextBox_Validate_Error

If (Opt = "add" Or Opt = "mod") Then


    Set itemrs = New Recordset
    itemrs.Open "Select itemname,uom ""unit"",RATE,CURSTK from in_item where itemcode='" & ItemCodeTextBox.Text & "'", db, adOpenStatic, adLockReadOnly
    
    If Not itemrs.EOF Then
        Call stock_find
        Call Rate_Find
    Else

        'Call ItemLookup

        
        Set itemrs = New Recordset
        itemrs.Open "Select itemname,uom ""unit"",RATE,CURSTK from in_item where itemcode='" & ItemCodeTextBox.Text & "'", db, adOpenStatic, adLockReadOnly
        If itemrs.EOF Then
           Cancel = False
        End If
    End If
             Dim oym As String
           oym = Year(yfdate) & "00"
           

End If


Exit Sub

ItemCodeTextBox_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ItemCodeTextBox_Validate of Form Purchase Requisition", vbInformation, head
    
End Sub

Private Sub MachineTextBox_Change()
  If MachineTextBox.Text = "" Then
        Text6.Text = ""
  End If
End Sub

Private Sub MachineTextBox_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MachineTextBox_KeyDown_Error
If KeyCode = vbKeyF1 Then
  If MachineTextBox.Locked = False Then
      Call MacLookup
  End If
    TEXTVALUE = MachineTextBox.Text
    If TEXTVALUE <> "" Then
        SendKeys ("{home}+{END}")
        SendKeys ("{DELETE}")
        TXTLEN = Len(TEXTVALUE)
        For XX = 1 To TXTLEN
            Char = Mid(TEXTVALUE, XX, 1)
            SendKeys ("{" & Char & "}")
        Next
    End If
    Exit Sub
End If
Exit Sub
MachineTextBox_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MachineTextBox_KeyDown of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub MachineTextBox_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
   SendKeys "{Tab}"
End If
Call ToAlphanumNoSp(txtfields(Index), 5, KeyAscii)
End Sub

Private Sub MachineTextBox_Validate(Cancel As Boolean)

On Error GoTo MachineTextBox_Validate_Error
    Set macrs = New Recordset
    macrs.Open "Select MAC_NO,description,isnull(Model,'')Model from mm_macmas where  divcode='" & divcode & "' and DEPCODE='" & txtfields(5).Text & "' AND  MAC_NO='" & Replace(MachineTextBox.Text, "'", "") & "'", db, adOpenStatic, adLockReadOnly
    If Not macrs.EOF Then
        MachineTextBox.Text = macrs(0)
        Text6.Text = macrs(1)
        TxtMacModel = macrs(2)
        MaskEdBox2.SetFocus
        Exit Sub
    Else
       If MachineTextBox.Locked = False Then Call MacLookup
    End If

Exit Sub
MachineTextBox_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MachineTextBox_Validate of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Then
    If Index = 0 And (MaskEdBox1(0).Enabled) And Not (Opt = "qry" Or Opt = "  " Or Opt = "") Then
        If Not (IsDate(MaskEdBox1(0).Text)) Then
            MsgBox ("Please enter valid Date"), vbInformation, head
            MaskEdBox1(0).SetFocus
        ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                MsgBox ("PR. date must be equal to processing date"), vbInformation, head
                MaskEdBox1(0).Text = pdate
                MaskEdBox1(0).SetFocus
         ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
                MsgBox ("PR. date must be equal to processing date"), vbInformation, head
                MaskEdBox1(0).Text = pdate
                MaskEdBox1(0).SetFocus
        End If
    End If
End If
Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_LostFocus of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub MaskEdBox2_GotFocus()
stbar.Panels(2).Text = "Required Date"
End Sub

Private Sub MaskEdBox2_KeyPress(KeyAscii As Integer)
On Error GoTo MaskEdBox2_KeyPress_Error
If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
Exit Sub
MaskEdBox2_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox2_KeyPress of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub MaskEdBox2_Validate(Cancel As Boolean)
On Error GoTo MaskEdBox2_Validate_Error
If Opt = "add" Or Opt = "mod" Then
If MaskEdBox2.Text <> "__/__/____" Then
    If IsDate(MaskEdBox2.Text) = False Then
        MsgBox "Invalid Date", vbInformation, head
        MaskEdBox2.SetFocus
        MaskEdBox2.Text = "__/__/____"
        Cancel = True
    Else
        If CDate(MaskEdBox2.Text) < pdate And Opt = "add" Then
            MsgBox "Required Date must be equal to or after the Processing Date.", vbInformation, head
            MaskEdBox2.SetFocus
            MaskEdBox2.Text = "__/__/____"
            Cancel = True
        ElseIf CDate(MaskEdBox2.Text) < CDate(MaskEdBox1(0).Text) And Opt = "mod" Then
            MsgBox "Required Date cannot be less than PR. Date", vbInformation, head
            MaskEdBox2.Text = Format(grddatagrid.Columns(14).Text, "dd/mm/yyyy")
            MaskEdBox2.SetFocus
            Exit Sub
        End If
   End If
End If
End If
Exit Sub
MaskEdBox2_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox2_Validate of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub Option1_Click()
deltype = 1
Frame4.Visible = False
BUTTON(9).Enabled = True
End Sub

Private Sub Option1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
End Sub

Private Sub Option2_Click()
deltype = 2
grddatagrid.ToolTipText = "To Double Click delete the Record"
LblLineDel.Caption = "* Double Click the grid for Line Deletion"
stbar.Panels(2).Text = "Double Click the grid for Line Deletion"
Frame4.Visible = False
BUTTON(9).Enabled = False
End Sub

Private Sub Option2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
End Sub

Private Sub FooterYes_Click()
UserFooterFrame.Visible = True
UserFooterFrame.Visible = True
UserFooterFrame.ZOrder
UserFooter1.load
End Sub

Private Sub FooterNo_Click()
UserFooterFrame.Visible = False
RepFoot = ""
Call BUTTON_Click(12)
End Sub


Private Sub QtyReqTextBox_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    
    Call ToNum(QtyReqTextBox, 9, KeyAscii, 3)
End Sub

Private Sub QtyReqTextBox_Validate(Cancel As Boolean)
On Error Resume Next

    Set rsmin = New Recordset
        rsmin.Open " select isnull(MINLEVEL,0) from in_item where itemcode='" & Trim(ItemCodeTextBox.Text) & "' ", db, adOpenDynamic
        If rsmin.RecordCount > 0 Then
        If rsmin(0) > 0 Then
            If val(QtyReqTextBox.Text) < rsmin(0) Then
                 MsgBox "Required Quantity Cannot be Less than Minimum Order Quantity..", vbInformation, head
                QtyReqTextBox.Text = rsmin(0)
                Screen.MousePointer = 0
                grddatagrid.Columns(9).Text = ""
            End If
        End If
        End If
        

End Sub
Private Sub RateTextBox_KeyPress(KeyAscii As Integer)
    Call ToNum(RateTextBox, 8, KeyAscii, 2)
End Sub

Private Sub RemarksTextBox_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
Call ToUpCase(RemarksTextBox, KeyAscii)
If Len(RemarksTextBox) < 100 Then
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 37 Or KeyAscii = 38 Or KeyAscii = 95 Or KeyAscii = 45 Or _
            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 8 Or KeyAscii = 64 Or KeyAscii = 9 Or KeyAscii = 35 Or KeyAscii = 13 _
             Or (KeyAscii >= 48 And KeyAscii <= 58)) Then
            KeyAscii = 0
    End If
Else
    KeyAscii = 0
End If

End Sub

Private Sub stbar_PanelClick(ByVal Panel As MSComctlLib.Panel)
intervalminutes = 0
End Sub




Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
 If KeyCode = 13 And Trim(Text1.Text) <> "" Then
    Command5_Click
 End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Dim Num As String
 Num = CStr(Text1.Text) & CStr(Num)
 If Not (KeyAscii = 8 Or KeyAscii = vbKey0 Or KeyAscii = vbKey1 Or KeyAscii = vbKey2 Or KeyAscii = vbKey3 Or KeyAscii = vbKey4 Or KeyAscii = vbKey5 Or KeyAscii = vbKey6 Or KeyAscii = vbKey7 Or KeyAscii = vbKey8 Or KeyAscii = vbKey9) Then
   KeyAscii = 0
   Text1.Text = Num
 End If

End Sub

Private Sub Text10_Change()
 intervalminutes = 0
End Sub

Private Sub Text10_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text11_Change()
  intervalminutes = 0
End Sub

Private Sub Text11_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text12_Change()
intervalminutes = 0
End Sub



Private Sub Text2_Change()
intervalminutes = 0
Set rs1 = New Recordset
rs1.Open "select depcode,depname from in_dep where divcode='" & divcode & "' and depcode = '" & Trim(txtfields(5).Text) & "'", db, adOpenStatic, adLockReadOnly
If rs1.RecordCount > 0 Then
    txtfields(5).Text = Trim(rs1("depcode"))
    Text2.Text = Trim(rs1("depname"))
End If
End Sub

Private Sub Text2_Validate(Cancel As Boolean)
 intervalminutes = 0
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    Call ToUpCase(Text3, KeyAscii)
    Call ToAlphanum(Text3, 20, KeyAscii)
    

End Sub

Private Sub Text3_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text4_Change()
intervalminutes = 0
End Sub

Private Sub Text4_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text5_Change()
intervalminutes = 0
End Sub

Private Sub Text5_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text6_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text7_Change()
intervalminutes = 0
End Sub

Private Sub Text7_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text8_Change()
intervalminutes = 0
End Sub

Private Sub Text8_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub Text9_GotFocus()
intervalminutes = 0
stbar.Panels(2).Text = "Unit of Measurement"
End Sub

Private Sub Text9_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub



Private Sub TxtDays_GotFocus()
txtfields(Index).BackColor = &HC0FFC0 'PINK
End Sub

Private Sub TxtDays_KeyPress(KeyAscii As Integer)
   If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    Call ToNum(TxtDays, 3, KeyAscii, 0)
End Sub
Private Sub TxtDays_LostFocus()
    MaskEdBox2.Text = DateAdd("d", val(TxtDays.Text), pdate)
    txtfields(Index).BackColor = &H80000005 'WHITE
End Sub

Private Sub txtfields_Change(Index As Integer)
  
  intervalminutes = 0
On Error GoTo txtfields_Change_Error
If Index = 5 Then
    Set rs1 = New Recordset
    rs1.Open "select depcode,depname from in_dep where divcode='" & divcode & "' and depcode = '" & Trim(txtfields(5).Text) & "' Order by 1", db, adOpenStatic, adLockReadOnly
    If rs1.RecordCount > 0 Then
        Text2.Text = Trim(rs1("depname"))
    End If
End If
If Index = 7 Then
    If PurTypeFlg = 1 Then
        Set rs1 = New Recordset
        rs1.Open "Select * from po_type where type_Code like '" & Trim(txtfields(7).Text) & "'", db, adOpenStatic, adLockReadOnly
        If rs1.RecordCount > 0 Then
            Text11.Text = Trim(rs1("TYPNAME"))
            Else
            Text11.Text = ""
        End If
    End If
End If
If Index = 4 Then
    Set rs1 = New Recordset
    rs1.Open "select SccCode,SccName from in_Scc S  where   s.divcode='" & divcode & "' and s.SccCode = " & val(txtfields(4).Text) & " Order by 1", db, adOpenStatic, adLockReadOnly
    If rs1.RecordCount > 0 Then
        Text10.Text = Trim(rs1("Sccname"))
    Else
        Text10.Text = ""
        txtfields(4).Text = ""
    End If
End If

Select Case Index
Case 5
    If txtfields(Index).Text = "" Then
        Text2.Text = ""
    End If
Case 1
    If txtfields(Index).Text = "" Then
        Text4.Text = ""
    End If
End Select


Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_Change of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
  intervalminutes = 0
On Error GoTo txtfields_KeyDown_Error
    If KeyCode = vbKeyF1 Then
        If Index = 5 Then
            Call DepLookup
            TEXTVALUE = txtfields(5).Text
            If TEXTVALUE <> "" Then
                SendKeys ("{home}+{END}")
                SendKeys ("{DELETE}")
                TXTLEN = Len(TEXTVALUE)
                For XX = 1 To TXTLEN
                    Char = Mid(TEXTVALUE, XX, 1)
                    SendKeys ("{" & Char & "}")
                Next
            End If
            Exit Sub
        End If
        
        If Index = 1 Then
            Call ScopeLookup
            TEXTVALUE = txtfields(1).Text
            If TEXTVALUE <> "" Then
                SendKeys ("{home}+{END}")
                SendKeys ("{DELETE}")
                TXTLEN = Len(TEXTVALUE)
                For XX = 1 To TXTLEN
                    Char = Mid(TEXTVALUE, XX, 1)
                    SendKeys ("{" & Char & "}")
                Next
            End If
            Exit Sub
        End If
        
        If Index = 3 Then
            Exit Sub
            Call Scopecodelookup
            TEXTVALUE = txtfields(3).Text
            If TEXTVALUE <> "" Then
                SendKeys ("{home}+{END}")
                SendKeys ("{DELETE}")
                TXTLEN = Len(TEXTVALUE)
                For XX = 1 To TXTLEN
                    Char = Mid(TEXTVALUE, XX, 1)
                    SendKeys ("{" & Char & "}")
                Next
            End If
            Exit Sub
        End If
        If Index = 4 Then
            Exit Sub
            Call SubCostLookup
            TEXTVALUE = txtfields(5).Text
            If TEXTVALUE <> "" Then
                SendKeys ("{home}+{END}")
                SendKeys ("{DELETE}")
                TXTLEN = Len(TEXTVALUE)
                For XX = 1 To TXTLEN
                    Char = Mid(TEXTVALUE, XX, 1)
                    SendKeys ("{" & Char & "}")
                Next
            End If
            Exit Sub
        End If
        
    End If
Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_KeyDown of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
  intervalminutes = 0
On Error GoTo TXTFIELDS_KeyPress_Error
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Index = 1 Then
            Call ToNumber(txtfields(Index), 6, KeyAscii)
        End If
        If Index = 4 Then
            Call ToNumber(txtfields(Index), 3, KeyAscii)
        End If
        
        If Index = 5 Then
           Call ToAlphanumNoSp(txtfields(Index), 3, KeyAscii)
        End If
        If Index = 8 Then
           Call ToUpCase(txtfields(Index), KeyAscii)

        End If
        
        If Index = 3 Then
            If Trim(txtfields(3).Text) <> "" Then
                KeyAscii = 0
                Set rs1 = New Recordset
                rs1.Open "Select Type_code,typname FROM PO_SCOPETYPE where type_code = " & Trim(txtfields(3).Text) & " ", db, adOpenStatic, adLockReadOnly
                If rs1.RecordCount > 0 Then
                    txtfields(3).Text = Trim(rs1("type_code"))
                    Text7.Text = Trim(rs1("typname"))
                    Text3.SetFocus
                Else
                    Call Scopecodelookup
                    Exit Sub
                End If
            Else
                KeyAscii = 0
                Call Scopecodelookup
                Exit Sub
            End If
        End If


    End If
Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtfields_KeyPress of Form Purchase Requisition", vbInformation, head
End Sub
Private Sub LockTextBox()
    ItemCodeTextBox.Locked = True
    QtyReqTextBox.Locked = True
    MachineTextBox.Locked = True
    PlaceTextBox.Locked = True
    RemarksTextBox.Locked = True
    AppCostTextBox.Locked = True
    MaskEdBox2.Enabled = False
    Command3.Enabled = False
End Sub
Private Sub UnLockTextBox()
    ItemCodeTextBox.Locked = False
    QtyReqTextBox.Locked = False
    MachineTextBox.Locked = False
    PlaceTextBox.Locked = False
    RemarksTextBox.Locked = False
    AppCostTextBox.Locked = False
    MaskEdBox2.Enabled = True
    Command3.Enabled = True
End Sub
Public Sub Query_mode(MDOC As Long)
On Error GoTo Query_mode_Error

SSTab1.ZOrder
Buttonframe.Enabled = True
Frame1.Enabled = False

Call LockTextBox

Call NEWFORM(BUTTON, GSNO)

If Not Opt = "  " Then

    On Error GoTo er1
    If Opt = "add" Or Opt = "mod" Then
        Call disablcontls
        Call EmptyTextBox
    End If
    If MDOC = 0 Then
        Set adoPrimaryRS = New Recordset
        Call qry1
        Opt = "qry"
        If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
    Else
        If Trim(adoPrimaryRS("prno")) = Trim(Text1) Then
            find = True
            'Exit Do
        End If
        If adoPrimaryRS.EOF Then
            stbar.Panels(2).Text = "No Record found"
            Screen.MousePointer = 0
            find = False
            Exit Sub
        End If
        Call bindcontls
        Exit Sub
    End If
 
    Call bindcontls
    Text6.Text = " "
    
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    Set Text2.DataSource = adoPrimaryRS
    grddatagrid.AllowUpdate = False
    desc.Caption = "Query"

    DataCombo1.Visible = False 'For modification & deletion
    delmodok.Visible = False 'For modification & deletion
    
    delmodoklabel.Visible = False
    If Opt = "qry" Then
        For i = 1 To 26
           grddatagrid.Columns(i).Locked = True
        Next
    End If
    
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Width = 1184.882
    grddatagrid.Columns(6).Width = 470
    grddatagrid.Columns(12).Width = 1430
    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(5).Width = 3450
    grddatagrid.Columns(11).Width = 1300
    grddatagrid.Columns(12).Width = 780
    grddatagrid.Columns(8).Width = 1232
    grddatagrid.Columns(10).Width = 1186
    grddatagrid.Columns(11).Width = 1277
    grddatagrid.Columns(12).Width = 1246
  
    grddatagrid.Columns(4).Caption = "Code"
    grddatagrid.Columns(4).Width = 1184.882
    grddatagrid.Columns(5).Width = 3089.764
    grddatagrid.Columns(6).Width = 464.8819
    grddatagrid.Columns(9).Width = 1275.024
    grddatagrid.Columns(10).Width = 1709.858
    grddatagrid.Columns(11).Width = 1154.835
    grddatagrid.Columns(15).NumberFormat = "DD/MM/YY"
    grddatagrid.Columns(12).Visible = False
    grddatagrid.Columns(10).Alignment = dbgRight
  
End If

Text6.Text = " "
grddatagrid.Columns(0).Width = 0
grddatagrid.Columns(1).Width = 989.8583
grddatagrid.Columns(2).Width = 1739.906
grddatagrid.Columns(3).Width = 915.0237
grddatagrid.Columns(4).Width = 615.1182
grddatagrid.Columns(5).Width = 1649.764
grddatagrid.Columns(6).Width = 450.1418
grddatagrid.Columns(7).Width = 929.7639
grddatagrid.Columns(8).Width = 900.2835
grddatagrid.Columns(9).Width = 794.8347


grddatagrid.Columns(10).Width = 794.8347
grddatagrid.Columns(11).Width = 915.0237
grddatagrid.Columns(12).Width = 840.189
grddatagrid.Columns(13).Width = 1289.764
grddatagrid.Columns(14).Width = 1100
grddatagrid.Columns(15).Width = 1000
'grddatagrid.Columns(16
grddatagrid.Columns(7).Alignment = dbgRight
grddatagrid.Columns(7).NumberFormat = "0.000"
grddatagrid.Columns(9).Alignment = dbgRight
grddatagrid.Columns(9).NumberFormat = "0.000"
grddatagrid.Columns(10).Alignment = dbgRight
grddatagrid.Columns(10).NumberFormat = "0.000"
grddatagrid.Columns(11).Alignment = dbgRight
grddatagrid.Columns(11).NumberFormat = "0.000"
Call grdnumall
 ItemCodeTextBox.Text = Empty
 ItemNameTextBox.Text = Empty
 'UnitLabel.Caption = Empty
 Text8.Text = Empty
 Text9.Text = Empty
 RateTextBox.Text = Empty
 QtyReqTextBox.Text = Empty
 MachineTextBox.Text = Empty
 MaskEdBox2.Text = "__/__/____"
 PlaceTextBox.Text = Empty
 AppCostTextBox.Text = Empty
 RemarksTextBox.Text = Empty

    Screen.MousePointer = 0
    Call GRDALIN
    
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        Call grdnumall
        adoSecondaryRS.MoveNext
    Loop
    
    Call disablcontls
    
Exit Sub


er1:
If err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Screen.MousePointer = 0
    Set grddatagrid.DataSource = Nothing
    Call BUTTON_Click(10)
    stbar.Panels(2).Text = "No records Found"
End If
If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If
Exit Sub
Query_mode_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure QUERY_MODE of Form Purchase Requisition", vbInformation, head
End Sub

Public Sub delmodclick()
                   
On Error GoTo delmodclick_Error

        Set adoPrimaryRS = New Recordset

        
            adoPrimaryRS.Open "SELECT cast(h.prno as varchar)+'          '+CONVERT(VARCHAR(16),h.prdate,103) DELMOD,h.prno ""PR. No."",h.prdate ""Date"",h.depcode ""Department"",d.depname ""Description"",PO_GRP from po_prl l inner join PO_PRH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate left join IN_DEP D on H.DEPCODE = D.DEPCODE WHERE d.divcode='" & divcode & "' and  isnull(amdflg,' ')<>'Y' and  h.divcode = '" & divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "dd-mmm-yyyy") & "'  and '" & Format(yldate, "dd-mmm-yyyy") & "'  and h.appflg<>'Y' and amendno is null " & _
            " group by cast(h.prno as varchar)+'          '+CONVERT(VARCHAR(16),h.prdate,103), h.prno,h.prdate,h.depcode,d.depname ORDER BY h.PRNO", db

        DataCombo1.Text = ""
        Frame3.Visible = True
        Frame3.ZOrder
        Set DataCombo1.RowSource = adoPrimaryRS
        DataCombo1.ListField = "DELMOD"
        DataCombo1.Visible = True
        adoPrimaryRS.MoveFirst
        DataCombo1.Text = adoPrimaryRS("DELMOD").Value
        DataCombo1.ZOrder
        delmodok.ZOrder
        Set DataGrid1.DataSource = adoPrimaryRS
        DataGrid1.Columns(0).Visible = False
        DataGrid1.Columns(0).Width = 2000
        DataGrid1.Columns(1).Width = 1000
        DataGrid1.Columns(2).Width = 1200
        DataGrid1.Columns(3).Width = 1200
        DataGrid1.Columns(4).Width = 2300

        DataGrid1.Visible = True
        DataGrid1.ZOrder
        Label4.Visible = True
        Label5.Visible = True
        delmodok.Visible = True
        delmodoklabel.Visible = True
        grddatagrid.AllowUpdate = True
        Frame1.Visible = False
        grddatagrid.Visible = False
        adoPrimaryRS.MoveLast
        DataCombo1.Text = adoPrimaryRS(0)
        DataCombo1.SetFocus
        db.BeginTrans

        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False
Exit Sub
delmodclick_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure delmodclick of Form Purchase Requisition", vbInformation, head
End Sub

Public Sub delmodproc(A As String, b As String, C As String)
On Error GoTo delmodproc_Error
    RW = 1000
    BUTTON(9).Enabled = True
    On Error GoTo Er
    Set adoPrimaryRS = New Recordset

    
   
     adoPrimaryRS.Open "SHAPE {select H.DIVCODE,H.PRNO,H.PRDATE,H.DEPCODE,H.REFNO,D.DEPNAME,h.itype,h.section,reqname,scopecode,UserID,SubCost,h.PO_GRP,H.budgetBALAMT from  PO_PRH H left join IN_DEP D on h.depcode = d.depcode  where d.divcode='" & divcode & "' and H.DIVCODE = '" & divcode & "' AND  H.PRNO = " & val(C) & " and H.PRDATE = '" & Format(b, "dd-mmm-yyyy") & "'} AS ParentCMD APPEND ({select b.DIVCODE,PRNO,PRDATE,PRSNO,a.ITEMCODE ""Item Code"",a.itemname""Item Description"",uom""UOM"",A.RATE ""Rate"",b.curstock ""Current Stock"",QTYIND ""Quantity Required"",IsNull(b.CATCODE,'') ""Category"",CCCODE ""Cost Centre"",BGRPCODE ""Budget Group"",b.MACNO ""Machine Code"",REQDDATE ""Required Date"",place ""Place"",appcost ""Approx. Cost"",REMARKS ""Remarks"",LPO_RATE,LPO_DATE,PUR_FROM,c.slname,b.deletereason ""Delete Reason"" from  po_prl b inner join in_item a on a.itemcode=b.itemcode left join fa_slmas c on   b.pur_from = c.slcode  " & _
        " WHERE  isnull(amdflg,' ')<>'Y' Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic




    Call bindcontls
    Set adoSecondaryRS = New Recordset
    Set adoSecondaryRS.DataSource = adoPrimaryRS("childcmd").UnderlyingValue
    Set grddatagrid.DataSource = adoSecondaryRS
    If Opt = "mod" Then
        adoSecondaryRS.MoveFirst
        grddatagrid_Click
    End If
    Frame1.Visible = True
    Frame3.Visible = False
    grddatagrid.Visible = True
    grddatagrid.AllowAddNew = False
    grddatagrid.Columns(5).Width = 830
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(6).Alignment = dbgLeft
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(7).Locked = True
    grddatagrid.Columns(8).Locked = True
    grddatagrid.Columns(4).Caption = "Code"
    grddatagrid.Columns(10).Width = 1275.024
    grddatagrid.Columns(11).Width = 2009.764
    grddatagrid.Columns(5).Width = 2849.953
    grddatagrid.Columns(4).Width = 1409.953
    grddatagrid.Columns(0).Width = 0
   
    Dim TX As TextBox
    For Each TX In Me.txtfields
        TX.Locked = True
    Next
    DataCombo1.Visible = False
    Label4.Visible = False
    Label5.Visible = False
    delmodok.Value = False
    
    txtfields(1).Locked = False
    txtfields(3).Locked = False
    
    delmodoklabel.Visible = False
    delmodok.Visible = False
    DataGrid1.Visible = False
    grddatagrid.Columns(3).Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    grddatagrid.Col = 5
    grddatagrid.SetFocus
    grddatagrid.Columns(4).Locked = True
    grddatagrid.Columns(5).Locked = True
    grddatagrid.Columns(6).Locked = True
    grddatagrid.Columns(0).Width = 0
    If Opt = "mod" Then
        grddatagrid.Columns(0).Width = 0
        grddatagrid.Columns(1).Width = 989.8583
        grddatagrid.Columns(2).Width = 1739.906
        grddatagrid.Columns(3).Width = 915.0237
        grddatagrid.Columns(4).Width = 959.8111
        grddatagrid.Columns(5).Width = 3000.906
        grddatagrid.Columns(6).Width = 550
        grddatagrid.Columns(7).Width = 0
        grddatagrid.Columns(8).Width = 1049.953
        grddatagrid.Columns(9).Width = 929.7639
        grddatagrid.Columns(10).Width = 1094.74
        grddatagrid.Columns(11).Width = 1484.787
        grddatagrid.Columns(18).Width = 800
        grddatagrid.Columns(19).Width = 900
        grddatagrid.Columns(20).Width = 850
        grddatagrid.Columns(21).Width = 2300
        
        grddatagrid.Columns(8).Alignment = dbgRight
        grddatagrid.Columns(9).Alignment = dbgRight
        grddatagrid.Columns(18).Alignment = dbgRight
        
        grddatagrid.Columns(8).NumberFormat = "#0.000"
        grddatagrid.Columns(9).NumberFormat = "#0.000"
        grddatagrid.Columns(14).NumberFormat = "DD/MM/YY"
        grddatagrid.Columns(19).NumberFormat = "DD/MM/YY"
        grddatagrid.Columns(18).NumberFormat = "#0.0000"
        
        grddatagrid.Columns(9).Locked = True
        grddatagrid.Columns(18).Locked = True
        grddatagrid.Columns(19).Locked = True
        grddatagrid.Columns(20).Locked = True
        grddatagrid.Columns(21).Locked = True
        
        grddatagrid.Columns(8).Caption = "Current Stock "
        grddatagrid.Columns(9).Caption = "     Quantity     Required"
        grddatagrid.Columns(16).Caption = "        Approx. Cost"
        grddatagrid.Columns(18).Caption = "        Last P.O. Rate"
        grddatagrid.Columns(19).Caption = "Last PO Date"
        grddatagrid.Columns(20).Caption = "Purchase From "
        grddatagrid.Columns(21).Caption = "Supplier Name"
        grddatagrid.Col = 8
        grddatagrid.SetFocus
        ItemCodeTextBox.Locked = True
    End If
    If Opt = "del" Then
        grddatagrid.Columns(0).Width = 0
        grddatagrid.Columns(1).Width = 989.8583
        grddatagrid.Columns(2).Width = 1739.906
        grddatagrid.Columns(3).Width = 915.0237
        grddatagrid.Columns(4).Width = 959.8111
        grddatagrid.Columns(5).Width = 1739.906
        grddatagrid.Columns(6).Width = 1035.213
        grddatagrid.Columns(7).Width = 1049.953
        grddatagrid.Columns(8).Width = 929.7639
        grddatagrid.Columns(9).Width = 1094.74
        grddatagrid.Columns(10).Width = 1484.787

        Dim delrs As New Recordset
        Set delrs = New Recordset
        delrs.Open "select count(*) from po_enql where prno=" & val(txtfields(2).Text) & " and prdate='" & Format(MaskEdBox1(0).Text, "DD-MMM-YYYY") & "'  and divcode='" & divcode & "' ", db, adOpenStatic, adLockReadOnly
        If val(delrs(0)) > 0 Then
            MsgBox ("ENQUIRY ALREADY ENTERED FOR THIS PR."), vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        If Opt = "del" Then
            Screen.MousePointer = 0
            Frame4.Visible = True
            Frame4.ZOrder
            Option1.Value = False
            Option2.Value = False
            BUTTON(9).Enabled = False
            Exit Sub
        End If
        
        deltype = InputBox(" Enter deletion type    1 - Complete PR. deletion  " & Chr(13) & "   2 - Delete a particular Item ", head + "Deletion type")
        If deltype = Empty Then
  
            Call BUTTON_Click(10)
            Exit Sub
        End If
        
    Else
        grddatagrid.AllowAddNew = True
        ReDim ITARY(100, 0)
    End If
    Screen.MousePointer = 0
Exit Sub
Er:
    MsgBox "Select a valid value from the list", vbOKOnly, head
    BUTTON(9).Enabled = False
Exit Sub
delmodproc_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure delmodproc of Form Purchase Requisition", vbInformation, head
End Sub
Public Function newdocno()
Dim v_stdate As String, v_endate As String
Dim rs As Recordset
Dim tcrs As Recordset


On Error GoTo newdocno_Error
Set tcrs = New Recordset
tcrs.Open "select tc,stdocno From  PO_DOC_PARA where tc = 'PURCHASE REQUISITION' ", db, adOpenStatic, adLockReadOnly
If tcrs.BOF Then
    MsgBox "No such transaction in the parameter table , Consult your DBA ", vbInformation, head
    newdocno = ""
    Screen.MousePointer = 0
Else
    v_stdate = Format(yfdate, "dd-mmm-yyyy")
    v_endate = Format(yldate, "dd-mmm-yyyy")
    
    Set rs = New Recordset
    rs.Open "select max(prno) from  po_prh where divcode = '" & divcode & "' AND prdate between '" & v_stdate & "'  and  '" & v_endate & "'", db, adOpenStatic, adLockReadOnly
    
    If Not (IsNull(rs(0))) And (rs.BOF = False) Then '
        newdocno = rs(0) + 1
    Else
        newdocno = val(tcrs(1))
    End If
    
End If
Exit Function
newdocno_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure newdocno of Form Purchase Requisition", vbInformation, head
End Function

Public Sub qry1()
On Error GoTo qry1_Error



    Set adoPrimaryRS = New Recordset
    
    adoPrimaryRS.Open "select * from PO_PRH Where divcode='" & divcode & "' ORDER BY prdate desc,prno desc", db, adOpenStatic, adLockBatchOptimistic
    
    If Not adoPrimaryRS.EOF Then
        sprno = adoPrimaryRS("prno")
        sPrdate = adoPrimaryRS("prdate")
        Opt = " "
         Set adoPrimaryRS = New Recordset
    
                adoPrimaryRS.Open "SHAPE {select  th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,AppFlg,APP1,App2,App3,isNull(userid,'')userId,Th.SubCost,th.PO_GRP from  PO_PRH th Left Join IN_DEP D on  th.DEPCODE = D.DEPCODE and th.divcode=d.divcode  where d.divcode='" & divcode & "' and  TH.PRDATE between '" & Format(fnmfdate(pdate), "dd-mmm-yyyy") & "' and '" & Format(pdate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & divcode & "' AND CANCELFLAG IS NULL " & _
                                   " Order by prdate asc,prno asc} AS ParentCMD APPEND ({select distinct top 1 t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.ITEMCODE ""Item"",i.itemname ""Description"",i.UOM ""Unit"",I.RATE ""Rate"",Description ""Machine"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'PR. Status' = (case    WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'Requested'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'PR. CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
                                   " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED'  END ),FinalLevel_Remarks ,place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"",LPO_RATE,LPO_DATE,PUR_FROM,Sample from  " & _
                                   " po_prh h inner join PO_PRL t on t.divcode=h.divcode and  t.prno=h.prno and t.prdate=h.prdate " & _
                                   " Inner Join  IN_ITEM i on  t.itemcode = i.itemcode " & _
                                   " Left Join mm_MACmas S on h.divcode=s.divcode  and h.depcode=s.depcode and t.macno = s.mac_no " & _
                                   " where t.divcode ='" & divcode & "'  and isnull(t.amdflg,' ')<>'Y' and t.Prdate Between '" & Format(fnmfdate(pdate), "dd-mmm-yyyy") & "' and '" & Format(pdate, "dd-mmm-yyyy") & "' Order by t.prdate asc,t.prno asc } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
                

                End If
                    



   SSTab1.Height = 7500 '6000
Exit Sub
qry1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure qry1 of Form Purchase Requisition", vbInformation, head
End Sub
Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error


      adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost,th.PO_GRP from  PO_PRH th, IN_DEP D  where d.divcode='" & divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & divcode & "' AND CANCELFLAG IS NULL " & _
                      " Order by PRNO} AS ParentCMD APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.ITEMCODE ""Item"",i.itemname ""Description"",i.UOM ""Unit"",I.RATE ""Rate"",Description ""Machine"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'PR. Status' = (case    WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'Requested'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'PR. CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
                      " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED'  END ),place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"" from  PO_PRL t, IN_ITEM i, mm_MACmas S ,po_prh h where t.divcode=h.divcode and t.divcode='" & divcode & "' and s.divcode='" & divcode & "' and isnull(amdflg,' ')<>'Y' and t.prno=h.prno and t.prdate=h.prdate and h.depcode*=s.depcode and t.macno *= s.mac_no and t.itemcode = i.itemcode and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic


Exit Sub
fnd1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure fnd1 of Form Purchase Requisition", vbInformation, head
End Sub

Public Sub chkrepeat()
On Error GoTo chkrepeat_Error
    Fnd = "n"
    If grddatagrid.FirstRow = 1 Then
        t = grddatagrid.Row
    Else
        t = grddatagrid.FirstRow + grddatagrid.Row
    End If
    If Opt <> "mod" Then
    If t + 1 > UBound(ITARY) Then
        ReDim Preserve ITARY(t + 100, 0)
    End If
    ITARY(t + 1, 0) = grddatagrid.Columns(4)
    For i = 0 To t
        If ITARY(t + 1, 0) = ITARY(i, 0) Then
            Fnd = "y"
            Exit For
        End If
    Next
    End If
    If Fnd = "y" Then
        MsgBox "Item code can not repeat", vbInformation, head
        grddatagrid.Columns(4) = " "
        grddatagrid.Columns(5) = " "

        ItemCodeTextBox.SetFocus
        rpt = "Y"
        Exit Sub
        Frame2.Visible = True
        Frame2.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Group Listing"
                ksldesc1.listfield1width = 4500
        ksldesc1.listfield2width = 1500

        ksldesc1.Table = " IN_GRP where grpcode in (select substring(itemcode,1,2) from in_item)"
        ksldesc1.conn = connectstring
        ksldesc1.listfield1 = "grpcode"
        ksldesc1.listfield2 = "grpname"
    End If
Exit Sub
chkrepeat_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure chkrepeat of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
  intervalminutes = 0
If Opt = "add" Or Opt = "mod" Then
    If Index = 7 Then
          If PurTypeFlg = 1 Then
                Set TmpRs = New Recordset
                 TmpRs.Open "Select * from po_type where type_Code like '" & Trim(txtfields(7).Text) & "'", db, adOpenStatic, adLockReadOnly
                 If TmpRs.RecordCount > 0 Then
                     Text11.Text = TmpRs(1)
                 Else
                    LookUp.Clear = True
                    If PurTypeFlg = 1 Then
                        LookUp.QUERY = "select Type_code 'Code',Typname 'Purchase Type' from po_type where  Type_code in (select purtype from tempPurType" & TLocalIPAdd & ") "
                    Else
                        LookUp.QUERY = "select Type_code 'Code',Typname 'Purchase Type' from po_type"
                    End If
                    LookUp.Caption = "Purchase Order Type  Listing"
                    LookUp.DefCol = "Purchase Type"
                    LookUp.ALIGN = "1500,5500"
                    Screen.MousePointer = 0
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(7).Text = LookUp.Fields(0)
                        Text11.Text = LookUp.Fields(1)

                            Purstock = ""

                         
                         
                        LookUp.Clear = True
                    Else
                        txtfields(7).SetFocus
                        Cancel = True
                        Exit Sub
                    End If
                   Exit Sub
                 End If
            End If
            
       
    End If
    If Index = 1 Then
        If Trim(txtfields(1).Text) <> "" Then
            KeyAscii = 0
            Set rs1 = New Recordset
            If EmpCommon = True Then
                rs1.Open "select Empno,ename from pr_emp where  Empno = " & Trim(txtfields(1).Text) & " ", db, adOpenStatic, adLockReadOnly
            Else
                rs1.Open "select Empno,ename from pr_emp where  divcode='" & divcode & "' and  Empno = " & Trim(txtfields(1).Text) & " ", db, adOpenStatic, adLockReadOnly
            End If
            
            If rs1.RecordCount > 0 Then
                txtfields(1).Text = Trim(rs1("Empno"))
                Text4.Text = Trim(rs1("ename"))
                Text3.SetFocus
            Else
                Call ScopeLookup
                Exit Sub
            End If
        Else
            KeyAscii = 0
            Call ScopeLookup
            Exit Sub
        End If
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    txtfields(8).Locked = False
    If Index = 5 Then
            Set rs1 = New Recordset
            rs1.Open "select depcode,depname from in_dep where divcode='" & divcode & "' and depcode = '" & Trim(txtfields(5).Text) & "'", db, adOpenStatic, adLockReadOnly
            If rs1.RecordCount > 0 Then
                txtfields(5).Text = Trim(rs1("depcode"))
                Text2.Text = Trim(rs1("depname"))
                txtfields(4).SetFocus
            Else
                Call DepLookup
                If txtfields(5).Text = "" Then
                    Cancel = True
                End If
            End If
    End If
    
    If Index = 4 Then
        Set rs1 = New Recordset
        If Trim(txtfields(5).Text) <> "" Then
            rs1.Open "Select SccCode,SccName from in_Scc S,In_Dep D where  D.DivCode =S.Divcode and  S.divcode='" & divcode & "' and S.SccCode = " & val(txtfields(4).Text), db, adOpenStatic, adLockReadOnly
            
            If rs1.RecordCount > 0 Then
                txtfields(4).Text = Trim(rs1("SccCode"))
                Text10.Text = Trim(rs1("SccName"))
                If txtfields(8).Enabled = True And txtfields(8).Visible = True Then txtfields(8).SetFocus
            Else
                Call SubCostLookup

            End If
        End If
    End If
End If

If Index = 8 And txtfields(8).Text <> "" Then
    
   
    grddatagrid.Col = 4
    grddatagrid.SetFocus
    
ElseIf Index = 8 And txtfields(8).Text = "" And Text2.Text = "" Then
    MsgBox "Enter the Reference Number", vbInformation, head
End If
    
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtfields_Validate of Form Purchase Requisition", vbInformation, head
End Sub
Public Sub GridCaption()
grddatagrid.Columns(7).Caption = "     Rate"
grddatagrid.Columns(10).Caption = "    Current        Stock"
grddatagrid.Columns(11).Caption = "     Quantity     Required"
grddatagrid.Columns(13).Caption = "     Quantity      Ordered"
grddatagrid.Columns(14).Caption = "     Quantity    Received"
grddatagrid.Columns(22).Caption = "     Approx.           Cost"
grddatagrid.Columns(24).Caption = "     Last P.O.              Rate"
End Sub
Public Sub GRDALIN()
On Error GoTo GRDALIN_Error
grddatagrid.Columns(0).Width = 0
grddatagrid.Columns(1).Width = 989.8583
grddatagrid.Columns(2).Width = 1800.7458
grddatagrid.Columns(3).Width = 915.0237
grddatagrid.Columns(4).Width = 599.811
grddatagrid.Columns(5).Width = 2739.906
grddatagrid.Columns(6).Width = 450.1418
grddatagrid.Columns(7).Width = 794.8347
grddatagrid.Columns(8).Width = 1200
grddatagrid.Columns(9).Width = 929.7639
grddatagrid.Columns(9).Alignment = dbgLeft
grddatagrid.Columns(10).Width = 794.0236
grddatagrid.Columns(10).NumberFormat = "0.000"
grddatagrid.Columns(11).Width = 975.2126
grddatagrid.Columns(11).NumberFormat = "0.000"
grddatagrid.Columns(7).NumberFormat = "0.000"
grddatagrid.Columns(12).NumberFormat = "0.000"
grddatagrid.Columns(12).Alignment = dbgRight
grddatagrid.Columns(12).NumberFormat = "0.000"
grddatagrid.Columns(13).NumberFormat = "0.000"
grddatagrid.Columns(13).Alignment = dbgRight
grddatagrid.Columns(13).Width = 1040
grddatagrid.Columns(15).Width = 3000
grddatagrid.Columns(15).NumberFormat = "DD/MM/YY"
grddatagrid.Columns(17).Alignment = dbgLeft
grddatagrid.Columns(17).Width = 1500
grddatagrid.Columns(7).Alignment = dbgRight
grddatagrid.Columns(8).NumberFormat = "0.000"
grddatagrid.Columns(14).Width = 1100
grddatagrid.Columns(16).Width = 1000
grddatagrid.Columns(8).Alignment = dbgRight
grddatagrid.Columns(4).Visible = True
grddatagrid.Columns(7).Visible = False
grddatagrid.Columns(13).Visible = True
grddatagrid.Columns(12).Visible = True

grddatagrid.Columns(10).Alignment = dbgRight
grddatagrid.Columns(11).Alignment = dbgRight
grddatagrid.Columns(12).Alignment = dbgRight
grddatagrid.Columns(13).Alignment = dbgRight
grddatagrid.Columns(14).Alignment = dbgRight
grddatagrid.Columns(22).Alignment = dbgRight
grddatagrid.Columns(24).Alignment = dbgRight
Exit Sub
GRDALIN_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure GRDALIN of Form Purchase Requisition", vbInformation, head
End Sub


 
Public Sub calculation()
On Error GoTo calculation_Error
On Error Resume Next
Dim Tax1 As Double
Dim newtot As Double
    If Opt = "add" Or Opt = "mod" Then
     grddatagrid.Columns(15).Value = val(grddatagrid.Columns(13).Value) * val(grddatagrid.Columns(12).Value)
        totl1 = val(grddatagrid.Columns(15).Value)  'Order value
        newtot = newtot + totl1
        
        'DISCOUNT
        If val(grddatagrid.Columns(22).Text) > 0 Then
       
        'commented
            grddatagrid.Columns(23).Value = val((grddatagrid.Columns(22).Text / 100) * grddatagrid.Columns(15).Text)
            newtot = totl1 - val(grddatagrid.Columns(23).Text)
        Else
            newtot = totl1 - val(grddatagrid.Columns(23).Text)
        End If
        
        ' Pack %
        If val(grddatagrid.Columns(31).Text) <> 0 Then
            newtotp = (newtot * (val(grddatagrid.Columns(31).Text) / 100))
            newtot = newtot + (newtot * (val(grddatagrid.Columns(31).Text) / 100))
            grddatagrid.Columns(32).Text = newtotp
        Else
            newtot = newtot + val(grddatagrid.Columns(32).Text)
            newtotp = newtot + val(grddatagrid.Columns(32).Text)
        End If

        
        'EXCISE BED
        If val(txtfields(23).Text) > 0 Then
            newtot = newtot + (newtot * val(txtfields(23).Text) / 100)
            InsAmt = 0
            InsAmt = newtot + (newtot * val(txtfields(23).Text) / 100)
        End If
        
        If val(grddatagrid.Columns(20).Text) >= 0 Then
          On Error Resume Next
            grddatagrid.Columns(20).Value = val((val(grddatagrid.Columns(18).Text) / 100)) * newtot
        End If
        
        
        If Not (val(grddatagrid.Columns(20).Text) > 0) Then
        On Error Resume Next
            grddatagrid.Columns(20).Value = val(grddatagrid.Columns(20).Text) + (val(val(grddatagrid.Columns(19).Text) / 100) * val(grddatagrid.Columns(20).Text))
        End If
        
        newtot = newtot + val(grddatagrid.Columns(20).Text)
        
        
        'Sales Tax
        If (val(grddatagrid.Columns(16).Text) >= 0) Then
            grddatagrid.Columns(17).Value = val(newtot * (val(grddatagrid.Columns(16).Text) / 100))
        End If
        newtot = newtot + val(grddatagrid.Columns(17).Text)
        
        'Surcharge
        If val(grddatagrid.Columns(21)) > 0 Then
            grddatagrid.Columns(33).Value = val(grddatagrid.Columns(17).Value * (val(grddatagrid.Columns(21)) / 100))
        Else
            grddatagrid.Columns(33).Value = 0
        End If
        
        
        
        
        'SSA
        If val(grddatagrid.Columns(21).Text) > 0 Then
                newtot = newtot + val(grddatagrid.Columns(17).Text) * val(grddatagrid.Columns(21).Text / 100)
        End If
        
        
        'Other Charges
        If val(grddatagrid.Columns(24).Text) > 0 Then
            newtot = newtot + val(grddatagrid.Columns(24).Text)
        End If
        
        'Octroi Percentage
        If val(grddatagrid.Columns(25).Text) > 0 Then
            newtot = newtot + (newtot * val(grddatagrid.Columns(25).Text) / 100)
        End If
        
        

        tax = CInt(tax) + val(grddatagrid.Columns(15).Text)

        If val(grddatagrid.Columns(29).Text) > 0 Then
                
            grddatagrid.Columns(30).Text = (val(grddatagrid.Columns(29).Text) * val(val(val(grddatagrid.Columns(15).Value) - val(grddatagrid.Columns(23).Value))) / 100) + val(txtfields(23).Text) / 100

            newtot = newtot + grddatagrid.Columns(30).Text
        End If
        
        txtfields(6).Text = val(txtfields(6).Text) + val(newtot)
        txtfields(6).Text = Format(txtfields(6).Text, "#0.00")
        
        grddatagrid.Columns(15).Text = newtot
        ordval = ordval + val(grddatagrid.Columns(15).Text)
        Exit Sub
    End If
    
    

Exit Sub
calculation_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure calculation of Form Purchase Requisition", vbInformation, head
End Sub
Public Sub checkpart()
On Error GoTo checkpart_Error
    If Opt = "add" Or Opt = "mod" Then
        '----Tax details
        If txtfields(24).Text > "0" Then
            grddatagrid.Columns(16).Value = txtfields(24).Text
        End If
        '----Discount details
        If txtfields(19).Text > "0" Then
            grddatagrid.Columns(22).Value = txtfields(19).Text
        End If
        '----Surcharge details
        If txtfields(21).Text > "0" Then
            grddatagrid.Columns(21).Value = txtfields(21).Text
        End If
        '----Excise details
        If txtfields(27).Text > "0" Then
            grddatagrid.Columns(18).Value = txtfields(27).Text
        End If
        '----Special Excise details
        If txtfields(25).Text > "0" Then
            grddatagrid.Columns(19).Value = txtfields(25).Text
        End If
        '----Octroi details
        If txtfields(5).Text > "0" Then
            grddatagrid.Columns(27).Value = txtfields(5).Text
        End If
        '----Pack details
        If txtfields(22).Text > "0" Then
            grddatagrid.Columns(31).Value = txtfields(22).Text
        End If
    End If
Exit Sub
checkpart_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure checkpart of Form Purchase Requisition", vbInformation, head
End Sub
Sub DepLookup()
On Error GoTo DepLookup_Error
LookUp.Clear = True
LookUp.QUERY = "select Depcode 'Code',Depname 'Department' from In_dep where divcode='" & divcode & "' and isnull(Active,'N')='Y' order by 1"
LookUp.Caption = "Department Listing"
LookUp.DefCol = "Department"
LookUp.ALIGN = "1700,5500"
Screen.MousePointer = 0
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(5).Text = LookUp.Fields(0)
    Text2.Text = LookUp.Fields(1)
    Set rs = New Recordset
    rs.Open "Select isnull(BALAMT,0) as budamt from PO_BUDGET where DepCode='" & txtfields(5).Text & "' and divcode='" & divcode & "' and yearmon='" & CStr(Format(MaskEdBox1(0).Text, "yyyy")) & CStr(Format(MaskEdBox1(0).Text, "mm")) & "'", db, adOpenStatic, adLockReadOnly
    If rs.RecordCount > 0 Then
    txtfields(6).Text = rs(0)
    If val(txtfields(6).Text) = 0 Then
    Set rst = New Recordset
    rst.Open "Select isnull(BUDAMT,0) as budamt from PO_BUDGET where DepCode='" & txtfields(5).Text & "' and divcode='" & divcode & "' and yearmon='" & CStr(Format(MaskEdBox1(0).Text, "yyyy")) & CStr(Format(MaskEdBox1(0).Text, "mm")) & "'", db, adOpenStatic, adLockReadOnly
    If Not rs.EOF Then
     txtfields(6).Text = rst(0)
    End If
    End If

    End If

    LookUp.Clear = True
    
    Combo2.SetFocus
Else
    LookUp.Clear = True
    txtfields(5).SetFocus
    Exit Sub
End If
Exit Sub
DepLookup_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DepLookup of Form Purchase Requisition", vbInformation, head
End Sub
Sub SubCostLookup()

On Error GoTo DepLookup_Error

    LookUp.Clear = True
     LookUp.QUERY = "select SccCode 'Code',SccName 'SubCost Centre' from In_Scc S where   S.divcode='" & divcode & "' and isnull(Active,'N')='Y'  "
    
    LookUp.Caption = "SubCost Centre Listing"
    LookUp.DefCol = "SubCost Centre"
    LookUp.ALIGN = "1700,5500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        

            txtfields(4).Text = LookUp.Fields(0)
            Text10.Text = LookUp.Fields(1)
            LookUp.Clear = True

        Exit Sub
    Else
        LookUp.Clear = True
    End If
    
    Exit Sub
    
DepLookup_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DepLookup of Form Purchase Requisition", vbInformation, head
End Sub
Sub MacLookup()
On Error GoTo MacLookup_Error
On Error Resume Next
Set RSA = New Recordset
RSA.Open "select Mac_no,Description from mm_macmas where divcode='" & divcode & "' and depcode='" & Trim(txtfields(5).Text) & "'", db, adOpenStatic, adLockReadOnly
If RSA.RecordCount > 0 Then
    LookUp.Clear = True
    LookUp.QUERY = "select Mac_no 'Machine No',Description 'Machine Name', MacMake 'Make', Model, MacSerialNo 'SerialNo.'  from mm_macmas where MACFLAG='M' AND divcode='" & divcode & "' and isnull(salesflag,'N')='N' and depcode='" & Trim(txtfields(5).Text) & "'"
    LookUp.Caption = "Machine Listing"
    LookUp.DefCol = "Machine Name"
    LookUp.ALIGN = "1200,3500,1300,1300,1300"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        MachineTextBox.Text = LookUp.Fields(0)
        Text6.Text = IIf(IsNull(LookUp.Fields(1)), " ", LookUp.Fields(1))
        TxtMacModel.Text = IIf(IsNull(LookUp.Fields(3)), " ", LookUp.Fields(3))
        MaskEdBox2.SetFocus
        LookUp.Clear = True
    Else
       MachineTextBox.SetFocus
    End If
Else
    MachineTextBox.Locked = True
    MachineTextBox.Text = ""
    TxtMacModel.Locked = True
End If
Exit Sub
Exit Sub
MacLookup_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MacLookup of Form Purchase Requisition", vbInformation, head
End Sub
Sub ItemLookup()
On Error Resume Next
    
 Set rsnew = New Recordset
 rsnew.Open "select distinct Penpodetails from po_para where divcode='" & divcode & "' ", db, adOpenStatic
 If rsnew.RecordCount > 0 Then
    Pendpodet = rsnew(0)
 Else
    Pendpodet = "N"
 End If
     If Pendpodet = "Y" Then

        If bolLookupItemgrpwise Then
           StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
               " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode ) ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where  substring(a.itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(a.IsItemActive,0)=1 order by a.itemcode "
       Else
      StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
              " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )  ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where isnull(a.IsItemActive,0)=1 order by a.itemcode "
        

       End If
       

    Else
       If bolLookupItemgrpwise Then
           StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item WHERE substring(itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(IsItemActive,0)=1"
       Else
         StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item where  isnull(IsItemActive,0)=1"
       End If


End If

  
    LookUp.Clear = True
    LookUp.QUERY = StrQry
    LookUp.DefCol = "Description"
    LookUp.Caption = "Item Listing"
    LookUp.ALIGN = "1000,4000,500,1500,1500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    
    If LookUp.Cancel = False Then
        Set itemrs = New Recordset
        itemrs.Open "Select itemname,UOM ""unit"",isnull(RATE,0) as rate,isnull(CURSTK,0) as Curstk from in_item where itemcode='" & LookUp.Fields(0) & "'", db, adOpenStatic, adLockReadOnly
        If Not itemrs.EOF Then


            ItemCodeTextBox.Text = LookUp.Fields(0)
            ItemNameTextBox.Text = itemrs(0)

            Text9.Text = itemrs("unit")
            LookUp.Clear = True
            QtyReqTextBox.SetFocus
            QtyReqTextBox.Text = Empty
            Call stock_find
            Call Rate_Find
            If Opt = "mod" Then
                Set RSG = New Recordset
                Set RSG.DataSource = adoSecondaryRS
                opt1 = Opt
                Opt = ""
                dd = adoSecondaryRS.AbsolutePosition
                If RSG.RecordCount > 0 Then
                    RSG.MoveFirst
                        While Not RSG.EOF
                            If ItemCodeTextBox = grddatagrid.Columns(4).Text And MachineTextBox = grddatagrid.Columns(13).Text And RSG.AbsolutePosition <> dd Then
                                MsgBox "Same Machine or Same Item should not Be repeat", vbInformation, head
                                Opt = opt1
                                adoSecondaryRS.AbsolutePosition = dd
                                grddatagrid.Col = 4
                                grddatagrid.SetFocus
                                ItemCodeTextBox.Text = grddatagrid.Columns(4).Text
                                ItemCodeTextBox.SetFocus
                                Exit Sub
                            End If
                            RSG.MoveNext
                        Wend
                End If
                adoSecondaryRS.MoveFirst
                adoSecondaryRS.AbsolutePosition = val(dd)
                Opt = opt1
            End If
            ItemNameTextBox.SetFocus
        End If
        LookUp.Clear = True
    Else
        Frame7.Enabled = True
        ItemCodeTextBox.SetFocus
    End If
    

        Set rs = New Recordset
    rs.Open "select PendingOrderPara from po_para where divcode='" & divcode & "' ", db
   If rs(0) = "Y" Then
        Set primaryrs = New Recordset
            primaryrs.Open "exec KSP_INDEDNT_CHECK  '" & divcode & "', '" & Format(yfdate, "YYYY-MM-DD") & "','" & Format(yldate, "YYYY-MM-DD") & "','" & txtfields(5).Text & "','" & ItemCodeTextBox.Text & "'", db
         If Not primaryrs.EOF Then
              MsgBox " Pending Indent Quantity : " & primaryrs(1).Value & " ", vbInformation
              If MsgBox("Do you want to exit?", vbYesNo, head) = vbYes Then End
         End If
    End If
    
    
End Sub

Sub ScopeLookup()

On Error GoTo ScopeLookup_Error
Set RSA = New Recordset
If EmpCommon = True Then
    RSA.Open "select Empno,ename from pr_emp ", db, adOpenStatic, adLockReadOnly
Else
    RSA.Open "select Empno,ename from pr_emp where  divcode='" & divcode & "'", db, adOpenStatic, adLockReadOnly
End If
If RSA.RecordCount > 0 Then
    LookUp.Clear = True

If EmpCommon = True Then
        LookUp.QUERY = "select Empno 'Employee No',ename 'Employee Name' ,b.desigdesc 'Designation' from pr_emp  a inner join PR_DESIG b on a.desigcode =b.desigcode and a.divcode=b.divcode where dor is null"
    Else
        LookUp.QUERY = "select Empno 'Employee No',ename 'Employee Name',b.desigdesc 'Designation' from pr_emp  a inner join PR_DESIG b on a.desigcode =b.desigcode and a.divcode=b.divcode where dor is null and a.divcode='" & divcode & "'"
    End If
    LookUp.Caption = "Requester Name Listing"
    LookUp.DefCol = "Employee Name"
    LookUp.ALIGN = "1500,5500,1800"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    txtfields(1).Text = ""
    txtfields(1).Text = LookUp.Fields(0)
    Text4.Text = LookUp.Fields(1)
    LookUp.Clear = True
    Text3.SetFocus

       FrameItem.Visible = True
        dlmdfrm.Visible = True


        dlmdfrm.Visible = True
        stbar.Panels(2).Text = "Select PR. from the list"
        OrderbyIndent (0)
        FrameItem.ZOrder
        FpSpdInd.SetFocus
        Exit Sub

    Else
      txtfields(1).SetFocus
    End If
Else
    MsgBox "No Employee in Employee Master", vbInformation, head
    txtfields(1).Text = ""
    Text4.Text = ""
End If
Exit Sub
ScopeLookup_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ScopeLookup of Form Purchase Requisition", vbInformation, head

End Sub

Public Sub IndType()

Dim adoitypers As ADODB.Recordset

 
 
 
On Error GoTo IndType_Error
        Set adoitypers = New Recordset
        If Opt = "add" Or Opt = "mod" Then
            adoitypers.Open "select * from PO_INDENTTYPE Where isnull(Active,'N')='Y' ", db, adOpenStatic, adLockReadOnly
        Else
            adoitypers.Open "select * from PO_INDENTTYPE  ", db, adOpenStatic, adLockReadOnly
        End If
        
        If adoitypers.RecordCount > 0 Then
           Combo2.Clear
           
           adoitypers.MoveFirst
           Do While Not adoitypers.EOF
          
              Combo2.AddItem adoitypers!iType & "--" & adoitypers!idesc
              adoitypers.MoveNext
           Loop
        Else
            MsgBox "No PR. Type in Setup Form", vbInformation, head
            Combo2.Text = ""
        End If
    Exit Sub
IndType_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure IndType of Form Purchase Requisition", vbInformation, head

End Sub

Private Sub GRDDATAGRID_GotFocus()
  grddatagrid.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub grdDataGrid_LostFocus()
  grddatagrid.BackColor = &H80000005 'WHITE
End Sub

Private Sub AppCostTextBox_GotFocus()
AppCostTextBox.BackColor = &HC0FFC0 'PINK
stbar.Panels(2).Text = "Approximate Cost can be a maximum of 9 integer with 2 decimal places"
End Sub
Private Sub AppCostTextBox_LostFocus()
AppCostTextBox.BackColor = &H80000005 'WHITE
AppCostTextBox.Text = Format(AppCostTextBox.Text, "##0.#0")
End Sub

Private Sub DataCombo1_GotFocus()
   intervalminutes = 0
    DataCombo1.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub datacombo1_LostFocus()
   intervalminutes = 0
    DataCombo1.BackColor = &H80000005 'WHITE
End Sub
Private Sub DataGrid1_GotFocus()
    DataGrid1.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub DataGrid1_LostFocus()
    intervalminutes = 0
    DataGrid1.BackColor = &H80000005 'WHITE
End Sub
Private Sub ItemCodeTextBox_GotFocus()
    ItemCodeTextBox.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Select a Itemcode from the list"
End Sub
Private Sub ItemCodeTextBox_LostFocus()
    ItemCodeTextBox.BackColor = &H80000005 'WHITE
End Sub
Private Sub ItemNameTextBox_GotFocus()
    ItemNameTextBox.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub ItemNameTextBox_LostFocus()
    ItemNameTextBox.BackColor = &H80000005 'WHITE
End Sub
Private Sub MachineTextBox_GotFocus()
    MachineTextBox.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Select a Machine from the list"
End Sub
Private Sub MachineTextBox_LostFocus()
    MachineTextBox.BackColor = &H80000005 'WHITE
End Sub
Private Sub PlaceTextBox_GotFocus()
    PlaceTextBox.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub PlaceTextBox_LostFocus()
    PlaceTextBox.BackColor = &H80000005 'WHITE
End Sub

Private Sub QtyReqTextBox_GotFocus()

    QtyReqTextBox.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Required Qty can be a maximum of 9 Integer with 3 Decimal places"
    
End Sub
Private Sub QtyReqTextBox_LostFocus()

If Len(ItemCodeTextBox.Text) > 5 Then
    If val(QtyReqTextBox.Text) = 0 And Opt = "add" Then
        QtyReqTextBox.SetFocus
        Exit Sub
    End If
End If
QtyReqTextBox.Text = Format(QtyReqTextBox.Text, "##0.000")
QtyReqTextBox.BackColor = &H80000005 'WHITE

End Sub

Private Sub RateTextBox_GotFocus()
    RateTextBox.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub RateTextBox_LostFocus()
    RateTextBox.BackColor = &H80000005 'WHITE
End Sub

Private Sub RemarksTextBox_GotFocus()
    RemarksTextBox.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Remarks can be a maximum of 100 characters"
End Sub
Private Sub RemarksTextBox_LostFocus()
    RemarksTextBox.BackColor = &H80000005 'WHITE
End Sub
Private Sub Text1_GotFocus()

    Text1.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub Text1_LostFocus()
    intervalminutes = 0
    Text1.BackColor = &H80000005 'WHITE
End Sub
Private Sub Text2_GotFocus()
    Text2.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub Text2_LostFocus()
    Text2.BackColor = &H80000005 'WHITE
End Sub
Private Sub Text3_GotFocus()
    intervalminutes = 0
    Text3.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Section can be a maximum of 20 characters"
End Sub
Private Sub Text3_LostFocus()
    intervalminutes = 0
    Text3.BackColor = &H80000005 'WHITE
End Sub
Private Sub Text6_GotFocus()
    intervalminutes = 0
    Text6.BackColor = &HC0FFC0 'PINK
End Sub
Private Sub Text6_LostFocus()
    intervalminutes = 0
    Text6.BackColor = &H80000005 'WHITE
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
      intervalminutes = 0
    If Index = 5 Then
        stbar.Panels(2).Text = "Select a Department from the list"
    ElseIf Index = 8 Then
        stbar.Panels(2).Text = "Reference can be a maximum of 20 characters"
    ElseIf Index = 1 Then
        stbar.Panels(2).Text = "Select a Requester Name from the list"
    End If
    txtfields(Index).BackColor = &HC0FFC0 'PINK
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
  intervalminutes = 0
Select Case Index
Case 2
    Call IndentNoChk
End Select
    If Not (txtfields(Index).Text = "") Then
        txtfields(Index).Text = UCase(txtfields(Index).Text)
    End If
    txtfields(Index).BackColor = &H80000005 'WHITE
End Sub
Private Sub IndentNoChk()
    If ManualIndNo = "Y" Then
          v_stdate = Format(yfdate, "dd-mmm-yyyy")
          v_endate = Format(yldate, "dd-mmm-yyyy")
          Set rs = New Recordset
          rs.Open "select count(*)Rec from  po_prh where divcode = '" & divcode & "' AND prdate between '" & v_stdate & "'  and  '" & v_endate & "' and Prno = '" & val(txtfields(2).Text) & "'", db, adOpenStatic, adLockReadOnly
          If rs(0) <> 0 Then
              MsgBox "PR. number already Exist ", vbInformation, head
              txtfields(2).SetFocus
              Exit Sub
          End If
    End If
End Sub

Sub Scopecodelookup()

On Error GoTo Scopecodelookup_Error
Set RSA = New Recordset
RSA.Open "SELECT type_code, typname FROM PO_SCOPETYPE", db, adOpenStatic, adLockReadOnly

If RSA.RecordCount > 0 Then
    LookUp.Clear = True
    LookUp.QUERY = "SELECT type_code as code , typname as description FROM PO_SCOPETYPE"
    LookUp.Caption = "Scope Listing"
    LookUp.DefCol = "description"
    LookUp.ALIGN = "1500,5500"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(3).Text = ""
        txtfields(3).Text = LookUp.Fields(0)
        Text7.Text = LookUp.Fields(1)
        LookUp.Clear = True
          Text3.SetFocus
        Else
           txtfields(3).SetFocus
        End If
Else
    MsgBox "No Scope in Scope Master", vbInformation, head
    txtfields(3).Text = ""
    Text7.Text = ""
End If
Exit Sub
Scopecodelookup_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Scopecodelookup of Form Purchase Requisition", vbInformation, head

End Sub

Public Sub grdnumall()
If Opt = "qry" Then
    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(1).Width = 989.8583
    grddatagrid.Columns(2).Width = 1739.906
    grddatagrid.Columns(3).Width = 915.0237
    grddatagrid.Columns(4).Width = 615.1182
    grddatagrid.Columns(5).Width = 1649.764
    grddatagrid.Columns(6).Width = 450.1418
    grddatagrid.Columns(7).Width = 929.7639
    grddatagrid.Columns(8).Width = 1500
    grddatagrid.Columns(9).Width = 694.8347
    grddatagrid.Columns(10).Width = 794.8347
    grddatagrid.Columns(11).Width = 915.0237
    grddatagrid.Columns(12).Width = 840.189
    grddatagrid.Columns(13).Width = 900.764
    grddatagrid.Columns(14).Width = 900
    grddatagrid.Columns(15).Width = 2800
    'grddatagrid.Columns(16
    grddatagrid.Columns(7).Alignment = dbgRight
    grddatagrid.Columns(7).NumberFormat = "0.000"
    grddatagrid.Columns(8).Alignment = dbgLeft
    grddatagrid.Columns(9).Alignment = dbgLeft
    grddatagrid.Columns(10).Alignment = dbgRight
    grddatagrid.Columns(11).Alignment = dbgRight
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Width = 1184.882
    grddatagrid.Columns(6).Width = 470
    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(5).Width = 3450
    grddatagrid.Columns(8).Width = 1500
    grddatagrid.Columns(4).Caption = "Code"
    grddatagrid.Columns(4).Width = 1184.882
    grddatagrid.Columns(5).Width = 3089.764
    grddatagrid.Columns(6).Width = 464.8819
    grddatagrid.Columns(15).Width = 1000
    grddatagrid.Columns(16).Width = 850
    grddatagrid.Columns(19).Width = 1800
    grddatagrid.Columns(20).Width = 1800
    grddatagrid.Columns(21).Width = 1900
    grddatagrid.Columns(22).Width = 850
    grddatagrid.Columns(14).Alignment = dbgRight
    grddatagrid.Columns(14).NumberFormat = "#0.000"
    grddatagrid.Columns(24).Width = 1000
    grddatagrid.Columns(24).Alignment = dbgRight
    grddatagrid.Columns(24).NumberFormat = "#0.0000"
    grddatagrid.Columns(25).Width = 1000
    grddatagrid.Columns(25).NumberFormat = "dd/mm/yy"
    grddatagrid.Columns(27).Width = 2900
End If


End Sub


Private Sub stock_find()
On Error GoTo stock_find_Error
            Call stkchk1(Trim(ItemCodeTextBox.Text), db, "")
            Call stkchk2(Trim(ItemCodeTextBox.Text), db, "")
            If curstk < curstk1 Then
                Text8.Text = val(curstk)
            Else
                Text8.Text = val(curstk1)
            End If
            If curstk = curstk1 Then
                Text8.Text = curstk
            End If
            Text8.Text = Format(Text8.Text, "#.000")
            CurrentQtyLabel.Caption = "Current Qty : " & Text8.Text
Exit Sub
stock_find_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure stock_find of Form Purchase Requisition", vbInformation, head
End Sub
Private Sub Rate_Find()
On Error GoTo Rate_Find_Error
Set rs = New Recordset

rs.Open "Select TOP 1 isnull(Rate,0)Rate From In_trnTail a inner join IN_TRNHEAD b on a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.DIVCODE and a.tc=b.tc where  a.tc=1 and a.Itemcode='" & ItemCodeTextBox.Text & "' and a.Divcode='" & divcode & "' and SLCODE is not null  ORDER BY a.DOCDT desc", db, adOpenStatic, adLockReadOnly

If Not rs.EOF Then
   rs.MoveLast
    RateTextBox.Text = Format(rs!rate, "#####0.00")
End If
Exit Sub
Rate_Find_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Rate_Find of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub ubGrid1_AfterEdit(ByVal Row As Long, ByVal Col As Long, ByVal NewValue As String)
On Error GoTo ubGrid1_AfterEdit_Error
If ubGrid1.Col = 3 Then
    cur = ubGrid1.TextMatrix(ubGrid1.Row, 3)
    For i = 1 To ubGrid1.Rows
        If ubGrid1.TextMatrix(i, 3) = cur And Row <> i Then
            ubGrid1.TextMatrix(Row, 3) = ""
            MsgBox "Sl No already Selected", vbInformation, head
        End If
    Next
End If
Exit Sub
ubGrid1_AfterEdit_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ubGrid1_AfterEdit of Form Purchase Requisition", vbInformation, head
End Sub

Public Sub ubgridalign()

On Error GoTo ubgridalign_Error
ubGrid1.AutoSetup 1, 3, True, True, "      |Description               |Sl.No"
Set REPFRS = New Recordset
REPFRS.Open "select footdesc from in_repfoot", db, adOpenStatic, adLockReadOnly
If REPFRS.RecordCount > 0 Then
    REPFRS.MoveFirst
    For i = 1 To REPFRS.RecordCount
        ubGrid1.TextMatrix(i, 2) = REPFRS(0)
        REPFRS.MoveNext
        If Not REPFRS.EOF Then
            ubGrid1.AddItem ("")
        End If
    Next
Else
    MsgBox "Please Define Report Footer"
End If
  ubGrid1.ColMask(1) = checkmark
  For J = 1 To REPFRS.RecordCount
            ubGrid1.AddLookup 3, CStr(J)
  Next
Exit Sub
ubgridalign_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure ubgridalign of Form Purchase Requisition", vbInformation, head
End Sub

Private Sub txtItemgrpcode_Change()
intervalminutes = 0
    Set itemrs = New Recordset
    itemrs.Open "Select grpcode,grpName from in_grp where grpcode='" & txtItemgrpcode.Text & "'", db, adOpenStatic, adLockReadOnly
    If Not itemrs.EOF Then
        txtItemgrpName.Text = itemrs("grpName")
    Else
        txtItemgrpName.Text = ""
    End If
    
End Sub
Private Sub txtItemgrpcode_Validate(Cancel As Boolean)
intervalminutes = 0
    LookUp.Clear = True
    LookUp.QUERY = "select Grpcode 'Code',GrpName 'Description' from in_grp"
    LookUp.DefCol = "Description"
    LookUp.Caption = "ItemGroup Listing"
    LookUp.ALIGN = "1000,4000"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtItemgrpcode.Text = LookUp.Fields(0)
        txtItemgrpName.Text = LookUp.Fields(1)
        If ItemCodeTextBox.Enabled = True And ItemCodeTextBox.Visible = True Then ItemCodeTextBox.SetFocus
    Else
        txtItemgrpcode.Text = ""
        txtItemgrpName.Text = ""
        Cancel = True
    End If
End Sub



Private Sub txtItemgrpName_Change()
intervalminutes = 0
End Sub

Private Sub txtItemgrpName_Validate(Cancel As Boolean)
intervalminutes = 0
End Sub

Private Sub TxtMacModel_GotFocus()
intervalminutes = 0
    stbar.Panels(2).Text = "Machine Model"
    TxtMacModel.BackColor = &HC0FFC0 'PINK

End Sub

Private Sub TxtMacModel_KeyPress(KeyAscii As Integer)

    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
    
End Sub

Private Sub TxtMacModel_LostFocus()

    TxtMacModel.BackColor = &H80000005

End Sub
Private Sub LookupItemgrpwise()

    Dim rstItem As ADODB.Recordset
    Set rstItem = New ADODB.Recordset
    
    rstItem.Open "Select isnull(InditemGrp,'N') from po_para Where Divcode='" & divcode & "'", db, adOpenKeyset, adLockReadOnly
    If Not rstItem.EOF Then
        If rstItem(0) = "Y" Then
            bolLookupItemgrpwise = True
        Else
            bolLookupItemgrpwise = False
        End If
    Else
        bolLookupItemgrpwise = False
    End If
    
End Sub
Private Sub LookupItemgrpwiseintform()
    If bolLookupItemgrpwise Then
        Frame2.Visible = True
        Frame2.Move Frame7.Left, Frame7.Top, Frame7.Width, Frame2.Height
        Frame7.Move Frame7.Left, Frame7.Top + Frame2.Height + 50, Frame7.Width, Frame7.Height
        grddatagrid.Move grddatagrid.Left, grddatagrid.Top + Frame2.Height + 50, grddatagrid.Width, grddatagrid.Height
        SSTab1.Height = 7500 '6650   'SSTab1.Height + 650
    Else
        Frame2.Visible = False
    End If

End Sub




Private Sub SetSpdIndentHead(optmode As String)
On Error GoTo SetSpdIndentHead
    With FpSpdInd
        .MaxRows = 0
        .MaxCols = 6
        .Row = 0
        .FontBold = True
        .ScrollBars = ScrollBarsNone
        .ColHeadersAutoText = DispBlank
        .ActiveCellHighlightStyle = ActiveCellHighlightStyleNormal
        SetSpreadCol FpSpdInd, E_SpdIndent.SprdCheck, "", CellTypeCheckBox, 2, , , False

        SetSpreadCol FpSpdInd, E_SpdIndent.SprdItemcode, "Item Code", CellTypeStaticText, 7
        SetSpreadCol FpSpdInd, E_SpdIndent.sprdItemname, "Item Name", CellTypeStaticText, 25
        SetSpreadCol FpSpdInd, E_SpdIndent.Sprduom, "UOM", CellTypeStaticText, 5

        SetSpreadCol FpSpdInd, E_SpdIndent.SprdCatalog, "Catalog No.", CellTypeStaticText, 10
        SetSpreadCol FpSpdInd, E_SpdIndent.Sprddrawno, "Drawing No.", CellTypeStaticText, 10

        
       .RowHeadersShow = False
       .ColHeadersShow = True
    End With
    
    With FpSpdIndHead
      If optmode <> "S" Then
        .MaxRows = 0
        .MaxCols = 13
        .Row = 0
        .FontBold = True
        .ScrollBars = ScrollBarsNone
        .ColHeadersAutoText = DispBlank
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.SprdHCheck, " ", CellTypeStaticText, 2, , , False
        .Col = E_SpdIndentHead.sprdHItemCode

        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetASCII
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.sprdHItemCode, "Item Code", CellTypeEdit, 7, , , False
        .Col = E_SpdIndentHead.sprdHItemCode
        
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetASCII
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.sprdHItemName, "Item Name", CellTypeEdit, 25, , , False
         .Col = E_SpdIndentHead.sprdHItemName
          .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetASCII
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.SprdHUom, "UOM", CellTypeEdit, 5, , , False
        .Col = E_SpdIndentHead.SprdHUom

  .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.SprdHCatalog, "Catalog No.", CellTypeEdit, 10, , , True
         .Col = E_SpdIndentHead.SprdHCatalog
         
          .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol FpSpdIndHead, E_SpdIndentHead.SprdHdrawno, "Drawing No.", CellTypeEdit, 10, , , True
         .Col = E_SpdIndentHead.SprdHdrawno

        
       .RowHeadersShow = False
      End If
    End With
    
Exit Sub

SetSpdIndentHead:
MsgBox "Error No :  " & err.Number & Chr(13) & Chr(13) & "Description : " & err.description & Chr(13) & Chr(13) & "Procedure : SetSpdIndentHead " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: SetSpdIndentHead"
End Sub




Private Sub OrderbyIndent(iType As Integer)

    Set indentrs = New Recordset
    indentrs.CursorLocation = adUseClient
   
      Dim ados As New Recordset
      Dim itemlistnew As String
      Set ados = New Recordset
      Set ados.DataSource = adoSecondaryRS.Clone
   itemlistnew = ""
           If ados.RecordCount > 0 Then
      
                        ados.MoveFirst
                        
               Do While Not ados.EOF
                     If itemlistnew = "" Then
                        itemlistnew = "" & ados("item") & ""
                      ElseIf ados("item") <> "" Then
                            itemlistnew = itemlistnew & "," & "" & ados("item") & ""
                     End If
                    ados.MoveNext
               Loop
               
            End If
            
            
      
 Set rsnew = New Recordset
 rsnew.Open "select distinct Penpodetails from po_para where divcode='" & divcode & "' ", db, adOpenStatic
 If rsnew.RecordCount > 0 Then
    Pendpodet = rsnew(0)
 Else
    Pendpodet = "N"
 End If
     If Pendpodet = "Y" Then

        If bolLookupItemgrpwise Then
           StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
               " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode ) ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where  substring(a.itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(a.IsItemActive,0)=1 order by a.itemcode "
       Else
      StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
              " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )  ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where isnull(a.IsItemActive,0)=1 order by a.itemcode "
        

       End If
       
   ''  End If
    Else
       If bolLookupItemgrpwise Then
           StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item WHERE substring(itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(IsItemActive,0)=1 and itemcode not  in (SELECT items FROM dbo.Split('" & itemlistnew & "', ',')) "
       Else
         StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item where  isnull(IsItemActive,0)=1 and itemcode not  in (SELECT items FROM dbo.Split('" & itemlistnew & "', ',')) "
       End If


End If
    indentrs.Open StrQry, db, adOpenStatic, adLockBatchOptimistic
    If Not indentrs.EOF Then
        RW = 1
        Call SetSpdIndentHead("")
        FpSpdIndHead.Visible = True
        FpSpdIndHead.MaxRows = 1
        With FpSpdInd
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            
            
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
            .SetText E_SpdIndent.SprdItemcode, RW, indentrs("Item Code")
                .SetText E_SpdIndent.sprdItemname, RW, indentrs("Description")
            .SetText E_SpdIndent.Sprduom, RW, indentrs("Uom")
            .SetText E_SpdIndent.SprdCatalog, RW, indentrs("Catalogue No.")
            .SetText E_SpdIndent.Sprddrawno, RW, indentrs("Drawing No.")

            
nextpr:
     
            indentrs.MoveNext
            RW = RW + 1
        Loop
       End With
       FrameItem.ZOrder
        BUTTON(13).Enabled = False
    Else
        MsgBox "No Purchase RequisitionTo PurchaseOrder", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    End If

End Sub



Sub ItemLookupSKS()
On Error Resume Next
    
 Set rsnew = New Recordset
 rsnew.Open "select distinct Penpodetails from po_para where divcode='" & divcode & "' ", db, adOpenStatic
 If rsnew.RecordCount > 0 Then
    Pendpodet = rsnew(0)
 Else
    Pendpodet = "N"
 End If
     If Pendpodet = "Y" Then

        If bolLookupItemgrpwise Then
           StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
               " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode ) ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where  substring(a.itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(a.IsItemActive,0)=1 order by a.itemcode "
       Else
      StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
              " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )  ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where isnull(a.IsItemActive,0)=1 order by a.itemcode "
        

       End If
       

    Else
       If bolLookupItemgrpwise Then
           StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item WHERE substring(itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(IsItemActive,0)=1"
       Else
         StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item where  isnull(IsItemActive,0)=1"
       End If


End If

  

        Set itemrs = New Recordset
        itemrs.Open "Select itemname,UOM ""unit"",isnull(RATE,0) as rate,isnull(CURSTK,0) as Curstk from in_item where itemcode='" & LookUp.Fields(0) & "'", db, adOpenStatic, adLockReadOnly
        If Not itemrs.EOF Then
        
            ItemCodeTextBox.Text = LookUp.Fields(0)
            ItemNameTextBox.Text = itemrs(0)
            Text9.Text = itemrs("unit")
            LookUp.Clear = True
            QtyReqTextBox.SetFocus
            QtyReqTextBox.Text = Empty
            Call stock_find
            Call Rate_Find
            If Opt = "mod" Then
                Set RSG = New Recordset
                Set RSG.DataSource = adoSecondaryRS
                opt1 = Opt
                Opt = ""
                dd = adoSecondaryRS.AbsolutePosition
                If RSG.RecordCount > 0 Then
                    RSG.MoveFirst
                        While Not RSG.EOF
                            If ItemCodeTextBox = grddatagrid.Columns(4).Text And MachineTextBox = grddatagrid.Columns(13).Text And RSG.AbsolutePosition <> dd Then
                                MsgBox "Same Machine or Same Item should not Be repeat", vbInformation, head
                                Opt = opt1
                                adoSecondaryRS.AbsolutePosition = dd
                                grddatagrid.Col = 4
                                grddatagrid.SetFocus
                                ItemCodeTextBox.Text = grddatagrid.Columns(4).Text
                                ItemCodeTextBox.SetFocus
                                Exit Sub
                            End If
                            RSG.MoveNext
                        Wend
                End If
                adoSecondaryRS.MoveFirst
                adoSecondaryRS.AbsolutePosition = val(dd)
                Opt = opt1
            End If
            ItemNameTextBox.SetFocus
        End If
        LookUp.Clear = True

    

        Set rs = New Recordset
    rs.Open "select PendingOrderPara from po_para where divcode='" & divcode & "' ", db
   If rs(0) = "Y" Then
        Set primaryrs = New Recordset
               primaryrs.Open "exec KSP_INDEDNT_CHECK  '" & divcode & "', '" & Format(yfdate, "YYYY-MM-DD") & "','" & Format(yldate, "YYYY-MM-DD") & "','" & txtfields(5).Text & "','" & ItemCodeTextBox.Text & "'", db
         If Not primaryrs.EOF Then
              MsgBox " Pending Indent Quantity : " & primaryrs(1).Value & " ", vbInformation
              If MsgBox("Do you want to exit?", vbYesNo, head) = vbYes Then End
         End If
    End If
    
    
End Sub


Sub FindMatch(Col As Long, stext As String)
Dim ret As Integer
FpSpdInd.SelBackColor = RGB(255, 255, 0)
FpSpdInd.OperationMode = OperationModeRow
Dim i As Long
    If stext = "" Then
        FpSpdInd.TopRow = 1
        Exit Sub
    End If
    stext = UCase(stext)
    
    With FpSpdInd
        If lastsearchlen >= Len(stext) Then
            lastsearchrow = 1
        End If
        i = .SearchCol(Col, lastsearchrow, .DataRowCnt, stext, SearchFlagsPartialMatch)
        .SetActiveCell Col, i
        .SelBackColor = RGB(255, 255, 0)
        .OperationMode = OperationModeRow
    End With
    
End Sub



Private Sub IndentAddnew(iType As String, itemtxt As String, coldet As Integer)



 If itemtxt <> "" And coldet > 0 Then
     If coldet = 3 Then

        
        sqstr = " and itemname like '" & itemtxt & "%'"
        
     End If
     
     If coldet = 2 Then

            sqstr = " and itemcode like '" & itemtxt & "%'"
     End If
     
    
End If

    Set indentrs = New Recordset
    indentrs.CursorLocation = adUseClient
   
   
      
 Set rsnew = New Recordset
 rsnew.Open "select distinct Penpodetails from po_para where divcode='" & divcode & "' ", db, adOpenStatic
 If rsnew.RecordCount > 0 Then
    Pendpodet = rsnew(0)
 Else
    Pendpodet = "N"
 End If
     If Pendpodet = "Y" Then

        If bolLookupItemgrpwise Then
           StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
               " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode ) ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where  substring(a.itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(a.IsItemActive,0)=1 order by a.itemcode "
       Else
      StrQry = " Select  a.Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.' ,pendingqty 'Pending Qty',duedate 'Delivery Date',MINLEVEL 'Minimum Level',MAXLEVEL  'Maximum Level',LeadTime,f.slname 'Supplier Name'   from in_item a left join   " & _
               " (select (sum(isnull(ordqty,0))-sum(isnull(rcvdqty,0))) as pendingqty,itemcode,max(duedate) duedate  from po_ordl a inner join po_ordh b on a.pordno=b.pordno and a.porddt=b.porddt and a.divcode=b.divcode where  b.porddt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and b.divcode='" & divcode & "'   and canflg is null " & _
              " and candt is null and candt is null and (isnull(ordqty,0)-isnull(rcvdqty,0))>0 group by itemcode) b on a.itemcode=b.itemcode   left join (select  abs(datediff(d,min(docdt),max(porddt))) as leadtime ,itemcode from in_trntail a where divcode='" & divcode & "' and pordno = (select max(pordno) from in_trntail b where a.divcode=b.divcode  and a.itemcode=b.itemcode  and   " & _
               " porddt= (select max(PORDDT) from in_trntail c where a.divcode=c.divcode  and a.itemcode=c.itemcode) ) and a.porddt= (select max(PORDDT) from in_trntail d where a.divcode=d.divcode  and a.itemcode=d.itemcode) group by itemcode ) d on d.itemcode=a.itemcode  left join ( select  slcode,itemcode from po_ordl a inner join po_ordh b on  a.divcode=b.divcode and a.pordno=b.pordno and a.porddt=b.porddt   " & _
               "and a.divcode='" & divcode & "' and a.pordno = ( select max(pordno) from po_ordl c  where a.divcode=c.divcode and a.itemcode=c.itemcode   and porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )  ) and  a.porddt = ( select max(porddt) from po_ordl c where a.divcode=c.divcode and a.itemcode=c.itemcode )    ) g on a.itemcode=g.itemcode left join fa_slmas f on f.slcode=g.slcode where isnull(a.IsItemActive,0)=1 order by a.itemcode "
        

       End If
       
  
    Else
       If bolLookupItemgrpwise Then
           StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item WHERE substring(itemcode,1,3)='" & Trim(txtItemgrpcode.Text) & "' and isnull(IsItemActive,0)=1"
       Else
         StrQry = "select Itemcode 'Item Code',ItemName 'Description',uom 'UOM',CATLNO as 'Catalogue No.',DRAWNO as 'Drawing No.'from In_Item where  isnull(IsItemActive,0)=1  " & sqstr & " "
       End If


End If
    indentrs.Open StrQry, db, adOpenStatic, adLockBatchOptimistic
    If Not indentrs.EOF Then
        RW = 1
        Call SetSpdIndentHead("S")
        FpSpdIndHead.Visible = True
        FpSpdIndHead.MaxRows = 1
        With FpSpdInd
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
            .SetText E_SpdIndent.SprdItemcode, RW, indentrs("Item Code")
                .SetText E_SpdIndent.sprdItemname, RW, indentrs("Description")
            .SetText E_SpdIndent.Sprduom, RW, indentrs("Uom")
            .SetText E_SpdIndent.SprdCatalog, RW, indentrs("Catalogue No.")
            .SetText E_SpdIndent.Sprddrawno, RW, indentrs("Drawing No.")

            
            indentrs.MoveNext
            RW = RW + 1
        Loop
       End With
       FrameItem.ZOrder

        BUTTON(13).Enabled = False
    Else
 
        Exit Sub
    End If

End Sub



