VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form RMIContractAmendment 
   Caption         =   "PO Amendment"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   840
   ClientWidth     =   11400
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtfields 
      Height          =   285
      Index           =   51
      Left            =   9180
      TabIndex        =   209
      Top             =   7800
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.TextBox txtfields 
      Height          =   285
      Index           =   50
      Left            =   10200
      TabIndex        =   208
      Top             =   7800
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.TextBox txtfields 
      Height          =   285
      Index           =   49
      Left            =   9810
      TabIndex        =   207
      Top             =   7800
      Visible         =   0   'False
      Width           =   345
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4395
      Left            =   11670
      TabIndex        =   180
      Top             =   870
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7752
   End
   Begin VB.Frame Frame11 
      Height          =   495
      Left            =   5220
      TabIndex        =   175
      Top             =   510
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   330
         Left            =   3990
         TabIndex        =   181
         Top             =   120
         Visible         =   0   'False
         Width           =   1290
      End
      Begin VB.OptionButton Option7 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1725
         TabIndex        =   176
         Top             =   135
         Width           =   975
      End
      Begin VB.OptionButton Option6 
         Caption         =   "No"
         Height          =   285
         Left            =   3030
         TabIndex        =   177
         Top             =   135
         Value           =   -1  'True
         Width           =   900
      End
      Begin VB.Label Label43 
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
         Left            =   165
         TabIndex        =   179
         Top             =   165
         Width           =   1425
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   60
      Top             =   9030
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame8 
      Caption         =   "Removed  components for Multiple variety concept"
      Height          =   2895
      Left            =   11400
      TabIndex        =   110
      Top             =   2160
      Visible         =   0   'False
      Width           =   8535
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "salcnfno"
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
         Height          =   330
         Index           =   9
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   136
         Top             =   2400
         Visible         =   0   'False
         Width           =   1050
      End
      Begin VB.Frame Frame3 
         Caption         =   "Rate Per"
         Height          =   495
         Left            =   210
         TabIndex        =   127
         Top             =   1800
         Visible         =   0   'False
         Width           =   3375
         Begin VB.OptionButton Optkgs 
            Caption         =   "Kgs"
            Height          =   255
            Left            =   2160
            TabIndex        =   129
            Top             =   120
            Width           =   735
         End
         Begin VB.OptionButton Optcandy 
            Caption         =   "Candy"
            Height          =   255
            Left            =   840
            TabIndex        =   128
            Top             =   120
            Width           =   855
         End
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "candyrate"
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
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   7
         Left            =   4920
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   121
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "PTY_CONTNO"
         Enabled         =   0   'False
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
         Height          =   330
         Index           =   17
         Left            =   2760
         MaxLength       =   10
         TabIndex        =   119
         Top             =   1560
         Width           =   1695
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "sno"
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
         Height          =   330
         Index           =   16
         Left            =   2160
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   117
         Top             =   1200
         Width           =   1755
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ordqty"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
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
         Height          =   330
         Index           =   6
         Left            =   1920
         MaxLength       =   15
         TabIndex        =   115
         Top             =   720
         Width           =   1545
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "varcode"
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
         Height          =   330
         Index           =   4
         Left            =   1200
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   113
         Top             =   360
         Width           =   900
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
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
         Index           =   15
         Left            =   2160
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   112
         TabStop         =   0   'False
         Top             =   360
         Width           =   6000
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Sales Conf.Number"
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
         Index           =   0
         Left            =   120
         TabIndex        =   137
         Top             =   2400
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.Label Label8 
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
         Index           =   0
         Left            =   4320
         TabIndex        =   122
         Top             =   1080
         Width           =   435
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Party Sample Number"
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
         Left            =   480
         TabIndex        =   120
         Top             =   1560
         Width           =   1980
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         Caption         =   "Mill Sample Number"
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
         Left            =   0
         TabIndex        =   118
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
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
         TabIndex        =   116
         Top             =   720
         Width           =   720
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
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
         Left            =   0
         TabIndex        =   114
         Top             =   360
         Width           =   630
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -75
      TabIndex        =   89
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   14
         Left            =   4725
         Picture         =   "RMIContractAmendment.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   243
         ToolTipText     =   "Before Amentment Order PO Print"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   9270
         Picture         =   "RMIContractAmendment.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   178
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5250
         Picture         =   "RMIContractAmendment.frx":07D9
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Amendment PO Print"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   4200
         Picture         =   "RMIContractAmendment.frx":0C1B
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "New Order Report Print (Ctrl P)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":105D
         Height          =   510
         Index           =   4
         Left            =   610
         Picture         =   "RMIContractAmendment.frx":1367
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":16FC
         Height          =   510
         Index           =   6
         Left            =   1610
         Picture         =   "RMIContractAmendment.frx":1B46
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":1E93
         Height          =   510
         Index           =   1
         Left            =   90
         Picture         =   "RMIContractAmendment.frx":219D
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":2530
         Height          =   510
         Index           =   5
         Left            =   1110
         Picture         =   "RMIContractAmendment.frx":297A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":2CDF
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
         Left            =   6645
         Picture         =   "RMIContractAmendment.frx":2FE9
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":3385
         Height          =   510
         Index           =   111
         Left            =   7080
         Picture         =   "RMIContractAmendment.frx":368F
         Style           =   1  'Graphical
         TabIndex        =   111
         ToolTipText     =   "Modify (Ctrl M) "
         Top             =   120
         Visible         =   0   'False
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":3A09
         Height          =   510
         Index           =   7
         Left            =   2130
         Picture         =   "RMIContractAmendment.frx":3E53
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":41A3
         Height          =   510
         Index           =   11
         Left            =   5760
         Picture         =   "RMIContractAmendment.frx":45ED
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":4982
         Height          =   510
         Index           =   9
         Left            =   3120
         Picture         =   "RMIContractAmendment.frx":4C8C
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "RMIContractAmendment.frx":502E
         Height          =   510
         Index           =   10
         Left            =   3650
         Picture         =   "RMIContractAmendment.frx":5338
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel (Ctrl BackSpace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractAmendment.frx":56B4
         Height          =   510
         Index           =   8
         Left            =   2640
         Picture         =   "RMIContractAmendment.frx":5AFE
         Style           =   1  'Graphical
         TabIndex        =   6
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
         Left            =   10365
         TabIndex        =   91
         Top             =   255
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7815
         TabIndex        =   90
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   88
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
            Object.Width           =   11571
            MinWidth        =   11571
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "05/09/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "06:02 PM"
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
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00FFFFFF&
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
      ItemData        =   "RMIContractAmendment.frx":5E60
      Left            =   11460
      List            =   "RMIContractAmendment.frx":5E6D
      Style           =   2  'Dropdown List
      TabIndex        =   148
      Top             =   8040
      Visible         =   0   'False
      Width           =   1935
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7845
      Left            =   360
      TabIndex        =   92
      Top             =   1005
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   13838
      _Version        =   393216
      TabHeight       =   520
      BackColor       =   8421631
      TabCaption(0)   =   "&Order Details            "
      TabPicture(0)   =   "RMIContractAmendment.frx":5E83
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label3(14)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label59"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label93"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame1"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Frame9"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "txtfields(67)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "txtfields(68)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "btnBrowse"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "txt_filename"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).ControlCount=   9
      TabCaption(1)   =   "&Payment Details"
      TabPicture(1)   =   "RMIContractAmendment.frx":5E9F
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame6"
      Tab(1).Control(1)=   "Frame2"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "&Tax Details     "
      TabPicture(2)   =   "RMIContractAmendment.frx":5EBB
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame10"
      Tab(2).ControlCount=   1
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
         Left            =   1425
         Locked          =   -1  'True
         TabIndex        =   246
         Top             =   7350
         Visible         =   0   'False
         Width           =   3495
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
         Left            =   5040
         Style           =   1  'Graphical
         TabIndex        =   245
         Top             =   7320
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "SupFileName"
         ForeColor       =   &H80000012&
         Height          =   315
         Index           =   68
         Left            =   7200
         Locked          =   -1  'True
         TabIndex        =   244
         Top             =   7365
         Width           =   3645
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "AmdReason"
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   67
         Left            =   1380
         MaxLength       =   80
         TabIndex        =   241
         Top             =   6990
         Width           =   9465
      End
      Begin VB.Frame Frame10 
         Height          =   6000
         Left            =   -74850
         TabIndex        =   162
         Top             =   360
         Width           =   10095
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
            Index           =   57
            Left            =   6435
            MaxLength       =   7
            TabIndex        =   216
            Top             =   1560
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   56
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   213
            Top             =   1560
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
            Index           =   55
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   212
            Top             =   1560
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
            Index           =   37
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   78
            Top             =   1110
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   36
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   77
            Top             =   1110
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   8940
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   76
            Top             =   675
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   34
            Left            =   6435
            MaxLength       =   7
            TabIndex        =   75
            Top             =   690
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   33
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   74
            Top             =   690
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   32
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   73
            Top             =   660
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   31
            Left            =   8940
            MaxLength       =   7
            TabIndex        =   72
            Top             =   255
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   30
            Left            =   6435
            MaxLength       =   7
            TabIndex        =   71
            Top             =   270
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   29
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   70
            Top             =   255
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   28
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   69
            Top             =   240
            Width           =   885
         End
         Begin VB.Label Label54 
            AutoSize        =   -1  'True
            Caption         =   "IGST %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5280
            TabIndex        =   217
            Top             =   1590
            Width           =   675
         End
         Begin VB.Label Label53 
            AutoSize        =   -1  'True
            Caption         =   "CGST %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   215
            Top             =   1590
            Width           =   735
         End
         Begin VB.Label Label52 
            AutoSize        =   -1  'True
            Caption         =   "SGST %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   214
            Top             =   1590
            Width           =   720
         End
         Begin VB.Line Line1 
            X1              =   0
            X2              =   10365
            Y1              =   2040
            Y2              =   2040
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "Insurance %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   172
            Top             =   1140
            Width           =   1095
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Other Tax %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   171
            Top             =   1140
            Width           =   1095
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Tax%"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7830
            TabIndex        =   170
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Tax Code"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5295
            TabIndex        =   169
            Top             =   735
            Width           =   825
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Cess %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   168
            Top             =   735
            Width           =   660
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "HS Cess %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   167
            Top             =   705
            Width           =   960
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "ED Cess %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7830
            TabIndex        =   166
            Top             =   330
            Width           =   960
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "BED %"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5295
            TabIndex        =   165
            Top             =   330
            Width           =   600
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Trade Discount %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   164
            Top             =   300
            Width           =   1530
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Cash Discount %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   163
            Top             =   255
            Width           =   1470
         End
      End
      Begin VB.Frame Frame6 
         Height          =   3090
         Left            =   -74820
         TabIndex        =   140
         Top             =   3645
         Width           =   10065
         Begin VB.PictureBox FLEXG 
            Height          =   1590
            Left            =   1920
            ScaleHeight     =   1530
            ScaleWidth      =   7965
            TabIndex        =   160
            Top             =   1410
            Width           =   8025
            Begin MSFlexGridLib.MSFlexGrid Flexg1 
               Height          =   1860
               Left            =   -30
               TabIndex        =   67
               ToolTipText     =   "Double click in Grid To delete the row "
               Top             =   -30
               Width           =   8445
               _ExtentX        =   14896
               _ExtentY        =   3281
               _Version        =   393216
               Rows            =   1
               Cols            =   6
               FixedRows       =   0
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
         End
         Begin VB.ComboBox Combo8 
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
            ItemData        =   "RMIContractAmendment.frx":5ED7
            Left            =   5250
            List            =   "RMIContractAmendment.frx":5EE7
            TabIndex        =   64
            Text            =   "Immediate"
            Top             =   630
            Width           =   4695
         End
         Begin VB.ComboBox Combo6 
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
            ItemData        =   "RMIContractAmendment.frx":5F27
            Left            =   1920
            List            =   "RMIContractAmendment.frx":5F29
            Style           =   2  'Dropdown List
            TabIndex        =   63
            Top             =   630
            Width           =   1695
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "deladd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   22
            Left            =   1920
            MaxLength       =   7
            TabIndex        =   61
            Top             =   240
            Width           =   1695
         End
         Begin VB.TextBox Text6 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   3630
            Locked          =   -1  'True
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   240
            Width           =   6285
         End
         Begin VB.TextBox Text9 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   5235
            TabIndex        =   66
            Top             =   1020
            Width           =   1680
         End
         Begin VB.CommandButton deliveryadd 
            Caption         =   "Add"
            Height          =   375
            Left            =   9060
            TabIndex        =   83
            Top             =   1020
            Width           =   855
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   345
            Left            =   1905
            TabIndex        =   65
            Top             =   1020
            Visible         =   0   'False
            Width           =   1695
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   375
            Left            =   1920
            TabIndex        =   68
            Top             =   1020
            Width           =   1695
            _ExtentX        =   2990
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Instruction"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3705
            TabIndex        =   147
            Top             =   735
            Width           =   915
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   146
            Top             =   690
            Width           =   615
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Address"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   145
            Top             =   420
            Width           =   1470
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   144
            Top             =   1080
            Width           =   1185
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Quantity"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3660
            TabIndex        =   143
            Top             =   1125
            Width           =   1500
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Schedule View"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   105
            TabIndex        =   142
            Top             =   1440
            Width           =   1395
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Schedule"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   60
            TabIndex        =   141
            Top             =   150
            Width           =   1770
         End
      End
      Begin VB.Frame Frame9 
         Height          =   1515
         Left            =   90
         TabIndex        =   46
         Top             =   5370
         Width           =   10875
         Begin MSDataGridLib.DataGrid DataGrid1 
            Height          =   1380
            Left            =   0
            TabIndex        =   45
            Top             =   135
            Width           =   10860
            _ExtentX        =   19156
            _ExtentY        =   2434
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   1
            RowHeight       =   15
            TabAction       =   2
            RowDividerStyle =   6
            AllowAddNew     =   -1  'True
            AllowDelete     =   -1  'True
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
      End
      Begin VB.Frame Frame2 
         Height          =   3165
         Left            =   -74820
         TabIndex        =   123
         Top             =   420
         Width           =   10065
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DeliveryTerms"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   54
            Left            =   1920
            MaxLength       =   250
            TabIndex        =   60
            Top             =   2730
            Width           =   8010
         End
         Begin VB.TextBox Text15 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Transport"
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   1920
            MaxLength       =   50
            TabIndex        =   57
            Top             =   2355
            Width           =   3750
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms1"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   45
            Left            =   5940
            MaxLength       =   30
            TabIndex        =   58
            ToolTipText     =   "Enter maximun of 30 characters (ex: 80% Payment)"
            Top             =   1890
            Width           =   3045
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms1Days"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   46
            Left            =   9030
            MaxLength       =   3
            TabIndex        =   194
            ToolTipText     =   "Enter maximun of 3 Number (ex: 15)"
            Top             =   1890
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms2"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   47
            Left            =   5940
            MaxLength       =   30
            TabIndex        =   59
            ToolTipText     =   "Enter maximun of 30 characters (ex: 100% Payment)"
            Top             =   2280
            Width           =   3045
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms2Days"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   48
            Left            =   9030
            MaxLength       =   3
            TabIndex        =   193
            ToolTipText     =   "Enter maximun of 3 Number (ex: 30)"
            Top             =   2280
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "CreditDays"
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
            Height          =   330
            Index           =   38
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   47
            Top             =   165
            Width           =   1260
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "InterestPer"
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
            Index           =   39
            Left            =   4380
            MaxLength       =   5
            TabIndex        =   48
            Top             =   150
            Width           =   1830
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "deltype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   26
            Left            =   3180
            Locked          =   -1  'True
            MaxLength       =   25
            TabIndex        =   52
            TabStop         =   0   'False
            Top             =   870
            Width           =   6780
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "deltype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   20
            Left            =   1920
            MaxLength       =   1
            TabIndex        =   49
            Top             =   525
            Width           =   1215
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "acceptance"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   18
            Left            =   1920
            MaxLength       =   20
            TabIndex        =   51
            Top             =   885
            Width           =   1215
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Remarks"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   19
            Left            =   1920
            MaxLength       =   250
            TabIndex        =   53
            Top             =   1230
            Width           =   8040
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00FFFFFF&
            DataField       =   "contperson"
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   1920
            MaxLength       =   50
            TabIndex        =   56
            Top             =   1950
            Width           =   3750
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "billadd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   21
            Left            =   1920
            MaxLength       =   7
            TabIndex        =   54
            Top             =   1590
            Width           =   1215
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   55
            TabStop         =   0   'False
            Top             =   1590
            Width           =   2475
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00C0E0FF&
            DataField       =   "dlytype"
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
            ItemData        =   "RMIContractAmendment.frx":5F2B
            Left            =   10680
            List            =   "RMIContractAmendment.frx":5F2D
            Style           =   2  'Dropdown List
            TabIndex        =   135
            Top             =   600
            Visible         =   0   'False
            Width           =   1920
         End
         Begin VB.TextBox txtdeldesc 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   50
            TabStop         =   0   'False
            Text            =   " "
            Top             =   510
            Width           =   6780
         End
         Begin VB.Label Label51 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Terms"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   105
            TabIndex        =   211
            Top             =   2775
            Width           =   1320
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Transport"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   199
            Top             =   2430
            Width           =   825
         End
         Begin VB.Line Line3 
            X1              =   5700
            X2              =   10080
            Y1              =   1620
            Y2              =   1620
         End
         Begin VB.Line Line2 
            X1              =   5700
            X2              =   5700
            Y1              =   1620
            Y2              =   2790
         End
         Begin VB.Label Label45 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5940
            TabIndex        =   198
            Top             =   1650
            Width           =   1350
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "No.of days"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   9060
            TabIndex        =   197
            Top             =   1620
            Width           =   915
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "1."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5760
            TabIndex        =   196
            Top             =   1920
            Width           =   165
         End
         Begin VB.Label Label49 
            AutoSize        =   -1  'True
            Caption         =   "2."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5760
            TabIndex        =   195
            Top             =   2310
            Width           =   165
         End
         Begin VB.Label lblcrdays 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   188
            Top             =   240
            Width           =   1020
         End
         Begin VB.Label lblinterest 
            AutoSize        =   -1  'True
            Caption         =   "Interest %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3330
            TabIndex        =   187
            Top             =   240
            Width           =   915
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Billing Address"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   139
            Top             =   1635
            Width           =   1260
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   138
            Top             =   2025
            Width           =   1305
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   90
            TabIndex        =   126
            Top             =   600
            Width           =   1200
         End
         Begin VB.Label Label21 
            Caption         =   "Authorized Signatory"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   315
            Left            =   90
            TabIndex        =   125
            Top             =   930
            Width           =   2040
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   124
            Top             =   1245
            Width           =   765
         End
      End
      Begin VB.Frame Frame1 
         Height          =   5055
         Left            =   90
         TabIndex        =   93
         Top             =   330
         Width           =   10875
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "TCS_PER"
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
            Index           =   69
            Left            =   1410
            MaxLength       =   7
            TabIndex        =   249
            Top             =   4680
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "AContNo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   66
            Left            =   8100
            MaxLength       =   10
            TabIndex        =   236
            TabStop         =   0   'False
            Top             =   135
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            DataField       =   "SusCatType"
            Height          =   330
            Index           =   65
            Left            =   8250
            MaxLength       =   10
            TabIndex        =   234
            Text            =   " "
            Top             =   4320
            Width           =   495
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   64
            Left            =   8775
            Locked          =   -1  'True
            TabIndex        =   233
            TabStop         =   0   'False
            Text            =   " "
            Top             =   4320
            Width           =   1995
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Line_No"
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
            Height          =   315
            Index           =   63
            Left            =   5490
            MaxLength       =   20
            TabIndex        =   231
            Top             =   4305
            Width           =   1425
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "plcode"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   62
            Left            =   1410
            MaxLength       =   25
            TabIndex        =   230
            Top             =   4290
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   61
            Left            =   2340
            Locked          =   -1  'True
            MaxLength       =   60
            TabIndex        =   228
            Top             =   4305
            Width           =   2220
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Paycode"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   60
            Left            =   4560
            MaxLength       =   25
            TabIndex        =   227
            Top             =   2205
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "FTAmt"
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
            Height          =   315
            Index           =   59
            Left            =   9600
            MaxLength       =   7
            TabIndex        =   226
            Top             =   3960
            Visible         =   0   'False
            Width           =   1080
         End
         Begin VB.ComboBox Combo10 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "RMIContractAmendment.frx":5F2F
            Left            =   9600
            List            =   "RMIContractAmendment.frx":5F39
            Style           =   2  'Dropdown List
            TabIndex        =   223
            Top             =   3600
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "prepdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "hh:mm:ss AMPM"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   4
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
            Left            =   9000
            MaxLength       =   14
            TabIndex        =   218
            Top             =   1200
            Width           =   1665
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   53
            Left            =   6390
            Locked          =   -1  'True
            TabIndex        =   43
            TabStop         =   0   'False
            Text            =   " "
            Top             =   3960
            Width           =   2480
         End
         Begin VB.TextBox txtfields 
            DataField       =   "currcode"
            Height          =   330
            Index           =   52
            Left            =   5865
            MaxLength       =   10
            TabIndex        =   42
            Text            =   " "
            Top             =   3960
            Width           =   495
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "CommPer"
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
            Index           =   44
            Left            =   7410
            MaxLength       =   7
            TabIndex        =   17
            Top             =   840
            Width           =   885
         End
         Begin VB.ComboBox Combo9 
            BackColor       =   &H00FFFFFF&
            DataField       =   "RATEUNIT"
            Height          =   315
            ItemData        =   "RMIContractAmendment.frx":5F46
            Left            =   8370
            List            =   "RMIContractAmendment.frx":5F50
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   33
            Top             =   2910
            Width           =   1575
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Season"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   43
            Left            =   4560
            MaxLength       =   25
            TabIndex        =   25
            Top             =   1875
            Width           =   1305
         End
         Begin VB.TextBox Text14 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   300
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   190
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1875
            Width           =   4785
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "purtype"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   42
            Left            =   4560
            MaxLength       =   2
            TabIndex        =   35
            Top             =   3255
            Width           =   1305
         End
         Begin VB.TextBox Text13 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   36
            TabStop         =   0   'False
            Text            =   " "
            Top             =   3255
            Width           =   4785
         End
         Begin VB.CheckBox ChkCentralized 
            Alignment       =   1  'Right Justify
            Caption         =   "Centralized Order"
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
            Height          =   285
            Left            =   7560
            TabIndex        =   186
            Top             =   870
            Value           =   1  'Checked
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SUPPLIERLOTNOTO"
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
            Height          =   315
            Index           =   41
            Left            =   9795
            MaxLength       =   7
            TabIndex        =   185
            Top             =   4200
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SUPPLIERLOTNOFROM"
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
            Height          =   315
            Index           =   40
            Left            =   7410
            MaxLength       =   7
            TabIndex        =   44
            Top             =   3960
            Width           =   1080
         End
         Begin VB.Frame Frame12 
            Height          =   435
            Left            =   1380
            TabIndex        =   182
            Top             =   3840
            Width           =   3180
            Begin VB.OptionButton Option4 
               Caption         =   "Individual Item"
               Height          =   195
               Left            =   90
               TabIndex        =   40
               Top             =   150
               Value           =   -1  'True
               Width           =   1515
            End
            Begin VB.OptionButton Option5 
               Caption         =   "Common for All"
               Height          =   195
               Left            =   1620
               TabIndex        =   41
               Top             =   150
               Width           =   1395
            End
         End
         Begin VB.ComboBox Combo7 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "RMIContractAmendment.frx":5F64
            Left            =   1380
            List            =   "RMIContractAmendment.frx":5F6E
            Style           =   2  'Dropdown List
            TabIndex        =   37
            Top             =   3540
            Width           =   1575
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5895
            Locked          =   -1  'True
            TabIndex        =   22
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1530
            Width           =   4770
         End
         Begin VB.TextBox Text11 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   1380
            Locked          =   -1  'True
            TabIndex        =   21
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1515
            Width           =   3435
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "MILLREFNO"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   27
            Left            =   4560
            MaxLength       =   20
            TabIndex        =   32
            Top             =   2910
            Width           =   2190
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Season"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   25
            Left            =   4560
            MaxLength       =   50
            TabIndex        =   24
            Top             =   1875
            Width           =   5400
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Staple"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   23
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   31
            Top             =   2865
            Width           =   1545
         End
         Begin VB.TextBox Text10 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   39
            TabStop         =   0   'False
            Text            =   " "
            Top             =   3600
            Width           =   2970
         End
         Begin VB.ComboBox Combo4 
            BackColor       =   &H00FFFFFF&
            DataSource      =   "weighment"
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
            ItemData        =   "RMIContractAmendment.frx":5F89
            Left            =   8580
            List            =   "RMIContractAmendment.frx":5F8B
            TabIndex        =   85
            Top             =   5010
            Visible         =   0   'False
            Width           =   1935
         End
         Begin VB.ComboBox Combo5 
            BackColor       =   &H00FFFFFF&
            DataField       =   "RATEUNIT"
            Height          =   315
            ItemData        =   "RMIContractAmendment.frx":5F8D
            Left            =   1380
            List            =   "RMIContractAmendment.frx":5F8F
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   28
            Top             =   2550
            Width           =   1575
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   300
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   30
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2580
            Width           =   4785
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "cntcode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   5
            Left            =   4560
            MaxLength       =   10
            TabIndex        =   38
            Top             =   3600
            Width           =   1320
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "paymode"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   8
            Left            =   4560
            MaxLength       =   2
            TabIndex        =   29
            Top             =   2565
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "PAYTERMS"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   12
            Left            =   5865
            Locked          =   -1  'True
            MaxLength       =   60
            TabIndex        =   27
            Top             =   2220
            Width           =   4800
         End
         Begin VB.ComboBox Combo3 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "RMIContractAmendment.frx":5F91
            Left            =   1380
            List            =   "RMIContractAmendment.frx":5FA1
            Style           =   2  'Dropdown List
            TabIndex        =   26
            Top             =   2220
            Width           =   1575
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CROPYEAR"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   13
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   23
            Top             =   1875
            Width           =   1560
         End
         Begin VB.Frame Frame4 
            Caption         =   "Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1050
            Left            =   9465
            TabIndex        =   86
            Top             =   110
            Width           =   1335
            Begin VB.OptionButton Option3 
               Caption         =   "&Inter-State"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   340
               Left            =   105
               TabIndex        =   80
               TabStop         =   0   'False
               Top             =   430
               Width           =   1275
            End
            Begin VB.OptionButton Option2 
               Caption         =   "&Local"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   79
               TabStop         =   0   'False
               Top             =   240
               Value           =   -1  'True
               Width           =   1155
            End
            Begin VB.OptionButton Option1 
               Caption         =   "I&mport"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   315
               Left            =   120
               TabIndex        =   81
               TabStop         =   0   'False
               Top             =   700
               Width           =   1035
            End
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   20
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1185
            Width           =   4080
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   18
            TabStop         =   0   'False
            Text            =   " "
            Top             =   855
            Width           =   4080
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   510
            Width           =   4080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "brkcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   2
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   16
            Top             =   855
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "areacode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   3
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   4
            TabIndex        =   19
            Top             =   1185
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   1
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   14
            Top             =   510
            Width           =   885
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "contno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   150
            Width           =   945
         End
         Begin MSMask.MaskEdBox MaskEdBox3 
            DataField       =   "contdt"
            Height          =   300
            Left            =   4950
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   14737632
            ForeColor       =   0
            Enabled         =   0   'False
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   4950
            TabIndex        =   84
            TabStop         =   0   'False
            Top             =   135
            Width           =   1395
            _ExtentX        =   2461
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   164429825
            CurrentDate     =   37257
            MinDate         =   36892
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "rateunit"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   6.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   270
            Index           =   24
            Left            =   1425
            Locked          =   -1  'True
            MaxLength       =   40
            TabIndex        =   82
            TabStop         =   0   'False
            Top             =   2580
            Width           =   1485
         End
         Begin MSMask.MaskEdBox MaskEdBox2 
            DataField       =   "DUEDATE"
            Height          =   315
            Left            =   1380
            TabIndex        =   34
            Top             =   3210
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox4 
            DataField       =   "prepDate"
            Height          =   300
            Left            =   6960
            TabIndex        =   220
            TabStop         =   0   'False
            Top             =   1215
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   14737632
            ForeColor       =   0
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   330
            Left            =   6960
            TabIndex        =   221
            TabStop         =   0   'False
            Top             =   1200
            Width           =   1395
            _ExtentX        =   2461
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   164429825
            CurrentDate     =   37257
            MinDate         =   36892
         End
         Begin MSMask.MaskEdBox MaskEdBox5 
            DataField       =   "acontdt"
            Height          =   300
            Left            =   8070
            TabIndex        =   237
            TabStop         =   0   'False
            Top             =   495
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   14737632
            ForeColor       =   0
            Enabled         =   0   'False
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   330
            Left            =   8070
            TabIndex        =   238
            TabStop         =   0   'False
            Top             =   480
            Width           =   1395
            _ExtentX        =   2461
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   164429825
            CurrentDate     =   37257
            MinDate         =   36892
         End
         Begin VB.Label Label60 
            AutoSize        =   -1  'True
            Caption         =   "TCS %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   250
            Top             =   4710
            Width           =   600
         End
         Begin VB.Label Label58 
            AutoSize        =   -1  'True
            Caption         =   "Amendment No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   6480
            TabIndex        =   240
            Top             =   195
            Width           =   1380
         End
         Begin VB.Label Label57 
            AutoSize        =   -1  'True
            Caption         =   "Amendmant Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   6480
            TabIndex        =   239
            Top             =   540
            Width           =   1500
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Sustainable Type"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   1
            Left            =   7000
            TabIndex        =   235
            Top             =   4395
            Width           =   1230
         End
         Begin VB.Label Label56 
            AutoSize        =   -1  'True
            Caption         =   "Line No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   4695
            TabIndex        =   232
            Top             =   4335
            Width           =   690
         End
         Begin VB.Label Label55 
            AutoSize        =   -1  'True
            Caption         =   "Plant Name"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   105
            TabIndex        =   229
            Top             =   4335
            Width           =   975
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "FT Amt"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   13
            Left            =   8880
            TabIndex        =   225
            Top             =   3960
            Visible         =   0   'False
            Width           =   600
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "FT Flag"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   12
            Left            =   8880
            TabIndex        =   224
            Top             =   3600
            Width           =   600
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Prep. Date"
            Height          =   390
            Index           =   0
            Left            =   6405
            TabIndex        =   222
            Top             =   1080
            Width           =   645
            WordWrap        =   -1  'True
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Prep. Time"
            Height          =   435
            Index           =   10
            Left            =   8520
            TabIndex        =   219
            Top             =   1125
            Width           =   645
            WordWrap        =   -1  'True
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Billing Currency"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   50
            Left            =   4575
            TabIndex        =   210
            Top             =   4035
            Width           =   1080
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Comm.(%)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6420
            TabIndex        =   192
            Top             =   870
            Width           =   960
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Final Weighment"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   3
            Left            =   6840
            TabIndex        =   191
            Top             =   2970
            Width           =   1410
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   3060
            TabIndex        =   189
            Top             =   3315
            Width           =   1260
         End
         Begin VB.Label lblSLNTo 
            Caption         =   "To"
            Height          =   195
            Left            =   8550
            TabIndex        =   184
            Top             =   4020
            Width           =   405
         End
         Begin VB.Label lblSLNFrom 
            Caption         =   "Supplier Lot No.   From "
            Height          =   195
            Left            =   6465
            TabIndex        =   183
            Top             =   4020
            Width           =   1875
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   11
            Left            =   120
            TabIndex        =   174
            Top             =   3255
            Width           =   1185
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Tax Choice"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   10
            Left            =   120
            TabIndex        =   173
            Top             =   3960
            Width           =   1230
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   9
            Left            =   120
            TabIndex        =   161
            Top             =   3585
            Width           =   1200
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Mill Ref No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   8
            Left            =   3060
            TabIndex        =   152
            Top             =   2985
            Width           =   1125
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Season"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   7
            Left            =   3060
            TabIndex        =   151
            Top             =   1965
            Width           =   630
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Staple Length"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   150
            Top             =   2910
            Width           =   1170
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "UOM"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   134
            Top             =   2610
            Width           =   390
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3060
            TabIndex        =   133
            Top             =   3630
            Width           =   1125
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3060
            TabIndex        =   131
            Top             =   2295
            Width           =   1350
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Payment Mode"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3060
            TabIndex        =   130
            Top             =   2640
            Width           =   1260
         End
         Begin VB.Label Label19 
            Appearance      =   0  'Flat
            Caption         =   "State"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   315
            Left            =   5010
            TabIndex        =   108
            Top             =   1560
            Width           =   1215
         End
         Begin VB.Label Label18 
            Appearance      =   0  'Flat
            Caption         =   "Station"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   315
            Left            =   120
            TabIndex        =   107
            Top             =   1560
            Width           =   855
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Crop Year"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   106
            Top             =   1890
            Width           =   870
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Mode of Transport"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   390
            Index           =   1
            Left            =   120
            TabIndex        =   105
            Top             =   2145
            Width           =   1500
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Order Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3840
            TabIndex        =   98
            Top             =   195
            Width           =   960
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area Name"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   97
            Top             =   1245
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Order No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   96
            Top             =   210
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   95
            Top             =   870
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   94
            Top             =   525
            Width           =   765
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Weighment"
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
            Left            =   7410
            TabIndex        =   132
            Top             =   4980
            Visible         =   0   'False
            Width           =   1020
         End
      End
      Begin VB.Label Label93 
         Caption         =   "Supplier PO"
         Height          =   255
         Left            =   120
         TabIndex        =   248
         Top             =   7440
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.Label Label59 
         Caption         =   "File Name"
         Height          =   255
         Left            =   6360
         TabIndex        =   247
         Top             =   7440
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Amendment Reson"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   14
         Left            =   120
         TabIndex        =   242
         Top             =   6960
         Width           =   1380
         WordWrap        =   -1  'True
      End
   End
   Begin VB.Frame Frame7 
      Height          =   2430
      Left            =   1920
      TabIndex        =   99
      Top             =   2160
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIContractAmendment.frx":5FC8
         Height          =   615
         Left            =   4020
         Picture         =   "RMIContractAmendment.frx":63AA
         Style           =   1  'Graphical
         TabIndex        =   102
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "RMIContractAmendment.frx":677D
         Height          =   615
         Left            =   2580
         Picture         =   "RMIContractAmendment.frx":6B63
         Style           =   1  'Graphical
         TabIndex        =   101
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtcontno 
         BackColor       =   &H80000009&
         Height          =   300
         Left            =   3510
         MaxLength       =   6
         TabIndex        =   100
         Top             =   900
         Width           =   1785
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
         Left            =   -15
         TabIndex        =   104
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Contract No."
         Height          =   195
         Left            =   2070
         TabIndex        =   103
         Top             =   930
         Width           =   900
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Removed Column"
      Height          =   1530
      Left            =   2400
      TabIndex        =   153
      Top             =   2400
      Visible         =   0   'False
      Width           =   6570
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
         Index           =   10
         Left            =   1260
         MaxLength       =   10
         TabIndex        =   156
         Top             =   345
         Width           =   1890
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
         Left            =   1260
         MaxLength       =   10
         TabIndex        =   155
         Top             =   705
         Width           =   1890
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
         Left            =   4740
         MaxLength       =   10
         TabIndex        =   154
         Top             =   705
         Width           =   1650
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   60
         TabIndex        =   159
         Top             =   345
         Width           =   1110
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "PR.No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   60
         TabIndex        =   158
         Top             =   705
         Width           =   570
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Press Mark No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   5
         Left            =   3180
         TabIndex        =   157
         Top             =   705
         Width           =   1290
      End
   End
   Begin VB.Frame dlmdfrm 
      Height          =   6120
      Left            =   420
      TabIndex        =   200
      Top             =   990
      Visible         =   0   'False
      Width           =   11115
      Begin VB.CommandButton delmodok 
         Caption         =   "&OK"
         Height          =   320
         Left            =   4905
         TabIndex        =   204
         Top             =   5610
         Width           =   1305
      End
      Begin VB.OptionButton Option21 
         Caption         =   "IndentNo wise"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   7785
         TabIndex        =   202
         Top             =   585
         Width           =   1620
      End
      Begin VB.OptionButton Option33 
         Caption         =   "Item wise"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   9465
         TabIndex        =   201
         Top             =   585
         Width           =   1245
      End
      Begin FPSpreadADO.fpSpread FpSpdInd 
         Height          =   4260
         Left            =   150
         TabIndex        =   203
         Top             =   1140
         Visible         =   0   'False
         Width           =   10830
         _Version        =   524288
         _ExtentX        =   19103
         _ExtentY        =   7514
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
         SpreadDesigner  =   "RMIContractAmendment.frx":6F29
         AppearanceStyle =   0
      End
      Begin FPSpreadADO.fpSpread FpSpdIndHead 
         Height          =   555
         Left            =   165
         TabIndex        =   205
         Top             =   495
         Visible         =   0   'False
         Width           =   10815
         _Version        =   524288
         _ExtentX        =   19076
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
         SpreadDesigner  =   "RMIContractAmendment.frx":73B8
         AppearanceStyle =   0
      End
      Begin VB.Label delmodoklabel 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Pending Indent  Listing"
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
         TabIndex        =   206
         Top             =   120
         Width           =   12045
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   12360
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Unit"
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
      Index           =   1
      Left            =   10230
      TabIndex        =   149
      Top             =   1680
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Area Name"
      Height          =   195
      Index           =   2
      Left            =   0
      TabIndex        =   109
      Top             =   0
      Width           =   795
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Order Amendment"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   330
      Left            =   420
      TabIndex        =   87
      Top             =   600
      Width           =   3405
   End
