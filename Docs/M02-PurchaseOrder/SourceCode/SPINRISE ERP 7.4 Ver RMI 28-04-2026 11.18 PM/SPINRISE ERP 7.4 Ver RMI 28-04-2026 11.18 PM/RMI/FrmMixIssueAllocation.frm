VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{6481A028-39ED-11DA-B598-00201829543C}#2.0#0"; "Kallistacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmMixIssueAllocation 
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab2 
      Height          =   5925
      Left            =   360
      TabIndex        =   7
      Top             =   1320
      Width           =   11655
      _ExtentX        =   20558
      _ExtentY        =   10451
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "FrmMixIssueAllocation.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "LblTotBales"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grddatagrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "TxtTotBales"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame7"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      Begin VB.Frame Frame15 
         Height          =   4710
         Left            =   360
         TabIndex        =   60
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
      End
      Begin VB.Frame Frame7 
         Height          =   2115
         Left            =   120
         TabIndex        =   9
         Top             =   60
         Visible         =   0   'False
         Width           =   11370
         Begin VB.CommandButton cmdissueok 
            Caption         =   "&Ok"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3360
            TabIndex        =   114
            Top             =   1680
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "noofissues"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   31
            Left            =   1290
            MaxLength       =   100
            TabIndex        =   35
            Top             =   1680
            Width           =   1725
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "isstype"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "FrmMixIssueAllocation.frx":001C
            Left            =   1305
            List            =   "FrmMixIssueAllocation.frx":001E
            TabIndex        =   43
            Top             =   150
            Width           =   3135
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SoftWaste"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   345
            Index           =   14
            Left            =   1320
            MaxLength       =   10
            TabIndex        =   33
            Top             =   1290
            Visible         =   0   'False
            Width           =   1980
         End
         Begin VB.TextBox Text6 
            Height          =   315
            Left            =   10785
            TabIndex        =   39
            ToolTipText     =   "Enter the value"
            Top             =   495
            Visible         =   0   'False
            Width           =   525
         End
         Begin VB.TextBox Text16 
            DataField       =   "FormNo"
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   9660
            MaxLength       =   10
            TabIndex        =   38
            Top             =   705
            Visible         =   0   'False
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   1
            Left            =   1305
            MaxLength       =   100
            TabIndex        =   30
            Top             =   540
            Width           =   1005
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   0
            Left            =   5490
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   37
            TabStop         =   0   'False
            Top             =   150
            Width           =   855
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ISSTO"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "FrmMixIssueAllocation.frx":0020
            Left            =   9510
            List            =   "FrmMixIssueAllocation.frx":0027
            TabIndex        =   36
            Top             =   510
            Width           =   1155
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   2325
            Locked          =   -1  'True
            TabIndex        =   34
            TabStop         =   0   'False
            Top             =   540
            Width           =   5910
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   13
            Left            =   6495
            MaxLength       =   100
            TabIndex        =   31
            Top             =   915
            Width           =   1725
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "vehicleno"
            Height          =   360
            Index           =   7
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   32
            Top             =   915
            Visible         =   0   'False
            Width           =   2475
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   29
            TabStop         =   0   'False
            Top             =   915
            Width           =   2910
         End
         Begin VB.ComboBox Combo3 
            Enabled         =   0   'False
            Height          =   315
            ItemData        =   "FrmMixIssueAllocation.frx":0035
            Left            =   90
            List            =   "FrmMixIssueAllocation.frx":0037
            TabIndex        =   28
            Top             =   2490
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   2
            Left            =   2610
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   27
            Top             =   2580
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.TextBox text2 
            DataField       =   "arrno"
            Height          =   300
            Left            =   3900
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   26
            Top             =   2550
            Visible         =   0   'False
            Width           =   1365
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "InvoiceNo"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   9
            Left            =   1305
            MaxLength       =   10
            TabIndex        =   25
            Top             =   1290
            Width           =   1965
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Timeout"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   10
            Left            =   6495
            MaxLength       =   7
            TabIndex        =   24
            Top             =   1290
            Width           =   1725
         End
         Begin VB.OptionButton Option5 
            Caption         =   "Form XX"
            Height          =   255
            Left            =   8460
            TabIndex        =   23
            Top             =   570
            Width           =   1215
         End
         Begin VB.OptionButton Option6 
            Caption         =   "Form XXVII"
            Height          =   255
            Left            =   8460
            TabIndex        =   22
            Top             =   810
            Width           =   1455
         End
         Begin VB.OptionButton Option7 
            Caption         =   "None"
            Height          =   255
            Left            =   8460
            TabIndex        =   21
            Top             =   1050
            Width           =   975
         End
         Begin VB.TextBox Txtisstype 
            Height          =   285
            Left            =   1320
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   210
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "mixgrp"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   8
            Left            =   1305
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   915
            Width           =   1005
         End
         Begin VB.Frame Frame4 
            Enabled         =   0   'False
            Height          =   495
            Left            =   8340
            TabIndex        =   15
            Top             =   -30
            Width           =   3030
            Begin VB.OptionButton optBinStock 
               Caption         =   "Rejected Stock Lot"
               Height          =   225
               Left            =   1290
               TabIndex        =   17
               Top             =   210
               Width           =   1680
            End
            Begin VB.OptionButton optMillStock 
               Caption         =   "Mill Stock Lot"
               Height          =   255
               Left            =   30
               TabIndex        =   16
               Top             =   180
               Value           =   -1  'True
               Width           =   1275
            End
         End
         Begin VB.CommandButton Command13 
            Caption         =   "&Ok"
            Height          =   330
            Left            =   10200
            TabIndex        =   14
            Top             =   1250
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "AllotedBale"
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
            Index           =   15
            Left            =   9180
            MaxLength       =   100
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   1230
            Width           =   855
         End
         Begin VB.Frame Frame8 
            Enabled         =   0   'False
            Height          =   495
            Left            =   9720
            TabIndex        =   10
            Top             =   1560
            Visible         =   0   'False
            Width           =   1575
            Begin VB.CheckBox Check2 
               Caption         =   "SM"
               Height          =   255
               Left            =   120
               TabIndex        =   12
               Top             =   180
               Width           =   735
            End
            Begin VB.CheckBox Check3 
               Caption         =   "FM"
               Height          =   255
               Left            =   840
               TabIndex        =   11
               Top             =   180
               Width           =   615
            End
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "invdate"
            Height          =   360
            Left            =   3735
            TabIndex        =   20
            ToolTipText     =   "Select the date"
            Top             =   1290
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   635
            _Version        =   393216
            CustomFormat    =   "dd/MM/yyyy"
            Format          =   170328067
            CurrentDate     =   36831
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   285
            Index           =   0
            Left            =   6870
            TabIndex        =   40
            Top             =   180
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   503
            _Version        =   393216
            BorderStyle     =   0
            BackColor       =   16777215
            ForeColor       =   0
            Enabled         =   0   'False
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
            DataField       =   "docdt"
            Height          =   330
            Left            =   6855
            TabIndex        =   41
            ToolTipText     =   "Select the date"
            Top             =   150
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            CustomFormat    =   "dd/MM/yyyy"
            Format          =   170328067
            CurrentDate     =   36831
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "InvDate"
            Height          =   300
            Index           =   1
            Left            =   3750
            TabIndex        =   42
            Top             =   1320
            Width           =   1200
            _ExtentX        =   2117
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   16777215
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
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "No.of Issues"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   115
            Top             =   1680
            Width           =   885
         End
         Begin VB.Label lblSoft 
            Caption         =   "Soft Waste"
            Height          =   255
            Left            =   120
            TabIndex        =   59
            Top             =   1365
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label Label37 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Form No."
            Height          =   195
            Left            =   8610
            TabIndex        =   58
            Top             =   780
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Party"
            Height          =   795
            Left            =   150
            TabIndex        =   57
            Top             =   2520
            Visible         =   0   'False
            Width           =   480
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Doc. No."
            Height          =   195
            Left            =   4590
            TabIndex        =   56
            Top             =   210
            Width           =   645
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Type"
            Height          =   195
            Left            =   120
            TabIndex        =   55
            Top             =   225
            Width           =   360
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   6420
            TabIndex        =   54
            Top             =   210
            Width           =   345
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   53
            Top             =   570
            Width           =   915
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Issue To"
            Height          =   195
            Left            =   8460
            TabIndex        =   52
            Top             =   555
            Width           =   615
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Prod. Lot No."
            Height          =   195
            Left            =   5430
            TabIndex        =   51
            Top             =   990
            Width           =   945
         End
         Begin VB.Label Label14 
            Caption         =   "Vehicle No."
            Height          =   255
            Left            =   120
            TabIndex        =   50
            Top             =   990
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            Height          =   195
            Left            =   150
            TabIndex        =   49
            Top             =   990
            Width           =   1170
         End
         Begin VB.Label Label10 
            Caption         =   "Category"
            Enabled         =   0   'False
            Height          =   255
            Left            =   180
            TabIndex        =   48
            Top             =   2550
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Invoice No."
            Height          =   195
            Left            =   120
            TabIndex        =   47
            Top             =   1380
            Width           =   825
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   3330
            TabIndex        =   46
            Top             =   1350
            Width           =   345
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Time Out"
            Height          =   195
            Left            =   5400
            TabIndex        =   45
            Top             =   1335
            Width           =   645
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Alloted Bale"
            Height          =   195
            Left            =   8280
            TabIndex        =   44
            Top             =   1320
            Width           =   840
         End
      End
      Begin VB.TextBox TxtTotBales 
         Alignment       =   1  'Right Justify
         Height          =   360
         Left            =   9810
         MaxLength       =   100
         TabIndex        =   8
         Top             =   5520
         Width           =   1600
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   3300
         Left            =   90
         TabIndex        =   61
         Top             =   2220
         Width           =   11355
         _ExtentX        =   20029
         _ExtentY        =   5821
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         ForeColor       =   0
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
         Caption         =   "SM"
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
      Begin VB.Label LblTotBales 
         AutoSize        =   -1  'True
         Caption         =   "Total Bales"
         Height          =   195
         Left            =   8760
         TabIndex        =   62
         Top             =   5580
         Width           =   795
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
      Left            =   4635
      TabIndex        =   106
      Top             =   4275
      Width           =   4935
      Begin VB.OptionButton Option3 
         Caption         =   "Bale Wise Issue"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1560
         TabIndex        =   110
         Top             =   480
         Width           =   3015
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Kgs Wise Issue"
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   1560
         TabIndex        =   109
         Top             =   720
         Width           =   1935
      End
      Begin VB.CommandButton Command8 
         Caption         =   "&Ok"
         Height          =   360
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   108
         Top             =   1335
         Width           =   1095
      End
      Begin VB.CommandButton Command9 
         Caption         =   "&Cancel"
         Height          =   345
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   107
         Top             =   1350
         Width           =   975
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Select the Issue Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   15
         TabIndex        =   111
         Top             =   -15
         Width           =   4935
      End
   End
   Begin VB.Frame Frame3 
      Height          =   6525
      Left            =   510
      TabIndex        =   99
      Top             =   1380
      Visible         =   0   'False
      Width           =   10935
      Begin VB.Frame Frame5 
         Height          =   855
         Left            =   120
         TabIndex        =   101
         Top             =   5640
         Width           =   10695
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "FrmMixIssueAllocation.frx":0039
            Height          =   495
            Left            =   6240
            Picture         =   "FrmMixIssueAllocation.frx":041B
            Style           =   1  'Graphical
            TabIndex        =   103
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "FrmMixIssueAllocation.frx":07EE
            Height          =   495
            Left            =   2760
            Picture         =   "FrmMixIssueAllocation.frx":0BD4
            Style           =   1  'Graphical
            TabIndex        =   102
            Top             =   240
            Width           =   1185
         End
      End
      Begin KalsoftListacx.kalsoftlist KSLLIST1 
         Height          =   4785
         Left            =   0
         TabIndex        =   100
         Top             =   1320
         Width           =   9240
         _ExtentX        =   16298
         _ExtentY        =   8440
         caption         =   ""
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1095
         Left            =   480
         TabIndex        =   104
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
         TabIndex        =   105
         Top             =   120
         Visible         =   0   'False
         Width           =   8730
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4740
      Left            =   600
      TabIndex        =   96
      Top             =   1410
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command4 
         Caption         =   "OK"
         Height          =   480
         Left            =   3420
         TabIndex        =   97
         Top             =   3840
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   3225
         Left            =   120
         TabIndex        =   98
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
      Left            =   1080
      TabIndex        =   90
      Top             =   2250
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
         TabIndex        =   93
         Top             =   855
         Width           =   1905
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         DownPicture     =   "FrmMixIssueAllocation.frx":0F9A
         Height          =   615
         Left            =   2580
         Picture         =   "FrmMixIssueAllocation.frx":1380
         Style           =   1  'Graphical
         TabIndex        =   92
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "FrmMixIssueAllocation.frx":1746
         Height          =   615
         Left            =   4020
         Picture         =   "FrmMixIssueAllocation.frx":1B28
         Style           =   1  'Graphical
         TabIndex        =   91
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Issue  No."
         Height          =   195
         Left            =   2010
         TabIndex        =   95
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
         TabIndex        =   94
         Top             =   120
         Width           =   7620
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6795
      Top             =   150
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   72
      Top             =   0
      Width           =   11985
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":1EFB
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "FrmMixIssueAllocation.frx":2345
         Style           =   1  'Graphical
         TabIndex        =   86
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":26A7
         Height          =   550
         Index           =   10
         Left            =   4815
         Picture         =   "FrmMixIssueAllocation.frx":29B1
         Style           =   1  'Graphical
         TabIndex        =   85
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":2D2D
         Height          =   550
         Index           =   9
         Left            =   4260
         Picture         =   "FrmMixIssueAllocation.frx":3037
         Style           =   1  'Graphical
         TabIndex        =   84
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":33D9
         Height          =   550
         Index           =   11
         Left            =   5955
         Picture         =   "FrmMixIssueAllocation.frx":3823
         Style           =   1  'Graphical
         TabIndex        =   83
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":3BB8
         Height          =   550
         Index           =   7
         Left            =   3180
         Picture         =   "FrmMixIssueAllocation.frx":4002
         Style           =   1  'Graphical
         TabIndex        =   82
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   7440
         Picture         =   "FrmMixIssueAllocation.frx":4352
         Style           =   1  'Graphical
         TabIndex        =   81
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":46E9
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "FrmMixIssueAllocation.frx":49F3
         Style           =   1  'Graphical
         TabIndex        =   80
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":4D6D
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
         Left            =   1095
         Picture         =   "FrmMixIssueAllocation.frx":5077
         Style           =   1  'Graphical
         TabIndex        =   79
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   450
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":5413
         Height          =   550
         Index           =   5
         Left            =   2100
         Picture         =   "FrmMixIssueAllocation.frx":585D
         Style           =   1  'Graphical
         TabIndex        =   78
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":5BC2
         Enabled         =   0   'False
         Height          =   550
         Index           =   0
         Left            =   30
         Picture         =   "FrmMixIssueAllocation.frx":5ECC
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":625F
         Height          =   550
         Index           =   6
         Left            =   2625
         Picture         =   "FrmMixIssueAllocation.frx":66A9
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   555
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
         Height          =   550
         Index           =   12
         Left            =   8970
         Picture         =   "FrmMixIssueAllocation.frx":69F6
         Style           =   1  'Graphical
         TabIndex        =   75
         ToolTipText     =   "Issue Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmMixIssueAllocation.frx":6E38
         Height          =   550
         Index           =   4
         Left            =   1560
         Picture         =   "FrmMixIssueAllocation.frx":7142
         Style           =   1  'Graphical
         TabIndex        =   74
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5355
         Picture         =   "FrmMixIssueAllocation.frx":74D7
         Style           =   1  'Graphical
         TabIndex        =   73
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   150
         Width           =   585
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
         Left            =   8010
         TabIndex        =   88
         Top             =   270
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
         Left            =   9960
         TabIndex        =   87
         Top             =   240
         Width           =   630
      End
   End
   Begin VB.Frame Frame12 
      Height          =   540
      Left            =   2820
      TabIndex        =   63
      Top             =   690
      Visible         =   0   'False
      Width           =   9030
      Begin VB.OptionButton Option8 
         Caption         =   "No"
         Height          =   225
         Left            =   3000
         TabIndex        =   70
         Top             =   240
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option9 
         Caption         =   "Yes"
         Height          =   255
         Left            =   1755
         TabIndex        =   69
         Top             =   225
         Width           =   1260
      End
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   330
         Left            =   4200
         TabIndex        =   68
         Top             =   150
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.Frame Frame1 
         Height          =   555
         Left            =   5505
         TabIndex        =   64
         Top             =   -30
         Width           =   3525
         Begin VB.OptionButton optMIC 
            Caption         =   "Micronaire - wise"
            Height          =   255
            Left            =   840
            TabIndex        =   66
            Top             =   210
            Width           =   1500
         End
         Begin VB.OptionButton optStock 
            Caption         =   "StockWise"
            Height          =   225
            Left            =   2340
            TabIndex        =   65
            Top             =   255
            Value           =   -1  'True
            Width           =   1080
         End
         Begin VB.Label Label1 
            Caption         =   "Option"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   67
            Top             =   240
            Width           =   1425
         End
      End
      Begin VB.Label Label13 
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
         Height          =   255
         Left            =   150
         TabIndex        =   71
         Top             =   225
         Width           =   1425
      End
   End
   Begin VB.Frame FraIssue 
      Height          =   4875
      Left            =   1920
      TabIndex        =   0
      Top             =   2745
      Visible         =   0   'False
      Width           =   9945
      Begin VB.CommandButton CmdIssOk 
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
         Height          =   360
         Left            =   2265
         TabIndex        =   3
         Top             =   4230
         Width           =   1410
      End
      Begin VB.CommandButton CmdIssCancel 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3870
         TabIndex        =   2
         Top             =   4230
         Width           =   1410
      End
      Begin VB.CheckBox Check1 
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
         Height          =   255
         Left            =   135
         TabIndex        =   1
         Top             =   555
         Width           =   1140
      End
      Begin FPSpreadADO.fpSpread FpSpIss 
         Height          =   3240
         Left            =   60
         TabIndex        =   4
         Top             =   870
         Width           =   9810
         _Version        =   524288
         _ExtentX        =   17304
         _ExtentY        =   5715
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
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
         MaxCols         =   0
         MaxRows         =   0
         ScrollBarExtMode=   -1  'True
         ScrollBarShowMax=   0   'False
         SpreadDesigner  =   "FrmMixIssueAllocation.frx":7919
         ScrollBarStyle  =   3
      End
      Begin VB.Label Label41 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Lot Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   345
         Left            =   15
         TabIndex        =   5
         Top             =   105
         Width           =   9900
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4380
      Left            =   12390
      TabIndex        =   6
      Top             =   1350
      Visible         =   0   'False
      Width           =   4080
      _extentx        =   7197
      _extenty        =   7726
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   89
      Top             =   2835
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   14112
            MinWidth        =   14112
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
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   11520
      Top             =   7950
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      EMailSubject    =   "lot bale"
      EMailMessage    =   "lot bale Detail"
      EMailToList     =   "svinu@in.com"
      EMailCCList     =   "svinu@in.com"
      PrintFileLinesPerPage=   60
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mixing Allocation"
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
      Left            =   450
      TabIndex        =   113
      Top             =   855
      Width           =   2325
   End
   Begin VB.Label lblLotDetails 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   345
      TabIndex        =   112
      Top             =   6735
      Width           =   11475
   End
End
Attribute VB_Name = "FrmMixIssueAllocation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ActBalQty As Double
Dim rstQry As Recordset
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rstPARAM As Recordset
Dim ADOSECONDARYRS As Recordset
Dim iRejQty As Integer
 Dim iBinStockQty As Integer
 Dim iBinAccQty As Integer
 Dim iBinIssueQty As Integer
Dim z As Integer
Dim updSECONDARYRS As Recordset
'Dim RS As Recordset
Dim UPDRS As Recordset
Dim bolRejFlg As Boolean
Dim iQty As Integer
Dim iNewLotQty As Integer
Dim iLotQty As Integer
Dim iNewRejQty As Integer
Dim WithEvents Rs As Recordset
Attribute Rs.VB_VarHelpID = -1
Dim bolAbstract As Boolean
Dim sDuphead As String
Dim sVar As String
Dim iCount As Integer
Dim Idocno, iRowNo As Integer
Dim sDocDate As String
Dim sVarcode As String
Dim iLen As Integer
Dim iSend As Integer
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldbales As Date
Dim sVariety As String
Dim balers As Recordset
Dim dTotalWgt As Double
Dim QTY As Double
Dim tabflag As Boolean
Dim selbale As Integer
Dim selwt As Double
Dim a As String
Dim B As String
Dim wt As Double
Dim Str, FLGISSH As String
Dim I As Integer
Dim FLG As String
Dim RS2 As Recordset
Dim rx As Integer
Dim s As Double
Dim c As Integer
Dim ChkEx As Integer
Dim j As Integer
Dim ry As New Recordset
Dim xx1 As Integer
Dim tbno As Integer
Dim tgwt As Double
Dim ttwt As Double
Dim tnwt As Double
Dim taisswt As Double
Dim xx As New Recordset
Dim DYINGHEADRS As Recordset
Dim DYINGTAILRS As Recordset
Dim totv As Double
Dim ISSFLG, gbaleno As String
Dim avilbalers As Recordset
Dim baleno As String
Dim gvar, oldissued As String
Dim diffkgs As Double
Dim oldisswt As Double
Dim vTotBal As Double
Dim vNetWt As Double
Dim vActWt As Double
Dim deltype As String
Dim TmpDelRs As New Recordset
Dim cnt As Double
Dim ChkCount As Integer
Dim EBaleNo As Integer
Dim TotalBale As Integer
Dim ConnectCnt As Integer
Dim SBale, EBale As Integer
Dim IBales As Integer
Dim minspanlen, maxspanlen, minstr, maxstr, minmic, maxmic, minrd, maxrd, minbb, maxbb As Double
Private Enum E_SpdBal
    SprdCheck = 1
    sprdBaleNo
    sprdGrossWt
    sprdTareWt
    sprdBalanceWt
    SprdPartyBaleNo
End Enum
Private Enum E_SpdIss
    SpChk = 1
    spdLotno
    spdSupLotno
    spdLotDt
    spdVCode
    SpdVName
    SPDSupCode
    SPDSupplier
    SPDCAT
    SPDQty
 
End Enum




Private Sub SetGridHeadlot()
On Error Resume Next
    With FpSpIss
        .MaxRows = 0
        .MaxCols = E_SpdIss.SPDQty
        .Row = 0
        .FontBold = True
        .ColHeadersAutoText = DispBlank
        SetSpreadCol1 FpSpIss, E_SpdIss.SpChk, "", CellTypeCheckBox, 2, , , False
        SetSpreadCol1 FpSpIss, E_SpdIss.spdLotno, "Lot No.", CellTypeStaticText, 8
        SetSpreadCol1 FpSpIss, E_SpdIss.spdSupLotno, "SuppLot No.", CellTypeStaticText, 8
        SetSpreadCol1 FpSpIss, E_SpdIss.spdLotDt, "Lot Date", CellTypeStaticText, 9
        SetSpreadCol1 FpSpIss, E_SpdIss.spdVCode, "Code", CellTypeStaticText, 10, True, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SpdVName, "Name", CellTypeStaticText, 15
        SetSpreadCol1 FpSpIss, E_SpdIss.SPDSupCode, "Supplier Code", CellTypeStaticText, 10, True, True
        SetSpreadCol1 FpSpIss, E_SpdIss.SPDSupplier, "Supplier", CellTypeStaticText, 18, False, False
        
        SetSpreadCol1 FpSpIss, E_SpdIss.SPDCAT, "Station", CellTypeStaticText, 10, False, False
        SetSpreadCol1 FpSpIss, E_SpdIss.SPDQty, "Qty", CellTypeStaticText, 10, False, False

    End With
End Sub
Private Sub SpdTranLoad()
On Error Resume Next
Dim bales, actkgs As Double
Dim TmpRs As Recordset
If TmpRs.State = 1 Then TmpRs.Close
FraIssue.Visible = True
FraIssue.ZOrder

'        Set Rs = New Recordset
'        Rs.Open "Select VarietyReqIssue from rm_param", db, adOpenStatic
'           Set TmpRs = New Recordset
'       If Rs(0) <> "Y" Then
'            Set Rs = New Recordset
'            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue ,ISNULL(iqa,'N') As iqa from rm_paRAM", db, adOpenStatic
'
'            'LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,a.LotType from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y'"
'            If Rs(1) = "Y" Then
'                TmpRs.Open "Select A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,a.LotType,VARTYPE 'VarietyType',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',SHADENO 'Shade',Denier,Length from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.Fappflg = 'Y'  AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y' AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
'            Else
'                If Openkeyloanflg = "Y" Then
'                    TmpRs.Open "Select distinct A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,a.LotType,VARTYPE 'VarietyType',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',SHADENO 'Shade',Denier,Length  from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E,rm_bale e1,RM_GOD as e2  where e2.gcode=a.GODOWN and isnull(e2.OpenLoankeyflg,'N')='N' and  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and a.LOTNO=e1.LOTNO and a.LOTDT= e1.lotdt and a.ARRDT=e1.arrdt and a.ARRNO=e1.arrno and isnull(e1.OPENKEY,'N')='N'  and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y' AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
'                Else
'                   TmpRs.Open "Select A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,a.LotType,VARTYPE 'VarietyType',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',SHADENO 'Shade',Denier,Length   from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y' AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockReadOnly
'                End If
'            End If
'
'        ElseIf Rs(0) = "Y" Then
'
'        Set Rs = New Recordset
'        Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue,ISNULL(iqa,'N') As iqa  from rm_paRAM", db, adOpenStatic
'        If Rs(1) = "Y" Then
'            TmpRs.Open "Select  distinct A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,(F.baleno-isnull(isskgs,0)) as ""ReqQty"",a.lottype,b.VARTYPE 'VarietyType',CASE WHEN b.VARTYPE='G' THEN 'Grey' WHEN b.VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',b.SHADENO 'Shade',b.Denier,b.Length from rm_lot a inner join rm_var b on  a.varcode=b.varcode AND A.CATCD=B.CATCD  inner join FA_SLMAS D on  A.SUPCD=D.SLCODE  inner join rm_area E  on a.areacd=e.areacode inner join RM_IssReqB F on   a.lotno=F.lotno and a.lotdt=f.lotdt and a.lottype=F.lottype and a.Divcode=f.divcode and a.catcd=f.catcd where a.Fappflg='Y' and  A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  and F.DocNo=" & val(iSlipNo) & " and DocDt ='" & Format(sSlipDate, "YYYY-MM-DD") & "'and F.Divcode ='" & Divcode & "' and F.baleno > isnull(F.issKgs,0) and isnull(a.issflg,'N')='Y'  " & _
'                                    " AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockReadOnly
'            Else
'            TmpRs.Open "Select distinct A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,(F.baleno-isnull(isskgs,0)) as ""ReqQty"",a.lottype,b.VARTYPE 'VarietyType',CASE WHEN b.VARTYPE='G' THEN 'Grey' WHEN b.VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',b.SHADENO 'Shade',b.Denier,b.Length from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E ,RM_IssReqB F where a.areacd=e.areacode and A.SUPCD=D.SLCODE and a.varcode=b.varcode AND A.CATCD=B.CATCD AND a.lotno=F.lotno and a.lotdt=f.lotdt and a.lottype=F.lottype and a.Divcode=f.divcode and a.catcd=f.catcd and A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  and F.DocNo=" & val(iSlipNo) & " and DocDt ='" & Format(sSlipDate, "YYYY-MM-DD") & "'and F.Divcode ='" & Divcode & "' and F.baleno > isnull(F.issKgs,0) and isnull(a.issflg,'N')='Y' AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
'        End If
'        End If
If optMillStock.value Then
Set TmpRs = New Recordset

 Set rsnew = New Recordset
        rsnew.Open "SELECT isnull(issuecontrolflag,'N')issuecontrolflag FROM QC_PARA WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsnew(0) = "N" Then
            Set Rs = New Recordset
            Rs.Open "Select varietyCtrlIssue from rm_param", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
             
    Dim msgnew As String
    msgnew = MsgBox("Do you want to load all stock?", vbYesNo, head)
    If msgnew = vbNo Then
                    strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and  isnull(i.issued,'N')<>'Y'),0))>0 " & _
               " and (a.lotno not in(select  distinct lotno from rm_issreqb ) or a.lotdt not in (select  distinct lotdt from rm_issreqb) or a.catcd not in (select  distinct CATCD from rm_issreqb ))  "
     Else
                 strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y'  AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0" 'and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and  isnull(i.issued,'N')<>'Y'),0))>0 "
    End If
             
'                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and  isnull(i.issued,'N')<>'Y'),0))>0 " & _
'                " and (a.lotno not in(select  distinct lotno from rm_issreqb ) or a.lotdt not in (select  distinct lotdt from rm_issreqb) or a.catcd not in (select  distinct CATCD from rm_issreqb ))  "

'  strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and  isnull(i.issued,'N')<>'Y'),0))>0 "
                
                
                
            ElseIf Rs(0) = "Y" Then
            
                Set rs1 = New Recordset
                rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
                If rs1.EOF = False Then
                    sVariety = ""
                    rs1.MoveFirst
                    Do While rs1.EOF = False
                        sVariety = sVariety & ",'" & rs1(0) & "'"
                        rs1.MoveNext
                    Loop
                    sVariety = Mid(sVariety, 2)
                Else
                    MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
            
                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0)As MasBQty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 ANd a.varcode  in (" & sVariety & ")"
                strSQL = strSQL & " And IsNull((Select Sum(Isnull(Qty,0))As FQty From TMP_RM_ISSREQ Where CatCd=A.CatCd And VarCode=A.VarCode),0)<ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0) and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and  isnull(i.issued,'N')<>'Y'),0))>0 "
              
            End If
        Else
            Set Rs = New Recordset
            Rs.Open "Select varietyCtrlIssue from rm_param", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
                
                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  AND staplen Between " & minspanlen & " AND " & maxspanlen & " AND strength between " & minstr & " AND " & maxstr & " AND micronaire between " & minmic & " AND " & maxmic & " AND rd between " & minrd & " AND " & maxrd & " AND bb between " & minbb & " AND " & maxbb & " and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype " & _
                " and i.catcd=a.catcd and i.varcode=a.varcode and isnull(issued,'N')<>'Y'),0))>0 "
            ElseIf Rs(0) = "Y" Then
            
                Set rs1 = New Recordset
                rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
                If rs1.EOF = False Then
                    sVariety = ""
                    rs1.MoveFirst
                    Do While rs1.EOF = False
                        sVariety = sVariety & ",'" & rs1(0) & "'"
                        rs1.MoveNext
                    Loop
                    sVariety = Mid(sVariety, 2)
                Else
                    MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
             
                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0)As MasBQty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 "
                strSQL = strSQL & " AND staplen Between " & minspanlen & " AND " & maxspanlen & " AND strength between " & minstr & " AND " & maxstr & " AND micronaire between " & minmic & " AND " & maxmic & " AND rd between " & minrd & " AND " & maxrd & " AND bb between " & minbb & " AND " & maxbb & " ANd a.varcode  in (" & sVariety & ")"
                strSQL = strSQL & " And IsNull((Select Sum(Isnull(Qty,0))As FQty From TMP_RM_ISSREQ Where CatCd=A.CatCd And VarCode=A.VarCode),0)<ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0) and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode and isnull(issued,'N') <>'Y'),0))>0 "
            End If
        End If
Else
Set Rs = New Recordset
Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
strSQL = "Select distinct A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E, rm_issuebinstock f where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and a.lotno=f.lotno and a.lotdt=f.lotdt and a.catcd=f.catcd and a.varcode = b.varcode and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and f.rejqty <> isnull(f.binaccqty,0) "

End If
        