End
Attribute VB_Name = "RMIContractAmendment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoPrimaryRS1 As Recordset
Attribute adoPrimaryRS1.VB_VarHelpID = -1
Dim rstParameter As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim iFlag As Integer
Dim RS2 As Recordset
Dim indentrs As Recordset
Dim RS11 As Recordset
Dim prty As Recordset
Dim rstQry As Recordset
Dim rptv As Report.ReportView
Dim sCR As String
Dim co As Integer, pg As Integer, a As Integer
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim Opt As String
Dim opt1 As String ''For modification only
Dim supbrk As String
Dim DB As Connection
Dim AmdafterGRN As Integer
Dim nrs As Recordset
Dim g, U As Integer
Dim RSS As Recordset  ''For multiple Variety
Dim RsMod As Recordset ''For adoprimaryrs Mod
Dim Varcode As String
Dim wosample As String
Dim sampNo As String ''For Grid  Validation (To avoid Sample no repeataion from rm_sample)
Dim Focus As String
Dim focus1 As String
Dim rsrate As Recordset
Dim MFLG As String
Dim rsa As New Recordset
Dim cnt As Integer
Dim IndxRows As New Collection
Dim IndentNo As String
Dim itemcode As String
Dim itemName As String
Dim department As String
Dim iTotal As Integer
Dim strGridTotal As New Collection
Dim iCurrentRow As Integer
Dim IGSTFLG As String
Dim STATEFLAG, SuppType As String
Dim rstemp As Recordset

Private Enum E_SpdIndentHead
    SprdHCheck = 1
    SprdHindNo
    SprdHinddt
    sprdHItemCode
    sprdHItemName
    SprdHUom
    SprdHBalQty
    SprdHBalQtykg
    SprdHename
    SprdHSno
End Enum
Private Enum E_SpdIndent
    SprdCheck = 1
    SprdindNo
    Sprdinddt
    SprdItemcode
    sprdItemname
    Sprduom
    SprdBalQty
    SprdBalQtykg
    Sprdename
    SprdSno
End Enum

Public Sub OpenConnection1()
On Error GoTo OpenConnection1_Error

Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open connectstring