Set TmpRs = New Recordset
TmpRs.Open strSQL, DB, adOpenStatic, adLockReadOnly
If Not TmpRs.EOF Then
    Call SetGridHeadlot
    FpSpIss.MaxRows = 0
    RW = 1
    Do While Not TmpRs.EOF
        FpSpIss.MaxRows = FpSpIss.MaxRows + 1
        FpSpIss.SetText E_SpdIss.spdLotno, RW, TmpRs("Lot No.")
            FpSpIss.SetText E_SpdIss.spdSupLotno, RW, TmpRs("Supplier Lot No.")
        FpSpIss.SetText E_SpdIss.spdLotDt, RW, Format(TmpRs("Lot Date"), "dd/mm/yyyy")
        FpSpIss.SetText E_SpdIss.spdVCode, RW, TmpRs("Variety Code")
        FpSpIss.SetText E_SpdIss.SpdVName, RW, TmpRs("Variety")
        FpSpIss.SetText E_SpdIss.SPDSupplier, RW, TmpRs("Supplier")
        FpSpIss.SetText E_SpdIss.SPDCAT, RW, TmpRs("Category")
  
        FpSpIss.SetText E_SpdIss.SPDQty, RW, TmpRs("qty")
    

        TmpRs.MoveNext
        RW = RW + 1
    Loop
Else
    MsgBox "No Record(s) Found ", vbInformation, head
    Call SetGridHead
    Exit Sub
End If



End Sub


Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.ConnectionTimeout = 0
    DB.CommandTimeout = 0
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Issue"
End Sub

Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error
lblLotDetails.Caption = ""
Select Case Index
Case 13


 'report call
    Dim clsCryRpt2 As New clsCrystal
    
    'Set clsCryRpt2.cryRept = RMIPurchaseBill1
    '07/11/16-SUP.WT SIVAKUARM GM CHANGE(CUSTID PROBLEM)
    Set clsCryRpt2.cryRept = Cry_Mixingissueallocation
    
    clsCryRpt2.CrystalPrint

    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
   ' CrystalReport1.SelectionFormula = "{RM_LOT.DIVCODE}='" & Divcode & "' AND {RM_LOT.PJDT} = cdate('" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "') AND {RM_LOT.PJNO}>=  " & Txtfields(304) & " AND {RM_LOT.PJNO} <= " & Txtfields(304) & " "
    CrystalReport1.ParameterFields(0) = "@dIVCODE;" & Divcode & ""
    CrystalReport1.ParameterFields(2) = "@FromDate;" & Format(yfdate, "yyyy-mm-dd") & ""
    CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(MaskEdBox1(0), "yyyy-mm-dd") & ""
    CrystalReport1.ParameterFields(1) = "@DOCNO;" & Txtfields(0).Text & ""
   
   
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
intervalMinutes = -1
    Exit Sub
Case 0
If ToValidFinYear(Divcode) = False Then Exit Sub
    Frame4.Enabled = True
    ActBalQty = 0
    Call Temp_tbl_Update_IssReq("CLEAR")

    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from RM_issReqH where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Opt = "add"
    desc.Caption = "Addition"
    SSTab2.Visible = True
    Buttonframe.Enabled = False
    Call SetColoumn
    optMillStock.value = True
    FLG = ""
    DTPicker1.value = pdate
    Call gridalign
  
    Txtfields(0).Text = ""
    Call bindcontls
    Call ENABLCONTLS
     DB.BeginTrans
    adoPrimaryRS.AddNew
    updSECONDARYRS.AddNew
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    Text5.Text = ""
    Frame7.Enabled = True
    Frame7.Visible = True
     TxtTotBales.Text = ""
    diffkgs = 0
    sVar = ""
    IBales = 0
    grddatagrid.AllowUpdate = True
    Str = ""
    Set issrs = New Recordset
    issrs.Open "select issue_code + '--' + issue_desc from rm_issuetype ", DB, adOpenStatic
    Combo1.Locked = False
    Combo1.Clear
    Do While Not issrs.EOF
        Combo1.AddItem issrs(0)
        issrs.MoveNext
    Loop
    
    Set issrs = New Recordset
    issrs.Open "select issue_code + '--' + issue_desc from rm_issuetype where isstype='P'", DB, adOpenStatic
    
    If issrs.RecordCount > 0 Then
        Combo1.Text = issrs(0)
    End If
    Call clears
    Combo2.ListIndex = 0
    If Combo1.Enabled = True Then Combo1.SetFocus
     Set rsa = New Recordset
    rsa.Open "select catcd + '--' + catname from rm_cat WHERE CATCD NOT IN('D','W')", DB, adOpenStatic
    Combo3.Clear
    Do While Not rsa.EOF
        Combo3.AddItem rsa(0)
        rsa.MoveNext
    Loop
    Combo3.ListIndex = 0
    MaskEdBox1(0).Mask = pdate
    MaskEdBox1(0).Text = pdate
    
    MaskEdBox1(1).Mask = pdate
    MaskEdBox1(1).Text = pdate
    MaskEdBox1(0).Enabled = True
'    sstAB2.Enabled = False
'    Frame10.Visible = True
    Txtfields(1).Visible = True
    Txtfields(8).Visible = True
    Label14.Visible = False
    Txtfields(7).Visible = False
    Txtfields(1).ZOrder
'    Frame10.ZOrder
'    Option4.SetFocus
'    Command8.Default = True
    Call Command8_Click
    
  '  Opt
    vTotBal = 0
    vNetWt = 0
    vActWt = 0
    Txtfields(31).Text = ""
    Txtfields(1).SetFocus
   '
Case 1
    'modification
    If ToValidFinYear(Divcode) = False Then Exit Sub

    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from RM_issReqH where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    diffkgs = 0
     TxtTotBales.Text = ""
    Opt = "mod"
    bolRejFlg = True
    Txtfields(31).Enabled = True
    Txtfields(31).Locked = False
    Combo1.Locked = False
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    SSTab2.Enabled = True
    
    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        Frame8.Enabled = True
    End If
'    Frame1.Enabled = True
'    Frame7.Enabled = True
'    Frame4.Enabled = True
Case 4
    'Find
    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from RM_issReqH where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    diffkgs = 0
    
    Opt = "fnd"
    Combo1.Locked = False
    desc.Caption = "Find"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    'sstAB2.Enabled = False
'    Frame1.Enabled = False
    Frame7.Enabled = False
'    Frame4.Enabled = False
Case 2
    'Deletion
    If ToValidFinYear(Divcode) = False Then Exit Sub

    Set rsz = New Recordset
    rsz.Open "select max(Docdt) from RM_issReqH where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter a valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    
    Opt = "del"
'    DB.BeginTrans
    Combo1.Locked = False
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 3
     'list
    Dim weigh As Double
    Dim qtyt As Double
    Dim amt As Double
    
    weigh = 0
    qtyt = 0
    amt = 0
    Gamt = 0
    sDuphead = ""
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    TOTVAL = 0
    co = 0
    cnt = 0
    Close
   ' Open "c:\isskg.txt" For Output As #f
    Open KALFOLDERDATA & "\isskg.TXT" For Output As #f
    
    pg = 1
    Print #f,
    Print #f, Chr(27) & Chr(77)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 60, " " + Chr(27) + "F")
    Print #f, Chr(27) & Chr(205)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Issue Requisition List " & Space(32) + Space(0) + SR + Space(3) + "Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(80, "-")
    Print #f, Space(5) & Padr("Doc.", 6, " ") & Space(2) & Padr("Doc.", 8, " ") & Space(2) & Padr("Issue", 5, " ") & Space(2) & Padr("Count", 10, " ") & Space(1) & Padr("Lot", 6, " ") & Space(2) & Padr("Lot", 8, " ") & Space(2) & Padr("Variety", 10, " ") & Space(2) & Padr("Quantity", 8, " ")
    Print #f, Space(5) & Padr("No.", 6, " ") & Space(2) & Padr("Date", 8, " ") & Space(2) & Padr("Type", 5, " ") & Space(2) & Padr("Code", 10, " ") & Space(1) & Padr("No.", 6, " ") & Space(2) & Padr("Date", 8, " ") & Space(2) & Padr("Code", 10, " ") & Space(2) & Padr("", 8, " ")
    Print #f, Space(5) & String(80, "-")
    co = 9
    'Call headn(CInt(pg))
    Set Rs = New Recordset
    'cntcd like 'c1%' and
    'rs.Open "select docno,docdt,cntcd,isstype,VEHICLENO from RM_issReqH where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt,docno", db, adOpenStatic
    
'    Rs.Open " select a.docno,a.docdt,a.cntcd,a.isstype,a.VEHICLENO,sum(b.isskgs) iskgs, sum(b.actisskgs) actKgs from RM_issReqH a, RM_issReqB b " & _
'            " where a.docno=b.docno AND a.divcode=b.divcode AND a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
'            " GROUP BY a.docno,a.docdt,a.cntcd,a.isstype,a.VEHICLENO  Order By a.docno, a.docdt", DB, adOpenStatic

    strSQL = "select a.docno,a.docdt,a.cntcd,a.isstype,b.lotno,b.lotdt,b.varcode,b.baleno"
    strSQL = strSQL & Chr(13) & "from RM_issReqH a, RM_issReqB b"
    strSQL = strSQL & Chr(13) & "where a.docno=b.docno AND a.divcode=b.divcode AND a.docdt=b.docdt AND a.divcode='01' and a.docdt between '2008-04-01' and '2009-03-31'"
    strSQL = strSQL & Chr(13) & "Order By a.docno, a.docdt"
    
    Rs.Open strSQL, DB, adOpenStatic
    Do While Rs.EOF = False
        If sDuphead <> Rs("docno") Then
            sDuphead = Rs("docno")
            Print #f, Space(5) & Padr(Rs("docno"), 6, " ") & Space(2) & Padr(Format(Rs("docdt"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("isstype"), 5, " ") & Space(2) & Padr(Rs("cntcd"), 10, " ") & Space(1) & Padr(Rs("lotno"), 6, " ") & Space(2) & Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Varcode"), 10, " ") & Space(2) & Padl(INF(Rs("baleno"), 0), 8, " ")
        Else
            Print #f, Space(5) & Padr("", 6, " ") & Space(2) & Padr("", 8, " ") & Space(2) & Padr("", 5, " ") & Space(2) & Padr("", 10, " ") & Space(1) & Padr(Rs("lotno"), 6, " ") & Space(2) & Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Varcode"), 10, " ") & Space(2) & Padl(INF(Rs("baleno"), 0), 8, " ")
        End If
        co = co + 1
        If co >= 57 Then
            Print #f, Space(5) & String(80, "-")
            Print #f, Chr(12)
            co = 0
            pg = pg + 1
           ' Call headn(CInt(pg))
            
            Print #f,
            Print #f, Chr(27) & Chr(77)
            Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 60, " " + Chr(27) + "F")
            Print #f, Chr(27) & Chr(205)
            SR = Format(pdate, "dd/mm/yy")
            pg = pg + 1
            Print #f, Space(5) & "Issue List " & Space(32) + Space(0) + SR + Space(3) + "Pg. : " & Padl(pg, 3, " ")
            'Print #f, Space(5) & "Issue List " & Space(40) + Space(40) + "Pg. : " & Padl(pg, 3, " ") + Chr(15)
            Print #f, Space(5) & String(80, "-")
            Print #f, Space(5) & Padr(Rs("Doc."), 6, " ") & Space(2) & Padr(Format(Rs("Doc."), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Issue"), 5, " ") & Space(2) & Padr(Rs("Count"), 10, " ") & Space(1) & Padr(Rs("Lot"), 6, " ") & Space(2) & Padr(Format(Rs("Lot"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Variety"), 10, " ") & Space(2) & Padr(INF(Rs("Quantity"), 0), 8, " ")
            Print #f, Space(5) & Padr(Rs("No."), 6, " ") & Space(2) & Padr(Format(Rs("Date"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Type"), 5, " ") & Space(2) & Padr(Rs("Code"), 10, " ") & Space(1) & Padr(Rs("No."), 6, " ") & Space(2) & Padr(Format(Rs("Date"), "dd/mm/yy"), 8, " ") & Space(2) & Padr(Rs("Code"), 10, " ") & Space(2) & Padr(INF(Rs(""), 0), 8, " ")
            Print #f, Space(5) & String(80, "-")
            co = 8
        End If
    Rs.MoveNext
    Loop
    Print #f, Space(5) & String(80, "-")
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
''   MsgBox err.description, vbInformation, head

Case 9
Dim dSoftWaste As Double
Dim dSoftPer As Double
    'Save
    'lblctrl.Visible = False
    If Opt = "add" Then
        
        Set rsz = New Recordset
        rsz.Open "select max(Docdt) from RM_issReqH where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If CDate(MaskEdBox1(0).Text) < CDate(rsz(0)) Then
                    MsgBox "Issue Document Date must be after or equal to Last Issue Date", vbInformation, head
                    MaskEdBox1(0).SetFocus
                    Exit Sub
                End If
            End If
        End If
        If Opt = "add" Then
            If CDate(MaskEdBox1(0).Text) < CDate(pdate) Then
                MsgBox "Issue Document Date must be equal to Processing Issue Date", vbInformation, head
                MaskEdBox1(0).SetFocus
                Exit Sub
            End If
        End If
    
        If Combo1.Text = "PR" Then
            If Trim(Txtfields(1).Text) = "" Then
                MsgBox "Please enter Category", vbInformation, head
                Txtfields(1).SetFocus
                Exit Sub
            End If
        End If
        Set Rs = New Recordset
        Rs.Open "Select SoftwastePer from rm_param", DB, adOpenStatic
        dSoftPer = IIf(IsNull(Rs(0)), 0, Rs(0))
        
         If Txtisstype.Text = "P" Then
            dSoftWaste = 0
            
         End If
        
         If Opt = "add" And grddatagrid.Col > 9 Then
        If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
        Do While Not updSECONDARYRS.EOF
             
          If val(grddatagrid.Columns(0).Text) <> 0 Then
             issbaltot = 0
             For I = 1 To val(Txtfields(31).Text)
                issbaltot = issbaltot + val(grddatagrid.Columns(10 + I).Text)
             Next
             
             If issbaltot > val(grddatagrid.Columns(9).Text) Then
                MsgBox " No.of issue details can't be Greater than issue bales ", vbInformation, head
                Exit Sub
             End If
             
             If issbaltot <> val(grddatagrid.Columns(9).Text) Then
                MsgBox " No.of issue details can't be Greater than or Less than issue bales ", vbInformation, head
                Exit Sub
             End If
                   
                    For I = 1 To val(Txtfields(31).Text)
                       If val(grddatagrid.Columns(10 + I).Text) = 0 Then
                            MsgBox " No.of issues can'be 0.. ", vbInformation, head
                            Exit Sub
                       End If
                    Next
             
'                   If grddatagrid.Columns(0).Text = "" Then
'
'                   End If
                   
       End If
             
       
            updSECONDARYRS.MoveNext
        Loop
    End If
    End If
'
'    If Opt = "mod" Then
'        ''Deletion
'        On Error GoTo del
'        '*********************  LOT TABLE UPDATION **************************/
'        DB.BeginTrans
'        opt1 = Opt
'        Opt = ""
'
'        Opt = opt1
'        DB.CommitTrans
'    End If
       
    
    
    If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Txtfields(0).Text = Rs(0)

       If Txtisstype = "T" Then
            adoPrimaryRS("cntcd") = Txtfields(1).Text
            CntCode = Txtfields(1).Text
       End If
       If Txtisstype = "S" Or Txtisstype = "J" Then
            adoPrimaryRS("SLCODE") = Txtfields(1).Text
       End If
       
       
        adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
        adoPrimaryRS("issto") = Left(Combo2.Text, 1)
        adoPrimaryRS("docno") = Txtfields(0).Text
        
        If optMillStock.value = True Then
            adoPrimaryRS("ISSUEFLG") = "M"
        Else
            adoPrimaryRS("ISSUEFLG") = "B"
        End If
        
        If Txtisstype.Text = "P" Then
            adoPrimaryRS("CNTCD") = Trim(Txtfields(1).Text)
            adoPrimaryRS("ordno") = Trim(Txtfields(13).Text)
            adoPrimaryRS("mixgrp") = Trim(Txtfields(8).Text)
            adoPrimaryRS("Softwaste") = val(Txtfields(14).Text)
            
        ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            adoPrimaryRS("slcode") = Trim(Txtfields(1).Text)
        End If
        
        If Txtisstype.Text = "T" Then
            adoPrimaryRS("Rdivcode") = Trim(Txtfields(1).Text)
        End If
             
             adoPrimaryRS("noofissues") = val(Txtfields(31).Text)
             
'            adoPrimaryRS.UpdateBatch adAffectAllChapters
            updSECONDARYRS.MoveFirst
            Do While Not updSECONDARYRS.EOF
                 If (updSECONDARYRS("Lot.No.") = "") Then
                     updSECONDARYRS.Delete adAffectCurrent
                 End If
                 updSECONDARYRS.MoveNext
            Loop
            updSECONDARYRS.MoveFirst
           
        
        opt1 = Opt
        Opt = ""
        
        If opt1 = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            IVarcode = 4
            icolorcode = 7
            icategory = 6
         End If
         
        Set vrs = New Recordset
        vrs.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,CATCD,LOTNO,lotdt,LOTTYPE,BALENO,ISSKGS,ISSUED,VARCODE,rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10 from RM_issReqB WHERE 1 = 2", DB, adOpenStatic, adLockBatchOptimistic
        SlCnt = 1
        Do While Not updSECONDARYRS.EOF
            vrs.AddNew
            vrs("DivCode") = Divcode
            vrs("Isstype") = Left(Combo1.Text, 2)
            vrs("Docno") = val(Txtfields(0).Text)
            vrs("Docdt") = Format((MaskEdBox1(0).Text), "YYYY-MM-DD")
            vrs("Catcd") = updSECONDARYRS("Category")
'            vrs("Lotno") = Trim(grddatagrid.Columns(ILotNo).Text)
            vrs("Lotno") = val(updSECONDARYRS("Lot.No."))
            vrs("lotDt") = Format((updSECONDARYRS("Date")), "YYYY-MM-DD")
            vrs("Lottype") = Trim((updSECONDARYRS("Lot Type")))
            vrs("Baleno") = val(updSECONDARYRS("Issued Bales"))
            vrs("Isskgs") = 0
            vrs("Issued") = "N"
            vrs("varcode") = Trim(updSECONDARYRS("Variety"))
            vrs("rembales") = Trim(updSECONDARYRS("Remaining Bales"))
            
            If val(Txtfields(31).Text) > 0 Then
        
       For I = 1 To val(Txtfields(31).Text)
        Dim colname As String
        colname = "issbale" & I
        vrs(colname) = grddatagrid.Columns(10 + I)
        
    Next
    End If
    
                   Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Issue Request"
                    TrnLog("Trans_Mod") = opt1
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = val(Txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("lotno") = val(updSECONDARYRS("Lot.No."))
                    TrnLog("lotdt") = Format((updSECONDARYRS("Date")), "YYYY-MM-DD")
                    TrnLog("catcd") = updSECONDARYRS("Category")
                    TrnLog("varcode") = Trim(updSECONDARYRS("Variety"))
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCoDe") = Trim(Txtfields(1).Text)
                    TrnLog("mixgrp") = Trim(Txtfields(8).Text)
                    
                    TrnLog("ordqty") = val(updSECONDARYRS("Issued Bales"))
                   ' TrnLog("ordkgs").value = val(txtfields(23).Text)
                   ' TrnLog("AreaCode") = txtfields(32).Text
                    'TrnLog("slcode") = txtfields(5).Text
                    TrnLog.UpdateBatch adAffectAllChapters
            
            
            updSECONDARYRS.MoveNext
        Loop
        
        adoPrimaryRS.UpdateBatch adAffectAll
        vrs.UpdateBatch adAffectAllChapters
       
       updSECONDARYRS.MoveFirst
       Do While updSECONDARYRS.EOF = False
            Set rs1 = New Recordset
            rs1.Open "Select Docno, Docdt,lotno,lotdt,varcode,catcd,rejqty from rm_issuebinstock where lotno=" & updSECONDARYRS("Lot.No.") & " and lotdt='" & Format(updSECONDARYRS("date"), "yyyy-MM-dd") & "' and isnull(binaccqty,0) <> rejqty order by docdt,docno ", DB, adOpenStatic
            If rs1.EOF = False Then
                iBinAccQty = val(updSECONDARYRS("Issued Bales"))
                iBinStockQty = 0
                Do While rs1.EOF = False
                    If iBinAccQty >= rs1("rejqty") Then
                        iBinStockQty = rs1("rejqty")
                    Else
                        iBinStockQty = iBinAccQty
                    End If
                    strSQL = "update rm_issuebinstock set binaccqty= isnull(binaccqty,0) + " & iBinStockQty & " where lotno=" & rs1("LotNo") & " and lotdt='" & Format(rs1("Lotdt"), "yyyy-MM-dd") & "' and docno=" & rs1("docNo") & " and docdt='" & Format(rs1("docdt"), "yyyy-MM-dd") & "' and catcd='" & rs1("Catcd") & "' and varcode='" & rs1("varcode") & "'"
                    DB.Execute strSQL
                    iBinAccQty = iBinAccQty - iBinStockQty
                    rs1.MoveNext
                Loop
            End If
            updSECONDARYRS.MoveNext
       Loop
        
        
        
        
         
    If IsDate(Format(MaskEdBox1(1).Text, "YYYY-MM-DD")) = True Then
        Invdt = Format(MaskEdBox1(1).Text, "YYYY-MM-DD")
    Else
        Invdt = Null
    End If

      If Txtisstype.Text = "T" Or Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_issReqH SET VEHICLENO='" & Txtfields(7).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
      End If
      If Txtisstype.Text = "P" Then
            DB.Execute "UPDATE RM_issReqH SET Mixgrp='" & Trim(Txtfields(8).Text) & "',cntcd='" & Txtfields(1).Text & "' WHERE divcode='" & Divcode & "' and  DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
          
      ElseIf Txtisstype.Text = "B" Or Txtisstype.Text = "T" Then
            If Option5.value = True Then
                Cap = "Form XX"
            ElseIf Option6.value = True Then
                Cap = "Form XXVII"
            Else
                Cap = "No"
            End If
            If IsDate(Format(MaskEdBox1(1).Text, "YYYY-MM-DD")) = True Then
                Invdt = Format(MaskEdBox1(1).Text, "YYYY-MM-DD")
            Else
                Invdt = Null
            End If
            DB.Execute "UPDATE RM_issReqH SET CNTCD=NULL,ORDNO=NULL,Formno='" & Text16.Text & "',invoiceno='" & Txtfields(9).Text & "',invdate='" & Invdt & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "',VEHICLENO='" & Txtfields(7).Text & "',rdivcode='" & Txtfields(1).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE ='" & Divcode & "'"
      ElseIf Txtisstype.Text = "S" Or Txtisstype.Text = "J" Or Txtisstype.Text = "R" Then
            DB.Execute "UPDATE RM_issReqH SET CNTCD=NULL,ORDNO=NULL,VEHICLENO='" & Txtfields(7).Text & "',slcode='" & Txtfields(1).Text & "', invoiceno='" & Txtfields(9).Text & "',invdate='" & Format(Invdt, "YYYY-MM-DD") & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
      End If
       '*********************  BALE UPDATION **************************/
        
        
     
       DB.CommitTrans
       MsgBox "Record(s) Saved!", vbInformation, head
       MsgBox "Doc. Number is " & Txtfields(0).Text, vbInformation, head
     Frame4.Enabled = True
'       Frame1.Enabled = False
'       Frame4.Enabled = False
       Frame7.Enabled = False
       Screen.MousePointer = 0
       Opt = ""
              
       
      End If
   If Opt = "mod" Then
        Call modification
              
        MsgBox "Record(s) Modified", vbInformation, head
        Screen.MousePointer = 0
        Opt = ""
        SSTab2.Enabled = False
    End If
     If Opt = "fnd" Then
    
        cnt = 0
        Opt = ""
     End If
 If Opt = "del" Then
    Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
            DB.BeginTrans
            If optBinStock.value = True Then
                ADOSECONDARYRS.MoveFirst
                Do While ADOSECONDARYRS.EOF = False
                    Set rs1 = New Recordset
                    rs1.Open "Select Docno, Docdt,lotno,lotdt,varcode,catcd,rejqty from rm_issuebinstock where lotno=" & ADOSECONDARYRS("Lot No") & " and lotdt='" & Format(ADOSECONDARYRS("Lot Date"), "yyyy-MM-dd") & "' and isnull(binaccqty,0) <>  0 order by docdt,docno ", DB, adOpenStatic
                    If rs1.EOF = False Then
                        iBinAccQty = val(ADOSECONDARYRS("Quantity"))
                        iBinStockQty = 0
                        Do While rs1.EOF = False
                            If iBinAccQty >= rs1("rejqty") Then
                                iBinStockQty = rs1("rejqty")
                            Else
                                iBinStockQty = iBinAccQty
                            End If
                            strSQL = "update rm_issuebinstock set binaccqty= isnull(binaccqty,0) - " & iBinStockQty & " where lotno=" & rs1("LotNo") & " and lotdt='" & Format(rs1("Lotdt"), "yyyy-MM-dd") & "' and docno=" & rs1("docNo") & " and docdt='" & Format(rs1("docdt"), "yyyy-MM-dd") & "' and catcd='" & rs1("Catcd") & "' and varcode='" & rs1("varcode") & "'"
                            DB.Execute strSQL
                            iBinAccQty = iBinAccQty - iBinStockQty
                            rs1.MoveNext
                        Loop
                    End If
                    
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Issue Request"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = val(Txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("lotno") = val(ADOSECONDARYRS("Lot No"))
                    TrnLog("lotdt") = Format((ADOSECONDARYRS("Lot Date")), "YYYY-MM-DD")
                   
                    TrnLog("varcode") = Trim(ADOSECONDARYRS("Variety"))
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCoDe") = Trim(Txtfields(1).Text)
                    TrnLog("mixgrp") = Trim(Txtfields(8).Text)
                    
                   ' TrnLog("ordqty") = val(updSECONDARYRS("Issued Bales"))
                   ' TrnLog("ordkgs").value = val(txtfields(23).Text)
                   ' TrnLog("AreaCode") = txtfields(32).Text
                    'TrnLog("slcode") = txtfields(5).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                    
                    ADOSECONDARYRS.MoveNext
                Loop
            End If
        
                   
            
            
            DB.Execute "Delete from RM_issReqH Where Docno =" & val(Txtfields(0).Text) & " And DocDt ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and Divcode = '" & Divcode & "'"
            DB.Execute "Delete from RM_issReqB Where Docno =" & val(Txtfields(0).Text) & " And DocDt ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and Divcode = '" & Divcode & "'"
            DB.Execute "Delete from RM_ISSUEBINSTOCK Where Docno =" & val(Txtfields(0).Text) & " And DocDt ='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and Divcode = '" & Divcode & "'"
            
            DB.CommitTrans
        
            MsgBox "Record(s) Deleted!", vbInformation, head
            BUTTON(9).ToolTipText = "Save"
    Else
        DB.CommitTrans
        Call BUTTON_Click(10)
        Exit Sub
    End If
S1:
        Opt = ""
 End If
    'Return to query mode
    BUTTON(10).Enabled = True
    Call query_mode
    Call disablcontls
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON, GSNO)
    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
'    Frame1.Enabled = False
'    Frame4.Enabled = False
    Frame7.Enabled = False
'    lbl_bale.Visible = False
If Repindex = 222 Then
    BUTTON(0).Enabled = False
End If
    Exit Sub
GOPRIMERROR:
cnt = 0
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
        DB.RollbackTrans
        SSTab2.Enabled = False
    Case "mod"
        DB.RollbackTrans
        SSTab2.Enabled = False
    Case "del"
    
        DB.RollbackTrans
        cnt = 0
    Case "fnd"
        DB.RollbackTrans
        SSTab2.Enabled = False
        cnt = 0
    End Select
    Opt = ""
    Call query_mode
    Screen.MousePointer = 0
    Call disablcontls
    
    grddatagrid.Enabled = True
    'Frame11.Visible = True
    
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    'Call cancl(BUTTON)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Frame3.Visible = False
   
    SetColoumn
    Call query_mode
    SSTab2.Enabled = True
    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
   
    
    Frame7.Enabled = False
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 12
        Frame12.Visible = True
        Frame12.ZOrder 0
        Option8.value = True
        Option8.SetFocus
        SSTab2.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        cmd_report.Visible = True
        Buttonframe.Enabled = False

End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmissueKgs", vbInformation, head
    intervalMinutes = -1
End Sub

Private Sub SetColoumn()
On Error GoTo SetColoumn_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,softwaste,ISSUEFLG,noofissues FROM RM_issReqH  WHERE 1 = 2  order by docno", DB, adOpenStatic, adLockOptimistic
    Set ADOSECONDARYRS = New Recordset
    ADOSECONDARYRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",b.plotno ""Supplier lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",a.lottype,a.Baleno,rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10 FROM RM_issReqB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set updSECONDARYRS = New Recordset


    With updSECONDARYRS
           .Fields.Append "Lot.No.", adSmallInt, 5
           .Fields.Append "Date", adDate
           .Fields.Append "Lot Type", adChar, 1
           .Fields.Append "Supplier Lot No.", adVarChar, 20
           .Fields.Append "Variety", adVarChar, 10
           .Fields.Append "Variety Name", adVarChar, 60
           '.Fields.Append "Color", adVarChar, 4
           '.Fields.Append "Color Name", adVarChar, 20
           .Fields.Append "Category", adChar, 1
           .Fields.Append "Closing Bales", adSmallInt
           .Fields.Append "Closing Weights", adDouble
           .Fields.Append "Issued Bales", adSmallInt
           .Fields.Append "Remaining Bales", adDouble
           .Fields.Append "IssueBales1", adSmallInt
           .Fields.Append "IssueBales2", adSmallInt
           .Fields.Append "IssueBales3", adSmallInt
           .Fields.Append "IssueBales4", adSmallInt
           .Fields.Append "IssueBales5", adSmallInt
           .Fields.Append "IssueBales6", adSmallInt
           .Fields.Append "IssueBales7", adSmallInt
           .Fields.Append "IssueBales8", adSmallInt
           .Fields.Append "IssueBales9", adSmallInt
           .Fields.Append "IssueBales10", adSmallInt
    End With
    updSECONDARYRS.Open
    Set grddatagrid.DataSource = updSECONDARYRS
    Set UPDRS = New Recordset
           UPDRS.Fields.Append "Iss Kgs", adDouble, 10
           UPDRS.Fields.Append "Iss bales", adSmallInt, 10
           UPDRS.Fields.Append "Lot No.", adSmallInt, 5
           UPDRS.Fields.Append "Lot Dt.", adDate
           UPDRS.Fields.Append "Lot Type.", adChar, 1
    UPDRS.Open
    grddatagrid.Columns(0).Width = 705.2599
    grddatagrid.Columns(1).Width = 929.7639
    grddatagrid.Columns(2).Width = 840.189
    grddatagrid.Columns(3).Width = 1150
    grddatagrid.Columns(4).Width = 780
    grddatagrid.Columns(5).Width = 1200
    grddatagrid.Columns(6).Width = 1200
    grddatagrid.Columns(7).Width = 1230.236
    grddatagrid.Columns(8).Width = 1335.118
    
    grddatagrid.Columns(9).Width = 1154.835
   'grdDataGrid.Columns(10).Width = 915.0237
    grddatagrid.Columns(6).Alignment = dbgLeft
    grddatagrid.Columns(7).Alignment = dbgRight
    grddatagrid.Columns(8).Alignment = dbgRight
    
    grddatagrid.Columns(10).Alignment = dbgRight
    grddatagrid.Columns(10).Locked = True
    grddatagrid.Columns(10).Width = 1500
    
    If Opt = "add" Or Opt = "mod" Then
        For I = 11 To 19
         grddatagrid.Columns(I).Caption = ""
        grddatagrid.Columns(I).Width = 1000
       ' grddatagrid.Columns(I).DataFormat = "##0.###0"
    Next
        
    End If
    
Exit Sub
SetColoumn_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetColoumn of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Check1_Click()
With FpSpIss
    If Check1.value = 1 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 1
         Next
    ElseIf Check1.value = 0 Then
        For RW = 1 To .MaxRows
             .Row = RW
             .Col = E_SpdIss.SpChk
             .value = 0
         Next
    End If
End With
End Sub