Exit Sub
OpenConnection1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OpenConnection1 of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub btnBrowse_Click()
On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If
    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMSUPPLIERAMDPO" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMSUPPLIERAMDPO" & CustID)
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    txt_filename.Text = CommonDialog1.FileName
    txtfields(68).Text = strNewFile
    If Len(Trim(txtfields(68).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMSUPPLIERAMDPO" & CustID & "\" & Divcode & "-AMDPONO-" & Trim(txtfields(66).Text) + "-DT-" + Trim(Format(MaskEdBox5.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 10) + "--" & strNewFile
    
  '  sFilePathPO = App.Path & "\RMSUPPLIERPO" & CustID & "\" & Divcode & "-" & Trim(txtfields(0).Text) + "-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 10) + "--" & strNewFile
    
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If Opt <> "add" And Opt <> "mod" Then
            If MsgBox("Supplier Scan Copy Already Exists!!! Do you want to override in Server?", vbYesNo, head) = vbNo Then Exit Sub
        End If
    End If
    
  If strNewFile <> "" Then
    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath 'App.Path & "\RMSUPPLIERAMDPO" & CustID & "\" & Divcode & "-" & Trim(txtfields(0).Text) + "-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 10) + "--" & strNewFile
   ' FileCopy strNewFile, sFilePathPO
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload PO of Form Purchase PO"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Call clearcollectionkeys
iIndex = 0
iTotal = 0
Call clearcollection
On Error GoTo BUTTON_Click_Error
iFlag = 0
intervalMinutes = -1

Select Case Index

Case 0
    ADDRecord
    
Case 1
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic
        
       txt_filename.Text = ""
        
        Set Rs = New Recordset
        Rs.Open "select isnull(AmdafterGRN,0) from rm_param ", DB, adOpenStatic, adLockReadOnly
        AmdafterGRN = Rs(0)
        
        Set rs4 = New Recordset
        If AmdafterGRN = 0 Then
        rs4.Open "select distinct contno,contdt from rm_cont a where divcode='" & Divcode & "' and ordqty<>isnull(Cancelbales,0) and ISNULL(RECQTY,0)=0 and ISNULL(RCDKGS,0)=0 and  ISNULL(FIRST_APPFLG,'N')='Y' AND contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'  ", DB, adOpenStatic
        Else
        rs4.Open "select distinct contno,contdt from rm_cont a where divcode='" & Divcode & "'  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and ordqty<>isnull(Cancelbales,0) and A.CONTNO IN (SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' AND ordqty<>isnull(Cancelbales,0) ) UNION select distinct contno,contdt  from rm_cont a where  divcode='" & Divcode & "' and ordkgs<>isnull(Cancelkgs,0) and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0)  AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0) ) ", DB, adOpenStatic
        End If
                
        If rs4.RecordCount = 0 Then
              MsgBox "No Record Found", vbInformation, head
              Opt = ""
              Exit Sub
        End If
        
        If Not rs4(0) = 0 Then
            Opt = "mod"
            opt1 = "mod"
            
            btnBrowse.Visible = True
            txt_filename.Visible = True
            Label93.Visible = True
            
            MaskEdBox5.Text = pdate
            desc.Caption = "Modification"
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM," & _
                                " SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,CurrCode,DeliveryTerms,prepdate ,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,CurrCode,DeliveryTerms,prepdate, " & _
                                " FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
            StatusBar1.Panels(2).Text = "Select a Order number from the list"
            Buttonframe.Enabled = False
            LookUp.Clear = True
            If AmdafterGRN = 0 Then
                LookUp.query = " select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier"",b.slcode ,isnull(b.supptype,'R') Supptype  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0)  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and ISNULL(RECQTY,0)=0 and ISNULL(RCDKGS,0)=0 and   ISNULL(a.FIRST_APPFLG,'N')='Y'"
    '  and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0)  and ordqty<>isnull(Cancelbales,0)  and  ISNULL(FIRST_APPFLG,'N')='Y'  )
            Else
                LookUp.query = " select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier"",b.slcode ,isnull(b.supptype,'R') Supptype  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0)  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0)  and  ISNULL(a.FIRST_APPFLG,'N')='Y'  )" & _
                           " UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier,b.slcode,isnull(b.supptype,'R') Supptype   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0) AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0)  and  ISNULL(a.FIRST_APPFLG,'N')='Y' ) "
            
            End If
            
            ' commented on 08-04-19 by mariyaiya
'            LookUp.query = " select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier"",b.slcode ,isnull(b.supptype,'R') Supptype  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0)  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0)  and  ISNULL(FIRST_APPFLG,'N')<>'Y' )  " & _
'                           " UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier,b.slcode,isnull(b.supptype,'R') Supptype   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0) AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0)   and  ISNULL(FIRST_APPFLG,'N')<>'Y'   ) "
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000,1"
            LookUp.Show vbModal
         
            If LookUp.Cancel = False Then
                Set rstemp = New Recordset
                rstemp.Open "select contno from rm_arrival where contno='" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy-MM-dd") & "' and supcd='" & LookUp.Fields(3) & "'", DB, adOpenStatic
                If rstemp.RecordCount > 0 Then
                    txtfields(1).Enabled = False
                Else
                    txtfields(1).Enabled = True
                End If
                MaskEdBox3.Text = Trim(LookUp.Fields("Order Date"))
                DTPicker1.Enabled = False
                SuppType = Trim(LookUp.Fields("Supptype"))
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG,isnull(supptype,'R') Supptype FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("slcode") & "'", DB
                If Not Rs.EOF Then
                    
                    STATEFLAG = Rs(0)
                     If STATEFLAG = "F" Then
                     IGSTFLG = "N"
                     End If
                End If
                
               If STATEFLAG <> "F" Then
            
                    STCODE = ""
                    Set rs1 = New Recordset
                    rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(gstinno,'0') gstinno FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Slcode")) & "' ", DB
'                    If rs1.EOF Then
'                        MsgBox "PLEASE ENTER GST STATE CODE IN Supplier MASTER ", vbInformation, head
'                        Call BUTTON_Click(10)
'                        Exit Sub
'                    Else
                If SuppType = "R" Then
                        If rs1("GSTSTATECODE") = "0" Then
                                MsgBox "PLEASE ENTER GST STATE CODE IN Supplier MASTER ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                        End If
                        If rs1("GSTINNO") = "0" Then
                                MsgBox "PLEASE ENTER GSTINNO CODE IN Supplier MASTER ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                        End If
                        
                        STCODE = rs1("GSTSTATECODE")
                        Set rs1 = New Recordset
                        rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
                        If Not rs1.EOF Then
                            IGSTFLG = "Y"
                        Else
                            IGSTFLG = "N"
                        End If
                        
                        
                    'End If
                  Else
                       If rs1("GSTINNO") = "0" Then
                                MsgBox "PLEASE ENTER GSTINNO CODE IN Supplier MASTER ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                        End If
                        STCODE = rs1("GSTSTATECODE")
                    Set rs1 = New Recordset
                    rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
                    If Not rs1.EOF Then
                        IGSTFLG = "Y"
                    Else
                        IGSTFLG = "N"
                    End If
                  End If
            End If
            
            
                Opt = " "
                  iFlag = 0
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,MILLREFNO,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,tax_code,taxper,othtaxper,cessper,hscessper,bedper,sedper,cashdisper,tradedisper,insper,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,commPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort ,Iprno,prdate,prsno,CurrCode,DeliveryTerms,HSN ""HSN Code"",cgstper ""CGST %"",sgstper ""SGST %"",igstper ""IGST %"",prepdate,FTFlg,FTAmt,Paycode,Line_No,PlCode ,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
    
                Set RsMod = New Recordset
               ' RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,HSN ""HSN Code"",cgstper ""CGST %"",sgstper ""SGST %"",igstper ""IGST %"",CurrCode,DeliveryTerms from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", db, adOpenStatic, adLockOptimistic
                
                'RsMod.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.BBFLAG""Pack Type"",a.OrdKgs,a.candyrate,a.pty_contno""Supplier SampleNo"",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %""  ,Iprno,prdate,prsno,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",Finalweighment  from rm_cont A ,rm_var b where A.varcode=B.VARCODE AND divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                'RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,MILLREFNO,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,tax_code,taxper,othtaxper,cessper,hscessper,bedper,sedper,cashdisper,tradedisper,insper,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,commPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort ,Iprno,prdate,prsno,CurrCode,DeliveryTerms,HSN ""HSN Code"",cgstper ""CGST %"",sgstper ""SGST %"",igstper ""IGST %""  from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
                ' RsMod.Open "select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,carcode,varcode,cntcode,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,TAX_CHOICE,CreditDays,InterestPer ,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,CurrCode,DeliveryTerms from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'  order by contno", DB, adOpenStatic, adLockOptimistic
                RsMod.Open "Select divcode,contno,contdt,supcd,brkcd,areacode,ratekg, carcode, " & _
                " varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno," & _
                " duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance," & _
                " plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson," & _
                " STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer," & _
                " Tax_Code,TaxPer,OthTaxPer,InsPer,tax_choice,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO," & _
                " Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno," & _
                " prdate,prsno,CurrCode,DeliveryTerms,HSN ,cgstper ,sgstper ,igstper,prepdate,FtFlg,ftamt,sampleflg ,Paycode,Line_No,PlCode,SusCatType,ratekg PRVRatekg,ORDQTY PRVORDQty,RECQTY PRVORDkgs,CANDYRATE PRVCANDYRATE,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'  order by contno", DB, adOpenStatic, adLockOptimistic, enu
                 
                SSTab1.Visible = True
                Frame1.Enabled = True
                Frame2.Enabled = True
                Frame9.Enabled = True
                Frame6.Enabled = False
                Frame10.Enabled = False
                SSTab1.Tab = 0
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Opt = "mod"
                Call ENABLCONTLS
                Call bindcontls
                txtfields(66).Text = ""
                SSTab1.Enabled = True
                txtfields(0).Locked = True
                txtfields(2).Locked = True
                txtfields(13).Locked = True
                
                wosample = "N"
                Text2.Locked = True

                Text11.Locked = True
                Text12.Locked = True
                Text3.Locked = True
                Frame9.Enabled = True
                '12-01-2018 Annamalai.S
'                Set RS11 = New Recordset
'                RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty, (CASE WHEN  a.bbflag='B' THEN 'B'  ELSE ( CASE  WHEN  a.bbflag= 'H' THEN 'H'  ELSE (CASE  WHEN a. bbflag= 'R' THEN 'R'  END)  END)  END)""Pack Type"", a.ordkgs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"",Terms1,Terms1Days,Terms2,Terms2Days,TransPort ,Iprno,prdate,prsno,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" " & _
'                " from rm_cont a,rm_var b where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' and a.varcode=b.varcode", DB, adOpenStatic, adLockBatchOptimistic
'                Set DataGrid1.DataSource = RS11
                
                DataGrid1.AllowUpdate = True
                DataGrid1.AllowArrows = True
                DataGrid1.Enabled = True
                DB.BeginTrans
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True
                
                'CANCEL
                Opt = " "
                Buttonframe.Enabled = True
                Call query_mode

                Frame1.Enabled = False
                Frame2.Enabled = False
                Frame9.Enabled = False
                Frame6.Enabled = False
                Frame10.Enabled = False
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
                Frame9.Enabled = True
                DataGrid1.AllowUpdate = True
                DataGrid1.AllowArrows = True
                DataGrid1.Enabled = True
            End If
      End If
      If Opt = "mod" Then
        Set Rs = New Recordset
        If ChkCentralized.value = 1 Then
            Rs.Open "SELECT max(convert(numeric,acontno))+1 FROM RM_aCONT WHERE aCONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If IsNull(Rs(0)) Then
                txtfields(66).Text = 1
            Else
                txtfields(66).Text = Rs(0)
            End If
        Else
            Rs.Open "SELECT MAX(convert(numeric,acontno))+1 FROM RM_aCONT WHERE divcode='" & Divcode & "' and aCONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND prefix IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
            If IsNull(Rs(0)) Then
                txtfields(66).Text = 1
            Else
                txtfields(66).Text = Rs(0)
            End If
        End If
      
       LookUp.Clear = True
        txtfields(68).Text = ""
       Call adddelmod(BUTTON)
       txtfields(27).Locked = False
       BUTTON(9).Enabled = True
       BUTTON(10).Enabled = True

       txtfields(0).Locked = True
       Set rsweigh = New Recordset
       rsweigh.Open "select * from rm_WEIGHNMENT", DB, adOpenStatic
       While Not rsweigh.EOF
           Combo4.AddItem rsweigh("WNAME")
           rsweigh.MoveNext
       Wend
       Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
      
      txtfields(58).Text = Mid$(Time, 1, 12)
      MaskEdBox4.Text = pdate
      
      txtfields(67).Text = ""
      Set Rs = New Recordset
    Rs.Open "select isnull(sum(isnull(rcdkgs,0)),0)rcdkgs from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and ISNULL(aRRIVALTYPE,'P')='K' union select sum(isnull(recqty,0))rcdkgs from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and ISNULL(aRRIVALTYPE,'P')='P'", DB, adOpenStatic, adLockOptimistic
    If Rs(0) > 0 Then
        txtfields(1).Locked = True
        txtfields(2).Locked = True
        txtfields(13).Locked = True
    Else
        txtfields(1).Locked = False
        txtfields(2).Locked = False
        txtfields(13).Locked = False
    End If
    Frame6.Enabled = False
'  End If
End If
Case 2
If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic
        

        Set rs4 = New Recordset
        rs4.Open "select distinct contno,contdt from rm_cont a where divcode ='" & Divcode & "' and contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND A.CONTNO NOT IN (SELECT DISTINCT CONTNO FROM RM_Arrival C WHERE  c.divcode='" & Divcode & "' and  c.Contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "')", DB, adOpenStatic
        
        If rs4.RecordCount = 0 Then
              MsgBox "No Record Found", vbInformation, head
              Opt = ""
              Exit Sub
        End If
        
        If Not rs4(0) = 0 Then
            Opt = "del"
            opt1 = "del"
            desc.Caption = "Deletion"
            Set adoPrimaryRS = New Recordset
            
            'adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer from rm_cont where divcode='" & Divcode & "' and  isnull(recqty,0)=0 and ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days  " & _
                              " from rm_cont where divcode='" & Divcode & "' and  ISNULL(RCDKGS,0)=0 AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
                              
' muthu            adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and  isnull(recqty,0)=0 and ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno   " & _
                              " from rm_cont where divcode='" & Divcode & "' and  ISNULL(RCDKGS,0)=0 AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
                              
            adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM," & _
                                " SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,CurrCode,DeliveryTerms,prepdate,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,CurrCode,DeliveryTerms,prepdate,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType " & _
                                " from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
                              
                              
                              
            If adoPrimaryRS.RecordCount = 0 Then
                MsgBox "Arrival started, Deletion not Allowed", vbInformation, head
                Opt = ""
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Call query_mode
                'SSTab1.Enabled = False
                Frame1.Enabled = False
                Frame2.Enabled = False
                Frame9.Enabled = False
                Frame6.Enabled = False
                Frame10.Enabled = False
                Exit Sub
            Else
            StatusBar1.Panels(2).Text = "Select a Order number from the list"
            Buttonframe.Enabled = False
            LookUp.Clear = True
            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                LookUp.query = "select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier""  from rm_cont a,fa_slmas b where a.supcd=b.slcode " & _
                               " and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0) and ISNULL(RECQTY,0)=0 and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='P' AND ordqty<>isnull(Cancelbales,0) )AND ISNULL(aRRIVALTYPE,'P')='P' and isnull(FIRST_APPFLG,'N')<>'Y'  UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0) ) AND ISNULL(aRRIVALTYPE,'P')='K' and isnull(FIRST_APPFLG,'N')<>'Y'  "
            
            Else
            LookUp.query = "select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier""  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0) and ISNULL(RECQTY,0)=0 and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='P' AND ordqty<>isnull(Cancelbales,0) )AND ISNULL(aRRIVALTYPE,'P')='P' UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0) ) AND ISNULL(aRRIVALTYPE,'P')='K'"
            End If
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Opt = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd," & _
                                  " deladd,contperson,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno,CurrCode,DeliveryTerms,FTFlg,FTAmt ,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
     
                Set RsMod = New Recordset
                RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Iprno,prdate,prsno,HSN ""HSN Code"",cgstper ""CGST %"",sgstper ""SGST %"",igstper ""IGST %"",prepdate,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                SSTab1.Visible = True

                Frame1.Enabled = True
                Frame2.Enabled = True
                Frame9.Enabled = True
                Frame6.Enabled = True
                Frame10.Enabled = True
                SSTab1.Tab = 0
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Opt = "del"
                Call ENABLCONTLS
                Call bindcontls
                SSTab1.Enabled = True
                txtfields(0).Locked = True
                txtfields(0).Locked = True
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True
                'CANCEL
                Opt = " "
                Buttonframe.Enabled = True
                Call query_mode
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
            End If
      End If
      If Opt = "del" Then
       LookUp.Clear = True
       DB.BeginTrans
       Call adddelmod(BUTTON)
       txtfields(27).Locked = False
       BUTTON(9).Enabled = True
       BUTTON(10).Enabled = True
       'BUTTON(9).ToolTipText = "deletion"
       txtfields(0).Locked = True
       BUTTON(9).SetFocus
  End If
End If
      Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
Case 3
        Dim f As New repform1
        Screen.MousePointer = 11
        Repindex = 228
        f.Show
        Screen.MousePointer = 0
        Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
        
Case 4
        desc.Caption = "Find"
        Opt = "fnd"
            LookUp.Clear = True
            LookUp.query = "select distinct cast(contno as NUMERIC) as OrderNo ,contdt as OrderDate ,slname as Supplier,cast(acontno as NUMERIC) as AmendmentOrderNo ,acontdt as AmendmentOrderDate   from rm_acont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' "
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Opt = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select distinct divcode,acontno,acontdt,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment," & _
                                 " im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,MILLREFNO,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,CurrCode,DeliveryTerms,prepdate,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,AmdReason ,SupFileName,Prepared_By,Tcs_per from rm_acont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and acontno = '" & LookUp.Fields("AmendmentOrderNo") & "' and acontdt='" & Format(LookUp.Fields("AmendmentOrderDate"), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
     
                Set RsMod = New Recordset
                RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,HSN ""HSN Code"",cgstper ""CGST %"",sgstper ""SGST %"",igstper ""IGST %""  from rm_acont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and acontno = '" & LookUp.Fields("AmendmentOrderNo") & "' and acontdt='" & Format(LookUp.Fields("AmendmentOrderDate"), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                SSTab1.Visible = True
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Call ENABLCONTLS
                Call bindcontls
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = False
                txtfields(0).Locked = True
                txtfields(0).Locked = True
                BUTTON(10).Enabled = True
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True

                Opt = " "
                Buttonframe.Enabled = True
                Call query_mode
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
            End If
            Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
        StatusBar1.Panels(2).Text = "Enter Any Order Number to be Found out"
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'Call navi(BUTTON)
        Call FIR(BUTTON)
        'Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        Beep
        Exit Sub
GoFirstError:

    If Err = 3021 Then
        MsgBox " No Record Found", vbInformation, head
    End If

Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        
        If adoPrimaryRS.EOF = False Then adoPrimaryRS.MoveNext
        Call bindcontls
        
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
        Beep
    End If
        ' show the current record
       ' Call navi(BUTTON)

        BUTTON(4).Enabled = True
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
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
        BUTTON(4).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True

        adoPrimaryRS.MoveFirst
    End If
        'show the current record
        'Call navi(BUTTON)

        BUTTON(4).Enabled = True
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
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls

       ' Call navi(BUTTON)
        Call las(BUTTON)

        Beep
        Exit Sub
GoLastError:
        MsgBox Err.Description, vbInformation, head
Case 9
        'Save
        Screen.MousePointer = 11
        txtfields(24).Text = "Candy"
      ''  On Error Resume Next
      On Error GoTo Gk
'Opt = "mod"
        opt1 = Opt

    Set rscont = New Recordset
    If Opt = "add" Then
        rscont.Open " Select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,isnull(carcode,'') as carcode," & _
                " varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno," & _
                " duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance," & _
                " isnull(carcode,'') as carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson," & _
                " STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer," & _
                " Tax_Code,TaxPer,OthTaxPer,InsPer,tax_choice,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO," & _
                " Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno," & _
                " prdate,prsno,CurrCode,DeliveryTerms,HSN ,cgstper ,sgstper ,igstper,prepDate,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,Prepared_By,Tcs_per from rm_cont where 1 = 2 " & _
                "   and divcode='" & Divcode & "' " & _
                "   and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
    End If
            
    If Opt = "add" Or Opt = "mod" Then
    
'        Set rstParameter = New Recordset
'        rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
'        If rstParameter.EOF = False Then
'            If rstParameter!SuppLotNoReqArrival = "Y" Then
'                 If val(txtfields(40).Text) = 0 Then
'                     MsgBox "Please enter Supplier From Lot No. ", vbInformation, head
'                     txtfields(40).SetFocus
'                     Exit Sub
'                End If
'            End If
'        End If
'        Set rstParameter = New Recordset
'        rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
'        If rstParameter.EOF = False Then
'            If rstParameter!SuppLotNoReqArrival = "Y" Then
'                 If val(txtfields(41).Text) = 0 Then
'                     MsgBox "Please enter the Supplier To Lot No. ", vbInformation, head
'                     txtfields(41).SetFocus
'                     Exit Sub
'                End If
'            End If
'        End If
'
'        If Trim(txtfields(1).Text) = "" Then
'            MsgBox "Please enter Supplier ", vbInformation, head
'            txtfields(1).SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 0
'            Exit Sub
'        End If
'
'
        If Trim(txtfields(67).Text) = "" Then
            MsgBox "Please enter the Amendment Reason ", vbInformation, head
            txtfields(67).SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 0
            Exit Sub
        End If
'
'        If Trim(txtfields(8).Text) = "" Then
'            MsgBox "Please enter the Payment Mode ", vbInformation, head
'            txtfields(8).SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 0
'            Exit Sub
'        End If
'
'        If Trim(txtfields(20).Text) = Empty Then
'            MsgBox "Please enter the Delivery Type ", vbInformation, head
'            txtfields(20).SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 1
'            Exit Sub
'        End If
'
'        If Trim(txtfields(18).Text) = "" Then
'            MsgBox "Please enter the Accepted Person ", vbInformation, head
'            txtfields(18).SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 1
'            Exit Sub
'        End If
'
'        If Trim(txtfields(52).Text) = "" Then
'            MsgBox "Please enter the Billing Currency ", vbInformation, head
'            txtfields(52).SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 0
'            Exit Sub
'        End If
'
'        If Trim(Combo3.Text) = Empty Then
'            MsgBox "Please enter the Mode of Transport ", vbInformation, head
'            Combo3.SetFocus
'            Screen.MousePointer = 0
'            SSTab1.Tab = 1
'             Exit Sub
'        End If
'
'       If Trim(txtfields(8).Text) = "" Then
'            If Not Frame3.Visible = True Then
'                MsgBox "Please enter the Paymode ", vbInformation, head
'                txtfields(8).SetFocus
'                SSTab1.Tab = 0
'            End If
'       End If
       
       If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
         strNewFile = Trim(txtfields(68).Text)
         Set fso = New FileSystemObject
         sFilePath = App.Path & "\RMSUPPLIERAMDPO" & CustID & "\" & Divcode & "-AMDPONO-" & Trim(txtfields(66).Text) + "-DT-" + Trim(Format(MaskEdBox5.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 10) + "--" & strNewFile
         If fso.FileExists(sFilePath) Then
         Else
              MsgBox "Supplier Copy not updated Properly ! Update Again ", vbInformation, head
              Screen.MousePointer = 0
            Exit Sub
         End If
       End If
       
       Opt = ""
       If RS11.RecordCount > 0 Then
            RS11.MoveFirst
            While Not RS11.EOF
                    If Trim(DataGrid1.Columns(2).Text) = "" Then

                    End If
                    RS11.MoveNext
            Wend
       End If
     
       If RS11.RecordCount > 0 Then
           RS11.MoveFirst
           
           While Not RS11.EOF
           If Trim(DataGrid1.Columns(1).Text) <> "" Then
                If Trim(DataGrid1.Columns(1).Text) = "" And Trim(DataGrid1.Columns(5).Text) <> "" Then
                    MsgBox "Please enter the Vaierty ", vbInformatio, head
                    SSTab1 = 0
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 1
                    DataGrid1.SetFocus
                    Exit Sub
                End If

                If Trim(DataGrid1.Columns(3).Text) = "" And Left(Combo7.Text, 1) = "P" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the Order Quantity ", vbInformatio, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 3
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                If Trim(DataGrid1.Columns(5).Text) = "" And Left(Combo7.Text, 1) = "K" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the order Kgs ", vbInformatio, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 5
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                If Trim(DataGrid1.Columns(6).Text) = "" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the Rate ", vbInformation, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 6
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                If (val(DataGrid1.Columns("CGST %").Text) + val(DataGrid1.Columns("SGST %").Text) + val(DataGrid1.Columns("IGST %").Text)) = 0 Then
                   ' MsgBox "Please enter the Rate ", vbInformation, head
                    Dim msg As String
                    msg = MsgBox("GST % is 0 Do you want to Continue ?", vbYesNo, head)
                    If msg = vbYes Then
                      
                    Else
                        Opt = opt1
                        Exit Sub
                    End If
                    
                End If
                
                End If
           RS11.MoveNext
        Wend
    Else
          MsgBox "Please enter all the Details for Variety", vbInformation, head
          DataGrid1.Row = 0
          DataGrid1.Col = 0
          DataGrid1.SetFocus
          Exit Sub
    End If
End If
    Opt = opt1
If Opt = "add" Then
    rscont.AddNew
    Opt = ""
    RS11.MoveFirst
'    Set Rs = New Recordset
'    If ChkCentralized.value = 1 Then
'        Rs.Open "SELECT max(convert(numeric,contno))+1 FROM RM_CONT WHERE CONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If IsNull(Rs(0)) Then
'            txtfields(0).Text = 1
'        Else
'            txtfields(0).Text = Rs(0)
'        End If
'    Else
'        Rs.Open "SELECT MAX(convert(numeric,contno))+1 FROM RM_CONT WHERE divcode='" & Divcode & "' and CONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND prefix IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
'        If IsNull(Rs(0)) Then
'            txtfields(0).Text = 1
'        Else
'            txtfields(0).Text = Rs(0)
'        End If
'    End If
    
    For GG = 1 To RS11.RecordCount
        If GG <> 1 Then
            rscont.AddNew
        End If
        
        rscont("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
        
        If Option1.value = True Then
             rscont("im_ind") = "I"
        ElseIf Option2.value = True Then
             rscont("im_ind") = "L"
        ElseIf Option3.value = True Then
             rscont("im_ind") = "U"
        End If
        
'        If optSupplier.value = True Then
'            rscont!Finalweighment = "S"
'        Else
'            rscont!Finalweighment = "M"
'        End If

'        If Trim(Combo9.Text) = "MILL" Then
'            rscont!Finalweighment = "M"
'        Else
'            rscont!Finalweighment = "S"
'        End If
'
'        If Trim(Combo10.Text) = "YES" Then
'            rscont!FtFlg = "Y"
'        Else
'            rscont!FtFlg = "N"
'        End If
'       rscont("ftamt") = val(txtfields(59).Text)
'
'
'        If ChkCentralized.value = 1 Then
'            rscont!Prefix = "C"
'        End If
'
        rscont("dlytype") = Trim(txtfields(20).Text)
        rscont("divcode") = Divcode
        rscont("supcd") = txtfields(1).Text
        rscont("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
        rscont("brkcd") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
        
        rscont("CommPer") = val(txtfields(44).Text)
        rscont("weignment") = ""

        rscont("contno") = txtfields(0).Text
        
        rscont("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
        rscont("divcode") = Divcode
        rscont("paymode") = txtfields(8).Text
        rscont("arrivaltype") = Left(Combo7.Text, 1)
        rscont("payterms") = IIf(Trim(txtfields(12).Text) = "", Null, txtfields(12).Text)
        rscont("rateunit") = Trim(Combo5.Text)
        rscont("candyrate") = val(DataGrid1.Columns(6).Text)
        rscont("MILLREFNO") = txtfields(27)
        rscont("purtype") = Trim(txtfields(42).Text)
        rscont("Iprno") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
        rscont("prsno") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
        rscont("prdate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
        Set rsg = New Recordset
        rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
                rscont("ratekg") = Round(val(rscont("candyrate") / rsg("value")), 5)
        End If
        rscont("CROPYEAR") = txtfields(13).Text
        rscont("acceptance") = txtfields(18).Text
        

        
        
        If Option4.value = True Then
            rscont("tax_choice") = "SINGLE"
        Else
            rscont("tax_choice") = "COMMON"
        End If
        
        If Mid(DataGrid1.Columns(4).Text, 1, 1) = "B" Then
             rscont("BBFLAG") = "B"
        ElseIf Mid(DataGrid1.Columns(4).Text, 1, 1) = "R" Then
             rscont("BBFLAG") = "R"
        ElseIf Mid(DataGrid1.Columns(4).Text, 1, 1) = "H" Then
            rscont("BBFLAG") = "H"
        Else
             rscont("BBFLAG") = "B"
        End If
        
        rscont("CurrCode") = txtfields(52).Text
        rscont("DeliveryTerms") = txtfields(54).Text
        
        rscont("prepDate") = Format(Format(MaskEdBox4.Text, "YYYY-MM-DD") & " " & Trim(txtfields(58).Text), "dd-mm-yyyy HH:MM:SS AM/PM")
        rscont("SusCatType") = Trim(txtfields(65).Text)
        
        Call SaveLogfunction
        
        RS11.MoveNext
     rscont.UpdateBatch adAffectAllChapters
     Next
        Set Rs = New Recordset
        Rs.Open "select contno,contdate,deldate,qty,varcode,deladd,instruction,Divcode from rm_delsched", DB, adOpenStatic, adLockBatchOptimistic
        For I = 1 To Flexg1.Rows - 1
            If Flexg1.TextMatrix(I, 1) <> "" And Flexg1.TextMatrix(I, 2) <> "" And Flexg1.TextMatrix(I, 3) <> "" And Flexg1.TextMatrix(I, 4) <> "" Then
                Set rsn = New Recordset
                rsn.Open "SELECT * FROM FA_SLMAS WHERE SLNAME='" & Flexg1.TextMatrix(I, 3) & "'", DB, adOpenStatic
            
                If rsn.RecordCount > 0 Then
                    del = rsn("SLCODE")
                Else
                    del = txtfields(22).Text
                End If
                Rs.AddNew
                Rs("contno") = txtfields(0).Text
                Rs("contdate") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
                Rs("deldate") = Flexg1.TextMatrix(I, 1)
                Rs("qty") = Flexg1.TextMatrix(I, 2)
                Rs("varcode") = Flexg1.TextMatrix(I, 4)
                Rs("deladd") = del
                Rs("Divcode") = Divcode
                Rs("instruction") = Flexg1.TextMatrix(I, 5)
            End If
        Next
        Rs.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        
    End If
    
        Dim n As Integer
        Dim iLOT As Integer
        Dim STRlOT As String
      
        
        strSQL = "delete from rm_cont_SLOTNO where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'"
       ' DB.CommandTimeout = 0
        DB.Execute strSQL, a
        strSQL = "UPDATE RM_CONT SET Carcode ='" & Trim(Combo3.Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        DB.Execute "UPDATE RM_CONT SET Carcode ='" & Trim(Combo3.Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        
       
     
        If val(txtfields(40).Text) = val(txtfields(41).Text) Then
            DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & val(txtfields(40).Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
            DB.Execute "INSERT INTO RM_CONT_SLOTNO VALUES ('" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "'," & val(txtfields(40).Text) & ",'N')"
        Else
            iLOT = val(txtfields(40).Text)
            For n = val(txtfields(40).Text) To val(txtfields(41).Text) Step 1
                STRlOT = STRlOT & "," & iLOT
                
                DB.Execute "INSERT INTO RM_CONT_SLOTNO VALUES('" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "'," & val(iLOT) & ",'N')"
                iLOT = iLOT + 1
            Next
            DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        End If
    
    
    Opt = opt1
    If Opt = "mod" Then
  
     DB.Execute "UPDATE RM_CONT SET Amdnos =isnull(Amdnos,0)+1 WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        
        Opt = ""
        RS11.MoveFirst
        For GG = 1 To RS11.RecordCount
            'RsMod("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
    
            If Option1.value = True Then
               RsMod("im_ind") = "I"
            ElseIf Option2.value = True Then
               RsMod("im_ind") = "L"
            ElseIf Option3.value = True Then
               RsMod("im_ind") = "U"
            End If
             RsMod("SAMPLEFLG") = "Y"
            
            If Trim(Combo9.Text) = "MILL" Then
                RsMod!Finalweighment = "M"
            Else
                RsMod!Finalweighment = "S"
            End If
              
           If Trim(Combo10.Text) = "YES" Then
             RsMod!FtFlg = "Y"
           Else
             RsMod!FtFlg = "N"
           End If
           RsMod("ftamt") = val(txtfields(59).Text)
        
        
           RsMod("dlytype") = Trim(txtfields(20).Text)
      
           RsMod("divcode") = Divcode
           RsMod("supcd") = txtfields(1).Text
           RsMod("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
           RsMod("brkcd") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
           RsMod("CommPer") = val(txtfields(44).Text)
           RsMod("weignment") = ""
          ' RsMod("carcode") = Trim(Combo3.Text)
           RsMod("contno") = txtfields(0).Text
           RsMod("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
           RsMod("divcode") = Divcode
           RsMod("paymode") = txtfields(8).Text
           RsMod("arrivaltype") = Left(Combo7.Text, 1)
           RsMod("payterms") = IIf(Trim(txtfields(12).Text) = "", Null, txtfields(12).Text)
           RsMod("rateunit") = Trim(Combo5.Text)
           RsMod("purtype") = Trim(txtfields(42).Text)
           If Option4.value = True Then
                RsMod("tax_choice") = "SINGLE"
           Else
                RsMod("tax_choice") = "COMMON"
           End If
           RsMod("DeliveryTerms") = txtfields(54).Text
           Set rsg = New Recordset
           rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
           

           
           RsMod("CROPYEAR") = txtfields(13).Text
           RsMod("acceptance") = txtfields(18).Text
           
           Set RSV = New Recordset
           RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text) & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yfdate, "yyyy-mm-dd") & "'", DB, adOpenStatic
           
           If RSV.RecordCount > 0 Then
            RsMod("plotno") = RSV("plotno")
            RsMod("prno") = RSV("prno")
            RsMod("pressmarkno") = RSV("pressmarkno")
           Else
            RsMod("plotno") = ""
            RsMod("prno") = ""
            RsMod("pressmarkno") = ""
           End If
           
           RsMod("REMARKS") = txtfields(19).Text
           RsMod("billadd") = txtfields(21).Text
           RsMod("deladd") = txtfields(22).Text
           RsMod("contperson") = Text7.Text
           RsMod("varcode") = DataGrid1.Columns(1).Text
           RsMod("MILLREFNO") = txtfields(27).Text
           RsMod("candyrate") = val(DataGrid1.Columns(6).Text)
           RsMod("ordqty") = val(DataGrid1.Columns(3).Text)
           RsMod("ordkgs") = val(DataGrid1.Columns(5).Text)
           RsMod("PTY_CONTNO") = IIf(DataGrid1.Columns(7).Text = "", "0", DataGrid1.Columns(6).Text)
           RsMod("sno") = IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text)
           RsMod("STAPLE") = Trim(txtfields(23).Text)
           RsMod("season") = txtfields(25).Text
           RsMod("CashDisPer") = val(DataGrid1.Columns(8).Text)
           RsMod("TradeDisPer") = val(DataGrid1.Columns(9).Text)
           RsMod("BedPer") = val(DataGrid1.Columns(10).Text)
           RsMod("EdcessPer") = val(DataGrid1.Columns(11).Text)
           RsMod("HsCessPer") = val(DataGrid1.Columns(12).Text)
           RsMod("CessPer") = val(DataGrid1.Columns(13).Text)
           'RsMod("Tax_Code") = val(DataGrid1.Columns(14).Text)
               
'           RsMod("ratekg") = val(DataGrid1.Columns(6).Text)
            Set rsg = New Recordset
            rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                RsMod("ratekg") = Round(val(RsMod("candyrate") / rsg("value")), 5)
            End If
         
           RsMod("CreditDays") = val(txtfields(38).Text)
           RsMod("InterestPer") = val(txtfields(39).Text)
           RsMod("SUPPLIERLOTNOFROM") = val(txtfields(40).Text)
           RsMod("SUPPLIERLOTNOTO") = val(txtfields(41).Text)
           
           
                       '''sasi 13.6.17
           RsMod("hsn") = Trim(DataGrid1.Columns("HSN Code").Text)
           RsMod("cgstper") = val(DataGrid1.Columns("CGST %").Text)
           RsMod("sgstper") = val(DataGrid1.Columns("SGST %").Text)
           RsMod("Igstper") = val(DataGrid1.Columns("IGST %").Text)
           RsMod("Iprno") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
           RsMod("prsno") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
           RsMod("prdate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
'          RsMod("PRVRatekg") = val(DataGrid1.Columns("PRVRatekg").Text)
'           RsMod("PRVORDQty") = val(DataGrid1.Columns("PRVORDQty").Text)
'           RsMod("PRVORDkgs") = val(DataGrid1.Columns("PRVORDkgs").Text)
           
          DB.Execute "UPDATE RM_CONT SET  PRVCANDYRATE  = '" & val(DataGrid1.Columns("PRVCANDYRATE").Text) & "', PRVRatekg ='" & val(DataGrid1.Columns("PRVRatekg").Text) & "',PRVORDQty ='" & val(DataGrid1.Columns("PRVORDQty").Text) & "',PRVORDkgs ='" & val(DataGrid1.Columns("PRVORDkgs").Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "' and varcode='" & Trim(DataGrid1.Columns(1).Text) & "'"
        
           
           RsMod("SusCatType") = Trim(txtfields(65).Text)
           
           RsMod("plcode") = Trim(txtfields(62).Text)
           RsMod("paycode") = Trim(txtfields(60).Text)
           RsMod("Line_No") = Trim(txtfields(63).Text)

           If Option4.value = True Then
               RsMod("Tax_Code") = DataGrid1.Columns(14).Text
           ElseIf Option5.value = True Then
               RsMod("Tax_Code") = txtfields(34).Text
           End If
           RsMod("TaxPer") = val(DataGrid1.Columns(15).Text)
           RsMod("OthTaxPer") = val(DataGrid1.Columns(16).Text)
           RsMod("InsPer") = val(DataGrid1.Columns(17).Text)
           If Mid(DataGrid1.Columns(4).Text, 1, 2) = "B" Then
                RsMod("BBFLAG") = "B"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "R" Then
                RsMod("BBFLAG") = "R"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "H" Then
               RsMod("BBFLAG") = "H"
           Else
               RsMod("BBFLAG") = "B"
           End If
           
           If IsDate(MaskEdBox2.Text) = True Then
                RsMod("dUEDATE") = Format(MaskEdBox2.Text, "YYYY-MM-DD")
           Else
                RsMod("dUEDATE") = Null
           End If
            RsMod("TCS_PER") = val(txtfields(69).Text)
            RsMod("Prepared_By") = Trim(usrid)
            
            RsMod("Terms1") = txtfields(45).Text
            RsMod("Terms1Days") = txtfields(46).Text
            RsMod("Terms2") = txtfields(47).Text
            RsMod("Terms2Days") = txtfields(48).Text
            RsMod("Transport") = Trim(Text15.Text)
            If MaskEdBox4.Text <> "__/__/____" Then
                RsMod("prepdate") = Format(Format(MaskEdBox4.Text, "YYYY-MM-DD") & " " & Trim(txtfields(58).Text), "dd-mm-yyyy HH:MM:SS AM/PM")
            End If

       
           Call SaveLogfunction
           RsMod.MoveNext
           RS11.MoveNext
        Next
        
        
        RsMod.UpdateBatch adAffectAllChapters
        
        Set Rs = New Recordset
        If ChkCentralized.value = 1 Then
            Rs.Open "SELECT max(convert(numeric,acontno))+1 FROM RM_aCONT WHERE aCONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If IsNull(Rs(0)) Then
                txtfields(66).Text = 1
            Else
                txtfields(66).Text = Rs(0)
            End If
        Else
            Rs.Open "SELECT MAX(convert(numeric,acontno))+1 FROM RM_aCONT WHERE divcode='" & Divcode & "' and aCONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND prefix IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
            If IsNull(Rs(0)) Then
                txtfields(66).Text = 1
            Else
                txtfields(66).Text = Rs(0)
            End If
        End If
        
           DB.Execute "UPDATE RM_aCONT SET Carcode ='" & Trim(Combo3.Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "' and aCONTDT='" & Format(MaskEdBox5.Text, "yyyy-mm-dd") & "' AND aCONTNO='" & Trim(txtfields(66).Text) & "' "
           
           DB.Execute "UPDATE RM_CONT SET AmdReason='" & Trim(txtfields(67).Text) & "', appflg=NULL, fappflg =NULL,FIRST_APPFLG=NULL,FIRST_APPUSERID=NULL,FIRST_APPIP=NULL,FIRST_APPDATE=NULL,APPIP=NULL,APPDATE=NULL,APPUSERID=NULL,SECOND_APPFLG=NULL,SECOND_APPUSERID=NULL,SECOND_APPIP=NULL,SECOND_APPDATE=NULL WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        
    
        Set RsModAmd = New Recordset
        RsModAmd.Open "Select divcode,acontno,acontdt ,contno,contdt,supcd,brkcd,areacode,ratekg, carcode, " & _
                " varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno," & _
                " duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance," & _
                " plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson," & _
                " STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer," & _
                " Tax_Code,TaxPer,OthTaxPer,InsPer,tax_choice,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO," & _
                " Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno," & _
                " prdate,prsno,CurrCode,DeliveryTerms,HSN ,cgstper ,sgstper ,igstper,prepdate,FtFlg,ftamt,sampleflg ,Paycode,Line_No,PlCode,SusCatType,AmdReason,PRVRatekg,PRVORDQty,PRVORDkgs,PRVCANDYRATE ,PRVprepDate,SupFileName,Prepared_By,Tcs_per from rm_acont where    divcode='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockOptimistic, enu
                 

        RS11.MoveFirst
        For GG = 1 To RS11.RecordCount
            '
            RsModAmd.AddNew
            If Option1.value = True Then
               RsModAmd("im_ind") = "I"
            ElseIf Option2.value = True Then
               RsModAmd("im_ind") = "L"
            ElseIf Option3.value = True Then
               RsModAmd("im_ind") = "U"
            End If
             RsModAmd("SAMPLEFLG") = "Y"
            
            If Trim(Combo9.Text) = "MILL" Then
                RsModAmd!Finalweighment = "M"
            Else
                RsModAmd!Finalweighment = "S"
            End If
              
           If Trim(Combo10.Text) = "YES" Then
             RsModAmd!FtFlg = "Y"
           Else
             RsModAmd!FtFlg = "N"
           End If
           RsModAmd("ftamt") = val(txtfields(59).Text)
            RsModAmd("AmdReason") = Trim(txtfields(67).Text)
        
           RsModAmd("dlytype") = Trim(txtfields(20).Text)
      
            RsModAmd("CurrCode") = txtfields(52).Text
           RsModAmd("divcode") = Divcode
           RsModAmd("supcd") = txtfields(1).Text
           RsModAmd("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
           RsModAmd("brkcd") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
           RsModAmd("CommPer") = val(txtfields(44).Text)
           RsModAmd("weignment") = ""
          ' RsMod("carcode") = Trim(Combo3.Text)
           RsModAmd("contno") = txtfields(0).Text
           RsModAmd("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            RsModAmd("acontno") = txtfields(66).Text
           RsModAmd("aCONTDT") = Format(MaskEdBox5.Text, "yyyy-mm-dd")
           RsModAmd("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
           RsModAmd("divcode") = Divcode
           RsModAmd("paymode") = txtfields(8).Text
           RsModAmd("arrivaltype") = Left(Combo7.Text, 1)
           RsModAmd("payterms") = IIf(Trim(txtfields(12).Text) = "", Null, txtfields(12).Text)
           RsModAmd("rateunit") = Trim(Combo5.Text)
           RsModAmd("purtype") = Trim(txtfields(42).Text)
           If Option4.value = True Then
                RsModAmd("tax_choice") = "SINGLE"
           Else
                RsModAmd("tax_choice") = "COMMON"
           End If
           RsModAmd("Iprno") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
           RsModAmd("prsno") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
           RsModAmd("prdate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
           RsModAmd("DeliveryTerms") = txtfields(54).Text
           Set rsg = New Recordset
           rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
           

           
           RsModAmd("CROPYEAR") = txtfields(13).Text
           RsModAmd("acceptance") = txtfields(18).Text
           
           Set RSV = New Recordset
           RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text) & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yfdate, "yyyy-mm-dd") & "'", DB, adOpenStatic
           
           If RSV.RecordCount > 0 Then
            RsModAmd("plotno") = RSV("plotno")
            RsModAmd("prno") = RSV("prno")
            RsModAmd("pressmarkno") = RSV("pressmarkno")
           Else
            RsModAmd("plotno") = ""
            RsModAmd("prno") = ""
            RsModAmd("pressmarkno") = ""
           End If
           RsModAmd("SupFileName") = txtfields(68).Text
           RsModAmd("REMARKS") = txtfields(19).Text
           RsModAmd("billadd") = txtfields(21).Text
           RsModAmd("deladd") = txtfields(22).Text
           RsModAmd("contperson") = Text7.Text
           RsModAmd("varcode") = DataGrid1.Columns(1).Text
           RsModAmd("MILLREFNO") = txtfields(27).Text
           RsModAmd("candyrate") = val(DataGrid1.Columns(6).Text)
           RsModAmd("ordqty") = val(DataGrid1.Columns(3).Text)
           RsModAmd("ordkgs") = val(DataGrid1.Columns(5).Text)
           RsModAmd("PTY_CONTNO") = IIf(DataGrid1.Columns(7).Text = "", "0", DataGrid1.Columns(6).Text)
           RsModAmd("sno") = IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text)
           RsModAmd("STAPLE") = Trim(txtfields(23).Text)
           RsModAmd("season") = txtfields(43).Text
           RsModAmd("CashDisPer") = val(DataGrid1.Columns(8).Text)
           RsModAmd("TradeDisPer") = val(DataGrid1.Columns(9).Text)
           RsModAmd("BedPer") = val(DataGrid1.Columns(10).Text)
           RsModAmd("EdcessPer") = val(DataGrid1.Columns(11).Text)
           RsModAmd("HsCessPer") = val(DataGrid1.Columns(12).Text)
           RsModAmd("CessPer") = val(DataGrid1.Columns(13).Text)
           'RsMod("Tax_Code") = val(DataGrid1.Columns(14).Text)
               
'           RsModAmd("ratekg") = val(DataGrid1.Columns(6).Text)

            Set rsg = New Recordset
            rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                RsModAmd("ratekg") = Round(val(RsModAmd("candyrate") / rsg("value")), 3)
            End If
         
           RsModAmd("CreditDays") = val(txtfields(38).Text)
           RsModAmd("InterestPer") = val(txtfields(39).Text)
           RsModAmd("SUPPLIERLOTNOFROM") = val(txtfields(40).Text)
           RsModAmd("SUPPLIERLOTNOTO") = val(txtfields(41).Text)
           RsModAmd("TCS_PER") = val(txtfields(69).Text)
           RsModAmd("Prepared_By") = Trim(usrid)
           
                       '''sasi 13.6.17
           RsModAmd("hsn") = Trim(DataGrid1.Columns("HSN Code").Text)
           RsModAmd("cgstper") = val(DataGrid1.Columns("CGST %").Text)
           RsModAmd("sgstper") = val(DataGrid1.Columns("SGST %").Text)
           RsModAmd("Igstper") = val(DataGrid1.Columns("IGST %").Text)
       
           RsModAmd("PRVRatekg") = val(DataGrid1.Columns("PRVRatekg").Text)
           RsModAmd("PRVORDQty") = val(DataGrid1.Columns("PRVORDQty").Text)
           RsModAmd("PRVORDkgs") = val(DataGrid1.Columns("PRVORDkgs").Text)
           RsModAmd("PRVCANDYRATE") = val(DataGrid1.Columns("PRVCANDYRATE").Text)
           
           
           
           RsModAmd("SusCatType") = Trim(txtfields(65).Text)
           
           RsModAmd("plcode") = Trim(txtfields(62).Text)
           RsModAmd("paycode") = Trim(txtfields(60).Text)
           RsModAmd("Line_No") = Trim(txtfields(63).Text)

           If Option4.value = True Then
               RsModAmd("Tax_Code") = DataGrid1.Columns(14).Text
           ElseIf Option5.value = True Then
               RsModAmd("Tax_Code") = txtfields(34).Text
           End If
           RsModAmd("TaxPer") = val(DataGrid1.Columns(15).Text)
           RsModAmd("OthTaxPer") = val(DataGrid1.Columns(16).Text)
           RsModAmd("InsPer") = val(DataGrid1.Columns(17).Text)
           If Mid(DataGrid1.Columns(4).Text, 1, 2) = "B" Then
                RsModAmd("BBFLAG") = "B"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "R" Then
                RsModAmd("BBFLAG") = "R"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "H" Then
               RsModAmd("BBFLAG") = "H"
           Else
               RsModAmd("BBFLAG") = "B"
           End If
           
           If IsDate(MaskEdBox2.Text) = True Then
                RsModAmd("dUEDATE") = Format(MaskEdBox2.Text, "YYYY-MM-DD")
           Else
                RsModAmd("dUEDATE") = Null
           End If
           
            RsModAmd("Terms1") = txtfields(45).Text
            RsModAmd("Terms1Days") = txtfields(46).Text
            RsModAmd("Terms2") = txtfields(47).Text
            RsModAmd("Terms2Days") = txtfields(48).Text
            RsModAmd("Transport") = Trim(Text15.Text)
            If MaskEdBox4.Text <> "__/__/____" Then
                RsModAmd("prepdate") = Format(Format(MaskEdBox4.Text, "YYYY-MM-DD") & " " & Trim(txtfields(58).Text), "dd-mm-yyyy HH:MM:SS AM/PM")
                
                
            End If
            
             RsModAmd("PRVprepDate") = RS11("PRVprepDate")

           RsModAmd.MoveNext
           RS11.MoveNext
        Next
        
        
        RsModAmd.UpdateBatch adAffectAllChapters
        

        DB.Execute "DELETE RM_DELSCHED WHERE CONTNO='" & adoPrimaryRS("CONTNO") & "' AND CONTDATE='" & Format(adoPrimaryRS("CONTDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
        On Error Resume Next
        For I = 1 To Flexg1.Rows - 1
           If Flexg1.TextMatrix(I, 1) <> "" And Flexg1.TextMatrix(I, 2) <> "" Then
                Set rsn = New Recordset
                rsn.Open "SELECT * FROM FA_SLMAS WHERE SLNAME='" & Flexg1.TextMatrix(I, 3) & "'", DB, adOpenStatic
                If rsn.RecordCount > 0 Then
                    del = rsn("SLCODE")
                Else
                    del = txtfields(22).Text
                End If
                DB.Execute "INSERT INTO RM_DELSCHED (contno,contdate,deldate,qty,deladd,varcode,instruction,Divcode) VALUES('" & adoPrimaryRS("CONTNO") & "','" & Format(adoPrimaryRS("CONTDT"), "YYYY-MM-DD") & "','" & Format(Flexg1.TextMatrix(I, 1), "YYYY-MM-DD") & "'," & Flexg1.TextMatrix(I, 2) & ",'" & del & "','" & Flexg1.TextMatrix(I, 4) & "' ,'" & Flexg1.TextMatrix(I, 5) & "','" & Divcode & "')"
            End If
         Next
         DB.CommitTrans
     End If
        Opt = opt1
       If Opt = "add" Then
        ElseIf Opt = "mod" Then
            StatusBar1.Panels(2).Text = "Record(s) Modified"
            MsgBox "Record(s) Modified ", vbInformation, head
        
        End If
        If Opt = "del" Then
            Dim msg1 As String
            msg1 = MsgBox("Do you want to delete this record?", vbYesNo, head)
            If msg1 = vbYes Then
                DB.Execute ("delete from rm_cont where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'")
                DB.Execute ("delete from rm_cont_SLOTNO where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'")
                DB.Execute ("delete from rm_delsched where contno=" + "'" + Trim(txtfields(0).Text) + "' and divcode='" & Divcode & "' AND CONTDATE='" & Format(adoPrimaryRS("CONTDT"), "YYYY-MM-DD") & "'")
                opt1 = "del"
                Call SaveLogfunction
       
                
                DB.CommitTrans
                StatusBar1.Panels(2).Text = "Record(s) Deleted"
                MsgBox "Record(s) Deleted", vbInformation, head
            'BUTTON(9).ToolTipText = "Save"
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
        
        If Opt = "add" Or Opt = "mod" Then
            Call BUTTON_Click(13)
            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                Set fso = New FileSystemObject
                sFilePath = App.Path & "\RMERPAMDPO" & CustID & "\" & Divcode & "-AMDPONO-" & Trim(txtfields(66).Text) + " DT-" + Trim(Format(MaskEdBox5.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) & ".pdf"
                If fso.FileExists(sFilePath) Then
                   ' MsgBox "File Exist."
                Else
                      MsgBox "ERP Print Not updated Properly ! Please Wait For Some Time...."
                      Call BUTTON_Click(13)
                End If
            End If
            
        End If

        Screen.MousePointer = 0
        Opt = ""
        Call query_mode
        'SSTab1.Enabled = False
        Frame1.Enabled = False
        Frame2.Enabled = False
        Frame9.Enabled = False
        Frame6.Enabled = False
        Frame10.Enabled = False
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        desc.Caption = "Query"
       g = 0
       wosample = ""
       Exit Sub
Gk:
    If Err.Description <> "" Then
        MsgBox Err.Description
    End If
Case 10
dlmdfrm.Visible = False
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
End Select
    BUTTON(4).Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
    g = 0
    Call query_mode
    'SSTab1.Enabled = False
    Frame1.Enabled = False
    Frame2.Enabled = False
    Frame9.Enabled = False
    Frame6.Enabled = False
    Frame10.Enabled = False
    'Call cancl(BUTTON)
    Frame1.Visible = True
    Frame2.Visible = True
    dlmdfrm.Visible = False
    Buttonframe.Enabled = True
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(12).Enabled = True
    BUTTON(13).Enabled = True
    Screen.MousePointer = 0
    Frame9.Enabled = True
    DataGrid1.AllowUpdate = True
    DataGrid1.AllowArrows = True
    DataGrid1.Enabled = True
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Reset
    Unload Me
    
Case 12
        Frame11.Visible = True
        Frame11.ZOrder 0
        Option6.value = True
        'Option5.SetFocus
        SSTab1.Enabled = False
        UserFooter1.ClearFooter
        cmd_report.Visible = True
        Buttonframe.Enabled = False

Case 13

    Call Trans_print
        
Case 14

  Call POPrintNEW
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmContractoutsam", vbInformation, head
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub ChkCentralized_Click()
'    If wosample = "Y" Then Txtfields(25).SetFocus
End Sub

Private Sub ChkCentralized_LostFocus()
    If wosample = "Y" Then txtfields(25).SetFocus
End Sub

Private Sub cmd_report_Click()

If UCase(CustID) = "LMW" Then
 POPRINTLMW
 'POPRINT
Else
  POPRINT
End If

'SSTab1.Enabled = True
'Buttonframe.Enabled = True
'Frame11.Visible = False
'
' Dim s1, s2, s3, s4, s5 As String
'Dim s6, s7, s8, s9, s10 As String
'
'Dim p6, p7, p8, p9, p10, cott As String
'Dim sno1 As Integer
'Dim rsb As Recordset
'Dim rsd As Recordset
'Dim rsstat As Recordset
'Dim strstat As String
'Dim rsc As Recordset
'On Error GoTo cmd_report_Click_Error
'
'On Error GoTo cmd_report_Click_Error
'
'If TXTFIELDS(0).Text <> "" Then
'     Set Rs = New Recordset
'     txt = MaskEdBox3.Text
'
'    Rs.Open "select a.*,slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc from rm_cont a,fa_slmas b,po_car c,rm_pmode d where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & TXTFIELDS(1).Text & "'", DB
'
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
'    Set rs1 = New Recordset
'
'    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest from rm_cont a,rm_sample b where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & TXTFIELDS(1).Text & "'", DB
'        If rs1.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
'    Set rsb = New Recordset
'    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
'              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & TXTFIELDS(21).Text & "' and b.SLCODE=a.billadd", DB
'
'    Set rsa = New Recordset
'    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
'              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & TXTFIELDS(22).Text & "' and b.SLCODE=a.deladd", DB
'
'    Set rsstat = New Recordset
'    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(TXTFIELDS(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    If rsstat.RecordCount > 0 Then
'       strstat = rsstat!Station
'    Else
'       strstat = ""
'    End If
'    Set rsc = New Recordset
'    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate", DB, adOpenStatic
'
'    If rsc.RecordCount > 0 Then
'        INSTRUCTION = rsc("INSTRUCTION")
'    Else
'        INSTRUCTION = ""
'    End If
'
'    Set rsJ = New Recordset
'    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
'
'
'    Set RS11 = New Recordset
'    RS11.Open "select a.sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season""  from rm_cont a,rm_var b,rm_cat c   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd", DB, adOpenStatic, adLockBatchOptimistic
'     rema = RS11("remarks")
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
'    Set rsd = New Recordset
'    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & TXTFIELDS(21).Text & "'and c.billadd=b.slcode", DB
'    Set RPTV = New Report.ReportView
'    a = FreeFile
'    Close
'    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
'    pg1 = 0
'    Co = 0
'
'    Print #a,
'    Print #a,
'    Print #a, Space(3) & Chr(27) & "E" + CENTRE(DIVNAME, 85, " ") & Chr(27) & "F"
'    Print #a,
'    Print #a,
'    Print #a, Space(3) & Chr(27) & "E" & CENTRE("RAW MATERIAL - PURCHASE ORDER ", 85, " ") & Chr(27) & "F"
'    Print #a,
'    Dim I1 As Integer
'    I1 = 0
'    Print #a, Space(3) + "REF: CON" & Padr(Rs("contNO") & "/C-" & rsJ("MILLREFNO") & "/" & Year(yfdate) & "/" & Year(yldate), 28, " ") + Space(12) + "DATE" + Space(2) + Padr(Format(Rs("contdt"), "DD/MM/YY"), 8, "")
'    Print #a,
'    Print #a, Space(3) & "TO,"
'    Print #a, Space(3) + Space(1) & Rs("slname") & ""
'    If Rs("add1") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add1") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If Rs("add2") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add2") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If Rs("add3") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add3") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If I1 >= 3 Then
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    Print #a,
'    Print #a, Space(3) & "Dear Sirs"
'    Print #a,
'    Print #a, Space(3) & "Sub: Purchase of Raw Material"
'    Print #a,
'    Print #a, Space(3) & "We are pleased to confirm our purchase of the following Raw Material from you"
'    Print #a, Space(3) & "as per the details stated below:-"
'    Print #a,
'    RS11.MoveFirst
'    Print #a, Space(3) & String(80, "-")
'    Print #a, Space(3) & "|Sl.|Variety | Quan|Station           | Rate / " + Padl(RS11("rateunit"), 8, " ") + "  |Staple    |Season    |"
'    Print #a, Space(3) & "|No.|        |-tity|                  |        per bale  |          |          |"
'    Print #a, Space(3) & "|   |        |     |                  |   spot expenses  |          |          |"
'    sno1 = 1
'    Print #a, Space(3) & String(80, "-")
'    Do While Not RS11.EOF
'    Staple = RS11("STAPLE")
'    season = RS11("SEASON")
'    Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
'    Print #a, Space(3) & String(80, "-")
'    sno1 = sno1 + 1
'    RS11.MoveNext
'    Loop
'    Print #a,
'    Print #a, Space(3) & "Agent                :" + Space(3) + "Through " & Text2.Text
'    Print #a, Space(3) & "Payment              :" + Space(3) + Rs("payterms") + " .Please inform us in which name we will"
'    Print #a, Space(3) & Space(21) + Space(3) + " have to take" + Space(1) + Rs("paydesc") + Space(1) + "and payable station."
'    Print #a, Space(3) & "Delivery Schedule    :" + Space(3) + INSTRUCTION
'    Print #a,
'
'    If rsb.RecordCount = 0 Then
'        s1 = ""
'        s2 = ""
'        s3 = ""
'        s4 = ""
'        s5 = ""
'        s6 = ""
'        s7 = ""
'        s8 = ""
'        s9 = ""
'        s10 = ""
'    Else
'        s1 = rsb("slname")
'        s2 = rsb("add1")
'        s3 = rsb("add2")
'        s4 = rsb("add3")
'
'        s5 = rsb("city")
'        If rsd.EOF = False Then
'            s6 = IIf(IsNull(rsd("tinno")), 0, rsd("tinno"))
'            s7 = IIf(IsNull(rsd("tindt")), "", rsd("tindt"))
'            s8 = IIf(IsNull(rsd("cgst")), 0, rsd("cgst"))
'            s9 = IIf(IsNull(rsd("cgstdt")), "", rsd("cgstdt"))
'        End If
'        s10 = Rs("rc_no")
'    End If
'
'    If rsa.RecordCount = 0 Then
'        p6 = ""
'        p7 = ""
'        p8 = ""
'        p9 = ""
'        p10 = ""
'    Else
'        p6 = rsa("slname")
'        p7 = rsa("add1")
'        p8 = rsa("add2")
'        p10 = rsa("city")
'    End If
'    Print #a, Space(3) & "Billing Address" + Space(32) + "Delivery Address"
'    Print #a, Space(3) + Space(2) & Padr(s1, 30, "") + Space(17) & Padr(p6, 30, "")
'    Print #a, Space(3) + Space(2) & Padr(s2, 30, "") + Space(17) & Padr(p7, 30, "")
'    Print #a, Space(3) + Space(2) & Padr(s5, 30, "") + Space(17) & Padr(p10, 30, "")
'    Print #a, Space(3) + Space(2) & "TIN No. " + Padr(s6, 15, "") & "DT." + Padr(Format(s7, "DD/MM/YY"), 8, "") + Space(13) & "Contact Person:" & Trim(Text7.Text)
'    Print #a, Space(3) + Space(2) & "CST No. " + Padr(s8, 15, "") & "DT." + Padr(Format(s9, "DD/MM/YY"), 8, "") + Space(13) & "Phone No."
'    Print #a, Space(3) + Space(2) & "Central Exercise RC No. " + Padr(s10, 20, "")
'    Print #a,
'    Print #a, Space(3) & "Kindly sign a copy of this contract and return to us as a token of your acceptance."
'    Print #a,
'    Print #a, Space(3) & "Thanks & Regards"
'    Print #a,
'    Print #a,
'    Print #a, Space(3)
'    Print #a, Space(3) & "GENERAL MANAGER - ADMIN & MKTG" & Chr(27)
'    Print #a, Space(3)
'    Print #a,
'    Print #a, Space(3) & "   Please send us the samples immediately on receipt of the"
'    Print #a, Space(3) & "   load for quality checking"
'    Print #a, Space(3) & String(80, "-")
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
'    Print #a, Chr(12)
'    Close #a
'    Call KALBATPROCESS("PURORDER")
'End If
'
'Exit Sub
'cmd_report_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmd_report_Click of Form FrmContractoutsam", vbInformation, head
'Screen.MousePointer = 0

End Sub

Private Sub cmd_report_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo cmd_report_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    SSTab1.Enabled = True
    Buttonframe.Enabled = True
    cmd_report.Visible = False
    UserFooter1.Visible = False
ElseIf KeyCode = vbKeyLeft Then
    Option6.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option6.SetFocus
End If

Exit Sub
cmd_report_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtfields(7).SetFocus
End If
End Sub

Private Sub Combo10_Change()
On Error Resume Next
On Error GoTo Combo10_Change_Error
If Combo10.Text = "YES" Then
    Label3(13).Visible = True
    txtfields(59).Visible = True
    Set Rs = New Recordset
    Rs.Open "select isnull(ftamt,0) ftamt from rm_param where divcode='" & Divcode & "' ", DB
    If Not Rs.EOF Then
        txtfields(59).Text = Rs(0)
        Else
        txtfields(59).Text = "0"
    End If
    
Else
    Label3(13).Visible = False
    txtfields(59).Visible = False
    txtfields(59).Text = "0"
End If

Exit Sub
Combo10_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo10_change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo10_Click()
On Error GoTo Combo10_Click_Error
If Combo10.Text = "YES" Then
    Label3(13).Visible = True
    txtfields(59).Visible = True
    Set Rs = New Recordset
    Rs.Open "select isnull(ftamt,0) ftamt from rm_param  ", DB
    If Not Rs.EOF Then
        txtfields(59).Text = Rs(0)
        Else
        txtfields(59).Text = "0"
    End If
    
Else
    Label3(13).Visible = False
    txtfields(59).Visible = False
    txtfields(59).Text = "0"
End If

Exit Sub
Combo10_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo10_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo2_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo3_GotFocus()
On Error GoTo Combo3_GotFocus_Error

Combo3.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a mode of transport from the list"

Exit Sub
Combo3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Combo3_KeyPress(KeyAscii As Integer)
On Error GoTo Combo3_KeyPress_Error

If KeyAscii = 13 And (Opt = "add" Or Opt = "mod") Then
    'Txtfields(6).SetFocus
End If

Exit Sub
Combo3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo3_LostFocus()
On Error GoTo Combo3_LostFocus_Error

Combo3.BackColor = " &H80000005"      ''white
If Combo3.Text = "" Then
MsgBox "Select The Mode Of Transport", vbInformation, head
Combo3.SetFocus
Screen.MousePointer = 0
Cancel = True
Exit Sub
Else
txtfields(12).SetFocus
End If

Exit Sub
Combo3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo4_GotFocus()
Combo4.BackColor = "&HC0FFC0"  '' green
End Sub

Private Sub Combo4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo4_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo4_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo4_LostFocus()
Combo4.BackColor = " &H80000005  "   '' white
End Sub

Private Sub Combo5_Click()
'txtfields(24).Text = "Candy" ' Trim(Combo5.Text)
On Error GoTo Combo5_Click_Error

txtfields(24).Text = Combo5.Text

Exit Sub
Combo5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo5_GotFocus()
On Error GoTo Combo5_GotFocus_Error

Combo5.BackColor = " &HC0FFC0"  '' green
StatusBar1.Panels(2).Text = "Select a Rate unit from the list"

Exit Sub
Combo5_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo5_LostFocus()
On Error GoTo Combo5_LostFocus_Error

Combo5.BackColor = " &H80000005 "     '' white"
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo5_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo6_GotFocus()
On Error GoTo Combo6_GotFocus_Error

Combo6.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Variety from the list"

Exit Sub
Combo6_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo6_LostFocus()
On Error GoTo Combo6_LostFocus_Error

    If Opt = "add" Or Opt = "mod" Then
        'MaskEdBox1.SetFocus
        'Exit Sub
    End If
Combo6.BackColor = "&HffFFff"              ''white
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo6_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo7_Change()
On Error GoTo Combo7_Change_Error

If Left(Combo7.Text, 1) = "P" Then
'    DataGrid1.Columns(3).Locked = True
    DataGrid1.Columns(5).Locked = False
ElseIf Left(Combo7.Text, 1) = "K" Then
    DataGrid1.Columns(3).Locked = False
    DataGrid1.Columns(5).Locked = True
End If

Exit Sub
Combo7_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo7_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo7_GotFocus()
Combo7.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Arrival Type from the list"
End Sub

Private Sub Combo7_LostFocus()
On Error GoTo Combo7_LostFocus_Error

Combo7.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo7_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo7_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_GotFocus()
On Error GoTo Combo8_GotFocus_Error

Combo8.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Instruction from the list"

Exit Sub
Combo8_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_KeyPress(KeyAscii As Integer)
'If KeyAscii = 13 Then
On Error GoTo Combo8_KeyPress_Error

    

Exit Sub
Combo8_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_LostFocus()
On Error GoTo Combo8_LostFocus_Error

Combo8.BackColor = &HFFFFFF              ''white
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo8_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_AfterColEdit(ByVal ColIndex As Integer)
If Opt = "add" Or Opt = "mod" Then
If ColIndex = 3 Or ColIndex = 5 Then
    If Opt = "add" And val(DataGrid1.Columns(18).Text) > 0 Then
        Dim pendingQty, pendingQtykgs As Double
        pendingQty = 0
        pendingQtykgs = 0
        Set rsgpn = New Recordset
        rsgpn.Open "select ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY, ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) BALQTYKG FROM   Rm_PRL A where divcode='" & Divcode & "' and PRNO='" & val(DataGrid1.Columns(18).Text) & "' and prdate='" & Format(DataGrid1.Columns(19).Text, "yyyy-mm-dd") & "' and prsno='" & val(DataGrid1.Columns(20).Text) & "'", DB, adOpenStatic
        If Not rsgpn.EOF Then
            pendingQty = rsgpn(0)
            pendingQtykgs = rsgpn(1)
        End If
        If val(DataGrid1.Columns(3).Text) > pendingQty Then
            MsgBox "Entered Quantity Cannot be Greater than Pending Quantity ", vbInformation, head
            DataGrid1.Columns(3).Text = pendingQty
            Exit Sub
        End If
        
        If val(DataGrid1.Columns(5).Text) > pendingQtykgs Then
            MsgBox "Entered Qty in Kgs Cannot be Greater than Pending Qty in Kgs ", vbInformation, head
            DataGrid1.Columns(5).Text = pendingQtykgs
            Exit Sub
        End If
        
    ElseIf Opt = "mod" Then
       If RsMod("iprno") > 0 Then
            Dim prevOrdqty, PrevOtyKgs, prevrcdKgs, PrevRcdQty As Double
            Set rsgpn = New Recordset
            rsgpn.Open "select ORDQTY  ORDQTY ,ordkgs ordkgs,isnull(RECQTY,0) RECQTY,isnull(RCDKGS,0) RCDKGS FROM   Rm_cont A where divcode='" & Divcode & "' and contno='" & txtfields(0).Text & "' and contdt='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            If Not rsgpn.EOF Then
                prevOrdqty = rsgpn(0)
                PrevOtyKgs = rsgpn(1)
                prevrcdKgs = rsgpn(3)
                PrevRcdQty = rsgpn(2)
            End If
        
            Set rsgpn = New Recordset
            rsgpn.Open "select ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY, ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) BALQTYKG FROM   Rm_PRL A where divcode='" & Divcode & "' and PRNO='" & val(RsMod("iprno")) & "' and prdate='" & Format(RsMod("prdate"), "yyyy-mm-dd") & "' and prsno='" & val(RsMod("prsno")) & "'", DB, adOpenStatic
            If Not rsgpn.EOF Then
                pendingQty = rsgpn(0)
                pendingQtykgs = rsgpn(1)
            End If
            pendingQty = val(pendingQty) + val(prevOrdqty)
            pendingQtykgs = val(pendingQtykgs) + val(PrevOtyKgs)
            
            If val(DataGrid1.Columns(3).Text) > pendingQty Then
               ' MsgBox "Entered Quantity Cannot be Greater than Pending Quantity ", vbInformation, head
               ' DataGrid1.Columns(3).Text = pendingQty
              '  Exit Sub
            End If
            
            If val(DataGrid1.Columns(5).Text) > pendingQtykgs Then
              '  MsgBox "Entered Qty in Kgs Cannot be Greater than Pending Qty in Kgs ", vbInformation, head
               ' DataGrid1.Columns(5).Text = pendingQtykgs
               ' Exit Sub
            End If
            
            If val(DataGrid1.Columns(3).Text) < PrevRcdQty Then
                MsgBox "Entered Quantity Cannot be Less than Received Quantity ", vbInformation, head
                DataGrid1.Columns(3).Text = PrevRcdQty
                Exit Sub
            End If
            
            If val(DataGrid1.Columns(5).Text) < prevrcdKgs Then
                MsgBox "Entered Qty in Kgs Cannot be Less than Received Qty in Kgs ", vbInformation, head
                DataGrid1.Columns(5).Text = prevrcdKgs
                Exit Sub
            End If
            
        End If
    End If
        
   
       
End If
End If
End Sub

Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo DataGrid1_KeyDown_Error
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
DataGrid1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub DataGrid1_KeyPress(KeyAscii As Integer)

On Error GoTo DataGrid1_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    
    If DataGrid1.Col = 4 Then
        If KeyAscii <> 8 And KeyAscii <> 66 And KeyAscii <> 98 And KeyAscii <> 72 And KeyAscii <> 104 And KeyAscii <> 82 And KeyAscii <> 114 And KeyAscii <> 9 Then
            KeyAscii = 0
        End If
    End If
    

    If DataGrid1.Col = 3 Then
        StatusBar1.Panels(2).Text = "Enter The Order Qty, Maximum 8 Integers"
        tonum DataGrid1, 8, KeyAscii
    End If
    If DataGrid1.Col = 5 Then
        StatusBar1.Panels(2).Text = "Enter The Order Kgs, Maximum 8 Integers with 3 Decimals"
        ToNumberAssign DataGrid1, 15, KeyAscii, 15, 3
    End If
    If DataGrid1.Col = 6 Then
        StatusBar1.Panels(2).Text = "Enter The Order Kgs, Maximum 5 Integers with 7 Decimals"
        ToNumberAssign DataGrid1, 5, KeyAscii, 5, 7
    End If
    If DataGrid1.Col = 4 Then
            StatusBar1.Panels(2).Text = "Enter The Unit B-Bale (OR) H-HalfpressBale (OR) R-Borah"
            ToUpCase DataGrid1, KeyAscii
            ToAlphaNumber DataGrid1, 1, KeyAscii
            ToUpCase DataGrid1, KeyAscii
    End If
    
    If DataGrid1.Col <> 4 Then
'        StatusBar1.Panels(2).Text = ""
    End If
    
    If DataGrid1.Col >= 8 And DataGrid1.Col <= 16 Then
        StatusBar1.Panels(2).Text = "Enter The Maximum 2 Integers with 2 Decimals"
        ''tonum DataGrid1, 5, KeyAscii
        If DataGrid1.Col <> 14 Then
            ToNumberAssign DataGrid1, 2, KeyAscii, 2, 2
        End If
    End If
    
    If UCase(CustID) = "COTTON" Then
        ToNumberAssign DataGrid1, 2, KeyAscii, 5, 8
    Else
    If DataGrid1.Col = 17 Then
        StatusBar1.Panels(2).Text = "Enter The Maximum 2 Integers with 3 Decimals"
        ToNumberAssign DataGrid1, 2, KeyAscii, 2, 3
    End If
    End If
    
    If (DataGrid1.Col = 11 Or DataGrid1.Col = 12) And KeyAscii <> 9 Then
        If val(DataGrid1.Columns(10).Text) = "0" Then
            KeyAscii = 0
            DataGrid1.Columns(11).Text = "0"
            DataGrid1.Columns(12).Text = "0"
        End If
    End If
    If wosample = "Y" Then
        If DataGrid1.Col = 17 Then
            If RS11.RecordCount = RS11.AbsolutePosition Then
                MFLG = "Y"
            Else
                MFLG = "N"
            End If
        Else
           MFLG = "N"
        End If
    End If
    If wosample = "N" Then
        If DataGrid1.Col = 17 Then
'            If RS11.RecordCount = RS11.AbsolutePosition Then
                MFLG = "Y"
'            Else
'                MFLG = "N"
'            End If
        Else
           MFLG = "N"
        End If
    End If
End If


Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmContractoutsam", vbInformation, head
End Sub
Private Sub DataGrid1_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo DataGrid1_RowColChange_Error
intervalMinutes = -1
    If Opt = "add" Or Opt = "mod" Then
    
       If LastCol = 6 And wosample = "N" Then
    
            Set rs5 = New Recordset
            rs5.Open "select isnull(PRBased,'Y') as PRBased from rm_param ", DB, adOpenStatic, adLockReadOnly
            If Not rs5.EOF Then
                If rs5!PRBased = "Y" Then
                    Set rs1 = New Recordset
                    rs1.Open "SELECT ISNULL(HSN,'')HSN,ISNULL(CGSTPER,0) CGSTPER,ISNULL(SGSTPER,0) SGSTPER,ISNULL(IGSTPER,0) IGSTPER,TaxCode FROM rm_var WHERE varcode='" & Trim(DataGrid1.Columns(1).Text) & "'", DB
                    If Not rs1.EOF Then
                     If rs1!HSN = "" Then
                     MsgBox "HSN cannot be empty  ", vbInformation, head
                     Exit Sub
                     Call BUTTON_Click(10)
                     End If
                     DataGrid1.Columns("HSN Code").Text = rs1!HSN
                
                        If IGSTFLG = "Y" Then
                        DataGrid1.Columns("CGST %").Text = rs1!CGSTPER
                        DataGrid1.Columns("SGST %").Text = rs1!SGSTPER
                        DataGrid1.Columns("IGST %").Text = 0
                        Else
                        DataGrid1.Columns("CGST %").Text = 0
                        DataGrid1.Columns("SGST %").Text = 0
                        DataGrid1.Columns("IGST %").Text = rs1!IGSTPER
    
                        End If
                        DataGrid1.Columns("tax code").Text = rs1("Taxcode")
                        DataGrid1.Columns("Tax %").Text = rs1("IGSTPER")
               

                    End If
                End If
             End If
    
       End If
        If LastCol = 0 And wosample <> "N" Then
   
            Set rsa = New Recordset
            rsa.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic     ' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT where contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'and supcode='" & txtFields(1).Text & "' ) AND supcode='" & txtFields(1).Text & "' ", db, adOpenStatic

                        
           
           If rsa.RecordCount > 0 Then
           
               StatusBar1.Panels(2).Text = "Select Sample No From the List"
               LookUp.Clear = True

               LookUp.query = "select SNO""Mill Sample No"" ,Date""Mill Sample Date"" ,slname as Supplier ,varname as Variety from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and supcode='" & txtfields(1).Text & "'" ' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT WHERE supcode='" & txtFields(1).Text & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "')"
               LookUp.Caption = "Sample Listing"
               LookUp.DefCol = "Supplier"
               LookUp.ALIGN = "1200,1500,4000,2000"
               LookUp.Show vbModal
               
               If LookUp.Cancel = False Then
                    
                   Set rsn = New Recordset
                   rsn.DataSource = RS11
                   If rsn.RecordCount > 0 Then rsn.MoveFirst
                   For I = 1 To rsn.RecordCount - 1
                       If LookUp.Fields(0) = rsn("Mill Sample No.") Then
                           MsgBox "Already Exists in Grid", vbInformation, head
                           rsn.MoveLast
                           DataGrid1.Col = 1
                           DataGrid1.SetFocus
                           
                           Exit Sub
                       End If
                       rsn.MoveNext
                   Next
                  If rsn.RecordCount > 0 Then rsn.MoveLast
                    
               
               
               
                   txtfields(16).Text = LookUp.Fields(0)
                   DataGrid1.Columns(0).Text = LookUp.Fields(0)
                   If sampNo = "" Then
                        sampNo = LookUp.Fields(0)
                   Else
                        sampNo = sampNo + "," + LookUp.Fields(0)
                   End If
                   
                   Set rs3 = New Recordset
                   rs3.Open "select distinct sno,a.supcode,a.varcode,b.varname,c.slname,AREA_CODE,AREANAME,CROP_YEAR,a.prty_sampno,a.brokercode from rm_sample a,rm_var b,fa_slmas c,RM_AREA D where  a.supcode=c.slcode and a.varcode=b.varcode AND A.AREA_CODE=D.AREACODE and sno='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
                   If rs3.RecordCount > 0 Then
                       txtfields(1).Text = rs3("supcode")
                       Text1.Text = rs3("slname")
                       txtfields(4).Text = rs3("varcode") 'HIDE DUE TO MULTIPLE VARIETY
                       txtfields(15).Text = rs3("varname") 'HIDE
                       txtfields(17).Text = rs3("prty_sampno") 'HIDE
                       txtfields(3).Text = rs3("AREA_CODE")
                       Text3.Text = rs3("AREANAME")
                       
                       If IsNull(rs3("CROP_YEAR")) = True Or rs3("CROP_YEAR") = "" Then
                            txtfields(13).Text = Year(yfdate)
                       Else
                            txtfields(13).Text = rs3("CROP_YEAR")
                       End If
                       
                       
                       txtfields(2).Text = rs3("brokercode")
                       DataGrid1.Columns(1).Text = rs3("varcode")
                       DataGrid1.Columns(2).Text = rs3("varname")
                       DataGrid1.Columns(7).Text = rs3("prty_sampno")
                       DataGrid1.Columns(1).Locked = True
                       DataGrid1.Columns(2).Locked = True
                   End If
                   Set LABRS = New Recordset
                   LABRS.Open "SELECT a.areaname,a.station,a.areacode,a.state FROM RM_area a ,rm_sample as b WHERE a.areacode=b.area_code ", DB, adOpenStatic, adLockBatchOptimistic
                   Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                   Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
        
                   Set rsa = New Recordset
                   rsa.Open "select l_or_u  from rm_area where areacode='" & txtfields(3).Text & "'", DB, adOpenStatic
                   If rsa.RecordCount > 0 Then
                       If rsa(0) = "L" Then
                           Option1.value = False
                          Option2.value = True
                          Option3.value = False
                        ElseIf rsa(0) = "U" Then
                          Option1.value = True
                          Option2.value = False
                          Option3.value = False
                        ElseIf rsa(0) = "I" Then
                          Option1.value = False
                          Option2.value = False
                          Option3.value = True
                       End If
                    End If
               End If
                LookUp.Clear = True
                DataGrid1.Columns(1).Locked = True
                DataGrid1.Columns(2).Locked = True
                LookUp.Clear = True
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                Exit Sub
            End If
     End If
     
     If LastCol = 1 Then  'And wosample = "N"
    
        Set Rs = New Recordset
        Rs.Open "select ISNULL(HSN ,'') HSN ,varcode,varname,ISNULL(CGSTper,0) CGSTper, ISNULL(SGSTper,0)  SGSTper,ISNULL(IGSTper,0) IGSTper,isnull(taxcode,'') taxcode from rm_var where varcode='" & DataGrid1.Columns(1).Text & "'", DB, adOpenStatic
        
        If Rs.RecordCount > 0 Then
            If Trim(Rs("HSN")) = "" Then
                
                    MsgBox " PLEASE ENTER HSN CODE IN MASTER", vbCritical, head
                    Call BUTTON_Click(10)
                    BUTTON(9).Enabled = False
                    Exit Sub
            End If
       
            DataGrid1.Columns(1).Text = Rs("varcode")
            DataGrid1.Columns(2).Text = Rs("varname")
            DataGrid1.Columns("HSN Code").Text = Rs("HSN")
            If STATEFLAG <> "F" Then
                If IGSTFLG = "Y" Then
                    DataGrid1.Columns("CGST %").Text = Rs("CGSTper")
                    DataGrid1.Columns("SGST %").Text = Rs("sGSTper")
                    DataGrid1.Columns("IGST %").Text = 0
                Else
                    DataGrid1.Columns("CGST %").Text = 0
                    DataGrid1.Columns("SGST %").Text = 0
                    DataGrid1.Columns("IGST %").Text = Rs("iGSTper")
                End If
                    DataGrid1.Columns("tax code").Text = Rs("Taxcode")
                    DataGrid1.Columns("Tax %").Text = Rs("iGSTper")
            Else
                DataGrid1.Columns("CGST %").Text = 0
                DataGrid1.Columns("SGST %").Text = 0
                DataGrid1.Columns("IGST %").Text = 0
            End If
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 3
            DataGrid1.SetFocus
        Else
            LookUp.Clear = True
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name"",VARTYPE 'Variety Type',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'Variety Desc.',isnull(SHADENO,'') 'Shade',isnull(Denier,'') Denier,isnull(Length,'') Length ,isnull(HSN,'') HSN,ISNULL(CGSTPER,0) CGSTPER,ISNULL(SGSTPER,0) SGSTPER,ISNULL(IGSTPER,0) IGSTPER,TaxCode from RM_VAR "
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "Variety Name"
            LookUp.ALIGN = "1200,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000"
            
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
                If Trim(LookUp.Fields("HSN")) = "" Then
                
                    MsgBox " PLEASE ENTER HSN CODE IN MASTER", vbCritical, head
                    Call BUTTON_Click(10)
                    BUTTON(9).Enabled = False
                    Exit Sub
                End If
            
                Set rsn = New Recordset
                rsn.DataSource = RS11
                If rsn.RecordCount > 0 Then rsn.MoveFirst
                For I = 1 To rsn.RecordCount - 1
                       If LookUp.Fields(0) = rsn("VARiety CODE") Then
                           MsgBox "Already Exists in Grid", vbInformation, head
                           rsn.MoveLast
                           DataGrid1.Col = 1
                           DataGrid1.SetFocus
                           Exit Sub
                       End If
                       rsn.MoveNext
                Next
                If rsn.RecordCount > 0 Then rsn.MoveLast
                
                DataGrid1.Columns(1).Text = LookUp.Fields(0)
                DataGrid1.Columns(2).Text = LookUp.Fields(1)
                
                DataGrid1.Columns("HSN Code").Text = LookUp.Fields("HSN")
               If STATEFLAG <> "F" Then
                    If IGSTFLG = "Y" Then
                        DataGrid1.Columns("CGST %").Text = LookUp.Fields("CGSTPER")
                        DataGrid1.Columns("SGST %").Text = LookUp.Fields("SGSTPER")
                        DataGrid1.Columns("IGST %").Text = 0
                    Else
                        DataGrid1.Columns("CGST %").Text = 0
                        DataGrid1.Columns("SGST %").Text = 0
                        DataGrid1.Columns("IGST %").Text = LookUp.Fields("IGSTPER")
                    End If
                    DataGrid1.Columns("tax code").Text = LookUp.Fields("Taxcode")
                    DataGrid1.Columns("Tax %").Text = LookUp.Fields("IGSTPER")
                Else
                    DataGrid1.Columns("CGST %").Text = 0
                    DataGrid1.Columns("SGST %").Text = 0
                    DataGrid1.Columns("IGST %").Text = 0
                End If
       
                If Opt = "add" Then
                DataGrid1.Columns(4).Text = "B"
                End If
                DataGrid1.Columns(2).Locked = True
'                If Option4.value = True Then''sassi 03.10.19
'                    DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
'                    DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
'                    txtfields(34).Text = ""
'                    txtfields(35).Text = ""
'
'                Else
'                    DataGrid1.Columns(14).Text = ""
'                    DataGrid1.Columns(15).Text = ""
'                    txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
'                    txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
'                End If
                LookUp.Clear = True
                DataGrid1.Row = DataGrid1.Row
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                
            Else
                LookUp.Clear = True
                DataGrid1.Row = DataGrid1.Row
                DataGrid1.Col = 1
                DataGrid1.SetFocus
            End If
        End If
     End If
        
     If LastCol = 3 And Left(Combo7.Text, 1) = "P" Then
                If val(DataGrid1.Columns(3).Text) = 0 Then
                       MsgBox "Order Quantity cannot be Zero Or Empty", vbInformation, head
                       DataGrid1.Col = 3
                       DataGrid1.SetFocus
                       Exit Sub
                End If
     End If
     
     If LastCol = 5 And Left(Combo7.Text, 1) = "K" Then
                If val(DataGrid1.Columns(5).Text) = 0 Then
                       MsgBox "Order Kgs cannot be Zero Or Empty", vbInformation, head
                       DataGrid1.Col = 5
                       DataGrid1.SetFocus
                       Exit Sub
                End If
     End If
     
     If LastCol = 3 And Left(Combo7.Text, 1) = "P" Then
        Dim ChkRs As Recordset
        Set ChkRs = New Recordset
        ChkRs.Open "Select SUM(ISNULL(Quantity,0)) as Quantity from RM_Arrival where Divcode='" & Divcode & "' and ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & DataGrid1.Columns(1).Text & "' ", DB
        If Not ChkRs.EOF Then
            If val(DataGrid1.Columns(3).Text) < ChkRs!Quantity Then
                MsgBox " Order Qty must be greater than Arrival Qty (" & Format(ChkRs!Quantity, "0.00") & " )"
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                Exit Sub
            Else
                DataGrid1.Col = 4
                DataGrid1.SetFocus
            End If
        End If
    End If
    
    If LastCol = 5 And Left(Combo7.Text, 1) = "K" Then
        Set ChkRs = New Recordset
        ChkRs.Open "Select SUM(ISNULL(NetWt,0)) as NetWt from RM_Arrival where Divcode='" & Divcode & "' and ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & DataGrid1.Columns(1).Text & "' ", DB
        If Not ChkRs.EOF Then
            If DataGrid1.Columns(5).Text < ChkRs!netwt Then
                MsgBox " Order Qty must be greater than Arrival Qty (" & Format(ChkRs!netwt, "0.000") & " )"
                DataGrid1.Col = 5
                DataGrid1.SetFocus
                Exit Sub
            End If
        End If
    End If
   
     
     If LastCol = 6 Then
        If DataGrid1.Columns(6).Text = "" Then
            MsgBox "Rate cannot be empty", vbInformation, head
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 6
            DataGrid1.SetFocus
            Exit Sub
        Else
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 8
            DataGrid1.SetFocus
            Exit Sub
        End If
     End If
     
     If LastCol = 4 Then
      If DataGrid1.Row >= 0 Then
        If Trim(DataGrid1.Columns(4).Text) = "" Then
            MsgBox "Unit cannot be empty", vbInformation
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 4
            DataGrid1.SetFocus
            Exit Sub
        Else
           StatusBar1.Panels(2).Text = ""
                If DataGrid1.Col = 8 Then
                    If Option5.value = True Then
                        DataGrid1.LeftCol = 15
                        DataGrid1.Columns(8).Locked = True
                        DataGrid1.Columns(9).Locked = True
                        DataGrid1.Columns(10).Locked = True
                        DataGrid1.Columns(11).Locked = True
                        DataGrid1.Columns(12).Locked = True
                        DataGrid1.Columns(13).Locked = True
                        DataGrid1.Columns(14).Locked = True
                        DataGrid1.Columns(15).Locked = True
                        DataGrid1.Columns(16).Locked = True
                        DataGrid1.Col = 17
                        DataGrid1.SetFocus
                    End If
                End If
           
        End If
       End If
     End If
     
     If LastCol >= 8 And LastCol <= 17 Then
        
        If LastCol = 14 Then
            If Option5.value = True Then
                        DataGrid1.LeftCol = 15
                        DataGrid1.Col = 17
                        DataGrid1.SetFocus
            Else
                Set RSV = New Recordset
                RSV.Open "SELECT * FROM IG_TAX WHERE TAXSTATUS='Y' AND TAX_CODE='" & DataGrid1.Columns(14).Text & "'", DB, adOpenStatic
                
                If RSV.RecordCount > 0 Then
                    DataGrid1.Columns(15).Text = RSV("ST_PER")
                Else
                    LookUp.Clear = True
                    LookUp.query = "select Tax_Code""Tax Code"",Description""Tax Description"",ST_Per""ST %"",ITCper""ITC %"",ITCTaxStatus""ITC Tax Status"" from ig_tax"
                    LookUp.DefCol = "Tax Description"
                    LookUp.Caption = "Tax Listing"
                    LookUp.ALIGN = "1425,3000,1425,1425, 1425"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        
                        DataGrid1.Columns(14).Text = LookUp.Fields(0)
                        DataGrid1.Columns(15).Text = LookUp.Fields(2)
                        LookUp.Clear = True
                        DataGrid1.Col = 16
                        DataGrid1.SetFocus
                        Exit Sub
                    Else
                        DataGrid1.Columns(14) = ""
                        DataGrid1.Columns(15) = 0
                        LookUp.Clear = True
                        DataGrid1.Col = 16
                        DataGrid1.SetFocus
                    End If
                End If
            End If
        Else
            
            If val(DataGrid1.Columns(LastCol)) = 0 Then
                DataGrid1.Columns(LastCol) = 0
            End If
        End If
     End If
     
     
     If DataGrid1.Col = 17 And MFLG = "Y" Then
        If wosample = "Y" Then
           ''If rsg.RecordCount > 0 Then
            U = MsgBox("Do You Want Add One More Sample?", vbYesNo, head)
            If U = vbYes Then
                RS11.AddNew
                DataGrid1.LeftCol = 0
                DataGrid1.Col = 0
                DataGrid1.SetFocus
                Exit Sub
           Else
                Set rstParameter = New Recordset
                rstParameter.Open "SELECT SEASONCALCREQ FROM RM_PARAM", DB, adOpenStatic
                If rstParameter(0) = "Y" Then
                    txtfields(43).SetFocus
                Else
                    txtfields(25).SetFocus
                End If
                Exit Sub
           End If
           
        End If
        
            If wosample = "N" Then
          If Opt = "add" Then
                g = 1
                If val(DataGrid1.Columns(3).Text) = 0 And val(DataGrid1.Columns(4).Text) = 0 Then
                    g = 0
                End If
          
                If DataGrid1.Columns(1).Text <> "" And DataGrid1.Columns(2).Text <> "" And g <> 0 And DataGrid1.Columns(4).Text <> "" Then
                   
                   U = MsgBox("Do You Want To Select One More Variety?", vbYesNo, head)
                    
                   If U = vbYes Then
                        RS11.AddNew
                        DataGrid1.LeftCol = 0
                        DataGrid1.Col = 1
                        DataGrid1.SetFocus
                        Exit Sub
                   Else
                        SSTab1.Tab = 1
                        If sCR = "Y" Then
                            txtfields(38).SetFocus
                        Else
                            txtfields(20).SetFocus
                        End If
                        Exit Sub
                   End If
                End If
           End If
           
        End If

     End If
     
     
     
End If


Exit Sub
DataGrid1_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_RowColChange of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub deliveryadd_Click()
On Error GoTo deliveryadd_Click_Error

Text8.Text = MaskEdBox1.Text

'If Text8.Text <> "" And Text9.Text <> "" Then
If Text8.Text <> "" Then


If Opt = "add" Or Opt = "mod" Then
    If IsDate(MaskEdBox1.Text) = False Then
        MsgBox "Please enter valid date", vbInformation, head
        MaskEdBox1.SetFocus
        Exit Sub
    End If
    If CDate(MaskEdBox1.Text) < CDate(MaskEdBox3.Text) Then
        MsgBox "Delivery Date must be after or equal to Contract date", vbInformation, head
        MaskEdBox1.SetFocus
        MaskEdBox1.Text = "__/__/____"
        Exit Sub
    End If
    If val(Text9.Text) = 0 Then
        MsgBox "Delivery Quantity must be greater than zero", vbInformation, head
        Text9.Text = ""
        Text9.SetFocus
        Exit Sub
    End If
End If
    
    ARRFLG = Left(Combo7.Text, 1)
    Variety = Combo6.Text
    TOTQty = 0
    VarQty = 0
    ''DataGrid1.COL = 2  '' to avoid loop goes to row col change
    If RS11.RecordCount > 0 Then
        opt1 = Opt
        Opt = ""
        RS11.MoveFirst
        While Not RS11.EOF
                gqty = 0
                If ARRFLG = "P" Then
                    gqty = val(DataGrid1.Columns(3).Text)
                ElseIf ARRFLG = "K" Then
                    gqty = val(DataGrid1.Columns(5).Text)
                End If
                If Trim(DataGrid1.Columns(1).Text) <> "" And val(gqty) <> 0 Then
                    TOTQty = TOTQty + val(gqty)
                    If DataGrid1.Columns(1).Text = Variety Then
                        VarQty = val(gqty)
                    End If
                End If
                RS11.MoveNext
        Wend
    End If
    Opt = opt1
    vartotal = 0
    totvarqty = 0
    VarietyCheck = 0
    For I = 1 To Flexg1.Rows - 1
        If Trim(Flexg1.TextMatrix(I, 1)) <> "" And Trim(Flexg1.TextMatrix(I, 2)) <> "" And Trim(Flexg1.TextMatrix(I, 4)) <> "" Then
            totvarqty = totvarqty + val(Flexg1.TextMatrix(I, 2))
            If Variety = Flexg1.TextMatrix(I, 4) Then
                vartotal = vartotal + val(Flexg1.TextMatrix(I, 2))
            End If
        End If
        If Trim(Flexg1.TextMatrix(I, 1)) = Trim(Text8.Text) And Trim(Flexg1.TextMatrix(I, 3)) = Trim(Text6.Text) And Trim(Flexg1.TextMatrix(I, 4)) = Combo6.Text Then
            VarietyCheck = 1
        End If
    Next
    
    vartotal = vartotal + val(Text9.Text)
    If vartotal > VarQty Then
        MsgBox "Schedule Quantity total must be equal to Order Quantity", vbInformation, head
        Text9.Text = ""
        Text9.SetFocus
        Exit Sub
    End If
    If VarietyCheck = 1 Then
        MsgBox "Schedule already exists for this Date ", vbInformation, head
        deliveryadd.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    totvarqty = totvarqty + val(Text9.Text)
     
    Flexg1.AddItem ""
    Flexg1.TextMatrix(Flexg1.Rows - 1, 1) = Text8.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 2) = Text9.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 3) = Text6.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 4) = Combo6.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 5) = Combo8.Text
    'flexg.AddItem ""
    Text9.Text = ""
    If VarQty > vartotal Then
        MaskEdBox1.SetFocus
    ElseIf TOTQty > totvarqty Then
        Combo6.SetFocus
    Else
        
        If Option5.value = True Then
            SSTab1.Tab = 2
            txtfields(28).SetFocus
        Else
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
        Exit Sub
    End If
         If Option5.value = True Then
            SSTab1.Tab = 2
            txtfields(28).SetFocus
        Else
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
        Exit Sub
    
Else
    MsgBox "Please enter Delivery Date / Please enter Delivery Quantity", vbInformation, head
    If Text8.Text = "" Then
        MaskEdBox1.SetFocus
    Else
        txtfields(22).SetFocus
    End If
    
End If


Exit Sub
deliveryadd_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure deliveryadd_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub delmodok_Click()

On Error GoTo delmodok_Click_Error
If Opt = "add" Or Opt = "del" Or Opt = "mod" Then
''On Error Resume Next
dlmdfrm.Visible = False
lr = 1
If Opt = "add" Then
    If indentrs.RecordCount <= 0 Then
        MsgBox "No Record found", vbInformation, head
        Call query_mode
        Exit Sub
    End If
    With FpSpdInd
        Dim RR As Integer
        lr = 0
        chk = 0
        RR = 1
        'adoSecondaryRS.AbsolutePosition = 1
        For SpRW = 1 To IndxRows.Count
            
            .Row = IndxRows(SpRW)
            .Col = E_SpdIndent.SprdCheck
            If .value = True Then
                Set Rs = New ADODB.Recordset
                Rs.CursorLocation = adUseClient
' commented on 29-10-18 by mariyaiya
'     If globalarrivalorder = "C" Then
'                    MsqlStr = ""
'                    MsqlStr = MsqlStr + " SELECT a.PRNO ,a.PRDATE ,A.varcode, VarName ,isnull(Packtype,'') Packtype,"
'                    MsqlStr = MsqlStr + " ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,"
'                    MsqlStr = MsqlStr + " ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) BALQTYKG,d.ename,PrSNo FROM"
'                    MsqlStr = MsqlStr + " Rm_PRL A  INNER JOIN rm_var B ON  A.varcode = B.varcode "
'                    MsqlStr = MsqlStr + " INNER JOIN  RM_prh c ON"
'                    MsqlStr = MsqlStr + "  a.prno = C.prno And a.prdate = C.prdate"
'                    MsqlStr = MsqlStr + " left outer join pr_emp d   ON  c.REQNAME =d.empno"
'                    MsqlStr = MsqlStr + " Where  isnull(c.appflg,'N')  = 'A'  and  "
'                    MsqlStr = MsqlStr + "  a.prno =" & GetText(FpSpdInd, E_SpdIndent.SprdindNo, IndxRows(SpRW)) & " and"
'                    MsqlStr = MsqlStr + "  a.prdate = '" & Format(GetText(FpSpdInd, E_SpdIndent.Sprdinddt, IndxRows(SpRW)), "yyyy-mm-dd") & "' and "
'                    MsqlStr = MsqlStr + "  a.prsno = '" & val(GetText(FpSpdInd, E_SpdIndent.SprdSno, IndxRows(SpRW))) & "' and "
'                    MsqlStr = MsqlStr + "  a.varcode = '" & Format(GetText(FpSpdInd, E_SpdIndent.SprdItemcode, IndxRows(SpRW)), "yyyy-mm-dd") & "' and "
'                    MsqlStr = MsqlStr + "  ISNULL(QTYind,0)-ISNULL(QTYORD,0)>0 and isnull(qtyord,0)-isnull(qtyrec,0)>=0 "
                        '   Else
                        MsqlStr = ""
                    MsqlStr = MsqlStr + " SELECT a.PRNO ,a.PRDATE ,A.varcode, VarName ,isnull(Packtype,'') Packtype,"
                    MsqlStr = MsqlStr + " ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,"
                    MsqlStr = MsqlStr + " ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) BALQTYKG,d.ename,PrSNo FROM"
                    MsqlStr = MsqlStr + " Rm_PRL A  INNER JOIN rm_var B ON  A.varcode = B.varcode "
                    MsqlStr = MsqlStr + " INNER JOIN  RM_prh c ON"
                    MsqlStr = MsqlStr + " a.Divcode = C.Divcode And a.prno = C.prno And a.prdate = C.prdate"
                    MsqlStr = MsqlStr + " left outer join pr_emp d   ON d.divcode = a.divcode and c.REQNAME =d.empno"
                    MsqlStr = MsqlStr + " Where  isnull(c.appflg,'N')  = 'A'  and  a.divcode='" & Divcode & "' and "
                    MsqlStr = MsqlStr + "  a.prno =" & GetText(FpSpdInd, E_SpdIndent.SprdindNo, IndxRows(SpRW)) & " and"
                    MsqlStr = MsqlStr + "  a.prdate = '" & Format(GetText(FpSpdInd, E_SpdIndent.Sprdinddt, IndxRows(SpRW)), "yyyy-mm-dd") & "' and "
                    MsqlStr = MsqlStr + "  a.prsno = '" & val(GetText(FpSpdInd, E_SpdIndent.SprdSno, IndxRows(SpRW))) & "' and "
                    MsqlStr = MsqlStr + "  a.varcode = '" & Format(GetText(FpSpdInd, E_SpdIndent.SprdItemcode, IndxRows(SpRW)), "yyyy-mm-dd") & "' and "
                    MsqlStr = MsqlStr + "  ISNULL(QTYind,0)-ISNULL(QTYORD,0)>0 and isnull(qtyord,0)-isnull(qtyrec,0)>=0 "
    '            End If
                Rs.Open MsqlStr, DB, adOpenStatic, adLockReadOnly
                'Rs.Open " select A.VARCODe,PRNO,PRDATE,B.UOM,(qtyIND-isnull(qtyord,0))AS QTY,prsno,ITEMNAME,A.Rate,remarks,DepCode,SubCost from PO_PRL A,IN_ITEM B where prsno='" & GetText(FpSpdInd, E_SpdIndent.SprdSno, IndxRows(SpRW)) & "' and A.ITEMCODE=B.ITEMCODE AND divcode='" & Divcode & "' and prno =" & GetText(FpSpdInd, E_SpdIndent.SprdindNo, IndxRows(SpRW)) & " and prdate = '" & Format(GetText(FpSpdInd, E_SpdIndent.Sprdinddt, IndxRows(SpRW)), "yyyy-mm-dd") & "' and (qtyreqd-isnull(qtyord,0)) >0 and a.itemcode='" & GetText(FpSpdInd, E_SpdIndent.SprdItemcode, IndxRows(SpRW)) & "'  and isnull(DirectApp,'N')='Y' and isnull(Fclosed,'N')<>'Y' ", DB, adOpenStatic, adLockReadOnly
                If RR > 1 Then RS11.AddNew
                If Not Rs.EOF Then
                        'DataGrid1.Columns(0).Text = SpRW
                        DataGrid1.Columns(1).Text = Rs!Varcode
                        DataGrid1.Columns(2).Text = Rs!VarName
                        DataGrid1.Columns(3).Text = Rs!balqty
                        DataGrid1.Columns(4).Text = CStr(Rs!packtype)
                        DataGrid1.Columns(5).Text = Rs!BALQTYKG
                        DataGrid1.Columns(18).Text = Rs!PRNO
                        DataGrid1.Columns(19).Text = Rs!prdate
                        DataGrid1.Columns(20).Text = Rs!prsno
                        
     
                 
                    Set rs1 = New Recordset
                    rs1.Open "SELECT ISNULL(HSN,'')HSN,ISNULL(CGSTPER,0) CGSTPER,ISNULL(SGSTPER,0) SGSTPER,ISNULL(IGSTPER,0) IGSTPER FROM rm_var WHERE varcode='" & Rs!Varcode & "'", DB
                    If Not rs1.EOF Then
                     If rs1!HSN = "" Then
                     MsgBox "HSN cannot be empty  ", vbInformation, head
                     Exit Sub
                     Call BUTTON_Click(10)
                     End If
                     DataGrid1.Columns("HSN Code").Text = rs1!HSN
                  
                    DataGrid1.Columns("CGST %").Text = rs1!CGSTPER
                    DataGrid1.Columns("SGST %").Text = rs1!SGSTPER
              
                    DataGrid1.Columns("IGST %").Text = rs1!IGSTPER

                   

                    End If
                       
                        
                        
                        
                        RR = RR + 1
                 End If
                    'Rs.MoveNext
                'Loop
                
            End If
        Next
       
    End With
    RS11.MoveFirst
'    DataGrid.AllowUpdate = True
    txtfields(1).SetFocus
End If
End If
lr = 1
Call clearcollection
'Set IndxRows = Nothing
Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form indenttopo", vbInformation, head
End Sub
Private Sub DTPicker2_Change()
DTPicker2.value = pdate
MaskEdBox4.Text = DTPicker2.value
End Sub

Private Sub Flexg1_Click()
If Opt = "add" Or Opt = "mod" Then
    If Flexg1.RowSel <> 0 Then
        MaskEdBox1.Text = Flexg1.TextMatrix(Flexg1.RowSel, 1)
        Text8.Text = Flexg1.TextMatrix(Flexg1.RowSel, 1)
        Text9.Text = Flexg1.TextMatrix(Flexg1.RowSel, 2)
        Text6.Text = Flexg1.TextMatrix(Flexg1.RowSel, 3)
        Combo6.Text = Flexg1.TextMatrix(Flexg1.RowSel, 4)
        Combo8.Text = Flexg1.TextMatrix(Flexg1.RowSel, 5)
    End If
End If
End Sub

Private Sub Flexg1_DblClick()
If Opt = "add" Or Opt = "mod" Then
        If Flexg1.Rows > 1 Then
            ''If Flexg1.TextMatrix(Flexg1.row, 1) <> "" Then
                g = MsgBox("Do you want to delete this Row?", vbYesNo, head)
                If g = vbYes And Flexg1.RowSel <> 0 Then
                    Flexg1.RemoveItem Flexg1.Row
                    If Flexg1.Row > 1 Then
                        Flexg1.RowSel = 1
                        Call Flexg1_Click
                    End If
                End If
            ''End If
        End If
End If
End Sub

Private Sub Flexg1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Flexg1_KeyDown_Error

'On Error GoTo Flexg1_KeyDown_Error

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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
Flexg1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Flexg1_KeyDown of Form FrmContractoutsam", vbInformation, head
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

If KeyCode = 13 Then SendKeys "{TAB}"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ksllist1_DblClick()
On Error GoTo ksllist1_DblClick_Error

Call Command3_Click

Exit Sub
ksllist1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ksllist1_DblClick of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

Combo1.BackColor = "&HC0FFC0"        ''green
If Opt = "add" And txtfields(5).Text <> "" Then
StatusBar1.Panels(2).Text = "Select any Unit From the List"
End If

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

Combo1.BackColor = "&H80000005"   '' white
If Opt = "add" Then
Set Rs = New Recordset
    Rs.Open "select mixgrpcd from RM_MIXGRP where mixgrpcd = '" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
End If
End If

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_GotFocus()
On Error GoTo Combo2_GotFocus_Error

If Opt = "add" Then
If Combo2.Text = " " Then
StatusBar1.Panels(2).Text = "Select any Delivery From the List"
End If
End If

Exit Sub
Combo2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_LostFocus()
On Error GoTo Combo2_LostFocus_Error

If Opt = "add" Then
    Set Rs = New Recordset
    Rs.Open "select paymode from rm_pmode where paymode = '" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        If Combo2.Text = " " And txtfields(8).Text <> "" Then
            StatusBar1.Panels(2).Text = "Select any Delivery From the List"
            MsgBox "Select any Delivery from the List", vbInformation, head
            Combo2.SetFocus
        Else
            'SSTab1.Tab = 1
            'BUTTON(9).SetFocus
            Exit Sub
        End If
    End If
End If


Exit Sub
Combo2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_LostFocus of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    desc.Caption = "Query"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CurrCode,DeliveryTerms,FTFlg,FTAmt,SusCatType from rm_cont WHERE divcode='" & Divcode & "' and contno = '" & Trim(txtcontno.Text) & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    If adoPrimaryRS.RecordCount = 0 Then
     txtcontno.Text = ""
     txtcontno.SetFocus
     MsgBox "No Record Found", vbInformation, head

    Else
    Call bindcontls
    Frame7.Visible = False
    Buttonframe.Enabled = True
    End If


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "mod" Or Opt = "add" Then
   Select Case KSLLIST1.listfield1
   Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KSLLIST1.code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        txtfields(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
        txtfields(1).Text = KSLLIST1.code
        Text1.Text = Trim(KSLLIST1.Description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        txtfields(3).Text = ""
        Text3.Text = ""
     Else
        txtfields(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(2).SetFocus
   
   Case "SLCODE"
     If KSLLIST1.code = txtfields(1).Text Then
        MsgBox "Agent Code must not be same as Supplier Code", vbInformation, head
        KSLLIST1.SetFocus
     Else
        txtfields(2).Text = KSLLIST1.code
        Text2.Text = Trim(KSLLIST1.Description)
        
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
      
     End If
   
   Case "areacode"
     txtfields(3).Text = KSLLIST1.code
     Text3.Text = Trim(KSLLIST1.Description)
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
  
   Case "varcode"
     txtfields(4).Text = KSLLIST1.code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True

   Case "Colorcode"
     txtfields(25).Text = KSLLIST1.code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     
   Case "mixgrpcd"
     txtfields(5).Text = KSLLIST1.code
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
   
   Case "paymode"
     txtfields(8).Text = KSLLIST1.code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True

   Case "cast(contno as varchar)"
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Opt = ""
     Set adoPrimaryRS = New Recordset
     adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CurrCode,DeliveryTerms,FTFlg,FTAmt,SusCatType from rm_cont where divcode='" & Divcode & "' and contno = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockOptimistic
     Opt = "mod"
     Call ENABLCONTLS
     Call bindcontls
     txtfields(0).Locked = True
   End Select
   BUTTON(9).Enabled = True
   BUTTON(10).Enabled = True
End If

If Opt = "del" Then
   
   Buttonframe.Enabled = True
   Frame1.Visible = True
   Frame2.Visible = True
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CurrCode,DeliveryTerms,FTFlg,FTAmt,SusCatType from rm_cont where divcode='" & Divcode & "' and contno = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockOptimistic
   Call ENABLCONTLS
   Call bindcontls
   BUTTON(9).Enabled = True
   BUTTON(9).SetFocus
End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command2_Click()
Frame7.Visible = False
Buttonframe.Enabled = True
'Call QUERY_MODE
End Sub

Private Sub Command5_Click()
On Error GoTo Command5_Click_Error

If Opt = "add" And (KSLLIST1.Caption = "Supplier List" Or KSLLIST1.Caption = "Agent List" Or KSLLIST1.Caption = "Area List" Or KSLLIST1.Caption = "Carrier List" Or KSLLIST1.Caption = "Weighnment List") Then
   Buttonframe.Enabled = True
   
   Buttonframe.Enabled = True
   SSTab1.Visible = True
   Frame1.Visible = True
   Frame2.Visible = True
   If KSLLIST1.Caption = "Supplier List" Then
      txtfields(1).Text = ""
      txtfields(1).SetFocus
      Exit Sub
   End If
   
   If KSLLIST1.Caption = "Agent List" Then
      txtfields(2).Text = ""
      txtfields(3).SetFocus
      Exit Sub
   End If
   If KSLLIST1.Caption = "Area List" Then
      txtfields(3).Text = ""
     ' txtFields(10).SetFocus
     Combo3.SetFocus
      Exit Sub
   End If
   If KSLLIST1.Caption = "Carrier List" Then
      txtfields(10).Text = ""
      txtfields(12).SetFocus
      Exit Sub
   End If
   If KSLLIST1.Caption = "Weighnment List" Then
      txtfields(12).Text = ""
      txtfields(14).SetFocus
      Exit Sub
   End If
Else
   Call BUTTON_Click(10)
   SSTab1.Visible = True
End If
Exit Sub


Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

Buttonframe.Enabled = True
If Opt = "mod" Or Opt = "add" Then
Select Case KSLLIST1.listfield1
Case "Sno"
     txtfields(16).Text = KSLLIST1.code
     Set rs3 = New Recordset
     rs3.Open "select distinct sno,a.supcode,a.varcode,b.varname,c.slname,AREA_CODE,AREANAME,CROP_YEAR,a.prty_sampno,a.brokercode from rm_sample a,rm_var b,fa_slmas c,RM_AREA D where a.supcode=c.slcode and a.varcode=b.varcode AND A.AREA_CODE=D.AREACODE and sno='" & KSLLIST1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If rs3.RecordCount > 0 Then
        txtfields(1).Text = rs3("supcode")
        Text1.Text = rs3("slname")
        txtfields(4).Text = rs3("varcode")
        txtfields(15).Text = rs3("varname")
        txtfields(3).Text = rs3("AREA_CODE")
        Text3.Text = rs3("AREANAME")
        txtfields(13).Text = rs3("CROP_YEAR")
        txtfields(17).Text = rs3("prty_sampno")
        txtfields(2).Text = rs3("brokercode")
        
     End If
     Set LABRS = New Recordset
     
     'LABRS.Open "SELECT STATION_NAME,A.STATE_CODE,NAME FROM RM_SAMPLE A,IG_STATE B WHERE A.STATE_CODE*=B.STATE_CODE AND SNO='" & ksllist1.Code & "'", db, adOpenStatic, adLockBatchOptimistic
     LABRS.Open "SELECT a.areaname,a.station,a.areacode,a.state FROM RM_area a ,rm_sample as b WHERE a.areacode=b.area_code ", DB, adOpenStatic, adLockBatchOptimistic
     Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
     Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
     
     Set rsa = New Recordset
     rsa.Open "select l_or_u  from rm_area where areacode='" & txtfields(3).Text & "'", DB, adOpenStatic
     If rsa.RecordCount > 0 Then
     If rsa(0) = "L" Then
        Option1.value = False
        Option2.value = True
        Option3.value = False
      ElseIf rsa(0) = "U" Then
        Option1.value = False
        Option2.value = False
        Option3.value = True
     ElseIf rsa(0) = "I" Then
        Option1.value = True
        Option2.value = False
        Option3.value = False
     End If
     End If
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(8).Text = ""
     'txtFields(0).SetFocus
     Combo3.SetFocus
     StatusBar1.Panels(2).Text = "Enter Order No"
     
Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KSLLIST1.code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        txtfields(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KSLLIST1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
        txtfields(1).Text = KSLLIST1.code
        Text1.Text = Trim(KSLLIST1.Description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        txtfields(3).Text = ""
        Text3.Text = ""
     Else
        txtfields(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
     
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(2).SetFocus
     StatusBar1.Panels(2).Text = "Enter Agent Code"
     
Case "SLCODE"
     If KSLLIST1.code = txtfields(1).Text Then
        MsgBox "Agent Code must not be same as Supplier Code", vbInformation, head
        KSLLIST1.SetFocus
     Else
        txtfields(2).Text = KSLLIST1.code
        Text2.Text = Trim(KSLLIST1.Description)
        
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        txtfields(4).SetFocus
        StatusBar1.Panels(2).Text = "Enter Area Code"
   End If
Case "areacode"
     txtfields(3).Text = KSLLIST1.code
     Text3.Text = Trim(KSLLIST1.Description)
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Set rsa = New Recordset
     rsa.Open "select station,state,L_or_U from rm_area where areacode='" & KSLLIST1.code & "'", DB, adOpenStatic
     If rsa.RecordCount > 0 Then
        Text11.Text = rsa(0)
        Text12.Text = rsa(1)
     End If
     
     If rsa("L_or_U") = "L" Then
        Option1.value = False
        Option2.value = True
        Option3.value = False
      ElseIf rsa("L_or_U") = "U" Then
        Option1.value = False
        Option2.value = False
        Option3.value = True
     ElseIf rsa("L_or_U") = "I" Then
        Option1.value = True
        Option2.value = False
        Option3.value = False
     End If
     
     
     
     
     Combo3.SetFocus
     StatusBar1.Panels(2).Text = "Enter Carrier Code"
Case "Code"
     
     txtfields(18).Text = KSLLIST1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(19).SetFocus

Case "carcode"
     txtfields(10).Text = KSLLIST1.code
     txtfields(11).Text = KSLLIST1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     StatusBar1.Panels(2).Text = "Enter Weighment Code"
    ' txtFields(14).SetFocus
     
Case "varcode"
     txtfields(4).Text = KSLLIST1.code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(3).SetFocus
Case "Colorcode"
     txtfields(25).Text = KSLLIST1.code
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
    txtfields(12).SetFocus
Case "mixgrpcd"
     txtfields(5).Text = KSLLIST1.code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(18).SetFocus
     
     'BUTTON(9).SetFocus
     
Case "paymode"
     txtfields(8).Text = KSLLIST1.code
     Text4.Text = KSLLIST1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(5).SetFocus
'   If opt = "mod" Or opt = "add" Then
Case "contno" '"cast(contno as varchar)"
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Opt = ""
     Set adoPrimaryRS = New Recordset
     adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CurrCode,DeliveryTerms,FTFlg,FTAmt,SusCatType from rm_cont where divcode='" & Divcode & "' and contno = '" & KSLLIST1.code & "' and contdt='" & Format(KSLLIST1.Description, "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
     Opt = "mod"
     Call ENABLCONTLS
     Call bindcontls
     txtfields(0).Locked = True
     txtfields(0).Locked = True
        
Case "code"
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(19).SetFocus
     StatusBar1.Panels(2).Text = "Enter Remarks Details"
 
    End Select
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True

End If

If Opt = "del" Then
   
   Buttonframe.Enabled = True
   Frame1.Visible = True
   Frame2.Visible = True
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CurrCode,DeliveryTerms,FTFlg,FTAmt,SusCatType from rm_cont where divcode='" & Divcode & "' and contno = '" & KSLLIST1.code & "' and contdt='" & Format(KSLLIST1.Description, "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
   Call ENABLCONTLS
   Call bindcontls
   BUTTON(9).Enabled = True
   BUTTON(9).SetFocus
End If
SSTab1.Visible = True



Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
MsgBox "Order Date must be earlier or equal to Processing date", vbInformation, head
Exit Sub
Else
MaskEdBox3.Text = DTPicker1.value
'txtFields(1).SetFocus
End If
End Sub

Private Sub Form_Load()

On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
intervalMinutes = -1
Call OpenConnection1
SSTab1.Tab = 0
iFlag = 0
Frame1.ZOrder
Frame2.ZOrder
BUTTON(9).Enabled = False
DATLAB.Caption = pdate


Set rstParameter = New Recordset

rstParameter.Open "Select SuppLotNoReqArrival,CentralizedOrder,SeasoncalcReq  from RM_PARAM", DB, adOpenStatic
If rstParameter!SuppLotNoReqArrival = "Y" Then
    lblSLNFrom.Visible = True
    lblSLNTo.Visible = True
    txtfields(40).Visible = True
    txtfields(41).Visible = True
Else
    lblSLNFrom.Visible = False
    lblSLNTo.Visible = False
    txtfields(40).Visible = False
    txtfields(41).Visible = False
End If

If rstParameter!SeasoncalcReq = "Y" Then
    txtfields(25).Visible = False
    txtfields(43).Visible = True
    Text14.Visible = True
Else
    txtfields(25).Visible = True
    txtfields(43).Visible = False
    Text14.Visible = False
End If

If rstParameter!CentralizedOrder = "Y" Then ChkCentralized.value = 1 Else ChkCentralized.value = 0

Combo9.ListIndex = 0
 txtfields(58).Text = Mid$(Time, 1, 8)

Call query_mode
Call NEWFORM1(BUTTON, GSNO)
DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
DTPicker1.value = pdate
Frame1.Enabled = False
Frame2.Enabled = False
Frame6.Enabled = False
Frame10.Enabled = False

'If globalarrivalorder = "C" And Divcode <> "01" Then
'    BUTTON(0).Enabled = False
'    BUTTON(1).Enabled = False
'End If
 If UCase(CustID) = "SHRIGIRI" Then
     If Divcode = globalimportpo Then
        Option1.Enabled = True
     Else
        Option1.Enabled = False
     End If
 End If
 
 If UCase(CustID) = "PALLAVA" Then
     If Divcode = globalimportpo Then
        Option1.Enabled = True
     Else
        Option1.Enabled = False
     End If
 End If
 intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
intervalMinutes = -1
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim LABRS As Recordset

On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
'On Error GoTo adoPrimaryRS_MoveComplete_Error

  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
''  On Error Resume Next
  
  If iFlag = 1 Then
     Exit Sub
    Else
  
  If adoPrimaryRS.AbsolutePosition > 0 Then
  
    If Opt = "" Or Opt = " " Then
    
        Set RS11 = New Recordset
        If opt1 <> "mod" Then
            
            RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,(CASE WHEN  a.bbflag='B' THEN 'B'  ELSE ( CASE  WHEN  a.bbflag= 'H' THEN 'H'  ELSE (CASE  WHEN a. bbflag= 'R' THEN 'R'  END)  END)  END)""Pack Type"",a.ordkgs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"" ,Terms1,Terms1Days,Terms2,Terms2Days,Transport ,Iprno,prdate,prsno,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" " & _
            " from rm_acont a,rm_var b   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' and a.varcode=b.varcode and acontno = '" & adoPrimaryRS("acontno") & "' and acontdt='" & Format(adoPrimaryRS("acontdt"), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set DataGrid1.DataSource = RS11
            If RS11.RecordCount > 0 And adoPrimaryRS("Tax_choice") = "COMMON" Then
                Call headertaxdisplay(1)
            Else
                Call headertaxdisplay(0)
            End If

        Else
            RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty, (CASE WHEN  a.bbflag='B' THEN 'B'  ELSE ( CASE  WHEN  a.bbflag= 'H' THEN 'H'  ELSE (CASE  WHEN a. bbflag= 'R' THEN 'R'  END)  END)  END)""Pack Type"", a.ordkgs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"",Terms1,Terms1Days,Terms2,Terms2Days,TransPort ,Iprno,prdate,prsno,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" ,ratekg PRVRatekg,ORDQTY PRVORDQty,ordkgs PRVORDkgs,CANDYRATE PRVCANDYRATE,prepDate PRVprepDate  " & _
            " from rm_cont a,rm_var b where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' and a.varcode=b.varcode   ", DB, adOpenStatic, adLockBatchOptimistic
            Set DataGrid1.DataSource = RS11
        End If
        
        
        If adoPrimaryRS("TAX_CHOICE") = "COMMON" Then
            Option5.value = True
            SSTab1.TabEnabled(2) = True
        Else
            Option4.value = True
            SSTab1.TabEnabled(2) = False
        End If

        If adoPrimaryRS("Finalweighment") = "S" Then
            Combo9.ListIndex = 1
        Else
            Combo9.ListIndex = 0
        End If
                
        If IIf(IsNull(adoPrimaryRS("FTFlg")), "NO", adoPrimaryRS("FTFlg")) = "Y" Then
             Combo10.Text = "YES"
             Label3(13).Visible = True
             txtfields(59).Visible = True
        Else
              Combo10.Text = "NO"
        End If
        
        
        If IsNull(adoPrimaryRS("duedate")) = True Then
            MaskEdBox2.Mask = "##/##/####"
            MaskEdBox2.Text = "__/__/____"
        End If
        
        Set LABRS = New Recordset
        LABRS.Open "SELECT isnull(station,'')station,isnull(State,'')state FROM RM_area WHERE areacode= '" & adoPrimaryRS("areacode") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If LABRS.RecordCount > 0 Then
            Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
            Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
        Else
            Text11.Text = ""
            Text12.Text = ""
        End If
        
        Set DataGrid1.DataSource = RS11
        If opt1 = "mod" Then
            If RS11.RecordCount > 0 Then
                RS11.MoveFirst
            End If

            For I = 1 To RS11.RecordCount
                If DataGrid1.Columns(1).Text = "" Then
                    RS11.Delete adAffectCurrent
                End If
                
                RS11.MoveNext
            Next
        End If
        
        If opt1 = "mod" Then
              If RS11.RecordCount > 0 Then
                   RS11.MoveFirst
                   Combo6.Clear
                 While Not RS11.EOF
                    Combo6.AddItem RS11("Variety Code")
                    RS11.MoveNext
                 Wend
                   RS11.MoveFirst
                  Combo6.Text = RS11("Variety Code")
               End If
        End If
        
        Call vargridalign
       
        If IsNull(adoPrimaryRS("contperson")) = False Then
            Text7.Text = adoPrimaryRS("contperson")
        Else
            Text7.Text = ""
        End If
        
        If IsNull(adoPrimaryRS("prepdate")) = False Then
            txtfields(58).Text = Right(adoPrimaryRS("prepdate"), 10)
        Else
            txtfields(58).Text = ""
        End If
        
        If IsNull(adoPrimaryRS("rateunit")) = False Then
            Combo5.Clear
            Combo5.AddItem adoPrimaryRS("rateunit")
            Combo5.ListIndex = 0
               
        End If
        
        
        If IsNull(adoPrimaryRS("arrivaltype")) = False Then
            If adoPrimaryRS("arrivaltype") = "K" Then
                atype = "K-KgsWise"
            Else
                atype = "P-PackWise"
            End If
        Else
                atype = "P-PackWise"
        End If
        
        Combo7.Clear
        Combo7.AddItem atype
        Combo7.Text = atype

        Set rsa = New Recordset
        rsa.Open "select aname from rm_acceptance where code='" & adoPrimaryRS("acceptance") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(18).Text = adoPrimaryRS("acceptance")
            txtfields(26).Text = rsa("aname")
        Else
            txtfields(18).Text = ""
            txtfields(26).Text = ""
        End If
         
        Set rsa = New Recordset
        rsa.Open "select * from rm_mixgrp where mixgrpcd='" & adoPrimaryRS("cntcode") & "'", DB, adOpenStatic
         
        If rsa.RecordCount > 0 Then
            txtfields(5).Text = rsa("mixgrpcd")
            Text10.Text = rsa("mixgrpname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd where slcode='" & adoPrimaryRS("deladd") & "'", DB, adOpenStatic
        
        If rsa.RecordCount > 0 Then
            txtfields(22).Text = rsa("slcode")
            Text6.Text = rsa("slname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_delivery where delcode='" & adoPrimaryRS("dlytype") & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(20).Text = rsa(0)
            txtdeldesc.Text = rsa(1)
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from fa_slmas where slcode='" & adoPrimaryRS("brkcd") & "'", DB, adOpenStatic
        
        If rsa.RecordCount > 0 Then
            txtfields(2).Text = rsa("slcode")
            Text2.Text = rsa("slname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_billadd where slcode='" & IIf(IsNull(adoPrimaryRS("billadd")), " ", adoPrimaryRS("billadd")) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(21).Text = rsa(0)
            Text5.Text = rsa(1)
        Else
            Text5.Text = ""
        End If
        
        If adoPrimaryRS("im_ind") = "I" Then
           Option1.value = True
            Option2.value = False
             Option3.value = False
        ElseIf adoPrimaryRS("im_ind") = "L" Then
           Option2.value = True
            Option1.value = False
             Option3.value = False
        ElseIf adoPrimaryRS("im_ind") = "U" Then
           Option3.value = True
            Option2.value = False
             Option1.value = False
        End If
            
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd where slcode='" & IIf(IsNull(adoPrimaryRS("DELadd")), "", adoPrimaryRS("DELadd")) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(22).Text = rsa(0)
            Text6.Text = rsa(1)
        Else
            Text6.Text = ""
        End If
        Call flexgalign
        Set Rs = New Recordset
        Rs.Open "select deldate,qty,varcode,slname,instruction from rm_delsched a,rm_deladd b WHERE a.deladd=b.slcode and CONTNO='" & adoPrimaryRS("CONTNO") & "' and contdate='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        I = 1
        
        For K = Flexg1.Rows To 1 Step -1
            'On Error Resume Next
            If K <> 1 Then
                Flexg1.RemoveItem K
            End If
        Next
        
        While Not Rs.EOF
            
            Flexg1.AddItem ""
            Flexg1.TextMatrix(I, 1) = Rs("deldate")
            Flexg1.TextMatrix(I, 2) = Rs("qty")
            Flexg1.TextMatrix(I, 3) = Rs("slname")
            Flexg1.TextMatrix(I, 4) = Rs("varcode")
            Flexg1.TextMatrix(I, 5) = Rs("instruction")
            I = I + 1
            Rs.MoveNext
            Text7.Text = "'"
            
        Wend
                
      End If
      
  End If
  iFlag = 1
End If
  

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmContractoutsam", vbInformation, head

End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
On Error GoTo er1
SuppType = "N"
Call flexgalign
Combo6.Clear
Text8.Text = ""
Text9.Text = ""
btnBrowse.Visible = False
txt_filename.Visible = False
Label93.Visible = False

Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select top 10 divcode,CONVERT(varchar(10),acontno)AS aCONTNO,acontdt,CONVERT(varchar(10),contno)AS CONTNO,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,CurrCode,DeliveryTerms,prepDate,FTFlg,FTAmt,Paycode,Line_No,PlCode,SusCatType,AmdReason,SupFileName,Prepared_By,Tcs_per  from RM_ACONT where divcode='" & Divcode & "' and acontdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by acontdt desc,CONVERT(varchar(10),acontno) desc ", DB, adOpenStatic, adLockBatchOptimistic
'adoPrimaryRS.Open "select  divcode,CONVERT(varchar(10),contno)AS CONTNO,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer from rm_cont where divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt DESC,CONVERT(varchar(10),contno) dESC", db, adOpenStatic, adLockBatchOptimistic
If adoPrimaryRS.RecordCount = 0 Then
    MsgBox " No Records Found", vbInformation, head
    Dim TX As TextBox
    For Each TX In Me.txtfields
       TX.Text = ""
    Next

    Set RS11 = New Recordset
    RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.BBFLAG""Pack Type"",a.OrdkGs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BedPer""BED %"",SEDPER""Edcess %"",HsCessPer""HSCess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"",Terms1,Terms1Days,Terms2,Terms2Days,TransPort,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" from RM_ACONT a,rm_var b   where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set DataGrid1.DataSource = RS11
        
    Call Norecfound(BUTTON)
    Exit Sub
Else
    iFlag = 0
   ' adoPrimaryRS.MoveLast
   
    Combo8.Locked = True
    Call bindcontls
End If



If adoPrimaryRS.BOF Then
   MsgBox " No Records Found", vbInformation, head
End If

Call disablcontls

desc.Caption = "Query"
DATLAB.Caption = pdate
DataGrid1.Enabled = True
SSTab1.Tab = 0
 
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
     Call NEWFORM1(BUTTON, GSNO)
  End If
  
  StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
  Combo2.Clear
  Set rs1 = New Recordset
  rs1.Open "select Deldesc from rm_delivery ", DB, adOpenStatic
  Do While rs1.EOF = False
    Combo2.AddItem rs1(0)
    rs1.MoveNext
  Loop
  
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
DataGrid1.AllowUpdate = True
DataGrid1.AllowArrows = True
DataGrid1.Enabled = True
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmContractoutsam", vbInformation, head

Screen.MousePointer = 0
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error GoTo bindcontls_Error
                
On Error Resume Next
Dim TX As TextBox
For Each TX In Me.txtfields
Set TX.DataSource = adoPrimaryRS
Next

Set Combo3.DataSource = adoPrimaryRS
'Txtfields(58).Text = Format(adoPrimaryRS("prepdate"), "HH:MM:SS AM/PM")
Combo3.Text = adoPrimaryRS("carcode")
Set Combo4.DataSource = adoPrimaryRS
Combo4.Text = adoPrimaryRS("weignment")
txtfields(34).Text = adoPrimaryRS("Tax Code")
txtfields(28).Text = adoPrimaryRS("Cash Dis %")
txtfields(29).Text = adoPrimaryRS("Trade Dis %")
txtfields(30).Text = adoPrimaryRS("BED %")
txtfields(31).Text = adoPrimaryRS("SED %")
txtfields(32).Text = adoPrimaryRS("HSCess %")
txtfields(33).Text = adoPrimaryRS("Cess %")
txtfields(35).Text = adoPrimaryRS("Tax %")
txtfields(36).Text = adoPrimaryRS("Other Tax %")
txtfields(37).Text = adoPrimaryRS("Ins %")
txtfields(37).Text = adoPrimaryRS("commper")
txtfields(58).Text = Right(adoPrimaryRS("prepdate"), 10)
Combo5.Clear
Set rsrate = New Recordset
Set MaskEdBox2.DataSource = adoPrimaryRS
rsrate.Open "select * from rm_rateunit", DB, adOpenStatic
While Not rsrate.EOF
    Combo5.AddItem rsrate("unitname")
    rsrate.MoveNext
Wend

Combo5.ListIndex = 0
Combo5.Text = adoPrimaryRS("rateunit")


Set Text7.DataSource = adoPrimaryRS

If IsNull(adoPrimaryRS("contdt")) = False Or adoPrimaryRS("contdt") = "" Then
    MaskEdBox3.Text = Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("acontdt")) = False Or adoPrimaryRS("acontdt") = "" Then
    MaskEdBox5.Text = Format(adoPrimaryRS("acontdt"), "dd/mm/yyyy")
Else
    MaskEdBox5.Text = "__/__/____"
End If

If IsNull(adoPrimaryRS("prepdate")) = False Or adoPrimaryRS("prepdate") = "" Then
    MaskEdBox4.Text = Format(adoPrimaryRS("prepdate"), "dd/mm/yyyy")
Else
    MaskEdBox4.Text = "__/__/____"
End If
If adoPrimaryRS("IM_IND") = "I" Then
    Option2.value = False
    Option3.value = False
    Option1.value = True
ElseIf adoPrimaryRS("IM_IND") = "L" Then
    Option1.value = False
    Option2.value = True
    Option3.value = False
ElseIf adoPrimaryRS("IM_IND") = "U" Then
    Option1.value = True
    Option2.value = False
    Option3.value = False
ElseIf adoPrimaryRS("IM_IND") = "g" Then
    Option1.value = False
    Option2.value = True
    Option3.value = False
Else
    Option1.value = False
    Option2.value = False
    Option3.value = True
End If
DataGrid1.Enabled = True
DataGrid1.AllowRowSizing = True
DataGrid1.AllowUpdate = True


Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
On Error GoTo ENABLCONTLS_Error

For I = 1 To 9
    txtfields(I).Locked = False
Next
If Opt = "add" Then
DTPicker1.Enabled = True
End If
DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("contdt")) = False Then
    MaskEdBox3.Text = pdate 'Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If

 

txtfields(1).Locked = False
If Opt = "add" Then
    MaskEdBox3.Text = pdate
ElseIf Opt = "mod" Then
    txtfields(1).Locked = True
End If

Option4.Enabled = True
Option5.Enabled = True

Combo1.Locked = False
Combo2.Locked = False
Combo3.Locked = False
Combo4.Locked = False
Combo9.Locked = False
If Opt = "add" Then
DTPicker1.Enabled = True
End If
MaskEdBox1.Enabled = True
Text9.Enabled = True
deliveryadd.Enabled = True
Frame4.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
Dim I As Integer
On Error GoTo disablcontls_Error

For I = 0 To 9
txtfields(I).Locked = True
Next
MaskEdBox3.Enabled = False
Combo1.Locked = True
Combo2.Locked = True
DTPicker1.Enabled = False
Text1.Locked = True
Text2.Locked = True
Text3.Locked = True
Combo3.Locked = True
Combo4.Locked = True
Combo9.Locked = True
MaskEdBox1.Enabled = False

Option4.Enabled = False
Option5.Enabled = False
Text9.Enabled = False
deliveryadd.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub FpSpdInd_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
    Dim I As Integer
    I = 0
    FpSpdInd.OperationMode = OperationModeNormal
    
    If ButtonDown = 1 Then
        IndxRows.ADD Row, CStr(Row)
    Else
        IndxRows.Remove CStr(Row)
    End If
End Sub

Private Sub MaskEdBox1_Change()
On Error GoTo MaskEdBox1_Change_Error

Text8.Text = MaskEdBox1.Text

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox1_GotFocus()
On Error GoTo MaskEdBox1_GotFocus_Error

MaskEdBox1.BackColor = "&HC0FFC0"     'green
StatusBar1.Panels(2).Text = "Enter a Delivery Date"

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox2_GotFocus()
On Error GoTo MaskEdBox2_GotFocus_Error

MaskEdBox2.BackColor = "&HC0FFC0"
StatusBar1.Panels(2).Text = "Enter a Due Date"

Exit Sub
MaskEdBox2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox2_LostFocus()
On Error GoTo MaskEdBox2_LostFocus_Error

StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
        If IsDate(MaskEdBox2.Text) = False And MaskEdBox2.Text <> "__/__/____" Then
            MsgBox "Please enter valid date", vbInformation, head
            MaskEdBox2.Mask = "##/##/####"
            MaskEdBox2.Text = "__/__/____"
            MaskEdBox2.SetFocus
            Exit Sub
        End If
        If MaskEdBox2.Text <> "__/__/____" Then
            If CDate(MaskEdBox2.Text) < CDate(MaskEdBox3.Text) Then
                MsgBox "Due Date must be after or equal to Order Date", vbInformation, head
                MaskEdBox2.Mask = "##/##/####"
                MaskEdBox2.Text = "__/__/____"
                MaskEdBox2.SetFocus
                Exit Sub
            End If
        End If
    End If
    MaskEdBox2.BackColor = "&HffFFff"
    StatusBar1.Panels(2).Text = "Enter a Due Date"

Exit Sub
MaskEdBox2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_GotFocus()
On Error GoTo MaskEdBox3_GotFocus_Error

MaskEdBox3.BackColor = "&HC0FFC0"     'green
StatusBar1.Panels(2).Text = "Enter a Date"

Exit Sub
MaskEdBox3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox3_KeyDown_Error

If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
    End If

Exit Sub
MaskEdBox3_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_LostFocus()
On Error GoTo MaskEdBox3_LostFocus_Error

MaskEdBox3.BackColor = "&H80000005"        'white
 If (MaskEdBox3.Enabled) And Not (Opt = "qry" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox3.Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox3.SetFocus
   
     End If
     
If MaskEdBox3.Text <> "__/__/____" Then
    If Not (CDate(MaskEdBox3.Text) >= yfdate And CDate(MaskEdBox3.Text) <= pdate) Then
    MsgBox "Order Date must be earlier or equal to Processing date", vbInformation, head
    MaskEdBox3.Text = "__/__/____"
    MaskEdBox3.SetFocus
    Exit Sub
    Else
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= '" & val(txtfields(0).Text) & "'  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number and Date already Defined", vbInformation, head
         txtfields(0).Text = ""
         txtfields(0).SetFocus
         Exit Sub
        End If
        
    End If
    End If
End If

Exit Sub
MaskEdBox3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Option1_LostFocus()
'Option1.BackColor = " &H80000005 " '' white
On Error GoTo Option1_LostFocus_Error

     StatusBar1.Panels(2).Text = "Enter Due Date"

Exit Sub
Option1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option2_LostFocus()

On Error GoTo Option2_LostFocus_Error

     StatusBar1.Panels(2).Text = "Enter Due Date"

Exit Sub
Option2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option21_Click()
    fload = False
    Call OrderbyIndent(1)
    fload = True
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

Frame10.Enabled = False
If Option4.value = True Then SSTab1.TabEnabled(2) = False Else SSTab1.TabEnabled(2) = True
     If Opt = "add" Or Opt = "mod" Then
          If Option4.value = True Then
           ''SASI 30.6.17
             ' DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              'DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
              txtfields(34).Text = ""
              txtfields(35).Text = ""
              
          Else
              DataGrid1.Columns(14).Text = ""
              DataGrid1.Columns(15).Text = ""
              ''30.6.17
             ' txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              'txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
          End If
     End If
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

Frame10.Enabled = True
If Option4.value = True Then SSTab1.TabEnabled(2) = False Else SSTab1.TabEnabled(2) = True
     If Opt = "add" Or Opt = "mod" Then
          If Option4.value = True Then
          ''SASI 30.6.17
              'DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              'DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
              txtfields(34).Text = ""
              txtfields(35).Text = ""
          Else
              DataGrid1.Columns(14).Text = ""
              DataGrid1.Columns(15).Text = ""
              
              ''SASI 30.6.17
             ' txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
             ' txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
          End If
     End If
Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option6_Click()
On Error GoTo Option6_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command1.Visible = False

Exit Sub
Option6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option6_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option6_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option6_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    cmd_report.Visible = False
    SSTab1.Enabled = True
    UserFooter1.Visible = False
    Buttonframe.Enabled = True
End If

Exit Sub
Option6_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option6_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_Click()
On Error GoTo Option7_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    cmd_report.Visible = True

Exit Sub
Option7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option7_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    UserFooter1.Visible = False
    cmd_report.Visible = True
    SSTab1.Enabled = True
    Buttonframe.Enabled = True
End If

Exit Sub
Option7_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
   ' Frame6.Enabled = True
End Sub

Private Sub SSTab1_GotFocus()
On Error GoTo SSTab1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Option4.value = True Then
    End If
End If

Exit Sub
SSTab1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error

Text1.BackColor = "&HC0FFC0"     ''green

Exit Sub
Text1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_LostFocus()
On Error GoTo Text1_LostFocus_Error

Text1.BackColor = " &H80000005"      ''white

Exit Sub
Text1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub text2_GotFocus()
On Error GoTo text2_GotFocus_Error

Text2.BackColor = "&HC0FFC0"        ''green

Exit Sub
text2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure text2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text2_LostFocus()
On Error GoTo Text2_LostFocus_Error

Text2.BackColor = " &H80000005"        ''white

Exit Sub
Text2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text3_GotFocus()
On Error GoTo Text3_GotFocus_Error

Text3.BackColor = "&HC0FFC0"     ''green

Exit Sub
Text3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_LostFocus()
On Error GoTo Text3_LostFocus_Error

Text3.BackColor = " &H80000005"      ''white

Exit Sub
Text3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text4_GotFocus()
On Error GoTo Text4_GotFocus_Error

Text4.BackColor = "&HE0E0E0"      'grey

Exit Sub
Text4_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text4_LostFocus()
On Error GoTo Text4_LostFocus_Error

Text4.BackColor = "&HE0E0E0"     'grey

Exit Sub
Text4_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

    If Opt = "add" Or Opt = "mod" Then
        If MaskEdBox1.Enabled = False Then Exit Sub
        If IsDate(MaskEdBox1.Text) = False Then
            MaskEdBox1.Text = "__/__/____"
            MsgBox "Please enter valid date"
            MaskEdBox1.Text = pdate
            Exit Sub
        End If
        If CDate(MaskEdBox1.Text) < CDate(MaskEdBox3.Text) Then
            MsgBox "Delivery date should be greater than Contract Date", vbInformation, head
            MaskEdBox1.SetFocus
            Exit Sub
        End If
        Text9.SetFocus
        StatusBar1.Panels(2).Text = ""
    End If
    MaskEdBox1.BackColor = &HFFFFFF

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_GotFocus()
On Error GoTo Text7_GotFocus_Error

Text7.BackColor = &HC0FFC0
StatusBar1.Panels(2).Text = "Enter a contact person, Maximum 50 Characters"

Exit Sub
Text7_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_LostFocus()
On Error GoTo Text7_LostFocus_Error

Text7.BackColor = &HFFFFFF

Exit Sub
Text7_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text8_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
Text8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text8_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text9_GotFocus()
On Error GoTo Text9_GotFocus_Error

Text9.BackColor = &HC0FFC0
StatusBar1.Panels(2).Text = "Enter Maximum of 10 Integers"
'deliveryadd.SetFocus

Exit Sub
Text9_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text9_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text9_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
Text9_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text9_KeyPress(KeyAscii As Integer)
On Error GoTo Text9_KeyPress_Error

tonum Text9, 10, KeyAscii
ToNumberAssign Text9, 8, KeyAscii, 8, 0

Exit Sub
Text9_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text9_LostFocus()
On Error GoTo Text9_LostFocus_Error

Text9.BackColor = &HFFFFFF
StatusBar1.Panels(2).Text = ""
deliveryadd.SetFocus
Exit Sub
Text9_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtcontno_Change()
On Error GoTo txtcontno_Change_Error

If Len(txtcontno.Text) = 0 Then
Command1.Enabled = False
StatusBar1.Panels(2).Text = ""
Else
Command1.Enabled = True
End If

Exit Sub
txtcontno_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtcontno_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtcontno_KeyPress(KeyAscii As Integer)
Call tonum(txtcontno, 4, KeyAscii)
End Sub

Private Sub Txtfields_Change(Index As Integer)

On Error GoTo txtfields_Change_Error

Select Case Index
 Case 62
    Set RS2 = New Recordset
    RS2.Open "select plname from rm_plant where plcode='" & txtfields(62).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If RS2.RecordCount = 0 Then
        txtfields(61).Text = ""
        Exit Sub
    Else
        txtfields(61).Text = RS2(0)
    End If
    
  Case 65
    Set RS2 = New Recordset
    RS2.Open "select description from RM_SustainRMType where code='" & txtfields(65).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If RS2.RecordCount = 0 Then
        txtfields(64).Text = ""
        Exit Sub
    Else
        txtfields(64).Text = RS2(0)
    End If
    
 Case 60
    Set RS2 = New Recordset
    RS2.Open "select PayTerm_Desc from Ig_PayTerm where PayTerm_Code='" & txtfields(60).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If RS2.RecordCount = 0 Then
        txtfields(12).Text = ""
        Exit Sub
    Else
        txtfields(12).Text = RS2(0)
    End If
 Case 43
    'Slname
   Set Rs = New Recordset
   Rs.Open "select seaname from rm_season where seacode = '" & txtfields(43).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text14.Text = Rs(0)
   Else
     Text14.Text = ""
   End If
   
Case 42
    Set RSV = New Recordset
        RSV.Open "SELECT * FROM rm_purtype WHERE purtype='" & Trim(txtfields(42).Text) & "'", DB, adOpenStatic
      
        If RSV.RecordCount > 0 Then
            Text13.Text = RSV("purdesc")
        End If
Case 1
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(1).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   Else
     Text1.Text = ""
     txtfields(2).Text = ""
    Text2.Text = ""
    txtfields(13).Text = ""
    txtfields(3).Text = ""
    Text11.Text = ""
    Text12.Text = ""
    Text3.Text = ""
   End If
 Case 2
    'Slname
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   Else
     Text2.Text = ""
   End If
 Case 3
    'Area
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & txtfields(3).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   Else
     Text3.Text = ""
   End If
Case 4 'Ravi
    'Variety
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode = '" & txtfields(4).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     txtfields(15).Text = Rs(0)
   Else
     txtfields(15).Text = ""
   End If
Case 25
   'Color
   Set Rs = New Recordset
   Rs.Open "select colorname from rm_color where colorcode = '" & txtfields(25).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     txtfields(24).Text = Rs(0)
   Else
     txtfields(24).Text = ""
   End If

Case 10
    Set Rs = New Recordset
    Rs.Open "select carcode,carname from po_car where carcode='" & txtfields(10).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    txtfields(10).Text = Rs(0)
    txtfields(11).Text = Rs(1)
    End If
 
 Case 7
 If Opt = "" Or Opt = " " Or Opt = "qry" Then
 txtfields(7).Text = Format(txtfields(7).Text, "#0.00")
 End If
 
Case 8
    Set Rs = New Recordset
    Rs.Open "select paymode,paydesc from rm_pmode where paymode='" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        Text4.Text = Rs(1)
    Else
        Text4.Text = ""
    End If
Case 52
    Set NewRs = New Recordset
    NewRs.Open "select  * from FA_CURRENCY where CURRCODE = '" & txtfields(52).Text & "'", DB
    If NewRs.RecordCount > 0 Then
        txtfields(53).Text = NewRs("CURRNAME")
    Else
        txtfields(53).Text = ""
    End If
End Select
   
    If Opt <> "mod" And Opt <> "add" Then
        Select Case Index
            Case 36, 32, 28, 29, 33, 37, 30, 34, 35, 31
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.00")
            Case 37
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.000")
            Case 42
                Text13.Text = getMasterName("Purdesc", "rm_purtype", "purtype", Trim(txtfields(42).Text))
        End Select
    End If
    
    Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
   
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtFields_GotFocus_Error

For Each oText In Me.txtfields
oText.BackColor = "&H80000005"   'white
Next
txtfields(Index).BackColor = "&HC0FFC0"   'green
'txtfields(1).BackColor = "&H00E0E0E0 "  'grey
'txtfields(2).BackColor = "&H00E0E0E0"  'grey
'txtfields(4).BackColor = "&H00E0E0E0"  'grey
'Txtfields(13).BackColor = "&H00E0E0E0"  'grey
'Txtfields(15).BackColor = "&H00E0E0E0"  'grey
'Txtfields(3).BackColor = "&H00E0E0E0"  'grey
If Opt = "add" Or Opt = "mod" Then
'If Frame3.Visible = fasle Then
    If Index = 0 Then
        StatusBar1.Panels(2).Text = "Enter a Order No."
    ElseIf Index = 1 Then
        StatusBar1.Panels(2).Text = "Enter a Supplier Code"
    ElseIf Index = 2 Then
        StatusBar1.Panels(2).Text = "Enter a Agent Code"
    ElseIf Index = 3 Then
        StatusBar1.Panels(2).Text = "Enter a Area Code"
    ElseIf Index = 4 Then
        StatusBar1.Panels(2).Text = "Enter Veriety"
    ElseIf Index = 5 Then
        StatusBar1.Panels(2).Text = "Enter Mixing Group"
    ElseIf Index = 6 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers"
    ElseIf Index = 7 Then
        StatusBar1.Panels(2).Text = "Enter Maximum 7 Integers with 2 Decimal Places"
    ElseIf Index = 8 Then
        StatusBar1.Panels(2).Text = "Enter Payment Mode"
    ElseIf Index = 9 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
    ElseIf Index = 12 Then
        StatusBar1.Panels(2).Text = "Enter a Payment Terms"
    ElseIf Index = 13 Then
        StatusBar1.Panels(2).Text = "Enter a Crop year"
    ElseIf Index = 18 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 35 Characters"
    ElseIf Index = 19 Then
        StatusBar1.Panels(2).Text = "Enter a Remarks, Maximum of 250 Characters"
    ElseIf Index = 20 Then
        StatusBar1.Panels(2).Text = "Enter a Delivery Code"
    ElseIf Index = 21 Then
        StatusBar1.Panels(2).Text = "Enter a Bill Address"
    ElseIf Index = 22 Then
        StatusBar1.Panels(2).Text = "Enter a Delivery Address"
    ElseIf Index = 23 Then
        StatusBar1.Panels(2).Text = "Enter a Staple"
    ElseIf Index = 25 Then
        StatusBar1.Panels(2).Text = "Enter a Season"
    ElseIf Index = 27 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
    ElseIf Index = 28 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 29 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 30 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 31 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 32 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 33 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 34 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 35 Then
        StatusBar1.Panels(2).Text = "Enter a Tax code"
    ElseIf Index = 36 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 37 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 40 Then
        StatusBar1.Panels(2).Text = "Enter Supplier Lot Number, Maximum 7 Integers"
    ElseIf Index = 41 Then
        StatusBar1.Panels(2).Text = "Enter Supplier Lot Number, Maximum 7 Integers"
    End If

If Index = 13 And wosample <> "N" Then
        If DataGrid1.Columns(1).Text = "" Then
                DataGrid1.Row = 0
                DataGrid1.Col = 0
                DataGrid1.SetFocus
                Exit Sub
        End If
End If
If Index = 28 Then
    SSTab1.Tab = 2
End If




End If


'End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
    End If
    If Index = 24 Then
        Combo5.SetFocus
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
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

    If Opt = "del" Or Opt = "" Or Opt = " " Then
        KeyAscii = 0
        Beep
    End If

    Select Case Index
    Case 13
       Call ToNumberYear(txtfields(Index), 9, KeyAscii)
    Case 1
        ToUpCase txtfields(Index), KeyAscii
    Case 2
        ToUpCase txtfields(Index), KeyAscii
    Case 3
        ToUpCase txtfields(Index), KeyAscii
    Case 4
        ToUpCase txtfields(Index), KeyAscii
    Case 7, 40, 41
        tonum txtfields(Index), 7, KeyAscii
    Case 16, 17, 21, 22, 26
        tonum txtfields(Index), 5, KeyAscii
    Case 6
        ToNumber txtfields(Index), KeyAscii
    Case 37
        Call ToNumberAssign(txtfields(37), 3, KeyAscii, 3, 3)
    Case 28, 29, 30, 31, 32, 33, 36, 39, 44
        tonum txtfields(Index), 2, KeyAscii, 2
    Case 20
        ToAlphaNumber txtfields(Index), 1, KeyAscii
        Call ToUpCase(txtfields(Index), KeyAscii)
    Case 38
        Call ToNumber1(txtfields(Index), 3, KeyAscii)
    Case 23
        ToAlphaNumberOnly txtfields(Index), 10, KeyAscii
    End Select

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub Query1(tol As Object)
    'This procedure for Query
On Error GoTo Query1_Error
     intervalMinutes = -1
     tol(0).Enabled = False  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     
     tol(4).Enabled = False  'QUERY
     tol(5).Enabled = False   'FIRST
     tol(6).Enabled = False  'NEXT
     tol(7).Enabled = False   'PREVIOUS
     tol(8).Enabled = False   'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT

Exit Sub
Query1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Query1 of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
Dim oText As TextBox

On Error GoTo txtfields_LostFocus_Error

'On Error GoTo txtFields_LostFocus_Error

For Each oText In Me.txtfields
oText.BackColor = "&H80000005"  'white
Next


txtfields(Index).BackColor = "&HFFFFFF"   'green
txtfields(1).BackColor = "&H00E0E0E0"  'grey
txtfields(2).BackColor = "&H00E0E0E0"  'grey
txtfields(4).BackColor = "&H00E0E0E0"  'grey
txtfields(13).BackColor = "&H00E0E0E0"  'grey
txtfields(15).BackColor = "&H00E0E0E0"  'grey
txtfields(3).BackColor = "&H00E0E0E0"  'grey
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 40
           Set rstParameter = New Recordset
           rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
           If rstParameter!SuppLotNoReqArrival = "Y" Then
                If val(txtfields(40).Text) = 0 Then
                    MsgBox "Supplier Lot No. Should not be empty", vbInformation, head
                    txtfields(40).SetFocus
                    Exit Sub
                Else
                    If val(txtfields(41).Text) > 0 Then
                        If val(txtfields(40).Text) > val(txtfields(41).Text) Then
                            MsgBox "Supplier From Lot No. should not be greater than To Lot No.", vbInformation, head
                            txtfields(40).SetFocus
                            Exit Sub
                        Else
                            txtfields(41).SetFocus
                            Exit Sub
                        End If
                    End If
                    txtfields(41).SetFocus
                    Exit Sub
               End If
                
                
           End If
     Case 41
           Set rstParameter = New Recordset
           rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
           If rstParameter!SuppLotNoReqArrival = "Y" Then
                If val(txtfields(41).Text) = 0 Then
                    MsgBox "Supplier Lot No. Should not be empty", vbInformation, head
                    txtfields(41).SetFocus
                    Exit Sub
                    
                Else
                    If val(txtfields(40).Text) > val(txtfields(41).Text) Then
                        MsgBox "Supplier To Lot No. should be greater than From Lot No..", vbInformation, head
                        txtfields(41).SetFocus
                        Exit Sub
                    Else
                    If wosample <> "N" Then
                        LookUp.Clear = True
                        Frame1.Visible = True
                        Frame2.Visible = True
                        SSTab1.Tab = 1
                        Focus = ""
                        If sCR = "Y" Then
                            txtfields(38).SetFocus
                        Else
                            txtfields(20).SetFocus
                        End If
                        Exit Sub
                    Else
                        LookUp.Clear = True
                        
                        DataGrid1.Col = 1
                        DataGrid1.Row = 0
                        DataGrid1.SetFocus
                        Exit Sub
                    End If

                    End If
                End If
                
           End If
          


        Case 19
                SSTab1.Tab = 1
                txtfields(21).SetFocus
                Exit Sub
        Case 21
            'If Record_Exists("rm_billadd") = False Then Exit Sub
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_billadd ", DB, adOpenStatic
            If rsa.RecordCount = 0 Then Exit Sub
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_billadd WHERE slcode='" & Trim(txtfields(21).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                Set Rs = New Recordset
                Rs.Open "Select ptypecotton from masterlen", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                    sup = Rs("ptypecotton")
                Else
                    sup = ""
                End If
                LookUp.Clear = True
                LookUp.query = "select slcode""Code"",slname""Name"" from rm_billadd "
                LookUp.DefCol = "Name"
                LookUp.Caption = "Billing Address Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(21).Text = LookUp.Fields(0)
                    Text5.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                    Exit Sub
                End If
                LookUp.Clear = True
         End If
        
        Case 7
          If Trim(txtfields(6).Text) = "" Then
                    MsgBox "Please enter Order Quantity", vbInformation, head
        
                    Cancel = True
                    txtfields(6).SetFocus
                     Exit Sub
           End If
           
        Case 20
        
            SSTab1.Tab = 1
            If Focus <> "Y" Then
                SSTab1.Tab = 1
                txtfields(20).SetFocus
            End If
            
            Exit Sub
        Case 0
            If txtfields(0).Text <> "" Then
                txtfields(1).SetFocus
            End If
        Case 13
            If Opt = "add" Or Opt = "mod" Then
            If val(txtfields(13).Text) > Year(pdate) Then
                MsgBox "Crop year must be earlier or equal to Processing year", vbInformation, head
                txtfields(13).Text = Year(pdate)
            End If
            If val(txtfields(13).Text) < 2000 Then    '2000 is hard coded
                MsgBox "Crop year must be after 2000 or equal to Processing year", vbInformation, head
                txtfields(13).Text = Year(pdate)
            End If
        End If
       Case 37
           BUTTON(9).Enabled = True
           BUTTON(9).SetFocus
       Case 52
'            If Opt = "add" Or Opt = "mod" Then
'                If Txtfields(52).Text <> "" Then
'                    DataGrid1.Col = 1
'                    DataGrid1.Row = 0
'                    DataGrid1.SetFocus
'                End If
'            End If
 End Select
End If

If Index = 5 Then
            Set Rs = New Recordset
            Rs.Open "select MIXGRPCD,mixgrpname from RM_MIXGRP where MIXGRPCD = '" & Replace(txtfields(5).Text, "'", "''") & "'", DB, adOpenStatic, adLockBatchOptimistic
         
            If Rs.RecordCount > 0 Then
               txtfields(5).Text = Rs(0)
               Text10.Text = Rs(1)
            Else
                LookUp.Clear = True
                LookUp.query = "select mixgrpcd""Mix Group Code"",mixgrpname""Mix Group Name"" from RM_MIXGRP "
                LookUp.DefCol = "Mix Group Name"
                LookUp.Caption = "MixGroup Listing"
                LookUp.ALIGN = "1800,4000"
        '        LookUp.Show vbModal
                focus1 = "Y"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(5).Text = LookUp.Fields(0)
                    Text10.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                Else
                    txtfields(5).Text = ""
                    Text10.Text = ""
                    txtfields(5).SetFocus
                End If
            End If
            Set rstParameter = New Recordset
            rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
            If rstParameter!SuppLotNoReqArrival <> "Y" Then
            If wosample <> "N" Then
                LookUp.Clear = True
                Frame1.Visible = True
                Frame2.Visible = True
                SSTab1.Tab = 1
                Focus = ""
                If txtfields(38).Enabled = True Then txtfields(38).SetFocus
                Exit Sub
            Else
                LookUp.Clear = True
                Exit Sub
            End If
            
            End If
           
           

End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then

Select Case Index

Case 28, 29, 30, 31, 32, 33, 34, 35, 36, 37

        If Index = 34 Then
                Set RSV = New Recordset
                RSV.Open "SELECT * FROM IG_TAX WHERE TAXSTATUS='Y' AND TAX_CODE='" & txtfields(34).Text & "'", DB, adOpenStatic
                
                If RSV.RecordCount > 0 Then
                    txtfields(35).Text = RSV("ST_PER")
                Else
                    LookUp.Clear = True
                    LookUp.query = "select Tax_Code""Tax Code"",Description""Tax Description"",ST_Per""ST %"",ITCper""ITC %"",ItcTaxStatus""ITC Tax Status"" from ig_tax where TAXSTATUS='Y'"
                    LookUp.DefCol = "Tax Description"
                    LookUp.Caption = "Tax Listing"
                    LookUp.ALIGN = "1500,3000,1500,1500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then

                        txtfields(34).Text = LookUp.Fields(0)
                        txtfields(35).Text = LookUp.Fields(2)
                        LookUp.Clear = True
                        txtfields(36).SetFocus
                        
                    Else
                        txtfields(34).Text = ""
                        txtfields(35).Text = "0"
                        LookUp.Clear = True
                        txtfields(36).SetFocus
                    End If
                End If
        End If
        Call HeaderTaxLoad
        
        If Index = 37 Then
            BUTTON(9).SetFocus
        End If
Case 42
        If Record_Exists("rm_purtype") = True Then
        Set RSV = New Recordset
        RSV.Open "SELECT * FROM rm_purtype WHERE purtype='" & Trim(txtfields(42).Text) & "'", DB, adOpenStatic
      
        If RSV.RecordCount > 0 Then
            Text13.Text = RSV("purdesc")
        Else
            LookUp.Clear = True
            LookUp.query = "select purtype""Code"",purDesc""Description"",isnull(CRdays,'Y') as CRDays from RM_purtype"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Purchase Type Listing"
            LookUp.ALIGN = "2000,3000,0"
            
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(42).Text = LookUp.Fields(0)
                Text13.Text = LookUp.Fields(1)
                sCR = LookUp.Fields(2)
                If sCR <> "Y" Then
                    txtfields(39).Enabled = False
                    txtfields(38).Enabled = False
                    txtfields(38).Text = ""
                    txtfields(39).Text = ""
                    lblcrdays.Enabled = False
                    lblinterest.Enabled = False
                Else
                    txtfields(39).Enabled = True
                    txtfields(38).Enabled = True
                    lblcrdays.Enabled = True
                    lblinterest.Enabled = True
                End If
                LookUp.Clear = True
                Combo7.SetFocus
            Else
                txtfields(41).Text = ""
                Text13.Text = ""
                LookUp.Clear = True
                Combo7.SetFocus
            End If
        End If
        End If
Case 60
        If Record_Exists("Ig_PayTerm") = False Then Exit Sub
        Set rsn = New Recordset
        rsn.Open "SELECT PayTerm_Code ""Pay Terms Code"",PayTerm_Desc ""Pay Terms Description"" FROM Ig_PayTerm where PayTerm_Code='" & txtfields(60).Text & "' ", DB, adOpenStatic
        If Not rsn.EOF Then
            txtfields(12).Text = rsn(1)
        Else
            LookUp.Clear = True
            LookUp.query = "SELECT PayTerm_Code ""Pay Terms Code"",PayTerm_Desc ""Pay Terms Description"" FROM Ig_PayTerm "
            LookUp.ALIGN = "900,3000"
            LookUp.Caption = "Pay Terms Listing"
            LookUp.DefCol = "Pay Terms Description"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    txtfields(60).Text = LookUp.Fields(0)
                    txtfields(12).Text = LookUp.Fields(1)
            Else
                    Cancel = True
                    txtfields(60).SetFocus
            End If
        End If
Case 62
        If Record_Exists("RM_Plant") = False Then Exit Sub
            Set rsn = New Recordset
            rsn.Open "SELECT plcode ""Plant Code"",PLName ""Description"" FROM RM_Plant where plcode='" & txtfields(62).Text & "'", DB, adOpenStatic
            If Not rsn.EOF Then
              
                txtfields(61).Text = rsn(1)
            Else
                LookUp.Clear = True
                LookUp.query = "SELECT plcode ""Plant Code"",PLName ""Description"" FROM RM_Plant "
                LookUp.ALIGN = "900,3000"
                LookUp.Caption = "Plant Listing"
                LookUp.DefCol = "Plant Description"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                        txtfields(62).Text = LookUp.Fields(0)
                        txtfields(61).Text = LookUp.Fields(1)
                Else
                        Cancel = True
                        txtfields(62).SetFocus
                End If
          End If
Case 65
        If Record_Exists("RM_SustainRMType") = False Then Exit Sub
            LookUp.Clear = True
            LookUp.query = "SELECT Code ""Code"",Description ""Description"" FROM RM_SustainRMType "
            LookUp.ALIGN = "900,3000"
            LookUp.Caption = "Sustain Type Listing"
            LookUp.DefCol = "Description"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    txtfields(65).Text = LookUp.Fields(0)
                    txtfields(64).Text = LookUp.Fields(1)
            Else
                    Cancel = True
                    txtfields(65).SetFocus
            End If
         ' stbar.Panels(2).Text = "Select Pay Terms from the List"
        
Case 43

        If Record_Exists("rm_Season") = True Then
        Set RSV = New Recordset
        RSV.Open "SELECT * FROM rm_season WHERE seacode='" & Trim(txtfields(43).Text) & "'", DB, adOpenStatic
      
        If RSV.RecordCount > 0 Then
            Text13.Text = RSV("seaname")
        Else
            LookUp.Clear = True
            LookUp.query = "select seacode""Season Code"",seaname""Season Name"" from RM_season"
            LookUp.DefCol = "season code"
            LookUp.Caption = "Season Listing"
            LookUp.ALIGN = "2000,3000"
            
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(43).Text = LookUp.Fields(0)
                Text14.Text = LookUp.Fields(1)
                LookUp.Clear = True
                Combo3.SetFocus
            Else
                txtfields(43).Text = ""
                Text14.Text = ""
                LookUp.Clear = True
                Combo3.SetFocus
            End If
        End If
        End If


Case 20
        If Record_Exists("rm_delivery") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select deldesc from rm_delivery WHERE delcode='" & Trim(txtfields(20).Text) & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            
            LookUp.Clear = True
            LookUp.query = "select delcode""Delivery Type Code"",deldesc""Delivery Type Description"" from rm_delivery"
            LookUp.DefCol = "Delivery Type Description"
            LookUp.Caption = "Delivery Listing"
            LookUp.ALIGN = "2000,4000"
            Focus = "Y"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(20).Text = LookUp.Fields(0)
                txtdeldesc.Text = LookUp.Fields(1)
                LookUp.Clear = True
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                SSTab1.Tab = 1
                txtfields(18).SetFocus

        Else
            txtfields(20).SetFocus
            Cancel = True
            Exit Sub
        End If
        LookUp.Clear = True
        Else
            txtdeldesc.Text = rsa(0)
            SSTab1.Tab = 1
            Focus = "Y"
            txtfields(18).SetFocus
        End If
Case 22

        If Opt = "add" Then
        If RS11.RecordCount > 0 Then
            DataGrid1.Col = 2  'To avoid row col change validation
               RS11.MoveFirst
               Combo6.Clear
             While Not RS11.EOF
                Combo6.AddItem RS11("variety code")
                RS11.MoveNext
            Wend
                RS11.MoveFirst
                Combo6.Text = RS11("variety code")
         End If
        End If

        Frame6.Enabled = True
        Combo6.Enabled = True
        Combo8.Enabled = True
        Text8.Enabled = True
        Text9.Enabled = True
        MaskEdBox1.Enabled = True
        deliveryadd.Enabled = True
        ''If Record_Exists("rm_deladd") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd ", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Combo6.Enabled = False
            Combo8.Enabled = False
            Text8.Enabled = False
            Text9.Enabled = False
            deliveryadd.Enabled = False
            MaskEdBox1.Enabled = False
            If Option4.value = True Then
                SSTab1.Enabled = False
                Buttonframe.Enabled = True
                BUTTON(9).SetFocus
                SSTab1.Enabled = True
                Exit Sub
            ElseIf Option5.value = True Then
                SSTab1.Tab = 2
                txtfields(28).SetFocus
                Exit Sub
            End If
            Exit Sub
        End If
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_deladd WHERE slcode='" & Trim(txtfields(22).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                deliveryadd.Enabled = True
                LookUp.Clear = True
                LookUp.query = "select slcode""Code"",slname""Supplier"" from rm_deladd"
                LookUp.DefCol = "Supplier"
                LookUp.Caption = "Delivery Address Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(22).Text = LookUp.Fields(0)
                    Text6.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    Text7.SetFocus
                    Exit Sub
                Else
                    txtfields(22).Text = ""
                    Text6.Text = ""
                    Frame6.Enabled = False
                    'Txtfields(22).SetFocus
                    deliveryadd.Enabled = False
                    Combo6.Enabled = False
                    Combo8.Enabled = False
                    Text8.Enabled = False
                    Text9.Enabled = False
                    deliveryadd.Enabled = False
                    MaskEdBox1.Enabled = False
                    If Option4.value = True Then
                        SSTab1.Enabled = False
                        Buttonframe.Enabled = True
                        BUTTON(9).SetFocus
                        SSTab1.Enabled = True
                        Exit Sub
                    ElseIf Option5.value = True Then
                        SSTab1.Tab = 2
                        txtfields(28).SetFocus
                        Exit Sub
                    End If
                    Exit Sub
                End If
                LookUp.Clear = True
            Else
                Text6.Text = rsa(0)
                Text7.SetFocus
            End If
Case 1

        If Opt = "add" Or Opt = "mod" Then
            Set rsa = New Recordset
            rsa.Open "select SLNAME,BrCode from fa_slmas WHERE slcode ='" & Trim(txtfields(1).Text) & "'", DB, adOpenStatic
            If Not rsa.EOF Then
                Text1.Text = rsa("SLNAME")
              
               ' txtfields(2).Text = IIf(IsNull(rsa(1)) = True, "", rsa(1))
                Exit Sub
            End If
            
            
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sup = rs1("ptypecotton") '& "%"
            Else
                sup = ""
            End If
            Set rsa = New Recordset
            rsa.Open "select SLNAME from fa_slmas WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',','))", DB, adOpenStatic
            LookUp.Clear = True
            If rsa.RecordCount <> 0 Then
                LookUp.Clear = True
                LookUp.query = "select slcode""Supplier Code"",slname""Supplier Name"",city""City"",BrCode""Agent Code"" ,isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(supptype,'R')  Supptype  from fa_slmas where left(slcode,2) in (select Items from dbo.split('" & sup & "',','))"
                
                LookUp.DefCol = "Supplier Name"
                LookUp.Caption = "Supplier Listing"
                LookUp.ALIGN = "1450,4000,1800,1450,1"
                LookUp.Show vbModal
                
                If LookUp.Cancel = False Then
                SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG,isnull(supptype,'R')  Supptype FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                If Not Rs.EOF Then
                       
                       STATEFLAG = Rs(0)
                       If STATEFLAG = "F" Then
                         IGSTFLG = "N"
                       End If
                End If
                 If STATEFLAG <> "F" Then
                If SuppType = "R" Then
               
                    If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    
                    If Trim(LookUp.Fields("GSTINNO")) = "" Then
                        MsgBox "PLEASE ENTER GST NO IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    Set rs1 = New Recordset
                    rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & Trim(LookUp.Fields("GSTSTATECODE")) & "'", DB
                    If Not rs1.EOF Then
                        IGSTFLG = "Y"
                    Else
                        IGSTFLG = "N"
                    End If
               
                Else
                    If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                
                  Set rs1 = New Recordset
                    rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & Trim(LookUp.Fields("GSTSTATECODE")) & "'", DB
                    If Not rs1.EOF Then
                        IGSTFLG = "Y"
                    Else
                        IGSTFLG = "N"
                    End If
                
                End If
                End If
                    txtfields(1).Text = LookUp.Fields(0)
                    Text1.Text = LookUp.Fields(1)
                    txtfields(2).Text = IIf(IsNull(LookUp.Fields(3)) = True, "", LookUp.Fields(3))
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    
                    Set rsg = New Recordset
                    rsg.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT) and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
                       
'                    Set Rs = New Recordset
'                    Rs.Open "SELECT ISNULL(HSN,'')HSN,ISNULL(CGSTPER,0) CGSTPER,ISNULL(SGSTPER,0) SGSTPER,ISNULL(IGSTPER,0) IGSTPER FROM rm_var WHERE varcode='" & rstQry!Varcode & "'", db
'                    If Not Rs.EOF Then
'                     If Rs!HSN = "" Then
'                     MsgBox "HSN cannot be empty  ", vbInformation, head
'                     Exit Sub
'                     Call BUTTON_Click(10)
'                     End If
'                     DataGrid1.Columns("HSN Code").Text = Rs!HSN
'                    If IGSTFLG = "Y" Then
'                    DataGrid1.Columns("CGST %").Text = Rs!CGSTPER
'                    DataGrid1.Columns("SGST %").Text = Rs!SGSTPER
'                    DataGrid1.Columns("IGST %").Text = 0
'                    Else
'                    DataGrid1.Columns("CGST %").Text = 0
'                    DataGrid1.Columns("SGST %").Text = 0
'                    DataGrid1.Columns("IGST %").Text = Rs!IGSTPER
'
'                    End If
'
'                    End If
                       
                       
                       
                    Exit Sub
                Else
                    
                    txtfields(1).Text = ""
                    Call BUTTON_Click(10)
                    txtfields(1).SetFocus
                    Exit Sub
                End If
                LookUp.Clear = True
            End If
            End If
Case 0

        If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= '" & val(txtfields(0).Text) & "'  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number already Defined", vbInformation, head
         txtfields(0).Text = ""
         Cancel = True
         Exit Sub
        End If
        End If
Case 18
        If Record_Exists("rm_acceptance") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select aname from rm_acceptance WHERE code='" & txtfields(18).Text & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = "select code""Authorized signatory Code"",aname""Authorized signatory Name"" from rm_acceptance where   divcode='" & Divcode & "'"
            LookUp.DefCol = "Authorized Signatory Code"
            LookUp.Caption = "Authorized Signatory Name Listing"
            LookUp.ALIGN = "2500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(18).Text = LookUp.Fields(0)
                txtfields(26).Text = LookUp.Fields(1)
                LookUp.Clear = True
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                txtfields(19).TabStop = True
           Else
                txtfields(18).SetFocus
                Cancel = True
                Exit Sub
            End If
            LookUp.Clear = True
        Else
            txtfields(26).Text = rsa(0)
            txtfields(19).SetFocus
        End If

Case 12
    
Case 6
   txtfields(6).SetFocus
Case 1
    If Trim(txtfields(1).Text) <> "" Then
    On Error GoTo X
    Set Rs = New Recordset
    Rs.Open "select slname from fa_slmas where slcode='" & txtfields(1).Text & "'", DB, adOpenStatic
    If Not Rs.EOF Then
        Text1.Text = Rs(0)
        Exit Sub
    End If
    End If
X:
            Set rs1 = New Recordset
            rs1.Open "SELECT PT_COTTON FROM PP_DIVMAS", DB, adOpenStatic
            'Label15.Caption = "Supplier List"
            StatusBar1.Panels(2).Text = "Select Sopplier From the List"
        
        
            KSLLIST1.Visible = True
            KSLLIST1.Caption = "Supplier List"
            KSLLIST1.listfield1width = 5500
            KSLLIST1.listfield2width = 3500
            KSLLIST1.conn = connectstring
            KSLLIST1.Table = "fa_slmas where slcode like 'C1%'"
            KSLLIST1.listfield1 = "slname as SupplierName,city as City"
            KSLLIST1.listfield2 = "slcode as SupplierCode"
                   
   
            Buttonframe.Enabled = False
           
            Exit Sub
    
    
Case 2
        StatusBar1.Panels(2).Text = "Select Brocker From the List"
    If Opt = "add" Or Opt = "mod" Then
        If wosample = "N" Then
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
            
            Set rsa = New Recordset
            rsa.Open "select SLNAME from fa_slmas WHERE slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
            
                LookUp.Clear = True
                LookUp.query = "select slcode""Agent Code"",slname""Agent Name"", City from fa_slmas where slcode like '" & bro & "'"
                LookUp.DefCol = "Agent Name"
                LookUp.Caption = "Agent Listing"
                LookUp.ALIGN = "1500,4000, 2000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(2).Text = LookUp.Fields(0)
                    Text2.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    txtfields(3).SetFocus
                    Exit Sub
                Else

                      txtfields(2).Text = ""
                      txtfields(3).SetFocus
                    Exit Sub
                End If
                LookUp.Clear = True

            End If
        Else
        Set rsa = New Recordset
        rsa.Open "select brokercode,slname,a.state_code,area_code,station_name,crop_year from rm_sample a,fa_slmas b where a.brokercode=b.slcode and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
            If rsa.RecordCount > 1 Then
            
                LookUp.Clear = True
                LookUp.query = "select brokercode""Agent Code"",slname ""Agent Name"" from rm_sample a,fa_slmas b where a.brokercode=b.slcode and supcode='" & txtfields(1).Text & "'"
                LookUp.DefCol = "Supplier"
                LookUp.Caption = "Agent Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(2).Text = LookUp.Fields(0)
                    Text2.Text = LookUp.Fields(1)
                    Set RS2 = New Recordset
                    RS2.Open "select brokercode,slname,area_code,a.state_code,station_name,crop_year from rm_sample a,fa_slmas b where a.brokercode=b.slcode and a.brokercode='" & LookUp.Fields(0) & "' and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
                    txtfields(13).Text = RS2("crop_year")
                    txtfields(3).Text = RS2("area_code")
                    Text11.Text = RS2("state_code")
                    Text12.Text = RS2("station_name")
                    LookUp.Clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    txtfields(12).SetFocus
                    Exit Sub
                Else
                    Exit Sub
                End If
                LookUp.Clear = True
            ElseIf rsa.RecordCount = 1 Then
                txtfields(2).Text = rsa("brokercode")
                Text2.Text = rsa("slname")
                txtfields(13).Text = rsa("crop_year")
                txtfields(3).Text = rsa("area_code")
                Text11.Text = rsa("state_code")
                Text12.Text = rsa("station_name")
                Text3.Text = rsa("station_name")
                txtfields(2).Locked = True
                Text2.Locked = True
                txtfields(13).Locked = True
                txtfields(3).Locked = True
                Text11.Locked = True
                Text12.Locked = True
                Text3.Locked = True
            End If
        End If
   End If

Case 3
 
 If Opt = "add" Then
    If wosample <> "N" Then
        Exit Sub
    End If
 End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select areacode from rm_area where areacode = '" & txtfields(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        If Rs.BOF Then
            StatusBar1.Panels(2).Text = "Select Area Code From the List"
            LookUp.Clear = True
                LookUp.query = "select areacode""Area Code"",areaname""Area Name"", Station, State,STATECODE from rm_area"
                LookUp.DefCol = "Area Name"
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "1400,3000,2000,2000,1"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                
'                    Set Rs = New Recordset
'                    Rs.Open "SELECT isnull(A.gststatecode,'0') gststatecode FROM IG_STATE A where   A.STATE_CODE='" & Trim(LookUp.Fields(4)) & "'", DB
'                        If Not Rs.EOF Then
'                        If Trim(Rs(0)) = "0" Then
'                            MsgBox "PLEASE ENTER GST STATE CODE IN STATE SETUP ", vbInformation, head
'                           ' txtfields(3).Text = ""
'                           ' Text3.Text = ""
'                            'Call BUTTON_Click(10)
'                            'Exit Sub
'                        End If
'                            'IGSTFLG = "Y"
'                        Else
'                            'IGSTFLG = "N"
'
'                    End If
                
                    txtfields(3).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    
                    Set LABRS = New Recordset
                    LABRS.Open "SELECT * FROM RM_area WHERE areacode= '" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    LookUp.Clear = True
                    Exit Sub
                Else
                    txtfields(3).Text = ""
                    txtfields(3).SetFocus
                    Exit Sub
                End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select areaname from rm_area where areacode = '" & txtfields(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
            If rs1.BOF Then
                Text3.Text = ""
            Else
                Text3.Text = rs1(0)
            End If
        End If
    Else
        MsgBox "Please define the Area in Set Up!", vbInformation, head
        Exit Sub
    End If


Case 4
   
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_var", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select varcode from rm_var where varcode = '" & txtfields(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
   
    If Rs.BOF Then
        Label15.Caption = "Variety List"
        StatusBar1.Panels(2).Text = "Select a Variety code from the list"
        
        Buttonframe.Enabled = False
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "rm_var"
        KSLLIST1.listfield1 = "varcode"
        KSLLIST1.listfield2 = "varname"
        
        If KSLLIST1.code = "" Then
             MsgBox "Enter Values In RM_VAR Table", vbInformation, head
             Call BUTTON_Click(9)
        Else
           
        End If
    Else
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If

    
Case 8
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_pmode", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select paymode,paydesc from rm_pmode where paymode = '" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        Text4.Text = Rs(1)
    Else
    LookUp.Clear = True
    LookUp.query = "SELECT paymode""Payment Mode"",paydesc""Payment Description"" FROM RM_PMODE"
    LookUp.Caption = "Payment Mode Listing"
    LookUp.DefCol = "Payment Description"
    LookUp.ALIGN = "1500,4000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    txtfields(8).Text = LookUp.Fields(0)
    Text4.Text = LookUp.Fields(1)
    Buttonframe.Enabled = True
    Frame1.Visible = True
    Frame2.Visible = True
    Else
        txtfields(8).Text = ""
        Exit Sub
    End If
    LookUp.Clear = True
        'End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 14
     StatusBar1.Panels(2).Text = "Select Supplier type"
Case 23
     BUTTON(9).SetFocus: Exit Sub
Case 52
        Set rs1 = New Recordset
        rs1.Open "select currcode,currname from fa_currency where currcode = '" & txtfields(52).Text & "'", DB, adOpenStatic, adLockReadOnly
        If rs1.RecordCount <> 0 Then
            txtfields(53).Text = rs1("currname")
        Else
            LookUp.Clear = True
            LookUp.query = "select currcode as Code,currname 'Currency' from FA_CURRENCY"
            LookUp.Caption = "Currency Listing"
            LookUp.DefCol = "Currency"
            LookUp.ALIGN = "1500,2500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(52).Text = LookUp.Fields(0)
                txtfields(53).Text = LookUp.Fields(1)
                LookUp.Clear = True
                DataGrid1.Col = 1
                DataGrid1.Row = 0
                DataGrid1.SetFocus
                Exit Sub
            Else
                txtfields(52).SetFocus
                Exit Sub
            End If
        End If
        
End Select






End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmContractoutsam", vbInformation, head
End Sub
Private Sub flexgalign()
    Flexg1.Clear
    Flexg1.ColWidth(0) = 0
    Flexg1.ColWidth(1) = 1150
    Flexg1.ColWidth(2) = 800
    Flexg1.ColWidth(3) = 3000
    Flexg1.ColWidth(4) = 1500
    Flexg1.ColWidth(5) = 1500
     
    Flexg1.TextMatrix(0, 1) = "Delivery Date"
    Flexg1.TextMatrix(0, 2) = "Quantity"
    Flexg1.TextMatrix(0, 3) = "Address"
    Flexg1.TextMatrix(0, 4) = "Variety"
    Flexg1.TextMatrix(0, 5) = "Instruction"
    
    Flexg1.ColAlignment(2) = 7
End Sub
Private Sub vargridalign()
    DataGrid1.Columns(0).Caption = "Mill Sample No."
    DataGrid1.Columns(1).Caption = "Variety Code"
    DataGrid1.Columns(2).Caption = "Variety"
    DataGrid1.Columns(3).Caption = "Quantity"
    DataGrid1.Columns(4).Caption = "Pack Type"
    DataGrid1.Columns(5).Caption = "       Order Kgs"
    DataGrid1.Columns(6).Caption = "    Rate/Unit"
    DataGrid1.Columns(7).Caption = "Supplier Sample No."
    
    DataGrid1.Columns("SGST %").NumberFormat = "#0.00"
    DataGrid1.Columns("CGST %").NumberFormat = "#0.00"
    DataGrid1.Columns("IGST %").NumberFormat = "#0.00"
        
    'Added
    
    DataGrid1.Columns(0).Locked = True
    DataGrid1.Columns(1).Locked = True
    DataGrid1.Columns(2).Locked = True
    DataGrid1.Columns(3).Caption = "Quantity"
    DataGrid1.Columns(4).Locked = True
    DataGrid1.Columns(5).Caption = "       Order Kgs"
    DataGrid1.Columns(6).Caption = "    Rate/Unit"
    DataGrid1.Columns(7).Locked = True
    DataGrid1.Columns(8).Locked = True  'cash Dis %
    DataGrid1.Columns(9).Locked = True  'Trade dis per
    DataGrid1.Columns(13).Locked = True   'Cess Per
    
    
      

    DataGrid1.Columns(0).Width = 1100   'sno   ''sample no
    DataGrid1.Columns(1).Width = 1100   'varcode
    DataGrid1.Columns(2).Width = 1500   'varname
    DataGrid1.Columns(3).Width = 800   'OrdQty
    DataGrid1.Columns(4).Width = 800   'Pack Type
    DataGrid1.Columns(5).Width = 1200  'CandyRatre
    DataGrid1.Columns(6).Width = 1000   'PtyContno
    DataGrid1.Columns(7).Width = 1000  'Order Kgs
    DataGrid1.Columns(8).Width = 700   'cash Dis %
    DataGrid1.Columns(9).Width = 700   'Trade dis per
    DataGrid1.Columns(13).Width = 700   'Cess Per
    DataGrid1.Columns(14).Width = 700   'Tax code
    DataGrid1.Columns(15).Width = 700   'Tax Per
    DataGrid1.Columns(17).Width = 700   'Ins Per
    DataGrid1.Columns(18).Width = 0   'prno'
    DataGrid1.Columns(19).Width = 0   'prdate'
    DataGrid1.Columns(20).Width = 0   'prsno'
    DataGrid1.Columns(0).Alignment = dbgRight
    DataGrid1.Columns(3).Alignment = dbgRight
    DataGrid1.Columns(4).Alignment = dbgLeft
    DataGrid1.Columns(5).Alignment = dbgRight
    DataGrid1.Columns(6).Alignment = dbgRight
    DataGrid1.Columns(7).Alignment = dbgRight
    
    For I = 8 To 13
        DataGrid1.Columns(I).Alignment = dbgRight
        DataGrid1.Columns(I).NumberFormat = "#0.00"
    Next
    For I = 15 To 16
        DataGrid1.Columns(I).Alignment = dbgRight
        DataGrid1.Columns(I).NumberFormat = "#0.00"
    Next
    If UCase(CustID) = "COTTON" Then
        If I = 17 Then DataGrid1.Columns(I).Alignment = dbgRight: DataGrid1.Columns(I).NumberFormat = "#0.00000000"
    Else
        If I = 17 Then DataGrid1.Columns(I).Alignment = dbgRight: DataGrid1.Columns(I).NumberFormat = "#0.000"
    End If
    
    DataGrid1.Columns(5).NumberFormat = "#0.000"
    DataGrid1.Columns(6).NumberFormat = "#0.0000000"
    
    DataGrid1.Columns(7).Locked = True
    DataGrid1.Columns(15).Locked = True
    DataGrid1.Columns(3).Locked = False
    DataGrid1.Columns(18).Width = 0   'prno'
   DataGrid1.Columns(19).Width = 0   'prdate'
   DataGrid1.Columns(20).Width = 0   'prdate'
   ' ,Iprno,prdate,prsno
       
    If opt1 = "mod" Then
        On Error Resume Next
    End If
    
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "fnd" Or Opt = " " Or Opt = "qry" Then
        DataGrid1.Columns("IGST %").Locked = True
        DataGrid1.Columns("SGST %").Locked = True
        DataGrid1.Columns("CGST %").Locked = True
        DataGrid1.Columns("HSN Code").Locked = True
        
        
        DataGrid1.Columns("BED %").Width = 0
        DataGrid1.Columns("ED Cess %").Width = 0
        DataGrid1.Columns("HS Cess %").Width = 0
        DataGrid1.Columns("Cess %").Width = 600
        DataGrid1.Columns("Tax Code").Width = 0
        DataGrid1.Columns("Tax %").Width = 0
        DataGrid1.Columns("Other Tax %").Width = 0

    End If
    
   
End Sub


Private Sub HeaderTaxLoad()
If RS11.RecordCount > 0 Then

    opt1 = Opt
    Opt = ""
    RS11.MoveFirst
    
    While Not RS11.EOF
        If RS11(1) <> "" Then
              RS11("cash dis %") = val(txtfields(28).Text)
              RS11("trade dis %") = val(txtfields(29).Text)
              RS11("bed %") = val(txtfields(30).Text)
              RS11("ed cess %") = val(txtfields(31).Text)
              RS11("hs cess %") = val(txtfields(32).Text)
              RS11("cess %") = val(txtfields(33).Text)
              RS11("tax code") = txtfields(34).Text
              RS11("tax %") = val(txtfields(35).Text)
              RS11("other tax %") = val(txtfields(36).Text)
              RS11("ins %") = Format(val(txtfields(37).Text), "0.000")
              If txtfields(49).Text <> "" Then
                RS11("IPRNO") = IIf(IsNull(txtfields(49).Text), Null, txtfields(49).Text)
              End If
              If txtfields(50).Text <> "" Then
              RS11("PRDATE") = IIf(IsNull(txtfields(50).Text), Null, Format(txtfields(50).Text, "DD/MM/YYYY"))
              End If
              If txtfields(51).Text <> "" Then
              RS11("PRsno") = IIf(IsNull(txtfields(51).Text), Null, txtfields(51).Text)
              End If
              
        End If
        RS11.MoveNext
    Wend

    Opt = opt1
End If
End Sub
Private Sub headertaxdisplay(I As Integer)
    If RS11.RecordCount > 0 Then RS11.MoveFirst
    If I = 1 Then
        txtfields(28).Text = RS11("Cash dis %")
        txtfields(29).Text = RS11("Trade dis %")
        txtfields(30).Text = RS11("BED %")
        txtfields(31).Text = RS11("ED Cess %")
        txtfields(32).Text = RS11("HS Cess %")
        txtfields(33).Text = RS11("Cess %")
        txtfields(34).Text = RS11("Tax Code")
        txtfields(35).Text = RS11("Tax %")
        txtfields(36).Text = RS11("Other tax %")
        txtfields(37).Text = Format(RS11("Ins %"), "0.000")
        txtfields(49).Text = IIf(IsNull(RS11("IPRNO")), "", RS11("IPRNO"))
        txtfields(50).Text = IIf(IsNull(RS11("PRDATE")), "", RS11("PRDATE")) 'val(RS11("PRDATE"))
        txtfields(51).Text = IIf(IsNull(RS11("PRsno")), "", RS11("PRsno")) ' RS11("PRsno")
    Else
        txtfields(28).Text = ""
        txtfields(29).Text = ""
        txtfields(30).Text = ""
        txtfields(31).Text = ""
        txtfields(32).Text = ""
        txtfields(33).Text = ""
        txtfields(34).Text = ""
        txtfields(35).Text = ""
        txtfields(36).Text = ""
        txtfields(37).Text = ""
        txtfields(49).Text = ""
        txtfields(50).Text = ""
        txtfields(51).Text = ""
        'txtfields(58).Text = ""
    End If
End Sub

Private Sub ClearText()
txtfields(2).Text = ""
txtfields(13).Text = ""
txtfields(3).Text = ""
Text11.Text = ""
Text12.Text = ""
End Sub

Private Sub POPRINT()

SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False

Dim S1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
     Set Rs = New Recordset
     txt = MaskEdBox3.Text

    Rs.Open "select a.*,slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc from rm_cont a,fa_slmas b,po_car c,rm_pmode d where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "'", DB

        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rs1 = New Recordset

'    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest from rm_cont a,rm_sample b where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & TXTFIELDS(1).Text & "'", DB
     rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest from  rm_cont a left join rm_sample b on  a.sno=b.sno where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.supcd='" & txtfields(1).Text & "'", DB
       
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate and a.divcode=b.divcode", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic


    Set RS11 = New Recordset
    RS11.Open "select a.sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season""  from rm_cont a,rm_var b,rm_cat c   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd", DB, adOpenStatic, adLockBatchOptimistic
     rema = RS11("remarks")
    Do While Not RS11.EOF
    RS11.MoveNext
    Loop
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

    Print #a,
    Print #a,
    Print #a, Space(3) & Chr(27) & "E" + CENTRE(divname, 85, " ") & Chr(27) & "F"
    Print #a,
    Print #a,
    Print #a, Space(3) & Chr(27) & "E" & CENTRE("RAW MATERIAL - PURCHASE ORDER ", 85, " ") & Chr(27) & "F"
    Print #a,
    Dim i1 As Integer
    i1 = 0
    Print #a, Space(3) + "REF: CON" & Padr(Rs("contNO") & "/C-" & rsJ("MILLREFNO") & "/" & Year(yfdate) & "/" & Year(yldate), 28, " ") + Space(12) + "DATE" + Space(2) + Padr(Format(Rs("contdt"), "DD/MM/YY"), 8, "")
    Print #a,
    Print #a, Space(3) & "TO,"
    Print #a, Space(3) + Space(1) & Rs("slname") & ""
    If Rs("add1") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add1") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If Rs("add2") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add2") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If Rs("add3") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add3") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If i1 >= 3 Then
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    Print #a,
    Print #a, Space(3) & "Dear Sirs"
    Print #a,
    Print #a, Space(3) & "Sub: Purchase of Raw Material"
    Print #a,
    Print #a, Space(3) & "We are pleased to confirm our purchase of the following Raw Material from you"
    Print #a, Space(3) & "as per the details stated below:-"
    Print #a,
    RS11.MoveFirst
    Print #a, Space(3) & String(80, "-")
    Print #a, Space(3) & "|Sl.|Variety | Quan|Station           | Rate / " + Padl(RS11("rateunit"), 8, " ") + "  |Staple    |Season    |"
    Print #a, Space(3) & "|No.|        |-tity|                  |        per bale  |          |          |"
    Print #a, Space(3) & "|   |        |     |                  |   spot expenses  |          |          |"
    sno1 = 1
    Print #a, Space(3) & String(80, "-")
    Do While Not RS11.EOF
    Staple = RS11("STAPLE")
    season = RS11("SEASON")
    Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
    Print #a, Space(3) & String(80, "-")
    sno1 = sno1 + 1
    RS11.MoveNext
    Loop
    Print #a,
    Print #a, Space(3) & "Agent                :" + Space(3) + "Through " & Text2.Text
    Print #a, Space(3) & "Payment              :" + Space(3) + Rs("payterms") + " .Please inform us in which name we will"
    Print #a, Space(3) & Space(21) + Space(3) + " have to take" + Space(1) + Rs("paydesc") + Space(1) + "and payable station."
    Print #a, Space(3) & "Delivery Schedule    :" + Space(3) + INSTRUCTION
    Print #a,

    If rsb.RecordCount = 0 Then
        S1 = ""
        s2 = ""
        s3 = ""
        s4 = ""
        s5 = ""
        s6 = ""
        s7 = ""
        s8 = ""
        s9 = ""
        s10 = ""
    Else
        S1 = rsb("slname")
        s2 = rsb("add1")
        s3 = rsb("add2")
        s4 = rsb("add3")

        s5 = rsb("city")
        If rsd.EOF = False Then
            s6 = IIf(IsNull(rsd("tinno")), 0, rsd("tinno"))
            s7 = IIf(IsNull(rsd("tindt")), "", rsd("tindt"))
            s8 = IIf(IsNull(rsd("cgst")), 0, rsd("cgst"))
            s9 = IIf(IsNull(rsd("cgstdt")), "", rsd("cgstdt"))
        End If
        s10 = Rs("rc_no")
    End If

    If rsa.RecordCount = 0 Then
        p6 = ""
        p7 = ""
        p8 = ""
        p9 = ""
        p10 = ""
    Else
        p6 = rsa("slname")
        p7 = rsa("add1")
        p8 = rsa("add2")
        p10 = rsa("city")
    End If
    Print #a, Space(3) & "Billing Address" + Space(32) + "Delivery Address"
    Print #a, Space(3) + Space(2) & Padr(S1, 30, "") + Space(17) & Padr(p6, 30, "")
    Print #a, Space(3) + Space(2) & Padr(s2, 30, "") + Space(17) & Padr(p7, 30, "")
    Print #a, Space(3) + Space(2) & Padr(s5, 30, "") + Space(17) & Padr(p10, 30, "")
    Print #a, Space(3) + Space(2) & "TIN No. " + Padr(s6, 15, "") & "DT." + Padr(Format(s7, "DD/MM/YY"), 8, "") + Space(13) & "Contact Person:" & Trim(Text7.Text)
    Print #a, Space(3) + Space(2) & "CST No. " + Padr(s8, 15, "") & "DT." + Padr(Format(s9, "DD/MM/YY"), 8, "") + Space(13) & "Phone No."
    Print #a, Space(3) + Space(2) & "Central Exercise RC No. " + Padr(s10, 20, "")
    Print #a,
    Print #a, Space(3) & "Kindly sign a copy of this contract and return to us as a token of your acceptance."
    Print #a,
    Print #a, Space(3) & "Thanks & Regards"
    Print #a,
    Print #a,
    Print #a, Space(3)
    Print #a, Space(3) & "GENERAL MANAGER - ADMIN & MKTG" & Chr(27)
    Print #a, Space(3)
    Print #a,
    Print #a, Space(3) & "   Please send us the samples immediately on receipt of the"
    Print #a, Space(3) & "   load for quality checking"
    Print #a, Space(3) & String(80, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0


End Sub

Private Sub POPRINTLMW_old()
SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False
Dim Str As String
Dim S1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
    Set RsDiv = New Recordset
    RsDiv.Open "select CIN from pp_divmas where divcode='" & Divcode & "'", DB


     Set Rs = New Recordset
     txt = MaskEdBox3.Text

'     Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas from rm_cont a,fa_slmas b,po_car c,rm_pmode d,rm_delivery e where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & TXTFIELDS(1).Text & "' and a.dlytype=e.delcode AND a.CARCODE*=c.CARCODE ", DB
      Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas from  rm_cont a inner join fa_slmas b on b.slcode=a.supcd  left join po_car c on a.CARCODE=c.CARCODE  inner join rm_pmode d on a.paymode=d.paymode inner join rm_delivery e  on a.dlytype=e.delcode  where  A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "'  ", DB
    
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

     
    If Rs("city") <> "" Then
        Str = CStr(Rs("city")) + " - "
    End If
    
    If Rs("pin") <> "" Then
        Str = Str + CStr(Rs("pin"))
    ElseIf Str <> "" Then
        Str = Mid(Str, 1, InStr(Str, "-") - 2)
    End If
    

    Set rs1 = New Recordset
'    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a,rm_sample b where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & TXTFIELDS(1).Text & "'", DB
  rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a left join rm_sample b on a.sno=b.sno where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'   and a.supcd='" & txtfields(1).Text & "'", DB
       
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate and a.divcode=b.divcode", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic

    Set RS11 = New Recordset
    RS11.Open "select isnull(a.sno,0) as sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season"",isnull(b.drawno,'') as drawno,isnull(b.oldvarcode,'') as oldvarcode,a.duedate,payterms,ratekg  from rm_cont a,rm_var b,rm_cat c,rm_delivery d   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd and a.dlytype=d.delcode", DB, adOpenStatic, adLockBatchOptimistic
    rema = RS11("remarks")
    
    rcount = RS11.RecordCount
    
    tot = Rs("ratekg") * Rs("ordkgs")
    
    
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
    
    
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

   ''04/04/14
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   
   Print #a,
   Print #a,
   Print #a,
   
    sinv = Right(Year(yfdate), 2)
    
    If Len(Rs("CONTNO")) = 1 Then
      sinv = sinv & "0000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 2 Then
     sinv = sinv & "000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 3 Then
     sinv = sinv & "00" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 4 Then
     sinv = sinv & "0" & Rs("CONTNO")
    End If
       
    Print #a,
      
    Print #a, Space(15 - 5) & Chr(27) + "E" + "CIN :" & Padr(RsDiv("CIN"), 21, " ") + Chr(27) + "F" & Space(19) & "19RM/" & Padr(sinv, 8, " ")
    Print #a, Space(55) & Padr(Format(Rs("contdt"), "dd-mmm-yyyy"), 11, " ")
    co = co + 2
    
    Print #a, Space(14) + Chr(18) & Chr(27) & "E" & Padr(Rs("oldslcode"), 10, " ") & Chr(27) & "F" & Chr(18)
    slcode1 = Rs("oldslcode")
    co = co + 1
    If Len(Rs(0)) > 40 Then
        N1 = Trim(Mid$(Mid(Rs(0), 1, 40), 1, InStrRev(Mid(Rs(0), 1, 40), " ")))
        N2 = Mid$(Rs(0), Len(N1) + 1, Len(Rs(0)))
    Else
        N1 = Rs(0)
    End If
        
        If N1 <> "" Then
        Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N1, 40, " ") & Chr(27) & "F" & Chr(18)
        Else
        Print #a, Space(3) & Padr(" ", 40, " ")
        End If
        co = co + 1
        
        If N2 <> "" Then
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N2, 40, " ") & Chr(27) & "F" & Chr(18)
            co = co + 1
        Else
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(" ", 40, " ") & Chr(27) & "F" & Chr(18)
        End If
    
    If IsNull(rs1(1)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(1)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    If IsNull(rs1(2)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(2)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    Set rstA = New Recordset
    Set rstA = DB.Execute("SELECT * FROM RM_DELADD")
    If rstA.RecordCount <> "" Then
        DSLNAME = rstA("SLNAME")
        DADD1 = rstA("ADD1")
        DADD2 = rstA("ADD2")
        DADD3 = rstA("ADD3")
        DCITY = rstA("CITY")
        dpin = rstA("PIN")
    End If

        
    If Str <> "" Then
        Print #a, Space(3) & Padr(Trim(Str), 37, " ") '& Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
    Else
        Print #a,
    End If
    
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD1) ', 7 + 18, " ") '& Padl(DADD2, 15, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD2) ', 7 + 18, " ")
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DCITY) & "-" & Trim(dpin)
        
    co = 0
    SNO = 0
    co = co + 5
    
    
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        EduCessAmt = 0
        Su = 0
    
    Print #a,
    
    RS11.MoveFirst
    sno1 = 1 ' 0 ' 1
    
    Do While Not RS11.EOF
        Staple = RS11("STAPLE")
        season = RS11("SEASON")
        '''Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
        
        
        If Len(RS11("varname")) > 26 Then
            S1 = Trim(Mid$(Mid(RS11("varname"), 1, 26), 1, InStrRev(Mid(RS11("varname"), 1, 26), " ")))
            s2 = Mid$(RS11("varname"), Len(S1) + 1, Len(RS11("varname")))
        Else
            S1 = RS11("varname")
        End If
                
        '1
         'Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordqty"), 3), 12, " ") & Space(3) & Padr("CANDY", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         '21/06/14
         Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(S1, 26, " ") & Space(2); Padl(INF(RS11("ordkgs"), 3), 12, " ") & Space(3) & Padr("KGS  ", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         
         sno1 = sno1 + 1
         '2
         Print #a,
         sno1 = sno1 + 1
'
'       '  '3,4
'        If IsNull(RS11("duedate")) <> True Then
'                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 2
'       Else
'                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 1
'       End If
              

       '  '3,4
        If IsNull(RS11("duedate")) <> True Then
                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 2
       Else
                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 1
       End If
         
         '5
         Print #a, Space(5) & "Station  :" & strstat
         sno1 = sno1 + 1
         '6
         Print #a, Space(5) & "Staple   :" & Staple
         sno1 = sno1 + 1
                  
        If val(RS11("sno")) >= 1 Then
         Set Rssample = New Recordset
         Rssample.Open "select isnull(micronaire,0) as mic,isnull(strength,0) as strn from rm_sample  WHERE sno=" & RS11("sno") & "", DB
         '7
         Print #a, Space(5) & "MIC      :" & Rssample("mic")
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :" & Rssample("strn")
         sno1 = sno1 + 1
       Else
       '7
         Print #a, Space(5) & "MIC      :"
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :"
         sno1 = sno1 + 1
       End If
         
         Set rscndy = New Recordset
         rscndy.Open "select ISNULL(value,0) AS VALUE from rm_rateunit where unitcode='CA'", DB
         '9
         'Print #a, Space(5) & "Period   :" & RS11("payterms")
         Print #a, Space(5) & "Rate/Candy:" & rscndy("value")
         
         sno1 = sno1 + 1
                  
        RS11.MoveNext
    Loop
    
    PgNo = 1
    
    If sno1 < 10 Then
            s = 10 - sno1
            If s > 0 Then
                For I = 1 To s
                    Print #a,
                Next I
            End If
    End If
    Print #a,
    
      
    
    Print #a,
    '14/04/14
    Print #a,
    '21/04/14
    Print #a,
    'Print #a,
    Print #a, Space(10) & Padr(rcount, 3, " ") & Space(12) & Padl(PgNo, 3, " ")
    PRICEBAS = Rs("deldesc")
    Print #a, Space(15) & Padr(PRICEBAS, 37, " ") & Space(10) & Padl(INF(tot, 2), 14, " ")
      
    
    Print #a, Space(15) & Padr(Rs("Carname"), 37, " ")
    'Print #a, Space(15) & Padr(Rs("paydesc"), 28, " ");
    Print #a, Space(15) & Padr(Rs("pymas"), 28, " ");
    
    co = co + 1
    Print #a,
    Print #a,
     
        
    
     
        Set rstax = New Recordset
        rstax.Open "select abbr from ig_tax where tax_code='" & Rs("tax_code") & "'", DB
                
        If Rs("Taxper") > 0 Then
            Print #a, Space(4) & Padr(rstax("abbr") & ":", 5, " ") '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("othtaxper") > 0 Then
            Print #a, Space(1 + 1) & Padr("OTHER :", 5, " ") & Padr(Rs("othtaxper") & "%", 3, " ")
        Else
            Print #a, Space(1 + 1) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
        End If
    
    
    
    Print #a,
    Print #a,
    'Print #a,
    
            If Rs("Taxper") > 0 Then
                Print #a, Space(4) & Padr(Rs("Taxper") & "%", 3, " ");   ' Padl(INF(Taxamt, 2), 10, " ");
            Else
                Print #a, Space(4) & Padl(" ", 10, " ")
            End If

        If Rs("LORRYFRT") > 0 Then
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        Else
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        End If
      
    
For I = 1 To 7
    Print #a,
Next I

'Print #a,
   
    
If Rs("REMARKS") <> "" Then
    Print #a, Space(9) & Padr(Rs("REMARKS"), 50, " ")
Else
    Print #a, Space(9) & Padr(" ", 50, " ")
End If
    
    
Print #a,
Print #a,
Print #a,
Print #a,

Set RSTP = New Recordset
Set RSTP = DB.Execute("SELECT PREPRINT FROM PP_DIVMAS")
If RSTP.RecordCount <> 0 Then
    pname = RSTP(0)
End If
    
Print #a, Space(11) & Padl(pname, 15, " ")
Print #a,
Print #a, Space(9) & Padl(na, 15, " ")
Print #a,
Print #a,
    
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0



End Sub


Private Sub POPRINTLMW()
SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False
Dim Str As String
Dim S1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
    Set RsDiv = New Recordset
    RsDiv.Open "select CIN from pp_divmas where divcode='" & Divcode & "'", DB


     Set Rs = New Recordset
     txt = MaskEdBox3.Text

'     Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas,ISNULL(a.bedper,0) AS bed,ISNULL(a.sedper,0) AS edu,ISNULL(a.hscessper,0) AS hs,ISNULL(a.cessper,0) AS cess,ISNULL(A.CARCODE,'') AS CARCODE from rm_cont a,fa_slmas b,po_car c,rm_pmode d,rm_delivery e where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & TXTFIELDS(1).Text & "' and a.dlytype=e.delcode AND a.CARCODE*=c.CARCODE ", DB
    Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas,ISNULL(a.bedper,0) AS bed,ISNULL(a.sedper,0) AS edu,ISNULL(a.hscessper,0) AS hs,ISNULL(a.cessper,0) AS cess,ISNULL(A.CARCODE,'') AS CARCODE from rm_cont a inner join fa_slmas b on b.slcode=a.supcd left join po_car c on  a.CARCODE=c.CARCODE  inner join rm_pmode d on a.paymode=d.paymode  inner join rm_delivery e on  a.dlytype=e.delcode where  A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "'  ", DB
    
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

     
    If Rs("city") <> "" Then
        Str = CStr(Rs("city")) + " - "
    End If
    
    If Rs("pin") <> "" Then
        Str = Str + CStr(Rs("pin"))
    ElseIf Str <> "" Then
        Str = Mid(Str, 1, InStr(Str, "-") - 2)
    End If
    

    Set rs1 = New Recordset
'    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a,rm_sample b where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & txtfields(1).Text & "'", DB
   rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a left join rm_sample b on a.sno=b.sno where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'   and a.supcd='" & txtfields(1).Text & "'", DB
        
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate and a.divcode=b.divcode", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic

    Set RS11 = New Recordset
    RS11.Open "select isnull(a.sno,0) as sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season"",isnull(b.drawno,'') as drawno,isnull(b.oldvarcode,'') as oldvarcode,a.duedate,payterms,ratekg  from rm_cont a,rm_var b,rm_cat c,rm_delivery d   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd and a.dlytype=d.delcode", DB, adOpenStatic, adLockBatchOptimistic
    rema = RS11("remarks")
    
    rcount = RS11.RecordCount
    
    tot = Rs("ratekg") * Rs("ordkgs")
    
    
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
    
    
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

   ''04/04/14
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   
   Print #a,
   Print #a,
   Print #a,
   
    sinv = Right(Year(yfdate), 2)
    
    If Len(Rs("CONTNO")) = 1 Then
      sinv = sinv & "0000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 2 Then
     sinv = sinv & "000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 3 Then
     sinv = sinv & "00" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 4 Then
     sinv = sinv & "0" & Rs("CONTNO")
    End If
       
    Print #a,
      
    Print #a, Space(15 - 5) & Chr(27) + "E" + "CIN :" & Padr(RsDiv("CIN"), 21, " ") + Chr(27) + "F" & Space(19) & "19RM/" & Padr(sinv, 8, " ")
    Print #a, Space(55) & Padr(Format(Rs("contdt"), "dd-mmm-yyyy"), 11, " ")
    co = co + 2
    
    Print #a, Space(14) + Chr(18) & Chr(27) & "E" & Padr(Rs("oldslcode"), 10, " ") & Chr(27) & "F" & Chr(18)
    slcode1 = Rs("oldslcode")
    co = co + 1
    If Len(Rs(0)) > 40 Then
        N1 = Trim(Mid$(Mid(Rs(0), 1, 40), 1, InStrRev(Mid(Rs(0), 1, 40), " ")))
        N2 = Mid$(Rs(0), Len(N1) + 1, Len(Rs(0)))
    Else
        N1 = Rs(0)
    End If
        
        If N1 <> "" Then
        Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N1, 40, " ") & Chr(27) & "F" & Chr(18)
        Else
        Print #a, Space(3) & Padr(" ", 40, " ")
        End If
        co = co + 1
        
        If N2 <> "" Then
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N2, 40, " ") & Chr(27) & "F" & Chr(18)
            co = co + 1
        Else
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(" ", 40, " ") & Chr(27) & "F" & Chr(18)
        End If
    
    If IsNull(rs1(1)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(1)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    If IsNull(rs1(2)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(2)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    Set rstA = New Recordset
    Set rstA = DB.Execute("SELECT * FROM RM_DELADD")
    If rstA.RecordCount <> "" Then
        DSLNAME = rstA("SLNAME")
        DADD1 = rstA("ADD1")
        DADD2 = rstA("ADD2")
        DADD3 = rstA("ADD3")
        DCITY = rstA("CITY")
        dpin = rstA("PIN")
    End If

        
    If Str <> "" Then
        Print #a, Space(3) & Padr(Trim(Str), 37, " ") '& Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
    Else
        Print #a,
    End If
    
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD1) ', 7 + 18, " ") '& Padl(DADD2, 15, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD2) ', 7 + 18, " ")
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DCITY) & "-" & Trim(dpin)
        
    co = 0
    SNO = 0
    co = co + 5
    
    
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        EduCessAmt = 0
        Su = 0
    
    Print #a,
    
    RS11.MoveFirst
    sno1 = 1 ' 0 ' 1
    
    Do While Not RS11.EOF
        Staple = RS11("STAPLE")
        season = RS11("SEASON")
        '''Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
        
        
        If Len(RS11("varname")) > 26 Then
            S1 = Trim(Mid$(Mid(RS11("varname"), 1, 26), 1, InStrRev(Mid(RS11("varname"), 1, 26), " ")))
            s2 = Mid$(RS11("varname"), Len(S1) + 1, Len(RS11("varname")))
        Else
            S1 = RS11("varname")
        End If
                
        '1
         'Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordqty"), 3), 12, " ") & Space(3) & Padr("CANDY", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         '21/06/14
         Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(S1, 26, " ") & Space(2); Padl(INF(RS11("ordkgs"), 3), 12, " ") & Space(3) & Padr("KGS  ", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         
         sno1 = sno1 + 1
         '2
         Print #a,
         sno1 = sno1 + 1
'
'       '  '3,4
'        If IsNull(RS11("duedate")) <> True Then
'                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 2
'       Else
'                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 1
'       End If
              

       '  '3,4
        If IsNull(RS11("duedate")) <> True Then
                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 2
       Else
                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 1
       End If
         
         '5
         Print #a, Space(5) & "Station  :" & strstat
         sno1 = sno1 + 1
         '6
         Print #a, Space(5) & "Staple   :" & Staple
         sno1 = sno1 + 1
                  
        If val(RS11("sno")) >= 1 Then
         Set Rssample = New Recordset
         Rssample.Open "select isnull(micronaire,0) as mic,isnull(strength,0) as strn ,ISNULL(GTEX,0) AS  gTEX from rm_sample  WHERE sno=" & RS11("sno") & "", DB
         '7
         Print #a, Space(5) & "MIC      :" & Rssample("mic")
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :" & Rssample("gTEX")
         sno1 = sno1 + 1
       Else
       '7
         Print #a, Space(5) & "MIC      :"
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :"
         sno1 = sno1 + 1
       End If
         
         Set rscndy = New Recordset
         rscndy.Open "select ISNULL(value,0) AS VALUE from rm_rateunit where unitcode='CA'", DB
         '9
         Print #a, Space(5) & "Rate/Candy:" & IIf(IsNull(RS11("candyrate")), 0, Padr(INF(RS11("candyrate"), 2), 12, " "))
         sno1 = sno1 + 1
                  'Padl(INF(RS11("ordqty"), 3), 12, " ")
         '9--10
         'Print #a, Space(5) & "Period   :" & RS11("payterms")
         Print #a, Space(5) & "Candy     :" & rscndy("value")
         sno1 = sno1 + 1
                  
        RS11.MoveNext
    Loop
    
    PgNo = 1
    
    If sno1 < 9 Then  '10
            s = 9 - sno1 '10
            If s > 0 Then
                For I = 1 To s
                    Print #a,
                Next I
            End If
    End If
    
    Print #a,
    Print #a,
    '14/04/14
    Print #a,
    '21/04/14
    Print #a, Space(10) & Padr(rcount, 3, " ") & Space(12) & Padl(PgNo, 3, " ")
    
    Print #a,
    'Print #a,
   
    PRICEBAS = Rs("deldesc")
    Print #a, Space(15) & Padr(PRICEBAS, 37, " ") & Space(10) & Padl(INF(tot, 2), 14, " ")
    Print #a, Space(15) & Padr(Rs("Carcode"), 37, " ") 'Padr(Rs("Carname"), 37, " ")
    
    '''Print #a, Space(15) & Padr(Rs("paydesc"), 28, " ");
    
    Print #a, Space(15) & Padr(Rs("pymas"), 28, " ");
    co = co + 1
    Print #a,
    Print #a,
    
        Set rstax = New Recordset
        rstax.Open "select abbr from ig_tax where tax_code='" & Rs("tax_code") & "'", DB
        
        If Rs("cess") > 0 Then
            Print #a, Space(4 + 2) & Padr("CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
                
        If Rs("Taxper") >= 0 Then
            Print #a, Space(4) & Padr(rstax("abbr") & ":", 5, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("bed") > 0 Then
            Print #a, Space(4 + 2) & Padr("BED" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("edu") > 0 Then
            Print #a, Space(4 + 2) & Padr("EDU.CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("hS") > 0 Then
            Print #a, Space(4 + 2) & Padr("HS CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
      
    
        If Rs("othtaxper") > 0 Then
            Print #a, Space(4 + 2) & Padr("OTHER :", 8, " ") '& Padr(Rs("othtaxper") & "%", 3, " ")
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
        End If
    
    Print #a,
    Print #a,
    ''Print #a,
    
        If Rs("cess") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("cess") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
         If Rs("Taxper") >= 0 Then
                Print #a, Space(4 + 2) & Padr(Rs("Taxper") & "%", 3, " "); ' Padl(INF(Taxamt, 2), 10, " ");
            Else
                Print #a, Space(4 + 2) & Padl(" ", 10, " ");
            End If
                       
            
        If Rs("bed") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("bed") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("edu") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("edu") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("hS") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("hs") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        

     
            
            
            ''21/06/14
            If Rs("othtaxper") > 0 Then
                Print #a, Space(4 + 2) & Padr(Rs("othtaxper") & "%", 3, " ")
                '1+1
            Else
                Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
            End If
            

        If Rs("LORRYFRT") > 0 Then
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        Else
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        End If
      
    
For I = 1 To 7
    Print #a,
Next I

'''Print #a,
  
    
If Rs("REMARKS") <> "" Then
    Print #a, Space(9) & Padr(Rs("REMARKS"), 50, " ")
Else
    Print #a, Space(9) & Padr(" ", 50, " ")
End If
    
    
Print #a,
Print #a,
Print #a,
Print #a,

Set RSTP = New Recordset
Set RSTP = DB.Execute("SELECT PREPRINT FROM PP_DIVMAS")
If RSTP.RecordCount <> 0 Then
    pname = RSTP(0)
End If
    
Print #a, Space(11) & Padl(pname, 15, " ")
Print #a,
Print #a, Space(9) & Padl(na, 15, " ")
Print #a,
Print #a,
    
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0



End Sub


Private Sub OrderbyIndent(IType As Integer)

    Set indentrs = New ADODB.Recordset
    Dim SstrSql  As String
    SstrSql = ""
    indentrs.CursorLocation = adUseClient
    ' commented on 29-10-18 by mariyaiya
   ' If globalarrivalorder = "C" Then
        'indentrs.Open "exec SP_PRToPO_RMI_Arrival '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType & ", ""Y"" ", DB, adOpenStatic, 1
   ' Else
        indentrs.Open "exec SP_PRToPO_RMI '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType, DB, adOpenStatic, 1
    'End If
    If Not indentrs.EOF Then
        RW = 1
        Call SetSpdIndentHead
        FpSpdIndHead.Visible = True
        FpSpdIndHead.MaxRows = 1
        With FpSpdInd
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
            .SetText E_SpdIndent.SprdindNo, RW, indentrs("Indent No.")
            .SetText E_SpdIndent.Sprdinddt, RW, indentrs("Indent Date")
            .SetText E_SpdIndent.SprdItemcode, RW, indentrs("Varity Code")
            .SetText E_SpdIndent.sprdItemname, RW, indentrs("Description")
            .SetText E_SpdIndent.Sprduom, RW, indentrs("Packtype")
            .SetText E_SpdIndent.SprdBalQty, RW, indentrs("BalQty")
            .SetText E_SpdIndent.SprdBalQtykg, RW, indentrs("BalQtyKG")
            .SetText E_SpdIndent.Sprdename, RW, indentrs("ename")
            .SetText E_SpdIndent.SprdSno, RW, indentrs("PrSNo")
            indentrs.MoveNext
            RW = RW + 1
        Loop
       End With
        DataGrid1.SetFocus
        BUTTON(4).Enabled = False
        BUTTON(12).Enabled = False
        BUTTON(13).Enabled = False
    Else
        MsgBox "No Indent To PurchaseOrder", vbInformation, head
 '       FpSpdIndHead_KeyPress (vbBack)
         Call BUTTON_Click(10)
        Exit Sub
    End If
End Sub
Private Sub FilterIndent(IType As Integer, IndNo As String, itmCode As String, itmName As String)
    Set indentrs = New ADODB.Recordset
    Dim SstrSql  As String
    SstrSql = ""
    indentrs.CursorLocation = adUseClient
    indentrs.Open "exec SP_PRToPO_RMIFilter '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType & ",'" & IndNo & "','" & itmCode & "','" & itmName & "'", DB, adOpenStatic, 1
    FpSpdInd.Reset
    If Not indentrs.EOF Then
        RW = 1
        Call SetSpdIndentHeadFilter
        FpSpdIndHead.Visible = True
        FpSpdIndHead.MaxRows = 1
        With FpSpdInd
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
            .SetText E_SpdIndent.SprdindNo, RW, indentrs("Indent No.")
            .SetText E_SpdIndent.Sprdinddt, RW, indentrs("Indent Date")
            .SetText E_SpdIndent.SprdItemcode, RW, indentrs("Varity Code")
            .SetText E_SpdIndent.sprdItemname, RW, indentrs("Description")
            .SetText E_SpdIndent.Sprduom, RW, indentrs("Packtype")
            .SetText E_SpdIndent.SprdBalQty, RW, indentrs("BalQty")
            .SetText E_SpdIndent.SprdBalQtykg, RW, indentrs("BalQtykg")
            .SetText E_SpdIndent.Sprdename, RW, indentrs("ename")
            .SetText E_SpdIndent.SprdSno, RW, indentrs("PrSNo")
            indentrs.MoveNext
            RW = RW + 1
        Loop
       End With
        'DataGrid1.SetFocus
        BUTTON(4).Enabled = False
        BUTTON(12).Enabled = False
        BUTTON(13).Enabled = False
    Else
        MsgBox "No Indent To PurchaseOrder", vbInformation, head
        'FpSpdIndHead_KeyPress (vbBack)
        'Call BUTTON_Click(10)
        Exit Sub
    End If
End Sub

Private Sub SetSpdIndentHead()
On Error GoTo SetSpdIndentHead
    With FpSpdInd
        .MaxRows = 0
        .MaxCols = 10
        .Row = 0
        .FontBold = True
        .ScrollBars = ScrollBarsNone
        .ColHeadersAutoText = DispBlank
        .ActiveCellHighlightStyle = ActiveCellHighlightStyleNormal
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdCheck, "", CellTypeCheckBox, 2, , , False
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdindNo, "Indent No.", CellTypeStaticText, 8
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprdinddt, "Indent Date", CellTypeDate, 10
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdItemcode, "Varity Code", CellTypeStaticText, 7
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.sprdItemname, "Description", CellTypeStaticText, 25
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprduom, "Pack Type", CellTypeStaticText, 10
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdBalQty, "Balance Qty.", CellTypeNumber, 10, 3
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdBalQtykg, "Balance Qty in Kgs.", CellTypeNumber, 20, 3
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprdename, "Requester Name", CellTypeStaticText, 30
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdSno, "Sno", CellTypeStaticText, 5
        
       .RowHeadersShow = False
       .ColHeadersShow = True
    End With
    
    With FpSpdIndHead
        .MaxRows = 0
        .MaxCols = 5
        .Row = 0
        .FontBold = True
        .ScrollBars = ScrollBarsNone
        .ColHeadersAutoText = DispBlank
        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHCheck, " ", CellTypeStaticText, 2, , , False
        .Col = E_SpdIndentHead.SprdHindNo
        .TypeEditCharSet = TypeEditCharSetNumeric
        
        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHindNo, "Indent No.", CellTypeEdit, 8, , , False
        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHinddt, "Indent Date", CellTypeDate, 10, , True
        .Col = E_SpdIndentHead.sprdHItemCode
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.sprdHItemCode, "Varity Code", CellTypeEdit, 10, , , False
        .Col = E_SpdIndentHead.sprdHItemName
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.sprdHItemName, "Description", CellTypeEdit, 25, , , False
'        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHUom, "Pack Type", CellTypeStaticText, 10, , True, False
'        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHBalQty, "Balance Qty.", CellTypeNumber, 10, 3, True, True
'        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHBalQtykg, "Balance Qty. in Kgs", CellTypeNumber, 10, 3, True, True
'        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHename, "Requster Name", CellTypeEdit, 10, , True, True
'        SetSpreadCol_RMI FpSpdIndHead, E_SpdIndentHead.SprdHSno, "Sno", CellTypeStaticText, 5, True, True
        'SetSpreadCol FpSpdIndHead, E_SpdIndentHead.SprdHRemarks, "Remarks", CellTypeStaticText, 20, True, True
        
       .RowHeadersShow = False
    End With
    
Exit Sub

SetSpdIndentHead:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SetSpdIndentHead " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: SetSpdIndentHead"
End Sub
Private Sub SetSpdIndentHeadFilter()
On Error GoTo SetSpdIndentHead
    With FpSpdInd
        .MaxRows = 0
        .MaxCols = 13
        .Row = 0
        .FontBold = True
        .ScrollBars = ScrollBarsNone
        .ColHeadersAutoText = DispBlank
        .ActiveCellHighlightStyle = ActiveCellHighlightStyleNormal
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdCheck, "", CellTypeCheckBox, 2, , , False
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdindNo, "Indent No.", CellTypeStaticText, 8
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprdinddt, "Indent Date", CellTypeDate, 10
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdItemcode, "Varity Code", CellTypeStaticText, 7
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.sprdItemname, "Description", CellTypeStaticText, 25
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprduom, "Pack Type", CellTypeStaticText, 7
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdBalQty, "Balance Qty.", CellTypeNumber, 10, 3
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdBalQtykg, "Balance Qty.in KG", CellTypeNumber, 10, 3
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.Sprdename, "Requester Name", CellTypeStaticText, 10
        SetSpreadCol_RMI FpSpdInd, E_SpdIndent.SprdSno, "Sno", CellTypeStaticText, 5
       '
        
        
       .RowHeadersShow = False
       .ColHeadersShow = True
    End With
    Exit Sub

SetSpdIndentHead:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SetSpdIndentHead " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: SetSpdIndentHead"
End Sub


Sub ClearText_sprd()
    FpSpdIndHead.ClearRange 1, 1, FpSpdIndHead.MaxCols, 1, True
End Sub
Sub FindMatch(Col As Long, stext As String)
Dim ret As Integer
FpSpdInd.SelBackColor = RGB(255, 255, 0)
FpSpdInd.OperationMode = OperationModeRow
Dim I As Long
    stext = UCase(stext)
    If Col = 2 Then
        IndentNo = stext
    End If
    If Col = 4 Then
        itemcode = stext
    End If
    If Col = 5 Then
        itemName = stext
    End If


    
    FilterIndent 1, IndentNo, itemcode, itemName
    

End Sub
Private Sub FpSpdIndHead_KeyPress(KeyAscii As Integer)
Dim stext, fpfname
    'If KeyAscii = Asc(vbBack) Then KeyAscii = 0
        
    FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 1, stext
    If KeyAscii = 8 Then
        If Len(stext) <= 1 Then
            stext = ""
        Else
            stext = Mid(stext, 1, Len(stext) - 1)
        End If
        
    Else
        stext = stext & Chr(KeyAscii)
    End If
    If stext = "  " Then
        stext = " "
        FpSpdIndHead.SetText FpSpdIndHead.ActiveCol, 1, CStr(stext)
    End If
    FindMatch FpSpdIndHead.ActiveCol, CStr(stext)
    'FpSpdIndHead.GetText FpSpdIndHead.ActiveCol, 0, fpfname
    
End Sub
Sub SortCol(Col As Long)
    IsSorted = True
    FpSpdInd.Sort 1, 1, FpSpdInd.MaxCols, FpSpdInd.DataRowCnt, SortByRow, Col, SS_SORT_ORDER_ASCENDING
End Sub

Private Sub clearcollection()
    
    For Each indx In IndxRows
        Set indx = Nothing
    Next
    
    Set IndxRows = Nothing
    
    IndentNo = ""
    itemcode = ""
    itemName = ""
    department = ""
    FpSpdInd.Reset
    FpSpdIndHead.Reset
    
End Sub
Private Function Exists(Item, ind) As Boolean
On Error GoTo err_lab
Dim obj As Collection
Set obj = Item(ind)
Exists = True
Exit Function
err_lab:
    Exists = Exists_nonobject(Item, ind)
End Function

Private Function Exists_nonobject(Item, ind) As Boolean
On Error GoTo err_lab
Dim var As Variant
var = Item(ind)
Exists_nonobject = True
Exit Function
err_lab:
Exists_nonobject = False
End Function
Private Sub clearcollectionkeys()
    
    For Each indx In strGridTotal
        Set indx = Nothing
    Next
    
    Set strGridTotal = Nothing
    
   iTotal = 0
    
End Sub

Private Sub SaveLogfunction()
If opt1 = "add" Then
        Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax ,BillNo FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Order Amendment"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("plcode") = Trim(txtfields(62).Text)
            TrnLog("paycode") = Trim(txtfields(60).Text)
            TrnLog("Line_No") = Trim(txtfields(63).Text)
            TrnLog("BBFlg") = Trim(DataGrid1.Columns("pack Type").Text)
            TrnLog("TaxCode") = DataGrid1.Columns(14).Text
            TrnLog("hsn") = Trim(DataGrid1.Columns("HSN Code").Text)
            TrnLog("cgstper") = val(DataGrid1.Columns("CGST %").Text)
            TrnLog("sgstper") = val(DataGrid1.Columns("SGST %").Text)
            TrnLog("Igstper") = val(DataGrid1.Columns("IGST %").Text)
            TrnLog("dlytype") = Trim(txtfields(20).Text)
            TrnLog("docno") = val(txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            TrnLog("contno") = txtfields(0).Text
            TrnLog("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            TrnLog("slcode") = txtfields(1).Text
            TrnLog("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
            If Option1.value = True Then
                 TrnLog("im_ind") = "I"
            ElseIf Option2.value = True Then
                 TrnLog("im_ind") = "L"
            ElseIf Option3.value = True Then
                 TrnLog("im_ind") = "U"
            End If
        
            TrnLog("varcode") = DataGrid1.Columns(1).Text
            TrnLog("ordqty") = val(DataGrid1.Columns(3).Text)
            TrnLog("ordkgs") = val(DataGrid1.Columns(5).Text)
            TrnLog("CreditDays") = val(txtfields(38).Text)
            TrnLog("CashDisPer") = val(DataGrid1.Columns(8).Text)
            TrnLog("TradeDisPer") = val(DataGrid1.Columns(9).Text)
            'TrnLog("ratekg") = RsMod("ratekg")
            Set rsg = New Recordset
            rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                TrnLog("ratekg") = Round(val(val(DataGrid1.Columns(6).Text) / rsg("value")), 3)
            End If
            
            TrnLog("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
        
            TrnLog("paymode") = txtfields(8).Text
            TrnLog("Paycode") = txtfields(60).Text
            TrnLog("arrivaltype") = Left(Combo7.Text, 1)
            TrnLog("rateunit") = Trim(Combo5.Text)
            TrnLog("carcode") = Trim(Combo3.Text)
            TrnLog("RateCY") = val(DataGrid1.Columns(6).Text)
            TrnLog("purtype") = Trim(txtfields(42).Text)
            TrnLog("currency") = Trim(txtfields(52).Text)
            TrnLog("IRNo") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
            TrnLog("IRSNo") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
            TrnLog("IRDate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
            TrnLog("InsPer") = val(DataGrid1.Columns(17).Text)
            TrnLog("BillNo") = Trim(txtfields(68).Text)
            TrnLog.UpdateBatch adAffectAllChapters

ElseIf opt1 = "mod" Then
    
        Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax,BillNo FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            'TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Order Amendment"
            TrnLog("Trans_Mod") = "MOD"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("plcode") = Trim(txtfields(62).Text)
            TrnLog("paycode") = Trim(txtfields(60).Text)
            TrnLog("Line_No") = Trim(txtfields(63).Text)
            TrnLog("BBFlg") = Trim(DataGrid1.Columns("pack Type").Text)
            TrnLog("TaxCode") = DataGrid1.Columns(14).Text
            TrnLog("hsn") = Trim(DataGrid1.Columns("HSN Code").Text)
            TrnLog("cgstper") = val(DataGrid1.Columns("CGST %").Text)
            TrnLog("sgstper") = val(DataGrid1.Columns("SGST %").Text)
            TrnLog("Igstper") = val(DataGrid1.Columns("IGST %").Text)
            TrnLog("dlytype") = Trim(txtfields(20).Text)
            TrnLog("docno") = val(txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            TrnLog("contno") = txtfields(0).Text
            TrnLog("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            TrnLog("slcode") = txtfields(1).Text
            TrnLog("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
            If Option1.value = True Then
                 TrnLog("im_ind") = "I"
            ElseIf Option2.value = True Then
                 TrnLog("im_ind") = "L"
            ElseIf Option3.value = True Then
                 TrnLog("im_ind") = "U"
            End If
        
            TrnLog("varcode") = DataGrid1.Columns(1).Text
            TrnLog("ordqty") = val(DataGrid1.Columns(3).Text)
            TrnLog("ordkgs") = val(DataGrid1.Columns(5).Text)
            TrnLog("CreditDays") = val(txtfields(38).Text)
            TrnLog("CashDisPer") = val(DataGrid1.Columns(8).Text)
            TrnLog("TradeDisPer") = val(DataGrid1.Columns(9).Text)
           ' TrnLog("ratekg") = RsMod("ratekg")
            Set rsg = New Recordset
            rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                TrnLog("ratekg") = Round(val(val(DataGrid1.Columns(6).Text) / rsg("value")), 3)
            End If
            TrnLog("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
        
            TrnLog("paymode") = txtfields(8).Text
            TrnLog("Paycode") = txtfields(60).Text
            TrnLog("arrivaltype") = Left(Combo7.Text, 1)
            TrnLog("rateunit") = Trim(Combo5.Text)
            TrnLog("carcode") = Trim(Combo3.Text)
            TrnLog("RateCY") = val(DataGrid1.Columns(6).Text)
            TrnLog("purtype") = Trim(txtfields(42).Text)
            TrnLog("currency") = Trim(txtfields(52).Text)
            TrnLog("IRNo") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
            TrnLog("IRSNo") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
            TrnLog("IRDate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
            TrnLog("InsPer") = val(DataGrid1.Columns(17).Text)
            TrnLog("BillNo") = Trim(txtfields(68).Text)
            TrnLog.UpdateBatch adAffectAllChapters

ElseIf opt1 = "del" Then


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
        TrnLog.Open "SELECT DelReason ,Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax,BillNo FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
          '  TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Order Amendment"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrids
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("plcode") = Trim(txtfields(62).Text)
            TrnLog("paycode") = Trim(txtfields(60).Text)
            TrnLog("Line_No") = Trim(txtfields(63).Text)
            TrnLog("BBFlg") = Trim(DataGrid1.Columns("pack Type").Text)
            TrnLog("TaxCode") = DataGrid1.Columns(14).Text
            TrnLog("hsn") = Trim(DataGrid1.Columns("HSN Code").Text)
            TrnLog("cgstper") = val(DataGrid1.Columns("CGST %").Text)
            TrnLog("sgstper") = val(DataGrid1.Columns("SGST %").Text)
            TrnLog("Igstper") = val(DataGrid1.Columns("IGST %").Text)
            TrnLog("dlytype") = Trim(txtfields(20).Text)
            TrnLog("docno") = val(txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            
            TrnLog("contno") = txtfields(0).Text
            TrnLog("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
            TrnLog("slcode") = txtfields(1).Text
            TrnLog("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
            If Option1.value = True Then
                 TrnLog("im_ind") = "I"
            ElseIf Option2.value = True Then
                 TrnLog("im_ind") = "L"
            ElseIf Option3.value = True Then
                 TrnLog("im_ind") = "U"
            End If
            TrnLog("varcode") = DataGrid1.Columns(1).Text
            TrnLog("ordqty") = val(DataGrid1.Columns(3).Text)
            TrnLog("ordkgs") = val(DataGrid1.Columns(5).Text)
            TrnLog("CreditDays") = val(txtfields(38).Text)
            TrnLog("CashDisPer") = val(DataGrid1.Columns(8).Text)
            TrnLog("TradeDisPer") = val(DataGrid1.Columns(9).Text)
           ' TrnLog("ratekg") = RsMod("ratekg")
            
            Set rsg = New Recordset
            rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                TrnLog("ratekg") = Round(val(val(DataGrid1.Columns(6).Text) / rsg("value")), 3)
            End If
            TrnLog("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
        
            TrnLog("paymode") = txtfields(8).Text
            TrnLog("Paycode") = txtfields(60).Text
            TrnLog("arrivaltype") = Left(Combo7.Text, 1)
            TrnLog("rateunit") = Trim(Combo5.Text)
            TrnLog("carcode") = Trim(Combo3.Text)
            TrnLog("RateCY") = val(DataGrid1.Columns(6).Text)
            TrnLog("purtype") = Trim(txtfields(42).Text)
            TrnLog("currency") = Trim(txtfields(52).Text)
            TrnLog("IRNo") = IIf(DataGrid1.Columns("iprno").Text = "", Null, DataGrid1.Columns("iprno").Text)
            TrnLog("IRSNo") = IIf(Trim(DataGrid1.Columns("prsno").Text) = "", Null, DataGrid1.Columns("prsno").Text)
            TrnLog("IRDate") = IIf(Trim(DataGrid1.Columns("prdate").Text) = "", Null, Format(DataGrid1.Columns("prdate").Text, "yyyy-MM-dd"))
            TrnLog("InsPer") = val(DataGrid1.Columns(17).Text)
            TrnLog("DelReason") = Trim(DelReasonCode)
            TrnLog("BillNo") = Trim(txtfields(68).Text)
            TrnLog.UpdateBatch adAffectAllChapters
End If


End Sub

Private Sub POPrintNEW()
        cno = txtfields(66).Text
        cdt = MaskEdBox5.Text
        
          
        Dim clsCryRpt1 As New clsCrystal

         Set clsCryRpt1.cryRept = Cry_PO_BFAmendmentRMI  'Cry_GSTRMIPO_updated 'Cry_GSTRMIPO  'Pallava_RM_Trans_Order

        
        
        
        clsCryRpt1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
    
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@OrdDate;" & Format(cdt, "yyyy-MM-dd") & ""
        CrystalReport1.ParameterFields(2) = "@OrdNo;" & cno & ""
        '
        If UCase(CustID) = "PALLAVA" Then
            cid = ""
            cid = "PALLAVAA"
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        ElseIf UCase(CustID) = "SHRIGIRI" Then
            cid = ""
            cid = "SRICHERAN "
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        ElseIf UCase(CustID) = "VSM" Then
            cid = ""
            cid = "VSM"
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        End If
        
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowPrintBtn = True
        CrystalReport1.WindowShowExportBtn = True
        cno = txtfields(0).Text
         cdt = Format(MaskEdBox3.Text, "yyyy-mm-dd")
        
        If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
            If POFirstLevelApproalDone(CStr(cno), CStr(cdt)) = False Then
                CrystalReport1.WindowShowPrintSetupBtn = False
                CrystalReport1.WindowShowPrintBtn = False
                CrystalReport1.WindowShowExportBtn = False
            End If
        End If
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        
    'End If
End Sub


Private Sub ExportERPPOPDF()
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If
     cno = txtfields(66).Text
        cdt = MaskEdBox5.Text

    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMERPAMDPO" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMERPAMDPO" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
'    CommonDialog1.ShowOpen
'    strNewFile = CommonDialog1.FileTitle
   
'  strNewFile
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMERPAMDPO" & CustID & "\" & Divcode & "-AMDPONO-" & Trim(txtfields(66).Text) + " DT-" + Trim(Format(MaskEdBox5.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) & ".pdf"
    If fso.FileExists(sFilePath) Then
       If Opt <> "add" And Opt <> "mod" Then
        If MsgBox("Amendment PO Print Already Exists!!! Do you want to override In server?", vbYesNo, head) = vbNo Then Exit Sub
       End If
    End If
    'sFilePathPO = App.Path & "\RMERPPO" & CustID & "\" & Divcode & "-PONO-" & Trim(Txtfields(0).Text) + " DT-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) & ".pdf"
    
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

            'oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
'            oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
'            oRpt.ParameterFields.Item(2).AddCurrentValue (Format(MaskEdBox5, "yyyy-mm-dd"))
'
'            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(txtfields(66).Text)1
            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
            oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
            oRpt.ParameterFields.Item(2).AddCurrentValue Divcode '(Format(MaskEdBox5, "yyyy-mm-dd"))
            oRpt.ParameterFields.Item(3).AddCurrentValue Divcode
            oRpt.ParameterFields.Item(4).AddCurrentValue (Format(MaskEdBox5, "yyyy-mm-dd"))
            oRpt.ParameterFields.Item(5).AddCurrentValue Trim(txtfields(66).Text)
            ' oRpt.ParameterFields.Item(6).AddCurrentValue cid
            ' oRpt.ParameterFields.Item(4).AddCurrentValue cno
            If UCase(CustID) = "PALLAVA" Then
                cid = ""
                cid = "PALLAVAA"
                oRpt.ParameterFields.Item(6).AddCurrentValue cid
            ElseIf UCase(CustID) = "SHRIGIRI" Then
                cid = ""
                cid = "SRICHERAN"
                oRpt.ParameterFields.Item(6).AddCurrentValue cid
            ElseIf UCase(CustID) = "VSM" Then
                cid = ""
                cid = "VSM"
                oRpt.ParameterFields.Item(6).AddCurrentValue cid
            End If
           
  
            oRpt.ExportOptions.DiskFileName = sFilePath
            oRpt.ExportOptions.DestinationType = crEDTDiskFile
            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            oRpt.ExportOptions.PDFExportAllPages = True
            oRpt.Export False
            
   
   
   
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub

Private Sub Trans_print()
On Error GoTo openconnection_Error
        cno = txtfields(66).Text
        cdt = MaskEdBox5.Text
                  
        Dim clsCryRpt As New clsCrystal
         If UCase(CustID) = "SKS" Then
             Set clsCryRpt.cryRept = Cry_POAmdment_SKS
         Else
             Set clsCryRpt.cryRept = Cry_POAmdmentNew 'Cry_PO_AmendmentRMI  'Cry_GSTRMIPO_updated 'Cry_GSTRMIPO  'Pallava_RM_Trans_Order
         End If
        
        clsCryRpt.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
    
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@OrdDate;" & Format(cdt, "yyyy-MM-dd") & ""
        CrystalReport1.ParameterFields(2) = "@OrdNo;" & cno & ""
        '
        If UCase(CustID) = "PALLAVA" Then
            cid = ""
            cid = "PALLAVAA"
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        ElseIf UCase(CustID) = "SHRIGIRI" Then
            cid = ""
            cid = "SRICHERAN "
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        ElseIf UCase(CustID) = "VSM" Then
            cid = ""
            cid = "VSM"
            CrystalReport1.ParameterFields(3) = "@Dbname;" & UCase(cid) & ""
        End If
        
        cno = txtfields(0).Text
         cdt = Format(MaskEdBox3.Text, "yyyy-mm-dd")
          SendKeys "{ENTER}"
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowPrintBtn = True
        CrystalReport1.WindowShowExportBtn = True
        If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
            If POFirstLevelApproalDone(CStr(cno), CStr(cdt)) = False Then
                CrystalReport1.WindowShowPrintSetupBtn = False
                CrystalReport1.WindowShowPrintBtn = False
                CrystalReport1.WindowShowExportBtn = False
            End If
        End If
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
         SendKeys "{ENTER}"
          SendKeys "{ENTER}"
        If PDFExportFlag = 1 Then
            Call ExportERPPOPDF
        End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub



Private Sub ADDRecord()
If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rs4 = New Recordset
        rs4.Open " select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier"",b.slcode ,isnull(b.supptype,'R') Supptype  from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0)  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0)  and  ISNULL(FIRST_APPFLG,'N')='Y'  )" & _
                           " UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier,b.slcode,isnull(b.supptype,'R') Supptype   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0) AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0)  and  ISNULL(FIRST_APPFLG,'N')='Y' ) ", DB, adOpenStatic
        If rs4.RecordCount = 0 Then
              MsgBox "No Record Found", vbInformation, head
              Opt = ""
              Exit Sub
        End If
        
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Please enter the valid Processing Date", vbInformation, head
                    Exit Sub
                End If
            End If
        End If

    If Record_Existstops("fa_slmas", "Please Define the Supplier!!") = False Then Exit Sub
    If Record_Existstops("rm_area", "Please Define the Area in SetUp!!") = False Then Exit Sub
    If Record_Existstops("po_car", "Please Define the Carrier in SetUp!!") = False Then Exit Sub
    If Record_Existstops("rm_var", "Please Define the Variety in SetUp!!") = False Then Exit Sub
    If Record_Existstops("RM_MIXGRP", "Please Define the Mixing Count in SetUp!!") = False Then Exit Sub
    If Record_Existstops("rm_rateunit", "Please Enter the RateUnit details ") = False Then Exit Sub
       
   
        
        Call flexgalign
        
        sampNo = ""
        Combo5.Clear
        Combo4.Clear
        
        Set RSV = New Recordset
        RSV.Open "select DISTINCT isnull(Arrivaltype,'P')ARRIVALTYPE FROM RM_CONT WHERE CONTNO=(SELECT MAX(CONVERT(varchar(10),CONTNO)) FROM  RM_CONT WHERE CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND  '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')  AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND  '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        ARRIVALTYPE = "P"
        If RSV.RecordCount > 0 Then
            ARRIVALTYPE = RSV("ARRIVALTYPE")
        End If
        
        Combo7.Clear
        Combo7.AddItem "P-PackWise"
        Combo7.AddItem "K-KgsWise"
        
        If ARRIVALTYPE = "P" Then
            Combo7.ListIndex = 0
        Else
            Combo7.ListIndex = 1
        End If
        
        Set rsrate = New Recordset
        rsrate.Open "select * from rm_rateunit", DB, adOpenStatic
        
        While Not rsrate.EOF
            Combo5.AddItem rsrate("unitname")
            rsrate.MoveNext
        Wend
        rsrate.MoveFirst
        Combo5.Text = rsrate("Unitname")
        
        Set rsweigh = New Recordset
        rsweigh.Open "select * from rm_WEIGHNMENT", DB, adOpenStatic
        
        While Not rsweigh.EOF
            Combo4.AddItem rsweigh("WNAME")
            rsweigh.MoveNext
        Wend
        
        If rsweigh.RecordCount > 0 Then
            rsweigh.MoveFirst
            Combo4.Text = rsweigh("wname")
        End If
        
        opt1 = "add"
        Set RSS = New Recordset
        Set RS11 = New Recordset
        RSS.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.OrdKgs,a.candyrate,a.pty_contno""Supplier SampleNo"",a.BBFLAG""Pack Type"",CashDisPer,TradeDisPer,BEDper,SEDPER""EDcessPer"",HSCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,Iprno,prdate,prsno ,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",SusCatType,Prepared_By,Tcs_per  from rm_cont a,rm_var b   where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.BBFLAG""Pack Type"",a.OrdKgs,a.candyrate,a.pty_contno""Supplier SampleNo"",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %""  ,Iprno,prdate,prsno,a.HSN ""HSN Code"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",Prepared_By,Tcs_per  from rm_cont a,rm_var b   where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        headertaxdisplay (0)
        
        Set DataGrid1.DataSource = RS11
        Call vargridalign
        DataGrid1.AllowAddNew = True
        DataGrid1.Enabled = True
        DataGrid1.EditActive = True
        DataGrid1.AllowUpdate = True
        RS11.AddNew
                            
        Opt = "add"
        Combo10.Text = "NO"
        desc.Caption = "Addition"
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text5.Text = ""
        Text6.Text = ""
        Text7.Text = ""
        Text10.Text = ""
        Call ClearText
        MaskEdBox1.Text = "__/__/____"
        txtfields(8).Text = ""
        txtfields(26).Text = ""
        txtfields(22).Text = ""
        txtfields(61).Text = ""
        txtfields(12).Text = ""
        txtfields(64).Text = ""
        txtfields(65).Text = ""
        Text4.Text = ""
        MaskEdBox3.Enabled = True
        MaskEdBox3.Text = pdate
        DTPicker1.MinDate = yfdate
        MaskEdBox4.Text = pdate
        DTPicker2.maxdate = pdate
        txtfields(0).Locked = True
        Set rstParameter = New Recordset
        rstParameter.Open "Select CentralizedOrder from RM_PARAM", DB, adOpenStatic
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,carcode,varcode,cntcode,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,TAX_CHOICE,CreditDays,InterestPer ,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort,CurrCode,DeliveryTerms,prepdate,FTFlg,FTAmt,Paycode,Line_No,PlCode,Prepared_By,Tcs_per from rm_cont where 1 = 2 and divcode='" & Divcode & "' ANd  contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
        
        adoPrimaryRS.AddNew
        
        Call ENABLCONTLS
        Call bindcontls
        Combo8.Locked = False
        Buttonframe.Enabled = True
        Frame10.Enabled = True
        Frame6.Enabled = True
        Frame1.Enabled = True
        Frame2.Enabled = True
        Frame9.Enabled = True
        Frame6.Enabled = True
        Frame10.Enabled = True
        SSTab1.Tab = 0
        
  If Opt = "add" Then
        Dim strType As String
        LookUp.Clear = True
        Set rs1 = New Recordset
        Frame1.Visible = True
        Frame2.Visible = True
        txtfields(8).Text = ""
        g = 1
        wosample = ""
        If val(txtfields(16).Text) > 0 Then
            txtfields(0).Text = txtfields(16).Text
        End If
        DB.BeginTrans

        Call adddelmod(BUTTON)
        BUTTON(4).Enabled = False

        txtfields(0).Locked = True

        MaskEdBox3.Text = pdate
        MaskEdBox4.Text = pdate
       ' DTPicker2.MaxDate = pdate
        txtfields(58).Text = Time 'Str(Now(Time, "HH:MM:SS"))
        Frame1.Enabled = True
        Frame2.Enabled = True
        Frame9.Enabled = True
        Frame6.Enabled = True
        Frame10.Enabled = True
        StatusBar1.Panels(2).Text = "Enter Order Date"
        Text1.Locked = True
        Text2.Locked = True
        Text3.Locked = True
        Frame4.Enabled = True
        Combo1.ListIndex = 0
        
        txtfields(4).Locked = True
        Flexg1.Rows = 1
        txtfields(0).Locked = True
        txtfields(0).SetFocus
        txtfields(24).Text = Combo5.Text
        txtfields(58).Text = Mid$(Time, 1, 10)
        txtfields(13).Text = Year(pdate)
        txtfields(20).Text = ""
        txtdeldesc.Text = ""
        Set TmpRs = New Recordset
        TmpRs.Open "Select CurrCode From PO_Para where Divcode ='" & Divcode & "'", DB, adOpenStatic
        If NULLCHECK(TmpRs!CurrCode) <> "" Then
            txtfields(52).Text = NULLCHECK(TmpRs!CurrCode)
        End If
        U = MsgBox("Do you want to enter Purchase Order With Sample?", vbYesNo, head)
            
      
            If U = vbYes Then
                 wosample = "Y"
                 Set rsa = New Recordset
                 rsa.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT where contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "')", DB, adOpenStatic
                 
                 
                 If rsa.RecordCount > 0 Then
                
                    StatusBar1.Panels(2).Text = "Select Sample No From the List"
                    LookUp.Clear = True
                    LookUp.query = "select SNO""Mill Sample No."" ,Date""Mill Sample Date"",slname""Supplier Name"",varname""Variety"",a.supcode,c.Varcode,a.PLOTNO ""SupplierLotNO"" from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' "
                                
                    LookUp.Caption = "Sample Listing"
                    LookUp.DefCol = "SupplierLotNO"
                    LookUp.ALIGN = "1400,1500,3800,1550,1,800,1500"
                    LookUp.Show vbModal
                    
                    
                    If LookUp.Cancel = False Then
                    
                    
                    
                    Set Rs = New Recordset
                   Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("supcode") & "'", DB
                   If Not Rs.EOF Then
            
                       STATEFLAG = Rs(0)
                    If STATEFLAG = "F" Then
                         IGSTFLG = "N"
                    End If
                   End If
                   
                  If STATEFLAG <> "F" Then
                    
                    Dim STCODE As String
                    Set rs1 = New Recordset
                    rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("supcode")) & "' ", DB
                    If rs1.EOF Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    Else
                        If rs1("GSTSTATECODE") = "0" Then
                                MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                        End If
                        STCODE = rs1("GSTSTATECODE")
                    End If
                             
                             
                    Set rs1 = New Recordset
                    rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
                    If Not rs1.EOF Then
                        IGSTFLG = "Y"
                    Else
                        IGSTFLG = "N"
                    End If
                    End If
                        Set Rs = New Recordset
                        Rs.Open "select ISNULL(HSN ,'') HSN ,varcode,varname,ISNULL(CGSTper,0) CGSTper, ISNULL(SGSTper,0)  SGSTper,ISNULL(IGSTper,0) IGSTper,taxcode from rm_var where varcode='" & LookUp.Fields("Varcode") & "'", DB, adOpenStatic
                        
                        If Rs.RecordCount > 0 Then
                            If Trim(Rs("HSN")) = "" Then
                                    MsgBox " PLEASE ENTER HSN CODE IN MASTER", vbCritical, head
                                    Call BUTTON_Click(10)
                                    BUTTON(9).Enabled = False
                                    Exit Sub
                            End If
                                DataGrid1.Columns("HSN Code").Text = Rs(0)
                          
                                If IGSTFLG = "Y" Then
                                    DataGrid1.Columns("CGST %").Text = Rs(3)
                                    DataGrid1.Columns("SGST %").Text = Rs(4)
                                    DataGrid1.Columns("IGST %").Text = 0
                                Else
                                    DataGrid1.Columns("CGST %").Text = 0
                                    DataGrid1.Columns("SGST %").Text = 0
                                    DataGrid1.Columns("IGST %").Text = Rs(5)
                                End If
                                    DataGrid1.Columns("tax code").Text = Rs(6)
                                    DataGrid1.Columns("Tax %").Text = Rs(5)
                     
                           
                            
                         End If
                        
                    
                    
                         Dim strQry As String
                         Set rstQry = New Recordset
                         
                         
                         strQry = "SELECT SNo, DATE,SUPCODE,VARCODE,Prty_sampno,brokercode,Area_code, crop_year FROM RM_sample Where sno = " & val(LookUp.Fields(0)) & " and Date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' AND Divcode = '" & Divcode & "' and supcode='" & LookUp.Fields(4) & "'"
                         
                         rstQry.Open strQry, DB, adOpenStatic
                         
                         txtfields(1).Text = rstQry!Supcode
                         txtfields(2).Text = IIf(IsNull(rstQry!Brokercode), "", rstQry!Brokercode)
                         txtfields(3).Text = IIf(IsNull(rstQry!Area_code), "", rstQry!Area_code)
                         txtfields(13).Text = IIf(IsNull(rstQry!Crop_year), "", rstQry!Crop_year)
                         
                         Text11.Text = getMasterName("station", "rm_area", "Areacode", rstQry!Area_code)
                         Text12.Text = getMasterName("State", "rm_area", "Areacode", rstQry!Area_code)
                         strType = getMasterName("L_OR_U", "rm_area", "Areacode", rstQry!Area_code)
                         If strType = "L" Then Option2 = True Else If strType = "U" Then Option1 = True Else If strType = "I" Then Option3 = True
                         DataGrid1.Columns(0).Text = rstQry!SNO
                         DataGrid1.Columns(1).Text = rstQry!Varcode
                         DataGrid1.Columns(2).Text = getMasterName("varname", "rm_var", "varcode", rstQry!Varcode)
                         DataGrid1.Columns(7).Text = IIf(IsNull(rstQry!prty_sampno), "", rstQry!prty_sampno)
                    End If
                    LookUp.Clear = True
            
          End If
            Option4 = True
            If strType = "" Then Option3.value = True
            If strType = "" Then txtfields(1).SetFocus Else DataGrid1.Col = 3: DataGrid1.SetFocus
        Else
            
            Set rs5 = New Recordset
            rs5.Open "select isnull(PRBased,'Y') as PRBased from rm_param ", DB, adOpenStatic, adLockReadOnly
            If Not rs5.EOF Then
                If rs5!PRBased = "Y" Then
                    wosample = "N"
                    Option4 = True
                    If strType = "" Then Option3.value = True
                    If strType = "" Then txtfields(1).SetFocus Else DataGrid1.Col = 3: DataGrid1.SetFocus
                    dlmdfrm.Visible = True
                    
                    StatusBar1.Panels(2).Text = "Select Indent from the list"
                    Option21.value = False
                    Option21.value = True
                    delmodok.SetFocus
                    dlmdfrm.ZOrder
                 Else
                   wosample = "N"
                    Option4 = True
                    If strType = "" Then Option3.value = True
                    If strType = "" Then txtfields(1).SetFocus Else DataGrid1.Col = 3: DataGrid1.SetFocus
                  End If
            End If
     End If
     End If
End Sub