Private Sub cmd_report_Click()
Dim F_Date As String
On Error GoTo cmd_report_Click_Error
Dim lcount As Integer

     
    Screen.MousePointer = 11
    typeflg = Left(Combo1.Text, 2)
     
     
     Set Cnn = New Connection
        Cnn.CursorLocation = adUseClient
        Cnn.Open connectstring
          Dim grandtotal As Integer
            Set ResultRs = New Recordset
            strSQL = " SELECT a.DOCNO,a.DOCDT,a.VARCODE,a.LOTNO,a.lotdt,a.BALENO ,c.PLOTNO,d.STATION,(Isnull(c.bales,0) - isnull(c.issbal,0)) balance,"
            strSQL = strSQL & Chr(13) & " c.MICRONAIRE,c.rd,c.bb,c.ifc,c.MCOEFF,c.MOITURE FROM RM_issReqB a, RM_LOT C,RM_AREA D WHERE a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT"
            strSQL = strSQL & Chr(13) & "AND a.DIVCODE=c.DIVCODE AND a.LOTTYPE=c.LOTTYPE AND a.CATCD=c.CATCD AND a.VARCODE=c.VARCODE AND c.AREACD=d.AREACODE"
            strSQL = strSQL & Chr(13) & " and a.Divcode = '" & Divcode & "' and a.Docno = " & val(Txtfields(0).Text) & " and a.Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
            If optMIC = True Then
            strSQL = strSQL & Chr(13) & " ORDER BY c.MICRONAIRE"
            Else
            strSQL = strSQL & Chr(13) & " ORDER BY (Isnull(c.bales,0) - isnull(c.issbal,0))"
            End If
            
            
            ResultRs.Open strSQL, DB, adOpenStatic
         
            If ResultRs.EOF Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            Set rptv = New Report.ReportView
            z = FreeFile
            Close #z
            'Close
            'Open "C:\CotRecn.TXT" For Output As #z
            Open KALFOLDERDATA & "\CotRecn.TXT" For Output As #z
            pg1 = 1
            co = 0
            DT = ResultRs!lotno & " - " & ResultRs!LOTDT
            
            
       
            
            bolAbstract = True
            Call CottRecnHeader(CStr(pg1), CStr(co), CStr(DT))
'            Co = Co + 12
            tot = 0
            tot1 = 0
            tot2 = 0
'            Print #z,
'            Co = Co + 2
            iCount = 0
            Do While Not ResultRs.EOF
                iCount = iCount + 1
                Print #z, Space(10) & Padr(iCount, 4, "") & Space(2) & Padr(ResultRs("varcode"), 10, "") & Space(2) & Padr(ResultRs("Station"), 20, "") & Space(2) & Padr(ResultRs("Lotno") & "/" & Format(ResultRs("LOTDT"), "YY"), 8, "") & Space(2) & Padr(ResultRs("plotno"), 8, "") & Space(2) & Padl(INF(ResultRs("baleno"), 0), 6, "") & Space(2) & Padl(INF(ResultRs("balance"), 0), 6, "") & Space(2) & Padl(INF(ResultRs("micronaire"), 2), 6, "") & Space(2) & Padl(INF(ResultRs("RD"), 2), 6, "") & Space(2) & Padl(INF(ResultRs("bb"), 2), 6, "") & Space(2) & Padl(INF(ResultRs("ifc"), 2), 6, "") & Space(2) & Padl(INF(ResultRs("mCoeff"), 2), 6, "") & Space(2) & Padl(INF(ResultRs("MOITURE"), 2), 6, "")
              
'                Print #z,
                    co = co + 1
                    If co >= pagelen Then
                       Print #z, Space(10) & String(122, "-")
                       Print #z, Chr(12)
                       pg1 = pg1 + 1
'                       Co = 0
                       bolAbstract = False
                       Call CottRecnHeader(CStr(pg1), CStr(co), CStr(DT))
                       
                    End If
                bolAbstract = False
                ResultRs.MoveNext
              Loop
                
               If co >= pagelen Then
                   Print #z, Space(10) & String(122, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   bolAbstract = False
                   Call CottRecnHeader(CStr(pg1), CStr(co), CStr(DT))
                   
                End If
            Print #z, Space(10) & Chr(15) & String(122, "-")
            'Average
            Set Rs = New Recordset
            strSQL = " SELECT  Avg(isnull(c.MICRONAIRE,0)) as MIC,Avg(isnull(c.rd,0)) as rd,Avg(isnull(c.bb,0)) as bb,Avg(isnull(c.ifc,0)) as ifc,Avg(isnull(c.MCOEFF,0)) as MCOEFF, "
            strSQL = strSQL & Chr(13) & " Avg(isnull(c.MOITURE,0)) as MOITURE FROM RM_issReqB a, RM_LOT C,RM_AREA D WHERE a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT"
            strSQL = strSQL & Chr(13) & " AND a.DIVCODE=c.DIVCODE AND a.LOTTYPE=c.LOTTYPE AND a.CATCD=c.CATCD AND a.VARCODE=c.VARCODE AND c.AREACD=d.AREACODE"
            strSQL = strSQL & Chr(13) & " and a.Divcode = '" & Divcode & "' and a.Docno = " & val(Txtfields(0).Text) & " and a.Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
            Rs.Open strSQL, DB, adOpenStatic
            If Rs.EOF = False Then Print #z, Space(10) & Padr("Average", 16, "") & Space(2) & Padr("", 20, "") & Space(2) & Padr("", 8, "") & Space(2) & Padr("", 8, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl(INF(Rs("MIC"), 2), 6, "") & Space(2) & Padl(INF(Rs("RD"), 2), 6, "") & Space(2) & Padl(INF(Rs("bb"), 2), 6, "") & Space(2) & Padl(INF(Rs("ifc"), 2), 6, "") & Space(2) & Padl(INF(Rs("mCoeff"), 2), 6, "") & Space(2) & Padl(INF(Rs("MOITURE"), 2), 6, "")
            
            'Maximun
            Set Rs = New Recordset
            strSQL = " SELECT  max(isnull(c.MICRONAIRE,0)) as MIC,max(isnull(c.rd,0)) as rd,max(isnull(c.bb,0)) as bb,max(isnull(c.ifc,0)) as ifc,Avg(isnull(c.MCOEFF,0)) as MCOEFF, "
            strSQL = strSQL & Chr(13) & " max(isnull(c.MOITURE,0)) as MOITURE FROM RM_issReqB a, RM_LOT C,RM_AREA D WHERE a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT"
            strSQL = strSQL & Chr(13) & " AND a.DIVCODE=c.DIVCODE AND a.LOTTYPE=c.LOTTYPE AND a.CATCD=c.CATCD AND a.VARCODE=c.VARCODE AND c.AREACD=d.AREACODE"
            strSQL = strSQL & Chr(13) & " and a.Divcode = '" & Divcode & "' and a.Docno = " & val(Txtfields(0).Text) & " and a.Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
            Rs.Open strSQL, DB, adOpenStatic
            If Rs.EOF = False Then Print #z, Space(10) & Padr("Maximum", 16, "") & Space(2) & Padr("", 20, "") & Space(2) & Padr("", 8, "") & Space(2) & Padr("", 8, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl(INF(Rs("MIC"), 2), 6, "") & Space(2) & Padl(INF(Rs("RD"), 2), 6, "") & Space(2) & Padl(INF(Rs("bb"), 2), 6, "") & Space(2) & Padl(INF(Rs("ifc"), 2), 6, "") & Space(2) & Padl(INF(Rs("mCoeff"), 2), 6, "") & Space(2) & Padl(INF(Rs("MOITURE"), 2), 6, "")
            
            'Minimum
            Set Rs = New Recordset
            strSQL = " SELECT  min(isnull(c.MICRONAIRE,0)) as MIC,min(isnull(c.rd,0)) as rd,min(isnull(c.bb,0)) as bb,min(isnull(c.ifc,0)) as ifc,min(isnull(c.MCOEFF,0)) as MCOEFF, "
            strSQL = strSQL & Chr(13) & " min(isnull(c.MOITURE,0)) as MOITURE FROM RM_issReqB a, RM_LOT C,RM_AREA D WHERE a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT"
            strSQL = strSQL & Chr(13) & " AND a.DIVCODE=c.DIVCODE AND a.LOTTYPE=c.LOTTYPE AND a.CATCD=c.CATCD AND a.VARCODE=c.VARCODE AND c.AREACD=d.AREACODE"
            strSQL = strSQL & Chr(13) & " and a.Divcode = '" & Divcode & "' and a.Docno = " & val(Txtfields(0).Text) & " and a.Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
            Rs.Open strSQL, DB, adOpenStatic
            If Rs.EOF = False Then Print #z, Space(10) & Padr("Minimun", 16, "") & Space(2) & Padr("", 20, "") & Space(2) & Padr("", 8, "") & Space(2) & Padr("", 8, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl(INF(Rs("MIC"), 2), 6, "") & Space(2) & Padl(INF(Rs("RD"), 2), 6, "") & Space(2) & Padl(INF(Rs("bb"), 2), 6, "") & Space(2) & Padl(INF(Rs("ifc"), 2), 6, "") & Space(2) & Padl(INF(Rs("mCoeff"), 2), 6, "") & Space(2) & Padl(INF(Rs("MOITURE"), 2), 6, "")
            
            'Minimum
            Set Rs = New Recordset
            strSQL = " SELECT  max(isnull(c.MICRONAIRE,0)) - min(isnull(c.MICRONAIRE,0)) as MIC, max(isnull(c.rd,0)) - min(isnull(c.rd,0)) as rd, max(isnull(c.bb,0)) - min(isnull(c.bb,0)) as bb,max(isnull(c.ifc,0)) - min(isnull(c.ifc,0)) as ifc, max(isnull(c.MCOEFF,0)) - min(isnull(c.MCOEFF,0)) as MCOEFF, "
            strSQL = strSQL & Chr(13) & " max(isnull(c.MOITURE,0)) - min(isnull(c.MOITURE,0)) as MOITURE FROM RM_issReqB a, RM_LOT C,RM_AREA D WHERE a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT"
            strSQL = strSQL & Chr(13) & " AND a.DIVCODE=c.DIVCODE AND a.LOTTYPE=c.LOTTYPE AND a.CATCD=c.CATCD AND a.VARCODE=c.VARCODE AND c.AREACD=d.AREACODE"
            strSQL = strSQL & Chr(13) & " and a.Divcode = '" & Divcode & "' and a.Docno = " & val(Txtfields(0).Text) & " and a.Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
            Rs.Open strSQL, DB, adOpenStatic
            If Rs.EOF = False Then Print #z, Space(10) & Padr("Range", 16, "") & Space(2) & Padr("", 20, "") & Space(2) & Padr("", 8, "") & Space(2) & Padr("", 8, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl(INF(Rs("MIC"), 2), 6, "") & Space(2) & Padl(INF(Rs("RD"), 2), 6, "") & Space(2) & Padl(INF(Rs("bb"), 2), 6, "") & Space(2) & Padl(INF(Rs("ifc"), 2), 6, "") & Space(2) & Padl(INF(Rs("mCoeff"), 2), 6, "") & Space(2) & Padl(INF(Rs("MOITURE"), 2), 6, "")
            co = co + 5
            Print #z, Space(10) & String(122, "=")
            Print #z,
            Print #z,
            Print #z,
            co = co + 5
            Call footermod(CInt(z), UserFooter1.SelectedStr, 123)
            Print #z, Chr(12)
        Close #z
        z = FreeFile
'        Open "c:\CotRecn.bat" For Output As #z
'        Print #z, "cd\"
'        Print #z, "c:"
'        Print #z, "cd\"
'        Print #z, "type CotRecn.TXT>prn"
'        Close #z
'        z = FreeFile
'        RPTV.txtfile = "c:\CotRecn.TXT"
'        RPTV.Batfile = "c:\CotRecn.bat"
        Call KALBATPROCESS("CotRecn")
       ' Call issueproduction(CStr(Left(Combo1.Text, 2)), CInt(LtN), CStr(F_Date), Text5.Text, Txtfields(13).Text, Text12.Text)
        Screen.MousePointer = 0
        Exit Sub
'     End If
                
     If typeflg = "B" Then
        'Call ISSUEBALEPRESS(CStr(F_Date), CStr(Left(Combo1.Text, 2)), CInt(LtN))
        Screen.MousePointer = 0
        Exit Sub
     End If
Me.MousePointer = vbNormal

Exit Sub
cmd_report_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub cmd_report_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo cmd_report_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab2.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option8.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option8.SetFocus
End If

Exit Sub
cmd_report_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub CmdIssCancel_Click()
FraIssue.Visible = False
End Sub

Private Sub CmdIssOk_Click()
On Error Resume Next
FraIssue.Visible = False
Dim acctkgs As Double
Dim accbale As Double
TRW = 1

  updSECONDARYRS.MoveFirst
  
With FpSpIss

accbale = 0
For RW = 1 To .MaxRows
    .Row = RW
    .Col = SpChk
    If .value = True Then
     
   tmp = Opt
   Opt = ""
   Pos = updSECONDARYRS.AbsolutePosition
            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
            Do While Not updSECONDARYRS.EOF
                
                    If updSECONDARYRS(0) = CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotno, RW))) Then

                            MsgBox "Please Select Another Lot, Selected Lot is Already Present", vbInformation, head

                            grddatagrid.Col = 1
                            updSECONDARYRS.MoveNext
                            
                            Exit Sub
                End If
                updSECONDARYRS.MoveNext
            Loop
            If Pos > 0 Then
            updSECONDARYRS.AbsolutePosition = Pos
            End If
           ' updSECONDARYRS.MoveLast
             Opt = tmp
             
            grddatagrid.Columns(0).Text = CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotno, RW)))
            
            ActBalQty = val(Trim(GetText(FpSpIss, E_SpdIss.SPDQty, RW)))
             Call Lotdisplay(CStr(Trim(GetText(FpSpIss, E_SpdIss.spdVCode, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotDt, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.SPDCAT, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotno, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.SPDQty, RW))))
            updSECONDARYRS.AddNew
            
             If grddatagrid.Columns(1) <> "" Then
                    If ISSFLG = "Balewise" Then
                        grddatagrid.Col = 9
                        grddatagrid.SetFocus
                    Else
                        Call grddatagrid_AfterColEdit(9)
                        SSTab2.Tab = 1
'                            TxtIsskgs.SetFocus
                    End If
                    MaskEdBox1(0).Enabled = False
                    DTPicker1.Enabled = False
            End If
            baleno = 0
            issKgs = 0
            Set rslotcheck = New Recordset
            If ADOSECONDARYRS.RecordCount > 0 Then
                       rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                       Set rslotcheck.DataSource = ADOSECONDARYRS
                        
                        rslotcheck.MoveFirst
                        For I = 1 To rslotcheck.RecordCount
                            If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                                baleno = baleno + 1
                                issKgs = issKgs + rslotcheck("Issued Kgs")
                            End If
                            rslotcheck.MoveNext
                        Next
                Else
                    baleno = 0
                End If
                If issKgs > 0 Then
                    MsgBox "Lot cannot be returned For This Issue", vbInformation, head
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                    Exit Sub
                End If
           
            
''"Select A.LOTNO,A.PLOTNO,a.Lotdt,VARNAME,a.varcode,SLNAME,a.catcd AS Category,e.Station,a.LotType,VARTYPE 'VarietyType',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'VarietyDesc.',SHADENO 'Shade',Denier,Length   from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y' AND a.LOTDT<='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockReadOnly
           lotno = CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotno, RW)))
            'grddatagrid.Columns(0).Text = CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotno, RW)))
           ' Call Lotdisplay(CStr(Trim(GetText(FpSpIss, E_SpdIss.spdVCode, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.spdLotDt, RW))), CStr(Trim(GetText(FpSpIss, E_SpdIss.SPDcat, RW))))
            'updSECONDARYRS.AddNew
            NewBaleEnter = True
            LookUp.Clear = True
            
            Else
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
               ' Exit Sub
                
            End If
           
'        If grddatagrid.Columns(1) <> "" Then
'            If IssFlg = "Balewise" Then
'                grddatagrid.Col = 9
'                grddatagrid.SetFocus
'            Else
'                Call grdDataGrid_AfterColEdit(9)
'                'SSTab1.Tab = 1
'    '                            TxtIsskgs.SetFocus
'            End If
'            MaskEdBox1(0).Enabled = False
'            DTPicker1.Enabled = False
'        End If

   ' End If
Next
End With
FraIssue.Visible = False
End Sub

Private Sub cmdissueok_Click()
grddatagrid.AllowAddNew = True
    grddatagrid.EditActive = True
    
    If val(Txtfields(31).Text) > 0 Then
        
       For I = 1 To val(Txtfields(31).Text)
        grddatagrid.Columns(10 + I).Caption = I
        grddatagrid.Columns(10 + I).Width = 1200
         grddatagrid.Columns(10 + I).Visible = True
        'DataGrid1.Columns(I).DataFormat = "##0.###0"
    Next
    End If
    
    If val(Txtfields(31).Text) <> 10 Then
         For I = val(Txtfields(31).Text) + 1 To 10
            grddatagrid.Columns(10 + I).Visible = False
         Next
    End If
    
End Sub

Private Sub Combo1_Change()
On Error GoTo Combo1_Change_Error
intervalMinutes = -1
ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
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

ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') as isstype from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))


Exit Sub
Combo1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Click of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

If Opt = "mod" And Opt = "add" Then
    Combo1.BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Select a Purchase Type"
End If

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form FrmissueKgs", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

If Combo1.Text = "" And Opt = "add" Then
   MsgBox "Please select Any Type From the Drop Down List", vbInformation, head
   Combo1.SetFocus
   Exit Sub
End If

' Set Rs = New Recordset
' Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
' txtfields(0).Text = Rs(0)

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Call adddelmod(BUTTON)
    
    'BUTTON(9).Enabled = False
    'BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    SSTab2.TabEnabled(0) = True
End If

If Opt = "mod" And Opt = "add" Then
    Combo1.BackColor = &HFFFFFF
    StatusBar1.Panels(2).Text = ""
End If
Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form FrmissueKgs", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
      If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            IVarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            IVarcode = 7
            icolorcode = 8
            icategory = 9
         End If
      

If (Txtisstype.Text = "P") Then
   If Trim(Txtfields(1).Text) = "" Then
      MsgBox "Please Enter The mixing Count", vbInformation, head & "Message"
      Exit Sub
   End If
End If





If Opt = "add" Then
    
'        Set Rs = New Recordset
'        Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
'        'txtfields(0).Text = Rs(0)
'        If S = val(grddatagrid.Columns(8).value) Or ChkEx = val(grddatagrid.Columns(8).value) Then
'           adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
'           adoPrimaryRS("divcode") = Divcode
'           adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
'           adoPrimaryRS("issto") = Left(Combo2.Text, 1)
'           adoPrimaryRS("docno") = Rs(0)
'           If (Combo1.Text = "T") Or (Combo1.Text = "SA") Then
'               Set rst = New Recordset
'               rst.Open "Select CNTCODE from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
'               If Not rst.EOF Then
'                  adoPrimaryRS("CNTCD") = rst(0)
'               End If
'           Else
'               adoPrimaryRS("CNTCD") = Txtfields(1).Text
'           End If
'       End If
                 Dim refrs As Recordset
                 ADOSECONDARYRS.AddNew
        '---------------

End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Command1_KeyPress(KeyAscii As Integer)
On Error GoTo Command1_KeyPress_Error

    If KeyAscii = vbKeyTab Then Call Command1_Click

Exit Sub
Command1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command13_Click()



intervalMinutes = -1
On Error GoTo Command13_Click_Error

Dim Pos, bales As Integer
Pos = updSECONDARYRS.AbsolutePosition
        updSECONDARYRS.MoveFirst
        Do While Not updSECONDARYRS.EOF
             If (updSECONDARYRS("Lot.No.") = "") Then
                       updSECONDARYRS.Delete adAffectCurrent
             End If
          updSECONDARYRS.MoveNext
        Loop
        updSECONDARYRS.MoveFirst
        Do While Not updSECONDARYRS.EOF
                grddatagrid.Columns(9).Text = val(Txtfields(15).Text)
                Call Temp_tbl_Update_IssReq("UPDATE")
                If Trim(grddatagrid.Columns(0).Text) <> "" And Trim(grddatagrid.Columns(4).Text) <> "" And Trim(grddatagrid.Columns(6).Text) <> "" Then

                   strSQL = "Select Sum(Qty)As AllowQty From TMP_RM_ISSREQ Where VarCode='" & IIf(IsNull(grddatagrid.Columns(4).Text), "", Trim(grddatagrid.Columns(4).Text)) & "' And CatCd='" & IIf(IsNull(grddatagrid.Columns(6).Text), "", Trim(grddatagrid.Columns(6).Text)) & "' and lotno=" & grddatagrid.Columns(ILotNo).Text & " and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-MM-dd") & "'"
                   Set LtQtyTmpRs = ReturnRecordSetIfExists(strSQL)
                   If LtQtyTmpRs.EOF = False Then
                      LtTmpQty = IIf(IsNull(LtQtyTmpRs.Fields("AllowQty").value), 0, LtQtyTmpRs.Fields("AllowQty").value)
                   End If
                   Set LtQtyTmpRs = Nothing
                   If optBinStock.value = True Then
                   If ActBalQty < val(grddatagrid.Columns(9).Text) Then
                      MsgBox "Please enter the below or equal to actual Bin Stock Qty Is " & ActBalQty, vbInformation, head

                      grddatagrid.Columns(9).Text = 0
                      grddatagrid.Col = 9
                      grddatagrid.SetFocus
                      Exit Sub
                   End If
                   End If
                End If
         Set ry = New Recordset
        ry.Open "select * from rm_bale where catcd= '" & grddatagrid.Columns(6).Text & "' AND VARCODE='" & Trim(grddatagrid.Columns(4).Text) & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grddatagrid.Columns(ILotNo).Text & "'  and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic


        If gvar = Varcode Then
                If Option4.value = True Then
                    If diffkgs > 0 Then
                    TxtIsskgs.Text = CStr(diffkgs)
                    End If
                End If
         End If
         If ry.EOF = False Then
            Text6.Text = IIf(IsNull(ry("ARRDT")), " ", ry("arrdt"))
         End If
         xx1 = 0
         Do While Not ry.EOF
            xx1 = xx1 + 1
            ry.MoveNext
         Loop

         Text6.Text = ry("ARRDT")

         If xx1 - baleno <= 0 Then
            MsgBox "No Bales Available", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
         End If

                Set Rs = New Recordset
                Rs.Open "SELECT sum(ISNULL(baleno,0)) as RejQty FROM RM_issReqB WHERE lotno=" & val(grddatagrid.Columns(ILotNo).Text) & " AND lotdt='" & Format(grddatagrid.Columns("Date").Text, "yyyy-mm-dd") & "' AND LOTTYPE='" & Trim(grddatagrid.Columns(ilottype).Text) & "' AND CATCD='" & Trim(grddatagrid.Columns(icategory).Text) & "' AND VARCODE='" & Trim(grddatagrid.Columns(IVarcode).Text) & "' and  isnull(issued,'N')<>'Y' ", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.EOF = False Then ActBalQty = IIf(IsNull(Rs(0)), 0, Rs(0)) Else ActBalQty = 0
                lblLotDetails.Caption = "Lot No. : " & grddatagrid.Columns(ILotNo).Text & " , Available Quantity is " & xx1 - ActBalQty
                iQty = xx1 - ActBalQty


                If iQty < val(grddatagrid.Columns(9).Text) Then
                    MsgBox "Please enter the Issue Bales below or equal to Available Bales", vbInformation, head
                    grddatagrid.Columns(9).Text = 0
                    grddatagrid.Col = 9
                    grddatagrid.SetFocus
                    Exit Sub
                End If




        intervalMinutes = -1

            bales = bales + val(Txtfields(15).Text)
              updSECONDARYRS.MoveNext
        Loop
 intervalMinutes = -1
        TxtTotBales.Text = bales
        updSECONDARYRS.AbsolutePosition = Pos
Exit Sub
Command13_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command13_Click of Form FrmissueKgs", vbInformation, head
End Sub

'Private Sub Command10_Click()
'On Error GoTo Command10_Click_Error
'
'tgwt = 0
'tnwt = 0
'ttwt = 0
'rec_cnt = 0
'taisswt = 0
'grid.clear
'If ChkCount = TotalBale Then
'        Command1.Enabled = True
'        Command10.Enabled = False
'        For RW = 1 To SpdBales.MaxRows
'            SpdBales.Row = RW
'            SpdBales.Col = E_SpdBal.SprdCheck
'            If SpdBales.value = True Then
'                rec_cnt = rec_cnt + 1
'                grid.AddItem ""
'                grid.TextMatrix(rec_cnt, 0) = rec_cnt
'                grid.TextMatrix(rec_cnt, 1) = GetText(SpdBales, E_SpdBal.sprdBaleNo, RW)
'                grid.TextMatrix(rec_cnt, 2) = Format(GetText(SpdBales, E_SpdBal.sprdGrossWt, RW), "0.000")
'
'                tgwt = tgwt + val(GetText(SpdBales, E_SpdBal.sprdGrossWt, RW))
'                Text9.Text = Format(val(tgwt), "0.000")
'
'                grid.TextMatrix(rec_cnt, 3) = Format(GetText(SpdBales, E_SpdBal.sprdTareWt, RW), "0.000")
'                ttwt = ttwt + val(GetText(SpdBales, E_SpdBal.sprdTareWt, RW))
'                Text10.Text = Format(val(ttwt), "0.000")
'
'                grid.TextMatrix(rec_cnt, 4) = Format(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), "0.000")
'                tnwt = tnwt + GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW)
'                Text11.Text = Format(val(tnwt), "0.000")
'
'                grid.TextMatrix(rec_cnt, 6) = "Y"
'
'                Set rstPARAM = New Recordset
'                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                If rstPARAM!actualIssueKgs = "Z" Then
'                    grid.TextMatrix(rec_cnt, 5) = "0.000"
'                Else
'                    grid.TextMatrix(rec_cnt, 5) = Format(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), "0.000")
'                End If
'
'                Text3.Text = TotalBale
'                Set chrs = New Recordset
'                chrs.Open "select awt_flg from rm_lot where  DIVCODE='" & Divcode & "' AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
'                If IsNull(chrs(0)) Then
'                    chrs(0) = ""
'                End If
'
'                If chrs(0) = "Y" Then
'                    Set rstPARAM = New Recordset
'                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                    If rstPARAM!actualIssueKgs = "Z" Then
'                        grid.TextMatrix(rec_cnt, 5) = "0.000"
'                    Else
'                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
'                    End If
'                    'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
'                    taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
'                    Text4.Text = Format(val(taisswt), "0.000")
'                End If
'                If val(Text8.Text) < val(GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW)) And chrs(0) <> "Y" Then
'                    Set rstPARAM = New Recordset
'                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                    If rstPARAM!actualIssueKgs = "Z" Then
'                        grid.TextMatrix(rec_cnt, 5) = "0.000"
'                    Else
'                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
'                    End If
'
'                    taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
'                    Text4.Text = Format(val(taisswt), "0.0000")
'                End If
'                If chrs(0) = "N" Then
'                    Set rstPARAM = New Recordset
'                    rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                    If rstPARAM!actualIssueKgs = "Z" Then
'                        grid.TextMatrix(rec_cnt, 5) = "0.000"
'                    Else
'                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
'                    End If
'                    'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, GetText(SpdBales, E_SpdBal.sprdBalanceWt, RW), Text8)
'                    Text4.Text = Format(val(taisswt), "0.000")
'                End If
'           End If
'        Next
'        BUTTON(9).Enabled = False
'        BUTTON(10).Enabled = False
'        grid.SetFocus
'   Else
'        MsgBox "Bale Numbers Not Matching", vbInformation, head
'        Exit Sub
'   End If
'
'Exit Sub
'Command10_Click_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command10_Click of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
Private Sub Command2_Click()    'Find Okay
On Error GoTo Command2_Click_Error

desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   MsgBox "No Such Record Found ", vbInformation, head
   Exit Sub
End If
Call bindcontls
'calling query procedure from module
Call query(BUTTON)
Frame6.Visible = False


Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form FrmissueKgs", vbInformation, head
End Sub
Private Sub Command3_Click()    'Find Cancel
On Error GoTo Command3_Click_Error

Frame6.Visible = False

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

grddatagrid.Columns(1).Text = Rs(0)
grddatagrid.Columns(2).Text = Rs(1)
grddatagrid.Columns(3).Text = Rs(2)
Text6.Text = Rs("date")
Set Namers = New Recordset
Namers.Open "Select varname from rm_var where varcode='" & Rs(2) & "'", DB, adOpenStatic
If Not Namers.EOF Then
   grddatagrid.Columns(4).Width = 2500
   grddatagrid.Columns(4).Text = Namers(0)
End If
grddatagrid.Columns(5).value = Rs(3)
grddatagrid.Columns(6).value = Rs(4)
grddatagrid.Columns(7).value = Rs(5)
Frame2.Visible = False
SSTab2.Visible = True
SSTab2.ZOrder
grddatagrid.Col = 8
grddatagrid.SetFocus
SendKeys ("{right}")


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Label15.Caption = "Oil Details" Then
   Frame3.Visible = False
   SSTab2.Tab = 0
   Txtfields(3).Text = ""
   Exit Sub
End If
Frame3.Visible = False
SSTab2.Visible = True
SSTab2.Tab = 0
'Call BUTTON_Click(10)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()    'activex ok
On Error GoTo Command6_Click_Error

Select Case KSLLIST1.listfield1
    Case "LOTNO" '"cast(a.lotno as varchar)"
         Txtfields(1).Text = KSLLIST1.code
         MaskEdBox1(1).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
         Dim partyrs As Recordset
         Set partyrs = New Recordset
         partyrs.Open "select catcd from rm_lot where lotno=" & Txtfields(1).Text & " and lotdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
         Txtfields(2).Text = partyrs(0)
         Combo1.SetFocus
    Case "slname as SupplierName,city as City" '"slcode"
         If Combo1.Text <> "T-Transfer" Then
'            txtFields(2).Text = KslList1.description
'            Text2.Text = Trim(KslList1.Code)
            Txtfields(1).Text = KSLLIST1.Description
            Text5.Text = Trim(KSLLIST1.code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         Else
            Txtfields(2).Text = Trim(KSLLIST1.Description)
            text2.Text = Trim(KSLLIST1.code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         End If
    Case "Product_Code" 'Or "cntcd as CountCode" '"cntcd"
         Txtfields(1).Text = KSLLIST1.code
         Text5.Text = KSLLIST1.Description
         grddatagrid.Col = 0
         grddatagrid.Enabled = True
         grddatagrid.SetFocus
'    Case "oilcode"
'         Txtfields(3).Text = KSLLIST1.Code
'         Text1.Text = KSLLIST1.Description
'         Txtfields(4).SetFocus
    Case "docno"
         Txtfields(0).Text = KSLLIST1.code
         MaskEdBox1(0).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
         a = Txtfields(0).Text
         B = MaskEdBox1(0).Text
         Text1.Text = ""
         Call delmodproc(CStr(a), CStr(B))
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmissueKgs", vbInformation, head
End Sub


Private Sub Command7_Click()

On Error GoTo Command7_Click_Error

      If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            IVarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            IVarcode = 7
            icolorcode = 8
            icategory = 9
         End If
      


If Option1.value = True Then
    If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Text7.Text = "" Then
            MsgBox "Please enter the Bale Number", vbInformation, head
            Text7.SetFocus
        Else
            grddatagrid.Enabled = False
            Frame7.Enabled = False
            Txtfields(1).Locked = True
            Txtfields(7).Locked = True
            Frame1.Enabled = False
            SSTab2.Tab = 1
        
            grid.RowHeader = True
            grid.Enabled = True
            SSTab2.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                chrs(0) = ""
            End If
            Set balers = New Recordset
            balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            If balers.RecordCount = 0 Then
                Set issrs = New Recordset
                issrs.Open "select Baleno,docno,docdt from RM_issReqB where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "' and issued='Y' and baleno='" & Text7.Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
                MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
            End If
            
        If balers.RecordCount > 0 Then
            For I = 1 To grid.Rows
                If balers(0) = grid.TextMatrix(I, 1) Then
                    MsgBox "This Baleno Already Issued ", vbInformation, head
                    FLG = "y"
                    Text7.Text = ""
                    Text7.SetFocus
                    Exit Sub
                Else
                    FLG = ""
                End If
            Next
            If grid.Rows <= s And Not FLG = "y" Then
                grid.RowHeight(grid.Rows) = 20
                 
                grid.Rows = grid.Rows + 1
                tbno = tbno + 1
                Text3.Visible = True
                Text3.Text = val(tbno)
                grid.TextMatrix(grid.Rows, 0) = grid.Rows
                grid.TextMatrix(grid.Rows, 1) = Text7
                grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = Format(val(tgwt), "0.000")
                grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = Format(val(ttwt), "0.000")
                grid.TextMatrix(grid.Rows, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = Format(val(tnwt), "0.000")
                grid.TextMatrix(grid.Rows, 6) = "Y"
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                
                If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
                    MsgBox "Issued KGS must be less than or equal to the Actual Stock KGS", vbInformation, head
                    grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                    taisswt = taisswt + grid.TextMatrix(grid.Rows, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                
                If chrs(0) = "Y" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + grid.TextMatrix(grid.Rows, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
                
                tbnoG = 0
                netwtG = 0
                TAREG = 0
                GROSWTG = 0
                ACTISSKGSG = 0
                For I = 1 To grid.Rows
                    If (grid.TextMatrix(I, 5) <> "" And Trim(grid.TextMatrix(I, 5)) <> "0") Or grid.TextMatrix(I, 6) <> "" Then
                      tbnoG = tbnoG + 1
                      ACTISSKGSG = ACTISSKGSG + val(grid.TextMatrix(I, 5))
                      netwtG = netwtG + val(grid.TextMatrix(I, 4))
                      GROSWTG = GROSWTG + val(grid.TextMatrix(I, 2))
                      TAREG = TAREG + val(grid.TextMatrix(I, 3))
                    End If
                Next
                Text11.Text = Format(netwtG, "0.000")
                Text10.Text = Format(TAREG, "0.000")
                Text9.Text = Format(GROSWTG, "0.000")
                Text4.Text = Format(ACTISSKGSG, "0.000")
                Text3.Text = tbnoG
                
            Else
                MsgBox "Closing Bales are Entered  ", vbInformation, head
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
            End If
        Else
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

If Opt = "mod" Then
    Option2.value = True
End If
If Option2.value = True Then
    If Opt = "add" Or Opt = "mod" Then
        Text7.Locked = False
        Text8.Locked = False
        If Trim(TxtIsskgs.Text) = "" Then
            MsgBox "Please enter the KGS", vbInformation, head
            TxtIsskgs.SetFocus
        Else
            If Opt = "add" Then
                grddatagrid.Enabled = False
            End If
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame1.Enabled = False
            Frame7.Enabled = False
            SSTab2.Tab = 1
        
            grid.RowHeader = True
            grid.Enabled = True
            SSTab2.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(ILotNo).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(ilottype).Text) & "' and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(icategory).Text & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                  chrs(0) = ""
            End If
            'Grid.clear
            'Call Format_Grid
            grid.Rows = 1
            grid.RowHeight(grid.Rows) = 20
            grid.Rows = grid.Rows + 1
           ' On Error Resume Next
            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            
            If Opt = "add" Then
                DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(ILotNo).Text) & "' and Catcd = '" & grddatagrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            Else
                DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where baleno not in (" & gbaleno & ") and STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(ILotNo).Text) & "' and Catcd = '" & grddatagrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
            End If
            twt = 0
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
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
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = val(TEMP) 'actisskgs
                        grid.TextMatrix(grid.Rows - 1, 6) = "N" 'issued
                        TEMP = TEMP - val(TxtIsskgs.Text)
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 5))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    Else
                    
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = balers(4) 'actisskgs
                        TEMP = TEMP - balers(4)
                        
                        grid.TextMatrix(grid.Rows - 1, 6) = "Y"
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 4))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    End If
                   
                  
                    balers.MoveNext
                    
                    If balers.EOF = False Then
                        grid.Rows = grid.Rows + 1
                    Else
                        GoTo GG:
                    End If
                   
                    
                    
                Wend
GG:
                    Text3.Text = t1bales
                    Text9.Text = Format(val(t1grwt), "0.000")
                    Text10.Text = Format(val(t1tarewt), "0.000")
                    Text11.Text = Format(val(t1netwt), "0.000")
                    Text4.Text = Format(t1actisskgs, "0.000")
    
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
    cnt1 = grid.Rows
    For I = 2 To cnt1
        If grid.TextMatrix(I, 1) = "" Then
            grid.Rows = grid.Rows - 1
            cnt1 = cnt1 - 1
        End If
    Next
End If
If Option1.value = False And Option2.value = False Then
    MsgBox "Please Choose (Balewise/Kgswise)", vbInformation, head
    Exit Sub
End If


Exit Sub
Command7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_Click of Form FrmissueKgs", vbInformation, head

End Sub


Private Sub Command8_Click()
On Error GoTo Command8_Click_Error

ISSFLG = ""
Set Rs = New Recordset
Rs.Open "Select * from rm_param", DB, adOpenStatic
'If Option3.Value = True Then
'    IssFlg = "Balewise"
'    'IssFlg = Rs("issflg")
'End If
'If Option4.Value = True Then
'    'IssFlg = "Kgswise"
'    IssFlg = Rs("issflg")
'End If
If Rs.RecordCount > 0 Then
    ISSFLG = Rs("issflg")
Else
    ISSFLG = "Balewise"
End If
If ISSFLG = "Balewise" Then
    Option3.value = True
ElseIf ISSFLG = "Kgswise" Then
    Option4.value = True
End If

Frame10.Visible = False
SSTab2.Enabled = True
Buttonframe.Enabled = True
SSTab2.Enabled = True
Combo1.SetFocus
'Command8.Default = False

Exit Sub
Command8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command8_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command9_Click()
On Error GoTo Command9_Click_Error

Call BUTTON_Click(10)
Frame10.Visible = False
Buttonframe.Enabled = True

Exit Sub
Command9_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command9_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
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
'        If sstAB2.Tab = 1 Then
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

If Not (DTPicker2.value >= yfdate And DTPicker2.value <= pdate) Then
   MsgBox "Issue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(1).Mask = DTPicker2.value
   MaskEdBox1(1).Text = DTPicker2.value
   Txtfields(10).SetFocus
End If

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form FrmissueKgs", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo Form_KeyPress_Error

If KeyAscii = 13 Then SendKeys "({Tab})"

Exit Sub
Form_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
ActBalQty = 0
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
SSTab2.Visible = True
DATLAB.Caption = pdate
lblSoft.Visible = False
Txtfields(14).Visible = False
DTPicker2.Visible = False
Call query_mode

DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
DTPicker1.value = pdate
DTPicker1.value = pdate



intervalMinutes = -1

 vTotBal = 0
 vNetWt = 0
 vActWt = 0
 SSTab2.Enabled = True
 minspanlen = 0: maxspanlen = 0: minstr = 0: maxstr = 0: minmic = 0: maxmic = 0: minrd = 0: maxrd = 0: minbb = 0: maxbb = 0

   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
   intervalMinutes = -1

'SetColoumn
'============Clears The TempTable
Call Temp_tbl_Update_IssReq("CLEAR")


If UCase(CustID) = "ASM" Then
FrmMixingChart.Caption = "Mixing Allocation"
Else
If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then
    Frame8.Visible = True
    Frame8.Enabled = True
    BUTTON(0).Enabled = False
    Else
    BUTTON(0).Enabled = True
End If
If Repindex = 222 Then
    heading.Caption = "Issue Requisition Approval"
Else
    heading.Caption = "Issue Requisition"
End If
End If
    If Repindex = 222 Then

        BUTTON(0).Enabled = False
        Else
        BUTTON(0).Enabled = True
    End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
Screen.MousePointer = vbDefault
intervalMinutes = -1
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
'    If KeyCode = vbKeyAdd And Shift = 2 Then
'        Call BUTTON_Click(0)
'    ElseIf KeyCode = vbKeyM And Shift = 2 Then
'        Call BUTTON_Click(1)
'    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
'        Call BUTTON_Click(2)
'    ElseIf KeyCode = vbKeyL And Shift = 2 Then
'        Call BUTTON_Click(4)
'    ElseIf KeyCode = vbKeyR And Shift = 2 Then
'        Call BUTTON_Click(3)
'    ElseIf KeyCode = vbKeyF And Shift = 2 Then
'        Call BUTTON_Click(5)
'    ElseIf KeyCode = vbKeyN And Shift = 2 Then
'        Call BUTTON_Click(6)
'    ElseIf KeyCode = vbKeyO And Shift = 2 Then
'        Call BUTTON_Click(7)
'     ElseIf KeyCode = vbKeyE And Shift = 2 Then
'        Call BUTTON_Click(8)
'    ElseIf KeyCode = vbKeyS And Shift = 2 Then
'        Call BUTTON_Click(9)
'    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
'        Call BUTTON_Click(10)
'    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'        Call BUTTON_Click(11)
'    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        Call BUTTON_Click(12)
'    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
'        'Call Command6_Click
'    End If
'If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
'ElseIf KeyCode = vbKeyM And Shift = 2 Then
'   If BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)    ''Modify
'   End If
'ElseIf KeyCode = vbKeyD And Shift = 2 Then
'    If BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)    ''Delete
'    End If
'ElseIf KeyCode = vbKeyL And Shift = 2 Then
'    If BUTTON(3).Enabled = True Then
'        'Call BUTTON_Click(3)    ''List
'    End If
'ElseIf KeyCode = vbKeyF And Shift = 2 Then
'    If BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)    ''Find
'    End If
'ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
'    If BUTTON(5).Enabled = True Then
'        Call BUTTON_Click(5)    ''First
'    End If
'ElseIf KeyCode = vbKeyDown And Shift = 2 Then
'    If BUTTON(6).Enabled = True Then
'        Call BUTTON_Click(6)    ''Next
'    End If
'ElseIf KeyCode = vbKeyUp And Shift = 2 Then
'    If BUTTON(7).Enabled = True Then
'        Call BUTTON_Click(7)    ''Previous
'    End If
'ElseIf KeyCode = vbKeyRight And Shift = 2 Then
'    If BUTTON(8).Enabled = True Then
'        Call BUTTON_Click(8)    ''Last
'    End If
'ElseIf KeyCode = vbKeyS And Shift = 2 Then
'    If BUTTON(9).Enabled = True Then
'        Call BUTTON_Click(9)    ''Save
'    End If
'ElseIf KeyCode = vbKeyBack And Shift = 2 Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)    ''Cancel
'    End If
'ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'    If BUTTON(11).Enabled = True Then
'        Call BUTTON_Click(11)   ''Exit
'    End If
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        'Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        'Call BUTTON_Click(13)   ''Crystal Report
'    End If
'ElseIf KeyCode = vbKeyEscape Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)   ''Cancel
'    End If
'End If
On Error GoTo BUTTON_KeyDown_Error

    

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    If Opt <> "add" Then


    If adoPrimaryRS.RecordCount > 0 Then
    On Error Resume Next
            If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
            Set Rs = New Recordset
            Rs.Open " select isnull(sum(baleno),0) baleno from RM_issReqB where docno='" & val(Txtfields(0).Text) & "' and docdt='" & Format(adoPrimaryRS("DOCDT"), "yyyy-mm-dd") & "'", DB, adOpenStatic
            If Not Rs.EOF Then
            TxtTotBales.Text = Rs(0)
            End If
            End If
            
               Txtfields(31).Text = IIf(IsNull(adoPrimaryRS("noofissues")), 0, adoPrimaryRS("noofissues"))
               
            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
               ' Call clears
            If adoPrimaryRS("ISSUEFLG") = "B" Then
                optBinStock.value = True
            Else
                optMillStock.value = True
            End If
            
                 
            Set rsa = New Recordset
            rsa.Open "select isstype from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
            Txtisstype = rsa(0)
            If rsa.RecordCount > 0 Then
                Call VisText(CStr(rsa(0)))
            End If
            Combo2.Text = adoPrimaryRS("issto")
            If IsNull(adoPrimaryRS("form")) = False Then
                If Trim(adoPrimaryRS("form")) = Trim(Option5.Caption) Then
                    Option5.value = True
                End If
                If Trim(adoPrimaryRS("form")) = Trim(Option6.Caption) Then
                    Option6.value = True
                End If
                If Trim(adoPrimaryRS("form")) = "No" Then
                    Option7.value = True
                End If
            End If
            
            If adoPrimaryRS("ISSTO") = "D" Then
                Set CNTRS = New Recordset
                CNTRS.Open "select CNTNAME from RM_COUNT where CNTCD='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            ElseIf adoPrimaryRS("ISSTO") = "M" Then
                Set CNTRS = New Recordset
'                CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                CNTRS.Open "select CntName from Rm_Count where CntCD ='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            End If
            If rsa(0) = "S" Or rsa(0) = "J" Or rsa(0) = "R" Then
                Txtfields(13).Text = adoPrimaryRS!driver
                MaskEdBox1(1).Text = Format(invdate, "DD/MM/YYYY")
                Set CNTRS = New Recordset
                CNTRS.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("slcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    If IsNull(adoPrimaryRS("slcode")) = False Then
                        Txtfields(1).Text = adoPrimaryRS("slcode")
                        Text5.Text = CNTRS(0)
                    Else
                        Txtfields(1).Text = ""
                        Text5.Text = ""
                    End If
                End If
            Else
                Set CNTRS = New Recordset
                'CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                CNTRS.Open "select * from rm_count where cntcd='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic
                If CNTRS.RecordCount > 0 Then
                    Txtfields(1).Text = adoPrimaryRS("cntcd")
                    Text5.Text = CNTRS(0)
                Else
                    Txtfields(1).Text = ""
                End If
            End If
            Set CNTRS = New Recordset
            CNTRS.Open "select mixgrpname from rm_mixgrp where mixgrpcd='" & adoPrimaryRS("mixgrp") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(8).Text = adoPrimaryRS("mixgrp")
                 Text12.Text = CNTRS(0)
            End If
            
            If IsNull(adoPrimaryRS("invdate")) = False Then
                MaskEdBox1(1).Mask = adoPrimaryRS("invdate")
                MaskEdBox1(1).Text = MaskEdBox1(1).Mask
            End If
    
               Set ADOSECONDARYRS = New Recordset
         ADOSECONDARYRS.Open " SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.Plotno""Supplier Lot No"",VARname""Variety Name"",a.CATCD""Category"",a.baleno""Quantity"",rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10  FROM RM_issReqB a " & _
                             " inner join rm_lot b on a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode " & _
                             " inner join rm_var c  on c.varcode=a.varcode and b.varcode=c.varcode " & _
                             " where DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' and a.docno=" & adoPrimaryRS("Docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
         
         Set grddatagrid.DataSource = ADOSECONDARYRS
         grddatagrid.Columns(0).Visible = False
         grddatagrid.Columns(1).Visible = False
         grddatagrid.Columns(2).Visible = False
         grddatagrid.Columns(3).Visible = False
         grddatagrid.Columns(4).Width = 1000
         grddatagrid.Columns(5).Width = 1300
         grddatagrid.Columns(6).Width = 1000
         grddatagrid.Columns(7).Width = 1500
         grddatagrid.Columns(8).Width = 1500
         grddatagrid.Columns(9).Width = 1200
         grddatagrid.Columns(10).Width = 1200
'         grddatagrid.Columns(11).Width = 1000
'         grddatagrid.Columns(12).Width = 1000
'         grddatagrid.Columns(11).NumberFormat = "#######.000"
'         grddatagrid.Columns(11).Alignment = dbgRight
'         grddatagrid.Columns(10).Alignment = dbgRight
         grddatagrid.Columns(10).Alignment = dbgRight
         grddatagrid.Columns(11).Alignment = dbgRight
         grddatagrid.Columns(11).Locked = True
         grddatagrid.Columns(11).Width = 1500
         grddatagrid.Columns(11).Caption = "Remaining Bales"
          I = 1
         For I = I To 10
             grddatagrid.Columns(11 + I).Visible = True
              grddatagrid.Columns(11 + I).Width = 1500
         Next
        
        
         SSTab2.Tab = 0
'         Frame1.Visible = True
         Frame7.Visible = True
         grddatagrid.AllowUpdate = False
         desc.Caption = "Query"
         'This variable is declared as global to show the date
         DATLAB.Caption = pdate
 
            Set CNTRS = New Recordset
            CNTRS.Open "select divname from pp_divmas where divcode='" & adoPrimaryRS("rdivcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Txtfields(0).Text = adoPrimaryRS("docno")
            If Txtisstype = "T" Or Txtisstype = "S" Or Txtisstype.Text = "J" Then
                Txtfields(13).Text = adoPrimaryRS("DRIVER")
            ElseIf Txtisstype = "P" Then
                If Not IsNull(adoPrimaryRS("ORDNO")) Then
                    Txtfields(13).Text = adoPrimaryRS("ORDNO")
                End If
            End If
               
               

    End If
End If
intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'assigning values from adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next
If adoPrimaryRS.EOF = False Then
Dim a, B As Integer
If adoPrimaryRS("AppBy") = "SM" Then
    Check2.value = 1
    a = 1
ElseIf adoPrimaryRS("AppBy") = "FM" Then
    Check3.value = 1
    B = 1
End If

If a = 0 And B = 0 Then
Check3.value = 0
Check2.value = 0
End If

Txtfields(0).Text = adoPrimaryRS("docno")
Set Text16.DataSource = adoPrimaryRS
Set Combo1.DataSource = adoPrimaryRS
Combo2.DataField = "issto"
Set MaskEdBox1(0).DataSource = adoPrimaryRS
DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("DOCDT"), "dd/mm/yyyy")
        
End If
If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
End If
If Repindex = 222 Then
BUTTON(0).Enabled = False
End If

End If
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
On Error GoTo ENABLCONTLS_Error

For I = 0 To 2
    Txtfields(I).Locked = False
Next
Txtfields(8).Locked = False
MaskEdBox1(0).Enabled = True
'DTPicker1.Enabled = True
Combo1.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
Dim I As Integer
On Error GoTo disablcontls_Error

For I = 0 To 2
    Txtfields(I).Locked = True
Next
MaskEdBox1(0).Enabled = False
DTPicker1.Enabled = False
Combo1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdData_DblClick()
On Error GoTo grdData_DblClick_Error

If Opt = "add" And ISSFLG = "Balewise" Then
        Call ubgridalign
        I = 1
        Text13.Text = ""
        Text14.Text = ""
        MOVEPOINT = avilbalers.AbsolutePosition - 1
        avilbalers.MoveFirst
        avilbalers.Move MOVEPOINT
         
        grid.RowHeader = True
        grid.Enabled = True
        SSTab2.Visible = True
        Set chrs = New Recordset
        chrs.Open "select awt_flg from rm_lot where DIVCODE='" & Divcode & "' AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If IsNull(chrs(0)) Then
            chrs(0) = ""
        End If
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & grdData.Columns(0).Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        If balers.RecordCount = 0 Then
            Set issrs = New Recordset
            issrs.Open "select Baleno,docno,docdt from RM_issReqB where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "' and issued='Y' and baleno='" & Text7.Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
            MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
        End If
        If balers.RecordCount > 0 Then
            For I = 1 To grid.Rows
                If balers(0) = grid.TextMatrix(I, 1) Then
                    MsgBox "This Baleno Already Issued ", vbInformation, head
                    FLG = "y"
                    Exit Sub
                Else
                    FLG = ""
                End If
            Next
            
            If grid.Rows < s And Not FLG = "y" Then
                FLG = ""
                If grid.Rows = 0 Then
                ''    Grid.AddItem ""
                End If
                grid.Rows = grid.Rows + 1
                grid.RowHeight(grid.Rows) = 20
                'tbno = tbno + 1
                Text3.Visible = True
                Text3.Text = val(tbno)
                grid.TextMatrix(grid.Rows, 0) = grid.Rows
                grid.TextMatrix(grid.Rows, 1) = balers("Baleno")
                grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = Format(val(tgwt), "0.000")
                grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = Format(val(ttwt), "0.000")
                grid.TextMatrix(grid.Rows, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = Format(val(tnwt), "0.000")
                grid.TextMatrix(grid.Rows, 6) = "Y"
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                ' If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
                'MsgBox "Issued KGS greater The Actual Stock KGS ", vbInformation, head
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                                
                'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                'Text4.Text = val(taisswt)
                'End If
                ''If chrs(0) = "Y" Then
                  ''  Grid.TextMatrix(Grid.Rows - 1, 5) = balers("net weight")
                    taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
                    Text4.Text = Format(val(taisswt), "0.000")
                ''End 0If
''                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
''                    'grid.TextMatrix(grid.Rows - 1, 5) = Text8
''                    Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
''                    taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
''                    Text4.Text = val(taisswt)
''                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                    'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                    Text4.Text = Format(val(taisswt), "0.000")
                End If
                Text7 = ""
                Text8 = ""
                
           Else
                MsgBox "Closing Bales are Entered  ", vbInformation, head
                Text7 = ""
                Text8 = ""
                'Command7.Enabled = False
            End If
        Else
            'MsgBox "This Baleno Already Issued ", vbInformation, head
            Text7 = ""
            Text8 = ""
        End If
            Label25.Caption = ""
            
            netwt = 0
            ActIssKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For I = 1 To grid.Rows
                If (grid.TextMatrix(I, 5) <> "" And Trim(grid.TextMatrix(I, 5)) <> "0") Or grid.TextMatrix(I, 1) <> "" Then
                  tbno = tbno + 1
                  ActIssKgs = ActIssKgs + val(grid.TextMatrix(I, 5))
                  netwt = netwt + val(grid.TextMatrix(I, 4))
                  groswt = groswt + val(grid.TextMatrix(I, 2))
                  tare = tare + val(grid.TextMatrix(I, 3))
                End If
            Next
            Text11.Text = Format(netwt, "0.000")
            Text10.Text = Format(tare, "0.000")
            Text9.Text = Format(groswt, "0.000")
            Text4.Text = Format(ActIssKgs, "0.000")
            Text3.Text = tbno
            tbno = 0
            For I = 1 To grid.Rows
                If (grid.TextMatrix(I, 5) <> "" And Trim(grid.TextMatrix(I, 5)) <> "0") Or grid.TextMatrix(I, 1) <> "" Then
                  tbno = tbno + 1
                End If
            Next
            Text3.Text = tbno
            If val(grddatagrid.Columns(9).Text) = val(tbno) Then
                Command7.Enabled = False
                Command1.Enabled = True
                Command1.SetFocus
            Else
                Text7.SetFocus
            End If
    End If


Exit Sub
grdData_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdData_DblClick of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
    Dim LtQtyTmpRs As New ADODB.Recordset
    Dim LtTmpQty As Double: LtTmpQty = 0
    Dim LtTmpQty2 As Double: LtTmpQty2 = 0
    On Error GoTo grddatagrid_AfterColEdit_Error
    If Opt = "add" Then
    If grddatagrid.Col = 9 Then
        Pos = updSECONDARYRS.AbsolutePosition
        totbal = 0
        updSECONDARYRS.MoveFirst
        Do While Not updSECONDARYRS.EOF
          totbal = totbal + updSECONDARYRS(9)
          updSECONDARYRS.MoveNext
        Loop
        
         TxtTotBales.Text = CStr(totbal)
           updSECONDARYRS.AbsolutePosition = Pos
End If
    End If
    
    If (Opt = "add" Or Opt = "mod") And grddatagrid.Col = 9 Then
        grddatagrid.Columns(10).Text = val(grddatagrid.Columns(7).Text) - val(grddatagrid.Columns(9).Text)
    End If
    
    
If (Opt = "add") And grddatagrid.Col > 9 Then
     issbaltot = 0
     For I = 1 To val(Txtfields(31).Text)
        issbaltot = issbaltot + val(grddatagrid.Columns(10 + I).Text)
     Next
     
     If issbaltot > val(grddatagrid.Columns(9).Text) Then
     grddatagrid.Columns(ColIndex).Text = 0
        MsgBox " No.of issue details can't be Greater than issue bales ", vbInformation, head
        Exit Sub
     End If
     
ElseIf (Opt = "mod") And grddatagrid.Col > 9 Then
      issbaltot = 0
     For I = 1 To val(Txtfields(31).Text)
        issbaltot = issbaltot + val(grddatagrid.Columns(13 + I).Text)
     Next
     
     If issbaltot > val(grddatagrid.Columns(11).Text) Then
     grddatagrid.Columns(ColIndex).Text = 0
        MsgBox " No.of issue details can't be Greater than issue bales ", vbInformation, head
        Exit Sub
     End If
End If

If Opt = "mod" Then
    If ColIndex = 11 Then
    
        If bolRejFlg = True Then
            Set rstQry = New Recordset
            rstQry.Open "Select Baleno from RM_issReqB where lotno=" & ADOSECONDARYRS("lot NO") & " and lotdt ='" & Format(ADOSECONDARYRS("lot DATE"), "yyyy-MM-dd") & "' and catcd='" & Trim(ADOSECONDARYRS("Category")) & "' and varcode='" & Trim(ADOSECONDARYRS("Variety")) & "' and lottype='" & ADOSECONDARYRS("lot type") & "' and docdt ='" & Format(ADOSECONDARYRS("docdt"), "YYYY-MM-DD") & "' AND DOCNO=" & ADOSECONDARYRS("DOCNO") & "", DB, adOpenStatic
            If rstQry.EOF = False Then iQty = rstQry("BALENO")
        Else
            iQty = iRejQty
        End If
        
        If iQty < val(grddatagrid.Columns(11).Text) + iNewRejQty Then
            If bolRejFlg = True Then
                MsgBox "Please enter the Accepted Qty Below or Equal to Requisition Quantity, " & iQty, vbInformation, head
                grddatagrid.Columns(11).Text = iQty
            Else
                MsgBox "Please enter the Accepted Qty Below or Equal to Rejected Quantity , " & iQty, vbInformation, head
                grddatagrid.Columns(12).Locked = True
                grddatagrid.Columns(11).Text = iQty
            End If
            grddatagrid.Col = 11
            grddatagrid.SetFocus
            Exit Sub
        Else
'            If bolRejFlg = True Then grdDataGrid.Columns(12).Text = val(iQty) - val(grdDataGrid.Columns(11).Text)
            If bolRejFlg = False Then
            grddatagrid.Columns(12).Locked = True
'               adoSecondaryRS.MoveFirst
'                iRejQty = 0
'                Do While adoSecondaryRS.EOF = False
'                    iRejQty = iRejQty + IIf(IsNull(adoSecondaryRS("Rejected Qty")), 0, adoSecondaryRS("Rejected Qty"))
'                    adoSecondaryRS.MoveNext
'                Loop
            iNewRejQty = iNewRejQty + val(grddatagrid.Columns(11).Text)
            If iNewRejQty = iRejQty Then
                iNewRejQty = 0
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                Exit Sub
            Else
                ADOSECONDARYRS.AddNew
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
            
            
        End If
   End If
   If ColIndex = 12 Then
        
        If bolRejFlg = True Then
           Set rstQry = New Recordset
           rstQry.Open "Select Baleno from RM_issReqB where lotno=" & ADOSECONDARYRS("lot NO") & " and lotdt ='" & Format(ADOSECONDARYRS("lot DATE"), "yyyy-MM-dd") & "' and catcd='" & Trim(ADOSECONDARYRS("Category")) & "' and varcode='" & Trim(ADOSECONDARYRS("Variety")) & "' and lottype='" & ADOSECONDARYRS("lot type") & "' and docdt ='" & Format(ADOSECONDARYRS("docdt"), "YYYY-MM-DD") & "' AND DOCNO=" & ADOSECONDARYRS("DOCNO") & " and divcode='" & Divcode & "'", DB, adOpenStatic
           If rstQry.EOF = False Then iQty = rstQry("BALENO")
       
        If iQty < val(grddatagrid.Columns(12).Text) Then
            If bolRejFlg = True Then
                MsgBox "Please enter the Accepted Qty Below or Equal to Requisition Quantity, " & iQty, vbInformation, head
            Else
                MsgBox "Please enter the Accepted Qty Below or Equal to Rejected Quantity , " & iQty, vbInformation, head
            End If
            
            grddatagrid.Columns(12).Text = 0
            grddatagrid.Col = 12
            grddatagrid.SetFocus
            Exit Sub
        Else
            Set rstQry = New Recordset
            rstQry.Open "Select bales- isnull(issbal,0) as LotQty from rm_lot where lotno=" & ADOSECONDARYRS("lot NO") & " and lotdt ='" & Format(ADOSECONDARYRS("lot DATE"), "yyyy-MM-dd") & "' and catcd='" & Trim(ADOSECONDARYRS("Category")) & "' and varcode='" & Trim(ADOSECONDARYRS("Variety")) & "' and lottype='" & ADOSECONDARYRS("lot type") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
            If rstQry.EOF = False Then iLotQty = rstQry("lotqty")
            
            If iLotQty < val(grddatagrid.Columns(11).Text) + val(grddatagrid.Columns(12).Text) Then
            
                If iLotQty <> val(grddatagrid.Columns(11).Text) Then
                If MsgBox("Stock Quantity for Lot No. " & ADOSECONDARYRS("Lot No") & " is " & iLotQty & ". But Balance Quantity is only " & iLotQty - val(grddatagrid.Columns(11).Text) & vbCrLf & "Do you Want to Issue " & iLotQty - val(grddatagrid.Columns(11).Text) & " Quantity from this Lot", vbYesNo, head) = vbYes Then
                    grddatagrid.Columns(11).Text = iLotQty - val(grddatagrid.Columns(12).Text)
                Else
                    grddatagrid.Columns(11).Text = val(grddatagrid.Columns(11).Text) - val(grddatagrid.Columns(12).Text)
                End If
                
                Else
                grddatagrid.Columns(11).Text = val(grddatagrid.Columns(11).Text) - val(grddatagrid.Columns(12).Text)
                End If
                
            End If
'            grdDataGrid.Columns(11).Text = val(iQty) - val(grdDataGrid.Columns(12).Text)
            ilastrow = ADOSECONDARYRS.RecordCount
            If ADOSECONDARYRS.AbsolutePosition = ilastrow Then
                iBinIssueQty = 0
                iBinAccQty = 0
                iRejQty = 0
                
                Set Rs = New Recordset
                Rs.Open "select sum(isnull(baleno,0)) from RM_issReqB where Docno=" & val(Txtfields(0).Text) & " and Docdt='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "' and Divcode='" & Divcode & "'", DB, adOpenStatic
                If Rs.EOF = False Then
                    iBinIssueQty = Rs(0)
                End If
                
                ADOSECONDARYRS.MoveFirst
                
                Do While ADOSECONDARYRS.EOF = False
                    iBinAccQty = iBinAccQty + IIf(IsNull(ADOSECONDARYRS("Accepted Qty")), 0, ADOSECONDARYRS("Accepted Qty"))
                    iRejQty = iRejQty + IIf(IsNull(ADOSECONDARYRS("Rejected Qty")), 0, ADOSECONDARYRS("Rejected Qty"))
                    ADOSECONDARYRS.MoveNext
                Loop
                
                iRejQty = iBinIssueQty - iBinAccQty
                lblLotDetails.Caption = ""
                If iBinIssueQty <> iBinAccQty Then
                    If MsgBox("Do you want to Add, Lots for Rejected Quantity " & iRejQty, vbYesNo, head) = vbYes Then
                        iNewRejQty = 0
                        ADOSECONDARYRS.AddNew
                        grddatagrid.Col = 4
                        grddatagrid.SetFocus
                        Exit Sub
                    Else
                        BUTTON(9).Enabled = True
                        BUTTON(9).SetFocus
                        Exit Sub
                    End If
                Else
                    BUTTON(9).Enabled = True
                    BUTTON(9).SetFocus
                    Exit Sub
                End If
                
            Else
                ADOSECONDARYRS.MoveNext
                grddatagrid.Col = 11
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
         End If
   End If
   
   

End If
 If Opt = "add" Then
If ColIndex = 0 Then
            baleno = 0
            issKgs = 0
            Set rslotcheck = New Recordset
            If ADOSECONDARYRS.RecordCount > 0 Then
                   rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                   Set rslotcheck.DataSource = ADOSECONDARYRS
                    
                    rslotcheck.MoveFirst
                    For I = 1 To rslotcheck.RecordCount
                        If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                            baleno = baleno + 1
                            issKgs = issKgs + rslotcheck("Issued Kgs")
                        End If
                        rslotcheck.MoveNext
                    Next
            Else
                baleno = 0
            End If
            
            If issKgs > 0 Then
                MsgBox "Lot cannot be returned For This Issue", vbInformation, head
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                Exit Sub
            End If
ElseIf ColIndex = 9 Then
    '============Clears The TempTable
    Call Temp_tbl_Update_IssReq("UPDATE")
    If Trim(grddatagrid.Columns(0).Text) <> "" And Trim(grddatagrid.Columns(4).Text) <> "" And Trim(grddatagrid.Columns(6).Text) <> "" Then
       
       strSQL = "Select Sum(Qty)As AllowQty From TMP_RM_ISSREQ Where VarCode='" & IIf(IsNull(grddatagrid.Columns(4).Text), "", Trim(grddatagrid.Columns(4).Text)) & "' And CatCd='" & IIf(IsNull(grddatagrid.Columns(6).Text), "", Trim(grddatagrid.Columns(6).Text)) & "' and lotno=" & grddatagrid.Columns(ILotNo).Text & " and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-MM-dd") & "'"
       Set LtQtyTmpRs = ReturnRecordSetIfExists(strSQL)
       If LtQtyTmpRs.EOF = False Then
          LtTmpQty = IIf(IsNull(LtQtyTmpRs.Fields("AllowQty").value), 0, LtQtyTmpRs.Fields("AllowQty").value)
       End If
       Set LtQtyTmpRs = Nothing
       If optBinStock.value = True Then
       If ActBalQty < val(grddatagrid.Columns(9).Text) Then
          MsgBox "Please enter the below or equal to actual Bin Stock Qty Is " & ActBalQty, vbInformation, head

          grddatagrid.Columns(9).Text = 0
          grddatagrid.Col = 9
          grddatagrid.SetFocus
          Exit Sub
       End If
       End If
    End If
    If iQty < val(grddatagrid.Columns(9).Text) Then
        MsgBox "Please enter the Issue Bales below or equal to Available Bales", vbInformation, head
        grddatagrid.Columns(9).Text = 0
        grddatagrid.Col = 9
        grddatagrid.SetFocus
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(c.Bales,0) AS bales,d.MAT_CODE,a.BLEND_CODE FROM PPC_BLEND_MAS a, PPC_BLEND_DET c, PPC_MATERIAL d WHERE a.BLEND_MASID=c.BLEND_MASID AND c.MATERIALID=d.MATERIALID AND d.MAT_CODE = '" & Trim(grddatagrid.Columns(4).Text) & "' AND a.BLEND_CODE='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
    If Rs.EOF = False Then
            
'            If sVar = Rs(0) Then  ''sasi 1.2.18
'                ibales = ibales + val(grddatagrid.Columns(9).Text)
'            Else
'                ibales = val(grddatagrid.Columns(9).Text)
'            End If
'            sVar = Rs(0)
'
'            If Rs(0) < ibales Then
'                MsgBox "Issue bales must be equal to Blend Mix - Bales", vbInformation, head
'                ibales = ibales - val(grddatagrid.Columns(9).Text)
'                grddatagrid.Col = 9
'                grddatagrid.SetFocus
'                Exit Sub
'                End If
'            Else
'                MsgBox "Issue bales must be less than or equal to Requisition Bales", vbInformation, head
'                grddatagrid.Col = 9
'                grddatagrid.SetFocus
'                Exit Sub
           End If
    End If

        
'''sasi 1.2.18
'        If vbYes = MsgBox("Do you want to enter more Lot details?", vbYesNo, head) Then
'            SSTab2.Tab = 0
'            grddatagrid.Col = 0
'            grddatagrid.Enabled = True
'            Frame7.Visible = True
'            Frame7.Enabled = True
'
'            If Opt = "add" Then
'                UPDRS.AddNew
'                updSECONDARYRS.AddNew
'                grddatagrid.Col = 0
'                Command1_Click
'                baleno = 0
'                issKgs = 0
'                Set rslotcheck = New Recordset
'                If adoSecondaryRS.RecordCount > 0 Then
'                       rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", db, adOpenStatic
'                       Set rslotcheck.DataSource = adoSecondaryRS
'
'                        rslotcheck.MoveFirst
'                        For i = 1 To rslotcheck.RecordCount
'                            If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
'                                baleno = baleno + 1
'                                issKgs = issKgs + rslotcheck("Issued Kgs")
'                            End If
'                            rslotcheck.MoveNext
'                        Next
'                Else
'                    baleno = 0
'                End If
'
'                If issKgs > 0 Then
'                    MsgBox "Lot cannot be returned For This Issue", vbInformation, head
'                    grddatagrid.Col = 0
'                    grddatagrid.SetFocus
'                    Exit Sub
'                End If
'                Else
'                adoSecondaryRS.AddNew
'                grddatagrid.Col = 4
'            End If
'            iSend = 0
'
'        Else
'            BUTTON(9).Enabled = True
'            BUTTON(9).SetFocus
'            Exit Sub
'            iSend = 1
'        End If
    End If
End If
    

Exit Sub
grddatagrid_AfterColEdit_Error:
    

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form FrmissueKgs", vbInformation, head
End Sub




Private Sub grdDataGrid_DblClick()
'On Error GoTo grddatagrid_DblClick_Error
If deltype = "1" Then
    If Opt = "del" Then
        Dim ActRs As Recordset
        If ADOSECONDARYRS.RecordCount > 1 Then
            
            cYesNo = MsgBox("Do you want to Delete Bale No.(" & ADOSECONDARYRS("Bale No.") & ") of Lot No.(" & ADOSECONDARYRS("Lot No") & ")", vbYesNo, head)
            If cYesNo = vbYes Then
                TxtTotBales.Text = val(TxtTotBales.Text) - 1
                cnt = cnt + 1
'                If cnt = 1 Then db.BeginTrans
                
                Set ActRs = New Recordset
                ActRs.Open "Select IssKgs,actISSkgs from RM_issReqB where DocNo='" & ADOSECONDARYRS("DocNo") & "' and DocDt='" & Format(ADOSECONDARYRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & ADOSECONDARYRS("Category") & "' and LotNo='" & ADOSECONDARYRS("Lot No") & "' and LotDt='" & Format(ADOSECONDARYRS("lot Date"), "yyyy-MM-dd") & "' and BaleNo='" & ADOSECONDARYRS("Bale No.") & "'", DB
                If Not ActRs.EOF Then
                    TxtNetWt.Text = val(TxtNetWt.Text) - ActRs("IssKgs")
                    TxtActWt.Text = val(TxtActWt.Text) - ActRs("ActIssKgs")
                End If
                ActRs.Close
                Set ActRs = Nothing
                
            
                'DB.Execute "Delete from RM_issReqB where DocNo='" & adoSecondaryRS("DocNo") & "' and DocDt='" & Format(adoSecondaryRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and BaleNo='" & adoSecondaryRS("Bale No.") & "'"
                'DB.Execute "Update RM_Lot set IssWt= IssWt + " & adoSecondaryRS("Issued Kgs") & ",IssBal= IssBal + 1 where Varcode='" & adoSecondaryRS("Variety") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                'DB.Execute "Update RM_Bale Set IsQty= IsQty + " & adoSecondaryRS("Issued Kgs") & " , ActIssKgs = ActIssKgs + " & adoSecondaryRS("Issued Kgs") & " where BaleNo='" & adoSecondaryRS("Bale No.") & "' and LotNo='" & adoSecondaryRS("Lot No") & "' and LotDt='" & Format(adoSecondaryRS("Date"), "yyyy-MM-dd") & "' and CatCd='" & adoSecondaryRS("Category") & "' "
                
                DB.Execute "Delete from RM_issReqB where DocNo='" & ADOSECONDARYRS("DocNo") & "' and DocDt='" & Format(ADOSECONDARYRS("DocDt"), "yyyy-MM-dd") & "' and CatCd='" & ADOSECONDARYRS("Category") & "' and LotNo='" & ADOSECONDARYRS("Lot No") & "' and LotDt='" & Format(ADOSECONDARYRS("lot Date"), "yyyy-MM-dd") & "' and BaleNo='" & ADOSECONDARYRS("Bale No.") & "'"
                DB.Execute "Update RM_Lot set IssWt= IssWt - " & ADOSECONDARYRS("Issued Kgs") & ",IssBal= IssBal - 1 where Varcode='" & ADOSECONDARYRS("Variety") & "' and LotNo='" & ADOSECONDARYRS("Lot No") & "' and LotDt='" & Format(ADOSECONDARYRS("lot Date"), "yyyy-MM-dd") & "' and CatCd='" & ADOSECONDARYRS("Category") & "' "
                DB.Execute "Update RM_Bale Set IsQty= NULL , ActIssKgs = NULL,ISSUED='N' where BaleNo='" & ADOSECONDARYRS("Bale No.") & "' and LotNo='" & ADOSECONDARYRS("Lot No") & "' and LotDt='" & Format(ADOSECONDARYRS("lot Date"), "yyyy-MM-dd") & "' and CatCd='" & ADOSECONDARYRS("Category") & "' "
                iCount = iCount + 1
                
                Set Rs = New Recordset
                Rs.Open "Select VarietyReqIssue From Rm_param", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    Set rs1 = New Recordset
                    rs1.Open "Select top 1 Docno,DocDate,Varcode,RowNo From Rm_RequisitionSlip Where Varcode='" & ADOSECONDARYRS!Variety & "' AND ISNULL(ISSQTY,0)<>0 ORDER BY DOCNO DESC,DOCDATE", DB, adOpenStatic
                    If rs1.EOF = False Then
                        Idocno = rs1(0)
                        sDocDate = Format(rs1(1), "YYYY-MM-DD")
                        sVarcode = rs1(2)
                        iRowNo = rs1(3)
                        strSQL = "Update RM_ReQuisitionSlip Set IssQty=IssQty-1 where Issued='Y' and RowNo='" & rs1("Rowno") & "' and Docno='" & rs1("DocNo") & "' and DocDate='" & Format(rs1("DocDate"), "yyyy-MM-dd") & "' and varcode='" & rs1("Varcode") & "' "
                        DB.Execute strSQL
                    End If
                End If
                ADOSECONDARYRS.Delete
            End If
            'adoSecondaryRS.Open "SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARname""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actISSkgs""Issued Kgs"",a.baleno""Bale No.""  FROM RM_issReqB a,rm_lot b,rm_var c  " & _
                        " where c.varcode=a.varcode and b.varcode=c.varcode and isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' " & _
                        " order by docno", DB, adOpenStatic, adLockBatchOptimistic
            'MsgBox " Lot No.(" & adoSecondaryRS("Lot No") & ") and Bale No.(" & adoSecondaryRS("Bale No.") & ") Successfully Deleted ", vbInformation, head
        End If
    End If
End If
Exit Sub
grddatagrid_DblClick_Error:
    'DB.RollbackTrans
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_DblClick of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
If Opt = "del" Then
    If val(deltype) = 1 Then
        StatusBar1.Panels(2).Text = "Double Click the Grid for Delete the Suitable Bale(s)"
    Else
        StatusBar1.Panels(2).Text = "Click save button for Delete Complete Issue(s)"
    End If
End If

End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
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
End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Then
    If (KeyAscii = 13 Or KeyAscii = 9) And grddatagrid.Col = 9 And Option4.value = True Then
        Call grddatagrid_AfterColEdit(9)
        TxtIsskgs.Text = ""
        Txtissbale.Text = ""
         MaskEdBox1(0).Enabled = False
'        TxtIsskgs.SetFocus
        OptSequence.SetFocus
    End If
    If grddatagrid.Col = 9 Then
        ToNumber1 grddatagrid.Columns(9), 5, KeyAscii
    End If
End If

Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_LostFocus()
'    Command1.Enabled = False
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error
intervalMinutes = -1
If optMillStock.value = True Then

'On Error Resume Next
If Opt = "add" Then

   If grddatagrid.Col = 1 Then
      If Len(Trim(grddatagrid.Columns(0).Text)) = 0 Then
        
        Call SpdTranLoad
        Exit Sub
       End If
   
        If Len(Trim(grddatagrid.Columns(0).Text)) > 0 Then
            Set rslotcheck = New Recordset
            rslotcheck.Open "select DISTINCT A.LotNo,A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - isnull(isswt,0),a.colorcode from rm_lot A where a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rslotcheck.RecordCount > 0 Then
                Dim vVarCode As String
                Dim vLotDt As String
                Dim vCatCd As String
                vVarCode = rslotcheck("Varcode")
                vLotDt = rslotcheck("Date")
                vCatCd = rslotcheck("CatCd")
                Call Lotdisplay(vVarCode, vLotDt, vCatCd, rslotcheck("LotNo"))
                Call grddatagrid_AfterColEdit(9)
            Else
                GoTo LotLookUp
            End If
        Else
LotLookUp:
        Set rsnew = New Recordset
        rsnew.Open "SELECT isnull(issuecontrolflag,'N')issuecontrolflag FROM QC_PARA WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsnew(0) = "N" Then
            Set Rs = New Recordset
            Rs.Open "Select varietyCtrlIssue from rm_param", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
                LookUp.Clear = True
                LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode),0))>0 "
            ElseIf Rs(0) = "Y" Then
            
                Set rs1 = New Recordset
                rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
                If rs1.EOF = False Then
                    sVariety = ""
                    rs1.MoveFirst
                    Do While rs1.EOF = False
                        sVariety = sVariety & ",'" & rs1(0) & "'"
                        rs1.MoveNext
                    Loop
                    sVariety = Mid(sVariety, 2)
                Else
                    MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
                LookUp.Clear = True
                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0)As MasBQty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 ANd a.varcode  in (" & sVariety & ")"
                strSQL = strSQL & " And IsNull((Select Sum(Isnull(Qty,0))As FQty From TMP_RM_ISSREQ Where CatCd=A.CatCd And VarCode=A.VarCode),0)<ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0) and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode),0))>0 "
                LookUp.query = strSQL
            End If
        Else
            Set Rs = New Recordset
            Rs.Open "Select varietyCtrlIssue from rm_param", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
                LookUp.Clear = True
                LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) Qty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  AND staplen Between " & minspanlen & " AND " & maxspanlen & " AND strength between " & minstr & " AND " & maxstr & " AND micronaire between " & minmic & " AND " & maxmic & " AND rd between " & minrd & " AND " & maxrd & " AND bb between " & minbb & " AND " & maxbb & " and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode),0))>0 "
            ElseIf Rs(0) = "Y" Then
            
                Set rs1 = New Recordset
                rs1.Open "SELECT DISTINCT M.MAT_CODE,H.BLEND_CODE From PPC_Blend_MAS H Inner Join PPC_Blend_DET T On H.BLEND_MASID = T.BLEND_MASID LEFT OUTER Join PPC_Material M On M.MaterialID = T.MaterialID where h.blend_code ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
                If rs1.EOF = False Then
                    sVariety = ""
                    rs1.MoveFirst
                    Do While rs1.EOF = False
                        sVariety = sVariety & ",'" & rs1(0) & "'"
                        rs1.MoveNext
                    Loop
                    sVariety = Mid(sVariety, 2)
                Else
                    MsgBox "Please enter the Blend/Mix Ratio for Mix Grp " & Trim(Txtfields(1).Text), vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                Set Rs = New Recordset
                Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
                LookUp.Clear = True
                strSQL = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0)As MasBQty from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where a.areacd=e.areacode and  A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 "
                strSQL = strSQL & " AND staplen Between " & minspanlen & " AND " & maxspanlen & " AND strength between " & minstr & " AND " & maxstr & " AND micronaire between " & minmic & " AND " & maxmic & " AND rd between " & minrd & " AND " & maxrd & " AND bb between " & minbb & " AND " & maxbb & " ANd a.varcode  in (" & sVariety & ")"
                strSQL = strSQL & " And IsNull((Select Sum(Isnull(Qty,0))As FQty From TMP_RM_ISSREQ Where CatCd=A.CatCd And VarCode=A.VarCode),0)<ISNULL((Select IsNull(Sum(K.Bales),0)MasBaleQty From PPC_BLEND_DET As K, PPC_BLEND_MAS AS J WHERE J.BLEND_MASID=K.BLEND_MASID And J.BLEND_CODE='" & Trim(Txtfields(1).Text) & "' And EXISTS (SELECT MATERIALID FROM PPC_MATERIAL WHERE MATERIALID=K.MATERIALID AND MAT_CODE=A.VarCode)),0) and ((ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) - isnull((select sum(isnull(i.baleno,0)) as reqqty from RM_issReqB i where i.lotno=a.lotno and i.lotdt=a.lotdt and  i.lottype=a.lottype and i.catcd=a.catcd and i.varcode=a.varcode),0))>0 "
                LookUp.query = strSQL
            End If
        End If
            LookUp.Caption = "Lot Listing"
            LookUp.ALIGN = "750,1350,1000,1100,0,2500,900,1200,0"
            If Rs(0) = "L" Then
                LookUp.DefCol = "Lot No."
            ElseIf Rs(0) = "V" Then
                LookUp.DefCol = "Variety"
            ElseIf Rs(0) = "P" Then
                LookUp.DefCol = "Supplier Lot No."
            End If
            
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                                       
'
            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
            Do While Not updSECONDARYRS.EOF
                
                    If updSECONDARYRS(0) = LookUp.Fields(0) Then

                            MsgBox "Please Select Another Lot, Selected Lot is Already Present", vbInformation, head

                            grddatagrid.Col = 1
                            updSECONDARYRS.MoveNext
                            GoTo LotLookUp
                            Exit Sub
                End If
                updSECONDARYRS.MoveNext
            Loop
            Else
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                Exit Sub
                
            End If
            updSECONDARYRS.MoveLast
            grddatagrid.Columns(0).Text = CStr(LookUp.Fields(0))
            
            
            
            
            ActBalQty = val(LookUp.Fields(8))
              
                
             Call Lotdisplay(CStr(LookUp.Fields(4)), CStr(LookUp.Fields(2)), LookUp.Fields(6))
            LookUp.Clear = True
               
                If grddatagrid.Columns(1) <> "" Then
                    If ISSFLG = "Balewise" Then
                        grddatagrid.Col = 9
                        grddatagrid.SetFocus
                    Else
                        Call grddatagrid_AfterColEdit(9)
                        SSTab2.Tab = 1
'                            TxtIsskgs.SetFocus
                    End If
                    MaskEdBox1(0).Enabled = False
                    DTPicker1.Enabled = False
                End If
                baleno = 0
                issKgs = 0
                Set rslotcheck = New Recordset
                If ADOSECONDARYRS.RecordCount > 0 Then
                       rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                       Set rslotcheck.DataSource = ADOSECONDARYRS
                        
                        rslotcheck.MoveFirst
                        For I = 1 To rslotcheck.RecordCount
                            If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                                baleno = baleno + 1
                                issKgs = issKgs + rslotcheck("Issued Kgs")
                            End If
                            rslotcheck.MoveNext
                        Next
                Else
                    baleno = 0
                End If
                
                If issKgs > 0 Then
                    MsgBox "Lot cannot be returned For This Issue", vbInformation, head
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                    Exit Sub
                End If
                Exit Sub
        End If
   End If
End If

If Opt = "mod" Then
   
   If grddatagrid.Col = 5 Then
            LookUp.Clear = True
            LookUp.query = "Select DISTINCT A.LOTNO""Lot No."",a.Lotdt as ""Lot Date"",VARNAME""Variety Name"",SLNAME""Supplier Name"",a.catcd AS Category,a.varcode""Variety Code"" from rm_lot a,rm_var b ,RM_BALE C,FA_SLMAS D where A.SUPCD=D.SLCODE  and STATUS IN ('AC','AW') AND a.lotno = c.lotno And a.Lotdt = c.Lotdt And a.varcode = c.varcode And a.Divcode = c.Divcode AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND C.VARCODE=B.VARCODE AND  a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "'"
            LookUp.Caption = "Lot Listing"
            LookUp.DefCol = "Lot No."
            LookUp.ALIGN = "1500,1500,2500,3000,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                               
                grddatagrid.Columns(4).Text = CStr(LookUp.Fields(0))
                Call Lotdisplay(CStr(LookUp.Fields(5)), CStr(LookUp.Fields(1)), CStr(LookUp.Fields(4)))
                LookUp.Clear = True
                If grddatagrid.Columns(1) <> "" Then
                    If ISSFLG = "Balewise" Then
                        grddatagrid.Col = 8
                        grddatagrid.SetFocus
                    Else
                        If grddatagrid.Columns("Lottype") <> "" Then
                            Call Option2_Click
                            SSTab2.TabEnabled(1) = True
                            Call grddatagrid_AfterColEdit(8)
                            SSTab2.Tab = 1
                            TxtIsskgs.SetFocus
                        Else
                            grddatagrid.Col = 0
                            grddatagrid.SetFocus
                            Exit Sub
                        End If
                    End If
                End If
                Exit Sub
            Else
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                Exit Sub
            End If
    If grddatagrid.Col = 11 Then
    
        MsgBox ""
    End If
            
            
   End If
 
End If
Else ' BIN STOCK LOT DETAILS
If Opt = "add" Then
   If grddatagrid.Col = 1 Then
   
        If Len(Trim(grddatagrid.Columns(0).Text)) = 0 Then
        
        Call SpdTranLoad
        Exit Sub
       End If
   
        If Len(Trim(grddatagrid.Columns(0).Text)) > 0 Then
            Set rslotcheck = New Recordset
            rslotcheck.Open "select DISTINCT A.LotNo,A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - isnull(isswt,0),a.colorcode from rm_lot A where a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rslotcheck.RecordCount > 0 Then
'                Dim vVarCode As String
'                Dim vLotDt As String
'                Dim vCatCd As String
                vVarCode = rslotcheck("Varcode")
                vLotDt = rslotcheck("Date")
                vCatCd = rslotcheck("CatCd")
                Call Lotdisplay(vVarCode, vLotDt, vCatCd, rslotcheck("LotNo"))
                Call grddatagrid_AfterColEdit(9)
            Else
                GoTo LotLookUp
            End If
        Else
LotLookUp1:
            Set Rs = New Recordset
            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue from rm_paRAM", DB, adOpenStatic
            LookUp.Clear = True
            LookUp.query = "Select distinct A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E, rm_issuebinstock f where a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and a.lotno=f.lotno and a.lotdt=f.lotdt and a.catcd=f.catcd and a.varcode = b.varcode and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and f.rejqty <> isnull(f.binaccqty,0) "
            
            LookUp.Caption = "Lot Listing"
            LookUp.ALIGN = "750,1350,1000,1100,0,2500,900,1200"
            If Rs(0) = "L" Then
                LookUp.DefCol = "Lot No."
            ElseIf Rs(0) = "V" Then
                LookUp.DefCol = "Variety"
            ElseIf Rs(0) = "P" Then
                LookUp.DefCol = "Supplier Lot No."
            End If
            
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                                       
'
            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
            Do While Not updSECONDARYRS.EOF
                
                    If updSECONDARYRS(0) = LookUp.Fields(0) Then

                            MsgBox "Please Select Another Lot, Selected Lot is Already Present", vbInformation, head

                            grddatagrid.Col = 1
                            updSECONDARYRS.MoveNext
                            GoTo LotLookUp1
                            Exit Sub
                End If
                updSECONDARYRS.MoveNext
            Loop
            Else
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                Exit Sub
                
            End If
            updSECONDARYRS.MoveLast
            grddatagrid.Columns(0).Text = CStr(LookUp.Fields(0))
            ActBalQty = val(LookUp.Fields(8))
              
                
            Call Lotdisplay(CStr(LookUp.Fields(4)), CStr(LookUp.Fields(2)), LookUp.Fields(6))
            LookUp.Clear = True
               
                If grddatagrid.Columns(1) <> "" Then
                    If ISSFLG = "Balewise" Then
                        grddatagrid.Col = 9
                        grddatagrid.SetFocus
                    Else
                        Call grddatagrid_AfterColEdit(9)
                        SSTab2.Tab = 1
'                            TxtIsskgs.SetFocus
                    End If
                    MaskEdBox1(0).Enabled = False
                    DTPicker1.Enabled = False
                End If
                baleno = 0
                issKgs = 0
                Set rslotcheck = New Recordset
                If ADOSECONDARYRS.RecordCount > 0 Then
                       rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                       Set rslotcheck.DataSource = ADOSECONDARYRS
                        
                        rslotcheck.MoveFirst
                        For I = 1 To rslotcheck.RecordCount
                            If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                                baleno = baleno + 1
                                issKgs = issKgs + rslotcheck("Issued Kgs")
                            End If
                            rslotcheck.MoveNext
                        Next
                Else
                    baleno = 0
                End If
                
                If issKgs > 0 Then
                    MsgBox "Lot cannot be returned For This Issue", vbInformation, head
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                    Exit Sub
                End If
                Exit Sub
        End If
   End If
End If

If Opt = "mod" Then
   
   If grddatagrid.Col = 5 Then
            LookUp.Clear = True
            LookUp.query = "Select DISTINCT A.LOTNO""Lot No."",a.Lotdt as ""Lot Date"",VARNAME""Variety Name"",SLNAME""Supplier Name"",a.catcd AS Category,a.varcode""Variety Code"" from rm_lot a,rm_var b ,RM_BALE C,FA_SLMAS D where A.SUPCD=D.SLCODE  and STATUS IN ('AC','AW') AND a.lotno = c.lotno And a.Lotdt = c.Lotdt And a.varcode = c.varcode And a.Divcode = c.Divcode AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND C.VARCODE=B.VARCODE AND  a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "'"
            LookUp.Caption = "Lot Listing"
            LookUp.DefCol = "Lot No."
            LookUp.ALIGN = "1500,1500,2500,3000,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                               
                grddatagrid.Columns(4).Text = CStr(LookUp.Fields(0))
                Call Lotdisplay(CStr(LookUp.Fields(5)), CStr(LookUp.Fields(1)), CStr(LookUp.Fields(4)))
                LookUp.Clear = True
                If grddatagrid.Columns(1) <> "" Then
                    If ISSFLG = "Balewise" Then
                        grddatagrid.Col = 8
                        grddatagrid.SetFocus
                    Else
                        If grddatagrid.Columns("Lottype") <> "" Then
                            Call Option2_Click
                            SSTab2.TabEnabled(1) = True
                            Call grddatagrid_AfterColEdit(8)
                            SSTab2.Tab = 1
                            TxtIsskgs.SetFocus
                        Else
                            grddatagrid.Col = 0
                            grddatagrid.SetFocus
                            Exit Sub
                        End If
                    End If
                End If
                Exit Sub
            Else
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                Exit Sub
            End If
    If grddatagrid.Col = 11 Then
    
        MsgBox ""
    End If
            
            
   End If
 
End If

End If
If Opt = "add" Or Opt = "mod" Then
   If grddatagrid.Col = 0 Then
      StatusBar1.Panels(2).Text = "Enter Lot Number"
   End If
   If grddatagrid.Col = 1 Then
      StatusBar1.Panels(2).Text = "Enter Valid Date"
   End If
   If grddatagrid.Col = 2 Then
      StatusBar1.Panels(2).Text = "Enter Lot Type"
   End If
   If grddatagrid.Col = 3 Then
      StatusBar1.Panels(2).Text = "Enter Variety"
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
   
   If LastCol = 12 And ilastrow = ADOSECONDARYRS.RecordCount Then
        BUTTON(10).Enabled = True
        BUTTON(10).SetFocus
        Exit Sub
   End If
End If
If Opt = "add" Then
    If LastRow = grddatagrid.Row + 2 Then
        grddatagrid.Row = grddatagrid.Row
    End If
'    If grddatagrid.Enabled = True Then
'        If val(grddatagrid.Columns(9).Text) > val(grddatagrid.Columns(7).Text) Then
'            MsgBox "Issued bales must be less than or equal to closing bales", vbInformation, head
'            grddatagrid.SetFocus
'            Exit Sub
'        End If
'    End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub Grid_AfterEdit(ByVal Row As Long, ByVal Col As Long, ByVal NewValue As String)
On Error GoTo Grid_AfterEdit_Error

If (Opt = "add" Or Opt = "mod") And ISSFLG = "Balewise" Then
    If Col = 5 Then
        If val(grid.TextMatrix(Row, 4)) < val(grid.TextMatrix(Row, 5)) Then
                MsgBox "Please Enter Actual Issue Weight Less than Nett Weight", vbInformation, head
                grid.Row = Row
                grid.TextMatrix(Row, 5) = 0
                grid.Col = 5
                grid.SetFocus
                Exit Sub
        
        ElseIf Trim(grid.TextMatrix(Row, 5)) = "" Or val(grid.TextMatrix(Row, 5)) = 0 Then
                If Trim(grid.TextMatrix(Row, 5)) <> "" Then
                    MsgBox "Please Enter Actual Issue Weight,Only Numeric", vbInformation, head
                    grid.Row = Row
                    grid.TextMatrix(Row, 5) = 0
                    grid.Col = 5
                    grid.SetFocus
                    Exit Sub
                End If
                MsgBox "Please Enter Actual Issue Weight", vbInformation, head
                grid.Row = Row
                grid.TextMatrix(Row, 5) = 0
                grid.Col = 5
                grid.SetFocus
                Exit Sub
        Else
            grid.TextMatrix(Row, 5) = Format(grid.TextMatrix(Row, 5), "0.000")
        End If
    End If
    ActIssKgs = 0
    
    For I = 1 To grid.Rows
        If Trim(grid.TextMatrix(I, 4)) <> "" And Trim(grid.TextMatrix(I, 4)) <> "0" And Trim(grid.TextMatrix(I, 5)) <> "" Then
               ActIssKgs = ActIssKgs + val(grid.TextMatrix(I, 5))
        End If
    Next
    Text4.Text = CStr(ActIssKgs)
End If

Exit Sub
Grid_AfterEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Grid_AfterEdit of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grid_DblClick()
''If Opt = "add" Then
''    grid.TextMatrix(grid.Row, 6) = "N"
''End If
''If val(grddatagrid.Columns(8).Text) = val(tbno) Then
''    Command1.Enabled = True
''Else
''    Command1.Enabled = False
''End If

On Error GoTo grid_DblClick_Error

If (Opt = "add" Or Opt = "mod") And ISSFLG = "Balewise" Then

  If grid.Col = 1 Then
    If grid.Rows >= 1 Then
        GG = MsgBox("Do you want to Delete This Record?", vbYesNo, head)
        If GG = vbYes Then
            Text13.Text = ""
            Text14.Text = ""
            grid.RemoveItem grid.Row
            netwt = 0
            ActIssKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For I = 1 To grid.Rows
                If (grid.TextMatrix(I, 5) <> "" And Trim(grid.TextMatrix(I, 5)) <> "0") Or grid.TextMatrix(I, 6) <> "" Then
                  tbno = tbno + 1
                  ActIssKgs = ActIssKgs + val(grid.TextMatrix(I, 5))
                  netwt = netwt + val(grid.TextMatrix(I, 4))
                  groswt = groswt + val(grid.TextMatrix(I, 2))
                  tare = tare + val(grid.TextMatrix(I, 3))
                  grid.TextMatrix(I, 0) = I
                End If
            Next
            Text11.Text = Format(netwt, "0.000")
            Text10.Text = Format(tare, "0.000")
            Text9.Text = Format(groswt, "0.000")
            Text4.Text = Format(ActIssKgs, "0.000")
            Text3.Text = tbno
            Command1.Enabled = False
            Command7.Enabled = True
            BUTTON(9).Enabled = False
            BUTTON(12).Enabled = False
               BUTTON(10).Enabled = False

        End If
  End If
  End If
End If



Exit Sub
grid_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid_DblClick of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub grddatagrid_Validate(Cancel As Boolean)
    If (Opt = "add" Or Opt = "mod") And iSend = 1 Then
        
        BUTTON(9).Enabled = True
        BUTTON(9).SetFocus
        Exit Sub
    End If
End Sub

'Private Sub grid_KeyDown(ByVal KeyCode As Integer, ByVal Shift As Integer)
'    a = grid.Row
'    Select Case grid.Col
'        Case 5
'        Call ToNumberwithDecimal(grid, 4, KeyCode, 4, 3)
'    End Select
'End Sub
'
'Private Sub grid_KeyPress(ByVal KeyAscii As Integer)
'
'Select Case grid.Col
'Case 5
'    a = grid.Row
'    b = grid.Col
'    If iLen <> 0 Then
'        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or KeyAscii = 45 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
'            'to allow numbers,decimal pt and backspace
'        Else
'            KeyAscii = 0
'            Beep
'        End If
'    Else
'        If KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
'        'nOT to allow numbers,decimal pt and backspace
'        Else
'            KeyAscii = 0
'            Beep
'        End If
'    End If
'    If Not (InStr(grid.Text, ".") = 0) And KeyAscii = 46 Then
'    'to check for 2nd occurence of decimal pt
'    Beep
'    KeyAscii = 0
'    End If
'    If Not (InStr(grid.Text, ".") = 0) And Len(grid.Text) - InStr(grid.Text, ".") = iLen And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
'         KeyAscii = 0
'         Beep
'    End If
'    If Len(grid.Text) = 4 And KeyAscii <> 46 And (InStr(grid.Text, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
'        KeyAscii = 0
'        Beep
'    End If
'End Select
'End Sub
'
'Private Sub grid_LostFocus()
''    Command1.SetFocus
'End Sub
'
'Private Sub grid_Validate(Cancel As Boolean)
'    a = grid.Row
'End Sub

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form FrmissueKgs", vbInformation, head
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
     If MaskEdBox1(0).Text <> pdate Then
        MsgBox "Issue Date must be equal to the Processing date", vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
     End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_Click()
On Error GoTo OptIndividual_Click_Error

ChkCount = 0
SpdBales.SetText 1, 1, 0
SpdBales.BlockMode = True
SpdBales.Row = 1
SpdBales.Row2 = SpdBales.DataRowCnt
SpdBales.Col = 1
SpdBales.Col2 = 1
SpdBales.Lock = False
SpdBales.BlockMode = False
grid.Clear
Text3.Text = ""
Text9.Text = ""
Text10.Text = ""
Text11.Text = ""
Text4.Text = ""
Text13.Text = ""
Text14.Locked = False
Text14.Text = ""
'If optin = True Then TxtIsskgs.tabIndex = OptSequence.tabIndex + 1

Command10.Enabled = True
Command1.Enabled = False
BUTTON(9).Enabled = False
BUTTON(12).Enabled = False
BUTTON(10).Enabled = False
If KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn Then SpdBales.SetFocus: SpdBales.Col = 1
SpdBales.tabIndex = 146

Exit Sub
OptIndividual_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptIndividual_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_GotFocus()
On Error GoTo OptIndividual_GotFocus_Error

    StatusBar1.Panels(2).Text = " Select Individual Bales No.(s)"

Exit Sub
OptIndividual_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptIndividual_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_KeyPress(KeyAscii As Integer)
On Error GoTo OptIndividual_KeyPress_Error

    If KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn Then
        SpdBales.SetFocus
        SpdBales.Col = 1
    End If

Exit Sub
OptIndividual_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptIndividual_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptIndividual_LostFocus()
'    SpdBales.SetFocus
'    SpdBales.Col = 1
On Error GoTo OptIndividual_LostFocus_Error

    

Exit Sub
OptIndividual_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptIndividual_LostFocus of Form FrmissueKgs", vbInformation, head
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
On Error GoTo Option1_Click_Error

Frame8.Visible = True
Frame8.Enabled = False
Frame9.Visible = False
Command7.Enabled = True
Frame11.Visible = True

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

Frame8.Visible = False
Frame9.Visible = True
If TxtIsskgs.Enabled = False Then TxtIsskgs.Enabled = True
If TxtIsskgs.Visible = False Then TxtIsskgs.Visible = True
If SSTab2.Tab = 1 Then TxtIsskgs.SetFocus

Exit Sub
Option2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_Click()
On Error GoTo Option7_Click_Error

    Text16.Text = ""

Exit Sub
Option7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_Click()
On Error GoTo Option8_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    'cmd_report.Visible = False

Exit Sub
Option8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option8_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option8_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
        SSTab2.Enabled = True
'        Frame1.Enabled = True
'        Frame7.Enabled = True
'        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option8_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_Click()
On Error GoTo Option9_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    cmd_report.Visible = True

Exit Sub
Option9_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option9_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option9_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option9_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame12.Visible = True Then
        Frame12.Visible = False
        cmd_report.Visible = False
        UserFooter1.Visible = False
'        UserFooter1.ZOrder = 0
        SSTab2.Enabled = True
        Frame1.Enabled = True
        Frame7.Enabled = True
'        Frame4.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option9_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option9_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub OptSequence_Click()
Dim linti As Integer
On Error GoTo OptSequence_Click_Error

For linti = 1 To SpdBales.DataRowCnt
    SpdBales.SetText 1, linti, 0
Next

SpdBales.BlockMode = True
SpdBales.Row = 1
SpdBales.Row2 = SpdBales.DataRowCnt
SpdBales.Col = 1
SpdBales.Col2 = 1
SpdBales.Lock = True
SpdBales.BlockMode = False
'
'Dim irow As Integer
'For irow = 1 To s
'
'  With SpdBales
'    .Row = irow
'    .Col = 1
'    .Value = 1
''    ChkCount = ChkCount + 1
'End With
'
'
    
'Next

Text13.Text = SBale
Text14.Locked = False
Text14.Text = EBale
Text14.Locked = True
'Text14.SetFocus
If OptSequence = True Then Text14.tabIndex = OptSequence.tabIndex + 1
'Command1.Enabled = True
BUTTON(9).Enabled = False
BUTTON(10).Enabled = False
BUTTON(12).Enabled = False
Command7.Enabled = False
Command10.Enabled = False

Exit Sub
OptSequence_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptSequence_Click of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub OptSequence_GotFocus()
On Error GoTo OptSequence_GotFocus_Error
    Command1.Enabled = False
    Text14.Enabled = True
    StatusBar1.Panels(2).Text = " Select Sequential Bales No.(s)"

Exit Sub
OptSequence_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptSequence_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptSequence_KeyPress(KeyAscii As Integer)
On Error GoTo OptSequence_KeyPress_Error

    If KeyAscii = vbKeyTab Or KeyAscii = 13 Then
        Text14.tabIndex = OptSequence.tabIndex + 1
        Text14.SetFocus
        Command1.Enabled = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        BUTTON(12).Enabled = False
        Command7.Enabled = False
        Command10.Enabled = False
    End If

Exit Sub
OptSequence_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptSequence_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub OptSequence_LostFocus()
'    Text14.SetFocus
On Error GoTo OptSequence_LostFocus_Error

    

Exit Sub
OptSequence_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OptSequence_LostFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SpdBales_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
On Error GoTo SpdBales_ButtonClicked_Error

On Error GoTo SpdBales_ButtonClicked_Error

With SpdBales
    If Col = E_SpdBal.SprdCheck Then
            .Row = Row
            .Col = E_SpdBal.SprdCheck
            If .value = 1 Then
            ChkCount = ChkCount + 1
            .Action = 0
         ElseIf .value = 0 And ChkCount > 0 Then
            ChkCount = ChkCount - 1
            .Action = 0
         End If
    End If
End With

Dim lvar As Variant
SpdBales.GetText 1, Row, lvar
If val(lvar) <> 0 Then
    If OptSequence.value = True Or ChkCount > TotalBale Then
        SpdBales.SetText 1, Row, 0
    End If
End If


Exit Sub
SpdBales_ButtonClicked_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdBales_ButtonClicked of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0

End Sub

Private Sub SpdBales_Change(ByVal Col As Long, ByVal Row As Long)
On Error GoTo SpdBales_Change_Error

    Command10.Enabled = True
    Command1.Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(12).Enabled = False

Exit Sub
SpdBales_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdBales_Change of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SpdBales_KeyPress(KeyAscii As Integer)
On Error GoTo SpdBales_KeyPress_Error

    If KeyAscii = vbKeyTab Then Command4.SetFocus

Exit Sub
SpdBales_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdBales_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Text11_Change()
'    'TxtNetWt.Text = Text11.Text
'On Error GoTo Text11_Change_Error
'
'
'
'Exit Sub
'Text11_Change_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text11_Change of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text13_KeyPress(KeyAscii As Integer)
'On Error GoTo Text13_KeyPress_Error
'
'  Call tonum(Text13, 3, KeyAscii, 0)
'
'Exit Sub
'Text13_KeyPress_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text13_KeyPress of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text13_LostFocus()
'iLen = 3
''If Opt = "add" Then
''    'Text13.Text = grdData.Columns(0).Text
''    If s > 0 And val(Text13.Text) > 0 Then
''      If avilbalers.RecordCount <> s Then
''        If val(Text13.Text + s - 2) >= avilbalers.RecordCount Then
''          'MsgBox "Issued Bales is not Matching", vbInformation, head
''          Text13.SetFocus
''          Exit Sub
''        End If
''      End If
''      If avilbalers.RecordCount = s Then
''        grdData.Row = avilbalers.RecordCount - 1
''      Else
''        grdData.Row = val(Text13.Text + s - 2)
''      End If
''    End If
'On Error GoTo Text13_LostFocus_Error
'
'    TotalBale = val(grddatagrid.Columns("Issued Bales"))
'    EBaleNo = (val(Text13.Text) + val(grddatagrid.Columns("Issued Bales"))) - 1
'    Text14.Text = EBaleNo
'    Text14.Locked = True
''    'Text13.SetFocus
''    Call Text14_LostFocus
''    Command1.SetFocus
''End If
'
'Exit Sub
'Text13_LostFocus_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text13_LostFocus of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub

Private Sub Text14_KeyDown(KeyCode As Integer, Shift As Integer)
'    If KeyCode = 13 Then
'        Command1.Enabled = True
'        Command1.SetFocus
'    End If
On Error GoTo Text14_KeyDown_Error

    

Exit Sub
Text14_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text14_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Text14_KeyPress(KeyAscii As Integer)
'On Error GoTo Text14_KeyPress_Error
'
'  Call tonum(Text14, 3, KeyAscii, 0)
'
'Exit Sub
'Text14_KeyPress_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text14_KeyPress of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'Private Sub Text14_LostFocus()
'On Error GoTo Text14_LostFocus_Error
'If OptSequence.value = True Then
'        If Opt = "add" Or Opt = "mod" Then
'            If val(Text14.Text) <> 0 And val(Text13.Text) <> 0 Then
'                If val(Text14.Text) >= val(Text13.Text) Then
'                    CHFLG1 = "N"
'                    CHFLG2 = "N"
'                    TOTBALES = 0
'                    avilbalers.MoveFirst
'                     While Not avilbalers.EOF
'                          If avilbalers(0) = val(Text13.Text) Then
'                            CHFLG1 = "Y"
'                         End If
'                        If avilbalers(0) = val(Text14.Text) Then
'                            CHFLG2 = "Y"
'                         End If
'
'                        If val(Text13.Text) <= avilbalers(0) And avilbalers(0) <= val(Text14.Text) Then
'                            TOTBALES = TOTBALES + 1
'                        End If
'                        avilbalers.MoveNext
'                    Wend
'                    avilbalers.MoveFirst
'
'                    If TOTBALES <> val(grddatagrid.Columns(9).Text) Then
'                        MsgBox "Issued Bales are not Matching", vbInformation, head
'                        Text13.SetFocus
'                        Exit Sub
'                    End If
'                    If CHFLG1 = "N" Then
'                        MsgBox "From Bale No. must be With in Available Bale No.", vbInformation, head
'                        'Text13.SetFocus
'                        Exit Sub
'                    End If
'                    If CHFLG2 = "N" Then
'                        MsgBox "To Bale No. must be With in Available Bale No.", vbInformation, head
'                        'Text14.SetFocus
'                        Exit Sub
'                    End If
'                    avilbalers.MoveFirst
'                    Set avilbalers1 = New Recordset
'                    If adoSecondaryRS.RecordCount > 0 Then
'                        Set rslotcheck = New Recordset
'                        rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",b.PLOTNO ""Party Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_issReqB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
'                        Set rslotcheck.DataSource = adoSecondaryRS
'
'                        baleno = ""
'                        rslotcheck.MoveFirst
'                        g = 1
'                        For i = 1 To rslotcheck.RecordCount
'                            If rslotcheck("Lot No.") = grddatagrid.Columns(0).Text And rslotcheck("Date") = grddatagrid.Columns(1).Text And rslotcheck(2) = grddatagrid.Columns(5).Text And rslotcheck("Variety") = grddatagrid.Columns(4).Text Then
'                                If g = 1 Then
'                                   baleno = rslotcheck("baleno")
'                                Else
'                                   baleno = baleno & "," & rslotcheck("baleno")
'                                End If
'                                g = g + 1
'                            End If
'                            rslotcheck.MoveNext
'                        Next
'                        g = 0
'                        If baleno = "" Then
'                            baleno = 0
'                        End If
'                        avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grddatagrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'                    Else
'                        avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grddatagrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'                    End If
'
'                    totbale = val(Text14.Text) - val(Text13.Text) + 1
'                    Text3.Text = totbale
'                    If avilbalers1.RecordCount > 0 Then
'                        Set balers = New Recordset
'                        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grddatagrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'                        tgwt = 0
'                        tnwt = 0
'                        rec_cnt = 1
'                        grid.clear
'                        grid.AddItem ""
'                        Do While Not avilbalers.EOF
'                            Set balers = New Recordset
'                            balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND varcode='" & grddatagrid.Columns(4).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and baleno='" & avilbalers1("Baleno") & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'                            grid.TextMatrix(rec_cnt, 0) = rec_cnt
'                            grid.TextMatrix(rec_cnt, 1) = avilbalers1("Baleno")
'                            grid.TextMatrix(rec_cnt, 2) = Format(balers("gross weight"), "0.000")
'                            tgwt = tgwt + balers("gross weight")
'                            Text9.Text = Format(val(tgwt), "0.000")
'                            grid.TextMatrix(rec_cnt, 3) = Format(balers("Tare weight"), "0.000")
'                            ttwt = ttwt + balers("Tare weight")
'                            Text10.Text = Format(val(ttwt), "0.000")
'                            grid.TextMatrix(rec_cnt, 4) = Format(balers("net weight"), "0.000")
'                            tnwt = tnwt + balers("net weight")
'                            Text11.Text = Format(val(tnwt), "0.000")
'                            grid.TextMatrix(rec_cnt, 6) = "Y"
'
'                            Set rstPARAM = New Recordset
'                            rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                            If rstPARAM!actualIssueKgs = "Z" Then
'                                grid.TextMatrix(rec_cnt, 5) = "0.000"
'                            Else
'                                grid.TextMatrix(rec_cnt, 5) = Format(balers("net weight"), "0.000")
'                            End If
'
'                            'grid.TextMatrix(rec_cnt, 5) = balers("net weight")
'
'                            Set chrs = New Recordset
'                            chrs.Open "select awt_flg from rm_lot where  DIVCODE='" & Divcode & "' AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
'                            If IsNull(chrs(0)) Then
'                                chrs(0) = ""
'                            End If
'
'                            If chrs(0) = "Y" Then
'                                Set rstPARAM = New Recordset
'                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                                If rstPARAM!actualIssueKgs = "Z" Then
'                                    grid.TextMatrix(rec_cnt, 5) = "0.000"
'                                Else
'                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, Format(balers("net weight"), "0.000"), Text8)
'                                End If
'
'                                'grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
'                                taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
'                                Text4.Text = Format(val(taisswt), "0.000")
'                            End If
'                            If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
'                                Set rstPARAM = New Recordset
'                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                                If rstPARAM!actualIssueKgs = "Z" Then
'                                    grid.TextMatrix(rec_cnt, 5) = "0.000"
'                                Else
'                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, Format(balers("net weight"), "0.000"), Text8)
'                                End If
'
''                                grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
'                                taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
'                                Text4.Text = Format(val(taisswt), "0.000")
'                            End If
'                            If chrs(0) = "N" Then
'                                Set rstPARAM = New Recordset
'                                rstPARAM.Open "Select ActualIssueKgs from Rm_PARAM", DB, adOpenStatic
'                                If rstPARAM!actualIssueKgs = "Z" Then
'                                    grid.TextMatrix(rec_cnt, 5) = "0.000"
'                                Else
'                                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
'                                End If
'
''                                grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
'                                Text4.Text = Format(val(taisswt), "0.000")
'                            End If
'                            avilbalers1.MoveNext
'                            rec_cnt = rec_cnt + 1
'                            If Not avilbalers1.EOF Then
'                                grid.AddItem ""
'                            End If
'                            grid.ColAllowEdit(5) = True
'                            Command1.Enabled = True
'
'                            If rec_cnt > TOTBALES Then
'                                Command7.Enabled = False
'                                Command1.Enabled = True
'                                Command1.SetFocus
'                                Exit Do
'                            Else
'                                Command1.Enabled = False
'                                Command7.Enabled = True
'                            End If
'                        Loop
''                        grid.SetFocus
'
'                        tbnoG = 0
'                        netwtG = 0
'                        TAREG = 0
'                        GROSWTG = 0
'                        ACTISSKGSG = 0
'                        For i = 1 To grid.Rows
'                            If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 6) <> "" Then
'                              tbnoG = tbnoG + 1
'                              ACTISSKGSG = ACTISSKGSG + val(grid.TextMatrix(i, 5))
'                              netwtG = netwtG + val(grid.TextMatrix(i, 4))
'                              GROSWTG = GROSWTG + val(grid.TextMatrix(i, 2))
'                              TAREG = TAREG + val(grid.TextMatrix(i, 3))
'                            End If
'                        Next
'                        Text11.Text = Format(netwtG, "0.000")
'                        Text10.Text = Format(TAREG, "0.000")
'                        Text9.Text = Format(GROSWTG, "0.000")
'                        Text4.Text = Format(ACTISSKGSG, "0.000")
'                        Text3.Text = tbnoG
'
'
'
'                        TxtTotBales.Text = Format(vTotBal + val(Text3.Text), "0.000")
'                        TxtNetWt.Text = Format(vNetWt + val(Text11.Text), "0.000")
'                        TxtActWt.Text = Format(vActWt + val(Text4.Text), "0.000")
'
'                         Exit Sub
'                  End If
'                End If
'            End If
'        End If
'  End If
'  BUTTON(9).Enabled = False
'  BUTTON(10).Enabled = False
'  If OptIndividual = True Then SpdBales.SetFocus
'Exit Sub
'Text14_LostFocus_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text14_LostFocus of Form FrmissueKgs", vbInformation, head
'End Sub


Private Sub Text16_KeyDown(KeyCode As Integer, Shift As Integer)
'On Error GoTo Text16_KeyDown_Error
'
'If Option7.value = True Then
'    KeyCode = 0
'End If
'
'Exit Sub
'Text16_KeyDown_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text16_KeyDown of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text3_Change()
'    'TxtTotBales.Text = Text3.Text
'On Error GoTo Text3_Change_Error
'
'
'
'Exit Sub
'Text3_Change_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text3_Change of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text4_Change()
'    'TxtActWt.Text = Text4.Text
'On Error GoTo Text4_Change_Error
'
'
'
'Exit Sub
'Text4_Change_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text4_Change of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text7_Click()
'''Text7.SetFocus
'
'On Error GoTo Text7_Click_Error
'
'
'
'Exit Sub
'Text7_Click_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_Click of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
'On Error GoTo Text7_KeyDown_Error
'
'If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
'    SendKeys ("{TAB}")
'    Exit Sub
'End If
'
'Exit Sub
'Text7_KeyDown_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_KeyDown of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text7_KeyPress(KeyAscii As Integer)
'
'On Error GoTo Text7_KeyPress_Error
'
'Call tonum(Text7, 3, KeyAscii, 0)
'
'If Opt = "add" Then
'
'Set balers = New Recordset
'
'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'  order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'
'If balers.RecordCount > 0 Then
'Label25.Caption = balers("net weight")
'Else
''MsgBox " This Baleno  Already issued", vbInformation, head
''Text7.SetFocus
'End If
''Text8.SetFocus
'
'If KeyAscii = 13 Then
'    Text8.SetFocus
'End If
'End If
'
'
'Exit Sub
'Text7_KeyPress_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_KeyPress of Form FrmissueKgs", vbInformation, head
'End Sub
'
'Private Sub Text7_LostFocus()
'On Error GoTo Text7_LostFocus_Error
'
'If Opt = "add" And Text7.Text <> "" Then
'Text8.Locked = False
'Text7.Locked = False
'Set balers = New Recordset
'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'If balers.RecordCount > 0 Then
'    Label25.Caption = balers("net weight")
'Else
'    'MsgBox " Invalid Bale No.", vbInformation, head
'    Text7.SetFocus
'    Exit Sub
'End If
''Text8.SetFocus
'End If
'If Opt = "add" Then
'Text8.Locked = False
'Text7.Locked = False
'Text8.SetFocus
'End If
'
'
'Exit Sub
'Text7_LostFocus_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_LostFocus of Form FrmissueKgs", vbInformation, head
'End Sub
'
'Private Sub Text7_Validate(Cancel As Boolean)
'On Error GoTo Text7_Validate_Error
'
'If Opt = "add" And Text7.Text <> "" Then
'Text8.Locked = False
'Text7.Locked = False
'Set balers = New Recordset
'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where  DIVCODE='" & Divcode & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(6).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
'If balers.RecordCount > 0 Then
'    Label25.Caption = balers("net weight")
'Else
'    MsgBox "Please enter a valid Bale No.", vbInformation, head
'    Text7.SetFocus
'End If
''Text8.SetFocus
'End If
'
'
'Exit Sub
'Text7_Validate_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text7_Validate of Form FrmissueKgs", vbInformation, head
'End Sub
'
'Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
'On Error GoTo Text8_KeyDown_Error
'
'    If KeyCode = 13 Then
'        SendKeys "{TAB}"
'    End If
'
'Exit Sub
'Text8_KeyDown_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_KeyDown of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text8_KeyPress(KeyAscii As Integer)
'On Error Resume Next
'If Opt = "add" Then
'If KeyAscii = 13 Then
'    If val(grddatagrid.Columns(8).Text) = val(tbno) Then
'Command7.Enabled = False
'Command1.Enabled = True
'Command1.SetFocus
'Else
'    Command7.SetFocus
' End If
'End If
'End If
'End Sub
'Private Sub Text8_LostFocus()
'On Error GoTo Text8_LostFocus_Error
'
'If Opt = "add" Then
''If Text8.Text = "" Then
''MsgBox " Enter issue Kgs", vbInformation, head
''Else
'If val(grddatagrid.Columns(8).Text) = val(tbno) Then
'    Command7.Enabled = False
'    Command1.Enabled = True
'    Command1.SetFocus
'Else
'    If Command7.Visible = True And Command7.Enabled = True Then Command7.SetFocus
'End If
'End If
'
'Exit Sub
'Text8_LostFocus_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_LostFocus of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text8_Validate(Cancel As Boolean)
'On Error GoTo Text8_Validate_Error
'
'If Opt = "add" Then
'grddatagrid.Enabled = False
'Command1.Enabled = True
'Frame1.Visible = True
'Frame1.Enabled = True
'SSTab2.Tab = 1
''Command7.SetFocus
'grid.Enabled = True
'End If
'
'Exit Sub
'Text8_Validate_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text8_Validate of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = 13 Then
'Set balers = New Recordset
'      ''''
''''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'
'      If balers.RecordCount > 0 Then
'
''      For I = 1 To s
'
'      DataGrid1.Columns(0).Text = balers("baleno")
'      DataGrid1.Columns(1).Text = balers("Gross weight")
'      DataGrid1.Columns(2).Text = balers("Tare weight")
'      DataGrid1.Columns(3).Locked=
'      DataGrid1.Columns(3).Text = balers("Net Weight")
'      balers.AddNew
''      Next
'      'Set DataGrid1.DataSource = balers
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      DataGrid1.Col = 4
'      DataGrid1.Enabled = True
'      DataGrid1.Enabled = True
'      DataGrid1.AllowUpdate = True
'      DataGrid1.EditActive = True
'      DataGrid1.Columns(2).Locked = True
'      DataGrid1.Columns(0).Locked = True
'      DataGrid1.Columns(1).Locked = True
'      'DataGrid1.Columns(3).Locked = False
'      DataGrid1.Columns(4).Locked = False
'      DataGrid1.Columns(4).Text = Empty
'      DataGrid1.Columns(4).Width = 1980.284
'      DataGrid1.Columns(3).Width = 1980.284
'      DataGrid1.Columns(2).Width = 1085.166
'      DataGrid1.Columns(1).Width = 1250.142
'      DataGrid1.Columns(0).Width = 1544.882
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'      DataGrid1.Columns(4).Alignment = dbgRight
'      DataGrid1.Columns(4).NumberFormat = "######.000"
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      grdDataGrid.Enabled = False
'      Command1.Enabled = True
'      Frame1.Visible = True
'      Frame1.Enabled = True
'      'txtfields(3).SetFocus
'      sstAB2.SetFocus
'      'DataGrid1.AllowAddNew
'      Else
'      MsgBox " This Baleno  Already issued", vbInformation, head
'      Text7.SetFocus
'      End If
'Text7.Text = ""
'Text8.Text = ""
'End If
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Then
   Select Case Index
     Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           text2.Text = Rs(0)
        End If
        Rs.Close
    Case 1
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(1).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text5.Text = Rs(0)
        End If
        Rs.Close
     Case 3
'        Set Rs = New Recordset
'        Rs.Open "select oildesc from rm_oil where oilcode = '" & Txtfields(3).Text & "' ", DB, adOpenStatic
'        If Rs.RecordCount <> 0 Then
'           Text1.Text = Rs(0)
'        Else
'           Text1.Text = ""
'        End If
'        Rs.Close
     Case 11
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & Txtfields(11).Text & "' ", DB, adOpenStatic
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
         Txtfields(4).Text = Format(val(Txtfields(4).Text), "#0.000")
      Case 5
         Txtfields(5).Text = Format(val(Txtfields(5).Text), "#0.000")
      Case 14
         Txtfields(14).Text = Format(val(Txtfields(14).Text), "#0.00")
   End Select
End If
         
        ' Txtfields(12).Text = Format(Txtfields(12).Text, "#0.000")


Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

Txtfields(Index).BackColor = &HC0FFC0
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
                    StatusBar1.Panels(2).Text = "Enter Oil Code"
               Case 4
                    StatusBar1.Panels(2).Text = "Enter Oil Weight"
               Case 5
                    StatusBar1.Panels(2).Text = "Enter Water Weight"
               Case 14
                    StatusBar1.Panels(2).Text = "Enter Soft Waste, Maximum 7 Integer with 2 decimals"
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
            If Opt = "add" Or Opt = "mod" Then
              If Str <> "n" Then
                    Str = "n"
                    Set Rs = New Recordset
                    Rs.Open "select count(*) from rm_oil", DB
                    If Not Rs(0) = 0 Then
                    Else
                        'MsgBox "No record Found", vbInformation, head
                        Exit Sub
                    End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
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
        'Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        'Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        'Call BUTTON_Click(9)    ''Save
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Index = 0 And Opt = "add" And KeyAscii = 13 Then
      If Combo1.Text = "P-Production" And Trim(Txtfields(0)) <> "" Then
''         Txtfields(7).Text = UCase(Txtfields(7).Text)
''         Set rs = New Recordset
''         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
''         ''rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqB WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
''         Txtfields(0).Text = rs(0)
''         Call adddelmod(BUTTON)
''         BUTTON(9).Enabled = False
''         BUTTON(9).ToolTipText = "Add Record"
''         Txtfields(0).Locked = True
''         MaskEdBox1(0).Text = pdate
''         Txtfields(0).SetFocus
''         sstAB2.TabEnabled(1) = True
      End If
   End If

If Opt = "" Or Opt = " " Or Opt = "del" Then
   KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 14
        Call ToNumberAssign(Txtfields(Index), 7, KeyAscii, 7, 2)
   Case 1, 3
        ToUpCase Txtfields(Index), KeyAscii
   Case 4, 5
        Call ToNum1(Txtfields(Index), 5, KeyAscii, 0)
   End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
Txtfields(Index).BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
   If Index = 5 Then
      Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
      ''TXTFIELDS(6).SetFocus
      ''BUTTON(9).SetFocus
   End If
   If Index = 13 Then
      Txtfields(13).Text = UCase(Txtfields(13).Text)
      If Txtisstype = "P" Then
       ' Txtfields(14).SetFocus
        Exit Sub
      End If
   End If
    If Index = 14 Then
      Txtfields(14).Text = Format(val(Txtfields(14).Text), "0.00")
      If Txtisstype = "P" And LookUp.Visible = False Then
            grddatagrid.Col = 0
            If grddatagrid.Enabled = True Then grddatagrid.SetFocus
            Exit Sub
      End If
   End If

   If Index = 4 Then
      Txtfields(4).Text = Format(Txtfields(4).Text, "#0.000")
   End If
   If Index = 6 Then
      ''sstAB2.Tab = 1
   End If
   If Index = 0 And Opt = "add" Then
      If Combo1.Text = "PR--PRODUCTION" And Trim(Txtfields(0)) = "" Then
''         'txtFields(7).Text = UCase(txtFields(7).Text)
''         Set rs = New Recordset
''         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqH WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
''         rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM RM_issReqB WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
''         Txtfields(0).Text = rs(0)
''         Call adddelmod(BUTTON)
''         BUTTON(9).Enabled = False
''         BUTTON(9).ToolTipText = "Add Record"
''         Txtfields(0).Locked = True
''         MaskEdBox1(0).Text = pdate
''         Txtfields(0).SetFocus
''         sstAB2.TabEnabled(1) = True
      End If
   End If
End If
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 3, 11
   
   If Txtfields(3).Text <> "" Or Txtfields(11).Text <> "" Then
'         Set Rs = New Recordset
'           Rs.Open "select oilcode from rm_oil where oilcode='" & Trim(Txtfields(Index).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
'           If Rs.RecordCount = 0 Then
'              Set Rs = New Recordset
'              Rs.Open "select count(*) from rm_oil", DB
'              If Not Rs(0) = 0 Then
'                 If Index = 3 Then
'                    Call LookuPLoad("oilCode as Code", "Oildesc as Name", "rm_oil", Txtfields(4), Txtfields(4), Txtfields(3), Txtfields(1), "Oil Listing")
'                 End If
'                 If Index = 11 Then
'                    Call LookuPLoad("oilCode as Code", "Oildesc as Name", "rm_oil", Txtfields(12), Txtfields(12), Txtfields(11), Txtfields(1), "Oil Listing")
'                 End If
'              Else
'                 MsgBox "No record Found"
'                 Screen.MousePointer = 0
'                 Exit Sub
'              End If
'           End If
    End If
If Index = 1 Then
    Txtfields(1).SetFocus
End If
   End Select
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub gridalign()
If Opt = "mod" Then
   grddatagrid.Columns(1).Locked = True
   grddatagrid.Columns(2).Locked = True
   grddatagrid.Columns(3).Locked = True
   grddatagrid.Columns(4).Locked = False
   grddatagrid.Columns(5).Locked = True
   grddatagrid.Columns(6).Locked = True
'   grddatagrid.Columns(7).Locked = True
'   grddatagrid.Columns(8).Locked = True
'   grddatagrid.Columns(9).Locked = True
'   grddatagrid.Columns(10).Locked = False
'   grddatagrid.Columns(11).Locked = False
Else
   grddatagrid.Columns(1).Locked = True
   grddatagrid.Columns(2).Locked = True
   grddatagrid.Columns(3).Locked = True
   grddatagrid.Columns(4).Locked = True
   grddatagrid.Columns(5).Locked = True
   grddatagrid.Columns(6).Locked = True
   grddatagrid.Columns(7).Locked = True
   grddatagrid.Columns(8).Locked = True
    If Opt = "add" Then grddatagrid.Columns(8).NumberFormat = "######.000"
    
    If Opt = "add" Or Opt = "mod" Then
    
    End If
    
   
End If

End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error

If Opt = "" Or Opt = " " Or Opt = "query" Then
   grddatagrid.Enabled = True
'   lblctrl.Visible = False
    Frame10.Visible = False
   Timer1.Enabled = False
   Set adoPrimaryRS = New Recordset
   If Opt <> "mod" Then
     Dim sQry As String
'     sQry = "SHAPE {SELECT TOP 1 DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,ISSUEFLG FROM RM_issReqH  " & _
                        "  where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " Order by A.DOCNO DESC} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.Plotno""Supplier Lot No"",VARname""Variety Name"",a.CATCD""Category"",a.baleno""Quantity""  FROM RM_issReqB a,rm_lot b,rm_var c  " & _
                        " where c.varcode=a.varcode and b.varcode=c.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' " & _
                        " order by docno } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD"
'    sQry = "SELECT top 10 DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,ISSUEFLG,isnull(AppBy,'') appby FROM RM_issReqH  a " & _
'                        "  where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
'                        " Order by A.DOCNO "
    sQry = "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,ISSUEFLG,isnull(AppBy,'') appby,noofissues FROM RM_issReqH  a " & _
                        "  where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " Order by A.DOCNO "
      adoPrimaryRS.Open sQry, DB, adOpenStatic, adLockBatchOptimistic
        Call clears
      If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MoveLast
        'Bind the text boxes,check boxes and option buttons to the data source
         Call bindcontls
    
        If adoPrimaryRS("isstype") = "BT" Then
            If IsNull(adoPrimaryRS("FORM")) = False Then
                If adoPrimaryRS("FORM") = "Form XX" Then
                    Option5.value = True
                ElseIf adoPrimaryRS("FORM") = "Form XXVII" Then
                    Option6.value = True
                Else
                    Option7.value = True
                End If
            End If
        End If

         Set rsa = New Recordset
         rsa.Open "select Issue_code + ' - ' + issue_desc from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
                Combo1.Text = rsa(0)
         End If

         Call disablcontls
'         SSTab2.TabEnabled(1) = False
         'Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
         
         Set ADOSECONDARYRS = New Recordset
         ADOSECONDARYRS.Open " SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.Plotno""Supplier Lot No"",VARname""Variety Name"",a.CATCD""Category"",a.baleno""Quantity"",rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10  FROM RM_issReqB a " & _
                             " inner join rm_lot b on a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode " & _
                             " inner join rm_var c  on c.varcode=a.varcode and b.varcode=c.varcode " & _
                             " where DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' and a.docno=" & adoPrimaryRS("Docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
         
         Set grddatagrid.DataSource = ADOSECONDARYRS
         grddatagrid.Columns(0).Visible = False
         grddatagrid.Columns(1).Visible = False
         grddatagrid.Columns(2).Visible = False
         grddatagrid.Columns(3).Visible = False
         grddatagrid.Columns(4).Width = 1000
         grddatagrid.Columns(5).Width = 1300
         grddatagrid.Columns(6).Width = 1000
         grddatagrid.Columns(7).Width = 1500
         grddatagrid.Columns(8).Width = 1500
         grddatagrid.Columns(9).Width = 1200
         grddatagrid.Columns(10).Width = 1200
'         grddatagrid.Columns(11).Width = 1000
'         grddatagrid.Columns(12).Width = 1000
'         grddatagrid.Columns(11).NumberFormat = "#######.000"
'         grddatagrid.Columns(11).Alignment = dbgRight
'         grddatagrid.Columns(10).Alignment = dbgRight
         grddatagrid.Columns(10).Alignment = dbgRight
              
         grddatagrid.Columns(11).Alignment = dbgRight
         grddatagrid.Columns(11).Width = 1500
         grddatagrid.Columns(11).Locked = True
         grddatagrid.Columns(11).Caption = "Remaining Bales"
         
         If Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
         I = 1
         For I = I To 10
             grddatagrid.Columns(11 + I).Visible = True
              grddatagrid.Columns(11 + I).Width = 1500
         Next
        End If
   
         SSTab2.Tab = 0
'         Frame1.Visible = True
         Frame7.Visible = True
         grddatagrid.AllowUpdate = False
         desc.Caption = "Query"
         'This variable is declared as global to show the date
         DATLAB.Caption = pdate
         'Calling newform procedure from Module to disable buttons
         '----
         If Opt <> "add" Then
            If adoPrimaryRS.RecordCount > 0 Then
               On Error Resume Next
               Set RS2 = ADOSECONDARYRS
               If RS2.RecordCount > 0 Then
                  RS2.MoveFirst
                  Set rs1 = New Recordset
                  rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where 1=2", DB, adOpenStatic, adLockBatchOptimistic
                  s = 0: c = 0
''                  Do While Not rs2.EOF
''                     Set rs = New Recordset
''                     rs.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where STATUS IN ('AC','AW') AND lotno=" & rs2(4) & " and lotdt='" & Format(rs2(5), "yyyy-mm-dd") & "' and baleno=" & rs2(10) & "  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
''                     c = c + 1
''                     RS1.AddNew
''                     RS1("Baleno") = rs(0)
''                     RS1("Gross Weight") = Format(rs(1), "#0.000")
''                     RS1("Tare Weight") = Format(rs(2), "#0.000")
''                     RS1("Net Weight") = Format(rs(3), "#0.000")
''                     's = s + rs(3)
''                     rs2.MoveNext
''                  Loop
               End If
            End If
         End If
        '-----
        
        '----------------ANBU---------------
        Dim balers As Recordset
'        Set balers = New Recordset
'        balers.Open "Select Count(Baleno) as Baleno,Sum(IssKgs) as IssueKgs,SUM(ActIssKgs) as ActIssKgs from RM_issReqB where DocNo='" & Trim(Txtfields(0).Text) & "' and docdt='" & Format(MaskEdBox1(1).Text, "yyyy-MM-dd") & "' ", DB
'        If Not balers.EOF Then
'            TxtTotBales.Text = balers!baleno
'            TxtNetWt.Text = Format(balers!IssueKgs, "0.000")
'            TxtActWt.Text = Format(balers!ActissKgs, "0.000")
'        Else
'            TxtTotBales.Text = 0
'            TxtNetWt.Text = 0
'            TxtActWt.Text = 0
'        End If
'        balers.Close
'        Set balers = Nothing
        '-------------------------------

        
         Call NEWFORM1(BUTTON, GSNO)
         Call disablcontls
        If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

            BUTTON(0).Enabled = False
        End If
        If Repindex = 222 Then
            BUTTON(0).Enabled = False
        End If
'         SSTab2.TabEnabled(1) = True
         Exit Sub
      Else
         MsgBox "No Records Found", vbInformation, head
         Call Norecfound(BUTTON)
         SSTab2.Visible = True

         Set grddatagrid.DataSource = Nothing
         For I = 0 To 2
            Txtfields(I).Text = ""
         Next
         Combo1.Text = ""
      End If
   End If
End If
    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
If Repindex = 222 Then
    BUTTON(0).Enabled = False
End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmissueKgs", vbInformation, head
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error

Set Rs = New Recordset
If UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA" Then
Rs.Open "select a.docno,a.docdt from RM_issReqH a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isnull(AppBy,'')='' and docno not in(select distinct issno  from rm_mixingstock where isnull(mixkgs,0)<>0 )", DB, adOpenStatic, adLockBatchOptimistic
Else
Rs.Open "select a.docno,a.docdt from RM_issReqH a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and docno not in(select distinct issno  from rm_mixingstock where isnull(mixkgs,0)<>0 )", DB, adOpenStatic, adLockBatchOptimistic
End If
If Rs.RecordCount <> 0 Then
   If Opt = "mod" Then
    StatusBar1.Panels(2).Text = "Select Any Document Number For Modification"
   Else
   StatusBar1.Panels(2).Text = "Select Any Document Number For Deletion"
   End If
   
         LookUp.Clear = True
         ''''''LookUp.query = "select distinct a.docno,a.docdt,lotno from RM_issReqH a,RM_issReqB b where a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt and a.divcode='" & Divcode & "'"
        If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then
         LookUp.query = "select distinct a.docno""Doc. No."",a.docdt""Doc. Date"",a.isstype""Issue Type"" from RM_issReqH a where  divcode='" & Divcode & "' and isnull(AppBy,'')='' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and docno not in(select distinct ISnull(ReqDocNo,0) AS SlipNo from rm_issb)"
         
         ElseIf UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA" Then
         LookUp.query = "select distinct a.docno""Doc. No."",a.docdt""Doc. Date"",a.isstype""Issue Type"" from RM_issReqH a where  divcode='" & Divcode & "' and isnull(AppBy,'')<>'' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and docno not in(select distinct ISnull(ReqDocNo,0) AS SlipNo from rm_issb)"
         
         Else
        ' LookUp.query = "select distinct a.docno""Doc. No."",a.docdt""Doc. Date"",a.isstype""Issue Type"" from RM_issReqH a where  divcode='" & Divcode & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (docno not in(select distinct ISnull(ReqDocNo,0) AS SlipNo from rm_issb) or  docdt not in(select distinct ISnull(ReqDocdt,0) AS SlipNo from rm_issb))"
          LookUp.query = "select distinct a.docno ""Doc. No."",a.docdt""Doc. Date"",a.isstype""Issue Type"" from (select distinct a.docno,a.docdt,a.isstype,b.ReqDocNo from RM_issReqH a left join rm_issb b on a.DOCNO =b.ReqDocNo and a.docdt=b.ReqDocdt and a.divcode=b.divcode where  a.divcode='" & Divcode & "'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')a where a.ReqDocNo is null "

         End If
         LookUp.Caption = "Issue Listing"
         LookUp.DefCol = "Doc. No."
         LookUp.ALIGN = "1500,1500,1500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
'            If Opt = "del" Then deltype = InputBox(" Enter Delete type " & vbCrLf & vbCrLf & "  1 - Line Deletion " & vbCrLf & "  2 - Complete Deletion " & vbCrLf & head + "Delete type", head)
'                iCount = 0
                Txtfields(0).Text = LookUp.Fields(0)
                MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/mm/yyyy")
                MaskEdBox1(0).Text = MaskEdBox1(0).Mask
                a = Txtfields(0).Text
                B = MaskEdBox1(0).Text
''                Text1.Text = ""
                iRejQty = 0
                iQty = 0
                iNewRejQty = 0
                Call delmodproc(CStr(a), CStr(B))
                'Option2.Enabled = True
                grddatagrid.Enabled = True
                If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then
                Frame8.Enabled = True
                Frame7.Enabled = True
                Txtfields(8).Locked = True
                Txtfields(1).Locked = True
                Txtfields(13).Locked = True
                Combo1.Locked = True
                BUTTON(0).Enabled = False
                End If
               
                Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                ISSFLG = Rs("issflg")
         Else
            Opt = ""
            desc.Caption = "Query"
            Screen.MousePointer = 11

             'CANCEL
             Select Case Opt
             Case "add"
                 DB.RollbackTrans
             Case "del"
                 DB.RollbackTrans
             End Select
             Opt = ""
             Call query_mode
             Screen.MousePointer = 0
             Call disablcontls
             grddatagrid.Enabled = True
            ' lblctrl.Visible = False
             Timer1.Enabled = False
             'procedure unique to this form  to set grid headings
             'calling cancl procedure from module
             Call cancl(BUTTON)
             Frame3.Visible = False
'             Frame1.Visible = True
         End If
'''   KslList1.Visible = True
'''   KslList1.conn = connectstring
'''
'''   KslList1.listfield1width = 2500
'''   KslList1.listfield2width = 5500
'''   KslList1.Caption = "Issue Details"
'''   Label15.Caption = "Issue Details"
'''   KslList1.table = "RM_issReqH"
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

    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub delmodproc(a As String, B As String)
On Error GoTo delmodproc_Error

If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
'   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste FROM RM_issReqH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No."",b.VARCODE""Variety"",c.varname,a.CATCD""Category"",(b.bales - isnull(b.issbal,0)) as ""Closing Bales"",(b.Favaourablewgt - isnull(b.isswt,0)) as ""Closing Weight"",a.baleno""Accepted Qty"",a.rejqty ""Rejected Qty""  FROM RM_issReqB a,rm_lot b,rm_var c " & _
                     " where b.varcode=c.varcode and  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                     
    adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,ISSUEFLG,AppBy,noofissues FROM RM_issReqH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by DOCNO", DB, adOpenStatic, adLockBatchOptimistic
   If Not adoPrimaryRS.EOF Then
   
   
      Call bindcontls
      If adoPrimaryRS("isstype") = "PR" Then
         Combo1.Text = "PR-Production"
      ElseIf adoPrimaryRS("isstype") = "T2" Then
         Combo1.Text = "T2-Transfer To unit2"
         ElseIf adoPrimaryRS("isstype") = "T3" Then
         Combo1.Text = "T3-Transfer To unit3"
      ElseIf adoPrimaryRS("isstype") = "SA" Then
         Combo1.Text = "SA-Sales"
      End If
      
        If adoPrimaryRS("ISSTO") = "M" Then
           Combo2.Text = "M-Mixing"
        ElseIf adoPrimaryRS("ISSTO") = "D" Then
           Combo2.Text = "D-Dying"
        End If
        
        
      
      ''Call disablcontls
      Call ENABLCONTLS
'      SSTab2.TabEnabled(1) = False
'      Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
'      Set Rs = New Recordset
'      Rs.Open " SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No."",b.VARCODE""Variety"",c.varname ""Variety Name"",a.CATCD""Category"",a.baleno""Accepted Qty"",a.rejqty ""Rejected Qty""  FROM RM_issReqB a,rm_lot b,rm_var c " & _
'                          " where b.varcode=c.varcode and  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno", DB, adOpenStatic, adLockBatchOptimistic


      Set ADOSECONDARYRS = New Recordset
      ADOSECONDARYRS.Open " SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No."",b.VARCODE""Variety"",c.varname ""Variety Name"",a.CATCD""Category"",a.baleno""Accepted Qty"",a.Rejqty as ""Rejected Qty"",rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10  FROM RM_issReqB a,rm_lot b,rm_var c " & _
                          " where b.varcode=c.varcode and   (ISNULL(b.bales,0)- ISNULL(b.ISSbal,0)) >0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno", DB, adOpenStatic, adLockBatchOptimistic
      Set grddatagrid.DataSource = ADOSECONDARYRS
      grddatagrid.EditActive = True
      grddatagrid.Columns(10).Locked = True
      
      
      grddatagrid.Columns(0).Visible = False
      grddatagrid.Columns(1).Visible = False
      grddatagrid.Columns(2).Visible = False
      grddatagrid.Columns(3).Visible = False
      grddatagrid.Columns(4).Width = 800
      grddatagrid.Columns(5).Width = 1100
      grddatagrid.Columns(6).Width = 1100
      grddatagrid.Columns(7).Width = 1400
      grddatagrid.Columns(8).Width = 700
      grddatagrid.Columns(10).Width = 1000
      grddatagrid.Columns(9).Width = 1200
      grddatagrid.Columns(11).Width = 1300
      grddatagrid.Columns(12).Width = 1300
'      grdDataGrid.Columns(13).Width = 1400
  '    grddatagrid.Columns(11).Alignment = dbgRight
  '    grddatagrid.Columns(12).Alignment = dbgRight

  '    grddatagrid.Columns(12).NumberFormat = "0.000"

      grddatagrid.Columns(11).Alignment = dbgRight
      grddatagrid.Columns(12).Alignment = dbgRight
      
'      grdDataGrid.Columns(13).Locked = False
      
       grddatagrid.Columns(13).Alignment = dbgRight
        grddatagrid.Columns(13).Width = 1500
         grddatagrid.Columns(13).Locked = True
          grddatagrid.Columns(13).Caption = "Remaining Bales"
          
      SSTab2.Tab = 0
      grddatagrid.AllowUpdate = True
      Frame2.Visible = True

      For I = 0 To 10 Step 1
        grddatagrid.Columns(I).Locked = True
      Next
      
      If Opt = "mod" Then
      
         I = 1
         For I = I To 10
             grddatagrid.Columns(13 + I).Visible = True
              grddatagrid.Columns(13 + I).Width = 1500
         Next
        End If
        
      grddatagrid.AllowUpdate = True
      grddatagrid.AllowAddNew = True
      Screen.MousePointer = 0
      Call gridalign
      grddatagrid.Col = 11
      grddatagrid.Enabled = True
      grddatagrid.EditActive = True
      If grddatagrid.Enabled = True Then grddatagrid.SetFocus
      Exit Sub
   Else
      Set grddatagrid.DataSource = Nothing
   End If
Else
   BUTTON(9).Enabled = True
'   BUTTON(10).Enabled = True
   Set adoPrimaryRS = New Recordset
   ''adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno FROM RM_issReqH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({(SELECT distinct a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,a.VARCODE""Variety"",a.CATCD""Category"",b.ISSwt""Issued Kgs"",b.issbal""Bale No.""  FROM RM_issReqB a,rm_lot b " & _
                     " where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and  docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "') Order by A.LOTno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,ISSUEFLG,noofissues FROM RM_issReqH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No"",b.VARCODE""Variety"",a.CATCD""Category"",a.baleno""Bale No.""  FROM RM_issReqB a,rm_lot b " & _
                     " where   a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                     
Set ADOSECONDARYRS = New Recordset
ADOSECONDARYRS.Open "SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Lot Date"",b.LotType""Lot Type"",b.plotno""Supplier Lot No"",b.VARCODE""Variety"",a.CATCD""Category"",a.baleno ""Quantity"",rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10  FROM RM_issReqB a,rm_lot b " & _
                     " where  a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno", DB, adOpenStatic, adLockBatchOptimistic
 Set TmpDelRs = ADOSECONDARYRS
   'Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
   Set grddatagrid.DataSource = ADOSECONDARYRS
   Call gridalign
   
   grddatagrid.Columns(0).Visible = False
   grddatagrid.Columns(1).Visible = False
   grddatagrid.Columns(2).Visible = False
   grddatagrid.Columns(3).Visible = False
   
'    grddatagrid.Columns(12).Visible = True
'    grddatagrid.Columns(13).Visible = False
'    grddatagrid.Columns(14).Visible = False
'    grddatagrid.Columns(15).Visible = False
    grddatagrid.Columns(4).Width = 1000
      grddatagrid.Columns(5).Width = 1300
      grddatagrid.Columns(6).Width = 1000
      grddatagrid.Columns(7).Width = 1500
      grddatagrid.Columns(8).Width = 1000
      grddatagrid.Columns(9).Width = 1000
      grddatagrid.Columns(10).Width = 2000
'      grddatagrid.Columns(11).Width = 1214.929
'          grddatagrid.Columns(12).Width = 1200
          grddatagrid.Columns(9).Alignment = dbgRight
          grddatagrid.Columns(10).Alignment = dbgRight
   Call bindcontls
   SSTab2.Visible = True
   grddatagrid.Visible = True
   grddatagrid.Enabled = True
   grddatagrid.AllowUpdate = True
   
     If Opt = "fnd" Or Opt = "del" Then
       grddatagrid.Columns(11).Alignment = dbgRight
        grddatagrid.Columns(11).Width = 1500
         grddatagrid.Columns(11).Locked = True
          grddatagrid.Columns(11).Caption = "Remaining Bales"
          
         I = 1
         For I = I To 10
             grddatagrid.Columns(11 + I).Visible = True
              grddatagrid.Columns(11 + I).Width = 1500
         Next
        End If
        
'   SSTab2.TabEnabled(1) = False
   ''Call GRIDALIGN
End If
If Opt = "mod" Then
   Frame2.Visible = True
   grddatagrid.AllowUpdate = True
   grddatagrid.AllowAddNew = True
   grddatagrid.EditActive = True
   grddatagrid.Enabled = True
   Screen.MousePointer = 0
   Call gridalign
   grddatagrid.Columns(4).Locked = True
End If
Screen.MousePointer = 0

    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form FrmissueKgs", vbInformation, head
End Sub

Public Sub navi1(tol As Object)
tol(0).Enabled = True 'ADD
'tol(1).Enabled = True 'MOD
tol(2).Enabled = True 'DEL
On Error Resume Next
'  tol(3).Enabled = True 'LIST
tol(4).Enabled = True  'QUERY
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

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index

Case 8
    Call MixgrpLookup
Case 1
Set Rs = New Recordset
Rs.Open "select isstype from rm_issuetype where issue_code='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    ISSTYPE = Rs(0)
Else
    ISSTYPE = ""
End If


If ISSTYPE = "S" Or ISSTYPE = "J" Or ISSTYPE = "R" Then
         Set rs1 = New Recordset
         rs1.Open "Select * from masterlen", DB, adOpenStatic
            If ISSTYPE = "S" Then
               If rs1.RecordCount > 0 Then
                  'sup = rs1("ptypecottonsales") & "%"
                  'sup = Mid$(rs1("ptypecottonsales"), 1, InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
               If Len(rs1("ptypecottonsales")) > 2 Then
'                sup = Left(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
'                sup1 = Left(Mid(rs1("ptypecottonsales"), 4), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
'                sup2 = Right(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                sup = rs1("ptypecottonsales") 'Left(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                sup1 = rs1("ptypecottonsales") 'Left(Mid(rs1("ptypecottonsales"), 4), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                sup2 = rs1("ptypecottonsales") ' Right(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
                
                Else
                sup = rs1("ptypecottonsales") ' & "%"
                sup1 = ""
               End If
            Else
               sup = ""
               sup1 = ""
            End If
         Else
            If rs1.RecordCount > 0 Then
               sup = rs1("ptypecotton") '& "%"
            Else
               sup = ""
            End If
         End If
         Set Rs = New Recordset
         Rs.Open "select * from fa_slmas where slcode='" & Trim(Txtfields(1).Text) & "' and left(slcode,2) in (select Items from dbo.split('" & sup & "',','))", DB, adOpenStatic
         
         If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = "Select Slcode as Code,slname as Name FROM fa_slmas where left(slcode,2) in (select Items from dbo.split('" & sup & "',','))  or left(slcode,2) in (select Items from dbo.split('" & sup1 & "',',')) or left(slcode,2) in (select Items from dbo.split('" & sup2 & "',',')) "
            LookUp.Caption = "Customer Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    Txtfields(1).Text = LookUp.Fields(0)
                    Txtfields(1).Locked = False
                    Text5.Text = LookUp.Fields(1)
                    grddatagrid.Col = 0
                    LookUp.Clear = True
                    Txtfields(7).SetFocus
            Else
                Txtfields(1).SetFocus
                Txtfields(7).SetFocus
            End If
        Else
            Text5.Text = Rs("slname")
        End If
End If


    
If ISSTYPE = "T" Then
    Set rsa = New Recordset
    rsa.Open "Select Divcode,Divname from pp_divmas where divcode ='" & Txtfields(1).Text & "' and divcode not in ('" & Divcode & "')", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.query = "Select Divcode,Divname from pp_divmas where divcode not in ('" & Divcode & "')"
        Flag = ""
         LookUp.Caption = "Division Listing"
        LookUp.DefCol = "Divname"
        LookUp.ALIGN = "2500,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(1).Text = LookUp.Fields(0)
            Text5.Text = LookUp.Fields(1)
            LookUp.Clear = True
            Txtfields(7).SetFocus
            Exit Sub
        Else
            Exit Sub
        End If
    Else
            Txtfields(1).Text = rsa(0)
            Text5.Text = rsa(1)
            Txtfields(7).SetFocus
    End If
End If
 ''If Left(Combo1.Text, 2) = "PR" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
  If ISSTYPE = "P" Then
        LookUp.Clear = True
        If Combo2.Text = "D-Dying" Then
            Set rsa = New Recordset
            rsa.Open "Select cntcd,cntname from rm_count where cntcd='" & Txtfields(1).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.query = "Select cntcd,cntname from rm_count"
                Flag = ""
                 LookUp.Caption = "Count Listing"
                LookUp.DefCol = "CNTNAME"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    
                    Txtfields(1).Text = LookUp.Fields(0)
                    Text5.Text = LookUp.Fields(1)
                    Txtfields(13).SetFocus
                    LookUp.Clear = True
                    Exit Sub
                Else
                Exit Sub
                    
                End If
            Else
                    Txtfields(1).Text = rsa(0)
                    Text5.Text = rsa(1)
            End If
                
            Txtfields(13).SetFocus
        ElseIf Combo2.Text = "M-Mixing" Then
            Set rsd = New Recordset
            rsd.Open "select description from ig_product where product_code='" & Txtfields(1).Text & "'", DB
            If rsd.RecordCount > 0 Then
                Text5.Text = rsd(0)
            Else
            'LookUp.query = "Select Distinct Product_code,Description FROM ig_product"
            'LookUp.Query = "Select Distinct CntCD, CntName As Description FROM Rm_Count Where DivCode = '" & Divcode & "'"
            LookUp.query = "Select Distinct CntCD""Mix Count Code"", CntName""Mix Count Name"",b.MIXGRPCD ""Mix Group Code"",MIXGRPNAME ""Mix Group Name""  FROM Rm_Count a,RM_MIXGRP b Where a.mixgrpcd= b.mixgrpcd and a.divcode =b.divcode"
            LookUp.Caption = "Mix Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "1600,2600,1600,2600"
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(1).Text = LookUp.Fields(0)
                Text5.Text = LookUp.Fields(1)
                Txtfields(8).Text = LookUp.Fields(2)
                Text12.Text = LookUp.Fields(3)
                Txtfields(13).SetFocus
                LookUp.Clear = True
                Call qcparameterload
                Call MixgrpLookup
            Else
                LookUp.Clear = True
                'lookup.
                Txtfields(1).SetFocus
                Exit Sub
            End If
            End If
            End If
        End If
Case 8
         


Case 13
    'Txtfields(13).Text = UCase(Txtfields(13).Text)
     Call mixinglotgrp
End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmissueKgs", vbInformation, head
End Sub
Private Sub Format_Grid()
On Error GoTo Format_Grid_Error

grid.Clear
grid.Rows = 2
grid.FormatString = "^Baleno       |^Gr|^Nett Wght                   |^Issue Qty        |^Act Issue Kgs         |^Issued    "

Exit Sub
Format_Grid_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Format_Grid of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub TxtIsskgs_KeyPress(KeyAscii As Integer)
'On Error GoTo TxtIsskgs_KeyPress_Error
'
'If KeyAscii = 13 Then
'    SendKeys "{tab}"
'End If
'ToNumberAssign TxtIsskgs, 10, KeyAscii, 15, 3
'
'Exit Sub
'TxtIsskgs_KeyPress_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure TxtIsskgs_KeyPress of Form FrmissueKgs", vbInformation, head
'Screen.MousePointer = 0
'End Sub
Private Sub TxtIsskgs_LostFocus()
On Error Resume Next
         If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            IVarcode = 3
            icolorcode = 6
            icategory = 5
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            IVarcode = 7
            icolorcode = 8
            icategory = 9
         End If



            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(ILotNo).Text) & "' and Catcd = '" & grddatagrid.Columns(icategory).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N' and divcode='" & Divcode & "' order by 1"
          twt = 0
            TEMP = val(TxtIsskgs.Text)
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
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
        
        TxtTotBales.Text = Format(val(Text3.Text), "0.000")
        TxtNetWt.Text = Format(val(Text11.Text), "0.000")
        TxtActWt.Text = Format(val(Text4.Text), "0.000")
        
End Sub
Public Sub gatepass(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
    Rs.Open "select distinct slname,add3,a.isstype from RM_issReqB a,rm_lot c,fa_slmas b where a.lotno=c.lotno and a.lotdt=c.lotdt and  c.supcd=b.slcode and a.divcode=c.divcode  and c.divcode = '" & Divcode & "'   AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  docno = " & Trim(val(Txtfields(0).Text)) & "  Order by slname ", DB, adOpenStatic
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
    Print #a, Space(14) + Padl(UCase(Txtfields(7).Text), 10, " ") + Space(1) + "For transfer to " + Space(5) + Padr(g, 10, " ")
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
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
  Rs.Open "select slname,add3 from fa_slmas where slcode='" & Txtfields(8).Text & "'", DB
    Print #a, Space(3) + Padr("DC for Issue List", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "Doc No         :" + Padr(Txtfields(0).Text, 10, " ") + Space(45) + "Date :" + Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 10, " ")
    If Rs.RecordCount > 0 Then
    Print #a, Space(3) + "Supplier       :" + Padr(Rs("slname"), 40, " ") + Space(12) + "Remarks :" + Padr(" ", 10, " ")
    
     Print #a, Space(3) + "                           " + Padr(Rs("add3"), 40, " ") + Space(12)
     End If
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + "S.No        VarityDescription       Quntity          Kgs        values    Remarks"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub CottRecnHeader(pg1 As Integer, co As Integer, LDT As String)
    Print #z, Chr(18)
    Print #z, Space(8) + Chr(27) + "E" + CENTRE(Trim(divname), 76, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(8) & CENTRE("Mixing Requisition Slip ", 76, " ")
    Print #z, Space(6) & Chr(15) & String(122, "=")
    Print #z, Space(10) & "Slip No   : " & Padr(Txtfields(0).Text, 8, " ") & Space(75) & "Mixing Count : " & Padr(Text5.Text, 10, " ")
    Print #z, Space(10) & "Slip Date : " & Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 8, " ") & Space(75) & "Mixing Group : " & Padr(Text12.Text, 10, " ")
    co = 7
    If bolAbstract = True Then
    Dim dRatio, dRatio1 As Double
    Set Rs = New Recordset
        Rs.Open "select d.varname, sum(a.baleno) AS IssKgs,count(a.baleno) AS Bales, (select sum(a.baleno) AS IssKgs from RM_issReqB A,RM_LOT B where A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode and docNo=" & val(Txtfields(0).Text) & " and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "') as TotKgs from RM_issReqB A,RM_LOT B, " & _
                 "rm_var d where b.varcode = d.varcode and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode " & _
                 "and docNo=" & val(Txtfields(0).Text) & "  and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' " & _
                 "GROUP  BY d.varname order by d.varname ", DB, adOpenStatic

    Set balers = New Recordset
        balers.Open "select E.STATION AS varname, sum(a.baleno) AS IssKgs,count(a.baleno) AS Bales, (select sum(a.baleno) AS IssKgs from RM_issReqB A,RM_LOT B where A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode and docNo=" & val(Txtfields(0).Text) & " and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "') as TotKgs from RM_issReqB A,RM_LOT B, " & _
                 "rm_var d,RM_AREA E where B.AREACD = E.AREACODE AND b.varcode = d.varcode and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND a.divcode=b.divcode " & _
                 "and docNo=" & val(Txtfields(0).Text) & "  and a.divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' " & _
                 "GROUP  BY E.STATION order by E.STATION ", DB, adOpenStatic

        If balers.RecordCount >= Rs.RecordCount Then
            If Rs.EOF = False Then
                Print #z, Space(23) & Chr(15) & String(47, "-") & Space(5) & String(47, "-")
                Print #z, Space(23) & Padr("Variety", 25, "") & Space(1) & Padl("%", 7, "") & Space(2) & Padl("Bales", 12, "") & Space(5) & Padr("Station", 25, "") & Space(1) & Padl("%", 7, "") & Space(2) & Padl("Bales", 12, "")
                Print #z, Space(23) & String(47, "-") & Space(5) & String(47, "-")
                balers.MoveFirst
                Rs.MoveFirst
                co = co + 3
                dTotalWgt = IIf(IsNull(Rs("TotKgs")), 0, Rs("TotKgs"))
                
                Do While Not balers.EOF
                    dRatio = 0
                    If Rs.EOF = False Then dRatio = Round((Rs("iSSKGS") / dTotalWgt) * 100, 2)
                    dRatio1 = 0
                    dRatio1 = Round((balers("iSSKGS") / dTotalWgt) * 100, 2)
                    If Rs.EOF = False Then
                         Print #z, Space(23) & Padr(Rs("varname"), 25, "") & Space(1) & Padl(INF(dRatio, 2), 7, "") & Space(2) & Padl(INF(Rs("iSSKGS"), 0), 12, "") & Space(5) & Padr(balers("Varname"), 25, "") & Space(1) & Padl(INF(dRatio1, 2), 7, "") & Space(2) & Padl(INF(balers("iSSKGS"), 0), 12, "")
                    Else
                         Print #z, Space(23) & Padr("", 25, "") & Space(1) & Padl(INF(dRatio, 2), 7, "") & Space(2) & Padl(INF(0, 0), 12, "") & Space(5) & Padr(balers("Varname"), 25, "") & Space(1) & Padl(INF(dRatio1, 2), 7, "") & Space(2) & Padl(INF(balers("iSSKGS"), 0), 12, "")
                    End If
                    co = co + 1
                    If Rs.EOF = False Then Rs.MoveNext
                    balers.MoveNext
                Loop
                
                Print #z, Space(23) & String(47, "-") & Space(5) & String(47, "-")
                Print #z, Space(23) & Padr("Total Lot Issued", 25, "") & Space(1) & Padl(INF(dTotalWgt, 0), 21, "") & Space(5) & Padr("Total Lot Issued", 25, "") & Space(1) & Padl(INF(dTotalWgt, 0), 21, ""); Space(5)
'                Print #z, Space(5) & String(47, "-") & Space(5) & String(47, "-")
                co = co + 2
            End If
        Else
            If Rs.EOF = False Then
                Print #z, Space(23) & Chr(15) & String(47, "-") & Space(5) & String(47, "-")
                Print #z, Space(23) & Padr("Variety", 25, "") & Space(1) & Padl("%", 7, "") & Space(2) & Padl("Bales", 12, "") & Space(5) & Padr("Station", 25, "") & Space(1) & Padl("%", 7, "") & Space(2) & Padl("Bales", 12, "")
                Print #z, Space(23) & String(47, "-") & Space(5) & String(47, "-")
                balers.MoveFirst
                Rs.MoveFirst
                co = co + 3
                dTotalWgt = IIf(IsNull(Rs("TotKgs")), 0, Rs("TotKgs"))
                
                Do While Not Rs.EOF
                    dRatio = 0
                    dRatio = Round((Rs("iSSKGS") / dTotalWgt) * 100, 2)
                    dRatio1 = 0
                    If balers.EOF = False Then dRatio1 = Round((balers("iSSKGS") / dTotalWgt) * 100, 2)
                    If Rs.EOF = False Then
                         Print #z, Space(23) & Padr(Rs("varname"), 25, "") & Space(1) & Padl(INF(dRatio, 2), 7, "") & Space(2) & Padl(INF(Rs("iSSKGS"), 0), 12, "") & Space(5) & Padr(balers("Varname"), 25, "") & Space(1) & Padl(INF(dRatio1, 2), 7, "") & Space(2) & Padl(INF(balers("iSSKGS"), 0), 12, "")
                    Else
                         Print #z, Space(23) & Padr(Rs("varname"), 25, "") & Space(1) & Padl(INF(dRatio, 2), 7, "") & Space(2) & Padl(INF(Rs("iSSKGS"), 0), 12, "") & Space(5) & Padr("", 25, "") & Space(1) & Padl(INF(dRatio1, 2), 7, "") & Space(2) & Padl(INF(0, 0), 12, "")
                    End If
                    co = co + 1
                    Rs.MoveNext
                    If balers.EOF = False Then balers.MoveNext
                Loop
                co = co + 1
                Print #z, Space(23) & String(47, "-") & Space(5) & String(47, "-")
                Print #z, Space(23) & Padr("Total Lot Issued", 25, "") & Space(1) & Padl(INF(dTotalWgt, 0), 21, "") & Space(5) & Padr("Total Lot Issued", 25, "") & Space(1) & Padl(INF(dTotalWgt, 0), 21, ""); Space(5)
            End If
        End If
    End If
    Print #z, Space(10) & Chr(15) & String(122, "-")
    Print #z, Space(10) & Padr("S.No", 4, "") & Space(2) & Padr("Variety", 10, "") & Space(2) & Padr("Station", 20, "") & Space(2) & Padr("Our", 8, "") & Space(2) & Padr("Party", 8, "") & Space(2) & Padl("Bale", 6, "") & Space(2) & Padl("Bale", 6, "") & Space(2) & Padl("Mic", 6, "") & Space(2) & Padl("RD", 6, "") & Space(2) & Padl("+B", 6, "") & Space(2) & Padl("IFC %", 6, "") & Space(2) & Padl("Mat", 6, "") & Space(2) & Padl("Mosi", 6, "")
    Print #z, Space(10) & Padr("", 4, "") & Space(2) & Padr("", 10, "") & Space(2) & Padr("", 20, "") & Space(2) & Padr("Lot No.", 8, "") & Space(2) & Padr("Lot No.", 8, "") & Space(2) & Padl("Req.", 6, "") & Space(2) & Padl("Stock", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("", 6, "") & Space(2) & Padl("-ture", 6, "")
    Print #z, Space(10) & Chr(15) & String(122, "-")
    co = co + 4
End Sub

Sub VisText(IType As String)
On Error GoTo VisText_Error

Select Case IType
Case "P"  'production
    Label9.Visible = True  'issto
    Combo2.Visible = True
    Label21.Caption = "Mix Lot No."
    Txtfields(13).Visible = True  'mixing lotno
    Label21.Visible = True
    Label5.Visible = True  'mixing count
    Label5.Caption = "Mixing Count"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    
    Label14.Visible = False 'Vehicle

    Label16.Visible = True 'mix grp label
    Txtfields(8).Visible = True 'mix grp code
    Text12.Visible = True 'mixing Grp Name
      
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker1.Visible = True 'Invdate
    MaskEdBox1(1).Visible = False
    Label32.Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    Label37.Visible = False
    Text16.Visible = False
    lblSoft.Visible = True
    Txtfields(14).Visible = True
    
    
    
Case "S", "J", "R" 'Sales
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    Txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    Txtfields(14).Visible = False
    lblSoft.Visible = False
    DTPicker2.Visible = True 'Invdate
    DTPicker2.value = pdate
    MaskEdBox1(1).Visible = True
    Label32.Visible = True
    Txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Customer"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = True  'Vehicle
'    Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
    
    Label37.Visible = True
    Text16.Visible = True
    
    'Label13.Visible = False
    
    
Case "T" 'Transfer
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    Txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    
    DTPicker2.Visible = True 'Invdate
    DTPicker2.value = pdate
    MaskEdBox1(1).Visible = True
    Label32.Visible = True
    Txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Division"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = True  'Vehicle
    'Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
    Label37.Visible = True
    Text16.Visible = True
    
    'Label13.Visible = False
    
    
Case "B"
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = False  'mixing lotno
    Label21.Visible = False
    
    Label5.Visible = False  'mixing count
    Txtfields(1).Visible = False 'code
    Text5.Visible = False  'mix desc
    Txtfields(7).Visible = False  'Vehicle
   ' Frame1.Visible = False
    Label14.Visible = False 'Vehicle
    Label32.Visible = False
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
  
    
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    
    Label37.Visible = False
    Text16.Visible = False
    
    'Label13.Visible = False
    

End Select


Exit Sub
VisText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure VisText of Form FrmissueKgs", vbInformation, head
End Sub
Sub MixgrpLookup()
On Error GoTo MixgrpLookup_Error

Set rsd = New Recordset
rsd.Open "select Mixgrpname from rm_mixgrp where mixgrpcd='" & Txtfields(8).Text & "'", DB
If rsd.RecordCount > 0 Then
    text2.Text = rsd(0)
Else
    LookUp.query = "Select Distinct MixgrpCd""Mixing Group Code"",MixGrpName""Mixing Group Name"" FROM rm_mixgrp"
    LookUp.Caption = "Mixing Group Listing"
    LookUp.DefCol = "Mixing Group Name"
    LookUp.ALIGN = "2500,5000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(8).Text = LookUp.Fields(0)
        Text12.Text = LookUp.Fields(1)
        Txtfields(13).SetFocus
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        Txtfields(8).SetFocus
        Exit Sub
    End If
End If

Exit Sub
MixgrpLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MixgrpLookup of Form FrmissueKgs", vbInformation, head
End Sub


Private Sub clears()
On Error GoTo clears_Error

    Txtfields(1).Text = ""
    Txtfields(8).Text = ""
    Txtfields(13).Text = ""
    Text5.Text = ""
    Text12.Text = ""
    Txtfields(7).Text = ""
    Txtfields(10).Text = ""
    Txtfields(9).Text = ""
   '' MaskEdBox1(1).Text = "__/__/____"
    Option5.value = False
    Option6.value = False
    Option7.value = True

Exit Sub
clears_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clears of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Function LookuPLoad(Fld1 As String, Fld2 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
On Error GoTo LookuPLoad_Error

        LookUp.Clear = True
        LookUp.query = "select " & Fld1 & "," & Fld2 & " from " & Tbl & ""
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Caption = Caption
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            Fld1focus.Text = LookUp.Fields(0)
            If Fld1focus <> Fld1focus Then
            fld2Focus.Text = LookUp.Fields(1)
            End If
            LookUp.Clear = True
            LookuPLoad = True
           ' NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad = False
            LookUp.Clear = True
        End If


Exit Function
LookuPLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LookuPLoad of Form FrmissueKgs", vbInformation, head
End Function

Private Sub ubgridalign()
On Error GoTo ubgridalign_Error

    If Opt = "add" Or Opt = "mod" Then
        grid.ColAllowEdit(4) = True
        grid.ColAllowEdit(5) = True
    End If

Exit Sub
ubgridalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ubgridalign of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Sub Lotdisplay(Varcode As String, LOTDT As String, catcd As String, Optional ByVal vLotNo As Integer, Optional ByVal vavilQty As Integer)
On Error GoTo Lotdisplay_Error
     If Opt = "add" Then
            ILotNo = 0
            ILotdt = 1
            ilottype = 2
            IVarcode = 4
            icolorcode = 7
            icategory = 6
         End If
         If Opt = "mod" Then
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            IVarcode = 8
            icolorcode = 9
            icategory = 10
         End If


If Opt = "add" Then
    baleno = 0
    issKgs = 0
    Set rslotcheck = New Recordset
    If ADOSECONDARYRS.RecordCount > 0 Then
           rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_issReqB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
           Set rslotcheck.DataSource = ADOSECONDARYRS
            
            rslotcheck.MoveFirst
            For I = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = grddatagrid.Columns(ILotNo).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                    baleno = baleno + 1
                    issKgs = issKgs + rslotcheck("Issued Kgs")
                End If
                rslotcheck.MoveNext
            Next
    Else
        baleno = 0
    End If
    
    If issKgs > 0 Then
        MsgBox "Lot cannot be returned For This Issue", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
    End If
Else
issKgs = 0
baleno = 0
End If
        
    If Left(Combo2.Text, 1) = "M" Or Left(Combo2.Text, 3) = "D" Then
        Set rsa = New Recordset
        rsa.Open "SELECT OPFLG,LOTTYPE FROM RM_LOT WHERE VARCODE='" & Varcode & "' AND divcode='" & Divcode & "' and lotno='" & grddatagrid.Columns(ILotNo).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            If rsa(0) = "N" And rsa("lottype") <> "T" Then
                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.arrno=b.arrno and a.arrdt=b.arrdate AND a.DIVCODE=b.divcode and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and a.catcd='" & catcd & "'", DB, adOpenStatic, adLockBatchOptimistic
            Else
                Set Rs = New Recordset
                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",isnull(a.netwt,0) - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A where A.CATCD = '" & catcd & "' AND A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
'            If rsa(0) = "N" And rsa("lottype") <> "T" Then
'                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(a.issbal,0)-" & baleno & ",ISNULL(a.netwt,0) -ISNULL(a.isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-" & baleno & ",a.netwt -" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            Else
'                Set Rs = New Recordset
'                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(a.issbal,0)-" & baleno & ",ISNULL(a.netwt,0) -ISNULL(a.isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & Varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(ILotNo).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-" & baleno & ",a.netwt -" & issKgs & ",a.colorcode from rm_lot A where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & GrdDataGrid.Columns(ILotNo).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'            End If
        Else
'            GoTo 10
        End If
    Else
      Set Rs = New Recordset
      Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),ISNULL(a.netwt - (SELECT isnull(sum(actisskgs),0),0) FROM RM_issReqB B WHERE lotno=" & grddatagrid.Columns(ILotNo).Text & " ),a.colorcode,a.arrdt from rm_lot A,RM_BALE B where A. VARCODE='" & Varcode & "' AND  STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(grddatagrid.Columns(ILotNo).Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  isnull(b.rejflg,'N')='N'", DB, adOpenStatic
    End If
    
      If Rs.RecordCount = 0 Then
'         Set xx = New Recordset
'         xx.Open "select rejflg from rm_lot where  VARCODE='" & Varcode & "' AND lotno='" & grddatagrid.Columns(ILotNo).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'         If xx.RecordCount > 0 Then
'            If xx("rejflg") = "Y" Then
'               MsgBox "This Lot is Rejected. Please Select the another Lot", vbInformation, head
'               Exit Sub
'            Else
'               GoTo 10
'            End If
'         End If
'10:      MsgBox "The Lot was issued. Not available for the selected Count.", vbInformation, head
'         On Error Resume Next
'         grddatagrid.Columns(0).Text = ""
'         grddatagrid.Col = 0
'         grddatagrid.SetFocus
      Else
         xx1 = 0
         Set ry = New Recordset
         CURROW = grddatagrid.Row
         
        If Opt = "mod" Then
        
            Set rsg = New Recordset
            Set rsg.DataSource = ADOSECONDARYRS.DataSource
            opt1 = Opt
            Opt = "mod"
            gbaleno = "0"
            Mlotno = grddatagrid.Columns(ILotNo).Text
            rsg.MoveFirst
            K = 1
            While Not rsg.EOF
                If val(rsg("Lot No")) = val(Mlotno) And rsg("lot Date") = Rs("date") And rsg("Variety") = Varcode Then
'                    If val(rsg("Accepted Qty")) <> 0 Then
'                            gbaleno = gbaleno & "," & rsg("Accepted Qty")
'                    End If
'                    k = k + 1
                    MsgBox "Select Lot No. is Already presented", vbInformation, head
                    ADOSECONDARYRS.MoveLast
                    grddatagrid.Col = 4
                    grddatagrid.SetFocus
                    Opt = "mod"
                    Call GRDDATAGRID_RowColChange(ADOSECONDARYRS.RecordCount, 4)
                    Exit Sub
                Else
                rsg.MoveNext
                End If
                
            Wend
        rsg.MovePrevious
        Opt = opt1
           ry.Open "select * from rm_bale where  baleno not in (" & gbaleno & ") and isnull(actisskgs,0)=0 and  VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grddatagrid.Columns(ILotNo).Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
        Else
            ry.Open "select * from rm_bale where catcd= '" & catcd & "' AND VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grddatagrid.Columns(ILotNo).Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
        End If
         
        If gvar = Varcode Then
                If Option4.value = True Then
                    If diffkgs > 0 Then
                    TxtIsskgs.Text = CStr(diffkgs)
                    End If
                End If
         End If
         If ry.EOF = False Then
            Text6.Text = IIf(IsNull(ry("ARRDT")), " ", ry("arrdt"))
         End If
         Do While Not ry.EOF
            xx1 = xx1 + 1
            ry.MoveNext
         Loop
            
         'Text6.Text = ry("ARRDT")
         
         If xx1 - baleno <= 0 Then
            MsgBox "No Bales Available", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
         End If
         
    
         
         grddatagrid.Columns(9).Text = val(vavilQty)
         grddatagrid.Columns(ILotdt).Text = Rs(0)
         grddatagrid.Columns(ilottype).Text = Rs(1)
         If Opt = "add" Then
             grddatagrid.Columns(3).Text = IIf(Rs(2) = "", 0, Rs(2))
         ElseIf Opt = "mod" Then
             grddatagrid.Columns(7).Text = IIf(Rs(2) = "", 0, Rs(2))
         End If
         grddatagrid.Columns(IVarcode).Text = Rs(3)
         
         
         
         Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & Rs(3) & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            If Opt = "add" Then
                grddatagrid.Columns(5).value = Namers(0)
            ElseIf Opt = "mod" Then
                grddatagrid.Columns(9).value = Namers(0)
            End If
         End If
         Set Namers = New Recordset
         Namers.Open "Select colorname from rm_color where colorcode='" & Rs("colorcode") & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grddatagrid.Columns(icolorcode).value = Namers(0)
         End If
         grddatagrid.Columns(icategory).value = Rs(4)
         iNewLotQty = 0
         If Opt = "add" Then
            grddatagrid.Columns(7).value = xx1 - baleno
            grddatagrid.Columns(8).value = Format(Rs(6), "#0.000")
            Call Temp_tbl_Update_IssReq("ADD")
            
            If optBinStock.value = True Then
                Set Rs = New Recordset
                Rs.Open "SELECT sum(rejqty) - sum(isnull(binaccqty,0)) as RejQty FROM RM_IssueBinStock WHERE lotno=" & val(grddatagrid.Columns(ILotNo).Text) & " AND lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' AND LOTTYPE='" & Trim(grddatagrid.Columns(ilottype).Text) & "' AND CATCD='" & Trim(grddatagrid.Columns(icategory).Text) & "' AND VARCODE='" & Trim(grddatagrid.Columns(IVarcode).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.EOF = False Then ActBalQty = IIf(IsNull(Rs(0)), 0, Rs(0)) Else ActBalQty = 0
                lblLotDetails.Caption = "Lot No. : " & grddatagrid.Columns(ILotNo).Text & " ,Rejected Stock : Available Quantity is " & ActBalQty
            Else
                Set Rs = New Recordset
                Rs.Open "SELECT sum(ISNULL(baleno,0)) as RejQty FROM RM_issReqB WHERE lotno=" & val(grddatagrid.Columns(ILotNo).Text) & " AND lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' AND LOTTYPE='" & Trim(grddatagrid.Columns(ilottype).Text) & "' AND CATCD='" & Trim(grddatagrid.Columns(icategory).Text) & "' AND VARCODE='" & Trim(grddatagrid.Columns(IVarcode).Text) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.EOF = False Then ActBalQty = IIf(IsNull(Rs(0)), 0, Rs(0)) Else ActBalQty = 0
                lblLotDetails.Caption = "Lot No. : " & grddatagrid.Columns(ILotNo).Text & " , Available Quantity is " & xx1 - ActBalQty
                iQty = xx1 - ActBalQty
            End If
            
            grddatagrid.Col = 9
            grddatagrid.SetFocus
            FLG = ""
         ElseIf Opt = "mod" Then
            Set Rs = New Recordset
            Rs.Open "SELECT sum(baleno) as RejQty FROM RM_issReqB WHERE lotno=" & val(grddatagrid.Columns(ILotNo).Text) & " AND lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' AND LOTTYPE='" & Trim(grddatagrid.Columns(ilottype).Text) & "' AND CATCD='" & Trim(grddatagrid.Columns(icategory).Text) & "' AND VARCODE='" & Trim(grddatagrid.Columns(IVarcode).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.EOF = False Then ActBalQty = IIf(IsNull(Rs(0)), 0, Rs(0)) Else ActBalQty = 0
            
            Set Rs = New Recordset
            Rs.Open "SELECT sum(rejqty) - sum(isnull(binaccqty,0)) as RejQty FROM RM_IssueBinStock WHERE lotno=" & val(grddatagrid.Columns(ILotNo).Text) & " AND lotdt='" & Format(grddatagrid.Columns(ILotdt).Text, "yyyy-mm-dd") & "' AND LOTTYPE='" & Trim(grddatagrid.Columns(ilottype).Text) & "' AND CATCD='" & Trim(grddatagrid.Columns(icategory).Text) & "' AND VARCODE='" & Trim(grddatagrid.Columns(IVarcode).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.EOF = False Then IQuantity = IIf(IsNull(Rs(0)), 0, Rs(0)) Else IQuantity = 0
           
            
            lblLotDetails.Caption = "Lot No. : " & grddatagrid.Columns(ILotNo).Text & " , Available Quantity after Requisition is " & xx1 - IQuantity - ActBalQty
            
            iQty = xx1 - IQuantity - ActBalQty
            bolRejFlg = False
            Call Temp_tbl_Update_IssReq("ADD")
            grddatagrid.Col = 11
            grddatagrid.SetFocus
            FLG = ""
        End If
      End If


Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form FrmissueKgs", vbInformation, head

End Sub

Private Sub modification()

On Error GoTo modification_Error

Set RsMod = New Recordset
RsMod.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,slcode,OILCODE,OILWT,OILCODE1,OILWT1,WTRWT,cntcd,TINT,MODUSRID,ISSTO,ordno,vehicleno,MIXGRP,RDIVCODE,Driver,InvoiceNo,InvDate,TimeOut,Form,Formno,SoftWaste,appby,noofissues FROM RM_issReqH where 1=2", DB, adOpenStatic, adLockBatchOptimistic

        RsMod.AddNew

 
            ILotNo = 4
            ILotdt = 5
            ilottype = 6
            IVarcode = 7
            icolorcode = 8
            icategory = 9
            
           If Check2.value Then
               DB.Execute "update RM_issReqH set  AppBy='SM' where docno=" & val(Txtfields(0).Text) & " and Divcode = '" & Divcode & "' And Docdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
           ElseIf Check3.value Then
               DB.Execute "update RM_issReqH set  AppBy='FM' where docno=" & val(Txtfields(0).Text) & " and Divcode = '" & Divcode & "' And Docdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
           End If
           
           
          
            
            opt1 = Opt
            Opt = ""
            ADOSECONDARYRS.MoveFirst
            Do While Not ADOSECONDARYRS.EOF
                 If (ADOSECONDARYRS("Lot No") = "") Then
                     ADOSECONDARYRS.Delete adAffectCurrent
                 End If
                 ADOSECONDARYRS.MoveNext
            Loop
            ADOSECONDARYRS.MoveFirst
            
            DB.Execute "Delete From RM_issReqB where docno=" & val(Txtfields(0).Text) & " and Divcode = '" & Divcode & "' And Docdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
            DB.Execute "Delete From RM_ISSUEBINSTOCK where docno=" & val(Txtfields(0).Text) & " and Divcode = '" & Divcode & "' And Docdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"

        Set RSMODS = New Recordset
        RSMODS.Open "select Divcode , ISSTYPE, docNo, DOCDT, catcd, LOTNO, LOTDT, baleno, issKgs, LotType, MODUSERID, MODUSRID, ACTISSKGS, ISSUED, arrdt, varcode,Rejqty,rembales,issbale1,issbale2,issbale3,issbale4,issbale5,issbale6,issbale7,issbale8,issbale9,issbale10 from RM_issReqB where 1=2", DB, adOpenStatic, adLockBatchOptimistic

       Opt = ""
       ADOSECONDARYRS.MoveFirst
       Do While Not ADOSECONDARYRS.EOF
       
        
               
           RSMODS.AddNew

           DB.CommandTimeout = 1000
           
       

           RSMODS("DIVCODE") = Divcode
           RSMODS("DocNo") = val(Txtfields(0).Text)
           RSMODS("docdT") = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
           RSMODS("ISSTYPE") = Left(Combo1.Text, 2)
           RSMODS("CATCD") = ADOSECONDARYRS("category")
           RSMODS("LOTNO") = ADOSECONDARYRS("Lot No")
           RSMODS("lotdt") = ADOSECONDARYRS("Lot Date")
           RSMODS("BALENO") = ADOSECONDARYRS("Accepted Qty")
           RSMODS("ISSKGS") = 0
           RSMODS("LOTTYPE") = ADOSECONDARYRS("lot type")
           RSMODS("MODUSERID") = usrid
           RSMODS("RejQty") = 0
           RSMODS("ISSUED") = "N"
           RSMODS("VARCODE") = ADOSECONDARYRS("variety")
           RSMODS("rembales") = ADOSECONDARYRS("rembales")
           
           For I = 1 To val(Txtfields(31).Text)
        Dim colname As String
        colname = "issbale" & I
        RSMODS(colname) = val(grddatagrid.Columns(13 + I).Text)
        
    Next

           
                       
                   Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Issue Request"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = val(Txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd hh:mm:ss.m")
                    TrnLog("lotno") = val(ADOSECONDARYRS("Lot No"))
                    TrnLog("lotdt") = Format((ADOSECONDARYRS("Lot Date")), "YYYY-MM-DD")
                    TrnLog("catcd") = ADOSECONDARYRS("category")
                    TrnLog("varcode") = Trim(ADOSECONDARYRS("Variety"))
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                    TrnLog("CNTCoDe") = Trim(Txtfields(1).Text)
                    TrnLog("mixgrp") = Trim(Txtfields(8).Text)
                    
                    TrnLog("ordqty") = ADOSECONDARYRS("Accepted Qty")
                   ' TrnLog("ordkgs").value = val(txtfields(23).Text)
                   ' TrnLog("AreaCode") = txtfields(32).Text
                    'TrnLog("slcode") = txtfields(5).Text
                    TrnLog.UpdateBatch adAffectAllChapters
           
           
            If IIf(IsNull(ADOSECONDARYRS("Rejected Qty")), 0, ADOSECONDARYRS("Rejected Qty")) <> 0 Then
                strSQL = "INSERT INTO RM_ISSUEBINSTOCK VALUES('" & Divcode & "'," & val(Txtfields(0).Text) & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & ADOSECONDARYRS("Lot No") & ",'" & Format((ADOSECONDARYRS("Lot Date")), "YYYY-MM-DD") & "','" & ADOSECONDARYRS("Lot Type") & "','" & ADOSECONDARYRS("Category") & "','" & ADOSECONDARYRS("VARIETY") & "'," & val(ADOSECONDARYRS("Accepted Qty")) & "," & IIf(IsNull(ADOSECONDARYRS("Rejected Qty")), 0, ADOSECONDARYRS("Rejected Qty")) & ",'M',0,'" & Format(pdate, "YYYY-MM-DD") & "')"
                DB.Execute strSQL
            End If
            
           ADOSECONDARYRS.MoveNext
      Loop
      ADOSECONDARYRS.MoveFirst
      If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
      

      RSMODS.UpdateBatch adAffectAllChapters
      
    If (UCase(Trim(CustID)) = "SHRIGIRI" Or UCase(Trim(CustID)) = "PALLAVA") And Repindex = 222 Then

        BUTTON(0).Enabled = False
    End If
Exit Sub
modification_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure modification of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub SetTag(Spd As fpSpread, ByVal sValue As String, ByVal iCOL As Integer, ByVal iRow As Integer)
On Error GoTo SetTag_Error
   With Spd
        .Col = iCOL: .Row = iRow: .CellTag = sValue
   End With
Exit Sub
SetTag_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetTag of Module Module1"
End Sub
Public Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub

Private Sub SetGridHead()
On Error GoTo SetGridHead_Error

    

Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmissueKgs", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub ToNumberwithDecimal(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer, Optional dlen As Integer)
    If dlen <> 0 Then
        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or KeyAscii = 45 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    Else
        If KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'nOT to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    Beep
    KeyAscii = 0
    End If
'    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = dlen And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
'         KeyAscii = 0
'         Beep
'    End If
'    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
'        KeyAscii = 0
'        Beep
'    End If
End Sub
Private Sub DupItemcheckDye()
Dim rsDup As New Recordset

    Set rsDup = ADOSECONDARYRS.Clone
    rsDup.Filter = adFilterNone
    rsDup.Filter = "[LOTNO]='" & updSECONDARYRS("LOT NO.") & "'"
    
    If rsDup.RecordCount > 1 Then
        MsgBox " Duplicate Entry ", vbInformation + vbOKOnly, head
        ADOSECONDARYRS("LOTNO") = ""
        ADOSECONDARYRS("LOTNO") = ""
    
        rsDup.Filter = adFilterNone
        grddatagrid.Col = grddatagrid.Columns("Lot No.").ColIndex
        grddatagrid.SetFocus
    End If
End Sub

Private Sub Temp_tbl_Update_IssReq(ByVal ROptn As String)
Dim TmpCn As New ADODB.Connection
Dim qry As String: qry = ""

    '======== Open Connection
    With TmpCn
         .Open connectstring
    End With
    
    '======== Respective Action
    
    If TmpCn.State > 0 Then
       Select Case UCase(ROptn)
         Case "ADD"
           qry = "Insert INTO TMP_RM_ISSREQ  (LOTNO,LOTDT,VARCODE,CATCD) VALUES (" & val(grddatagrid.Columns(0).Text) & ",'" & Format(grddatagrid.Columns(1).Text, "yyyy-MM-dd") & "','" & Trim(grddatagrid.Columns(4).Text) & "','" & Trim(grddatagrid.Columns(6).Text) & "')"
         Case "UPDATE"
           qry = "Update TMP_RM_ISSREQ SET QTY =" & val(grddatagrid.Columns(9).Text) & " Where lotno =" & val(grddatagrid.Columns(0).Text) & " and lotdt= '" & Format(grddatagrid.Columns(1).Text, "YYYY-MM-DD") & "' and varcode ='" & Trim(grddatagrid.Columns(4).Text) & "'"
         Case "DELREC"
           qry = "Delete From TMP_RM_ISSREQ Where lotno =" & val(grddatagrid.Columns(0).Text) & " and lotdt= '" & Format(grddatagrid.Columns(1).Text, "YYYY-MM-DD") & "' and varcode ='" & Trim(grddatagrid.Columns(4).Text) & "'"
         Case "CLEAR"
           qry = "Delete From TMP_RM_ISSREQ"
       End Select
       '============Excutive Respective Qry With Respective Action
       If Trim(qry) <> "" Then TmpCn.Execute qry
    End If
    
    Set TmpCn = Nothing
End Sub

Private Sub Temp_tbl_Update_Mod(ByVal ROptn As String)
Dim TmpCn As New ADODB.Connection
Dim qry As String: qry = ""

    '======== Open Connection
    With TmpCn
         .Open connectstring
    End With
    
    '======== Respective Action
    
    If TmpCn.State > 0 Then
       Select Case UCase(ROptn)
         Case "ADD"
           qry = "Insert INTO TMP_RM_ISSREQ  (LOTNO,LOTDT,VARCODE,CATCD) VALUES (" & val(grddatagrid.Columns(4).Text) & ",'" & Format(grddatagrid.Columns(5).Text, "yyyy-MM-dd") & "','" & Trim(grddatagrid.Columns(8).Text) & "','" & Trim(grddatagrid.Columns(10).Text) & "')"
         Case "UPDATE"
           qry = "Update TMP_RM_ISSREQ SET QTY =" & val(grddatagrid.Columns(11).Text) & " Where lotno =" & val(grddatagrid.Columns(4).Text) & " and lotdt= '" & Format(grddatagrid.Columns(5).Text, "YYYY-MM-DD") & "' and varcode ='" & Trim(grddatagrid.Columns(8).Text) & "'"
         Case "DELREC"
           qry = "Delete From TMP_RM_ISSREQ Where lotno =" & val(grddatagrid.Columns(4).Text) & " and lotdt= '" & Format(grddatagrid.Columns(5).Text, "YYYY-MM-DD") & "' and varcode ='" & Trim(grddatagrid.Columns(10).Text) & "'"
         Case "CLEAR"
           qry = "Delete From TMP_RM_ISSREQ"
       End Select
       '============Excutive Respective Qry With Respective Action
       If Trim(qry) <> "" Then TmpCn.Execute qry
    End If
    
    Set TmpCn = Nothing
End Sub
Private Sub qcparameterload()
On Error GoTo qcparameterload_Error
    Set rsnew = New Recordset
    rsnew.Open "SELECT isnull(issuecontrolflag,'N')issuecontrolflag FROM QC_PARA WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
    If rsnew(0) = "Y" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM QC_ISSUEREQ WHERE DIVCODE='" & Divcode & "' AND UNITCODE='" & unitcode & "' AND mixno='" & Txtfields(1).Text & "' AND RDATE=(SELECT max(rdate) FROM QC_ISSUEREQ WHERE DIVCODE='" & Divcode & "' AND UNITCODE='" & unitcode & "' AND RDATE<'" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "')", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            MsgBox "Please Define Quality Parameter for the Mixing Count in QC-Master-RMI Issue Requisition Control of Quality Parameter"
            Call BUTTON_Click(10)
            Exit Sub
        End If
        If Rs.RecordCount > 0 Then
            minspanlen = Rs("minsplen")
            maxspanlen = Rs("maxsplen")
            minstr = Rs("minstr")
            maxstr = Rs("maxstr")
            minmic = Rs("minmic")
            maxmic = Rs("maxmic")
            minrd = Rs("minrd")
            maxrd = Rs("maxrd")
            minbb = Rs("minb")
            maxbb = Rs("maxb")
        End If
    End If
Exit Sub
qcparameterload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qcparameterload of Form FrmIssueRequisition"
End Sub




Private Sub mixinglotgrp()
  Set rsd = New Recordset
            rsd.Open "select LOT_CODE ,DESCRIPTION from ig_lot where divcode='" & Divcode & "' and LOT_CODE='" & Txtfields(13).Text & "'", DB
            If rsd.RecordCount > 0 Then
'                Text5.Text = rsd(0)
            Else
            'LookUp.query = "Select Distinct Product_code,Description FROM ig_product"
            'LookUp.Query = "Select Distinct CntCD, CntName As Description FROM Rm_Count Where DivCode = '" & Divcode & "'"
            LookUp.query = "select LOT_CODE ,DESCRIPTION from ig_lot where divcode='" & Divcode & "'"
            LookUp.Caption = "Mix Lot Listing"
            LookUp.DefCol = "LOT_CODE,DESCRIPTION"
            LookUp.ALIGN = "1600,2600"
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(13).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                Txtfields(8).Text = LookUp.Fields(2)
'                Text12.Text = LookUp.Fields(3)
'                Txtfields(13).SetFocus
                LookUp.Clear = True
              
            Else
                LookUp.Clear = True
                'lookup.
                Txtfields(1).SetFocus
                Exit Sub
            End If
            End If
End Sub


