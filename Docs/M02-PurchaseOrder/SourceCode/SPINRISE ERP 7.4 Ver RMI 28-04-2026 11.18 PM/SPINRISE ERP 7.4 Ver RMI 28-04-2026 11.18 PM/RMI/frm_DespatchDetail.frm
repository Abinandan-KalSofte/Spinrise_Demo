VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_DespatchDetail 
   BackColor       =   &H8000000E&
   Caption         =   "Despatch Details "
   ClientHeight    =   8490
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   8355
   ClipControls    =   0   'False
   ForeColor       =   &H00800000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   8355
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame8 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   5895
      Left            =   840
      TabIndex        =   48
      Top             =   1440
      Width           =   11295
      Begin VB.CommandButton cmdItemSelect 
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
         Left            =   4800
         Style           =   1  'Graphical
         TabIndex        =   51
         Top             =   5400
         Width           =   1035
      End
      Begin VB.CommandButton cmdItemSelectClose 
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
         Left            =   6120
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   50
         Top             =   5400
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread spdPO 
         Height          =   4710
         Left            =   45
         TabIndex        =   52
         Top             =   600
         Width           =   11175
         _Version        =   524288
         _ExtentX        =   19711
         _ExtentY        =   8308
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
         SpreadDesigner  =   "frm_DespatchDetail.frx":0000
         AppearanceStyle =   1
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   0
         X2              =   12255
         Y1              =   520
         Y2              =   520
      End
      Begin VB.Label Label161 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "List of Purchase Order(s)"
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
         Left            =   0
         TabIndex        =   49
         Top             =   120
         Width           =   11265
      End
   End
   Begin VB.Frame FraMain 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   6810
      Left            =   12240
      TabIndex        =   39
      Top             =   2880
      Visible         =   0   'False
      Width           =   10980
      Begin VB.CommandButton Command11 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   120
         TabIndex        =   44
         Top             =   600
         Width           =   1440
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "Exit"
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
         Left            =   1680
         TabIndex        =   43
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton CmdSave 
         Caption         =   "Save"
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
         Left            =   12000
         TabIndex        =   42
         Top             =   720
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   10605
         TabIndex        =   41
         Top             =   7380
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton Command12 
         Caption         =   "View Log File"
         Height          =   375
         Left            =   375
         TabIndex        =   40
         Top             =   7725
         Visible         =   0   'False
         Width           =   1155
      End
      Begin FPSpreadADO.fpSpread spdView 
         Height          =   5415
         Left            =   120
         TabIndex        =   45
         Top             =   960
         Width           =   10785
         _Version        =   524288
         _ExtentX        =   19024
         _ExtentY        =   9551
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
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
         SpreadDesigner  =   "frm_DespatchDetail.frx":0431
         AppearanceStyle =   1
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   11160
         Top             =   600
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label Label126 
         Caption         =   "Note : Upload File Should be in  .XLS (office 97 or 2003) File format"
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
         Left            =   2280
         TabIndex        =   47
         Top             =   6480
         Width           =   6735
      End
      Begin VB.Label LblHead 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Import Lot Bale Data"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   0
         TabIndex        =   46
         Top             =   105
         Width           =   10950
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   9450
      Top             =   705
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   10050
      Top             =   705
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   34
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5295
         Picture         =   "frm_DespatchDetail.frx":0885
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "G.R.N"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   11295
         Picture         =   "frm_DespatchDetail.frx":0CC7
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "List (Ctrl L)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":105E
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "frm_DespatchDetail.frx":1368
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   8970
         Picture         =   "frm_DespatchDetail.frx":16FD
         Style           =   1  'Graphical
         TabIndex        =   28
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":1B3F
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "frm_DespatchDetail.frx":1F89
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":22EB
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "frm_DespatchDetail.frx":25F5
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Cancel (Ctrl+Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":2971
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "frm_DespatchDetail.frx":2C7B
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":301D
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "frm_DespatchDetail.frx":3467
         Style           =   1  'Graphical
         TabIndex        =   27
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":37FC
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "frm_DespatchDetail.frx":3C46
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":3F96
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "frm_DespatchDetail.frx":43E0
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":4745
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_DespatchDetail.frx":4A4F
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":4DE2
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "frm_DespatchDetail.frx":522C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":5579
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "frm_DespatchDetail.frx":5883
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_DespatchDetail.frx":5BFD
         BeginProperty Font 
            Name            =   "System"
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
         Picture         =   "frm_DespatchDetail.frx":5F07
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Delete (Ctrl+D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8115
         TabIndex        =   36
         Top             =   255
         Width           =   840
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
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   10380
         TabIndex        =   35
         Top             =   270
         Width           =   885
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   38
      Top             =   8190
      Width           =   8355
      _ExtentX        =   14737
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4410
            MinWidth        =   4410
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   12788
            MinWidth        =   12788
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "28/05/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:22 PM"
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
      DataField       =   "DIVCODE"
      Height          =   285
      Index           =   0
      Left            =   7200
      TabIndex        =   30
      Top             =   2040
      Visible         =   0   'False
      Width           =   150
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   8775
      Left            =   240
      TabIndex        =   53
      Top             =   1080
      Width           =   17160
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   15
         Left            =   4590
         Locked          =   -1  'True
         TabIndex        =   2
         ToolTipText     =   "Select the Supplier From the List"
         Top             =   840
         Visible         =   0   'False
         Width           =   1125
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Trans_Code"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   5
         Left            =   5400
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   11
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   2640
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         DataField       =   "DocNo"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   405
         Index           =   2
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   80
         TabStop         =   0   'False
         ToolTipText     =   "GRN Number"
         Top             =   90
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "SLCODE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   7
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   1
         ToolTipText     =   "Select the Supplier From the List"
         Top             =   500
         Width           =   1600
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3650
         Locked          =   -1  'True
         TabIndex        =   79
         TabStop         =   0   'False
         Top             =   500
         Width           =   7770
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   6990
         Locked          =   -1  'True
         TabIndex        =   78
         TabStop         =   0   'False
         Top             =   2655
         Width           =   4365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "deltype"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   14
         Left            =   5400
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   77
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   3045
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.TextBox txtQty 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "TOTCONTQTY"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   9600
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   76
         Text            =   " "
         ToolTipText     =   "Enter the Foot Note with Maximum of 100 Characters"
         Top             =   8490
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3645
         Locked          =   -1  'True
         TabIndex        =   75
         TabStop         =   0   'False
         Top             =   1185
         Width           =   7770
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "agentCODE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   18
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   9
         ToolTipText     =   "Select the Supplier From the List"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.TextBox Text4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3630
         Locked          =   -1  'True
         TabIndex        =   74
         TabStop         =   0   'False
         Top             =   1920
         Width           =   7770
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PaymentTerm"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   19
         Left            =   2000
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   6
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   1920
         Width           =   1575
      End
      Begin VB.ComboBox Combo3 
         BackColor       =   &H00FFFFFF&
         DataField       =   "carcode"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "frm_DespatchDetail.frx":62A3
         Left            =   2000
         List            =   "frm_DespatchDetail.frx":62B6
         Style           =   2  'Dropdown List
         TabIndex        =   73
         Top             =   2655
         Width           =   1600
      End
      Begin VB.ComboBox Combo5 
         BackColor       =   &H00FFFFFF&
         DataField       =   "RATEUNIT"
         Enabled         =   0   'False
         Height          =   315
         ItemData        =   "frm_DespatchDetail.frx":62E5
         Left            =   1980
         List            =   "frm_DespatchDetail.frx":62E7
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   72
         Top             =   3045
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "PackSlipNo"
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
         Index           =   6
         Left            =   5400
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   13
         ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
         Top             =   3360
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   1
         Left            =   9720
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   71
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   840
         Width           =   1680
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "Deliverydate"
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
         Left            =   9720
         MaxLength       =   12
         TabIndex        =   10
         Top             =   2235
         Width           =   1680
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "invno"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   3
         Left            =   2000
         Locked          =   -1  'True
         MaxLength       =   18
         TabIndex        =   3
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   1560
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "DeliveryTerm"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   10
         Left            =   6990
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   70
         Text            =   " "
         ToolTipText     =   "Enter the Note with Maximum of 100 Characters"
         Top             =   3045
         Visible         =   0   'False
         Width           =   4365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   4
         Left            =   2000
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   69
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   840
         Width           =   1605
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "truckno"
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
         Index           =   8
         Left            =   2000
         MaxLength       =   18
         MultiLine       =   -1  'True
         TabIndex        =   12
         ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
         Top             =   3360
         Width           =   1575
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   4965
         Left            =   0
         TabIndex        =   54
         Top             =   3720
         Width           =   17175
         _ExtentX        =   30295
         _ExtentY        =   8758
         _Version        =   393216
         TabHeight       =   520
         TabCaption(0)   =   "Order Details"
         TabPicture(0)   =   "frm_DespatchDetail.frx":62E9
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "SpdOrdDetail"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "Bale Details"
         TabPicture(1)   =   "frm_DespatchDetail.frx":6305
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "SPDBALEDETAILS"
         Tab(1).Control(1)=   "Frame3"
         Tab(1).ControlCount=   2
         TabCaption(2)   =   "Discount Details"
         TabPicture(2)   =   "frm_DespatchDetail.frx":6321
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "SPDDiscTypeDet"
         Tab(2).ControlCount=   1
         Begin VB.Frame Frame3 
            Height          =   975
            Left            =   -75000
            TabIndex        =   55
            Top             =   3900
            Width           =   11295
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
               Left            =   120
               Locked          =   -1  'True
               TabIndex        =   63
               Top             =   480
               Width           =   3675
            End
            Begin VB.CommandButton Command13 
               Caption         =   "Browse..."
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   3870
               TabIndex        =   62
               Top             =   420
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00E0E0E0&
               DataField       =   "TotGrossWt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
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
               Height          =   300
               Index           =   9
               Left            =   6150
               MaxLength       =   200
               MultiLine       =   -1  'True
               TabIndex        =   61
               ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
               Top             =   180
               Width           =   1575
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00E0E0E0&
               DataField       =   "TotTareWt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
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
               Height          =   300
               Index           =   11
               Left            =   6150
               MaxLength       =   200
               MultiLine       =   -1  'True
               TabIndex        =   60
               ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
               Top             =   540
               Width           =   1575
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00E0E0E0&
               DataField       =   "TotNetWT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
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
               Height          =   300
               Index           =   12
               Left            =   9600
               MaxLength       =   200
               MultiLine       =   -1  'True
               TabIndex        =   59
               ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
               Top             =   180
               Width           =   1575
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00E0E0E0&
               DataField       =   "TotInvWt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
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
               Height          =   300
               Index           =   13
               Left            =   9600
               MaxLength       =   200
               MultiLine       =   -1  'True
               TabIndex        =   58
               ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
               Top             =   600
               Width           =   1575
            End
            Begin VB.OptionButton Option2 
               Caption         =   "CSV"
               Height          =   255
               Left            =   1200
               TabIndex        =   57
               Top             =   120
               Width           =   615
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Excel"
               Height          =   255
               Left            =   240
               TabIndex        =   56
               Top             =   120
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "Gross Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   5070
               TabIndex        =   67
               Top             =   225
               Width           =   930
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Tare Wt"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   5070
               TabIndex        =   66
               Top             =   585
               Width           =   765
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Net Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   7920
               TabIndex        =   65
               Top             =   285
               Width           =   705
            End
            Begin VB.Label Label15 
               AutoSize        =   -1  'True
               Caption         =   "Invoice Wt"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   7920
               TabIndex        =   64
               Top             =   645
               Width           =   1050
            End
         End
         Begin FPSpreadADO.fpSpread SpdOrdDetail 
            Height          =   4245
            Left            =   45
            TabIndex        =   16
            Top             =   420
            Width           =   17070
            _Version        =   524288
            _ExtentX        =   30110
            _ExtentY        =   7488
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
            SpreadDesigner  =   "frm_DespatchDetail.frx":633D
            Appearance      =   2
         End
         Begin FPSpreadADO.fpSpread SPDBALEDETAILS 
            Height          =   3525
            Left            =   -74955
            TabIndex        =   68
            Top             =   420
            Width           =   17070
            _Version        =   524288
            _ExtentX        =   30110
            _ExtentY        =   6218
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
            SpreadDesigner  =   "frm_DespatchDetail.frx":6798
            Appearance      =   2
         End
         Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
            Height          =   4485
            Left            =   -74955
            TabIndex        =   107
            Top             =   360
            Width           =   16950
            _Version        =   524288
            _ExtentX        =   29898
            _ExtentY        =   7911
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
            SpreadDesigner  =   "frm_DespatchDetail.frx":6BF3
            Appearance      =   2
         End
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "DocDate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   0
         Left            =   10035
         TabIndex        =   81
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   150
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker1 
         DataField       =   "DocDate"
         Height          =   315
         Left            =   10020
         TabIndex        =   82
         TabStop         =   0   'False
         Top             =   135
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   148701185
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "invdate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   2
         Left            =   9750
         TabIndex        =   4
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   1560
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker3 
         DataField       =   "invdate"
         Height          =   315
         Left            =   9720
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   1530
         Width           =   1680
         _ExtentX        =   2963
         _ExtentY        =   556
         _Version        =   393216
         Format          =   109641729
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Deliverydate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   3
         Left            =   2040
         TabIndex        =   7
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   2280
         Width           =   1260
         _ExtentX        =   2223
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker4 
         DataField       =   "Deliverydate"
         Height          =   315
         Left            =   2040
         TabIndex        =   8
         TabStop         =   0   'False
         Top             =   2280
         Width           =   1560
         _ExtentX        =   2752
         _ExtentY        =   556
         _Version        =   393216
         Format          =   148242433
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "PackingDate"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   1
         Left            =   9720
         TabIndex        =   14
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   3390
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin MSComCtl2.DTPicker DTPicker2 
         DataField       =   "PackingDate"
         Height          =   315
         Left            =   9720
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   3360
         Width           =   1680
         _ExtentX        =   2963
         _ExtentY        =   556
         _Version        =   393216
         Format          =   148307969
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   270
         Index           =   4
         Left            =   6840
         TabIndex        =   105
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   840
         Visible         =   0   'False
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
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
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PO.Date"
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
         Height          =   195
         Index           =   11
         Left            =   6000
         TabIndex        =   106
         Top             =   840
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PO.No."
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
         Height          =   195
         Index           =   10
         Left            =   3840
         TabIndex        =   104
         Top             =   840
         Visible         =   0   'False
         Width           =   630
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc. No."
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
         Height          =   195
         Index           =   2
         Left            =   165
         TabIndex        =   103
         Top             =   150
         Width           =   795
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc. Date"
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
         Height          =   195
         Index           =   3
         Left            =   8340
         TabIndex        =   102
         Top             =   180
         Width           =   930
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Transport Name"
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
         Height          =   195
         Index           =   5
         Left            =   3720
         TabIndex        =   101
         Top             =   2670
         Width           =   1575
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Supplier Name"
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
         Height          =   195
         Index           =   7
         Left            =   165
         TabIndex        =   100
         Top             =   495
         Width           =   1425
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Delivery Type"
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
         Height          =   195
         Index           =   12
         Left            =   3720
         TabIndex        =   99
         Top             =   3045
         Visible         =   0   'False
         Width           =   1365
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "User Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   9
         Left            =   7080
         TabIndex        =   98
         Top             =   120
         Visible         =   0   'False
         Width           =   1065
      End
      Begin VB.Label lblUserID 
         Appearance      =   0  'Flat
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   270
         Left            =   6600
         TabIndex        =   97
         Top             =   1680
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Total Quantity"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   7785
         TabIndex        =   96
         Top             =   7455
         Width           =   1380
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Agent Name"
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
         Height          =   195
         Index           =   13
         Left            =   165
         TabIndex        =   95
         Top             =   1170
         Width           =   1185
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Payment Term"
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
         Height          =   195
         Index           =   14
         Left            =   165
         TabIndex        =   94
         Top             =   1970
         Width           =   1425
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Mode of Transport"
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
         Height          =   195
         Index           =   1
         Left            =   135
         TabIndex        =   93
         Top             =   2670
         Width           =   2130
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "UOM"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   2
         Left            =   135
         TabIndex        =   92
         Top             =   3045
         Width           =   420
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Invoice. Date"
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
         Height          =   195
         Index           =   0
         Left            =   8175
         TabIndex        =   91
         Top             =   1590
         Width           =   1305
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Invoice. No."
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
         Height          =   195
         Index           =   1
         Left            =   165
         TabIndex        =   90
         Top             =   1575
         Width           =   1170
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "Truck No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   89
         Top             =   3400
         Width           =   870
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Packing Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   8160
         TabIndex        =   88
         Top             =   3405
         Width           =   1275
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Packing Slip No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   3720
         TabIndex        =   87
         Top             =   3400
         Width           =   1560
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "GST State Code"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   8160
         TabIndex        =   86
         Top             =   825
         Width           =   1485
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "On Board Time"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   8160
         TabIndex        =   85
         Top             =   2280
         Width           =   1530
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "On Board Date"
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
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   84
         Top             =   2325
         Width           =   1395
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "GSTIN"
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
         Height          =   195
         Index           =   8
         Left            =   165
         TabIndex        =   83
         Top             =   855
         Width           =   600
      End
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   3
      Height          =   8940
      Left            =   120
      Top             =   960
      Width           =   17325
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   8790
      TabIndex        =   29
      Top             =   690
      Visible         =   0   'False
      Width           =   60
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Despatch Details "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      Left            =   255
      TabIndex        =   33
      Top             =   540
      Width           =   2280
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
      TabIndex        =   32
      Top             =   1350
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
      TabIndex        =   31
      Top             =   1350
      Visible         =   0   'False
      Width           =   1815
   End
End
Attribute VB_Name = "frm_DespatchDetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS, adoSecondaryRS1 As Recordset
Dim itemrec As Recordset
Dim CRY As String
Dim d As Integer
Dim TFlg As String
Dim VisFlg As String
Dim WithEvents rsb As Recordset
Attribute rsb.VB_VarHelpID = -1
Dim ah As Boolean, al As Boolean
Dim PenQty As Double
Dim trs As ADODB.Recordset
Dim vrs As Recordset
Dim sp As String
Dim itemc As String
Dim sp1 As String
Dim DB As Connection
Public Opt As String
Dim st2 As String
Dim deltype As String
Dim r As Integer
Dim MDOC As Long
Dim rs1 As New Recordset
Dim rs2 As New Recordset
Dim TC As Integer
Dim rs3, rs4, rs5, RS6 As New Recordset
Dim ITARY() As String
Dim modqty As Double
Dim roff1 As Double
Dim sp2 As Double
Dim pordrs As Recordset
Dim PRDt As String
Dim rpt As String
Dim tmp As String
Dim RW As Integer
Dim lck As Integer
Dim Rs As Recordset
Dim Roff As Integer
Dim I As Integer
Dim a As Double
Dim lno As Integer
Dim pgn As Integer
Dim rep As Report.ReportView
Dim MIBDESPATCH As Boolean  'THIS VARIABLE FOR DECIDE RECIEPT FROM MIB DESPATCH OR PO
Dim MIBNO, MIBDT As String
Dim LOOKUPRS As Recordset
Dim NewRs As Recordset
Private RepFoot As String
Dim TotValue As Double
Dim MOVELINKFlg As String
Dim nCurrRate As Double
Dim nAmount As Double
Dim nDisAmt As Double
Dim nTaxAmt As Double
Dim nPackAmt As Double
Dim nFreightAmt As Double
Dim nOtherAmt As Double
Dim nDisAmt2 As Double
Dim nTotalAmt As Double
Dim nTmpTotal As Double
Dim nTotalQty As Double
Dim nTotDisAmt As Double
Dim nTotTaxAmt As Double
Dim nTotPackAmt As Double
Dim nTotFreightAmt As Double
Dim nTotOtherAmt As Double
Dim nTotDisAmt2 As Double
Dim nRoff As Double
Dim nNetAmt As Double
Dim nRow As Double
Dim POAppFlag As Boolean
Dim lSuppSel As Boolean
Dim lQtyChange As Boolean
Dim nDispCount As Double
Dim IGSTFLG As String

Dim rstItemTol As New ADODB.Recordset

Dim rstTrnDate As New ADODB.Recordset

''For spread Index
Private Enum eORDDtls
    E_DivCode = 1
    E_docno = 2
    E_Docdate = 3
    E_DOCSNO = 4
    E_POGrp = 5
    E_PRNo = 6
    E_PRdt = 7
    E_PRSno = 8
    E_ItemCode = 9
    E_ItemName = 10
    E_ItemDesc = 11
    E_UOM = 12
    E_LineNo = 13
    E_QuantityBale = 14
    E_grosswt = 15
    E_TareWt = 16
    E_Quantity = 17
    E_InvQty = 18
    E_rate = 19
    E_Discrate = 20
    E_Netrate = 21
    E_Value = 22
    E_DiscValue = 23
    E_ASSValue = 24
    E_Tax_Code = 25
    E_CCGSTPer = 26
    E_CCGSTAmt = 27
    E_SCGSTPer = 28
    E_SCGSTAmt = 29
    E_ICGSTPer = 30
    E_ICGSTAmt = 31
    E_TCSper = 32
    E_TCSAMT = 33
    E_TotalAmt = 34
    E_ORDDivcode = 35
    E_Remarks = 36
End Enum

Private Enum ePODtls
    P_Select = 1
    P_PRNo = 2
    P_PRDt = 3
    P_ItemCode = 4
    P_ItemName = 5
    P_UOM = 6
    P_RateUnit = 7
    P_BalQty = 8
    P_CandyRate = 9
    P_Rate = 10
    P_ORDDIVCODE = 11
End Enum
Private Enum BBaleDtls
    B_DivCode = 1
    B_docno = 2
    B_Docdate = 3
    B_DOCSNO = 4
    B_PRNo = 5
    B_PRdt = 6
    B_ItemCode = 7
    B_BaleNo = 8
    B_GrossWt = 9
    B_TareWt = 10
    B_NETWT = 11
    B_Moisture = 12
    B_Invwt = 13
End Enum
Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTDocno
    SPDDTDOCDT
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
End Enum

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
  'This will display the current record position for this recordset

  If Opt = " " Or Opt = "" Then
      If adoPrimaryRS.AbsolutePosition > 0 Then
          stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
      Else
          stbar.Panels(2).Text = "No records found"
          Exit Sub
      End If
  End If

  If adoPrimaryRS.BOF = False And adoPrimaryRS.EOF = False And Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
     Set adoSecondaryRS = New Recordset


     Set adoSecondaryRS.DataSource = adoPrimaryRS("childcmd").value
  End If
  
  If Opt = " " Or Opt = "fnd" Or Opt = "" Then
     RW = 1
     With SpdOrdDetail
        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eORDDtls.E_DivCode, RW, adoSecondaryRS("Divcode")
            .SetText eORDDtls.E_docno, RW, adoSecondaryRS("docno")
            .SetText eORDDtls.E_Docdate, RW, adoSecondaryRS("Docdate")
            .SetText eORDDtls.E_DOCSNO, RW, adoSecondaryRS("DocSNo")
        
        
            .SetText eORDDtls.E_PRNo, RW, adoSecondaryRS("Contno")
            .SetText eORDDtls.E_PRdt, RW, Format(adoSecondaryRS("Contdt"), "dd/MM/yy")
        '    .SetText eORDDtls.E_PRSno, RW, adoSecondaryRS("PRSno")
            .SetText eORDDtls.E_ItemCode, RW, adoSecondaryRS("varcode")
            .SetText eORDDtls.E_ItemName, RW, adoSecondaryRS("varname")
            .SetText eORDDtls.E_ItemDesc, RW, adoSecondaryRS("varname")
            .SetText eORDDtls.E_UOM, RW, adoSecondaryRS("UOM")
            
            .SetText eORDDtls.E_LineNo, RW, adoSecondaryRS("Line_No")
            .SetText eORDDtls.E_Quantity, RW, adoSecondaryRS("QtyKGS")
            .SetText eORDDtls.E_grosswt, RW, adoSecondaryRS("GrossWt")
            .SetText eORDDtls.E_TareWt, RW, adoSecondaryRS("TareWt")
            .SetText eORDDtls.E_QuantityBale, RW, adoSecondaryRS("qty")
            .SetText eORDDtls.E_rate, RW, adoSecondaryRS("Rate")
            .SetText eORDDtls.E_InvQty, RW, adoSecondaryRS("INV_QtyKGS")
            .SetText eORDDtls.E_Value, RW, adoSecondaryRS("value")
            .SetText eORDDtls.E_Remarks, RW, adoSecondaryRS("remarks")
            .SetText eORDDtls.E_ORDDivcode, RW, adoSecondaryRS("ORDDivcode")
            .SetText eORDDtls.E_Netrate, RW, adoSecondaryRS("NetRate")
            .SetText eORDDtls.E_Discrate, RW, adoSecondaryRS("Disc_Rate")
           
            .SetText eORDDtls.E_Tax_Code, RW, adoSecondaryRS("TAX_CODE")
            .SetText eORDDtls.E_DiscValue, RW, adoSecondaryRS("Disc_Amt")
            .SetText eORDDtls.E_ASSValue, RW, adoSecondaryRS("Taxable_Amt")
            .SetText eORDDtls.E_CCGSTPer, RW, adoSecondaryRS("CGSTPER")
            .SetText eORDDtls.E_CCGSTAmt, RW, adoSecondaryRS("CGSTAMT")
            .SetText eORDDtls.E_SCGSTPer, RW, adoSecondaryRS("SGSTPER")
            .SetText eORDDtls.E_SCGSTAmt, RW, adoSecondaryRS("SGSTAMT")
            .SetText eORDDtls.E_ICGSTPer, RW, adoSecondaryRS("IGSTPER")
            .SetText eORDDtls.E_ICGSTAmt, RW, adoSecondaryRS("IGSTAMT")
            .SetText eORDDtls.E_TotalAmt, RW, adoSecondaryRS("TotalAmt")
            .SetText eORDDtls.E_TCSAMT, RW, adoSecondaryRS("tcs_amt")
            .SetText eORDDtls.E_TCSper, RW, adoSecondaryRS("tcs_per")
            
            
            Call LoadDiscountDetails(CStr(adoSecondaryRS("Contno")), CStr(adoSecondaryRS("Contdt")), CStr(adoSecondaryRS("varcode")), CStr(adoPrimaryRS("slcode")))
                   
            
            
            
            RW = RW + 1
            adoSecondaryRS.MoveNext
         Loop
     End With
     
     
     Tmplrow = 0
     If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
     
     nTotalQty = 0
     nTmpTotal = 0
     tmp = Opt
     Opt = ""
     With SpdOrdDetail
     For nRow = 1 To .MaxRows
         .Row = nRow
         If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
            ' .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(txtfields(11).Text), "0.00")
             nTotalQty = nTotalQty + GetText(SpdOrdDetail, E_Quantity, nRow)
         End If
     Next
     End With
     
 txtQty.Text = Format(nTotalQty, "0.000")
 Call SpreadAlignBale(0)
    Set adoSecondaryRS1 = New Recordset
    adoSecondaryRS1.Open "SELECT DivCode,DocNo,DocDate,DocSno,ContNo,ContDt,VarCode,GrossWt,TareWt,Netwt,MoisturePer,Invqty,baleno FROM RM_DespatchBale a Where DivCode='" & Divcode & "'  And docno = " & val(adoPrimaryRS("docno")) & " and Docdate = '" & Format(adoPrimaryRS("docdate"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
           
    RW = 1
     With SPDBALEDETAILS
        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            .SetText BBaleDtls.B_DivCode, RW, adoSecondaryRS1("Divcode")
            .SetText BBaleDtls.B_docno, RW, adoSecondaryRS1("docno")
            .SetText BBaleDtls.B_Docdate, RW, adoSecondaryRS1("Docdate")
            .SetText BBaleDtls.B_DOCSNO, RW, adoSecondaryRS1("DocSNo")
        
            .SetText BBaleDtls.B_PRNo, RW, adoSecondaryRS1("Contno")
            .SetText BBaleDtls.B_PRdt, RW, Format(adoSecondaryRS1("Contdt"), "dd/MM/yy")
            .SetText BBaleDtls.B_BaleNo, RW, adoSecondaryRS1("baleno")
            .SetText BBaleDtls.B_ItemCode, RW, adoSecondaryRS1("varcode")
            .SetText BBaleDtls.B_GrossWt, RW, adoSecondaryRS1("GrossWt")
            .SetText BBaleDtls.B_TareWt, RW, adoSecondaryRS1("TAREWT")
            .SetText BBaleDtls.B_NETWT, RW, adoSecondaryRS1("netwt")
            .SetText BBaleDtls.B_Moisture, RW, adoSecondaryRS1("MoisturePer")
            .SetText BBaleDtls.B_Invwt, RW, adoSecondaryRS1("Invqty")
            RW = RW + 1
            adoSecondaryRS1.MoveNext
         Loop
     End With
     
     
     Tmplrow = 0
     If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
     
     
  End If
  SSTab1.Tab = 0
  
  If Opt = "" Or Opt = " " Or Opt = "mod" Or Opt = "fnd" Or Opt = "del" Then
     If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
     
     
        If IsNull(adoPrimaryRS("Deliverydate")) = False Or adoPrimaryRS("Deliverydate") = "" Then
            MaskEdBox1(3).Text = Format(adoPrimaryRS("Deliverydate"), "dd/mm/yyyy")
        Else
            MaskEdBox1(3).Text = "__/__/____"
        End If
        
        If IsNull(adoPrimaryRS("PackingDate")) = False Or adoPrimaryRS("PackingDate") = "" Then
            MaskEdBox1(1).Text = Format(adoPrimaryRS("PackingDate"), "dd/mm/yyyy")
        Else
            MaskEdBox1(1).Text = "__/__/____"
        End If
        
        
        If IsNull(adoPrimaryRS("Deliverydate")) = False Then
            txtfields(58).Text = Right(adoPrimaryRS("Deliverydate"), 12)
        Else
            txtfields(58).Text = ""
        End If
    
        If IsNull(adoPrimaryRS("Docdate")) = False Then
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdate"), "dd/MM/yyyy")
            MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdate"), "dd/MM/yyyy")
            MaskEdBox1(0).ZOrder
        Else
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = "__/__/____"
            MaskEdBox1(0).Text = "__/__/____"
        End If

            Set MaskEdBox1(2).DataSource = adoPrimaryRS
            
            Set Combo3.DataSource = adoPrimaryRS
        
            Combo3.Text = adoPrimaryRS("carcode")
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
            
        
    End If
    
End If
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : adoPrimaryRS_MoveComplete " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Dim Ass As Double, j As Integer
Dim RsFa As Recordset

Dim FaInstall As String, Fatc As String, FaGl As String, FaNarr As String

On Error GoTo Errh

Select Case Index
Case 0

       If Not TrnDateValidation Then Exit Sub
       If Record_Exists("fa_slmas where slcode like '" & PartyType & "%'", "Please define Supplier in Supplier Master") = False Then Exit Sub
      ' If Record_Exists("IM_LCType", "Please define LC Type in Setup") = False Then Exit Sub
       If Record_Exists("RM_cont where divcode = '" & Divcode & "'", "No Purchase Order Found") = False Then Exit Sub
        Frame8.Visible = True
        Frame8.ZOrder
       Opt = "add"
       sp = " "
       desc.Caption = "Addition"
       Screen.MousePointer = 11
       stbar.Panels(2).Text = " "
       MaskEdBox1(0).Mask = pdate
       DTPicker1.value = pdate
       DTPicker1.MinDate = yfdate
       On Error Resume Next
              
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DivCode,docNo,docDate,SLCode,AgentCode,invNo,invDate,PaymentTerm,Deliverydate,carcode,Trans_Code,RateUnit,deltype,TruckNo,PackSlipNo,PackingDate,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotNetWT,TotInvWt,TotGrossWt,TotTareWt FROM RM_DespatchHD WHERE 1=2 Order by DivCode,docno", DB, adOpenStatic, adLockBatchOptimistic
       
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.ContNo,a.ContDt,a.VarCode,b.VARNAME ,a.uom,a.Qty,a.QtyKGS,a.INV_QtyKGS,a.Rate,a.Value,a.remarks,a.ORDDivcode,a.GrossWt,a.TareWt,NetRate,Disc_Rate,Tax_Code,Disc_Amt,Taxable_Amt,a.Cgstper,CGSTAmt,a.Sgstper,SGSTAmt,a.Igstper,IGSTAmt,TotalAmt,tcs_per,tcs_amt,a.Line_No FROM RM_DespatchDT a inner join RM_VAR b on b.VARCODE=a.varcode And 1=2 Order by a.DocSNo", DB, adOpenStatic, adLockBatchOptimistic
       lck = 1
       
       SpdOrdDetail.Enabled = True
   
       Call bindcontls
       '''''''''''''''Set SpdOrdDetail.DataSource = adoSecondaryRS
       Text2.Text = ""
       adoPrimaryRS.AddNew
       Call SpreadAlign(0)
       Call SpreadAlignPO(0)
       Call SpreadAlignBale(0)
       SSTab1.Tab = 0
       Call SETDISCTYPEHead
       rpt = "N"
       Dim rs2 As Recordset
       Screen.MousePointer = 0
                       
       txtfields(2).Locked = True
       Call ENABLCONTLS
       txtfields(2).Locked = True
       ReDim ITARY(50, 0)
     
       BUTTON(12).Enabled = False
       Set RS6 = New Recordset
       Call adddelmod(BUTTON)
       Fnd = "n"
       RW = 1000
       Screen.MousePointer = 0
       On Error Resume Next
       MaskEdBox1(0).Enabled = False
       DTPicker1.value = pdate
       txtfields(58).Text = Time
        Set rsrate = New Recordset
        rsrate.Open "select * from rm_rateunit", DB, adOpenStatic
        While Not rsrate.EOF
            Combo5.AddItem rsrate("unitname")
            rsrate.MoveNext
        Wend
        rsrate.MoveFirst
        Combo5.Text = rsrate("Unitname")
      ' txtFields(58).Text = Mid$(Time, 1, 8)
     txtfields(4).Text = ""
     txtfields(1).Text = ""
       DTPicker3.value = pdate
       DTPicker4.value = pdate
       DTPicker2.value = pdate
       MaskEdBox1(3).Text = "__/__/____"
       MaskEdBox1(2).Text = "__/__/____"
       MaskEdBox1(1).Text = "__/__/____"
       MaskEdBox1(4).Text = "__/__/____"
       itemc = "' '"
       Text3.Text = ""
       Text1.Text = ""
       Text4.Text = ""
       Text2.Text = ""
  
      ' txtfields(15).Locked = True
      ' txtfields(16).Locked = True
       'txtFields(1).Locked = False
      
       lSuppSel = False
       txtfields(7).Locked = False
       txtfields(7).Enabled = True
       txtfields(7).SetFocus
       Frame8.Visible = False
        
Case 1 'modification
       'If ToValidFinYear = False Then Exit Sub
       If Record_Exists("RM_Despatchhd Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        sp = " "
        lSuppSel = True
        
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct h.docno ""Doc.No."",h.Docdate ""Doc. Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" ,s.Supptype,isnull(GSTINNO,'0') GSTINNO,isnull(GSTSTATECODE,'0') GSTSTATECODE FROM  RM_DespatchHD h,RM_DespatchDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "'  And h.divcode = l.divcode and h.docno = l.docno And h.Docdate = l.Docdate and h.slcode = s.slcode and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' and h.docno not in(select ar.DPDocno from rm_arrival ar where h.divcode=ar.divcode and ar.supcd=h.SLCode and ar.DPDocno=h.docno) Order by h.docno"
        LookUp.Caption = "Despatch Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Screen.MousePointer = 11
                         SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("Supplier Code") & "'", DB
                If Not Rs.EOF Then
                       STATEFLAG = Rs(0)
                End If
                
                 If SuppType = "R" Then
          
                    If Trim(LookUp.Fields("GSTINNO")) = "" Then
                        MsgBox "PLEASE ENTER GST NO IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                    If LookUp.Fields("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                             Dim STCODE As String
                            Set rs1 = New Recordset
                            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Supplier Code")) & "' ", DB
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
            
            
            If Opt = "mod" Then
               Call ENABLCONTLS
            Else
               Call disablcontls
            End If
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
           
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
        End If
        'txtfields(1).SetFocus
Case 2
        'Deletion
       ' If ToValidFinYear = False Then Exit Sub
        If Record_Exists("RM_DespatchDT Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
        sp = " "
        lSuppSel = True
        
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct h.docno ""Doc.No."",h.Docdate ""Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" FROM  RM_DespatchHD h,RM_DespatchDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "' And h.divcode = l.divcode and h.docno = l.docno And h.Docdate = l.Docdate and h.slcode = s.slcode and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' and h.docno not in(select ar.DPDocno from rm_arrival ar where h.divcode=ar.divcode and ar.supcd=h.SLCode and ar.DPDocno=h.docno) Order by h.docno"
        LookUp.Caption = "Despatch Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Screen.MousePointer = 11
            If Opt = "mod" Then
                Call ENABLCONTLS
            Else
                Call disablcontls
            End If
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            Call BUTTON_Click(10)
        End If
        
Case 3
        If Record_Exists("RM_DespatchDT Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub

        desc.Caption = "Find"
        
        Buttonframe.Enabled = True
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct h.docno ""OC.No."",h.Docdate ""Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" FROM  RM_DespatchHD h,RM_DespatchDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "'  And h.divcode = l.divcode and h.docno = l.docno And h.Docdate = l.Docdate and h.slcode = s.slcode and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' Order by h.docno"
        LookUp.Caption = "OC Listing"
        LookUp.DefCol = "OC.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Opt = "fnd"
            Call query_mode(LookUp.Fields(0), LookUp.Fields(1))
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        Else
            Call BUTTON_Click(10)
        End If
Case 4
        
Case 5
       'first
        desc.Caption = "Query"
        
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:
          
Case 6
        'next
        desc.Caption = "Query"
        
        On Error GoTo GoNextError
        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
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
        End If
        Exit Sub
GoNextError:
     
Case 7
        'previous
        desc.Caption = "Query"
        
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
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
         End If
         Exit Sub
GoPrevError:
 
Case 8
        'last
        desc.Caption = "Query"
        
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Call las(BUTTON)
        Exit Sub
GoLastError:

Case 9

        'Save
       
        DB.CommandTimeout = 600
        tmp = Opt
        'Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        
        Opt = tmp
        value = 0
        If Opt = "add" Or Opt = "mod" Then
            Call TotalCal
            If MaskEdBox1(2).Text = "__/__/____" Then
                MsgBox "Invoice Date should be Filled", vbInformation, head
                MaskEdBox1(2).Text = MaskEdBox1(0).Text
                
                DTPicker3.value = MaskEdBox1(0).Text
                MaskEdBox1(2).SetFocus
                Exit Sub
            
            End If
            
            
            If MaskEdBox1(3).Text = "__/__/____" Then
                MsgBox "Delivery Date should be Filled", vbInformation, head
                MaskEdBox1(3).Text = MaskEdBox1(0).Text
                
                DTPicker4.value = MaskEdBox1(0).Text
                MaskEdBox1(3).SetFocus
                Exit Sub
            
            End If
   
            
'            If val(txtfields(11).Text) = 0 Then
'                MsgBox "Conersion Rate should be Filled", vbInformation, head
'                txtfields(11).SetFocus
'                Exit Sub
'            End If
            
            If Trim(txtfields(3).Text) = "" Then
                MsgBox "invoice No. should be Filled", vbInformation, head
                txtfields(3).SetFocus
                Exit Sub
            End If
            
            
            tmp = Opt
            Opt = ""
            With SpdOrdDetail
                For RW = 1 To .MaxRows
                    .Row = RW
                    If val(GetText(SpdOrdDetail, E_Quantity, RW)) = 0 Then
                        Opt = tmp
                        .Col = E_Quantity
                        MsgBox "Quantity Should Be Entered For " & GetText(SpdOrdDetail, E_ItemName, .Row), vbInformation, head
                        SpdOrdDetail.SetActiveCell E_Quantity, .Row
                        SpdOrdDetail.SetFocus
                        Exit Sub
                    End If
                    
                      If val(GetText(SpdOrdDetail, E_InvQty, RW)) = 0 Then
                        Opt = tmp
                        .Col = E_InvQty
                        MsgBox "Invoice Quantity Should Be Entered For " & GetText(SpdOrdDetail, E_ItemName, .Row), vbInformation, head
                        SpdOrdDetail.SetActiveCell E_InvQty, .Row
                        SpdOrdDetail.SetFocus
                        Exit Sub
                    End If
                    
                    If val(GetText(SpdOrdDetail, E_grosswt, RW)) = 0 Then
                        Opt = tmp
                        .Col = E_grosswt
                        MsgBox "Gross Weight Should Be Entered For " & GetText(SpdOrdDetail, E_ItemName, .Row), vbInformation, head
                        SpdOrdDetail.SetActiveCell E_grosswt, .Row
                        SpdOrdDetail.SetFocus
                        Exit Sub
                    End If
                    
                Next
            End With
            
            
            
            Opt = tmp
            
            If SpdOrdDetail.MaxRows = 0 Then
            MsgBox "Enter Item Details ", vbInformation, head
            Opt = tmp
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        If SPDBALEDETAILS.MaxRows = 0 Then
           ' MsgBox "Enter Bale Details ", vbInformation, head
            If MsgBox("Bale Details is Empty!! Do you want to Continue?", vbCritical + vbYesNo, head) = vbNo Then
             Opt = tmp
            Screen.MousePointer = 0
            Exit Sub
            Exit Sub
            Else
            End If
           
        End If
            
        End If
        
        'Check there is record to save
  
        
        Opt = temp1 = Opt
        Opt = tmp
        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then
         tmp = Opt
            Opt = ""
            nTotalinvqty = 0
            nTotalTare = 0
            nTotalGross = 0
            nTotalQty = 0
            nTotalBale = 0
            For nRow = 1 To SpdOrdDetail.MaxRows
                SpdOrdDetail.Row = nRow
                If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
                    nTotalQty = nTotalQty + val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    nTotalinvqty = nTotalinvqty + val(GetText(SpdOrdDetail, E_InvQty, nRow))
                    nTotalGross = nTotalGross + val(GetText(SpdOrdDetail, E_grosswt, nRow))
                    nTotalTare = nTotalTare + val(GetText(SpdOrdDetail, E_TareWt, nRow))
                    nTotalBale = val(GetText(SpdOrdDetail, E_QuantityBale, nRow))
                End If
            Next
            If SPDBALEDETAILS.MaxRows > 0 Then
                nNoofBale = 0
                For nRow = 1 To SPDBALEDETAILS.MaxRows
                    SPDBALEDETAILS.Row = nRow
                    If val(GetText(SPDBALEDETAILS, B_GrossWt, nRow)) > 0 Then
                  
                        nNoofBale = nNoofBale + 1
                    End If
                Next
                If nNoofBale <> nTotalBale Then
                    MsgBox "Bale Wise Qty and Total Qty should be matched", vbInformation, head
                     Opt = tmp
                    Exit Sub
                End If
                
                txtQty.Text = Format(nTotalQty, "0.000")
                
            
                If nTotalQty <> val(txtfields(12).Text) Then
                
                    MsgBox "Bale Wise Net weight and Total Net Weight should be matched", vbInformation, head
                     Opt = tmp
                    Exit Sub
                
                End If
                If nTotalTare <> val(txtfields(11).Text) Then
                     MsgBox "Bale Wise Tare weight and Total Tare Weight should be matched", vbInformation, head
                     Opt = tmp
                    Exit Sub
                End If
                If nTotalGross <> val(txtfields(9).Text) Then
                   MsgBox "Bale Wise Gross weight and Total Gross Weight should be matched", vbInformation, head
                     Opt = tmp
                    Exit Sub
                End If
                If nTotalinvqty <> val(txtfields(13).Text) Then
                     MsgBox "Bale Wise invoice weight and Total Invoice Weight should be matched", vbInformation, head
                     Opt = tmp
                    Exit Sub
                End If
            
           End If
            Opt = tmp
            
            DB.BeginTrans
            Dim ff As Form
            Set ff = Me
            
            ''=================
            '' HEADER UPDATION
            ''=================
            adoPrimaryRS("DivCode").value = Divcode
           
            If Opt = "add" Then
                adoPrimaryRS("docno") = newdocno()
            End If
            If MaskEdBox1(0).Text <> "__/__/____" Then
                adoPrimaryRS("Docdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            End If
            
            If MaskEdBox1(2).Text <> "__/__/____" Then
                adoPrimaryRS("InvDate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
        
     
            adoPrimaryRS("InvNo") = val(Trim(txtfields(3).Text))
            adoPrimaryRS("carcode") = (Trim(Combo3.Text))
            adoPrimaryRS("RATEUNIT") = (Trim(Combo5.Text))
            adoPrimaryRS("SLCode") = txtfields(7).Text
            adoPrimaryRS("agentCODE") = txtfields(18).Text
            
            adoPrimaryRS("Trans_Code") = Trim(txtfields(5).Text)
            If MaskEdBox1(3).Text <> "__/__/____" And IsDate(MaskEdBox1(3).Text) = True Then
                adoPrimaryRS("Deliverydate") = Format(MaskEdBox1(3).Text & " " & Trim(txtfields(58).Text), "YYYY-MM-DD hh:mm:ss")
            End If
            adoPrimaryRS("PaymentTerm") = Trim(txtfields(19).Text)
            adoPrimaryRS("deltype") = Trim(txtfields(14).Text)
            adoPrimaryRS("TruckNo") = Trim(txtfields(8).Text)
            adoPrimaryRS("TotTareWt") = val(txtfields(11).Text)
            adoPrimaryRS("TotGrossWt") = val(txtfields(9).Text)
            adoPrimaryRS("TotNetWT") = val(txtfields(12).Text)
            adoPrimaryRS("TotInvWt") = val(txtfields(13).Text)
            adoPrimaryRS("PackSlipNo") = Trim(txtfields(6).Text)
            If MaskEdBox1(1).Text <> "__/__/____" And IsDate(MaskEdBox1(1).Text) = True Then
                adoPrimaryRS("PackingDate") = Format(MaskEdBox1(1).Text, "YYYY-MM-DD hh:mm:ss")
            End If


            adoPrimaryRS("HostID") = HostName
            If Opt = "add" Then
                adoPrimaryRS("CreatedBy") = usrid
                adoPrimaryRS("CreatedDate") = GetServerDate
            ElseIf Opt = "mod" Then
                adoPrimaryRS("ModifiedBy") = usrid
                adoPrimaryRS("ModifiedDate") = GetServerDate
            End If
      
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            ''================
            '' DETAIL UPDATION
            ''================
            If Opt = "mod" Then
                ''Reverse Update LC Quantity in Purchase Order Table
'                Set rsTmp = New ADODB.Recordset
'                rsTmp.Open "Select * From RM_DespatchDT Where Divcode='" & divcode & "' And LocationCode='" & UserLocation & "' And docno=" & adoprimaryrs("docno") & " And Docdate='" & Format(adoprimaryrs("Docdate"), "yyyy-mm-dd") & "' Order By DocSNo", DB, adOpenStatic, adLockReadOnly
'                If Not (rsTmp.BOF And rsTmp.EOF) Then
'                    Do While Not rsTmp.EOF
'                        DB.Execute "Update PO_ORDL Set LCQty=ISNULL(LCQty,0)-" & rsTmp("Quantity") & " Where Divcode='" & divcode & "' And POGrp=" & rsTmp("POGrp") & " And PRNo=" & rsTmp("Contno") & " And PRDt='" & Format(rsTmp("Contdt"), "yyyy-mm-dd") & "' And PRSno=" & rsTmp("PRSno") & " And ItemCode='" & rsTmp("ItemCode") & "'"
'                        rsTmp.MoveNext
'                    Loop
'                End If
                
             
            Set rscont = New Recordset
            rscont.Open "select VarCode,Qty,QtyKGS,INV_QtyKGS,ORDDivcode,contno,contdt from RM_DespatchDT where    Divcode='" & Divcode & "' And docno=" & adoPrimaryRS("docno") & " And Docdate='" & Format(adoPrimaryRS("Docdate"), "yyyy-mm-dd") & "'", DB, adOpenStatic
            If Not rscont.EOF Then
                    Set RSH = New Recordset
                    If globalarrivalorder = "C" Then
                        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "' and (DIVCODE='" & rscont("ORDDivcode") & "' )", DB, adOpenStatic
                    Else
                        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "' and divcode='" & rscont("ORDDivcode") & "'", DB, adOpenStatic
                    End If
                    ARRIVALTYPE = "P"
                    If RSH.RecordCount > 0 Then
                        ARRIVALTYPE = RSH(0)
                    End If
                    
        
                    
                    If ARRIVALTYPE = "P" Then
                        If globalarrivalorder = "C" Then
                            DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)-" & rscont("Qty") & "  where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "' and (DIVCODE='" & rscont("ORDDivcode") & "' )  ")
                        Else
                            DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)-" & rscont("Qty") & "  where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "' and divcode='" & rscont("ORDDivcode") & "'")
                        End If
                    End If
                    If ARRIVALTYPE = "K" Then
                        If globalarrivalorder = "C" Then
                            DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)-" & rscont("QtyKGS") & "  where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "'  and (DIVCODE='" & rscont("ORDDivcode") & "' ) ")
                        Else
                            DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)-" & rscont("QtyKGS") & "  where varcode='" & rscont("VarCode") & "' and contno='" & rscont("contno") & "' and contdt='" & Format(rscont("contdt"), "yyyy/MM/dd") & "' and divcode='" & rscont("ORDDivcode") & "'")
                        End If
                    End If
               End If
                DB.Execute "Delete From RM_DespatchDT Where Divcode='" & Divcode & "' And docno=" & adoPrimaryRS("docno") & " And Docdate='" & Format(adoPrimaryRS("Docdate"), "yyyy-mm-dd") & "' "
                DB.Execute "Delete From RM_DespatchBale Where Divcode='" & Divcode & "' And docno=" & adoPrimaryRS("docno") & " And Docdate='" & Format(adoPrimaryRS("Docdate"), "yyyy-mm-dd") & "' "
                
            End If
            
            Dim nSno As Double
            Dim rsTail, rsTail1 As Recordset
            Set rsTail = New Recordset
                        
            rsTail.Open " SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.ContNo,a.ContDt,a.VarCode,a.uom,a.Qty,a.QtyKGS,a.INV_QtyKGS,a.Rate,a.Value,a.remarks,a.ORDDivcode,GrossWt,TareWt,NetRate,Disc_Rate,Tax_Code,Disc_Amt,Taxable_Amt,a.Cgstper,CGSTAmt,a.Sgstper,SGSTAmt,a.Igstper,IGSTAmt,TotalAmt,tcs_per,tcs_amt,a.Line_No FROM RM_DespatchDT a  WHERE divcode='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
                        
            nSno = 1
            For nRow = 1 To SpdOrdDetail.MaxRows
                SpdOrdDetail.Row = nRow
                SpdOrdDetail.SetActiveCell E_Quantity, nRow
                    rsTail.AddNew
                    rsTail("DivCode") = Divcode
                    rsTail("docno") = adoPrimaryRS("docno")
                    rsTail("Docdate") = Format(adoPrimaryRS("Docdate"), "yyyy/MM/dd")
                    rsTail("DocSNo") = nSno
                    rsTail("ContNo") = val(GetText(SpdOrdDetail, E_PRNo, nRow))
                    rsTail("ContDt") = Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd")
                    rsTail("VarCode") = Trim(GetText(SpdOrdDetail, E_ItemCode, nRow))
                    rsTail("Qty") = val(GetText(SpdOrdDetail, E_QuantityBale, nRow))
                    rsTail("grosswt") = val(GetText(SpdOrdDetail, E_grosswt, nRow))
                    rsTail("Line_No") = Trim(GetText(SpdOrdDetail, E_LineNo, nRow))
                    
                    rsTail("TareWt") = val(GetText(SpdOrdDetail, E_TareWt, nRow))
                    rsTail("QtyKGS") = val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    rsTail("Rate") = val(GetText(SpdOrdDetail, E_rate, nRow))
                    rsTail("Disc_Rate") = val(GetText(SpdOrdDetail, E_Discrate, nRow))
                    rsTail("NetRate") = val(GetText(SpdOrdDetail, E_Netrate, nRow))
                    
                    rsTail("INV_QtyKGS") = val(GetText(SpdOrdDetail, E_InvQty, nRow))
                    rsTail("value") = val(GetText(SpdOrdDetail, E_Value, nRow))
                    rsTail("uom") = Trim(GetText(SpdOrdDetail, E_UOM, nRow))
                    rsTail("ORDDivcode") = Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow))
                    rsTail("remarks") = Trim(GetText(SpdOrdDetail, E_Remarks, nRow))
                    
                    rsTail("TAX_CODE") = Trim(GetText(SpdOrdDetail, E_Tax_Code, nRow))
                    rsTail("Disc_Amt") = val(GetText(SpdOrdDetail, E_DiscValue, nRow))
                    rsTail("Taxable_Amt") = val(GetText(SpdOrdDetail, E_ASSValue, nRow))
                    rsTail("CGSTPER") = val(GetText(SpdOrdDetail, E_CCGSTPer, nRow))
                    rsTail("CGSTAMT") = val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow))
                    rsTail("SGSTPER") = val(GetText(SpdOrdDetail, E_SCGSTPer, nRow))
                    rsTail("SGSTAMT") = val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow))
                    rsTail("IGSTPER") = val(GetText(SpdOrdDetail, E_ICGSTPer, nRow))
                    rsTail("IGSTAMT") = val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow))
                    rsTail("TotalAmt") = val(GetText(SpdOrdDetail, E_TotalAmt, nRow))
                    rsTail("tcs_per") = val(GetText(SpdOrdDetail, E_TCSper, nRow))
                    rsTail("tcs_amt") = val(GetText(SpdOrdDetail, E_TCSAMT, nRow))


                    
                   
            Set RSH = New Recordset
            If globalarrivalorder = "C" Then
                RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' )", DB, adOpenStatic
            Else
                RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'", DB, adOpenStatic
            End If
            ARRIVALTYPE = "P"
            If RSH.RecordCount > 0 Then
                ARRIVALTYPE = RSH(0)
            End If
            

            
            If ARRIVALTYPE = "P" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)+" & val(GetText(SpdOrdDetail, E_QuantityBale, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ")
                Else
                    DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)+" & val(GetText(SpdOrdDetail, E_QuantityBale, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'")
                End If
            End If


            If ARRIVALTYPE = "K" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)+" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "'  and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                Else
                    DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)+" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'")
                End If
            End If
                   
                   
                   
                   
                    nSno = nSno + 1
                If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveNext
            Next
            rsTail.UpdateBatch adAffectAllChapters
            
            
            
            Set rsTail1 = New Recordset
                        
            rsTail1.Open " SELECT DivCode,DocNo,DocDate,DocSno,ContNo,ContDt,VarCode,GrossWt,TareWt,Netwt,MoisturePer,Invqty,baleno FROM RM_DespatchBale a Where DivCode='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
                        
            nSno = 1
            For nRow = 1 To SPDBALEDETAILS.MaxRows
                SPDBALEDETAILS.Row = nRow
                SPDBALEDETAILS.SetActiveCell B_GrossWt, nRow
                If Trim(GetText(SPDBALEDETAILS, B_BaleNo, nRow)) <> "" Then
                    rsTail1.AddNew
                    rsTail1("DivCode") = Divcode
                    rsTail1("docno") = adoPrimaryRS("docno")
                    rsTail1("Docdate") = Format(adoPrimaryRS("Docdate"), "yyyy/MM/dd")
                    rsTail1("DocSNo") = nSno
                    rsTail1("ContNo") = val(GetText(SPDBALEDETAILS, B_PRNo, nRow))
                    rsTail1("ContDt") = Format(GetText(SPDBALEDETAILS, B_PRdt, nRow), "yyyy/MM/dd")
                    rsTail1("VarCode") = Trim(GetText(SPDBALEDETAILS, B_ItemCode, nRow))
                    rsTail1("GrossWt") = val(GetText(SPDBALEDETAILS, B_GrossWt, nRow))
                    rsTail1("BALENO") = val(GetText(SPDBALEDETAILS, B_BaleNo, nRow))
                    rsTail1("TAREWT") = val(GetText(SPDBALEDETAILS, B_TareWt, nRow))
                    rsTail1("netwt") = val(GetText(SPDBALEDETAILS, B_NETWT, nRow))
                    rsTail1("Invqty") = val(GetText(SPDBALEDETAILS, B_Invwt, nRow))
                    rsTail1("MoisturePer") = val(GetText(SPDBALEDETAILS, B_Moisture, nRow))
              End If
                    nSno = nSno + 1
               ' If Not adoSecondaryRS1.EOF Then adoSecondaryRS1.MoveNext
            Next
            rsTail1.UpdateBatch adAffectAllChapters
              
            Opt = tmp
            DB.CommitTrans
            If Opt = "add" Then
                MsgBox "Despatch Entry No. for your transaction is " & adoPrimaryRS("docno"), vbInformation, head
            Else
                MsgBox "Record Modified Successfully", vbInformation, head
            End If
            
        End If
        If Opt = "del" Then     'del
        
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                DB.BeginTrans
               
               
                For nRow = 1 To SpdOrdDetail.MaxRows
                SpdOrdDetail.Row = nRow
                SpdOrdDetail.SetActiveCell E_Quantity, nRow
                    Set RSH = New Recordset
                    If globalarrivalorder = "C" Then
                        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' )", DB, adOpenStatic
                    Else
                        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'", DB, adOpenStatic
                    End If
                    ARRIVALTYPE = "P"
                    If RSH.RecordCount > 0 Then
                        ARRIVALTYPE = RSH(0)
                    End If
                    
        
                    
                    If ARRIVALTYPE = "P" Then
                        If globalarrivalorder = "C" Then
                            DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)-" & val(GetText(SpdOrdDetail, E_QuantityBale, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ")
                        Else
                            DB.Execute ("update rm_cont set drecqty =ISNULL(drecqty,0)-" & val(GetText(SpdOrdDetail, E_QuantityBale, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'")
                        End If
                    End If
        
        
                    If ARRIVALTYPE = "K" Then
                        If globalarrivalorder = "C" Then
                            DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)-" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "'  and (DIVCODE='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                        Else
                            DB.Execute ("update rm_cont set dRCDKGS=ISNULL(dRCDKGS,0)-" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & "  where varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, nRow)) & "' and contno='" & val(GetText(SpdOrdDetail, E_PRNo, nRow)) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, nRow), "yyyy/MM/dd") & "' and divcode='" & Trim(GetText(SpdOrdDetail, E_ORDDivcode, nRow)) & "'")
                        End If
                    End If
                              
                    nSno = nSno + 1
               
            Next
            DB.Execute ("DELETE FROM RM_DespatchDT WHERE Divcode = '" & Divcode & "'  AND docno =  " & val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_DespatchHD WHERE DivCode = '" & Divcode & "' And docno =  " & val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                
                DB.Execute ("DELETE FROM RM_DespatchBale WHERE Divcode = '" & Divcode & "'  AND docno =  " & val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
               
                DB.CommitTrans
                MsgBox "Record Deleted Successfully", vbInformation, head
            Else
               GoTo qry
            End If
            Opt = "del"
        End If
        
        ' Return to query mode
qry:       Call query_mode(0, 0)
        'Calling newform procedure to check for add,mod,del permissions of users
          Call NEWFORM1(BUTTON, GSNO)
          
Case 10

        
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        If MsgBox("Do you want to cancel?", vbCritical + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Frame8.Visible = False
    Buttonframe.Enabled = True
    
    tmp = Opt
    desc.Caption = "Query"
    Screen.MousePointer = 11
    
    'CANCEL
    On Error Resume Next
    Select Case Opt
  
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
     
    End Select
    
    'To return default settings - i.e query mode
    Screen.MousePointer = 0
    Call query_mode(0, 0)
    Label4.Visible = False
    Label5.Visible = False
    Frame1.Visible = True
    SpdOrdDetail.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, 11)
    Call NEWFORM1(BUTTON, GSNO)
    
    
Case 11
    'EXIT
'    i = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
'    If i = vbYes Then
        Unload Me
   ' End If

Case 13

Dim POrder As New clsCrystal
    Set POrder.cryRept = Cry_Despatch_details
    POrder.CrystalPrint
    
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.ParameterFields(1) = "@DocNo;" & txtfields(2).Text
    CrystalReport1.ParameterFields(2) = "@Docdt ;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 0
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

    Screen.MousePointer = 0
            
'    ''Order No Preparation
'    Dim sPRNo As String
'    Set rsHead = New Recordset
'    rsHead.Open " Select Distinct L.DivCode,PRNo,PRDt FROM RM_DespatchDT L, PO_TYPE T" & _
'                " WHERE L.DIVCODE='" & divcode & "'  AND docno=" & Val(txtfields(2).Text) & " AND Docdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND L.POGRP=T.TYPE_CODE", DB, adOpenStatic, adLockReadOnly
'    If Not (rsHead.BOF And rsHead.EOF) Then
'        rsHead.MoveFirst
'        Do While Not rsHead.EOF
'            If Trim(sPRNo) <> "" Then
'                sPRNo = sPRNo & ", " & rsHead("Contno") & "-" & rsHead("Contdt")
'            Else
'                sPRNo = sPRNo & rsHead("Contno") & "-" & rsHead("Contdt")
'            End If
'            rsHead.MoveNext
'        Loop
'    End If
'    If Len(sPRNo) > 256 Then
'        sPRNo = Left(sPRNo, 256)
'    End If
'
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\Import\LCRequest.rpt"
'    CrystalReport1.ParameterFields(0) = "@DivCode;" & divcode
'    CrystalReport1.ParameterFields(1) = "@docno;" & txtfields(2).Text
'    CrystalReport1.ParameterFields(2) = "@ReqDt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
'    CrystalReport1.Formulas(0) = "DivName= '" & divname & "'"
'    CrystalReport1.Formulas(1) = "PurOrder= '" & sPRNo & "'"
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{Enter}"
'    CrystalReport1.Action = 1
        
End Select
Exit Sub
er1:
If Err = -2147467259 Then
 MsgBox Err.Description, vbCritical, head

    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head + "Save Message"
    End If
ElseIf Err = -2147217864 Then
     Resume Next
Else
    Resume Next
End If
Opt = tmp
n1:
            Opt = tmp
            Exit Sub
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : BUTTON_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub ChkSelectAll_Click()
On Error GoTo Errh
For nRow = 1 To spdPO.MaxRows
    spdPO.Row = nRow
    spdPO.Col = P_Select
    If ChkSelectAll.value = 1 Then
        spdPO.value = 1
    Else
        spdPO.value = 0
    End If
Next

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ChkSelectAll_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Cmd_DiscountOK_Click()
FrameDiscType.Visible = False
End Sub

Private Sub CmdExit_Click()
FraMain.Visible = False
End Sub

Private Sub cmdItemSelect_Click()
Dim Ltemplrs As New ADODB.Recordset
Dim lRow As Long
Dim lcount As Long
Dim Ltemplrs1 As New Recordset
Dim rstItem As New ADODB.Recordset

On Error GoTo Errh

        ''''''''Movement Flag = "N" then We have to Load From Po List, Else We have to load From Material Inward
        lcount = 0
        
        spdPO.Col = P_Select
        For nRow = 1 To spdPO.MaxRows
            spdPO.Row = nRow
            spdPO.Col = P_Select
            If spdPO.value = 1 Then
                lcount = lcount + 1
            End If
        Next
                
        If lcount = 0 Then
            MsgBox "Please Select item from the list", vbInformation, head
            Exit Sub
            SpdOrdDetail.Visible = True
            Screen.MousePointer = 0
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            Call query_mode(0, 0)
            Call NEWFORM1(BUTTON, GSNO)
            Exit Sub
        End If
        Frame8.Visible = False
        SpdOrdDetail.Visible = False
        
        Buttonframe.Enabled = True
        BUTTON(9).Enabled = False

        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        Do Until adoSecondaryRS.EOF
            adoSecondaryRS.Delete
            adoSecondaryRS.MoveNext
        Loop
                
        Dim nSno As Double
        Dim sRefNo As String
        nSno = 1
        With SpdOrdDetail
            .MaxRows = 0
            For lRow = 1 To spdPO.MaxRows
               spdPO.Row = lRow
               spdPO.Col = P_Select
               If spdPO.value = 1 Then
                    .MaxRows = .MaxRows + 1
                    .Row = .MaxRows
                    .SetText E_TC, .Row, 1
                    .SetText E_DOCSNO, .Row, nSno
                    
                    
'                    Set Rs = New Recordset
'                    Rs.Open "SELECT a.PRNO ,a.PRDATE ,A.varcode 'Varity Code'   FROM Rm_PRL A WHERE PRNO='" & val(GetText(spdPO, P_PRNo, Lrow)) & "' AND PRDATE='" & Format(Trim(GetText(spdPO, P_PRDt, Lrow)), "YYYY-MM-DD") & "' AND PRSNO='" & val(GetText(spdPO, P_ORDDIVCODE, Lrow)) & "'", DB, adOpenStatic
'
                    .SetText E_ItemCode, .Row, Trim(GetText(spdPO, P_ItemCode, lRow))
                    .SetText E_ItemName, .Row, Trim(GetText(spdPO, P_ItemName, lRow))
                    .SetText E_ItemDesc, .Row, Trim(GetText(spdPO, P_ItemName, lRow))
                    .SetText E_UOM, .Row, GetText(spdPO, P_UOM, lRow)
                    .SetText E_PRNo, .Row, GetText(spdPO, P_PRNo, lRow)
                    .SetText E_PRdt, .Row, GetText(spdPO, P_PRDt, lRow)
                    .SetText E_grosswt, .Row, GetText(spdPO, P_BalQty, lRow)
                    .SetText E_rate, .Row, GetText(spdPO, P_Rate, lRow)
                    
                    
                    
'                    .SetText E_ po.Row, GetText(spdPO, P_ Lrow)
                    Set Rs = New Recordset
                    Rs.Open "SELECT  isnull(BRKCD,'') BRKCD ,rateunit,carcode, isnull(paycode,'') paycode,isnull(payterms,'') payterms,DUEDATE,isnull(cgstper,0) cgstper ,isnull(sgstper,0) sgstper,isnull(igstper,0) igstper ,isnull(tax_code,'') taxcode,isnull(Line_No,'') Line_No  FROM rm_cont A WHERE contno='" & val(GetText(spdPO, P_PRNo, lRow)) & "' AND contdt='" & Format(Trim(GetText(spdPO, P_PRDt, lRow)), "YYYY-MM-DD") & "' AND divcode='" & Trim(GetText(spdPO, P_ORDDIVCODE, lRow)) & "' ", DB, adOpenStatic
                    If Not Rs.EOF Then
                         txtfields(18).Text = Rs("BRKCD")
                         Text4.Text = Rs("payterms")
                         txtfields(19).Text = Rs("paycode")
                         MaskEdBox1(3).Text = IIf(IsNull(Rs("DUEDATE")), "__/__/____", Rs("DUEDATE"))
                         Combo5.Text = Rs("rateunit")
                         Combo3.Text = Rs("carcode")
                         .SetText E_CCGSTPer, .Row, Rs("cgstper")
                         .SetText E_SCGSTPer, .Row, Rs("sgstper")
                         .SetText E_ICGSTPer, .Row, Rs("igstper")
                         .SetText E_Tax_Code, .Row, Rs("taxcode")
                         .SetText E_LineNo, .Row, Rs("Line_No")
                         
                    End If
                        Set rsbk = New Recordset
                        rsbk.Open "select (isnull(TCSPer,.075)) TCSPer from rm_param ", DB, adOpenStatic
                        If Not rsbk.EOF Then
                            .SetText E_TCSper, .Row, rsbk("TCSPer")
                        End If
                    
                        Set rsbk = New Recordset
                        rsbk.Open "select sum(isnull(DRate,0)) DRate from RM_ContDiscntRate where contno='" & val(GetText(spdPO, P_PRNo, lRow)) & "' AND contdt='" & Format(Trim(GetText(spdPO, P_PRDt, lRow)), "YYYY-MM-DD") & "' AND divcode='" & Trim(GetText(spdPO, P_ORDDIVCODE, lRow)) & "' and varcode='" & Trim(GetText(spdPO, P_ItemCode, lRow)) & "'", DB, adOpenStatic
                        If Not rsbk.EOF Then
                             .SetText E_Discrate, .Row, rsbk(0)
                        End If
                        
                       .SetText E_Netrate, .Row, val(GetText(SpdOrdDetail, E_rate, .Row)) - val(GetText(SpdOrdDetail, E_Discrate, .Row))
                        
                        Set rsbk = New Recordset
                        rsbk.Open "select slname from fa_slmas where slcode='" & txtfields(18).Text & "'", DB, adOpenStatic
                        If Not rsbk.EOF Then
                            Text3.Text = rsbk(0)
                        End If
                        
                        
                        Set Rs = New Recordset
                        Rs.Open "SELECT PayTerm_Code ,PayTerm_Desc FROM Ig_PayTerm where PayTerm_Code='" & txtfields(19).Text & "'", DB, adOpenStatic
                         If Rs.RecordCount > 0 Then
                              txtfields(19).Text = Rs("PayTerm_Code")
                              Text4.Text = Rs("PayTerm_Desc")
                             
                              'Exit Sub
                         Else
                             Text4.Text = ""
                         End If
                        
           
                    .SetText E_ORDDivcode, .Row, GetText(spdPO, P_ORDDIVCODE, lRow)
                    
                     Call LoadDiscountDetails(GetText(SpdOrdDetail, E_PRNo, .Row), GetText(SpdOrdDetail, E_PRdt, .Row), GetText(SpdOrdDetail, E_ItemCode, .Row), Trim(txtfields(7).Text))
                    
                   
                     
                    
                    '.SetText E_QuantityBale, .Row, GetText(spdPO, P_BalQty, Lrow)
                                        
                    ''================================================================
                    ''Landed Cost Calculate To Pending LC Qty ( Foreign Currency )
                    ''================================================================
                    nLandCost = 0
                  '  nLandCost = Format((GetText(spdPO, P_LandCost, Lrow) / GetText(spdPO, P_RateUnit, Lrow)) * GetText(spdPO, P_BalQty, Lrow), "0.00")
                  '  .SetText E_InvQty, .Row, nLandCost
                    
                    ''================================================================
                    ''Landed/Net Rate Calculate To Pending LC Qty
                    ''================================================================
                   ' .SetText E_Rate, .Row, Format(nLandCost / GetText(spdPO, P_BalQty, Lrow), "0.00000")
                    
                    ''================================================================
                    ''LC Value Calculate ( Landed Value Converted To Indian Currency )
                    ''================================================================
                  '  nValue = Format(nLandCost * GetText(spdPO, P_ConvRate, Lrow), "0.00")
                 '   .SetText E_Value, .Row, nValue
                                        
                    'If Trim(sRefNo) <> "" Then
                    '    sRefNo = sRefNo & ", " & GetText(spdPO, P_RefNo, Lrow) & "-" & GetText(spdPO, P_RefDate, Lrow)
                    'Else
                    '    sRefNo = sRefNo & GetText(spdPO, P_RefNo, Lrow) & "-" & GetText(spdPO, P_RefDate, Lrow)
                    'End If
                                                                                
'                    If nSno = 1 Then
'                        txtFields(9).Text = GetText(spdPO, P_CurCode, Lrow)       'Currency
'                        txtFields(11).Text = GetText(spdPO, P_ConvRate, Lrow)     'Convertion Rate
'                        txtFields(12).Text = GetText(spdPO, P_PaymentTerm, Lrow)  'Payment Term
'                        txtFields(4).Text = GetText(spdPO, P_DespMode, Lrow)      'Carrier
'
'                        txtFields(13).Text = GetText(spdPO, P_RefNo, Lrow)        'Proforma Invoice & Date
'                        If IsDate(GetText(spdPO, P_RefDate, Lrow)) = True Then
'                            If Trim(txtFields(13).Text) <> "" Then
'                                txtFields(13).Text = txtFields(13).Text + "-" + Format(GetText(spdPO, P_RefDate, Lrow), "dd/MM/yyyy")
'                            End If
'                        End If
'
'                    End If
                    
                    nSno = nSno + 1
                    
                End If
                    
            Next lRow
        End With
        Tmplrow = 0
        txtfields(5).Enabled = True
        txtfields(7).Enabled = True
        SpdOrdDetail.Visible = True
        nTotalAmt = 0
        nTotalQty = 0
        tmp = Opt
        Opt = ""
        With SpdOrdDetail
        For nRow = 1 To .MaxRows
            .Row = nRow
            If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
                .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(GetText(SpdOrdDetail, E_rate, nRow)), "0.00")
                'nTotalAmt = nTotalAmt + GetText(SpdOrdDetail, E_InvQty, nRow)
                nTotalQty = nTotalQty + GetText(SpdOrdDetail, E_Quantity, nRow)
            End If
        Next
        End With
        txtQty.Text = Format(nTotalQty, "0.000")
     
     '   txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * val(txtfields(11).Text), "0.00")
       ' txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
        Opt = tmp
        
        ''Proforma Invoice No
        ''txtFields(13).Text = Trim(sRefNo)
        
        ''================================================================================
        ''Dont Touch This Coding, Otherwise Alternate Product Loading Problem may Araise
        ''================================================================================
        SpdOrdDetail.Col = E_ItemDesc
        SpdOrdDetail.TypeMaxEditLen = 200
        SpdOrdDetail.TypeEditCharSet = TypeEditCharSetAlphanumeric
        SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
        SetSpreadCol1 SpdOrdDetail, E_ItemDesc, "Description", CellTypeEdit, 30, , True, True
        ''================================================================================
        
        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        
    If lcount = 0 Then
        MsgBox "Item not Yet Selected.", vbOKOnly + vbDefaultButton1, head
    End If
    
    On Error Resume Next
    
    SpdOrdDetail.Visible = True
    BUTTON(9).Enabled = True
    txtfields(3).SetFocus
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelect_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub cmdItemSelectClose_Click()
On Error GoTo Errh

    Call BUTTON_Click(10)
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelectClose_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub




Private Sub Command11_Click()

On Error GoTo Command2_Click_Error

Call SpreadAlignBale(0)
    Dim UPBaleno, UPTareWt, UPNETwt, UPGrossWt, UpLotno, UPMoisture, UpInvWt, TotTareWt, TotGrossWt, TotNetWT, TotInvWt As Double
    Dim UPPOS As Integer
          TotTareWt = 0
           TotGrossWt = 0
           TotNetWT = 0
           TotInvWt = 0
   If spdView.MaxRows = 0 Then
        MsgBox " Kindly select Bale Detail file ", vbOKOnly
        Exit Sub
   End If
   SNO = 0
  For RW = 1 To spdView.MaxRows Step 1
    If Trim(GetText(spdView, 1, RW)) <> "" And GetText(spdView, 4, RW) <> "" And GetText(spdView, 5, RW) <> "" And IsNumeric(GetText(spdView, 5, RW)) = True And IsNumeric(GetText(spdView, 7, RW)) = True Then
     If IsNumeric(GetText(spdView, 7, RW)) = True Then
          UPSNO = CInt(Fix(Trim(GetText(spdView, 1, RW) & "")))
'               If InStr(Trim(GetText(spdView, CA_Shift, RW) & ""), ".") > 0 Then
'
'                sshifT = Left$(Trim(GetText(spdView, CA_Shift, RW) & ""), InStr(Trim(GetText(spdView, CA_Shift, RW) & ""), ".") - 1)
'                Else
'                sshifT = Trim(GetText(spdView, CA_Shift, RW) & "")
'                End If
          
                UPBaleno = (Fix(Trim(GetText(spdView, 2, RW) & "")))
                UPGrossWt = Trim(GetText(spdView, 3, RW) & "")
                UPTareWt = Trim(GetText(spdView, 4, RW) & "")
                UPNETwt = Trim(GetText(spdView, 5, RW) & "")
                UPMoisture = Trim(GetText(spdView, 6, RW) & "")
                UpInvWt = val(Trim(GetText(spdView, 7, RW) & ""))
          
                SPDBALEDETAILS.MaxRows = SPDBALEDETAILS.MaxRows + 1
                SNO = SNO + 1
                SPDBALEDETAILS.SetText BBaleDtls.B_ItemCode, SNO, Trim(GetText(SpdOrdDetail, E_ItemCode, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_PRNo, SNO, Trim(GetText(SpdOrdDetail, E_PRNo, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_PRdt, SNO, Trim(GetText(SpdOrdDetail, E_PRdt, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_DOCSNO, SNO, SPDBALEDETAILS.MaxRows
                SPDBALEDETAILS.SetText BBaleDtls.B_BaleNo, SNO, UPBaleno
                SPDBALEDETAILS.SetText BBaleDtls.B_GrossWt, SNO, UPGrossWt
                SPDBALEDETAILS.SetText BBaleDtls.B_TareWt, SNO, UPTareWt
                SPDBALEDETAILS.SetText BBaleDtls.B_NETWT, SNO, UPNETwt
                SPDBALEDETAILS.SetText BBaleDtls.B_Moisture, SNO, UPMoisture
                SPDBALEDETAILS.SetText BBaleDtls.B_Invwt, SNO, UpInvWt
                TotTareWt = TotTareWt + UPTareWt
                TotGrossWt = TotGrossWt + UPGrossWt
                TotNetWT = TotNetWT + UPNETwt
                TotInvWt = TotInvWt + UpInvWt
      End If
     End If
  Next
           txtfields(11).Text = Format(TotTareWt, "0.000")
           txtfields(9).Text = Format(TotGrossWt, "0.000")
           txtfields(12).Text = Format(TotNetWT, "0.000")
           txtfields(13).Text = Format(TotInvWt, "0.000")
           FraMain.Visible = False
   Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command13_Click()
Dim fphandle As Integer
 Dim List() As String
    Dim ListCount As Integer
    Dim f As Long, I As Integer
    Screen.MousePointer = 0
     FraMain.Visible = True
     FraMain.ZOrder
    spdView.MaxRows = 0
    ReDim List(1)
     On Error GoTo ErrorHandler   ' Enable error-handling routine.
      
    fpaction = 1 'OPEN
    If Option1.value Then
        
        With CommonDialog1
        
            .FileName = "*.xls"
            .DialogTitle = "Select Excel file to open"
            .Filter = "Excel files|*.xls"
            .FilterIndex = 0
            .InitDir = App.Path & "\ImportExport\"
            .flags = cdlOFNHideReadOnly
            .ShowOpen
           
            If .FileName = "*.xls" Then Exit Sub
            fpfilename = .FileName
            txt_filename.Text = fpfilename
          '  SpdOrdDetail.ActiveSheet.openexcel (txt_filename.Text)
         
            f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, True)
            If (ListCount - 1 > 1) Then
                ReDim List(ListCount)
                f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, False)
            End If
            xlfile = .FileName
            
        End With
    Else
         With CommonDialog1
        
            .FileName = "*.csv"
            .DialogTitle = "Select Excel file to open"
            .Filter = "ALL files|*.csv"
            .FilterIndex = 0
            .InitDir = App.Path & "\ImportExport\"
            .flags = cdlOFNHideReadOnly
            .ShowOpen
           
            If .FileName = "*.csv" Then Exit Sub
            fpfilename = .FileName
            txt_filename.Text = fpfilename
            f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, True)
            If (ListCount - 1 > 1) Then
                ReDim List(ListCount)
                f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, False)
            End If
            xlfile = .FileName
            
        End With
    
    End If
  
    If ListCount = 0 Then
        MsgBox "Error: This file is not a valid Excel 97/2007 file or is password protected.", vbExclamation, "Import Error"
        Exit Sub
    End If

Dim f1
    f1 = spdView.ImportExcelBook(xlfile, (App.Path & "\log.txt"))
   
    'Enable view log button
  '  Command1.Enabled = True

    Exit Sub
    
ErrorHandler:   ' Error-handling routine.
End Sub

Private Sub DTPicker3_CloseUp()
'MaskEdBox1(2).Text = Format(DTPicker3.Value, "dd/MM/yyyy")
'MaskEdBox1(2).SetFocus
'DTPicker3.
End Sub

Private Sub DTPicker3_GotFocus()
Me.DTPicker3.SetFocus
' With DTPicker1
'        'store the current value because it will be modified.
'        dteTemp = .Value
'
'        'Force a change to the current date section
'        SendKeys "{UP}", True
'   End With
End Sub

Private Sub DTPicker3_LostFocus()
If Opt = "add" Or Opt = "mod" Then
If MaskEdBox1(2).Text = "__/__/____" Then
'    MsgBox "Please select Oc Date", vbInformation, head
'    DTPicker3.ZOrder
'
Else
'DTPicker4.SetFocus
End If

End If

End Sub

Private Sub DTPicker4_CloseUp()
MaskEdBox1(3).Text = Format(DTPicker4.value, "dd/MM/yyyy")
'txtFields(58).SetFocus
MaskEdBox1(3).SetFocus

End Sub
Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = Format(DTPicker1.value, "dd/MM/yyyy")
End Sub

Private Sub DTPicker1_LostFocus()
On Error GoTo Errh

If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox "OC Request Date must be earlier or equal to Processing Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    End If
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Form_Activate()
    If BUTTON(0).Visible = True And BUTTON(0).Enabled = True Then
        BUTTON(0).SetFocus
    End If
    Buttonframe.Width = Me.Width
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)
   ElseIf KeyCode = vbKeyF And Shift = 2 And BUTTON(4).Enabled = True Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 And BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If
      
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "{tab}"
    If KeyAscii = 26 Then Call Form_KeyDown(vbKeyZ, 2)
End Sub

Private Sub Form_Load()
  
On Error GoTo Errh

'txtFields(12).Locked = False
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open "PROVIDER=MSDataShape;" + connectstring

SpreadAlign
' Call getBrokertype

BUTTON(9).Enabled = False
Opt = "qry"
If QryStat Then
   GSNO = 16
   Call query_mode(val(QSLCode), 1)
Else
   Call query_mode(0, 0)
End If
lblUserID = UserNme
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Call NEWFORM1(BUTTON, GSNO)
If QryStat Then
    BUTTON(0).Enabled = False
    BUTTON(1).Enabled = False
    BUTTON(2).Enabled = False
    BUTTON(3).Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(6).Enabled = False
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(12).Enabled = False
End If
   
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_Load " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Form_Resize()
On Error Resume Next
'
'    ''For Entry Form
'    stbar.Panels(2).Width = Me.Width - Val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'    Buttonframe.Width = Me.Width - 200
'
'    Shape1.Width = Me.Width - 400
'    Frame1.Width = Me.Width - 600
'    SpdOrdDetail.Width = Me.Width - 1000
'
'    Shape1.Height = Me.Height - 2100
'    Frame1.Height = Me.Height - 2200
'    SpdOrdDetail.Height = Me.Height - 8000
'
'    Label7.Top = Me.Height - 2500
'    txtQty.Top = Me.Height - 2600
'    Label7.Left = Label7.Left + 6700
'    txtQty.Left = txtQty.Left + 6700
'
'    ''For PO Order List Frame
'    Frame8.Top = (Me.Height / 2) - (Frame8.Height / 2)
'    Frame8.Left = (Me.Width / 2) - (Frame8.Width / 2)

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  If adoPrimaryRS.State > 0 Then adoPrimaryRS.Close
  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Nqcrecept = Nothing
  Reset
  
End Sub



Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error Resume Next
  
    If Index = 18 Then

    Ptype = "C4"
    
'    If ptype = Left(txtfields(18).Text, 2) Then
'        Set Rs = New Recordset
'        Rs.Open "select * from fa_slmas where SLcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'    End If
'
'    If ptype <> Left(txtfields(18).Text, 2) And ptype <> "" Then
'        Set Rs = New Recordset
'        Rs.Open "select * from fa_slmas where SLcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'    End If
'
'     Set tmprst = New Recordset
'     tmprst.Open "Select pt_Broker from pp_divmas where divcode='" & divcode & "'", DB, adOpenStatic
'
'    If Rs.RecordCount > 0 Then
'        Text3.Text = Rs("slname")
'        txtfields(18).Text = Rs("SLCODE")
'    Else

             Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
          LookUp.Clear = True
          LookUp.query = "select slname""Agentname"",slcode""Code"",Country from fa_slmas where slcode like '" & bro & "'" '"
'          LookUp.query = "select Slname""Agentname"",Slcode""Code"" from fa_slmas where slcode like '" & tmprst("Pt_Broker") & "%'"
          LookUp.Caption = "Agent Listing"
          LookUp.DefCol = "Agentname"
          LookUp.ALIGN = "4500,1500,2000"
          LookUp.Show vbModal
          If LookUp.Cancel = False Then
            txtfields(18).Text = LookUp.Fields(1)
            Text3.Text = LookUp.Fields(0)
           ' txtFields(3).SetFocus
            
            LookUp.Clear = True
           
          Else

            txtfields(18).Text = ""
            Text3.Text = ""
            txtfields(3).SetFocus
            Exit Sub
         End If
        stbar.Panels(2).Text = "Select Agent Name from the List"
    'End If
End If

End Sub

Private Sub SpdOrdDetail_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)

'    If SpdOrdDetail.ActiveCol = E_Quantity Then
'        stbar.Panels(2).Text = "Enter The LC Quanity"
'    End If
    
End Sub

Private Sub SpdOrdDetail_Change(ByVal Col As Long, ByVal Row As Long)
If Col = E_Quantity Then
   lQtyChange = True
   Call TotalCal
End If
If Col = E_InvQty Then
 
   Call TotalCal
End If

End Sub

Private Sub SpdOrdDetail_DblClick(ByVal Col As Long, ByVal Row As Long)
If Col = E_DOCSNO Then
    If Opt = "add" Or Opt = "mod" Then
        If SpdOrdDetail.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                SpdOrdDetail.DeleteRows SpdOrdDetail.ActiveRow, 1
                SpdOrdDetail.MaxRows = SpdOrdDetail.MaxRows - 1
                tmp = Opt
                Opt = ""
                With SpdOrdDetail
                    For nRow = 1 To .MaxRows
                        .Row = nRow
                        .SetText E_DOCSNO, .Row, nRow
                    Next
                End With
                Opt = tmp
            End If
        Else
            MsgBox "You cannot delete this record - Detail can have atleast one record", vbInformation, head
        End If
    End If
End If
End Sub

Private Sub SpdOrdDetail_EditError(ByVal Col As Long, ByVal Row As Long, ByVal EditError As Integer)
EditError = 0
End Sub

Private Sub SpdOrdDetail_GotFocus()
lQtyChange = False
End Sub

Private Sub SpdOrdDetail_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(3)
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
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If
    
                If KeyCode = vbKeyF5 Then
                    
                      
'                                FbDisRate = 0
'                                FBDisvalue = 0
'                                FrameDiscType.Visible = True
'                                FrameDiscType.ZOrder
'                                Call SETDISCTYPEHead
'                                Set Rs = New Recordset
'
'                                Rs.Open "SELECT * from RM_ContDiscntRate  a  INNER JOIN RM_CONT B ON A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE  left join RM_DiscountType C on a.dtype=C.code where  (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and im_ind='I'))) AND A.Varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and A.contno='" & val(GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow)) & "'  and A.Contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and isnull(RPTFLG,'N')='N' and A.supcd='" & Trim(txtfields(7).Text) & "' ", DB, adOpenStatic
'
'                                 r1 = 0
'                                  With SPDDiscTypeDet
'                                     If Not Rs.EOF Then
'                                         For I = 0 To Rs.RecordCount
'                                            If Not Rs.EOF Then
'                                               r1 = r1 + 1
'                                               .MaxRows = r1
'                                                   .SetText SPDDTSNO, r1, r1
'                                                   .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
'                                                   .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
'                                                   .SetText SPDDTDocno, r1, Rs.Fields("docno")
'                                                   .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
'                                                   .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
'                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
'                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
'                                                   .SetText SPDDTDRate, r1, Rs.Fields("DRate")
'
'                                              Rs.MoveNext
'                                              End If
'
'                                          Next
'
'
'                                   End If
'
'                               ' SpdPrd.MaxRows = SpdPrd.MaxRows + 1
'                              End With
'                              FrameDiscType.Visible = True
'
'                                'SpdPrd.SetFocus
'                               Exit Sub
'
                                
                         
                    
                    End If
    
    
    If KeyCode = 13 Or KeyCode = vbKeyTab Then
    
         If SpdOrdDetail.ActiveCol = E_Remarks Then
         SSTab1.Tab = 1
         
         End If
    If SpdOrdDetail.ActiveCol = E_TareWt Or SpdOrdDetail.ActiveCol = E_grosswt Or SpdOrdDetail.ActiveCol = E_Quantity Then
        If val(GetText(SpdOrdDetail, E_TareWt, SpdOrdDetail.ActiveRow)) > val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) Then
            MsgBox "Tare wt cannot be greater than Grosswt", vbInformation, head
             SpdOrdDetail.SetText E_TareWt, SpdOrdDetail.Row, 0
             SpdOrdDetail.Col = E_TareWt
             SpdOrdDetail.SetFocus
            Exit Sub
        End If
        SpdOrdDetail.SetText E_Quantity, SpdOrdDetail.Row, val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) - val(GetText(SpdOrdDetail, E_TareWt, SpdOrdDetail.ActiveRow))

    End If
    
    If SpdOrdDetail.ActiveCol = E_Quantity Then

        SpdOrdDetail.SetText E_Quantity, SpdOrdDetail.Row, val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) - val(GetText(SpdOrdDetail, E_TareWt, SpdOrdDetail.ActiveRow))

    End If
    

        If SpdOrdDetail.ActiveCol = E_grosswt Or SpdOrdDetail.ActiveCol = E_rate Then


        Exit Sub

            ' =========================
            ' Balance Qty verification
            ' =========================
'            Set rss = New Recordset
'            rss.Open " SELECT (ORDQTY-ISNULL(CANQTY,0)-ISNULL(LCQTY,0)) As PenLCQty, ORDQTY AS OrderQty FROM PO_ORDL " & _
'                     " WHERE Divcode='" & divcode & "' And POGRP='" & Trim(GetText(SpdOrdDetail, E_ SpdOrdDetail.ActiveRow)) & "'" & _
'                     " And PRNo='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
'                     " And PRDt='" & Format(GetText(SpdOrdDetail, E_PRDt, SpdOrdDetail.ActiveRow), "yyyy-MM-dd") & "'" & _
'                     " And PRSno='" & Val(GetText(SpdOrdDetail, E_PRSno, SpdOrdDetail.ActiveRow)) & "'" & _
'                     " And ItemCode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow)) & "'", DB
        Set rss = New Recordset
        rss.Open " SELECT ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) As PenLCQty, qtyordKG  AS OrderQty FROM Rm_PRL " & _
                 " WHERE Divcode='" & Divcode & "'" & _
                 " And PRNo='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
                 " And PRDAtE='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-MM-dd") & "'" & _
                 " And PRSno='" & val(GetText(SpdOrdDetail, E_PRSno, SpdOrdDetail.ActiveRow)) & "'" & _
                 " And varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow)) & "'", DB

        Dim NewPenQty, RecQty As Double

        If Opt = "mod" Then
            Set RsBalQty = New Recordset
            RsBalQty.Open "Select Sum(Quantity) As Qty From RM_DespatchDT WHERE Divcode='" & Divcode & "'  And   PRNo=" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & " AND PRDt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "YYYY-MM-DD") & "' AND ItemCode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' And PRSno=" & GetText(SpdOrdDetail, E_PRSno, SpdOrdDetail.ActiveRow) & " and Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' And '" & Format(yldate, "yyyy-mm-dd") & "' And docno Not in (" & val(txtfields(2).Text) & ")", DB
        End If
        
            If rss.RecordCount > 0 Then
                PenQty1 = rss(1)
                NewPenQty = rss(1)

                If Opt = "mod" Then
                    If RsBalQty.EOF = False Then
                        PenQty1 = rss(1) - IIf(IsNull(RsBalQty(0)), 0, RsBalQty(0))
                    End If
                End If

            Else
                PenQty1 = 0
            End If

'            If val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) > val(PenQty1) Then
'                MsgBox "Entered Quantity Cannot Be Greater than Pending Quantity " & Format(NewPenQty, "#0.000"), vbInformation, head
'                SpdOrdDetail.SetText E_Quantity, SpdOrdDetail.Row, 0
'                SpdOrdDetail.Col = E_Quantity
'                SpdOrdDetail.SetFocus
'                Exit Sub
'            End If

            If val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) = 0 Then
                MsgBox "Quantity Must Be Greater Than Zero", vbInformation, head
                SpdOrdDetail.Col = E_Quantity
                SpdOrdDetail.SetFocus
                Exit Sub
            End If

    
  
            SpdOrdDetail.SetText E_Value, SpdOrdDetail.Row, Format(val(GetText(SpdOrdDetail, E_InvQty, SpdOrdDetail.Row)) * val(GetText(SpdOrdDetail, E_rate, SpdOrdDetail.Row)), "0.00")
        
          '   txtfields(15).Text = val(GetText(SpdOrdDetail, E_Value, SpdOrdDetail.Row))
             
            If KeyCode = 13 Or KeyCode = vbKeyTab Then
                If SpdOrdDetail.ActiveRow = SpdOrdDetail.MaxRows Then
                   ' BUTTON(9).SetFocus
                End If
            End If

        End If

    End If
      
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SpdOrdDetail_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Public Sub bindcontls()
    On Error Resume Next
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        Set oText.DataSource = adoPrimaryRS
    Next

    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(Date, "dd/MM/yyyy")
    End If
    
    Set MaskEdBox1(0).DataSource = adoPrimaryRS
   
    Set MaskEdBox1(2).DataSource = adoPrimaryRS
    
    Set Combo3.DataSource = adoPrimaryRS

    Combo3.Text = adoPrimaryRS("carcode")
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
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo Errh

    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False

    'txtFields(9).Locked = True
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : disablcontls " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo Errh

    For Each oText In Me.txtfields
        oText.Locked = False
    Next

  '  txtFields(1).Locked = True
    MaskEdBox1(0).Enabled = True
    DTPicker1.Enabled = False
    'txtFields(9).Locked = True
    
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ENABLCONTLS " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
    End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
    
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &HC0FFC0
                stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
        End Select
    End If
    If Index = 0 Then
        If val(txtfields(2)) = 0 Then
            If MaskEdBox1(0).Text = "__/__/____" Then
                MaskEdBox1(0) = Format(pdate, "dd/MM/yyyy")
            End If
        End If
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
    
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &H80000005
                stbar.Panels(2).Text = ""
            Case 2
            If MaskEdBox1(2).Text = "__/__/____" Then
            MaskEdBox1(2).Text = Format(pdate, "dd/MM/yyyy")
            MaskEdBox1(2).SetFocus
            Exit Sub
            End If
            
              ' MaskEdBox1(3).SetFocus
               Exit Sub
            Case 3
                If MaskEdBox1(3).Text = "__/__/____" Then
                MaskEdBox1(3).SetFocus
                Exit Sub
                End If
            
               txtfields(58).SetFocus
               Exit Sub
          Case 1
             If MaskEdBox1(1).Text = "__/__/____" Then
             MaskEdBox1(1).Text = Format(pdate, "dd/MM/yyyy")
                MaskEdBox1(1).SetFocus
                Exit Sub
                End If
            
               SpdOrdDetail.Col = E_Quantity
               SpdOrdDetail.SetFocus
               Exit Sub
               
        End Select
        
    End If

If Opt = "add" Or Opt = "mod" Then
    
    If Index = 0 Then
        If MaskEdBox1(0).Enabled Then
            If Not (IsDate(MaskEdBox1(0).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(0).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                MsgBox "Reference Date must be earlier or equal to processing date", vbInformation, head
                MaskEdBox1(0).SetFocus
                MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If

End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

If Opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select the Date"
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Private Sub SpdOrdDetail_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
nAmount = 0
Dim PenQty1 As Double
If Opt = "add" Or Opt = "mod" Then

    If Col = E_InvQty Or Col = E_TCSper Then
     
       Call TotalCal
    End If

    If Col = E_Quantity Or Col = E_grosswt Then
     If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > 0 Then
        ' =========================
        ' Balance Qty verification
        ' =========================
        
        
    Set rstSLOTNO = New Recordset
    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow)) & "' and Contdt = '" & Format((GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow)), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(7).Text) & "'", DB, adOpenStatic
    If rstSLOTNO.EOF = False Then
        If rstSLOTNO!Prefix = "C" Then
            Set RSH = New Recordset
            RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
            ARRIVALTYPE = "P"
            If RSH.RecordCount > 0 Then
                ARRIVALTYPE = RSH("ARRIVALTYPE")
            End If
        
            If Col = IBalQty And ARRIVALTYPE = "P" Then
                    a = IContno
                    B = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
                    
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select quantity from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
                        bal = rsbal("quantity")
                    End If
                    If rsg.RecordCount <> 0 Then
                    bal = bal + val(rsg(0))
                    End If
                    d = IBalQty
                    If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > bal Then
                        SpdOrdDetail.SetText E_grosswt, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                        ''spdVar.SetActiveCell Ibalqty, row
                        Exit Sub
                    End If
            End If
            
            If Col = Igrosswt And ARRIVALTYPE = "K" Then
                    a = IContno
                    B = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    If globalarrivalorder = "C" Then
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                    Else
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                    End If
                    bal = 0
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select grosswt from RM_DespatchDT where docno=" & txtfields(0) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & GetText(SpdOrdDetail, E_ORDDivcode, SpdOrdDetail.ActiveRow) & "'", DB, adOpenStatic
                        bal = rsbal("grosswt")
                    End If
                    d = Igrosswt
                    bal = bal + rsg(0)
                    If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > bal Then
                        SpdOrdDetail.SetText E_grosswt, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
        '                spdVar.SetActiveCell Ibalqty, Row
                        Exit Sub
                    End If
            End If

    Else
    If globalarrivalorder = "C" Then
        Set RSH = New Recordset
        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
    Else
        Set RSH = New Recordset
        RSH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    End If
    
    ARRIVALTYPE = "P"
    If RSH.RecordCount > 0 Then
        ARRIVALTYPE = RSH("ARRIVALTYPE")
    End If

       If Col = E_Quantity And ARRIVALTYPE = "P" Then
            a = IContno
            B = IContdt
            c = IVarcode
            Set rsg = New Recordset
            If globalarrivalorder = "C" Then
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select quantity from RM_DespatchDT where docno=" & txtfields(2) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                bal = rsbal("quantity")
            End If
            If rsg.RecordCount <> 0 Then
            bal = bal + val(rsg(0))
            End If
            d = IBalQty
            If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > bal Then
                SpdOrdDetail.SetText E_grosswt, Row, bal
                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                ''spdVar.SetActiveCell Ibalqty, row
                Exit Sub
            End If
        End If
    
    If Col = E_grosswt And ARRIVALTYPE = "K" Then
            a = IContno
            B = IContdt
            c = IVarcode
            Dim V_WtToleranceper As Integer
            
            Set rsg = New Recordset
            Set rsgcont = New Recordset
            
            If globalarrivalorder = "C" Then
                rsg.Open "select  (ordKGS -  (isnull(drCDKGS,0)+isnull(cancelkgs,0))) as bal,isnull(ORDKGS,0)ORDKGS,isnull(dRcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                     " from rm_cont " & _
                     " where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "'" & _
                     " and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
                     " and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            
            rsgcont.Open "select  (ordKGS -  (isnull(rCDKGS,0)+isnull(cancelkgs,0))) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                     " from rm_cont " & _
                     " where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "'" & _
                     " and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
                     " and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            
            Else
                
                rsg.Open "select  (ordKGS -  isnull(drCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(dRcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                         " from rm_cont " & _
                         " where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "'" & _
                         " and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
                         " and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'" & _
                         " and divcode='" & Divcode & "'", DB, adOpenStatic
                rsgcont.Open "select  (ordKGS -  isnull(rCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                         " from rm_cont " & _
                         " where varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "'" & _
                         " and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "'" & _
                         " and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'" & _
                         " and divcode='" & Divcode & "'", DB, adOpenStatic
                         
            End If
            bal = 0
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select grosswt from RM_DespatchDT where docno=" & txtfields(2) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & GetText(SpdOrdDetail, E_ORDDivcode, SpdOrdDetail.ActiveRow) & "'", DB, adOpenStatic
                bal = rsbal("grosswt")
            End If
            
            Set rsa = New Recordset
            rsa.Open "select POWtTolerance from rm_param ", DB, adOpenStatic
            If Not rsa.EOF > 0 Then
                V_WtToleranceper = val(NULLCHECK(rsa("POWtTolerance")))
            Else
                V_WtToleranceper = 0
            End If
            d = Igrosswt
            bal = 0
            bal1 = 0
            ''bal = bal + rsg(0)
            bal = bal + Round((val(NULLCHECK(rsg("ORDKGS"))) + ((val(NULLCHECK(rsg("ORDKGS"))) - val(NULLCHECK(rsg("Cancelkg")))) * V_WtToleranceper / 100)) - (val(NULLCHECK(rsg("RcdKgs"))) + val(NULLCHECK(rsg("Cancelkg")))), 2)
            
            bal1 = bal1 + Round((val(NULLCHECK(rsgcont("ORDKGS"))) + ((val(NULLCHECK(rsgcont("ORDKGS"))) - val(NULLCHECK(rsgcont("Cancelkg")))) * V_WtToleranceper / 100)) - (val(NULLCHECK(rsgcont("RcdKgs"))) + val(NULLCHECK(rsgcont("Cancelkg")))), 2)
            
             If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > bal1 Then
                SpdOrdDetail.SetText E_grosswt, Row, bal1
                MsgBox "Quantity must be less than Balance Quantity", vbInformation, head
'                spdVar.SetActiveCell Ibalqty, Row
                Exit Sub
            End If
            
            
            If val(GetText(SpdOrdDetail, E_grosswt, SpdOrdDetail.ActiveRow)) > bal Then
                SpdOrdDetail.SetText E_grosswt, Row, bal
                MsgBox "Quantity must be less than Balance Quantity", vbInformation, head
'                spdVar.SetActiveCell Ibalqty, Row
                Exit Sub
            End If
    End If
    End If
    End If
'    If Col = Inetwt And spdVar.MaxRows = spdVar.ActiveRow Then
'        BUTTON(9).SetFocus
'        Exit Sub
'    End If


    
    Exit Sub
        
        
        Set rss = New Recordset
        rss.Open " SELECT ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) As PenLCQty, qtyordKG  OrderQty FROM Rm_PRL " & _
                 " WHERE Divcode='" & Divcode & "'" & _
                 " And PRNo='" & val(GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow)) & "'" & _
                 " And PRDATE='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "yyyy-MM-dd") & "'" & _
                 " And PRSno='" & val(GetText(SpdOrdDetail, E_PRSno, SpdOrdDetail.ActiveRow)) & "'" & _
                 " And varcode='" & Trim(GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow)) & "'", DB

        Dim NewPenQty, RecQty As Double

        If Opt = "mod" Then
            Set RsBalQty = New Recordset
            RsBalQty.Open "Select Sum(Quantity) As Qty From RM_DespatchDT WHERE Divcode='" & Divcode & "'  And   PRNo=" & GetText(SpdOrdDetail, E_PRNo, SpdOrdDetail.ActiveRow) & " AND PRDt='" & Format(GetText(SpdOrdDetail, E_PRdt, SpdOrdDetail.ActiveRow), "YYYY-MM-DD") & "' AND ItemCode='" & GetText(SpdOrdDetail, E_ItemCode, SpdOrdDetail.ActiveRow) & "' And PRSno=" & GetText(SpdOrdDetail, E_PRSno, SpdOrdDetail.ActiveRow) & " and Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' And '" & Format(yldate, "yyyy-mm-dd") & "' And docno Not in (" & val(txtfields(2).Text) & ")", DB
        End If

        If rss.RecordCount > 0 Then
            PenQty1 = rss(1)
            NewPenQty = rss(1)

            If Opt = "mod" Then
                If RsBalQty.EOF = False Then
                    PenQty1 = rss(1) - IIf(IsNull(RsBalQty(0)), 0, RsBalQty(0))
                End If
            End If

        Else
            PenQty1 = 0
        End If

        If val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) > val(PenQty1) Then
            Cancel = True
            Exit Sub
        End If

        If val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) = 0 Then
            Cancel = True
            Exit Sub
        End If
        

        'Amount Calculation
        'SpdOrdDetail.SetText E_InvQty, SpdOrdDetail.Row, Format(val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.Row)) * val(GetText(SpdOrdDetail, E_rate, SpdOrdDetail.Row)), "0.00")

        'LC Value Calculation
      '  SpdOrdDetail.SetText E_Value, SpdOrdDetail.Row, Format(val(GetText(SpdOrdDetail, E_InvQty, SpdOrdDetail.Row)) * val(txtfields(11).Text), "0.00")
                        
        nTotalAmt = 0
        nTotalQty = 0
        tmp = Opt
        Opt = ""
        With SpdOrdDetail
        For nRow = 1 To .MaxRows
            .Row = nRow
            If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
               ' .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(txtfields(11).Text), "0.00")
                nTotalAmt = nTotalAmt + val(GetText(SpdOrdDetail, E_Value, nRow))
                nTotalQty = nTotalQty + val(GetText(SpdOrdDetail, E_Quantity, nRow))
            End If
        Next
        End With
        txtQty.Text = Format(nTotalQty, "0.000")
'        If lQtyChange = True Then

         '  txtfields(15).Text = Format(KSLRound(nTotalAmt, 0), "0.00")
            txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
'        End If
        Opt = tmp
       End If
    End If
End If
End Sub

Private Sub spdPO_GotFocus()
spdPO.SetActiveCell P_Select, 1
End Sub

Private Sub Timer11_Timer()
Timer1.Interval = 500
If IsEmpty(nDispCount) = True Then
    nDispCount = 0
End If
If nDispCount = 0 Then
    txtfields(2).ForeColor = &H0&
    nDispCount = 1
ElseIf nDispCount = 1 Then
    txtfields(2).ForeColor = &H80FF&
    nDispCount = 0
End If
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo Errh
Dim TypRs As Recordset
If Opt = "" Or Opt = "qry" Or Opt = " " Or Opt = "mod" Or Opt = "del" Then
Select Case Index
Case 19

   Set Rs = New Recordset
   Rs.Open "SELECT PayTerm_Code ,PayTerm_Desc FROM Ig_PayTerm where PayTerm_Code='" & txtfields(19).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(19).Text = Rs("PayTerm_Code")
         Text4.Text = Rs("PayTerm_Desc")
        
         Exit Sub
    Else
        Text4.Text = ""
    End If



Case 5

    
        Set TypRs = New Recordset
        TypRs.Open "select carcode,carname from po_car where carcode='" & txtfields(5).Text & "'", DB
          If Not TypRs.EOF Then
            Text1.Text = TypRs("carname")
        Else
            Text1.Text = ""
        End If
    
      Set TypRs = Nothing
Case 14
    Set TypRs = New Recordset
    TypRs.Open "Select DCode,DName From IM_DlvTerm Where DCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
    If Not TypRs.EOF Then
        txtfields(10).Text = TypRs("DName")
    Else
        txtfields(10).Text = ""
    End If
    Set TypRs = Nothing
    
 
Case 18
    Set TypeRs = New Recordset
    TypeRs.Open "select slcode,slname from fa_slmas where slcode='" & txtfields(18).Text & "'", DB, adOpenStatic
    If TypeRs.RecordCount > 0 Then
            txtfields(18).Text = TypeRs("SLCODE")
            Text3.Text = TypeRs("SLNAME")
    End If
   
    
    
Case 7
    Set TypeRs = New Recordset
    TypeRs.Open "Select SlCode,SLName,City,isnull(GSTSTATECODE,'') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO from Fa_Slmas where SLCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
    If Not TypeRs.EOF Then
        Text2.Text = TypeRs(1) + ", " + IIf(IsNull(Trim(TypeRs(2))), "", Trim(TypeRs(2)))
        txtfields(1).Text = TypeRs("GSTSTATECODE")
        txtfields(4).Text = TypeRs("GSTINNO")
        
    Else
        Text2.Text = ""
    End If
    Set TypeRs = Nothing
Case 6
   ' txtfields(16).Text = Format((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), "0.00")
Case 11

    nTotalAmt = 0
    nTotalQty = 0
    tmp = Opt
    Opt = ""
    With SpdOrdDetail
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
            .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(txtfields(11).Text), "0.00")
            nTotalAmt = nTotalAmt + val(GetText(SpdOrdDetail, E_InvQty, nRow))
            nTotalQty = nTotalQty + val(GetText(SpdOrdDetail, E_Quantity, nRow))
        End If
    Next
    End With
    txtQty.Text = Format(nTotalQty, "0.000")

  '  txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * val(txtfields(11).Text), "0.00")
  '  txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
    Opt = tmp

End Select
  

End If
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtfields_Change " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Then
        If Index = 7 Then
            If lSuppSel = True Then
                lSuppSel = False
                Exit Sub
            End If
        End If
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Index <> 2 Or Index <> 9 Or Index <> 47 Then
            txtfields(Index).BackColor = &HC0FFC0
            stbar.Panels(2).Text = txtfields(Index).ToolTipText
        End If
    End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description    : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo Errh

'//////////**************FOR ALL FIELD VALIDATION *****************/////////
'//////////**************FOR ALL FIELD VALIDATION *****************/////////

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 1 'LC Type
                ToAlphaNumber txtfields(Index), 5, KeyAscii
            Case 5 'Payment Type
                ToAlphaNumber txtfields(Index), 10, KeyAscii
            Case 6 'Margin Money
               ' ToQuantity txtfields(Index), 5, KeyAscii, 2
            Case 3 'Country of Shipment
              '  ToAlphaNumber txtFields(Index), 100, KeyAscii
'                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
'                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
'                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
'                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
'                     KeyAscii = 0
'                End If

                
            Case 8 'Delivery Schedule
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                     KeyAscii = 0
                End If
            
            Case 4 'Despatch Mode
                ToAlphaNumber txtfields(Index), 100, KeyAscii
            Case 8 'truck No
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                ToUpCase txtfields(Index), KeyAscii
            Case 9 'Currency
                ToAlphaNumber txtfields(Index), 3, KeyAscii
                
            Case 5 'Payment Term
                 ToAlphaNumber txtfields(Index), 10, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                             Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                            KeyAscii = 0
                 End If
            Case 7 ' Supplier Code Validation
                If txtfields(7).Text = "" Then
              '  Call ToAlpha(txtfields(Index), 7, KeyAscii)
            Else
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                       (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                        KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58)) Then
                        KeyAscii = 0
                End If
                If Len(txtfields(Index).Text) > 7 Then
                    KeyAscii = 0
                End If
            End If
            Case 10 'Delivery Term
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
           Case 11 'Conversion Rate
              '  ToQuantity txtfields(Index), 12, KeyAscii, 5
           Case 12 'Payment Term
                 ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
        End Select
    End If

    If Opt = "mod" Then
        txtfields(7).Enabled = False
    Else
        txtfields(7).Enabled = True
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : TXTFIELDS_KeyPress " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error Resume Next
If Not (txtfields(Index).Text = "") Then
    txtfields(Index).Text = UCase(txtfields(Index).Text)
End If

If Index = 3 Then
    If Opt = "add" Then
    
'
'          Set rsoc = New Recordset
'          rsoc.Open "select InvNo from RM_DespatchHD where divcode='" & divcode & "' and InvNo='" & Trim(txtfields(3).Text) & "' ", DB, adOpenStatic
'          If Not rsoc.EOF Then
'            MsgBox "Oc No Cannot Be Repeat ", vbInformation, head
'            txtfields(3).Text = ""
'            txtfields(3).SetFocus
'            Cancel = True
'            Exit Sub
'
            
          
          
        '  DTPicker3.SetFocus
            
       ' End If
    End If
End If



If Index = 7 Then
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(7).Text) <> "" Then
        On Error Resume Next
           spdPO.SetFocus
            Exit Sub
        End If
    End If
End If

If Index = 11 Then
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(11).Text) <> "" Then
                SpdOrdDetail.Col = E_rate
                SpdOrdDetail.SetFocus
           ' spdPO.SetFocus
            
            Exit Sub
        End If
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    If Index <> 2 Then
        txtfields(Index).BackColor = &H80000005
        stbar.Panels(2).Text = ""
    End If
End If

txtfields(Index).BackColor = &H80000005

End Sub
Public Sub query_mode(ndocno As Long, dDocdate As Date)

Dim Rs As Recordset
On Error GoTo Errh
 SSTab1.Tab = 0
    If Not Opt = " " Then
        On Error GoTo er1
        lQtyChange = False
        txtfields(0).Text = Divcode
        Frame8.Visible = False
        Buttonframe.Enabled = True
        BUTTON(12).Enabled = True
        Call disablcontls
        DATLAB.Caption = Format(pdate, "dd/MM/yyyy")  'This variable is declared as global to show the date
        If ndocno = 0 Then
            Opt = " "
            Set adoPrimaryRS = New Recordset
            Call qry1
        Else
            Call fnd1(ndocno, dDocdate)
        End If
        If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
            Call SpreadAlign(0)
            Call SpreadAlignBale(0)
            MsgBox "No Records Found", vbInformation, head
            '''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
            Dim oText As TextBox
            'Bind the text boxes to the recordset
            For Each oText In Me.txtfields
                oText.Text = ""
            Next
            Text1.Text = ""
            Text2.Text = ""
           ' LCTName.Text = ""
            
            MaskEdBox1(0).Text = "__/__/____"
            Screen.MousePointer = 0
            Exit Sub
        End If
                
        If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = dv1
            Call BUTTON_Click(10)
            Exit Sub
        End If
        If Opt <> "fnd" Then
            If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        End If
        Call bindcontls
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Set adoSecondaryRS = New Recordset
        Set adoSecondaryRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        Call SpreadAlign(adoSecondaryRS.RecordCount)
        SpdOrdDetail.Lock = True
        
        If Opt <> "fnd" Then
            desc.Caption = "Query"
        End If
        
        Label2.Visible = False
                
    End If
    
    ' Calling newform procedure from Module to disable buttons
    If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
        MsgBox "No Records Found", vbInformation, head
        Call Norecfound(BUTTON)
        LCTName.Text = ""
        Text1.Text = ""
        Text2.Text = ""
        Call bindcontls
        ''''''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
        Screen.MousePointer = 0
        Exit Sub
    Else
        Call NEWFORM1(BUTTON, GSNO)
    End If
    
    If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = dv1
        Exit Sub
    End If
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0
    Exit Sub
er1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head + "Message"
        If Opt = "fnd" Then
            ''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
        End If
        Screen.MousePointer = 0
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  coul", vbInformation, head
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Query_mode " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub delmodproc(a As String, B As String)

On Error GoTo Errh

    RW = 1000
    BUTTON(9).Enabled = True
    BUTTON(9).Enabled = True
    On Error GoTo Er
    Set adoPrimaryRS = New Recordset
    Set adoSecondaryRS = New Recordset
                                                                       
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,invNo,invDate,PaymentTerm,Deliverydate,carcode,Trans_Code,RateUnit,deltype,TruckNo,PackSlipNo,PackingDate,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotNetWT,TotInvWt,TotGrossWt,TotTareWt  FROM RM_DespatchHD WHERE DivCode='" & Divcode & "' And docno = " & val(a) & " and docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                      " Order by DivCode,docno,Docdate} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.ContNo,a.ContDt,a.VarCode,b.VARNAME ,a.uom,a.Qty,a.QtyKGS,a.INV_QtyKGS,a.Rate,a.Value,a.remarks,a.ORDDivcode,a.GrossWt,a.TareWt,NetRate,Disc_Rate,Tax_Code,Disc_Amt,Taxable_Amt,a.Cgstper,CGSTAmt,a.Sgstper,SGSTAmt,a.Igstper,IGSTAmt,TotalAmt,tcs_per,tcs_amt ,a.Line_No FROM RM_DespatchDT a inner join RM_VAR b on b.VARCODE=a.varcode Where a.divcode='" & Divcode & "' " & _
                      "  And docno = " & val(a) & " and docdate = '" & Format(B, "yyyy-mm-dd") & "' And docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/MM/dd") & "' Order By DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE,Docdate TO Docdate,docno TO docno) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
       
       
    Call bindcontls
    
    If Opt = "mod" Or Opt = "del" Then
        Set adoSecondaryRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        RW = 1
        With SpdOrdDetail
        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eORDDtls.E_DivCode, RW, adoSecondaryRS("Divcode")
            .SetText eORDDtls.E_docno, RW, adoSecondaryRS("docno")
            .SetText eORDDtls.E_Docdate, RW, adoSecondaryRS("Docdate")
            .SetText eORDDtls.E_DOCSNO, RW, adoSecondaryRS("DocSNo")
        
            .SetText eORDDtls.E_PRNo, RW, adoSecondaryRS("Contno")
            .SetText eORDDtls.E_PRdt, RW, Format(adoSecondaryRS("Contdt"), "dd/MM/yy")
        '    .SetText eORDDtls.E_PRSno, RW, adoSecondaryRS("PRSno")
            .SetText eORDDtls.E_ItemCode, RW, adoSecondaryRS("varcode")
            .SetText eORDDtls.E_ItemName, RW, adoSecondaryRS("varname")
            .SetText eORDDtls.E_ItemDesc, RW, adoSecondaryRS("varname")
            .SetText eORDDtls.E_UOM, RW, adoSecondaryRS("UOM")
            .SetText eORDDtls.E_Quantity, RW, adoSecondaryRS("QtyKGS")
             .SetText eORDDtls.E_QuantityBale, RW, adoSecondaryRS("qty")
            .SetText eORDDtls.E_rate, RW, adoSecondaryRS("Rate")
            .SetText eORDDtls.E_InvQty, RW, adoSecondaryRS("INV_QtyKGS")
            .SetText eORDDtls.E_grosswt, RW, adoSecondaryRS("GrossWt")
            .SetText eORDDtls.E_TareWt, RW, adoSecondaryRS("TareWt")
            .SetText eORDDtls.E_Value, RW, adoSecondaryRS("value")
            .SetText eORDDtls.E_Remarks, RW, adoSecondaryRS("remarks")
            .SetText eORDDtls.E_ORDDivcode, RW, adoSecondaryRS("ORDDivcode")
            .SetText eORDDtls.E_Netrate, RW, adoSecondaryRS("NetRate")
            .SetText eORDDtls.E_Discrate, RW, adoSecondaryRS("Disc_Rate")
            .SetText eORDDtls.E_LineNo, RW, adoSecondaryRS("Line_No")
            
            .SetText eORDDtls.E_Tax_Code, RW, adoSecondaryRS("TAX_CODE")
            .SetText eORDDtls.E_DiscValue, RW, adoSecondaryRS("Disc_Amt")
            .SetText eORDDtls.E_ASSValue, RW, adoSecondaryRS("Taxable_Amt")
            .SetText eORDDtls.E_CCGSTPer, RW, adoSecondaryRS("CGSTPER")
            .SetText eORDDtls.E_CCGSTAmt, RW, adoSecondaryRS("CGSTAMT")
            .SetText eORDDtls.E_SCGSTPer, RW, adoSecondaryRS("SGSTPER")
            .SetText eORDDtls.E_SCGSTAmt, RW, adoSecondaryRS("SGSTAMT")
            .SetText eORDDtls.E_ICGSTPer, RW, adoSecondaryRS("IGSTPER")
            .SetText eORDDtls.E_ICGSTAmt, RW, adoSecondaryRS("IGSTAMT")
            .SetText eORDDtls.E_TotalAmt, RW, adoSecondaryRS("TotalAmt")
            
            .SetText eORDDtls.E_TCSper, RW, adoSecondaryRS("tcs_per")
            .SetText eORDDtls.E_TCSAMT, RW, adoSecondaryRS("tcs_amt")
            
            Call LoadDiscountDetails(GetText(SpdOrdDetail, E_PRNo, RW), GetText(SpdOrdDetail, E_PRdt, RW), GetText(SpdOrdDetail, E_ItemCode, RW), CStr(adoPrimaryRS("Slcode")))
                    
            
            RW = RW + 1
            adoSecondaryRS.MoveNext
         Loop
     End With
     Call TotalCal
    Set adoSecondaryRS1 = New Recordset
    adoSecondaryRS1.Open "SELECT DivCode,DocNo,DocDate,DocSno,ContNo,ContDt,VarCode,GrossWt,TareWt,Netwt,MoisturePer,Invqty,baleno FROM RM_DespatchBale a Where DivCode='" & Divcode & "'  And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
           
    RW = 1
     With SPDBALEDETAILS
        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
        .MaxRows = 0
        Do While Not adoSecondaryRS1.EOF
            .MaxRows = .MaxRows + 1
            .SetText BBaleDtls.B_DivCode, RW, adoSecondaryRS1("Divcode")
            .SetText BBaleDtls.B_docno, RW, adoSecondaryRS1("docno")
            .SetText BBaleDtls.B_Docdate, RW, adoSecondaryRS1("Docdate")
            .SetText BBaleDtls.B_DOCSNO, RW, adoSecondaryRS1("DocSNo")
            .SetText BBaleDtls.B_PRNo, RW, adoSecondaryRS1("Contno")
            .SetText BBaleDtls.B_PRdt, RW, Format(adoSecondaryRS1("Contdt"), "dd/MM/yy")
            .SetText BBaleDtls.B_BaleNo, RW, adoSecondaryRS1("baleno")
            .SetText BBaleDtls.B_ItemCode, RW, adoSecondaryRS1("varcode")
            .SetText BBaleDtls.B_GrossWt, RW, adoSecondaryRS1("GrossWt")
            .SetText BBaleDtls.B_TareWt, RW, adoSecondaryRS1("TAREWT")
            .SetText BBaleDtls.B_NETWT, RW, adoSecondaryRS1("netwt")
            .SetText BBaleDtls.B_Moisture, RW, adoSecondaryRS1("MoisturePer")
            .SetText BBaleDtls.B_Invwt, RW, adoSecondaryRS1("Invqty")
            RW = RW + 1
            adoSecondaryRS1.MoveNext
         Loop
     End With
        
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DivCode,docNo,docDate,SLCode,AgentCode,invNo,invDate,PaymentTerm,Deliverydate,carcode,Trans_Code,RateUnit,deltype,TruckNo,PackSlipNo,PackingDate,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate ,TotNetWT,TotInvWt,TotGrossWt,TotTareWt FROM RM_DespatchHD Where DivCode='" & Divcode & "'  And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        
    End If
    
    Call SpreadAlign(adoSecondaryRS.RecordCount)
    Frame1.Visible = True
    BUTTON(12).Enabled = False
    SpdOrdDetail.Visible = True
    txtfields(0).Locked = True
   ' txtfields(1).Locked = True
    txtfields(2).Locked = True

    Label4.Visible = False
    Label5.Visible = False
    MaskEdBox1(0).Enabled = False

    If Opt = "mod" Then
        stbar.Panels(2).Text = "Modify Quantity,Store Code and Click Save button to Save the Modified Records"
    ElseIf Opt = "del" Then
        stbar.Panels(2).Text = "Click Save Button to Save the Delete Records"
    End If
    Screen.MousePointer = 0
    If Opt = "del" Then
        Call disablcontls
    End If
    
Exit Sub
Er:
    MsgBox "Please Select a valid Value from the List", vbOKOnly, head + "Selection Warning"
    Screen.MousePointer = 0
    BUTTON(9).Enabled = False
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : delmodproc " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Function newdocno()

    Dim v_stdate  As String, v_endate As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    On Error GoTo Errh

    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set Rs = New Recordset

        Set Rstdocno = New Recordset
        Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),5) as docno from RM_DespatchHD where Divcode = '" & Divcode & "'  and  DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB

        If IsNull(Rstdocno("docno")) Then
            newdocno = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 5, "0")
        Else
            newdocno = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 5, "0")
        End If
    
    
  
    Exit Function

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : newdocno " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Function
Public Sub qry1()
On Error GoTo Errh

Set adoPrimaryRS = New Recordset

adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,invNo,invDate,PaymentTerm,Deliverydate,carcode,Trans_Code,RateUnit,deltype,TruckNo,PackSlipNo,PackingDate,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotNetWT,TotInvWt,TotGrossWt,TotTareWt  FROM RM_DespatchHD WHERE DivCode='" & Divcode & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdate,docno} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.ContNo,a.ContDt,a.VarCode,b.VARNAME ,a.uom,a.Qty,a.QtyKGS,a.INV_QtyKGS,a.Rate,a.Value,a.remarks,a.ORDDivcode,a.GrossWt,a.TareWt ,NetRate,Disc_Rate,Tax_Code,Disc_Amt,Taxable_Amt,a.Cgstper,CGSTAmt,a.Sgstper,SGSTAmt,a.Igstper,IGSTAmt,TotalAmt,tcs_per,tcs_amt,a.Line_No FROM RM_DespatchDT a inner join RM_VAR b on b.VARCODE=a.varcode Where a.divcode='" & Divcode & "' " & _
                  "  And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdate TO Docdate) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : qry1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
  
 End Sub
 
Public Sub fnd1(a As Long, B As Date)
On Error GoTo Errh

Set adoPrimaryRS = New Recordset
                 
adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,invNo,invDate,PaymentTerm,Deliverydate,carcode,Trans_Code,RateUnit,deltype,TruckNo,PackSlipNo,PackingDate,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotNetWT,TotInvWt,TotGrossWt,TotTareWt  FROM RM_DespatchHD WHERE DivCode='" & Divcode & "' And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdate,docno} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.ContNo,a.ContDt,a.VarCode,b.VARNAME ,a.uom,a.Qty,a.QtyKGS,a.INV_QtyKGS,a.Rate,a.Value,a.remarks,a.ORDDivcode,a.GrossWt,a.TareWt,NetRate,Disc_Rate,Tax_Code,Disc_Amt,Taxable_Amt,a.Cgstper,CGSTAmt,a.Sgstper,SGSTAmt,a.Igstper,IGSTAmt,TotalAmt,tcs_per,tcs_amt,a.Line_No FROM RM_DespatchDT a inner join RM_VAR b on b.VARCODE=a.varcode Where a.divcode='" & Divcode & "' " & _
                  " And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/MM/dd") & "'  Order By DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE,docno TO docno,Docdate TO Docdate) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                  
 
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : fnd1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub
      

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
  
   If Index = 3 Then
      If Trim(txtfields(3).Text) = "" Then
            txtfields(3).SetFocus
             Cancel = True
            Exit Sub
       End If
   End If
            
     If Index = 18 Then
     
     If txtfields(18).Text <> "" Then
     Exit Sub
     End If

    Ptype = "C4"
    
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
          LookUp.Clear = True
          LookUp.query = "select slname""Agentname"",slcode""Code"",Country from fa_slmas where slcode like '" & bro & "'"
'          LookUp.query = "select Slname""Agentname"",Slcode""Code"" from fa_slmas where slcode like '" & tmprst("Pt_Broker") & "%'"
          LookUp.Caption = "Agent Listing"
          LookUp.DefCol = "Agentname"
          LookUp.ALIGN = "4500,1500,2000"
          LookUp.Show vbModal
          If LookUp.Cancel = False Then
            txtfields(18).Text = LookUp.Fields(1)
            Text3.Text = LookUp.Fields(0)
           ' txtFields(3).SetFocus
            
            LookUp.Clear = True
           
          Else

            txtfields(18).Text = ""
            Text3.Text = ""
            txtfields(3).SetFocus
            Exit Sub
         End If
        stbar.Panels(2).Text = "Select Agent Name from the List"
    'End If
End If
    
    If Index = 20 Then
   Set Rs = New Recordset
   Rs.Open "select * from fa_currency where currcode='" & txtfields(20).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(21).Text = Rs("CURRNAME")
         txtfields(20).Text = UCase(txtfields(20).Text)
         'txtfields(9).SetFocus
         Exit Sub
    Else
         LookUp.Clear = True
         LookUp.query = "select Currname,Currcode from  fa_currency"
         LookUp.Caption = "Currency Listing"
         LookUp.DefCol = "Currname"
         LookUp.ALIGN = "4000,1000"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                txtfields(20).Text = LookUp.Fields(1)
                txtfields(21).Text = LookUp.Fields(0)
                LookUp.Clear = True
               ' txtFields(9).SetFocus
         Else
                txtfields(21).Text = ""
                txtfields(20).Text = ""
                Cancel = True
         End If
        stbar.Panels(2).Text = "Select Currency Name from the List"
                
    End If
End If


If Index = 19 Then
   Set Rs = New Recordset
   Rs.Open "SELECT PayTerm_Code ,PayTerm_Desc FROM Ig_PayTerm where PayTerm_Code='" & txtfields(19).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(19).Text = Rs("PayTerm_Code")
         Text4.Text = Rs("PayTerm_Desc")
         'txtfields(9).SetFocus
         Exit Sub
    Else
        LookUp.Clear = True
            LookUp.query = "SELECT PayTerm_Code ""Pay Terms Code"",PayTerm_Desc ""Pay Terms Description"" FROM Ig_PayTerm "
            LookUp.ALIGN = "900,3000"
            LookUp.Caption = "Pay Terms Listing"
            LookUp.DefCol = "Pay Terms Description"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    txtfields(19).Text = LookUp.Fields(0)
                    Text4.Text = LookUp.Fields(1)
             
            Else
                    Cancel = True
                    txtfields(19).SetFocus
                    Text4.Text = ""
            End If
    End If
End If
    If Index = 23 Then
        If txtfields(23).Text <> " " Then
             Set Rs = New Recordset
             Rs.Open "select bank_code,name from IM_bank  WHERE divcode='" & Divcode & "' and bank_code='" & txtfields(23).Text & "'", DB, adOpenStatic
             If Rs.RecordCount > 0 Then
               txtfields(24).Text = Rs("NAME")
               txtfields(24).Text = UCase(txtfields(24).Text)
             Else
                 LookUp.Clear = True
                 LookUp.query = "select Name,Bank_code from IM_bank where divcode='" & Divcode & "'"
                 LookUp.Caption = "Bank Detail Listing"
                 LookUp.DefCol = "Name"
                 LookUp.ALIGN = "6500,1500"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    txtfields(23).Text = LookUp.Fields(1)
                    txtfields(24).Text = LookUp.Fields(0)
                    LookUp.Clear = True
                    SpdOrdDetail.SetFocus
                 Else

                    LookUp.Clear = True
                    txtfields(23).SetFocus

                    Exit Sub
                 End If
                stbar.Panels(2).Text = "Select Delivery Address  from the List"
            End If
           End If
           'Cancel = True
End If
    
    

    
            
'       If Index = 11 Then
'            If val(txtfields(11).Text) = 0 Then
'                MsgBox "Currency Convertion Rate Should Be Filled", vbInformation, head
'                txtfields(11).SetFocus
'                Cancel = True
'                Exit Sub
'             Else
'                SpdOrdDetail.Col = E_rate
'                SpdOrdDetail.SetFocus
'            End If
'       End If
                   
  
       
       'If Index = 1 Then    ''LC Type
       
'            Set rss = New Recordset
'            rss.Open "Select cast(code as varchar) As Code,Description,(CASE WHEN Type='D' THEN 'Domestic' ELSE 'Foreign' END) Type from IM_lctype where divcode='" & divcode & "' And Code='" & Trim(txtfields(1).Text) & "'", DB, adOpenStatic
'            If rss.RecordCount = 0 Then
'                LookUp.clear = True
'                LookUp.query = "Select cast(code as varchar) As Code,Description,(CASE WHEN Type='D' THEN 'Domestic' ELSE 'Foreign' END) Type from IM_lctype where divcode='" & divcode & "'"
'                LookUp.Caption = "LC Type Listing"
'                LookUp.DefCol = "Description"
'                LookUp.ALIGN = "1500,4500,2500"
'                LookUp.Show vbModal
'                If LookUp.Cancel = False Then
'                    txtfields(1).Text = LookUp.Fields(0)
'                    LCTName.Text = LookUp.Fields(1)
'                Else
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
'            End If
            
      ' End If
              
       If Index = 5 Then    ''Payment Type/Shipment Terms
               
                Set Rs = New Recordset
                Rs.Open "select carcode,carname from po_car where carcode='" & txtfields(5).Text & "'", DB
                If Rs.RecordCount > 0 Then
                    txtfields(5).Text = Rs(0)
                    Text1.Text = Rs(1)
                Else
                  
                    LookUp.Clear = True
                    LookUp.query = "SELECT carcode""Transport Code"",Carname""Transport Name"" FROM PO_CAR"
                    LookUp.DefCol = "Transport Name"
                    LookUp.Caption = "Transport Listing"
                    LookUp.ALIGN = "1500,3500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(5).Text = LookUp.Fields(0)
                        Text1.Text = LookUp.Fields(1)
                       ' MaskEdBox1(3).SetFocus
                        LookUp.Clear = True
                      
                    Else
                        Text7.Text = ""
                        txtfields(9).SetFocus
                        Cancel = True
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                End If
       End If
       
       If Index = 14 Then    ''Delivery Terms
       
            Set rss = New Recordset
            rss.Open "Select DCode""Dlv Term"",DName""Description"" From IM_DlvTerm Where DCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic
            If rss.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = "Select DCode""Dlv Term"",DName""Description"" From IM_DlvTerm"
                LookUp.Caption = "Dlv Term"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1500,5500"
                Screen.MousePointer = 0
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(Index).Text = LookUp.Fields(0)
                     txtfields(10).Text = LookUp.Fields(1)
                Else
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
            End If
       End If
       
       If Index = 22 Then ''Description of Goods
            If Trim(txtfields(Index).Text) = "" Then
                LookUp.Clear = True
                LookUp.query = "Select Distinct A.Code,A.Description From IM_DescofGoods A  Order By A.Code"
                LookUp.Caption = "Description of Goods Listing"
                LookUp.DefCol = "Code"
                LookUp.ALIGN = "1500,6500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(Index).Text = LookUp.Fields(1)
                    txtfields(6).SetFocus
                    Exit Sub
                Else
                    LookUp.Clear = True
                    txtfields(Index).Text = ""
                    txtfields(Index).SetFocus
                End If
                Exit Sub
            End If
       End If
       
       If Index = 15 Then
            sCode = txtfields(7).Text
            custgrp = ""
            If globalarrivalorder = "C" Then
                    qry = "select Divocde 'Division',cast(contno as VARCHAR(10)) as 'Order No',contdt 'Order Date',varcode 'Code',varname 'Variety Name',balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  Divocde,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                          " UNION ALL select DISTINCT  Divocde,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  Divocde,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT Divocde,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X order by cast(contno as numeric),contdt "
            Else
                    qry = "select Divocde 'Division',cast(contno as VARCHAR(10)) as 'Order No',contdt 'Order Date',varcode 'Code',varname 'Variety Name',balqty,candyrate,rateunit,arrivaltype " & _
                      " from(select DISTINCT Divocde,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                      " UNION ALL select DISTINCT  Divocde,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0  and divcode='" & Divcode & "' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                      " union select DISTINCT Divocde, CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  and a.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                      " UNION ALL select DISTINCT Divocde,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as numeric),contdt "
            End If
              
            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Order Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1300,4500,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then  '8
            
                txtfields(15).Text = LookUp.Fields(1)
                MaskEdBox1(4).Text = LookUp.Fields(2)
                If globalarrivalorder = "C" Then
                 
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X where contno='" & Trim(txtfields(15).Text) & "' and contdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & LookUp.Fields(0) & "' order by cast(contno as numeric),contdt "
                 Else
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0  and divcode='" & Divcode & "' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  and a.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & txtfields(7).Text & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X  where contno='" & Trim(txtfields(15).Text) & "' and contdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & LookUp.Fields(0) & "' order by cast(contno as numeric),contdt "
               End If
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic

                        If Lrs.RecordCount > 0 Then
                       
'                        Set spdPO.DataSource = Lrs
                       
                        Call SpreadAlignPO(Lrs.RecordCount)
                        RW = 1
                        Do While Not Lrs.EOF
                         Screen.MousePointer = 0
                          spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBars = ScrollBarsBoth
                            spdPO.MaxRows = spdPO.MaxRows + 1
                            spdPO.SetText ePODtls.P_PRNo, RW, Lrs("Contno")
                            spdPO.SetText ePODtls.P_PRDt, RW, Format(Lrs("contdt"), "dd/mm/yyyy")
                            spdPO.SetText ePODtls.P_ItemCode, RW, Lrs("Varcode")
                            spdPO.SetText ePODtls.P_ItemName, RW, Lrs("Varname")
                            Set Rs = New Recordset
                            Rs.Open "select isnull(bbflag,'B') bbflag ,isnull(ratekg,0) ratekg from rm_cont where contno='" & Lrs("Contno") & "' and contdt='" & Format(Lrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Lrs!Divcode & "'", DB, adOpenStatic
                            If Not Rs.EOF Then
                                spdPO.SetText ePODtls.P_UOM, RW, Rs(0)
                                spdPO.SetText ePODtls.P_Rate, RW, Rs("ratekg")
                            End If
                            
                            
                            
                            spdPO.SetText ePODtls.P_RateUnit, RW, Lrs("Rateunit")
                            spdPO.SetText ePODtls.P_BalQty, RW, Lrs("BalQty")
                            spdPO.SetText ePODtls.P_CandyRate, RW, Lrs("candyrate")
                            spdPO.SetText ePODtls.P_ORDDIVCODE, RW, Lrs!Divcode
                            spdPO.Row = RW
                            spdPO.Col = ePODtls.P_Select
                            spdPO.value = 1
                            Lrs.MoveNext
                            RW = RW + 1
                        Loop
                      '
                        Call cmdItemSelect_Click
                       End If
            
            
            End If
            
              
       
       End If
       
       
       If Index = 7 And lSuppSel = False Then  '' Supplier
        If txtfields(7).Text = "" Then
'                fload = False
'            Call OrderbyIndent(1)
'            fload = True
'            Exit Sub

            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sup = rs1("ptypecotton")
            Else
                sup = ""
            End If
            Set rss = New Recordset
            rss.Open "select slcode""Supplier Code"",slname""Supplier Name"",city""City"",BrCode""Agent Code"" ,isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(supptype,'R')  Supptype  from fa_slmas where left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) ", DB, adOpenStatic
            If rss.RecordCount = 0 Then
                MsgBox "No Orders Found", vbInformation, head
                Exit Sub
            End If
                                                                              
'            If POAppFlag = True Then
              '  Qry = "select slcode""Supplier Code"",slname""Supplier Name"",city""City"",BrCode""Agent Code"" ,isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(supptype,'R')  Supptype  from fa_slmas where slcode like '" & sup & "'"
'            Else
'                Qry = "Select Distinct s.slname as [Supplier Name], City, h.slcode as [Supplier Code] From PO_ORDL l, RM_prh H,fa_slmas s where h.divcode='" & divcode & "' and  h.slcode like '" & PartyType & "%' AND h.divcode = '" & divcode & "' and h.divcode = l.divcode and h.PRNo = l.PRNo and h.PRDt = l.PRDt and  h.PoGrp = l.PoGrp and h.slcode=s.slcode and  (l.ordqty-isnull(l.CanQty,0)) > isnull(l.LCQty,0) and h.slcode = s.slcode AND H.CANFLG IS NULL and isnull(l.Fclosed,'N')<>'Y' And ISNULL(H.LCFlag,'N')='Y'"
'            End If
 LookUp.Clear = True
 testr = ""
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton") '& "%"
    Else
        sup = ""
    End If
   
    Set rs4 = New Recordset
    rs4.Open "select count(*) from FA_SLMAS WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) ", DB
    If Not rs4(0) = 0 Then
            StrAppQry = ""
            If POApproval = True Then
                    StrAppQry = " and isnull(a.Appflg,'N')='Y' "
            End If
            LookUp.Clear = True
            If globalarrivalorder = "C" Then
                    LookUp.query = " select DISTINCT [Supplier Code],[Supplier Name], City,'' [Broker Code],GROUPCODE, GSTSTATECODE, GSTINNO,Supptype from ( select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where " & _
                                    " isnull(a.Fclosed,'N')<>'Y'  and a.SUPCD=b.slcode  and  (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and (ordqty>isnull(cancelbales,0)+isnull(drecqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and a.SUPCD=b.slcode  and  (ordKGS>isnull(rCDKGS,0))  and (ordKGS>isnull(drCDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'  " & StrAppQry & " " & _
                               " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  " & _
                               "   isnull(a.Fclosed,'N')<>'Y' and a.SUPCD=b.slcode and  A.prefix='C'  and (ordqty>isnull(cancelbales,0)+isnull(drecqty,0)) and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & "  UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, a.brkcd ""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.SUPCD=b.slcode  and (ordKGS>isnull(rCDKGS,0)) and (ordKGS>isnull(drCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'  " & StrAppQry & ") x "
              
            'and isnull(MSDocno,0)>0  'and isnull(MSDocno,0)>0 'and isnull(MSDocno,0)>0 'and isnull(MSDocno,0)>0
            Else
                    LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and (ordqty>isnull(cancelbales,0)+isnull(drecqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & "  UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  " & _
                                    " isnull(a.Fclosed,'N')<>'Y' and a.SUPCD=b.slcode  and divcode='" & Divcode & "' and (ordKGS>isnull(rCDKGS,0)) and (ordKGS>isnull(drCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " " & _
                               " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and a.SUPCD=b.slcode  and  A.prefix='C' " & _
                               " and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and (ordqty>isnull(cancelbales,0)+isnull(drecqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P'  " & StrAppQry & "  UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, a.brkcd""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and a.SUPCD=b.slcode  and  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0)) and (ordKGS>isnull(drCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'  " & StrAppQry & " "
            
            End If
                     'and isnull(MSDocno,0)>0  ''and isnull(MSDocno,0)>0
            'and isnull(MSDocno,0)>0
           ' LookUp.query = Qry
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1300,4500,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then  '8
            
            
                 SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                If Not Rs.EOF Then
                       STATEFLAG = Rs(0)
                End If
                
                 If SuppType = "R" Then
          
                    If Trim(LookUp.Fields("GSTINNO")) = "" Then
                        MsgBox "PLEASE ENTER GST NO IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                    If LookUp.Fields("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                             Dim STCODE As String
                            Set rs1 = New Recordset
                            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Supplier Code")) & "' ", DB
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
                  
                  txtfields(1).Text = LookUp.Fields("GSTSTATECODE")
                  txtfields(4).Text = LookUp.Fields("GSTINNO")
            
                txtfields(7).Text = LookUp.Fields(0)
                Text2.Text = LookUp.Fields(1)
'                txtfields(18).Text = IIf(IsNull(LookUp.Fields(3)), "", LookUp.Fields(3))
'
'                Set rsbk = New Recordset
'                rsbk.Open "select slname from fa_slmas where slcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'                If Not rsbk.EOF Then
'                    Text3.Text = rsbk(0)
'                End If
               ' Exit Sub
                sCode = LookUp.Fields(0)
                Sname = LookUp.Fields(1)
                custgrp = LookUp.Fields(4)
                

                If globalarrivalorder = "C" Then
                 
'                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
'                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
'                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-(ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
'                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
'                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X order by cast(contno as numeric),contdt "
                 
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and A.VARCODE=C.VARCODE AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-(ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE   AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X where balqty>0 order by cast(contno as numeric),contdt "
                 
                 
                 Else
'                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
'                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
'                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-(ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0  and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
'                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
'                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE and isnull(a.msdocno,0)>0 AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as numeric),contdt "
'
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-(ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)) ""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0  and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(dRECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND ordqty>(isnull(drecqty,0)+isnull(cancelbales,0))  and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND (ISNULL(ORDKGS,0)-ISNULL(dRCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X  where balqty>0 order by cast(contno as numeric),contdt "
              
              
              End If
               Screen.MousePointer = 0
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic

                        If Lrs.RecordCount > 0 Then
                       
'                        Set spdPO.DataSource = Lrs
                       
                        Call SpreadAlignPO(Lrs.RecordCount)
                        RW = 1
                        Do While Not Lrs.EOF
                         Screen.MousePointer = 0
                          spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBars = ScrollBarsBoth
                            spdPO.MaxRows = spdPO.MaxRows + 1
                            spdPO.SetText ePODtls.P_PRNo, RW, Lrs("Contno")
                            spdPO.SetText ePODtls.P_PRDt, RW, Format(Lrs("contdt"), "dd/mm/yyyy")
                            spdPO.SetText ePODtls.P_ItemCode, RW, Lrs("Varcode")
                            spdPO.SetText ePODtls.P_ItemName, RW, Lrs("Varname")
                            Set Rs = New Recordset
                            Rs.Open "select isnull(bbflag,'B') bbflag ,isnull(ratekg,0) ratekg from rm_cont where contno='" & Lrs("Contno") & "' and contdt='" & Format(Lrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Lrs!Divcode & "'", DB, adOpenStatic
                            If Not Rs.EOF Then
                                spdPO.SetText ePODtls.P_UOM, RW, Rs(0)
                                spdPO.SetText ePODtls.P_Rate, RW, Rs("ratekg")
                            End If
                            
                            
                            
                            spdPO.SetText ePODtls.P_RateUnit, RW, Lrs("Rateunit")
                            spdPO.SetText ePODtls.P_BalQty, RW, Lrs("BalQty")
                            spdPO.SetText ePODtls.P_CandyRate, RW, Lrs("candyrate")
                            spdPO.SetText ePODtls.P_ORDDIVCODE, RW, Lrs!Divcode
                            Lrs.MoveNext
                            RW = RW + 1
                        Loop
                      '
                       ' Label10.Caption = "List of Purchase Order(s)"
                        Frame8.Visible = True
                        Frame8.ZOrder
                     
                      
                        
                         '   cmdItemSelect.SetFocus
                           ' ChkSelectAll.value = 0
                        txtfields(7).Locked = True
'                            cmdItemSelectClose.SetFocus
                           
                        txtfields(7).Text = LookUp.Fields(0)
                        Text2.Text = LookUp.Fields(1)
                        ' LookUp.Clear = True
                        Exit Sub
                    Else
                        MsgBox "No Record For this Supplier From PO", vbInformation, head
                        txtfields(7).Text = ""
                        Text2.Text = ""
                        txtfields(7).SetFocus
                        Exit Sub
                    End If
                
                
               
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
            
            
            
            Exit Sub
                txtfields(7).Text = LookUp.Fields(0)
                Text2.Text = LookUp.Fields(1)
                lSuppSel = True
                If Opt = "add" Then

                
                    Set Lrs = New Recordset
                    Lrs.Open "exec SP_PRToPO_RMI '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & 1, DB, adOpenStatic, 1
'                    Lrs.Open " Select 0 As POCheck,T.PRNo,Convert(Varchar,T.PRDt,3)PRDt,T.ItemCode,i.ItemName,I.UOM,T.OrdQty As OrderQty,(Ordqty -IsNull(Canqty,0)- isnull(Closed_Qty,0) -IsNull(LCQty,0)) BalanceQty,T.T.PRSno,T.Rate,M.CurrCode,M.FCurRate As ConvRate,M.PayTerms,M.RefNo,Convert(Varchar,M.RefDate,3)RefDate,C.CarName,T.LandCost From RM_prh as M, PO_ORDL as T,rm_var as I, PO_CAR C Where M.CarCode=C.CarCode And I.Itemcode = t.itemcode and M.Divcode = T.DivCode And M.PRNo = t.PRNo and m.PRDt = t.PRDt and " & _
'                             " M.Divcode = '" & divcode & "'  And M.Slcode ='" & txtFields(7).Text & "' and m.PRDt <='" & Format(MaskEdBox1(0), "YYYY/MM/DD") & "' and M.CANFLG IS NULL and  (Ordqty -IsNull(Canqty,0) - isnull(Closed_Qty,0) -IsNull(LCQty,0)  > 0) and isnull(t.Fclosed,'N')<>'Y'  And ISNULL(M.LCFlag,'N')='Y' Order By M.PRDt,m.PRNo", DB, adOpenDynamic, adLockOptimistic
                    If Lrs.RecordCount > 0 Then
                        LookUp.Clear = True
'                        Set spdPO.DataSource = Lrs
                        RW = 1
                        Do While Not Lrs.EOF
                            spdPO.ScrollBarShowMax = True
                            spdPO.ScrollBars = ScrollBarsBoth
                            spdPO.MaxRows = spdPO.MaxRows + 1
                            spdPO.SetText ePODtls.P_PRNo, RW, Lrs("Indent No.")
                            spdPO.SetText ePODtls.P_PRDt, RW, Lrs("Indent Date")
                            spdPO.SetText ePODtls.P_ItemCode, RW, Lrs("Varity Code")
                            spdPO.SetText ePODtls.P_ItemName, RW, Lrs("Description")
                            spdPO.SetText ePODtls.P_UOM, RW, Lrs("Packtype")
                            spdPO.SetText ePODtls.P_RateUnit, RW, Lrs("BalQtyKG")
                            spdPO.SetText ePODtls.P_BalQty, RW, Lrs("BalQty")
                            spdPO.SetText ePODtls.P_CandyRate, RW, Lrs("ename")
                            spdPO.SetText ePODtls.P_ORDDIVCODE, RW, Lrs("PrSNo")
                            Lrs.MoveNext
                            RW = RW + 1
                
                        Loop

                        Call SpreadAlignPO(Lrs.RecordCount)
                        Label10.Caption = "List of Purchase Order(s)"
                        Frame8.Visible = True
                        Frame8.ZOrder
                        ChkSelectAll.value = 0
                        txtfields(5).Enabled = False
                        Exit Sub
                    Else
                        MsgBox "No Record For this Supplier From PO", vbInformation, head
                        txtfields(7).Text = ""
                        Text2.Text = ""
                        txtfields(7).SetFocus
                        Exit Sub
                    End If
               
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
    End If
    Else
    End If
End If


    
    If Index = 11 Then
        txtfields(6).SetFocus
    End If
    If Index = 3 Then
        MaskEdBox1(2).SetFocus
    End If
    
    If Index = 8 Then
        If txtfields(8).Text = "" Then
            MsgBox "Truck No. Cannnot be empty", vbInformation, head
            Cancel = True
            txtfields(8).SetFocus
            Exit Sub
        End If
    End If
    

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub



Private Sub SpreadAlign(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

    SpdOrdDetail.Row = 1
    SpdOrdDetail.FontBold = True
    SpdOrdDetail.TypeTextWordWrap = True
    SpdOrdDetail.ClearSelection
    SpdOrdDetail.AllowColMove = True
    SpdOrdDetail.MaxCols = E_Remarks
    
    SetSpreadCol1 SpdOrdDetail, E_DivCode, "DivCode", CellTypeStaticText, 8, , True, True
        
    SetSpreadCol1 SpdOrdDetail, E_docno, "docno", CellTypeNumber, 5, , True, True
    SetSpreadCol1 SpdOrdDetail, E_Docdate, "Req.Date", CellTypeDate, 8, , True, True

    SpdOrdDetail.Col = E_DOCSNO
    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
    SpdOrdDetail.TypeNumberDecPlaces = 0
    SetSpreadCol1 SpdOrdDetail, E_DOCSNO, "Sno", CellTypeNumber, 6, , False, True
    
   SetSpreadCol1 SpdOrdDetail, E_POGrp, "Order No", CellTypeStaticText, 6, , True, True
    
    SpdOrdDetail.Col = E_PRNo
    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
    SpdOrdDetail.TypeNumberDecPlaces = 0
    SetSpreadCol1 SpdOrdDetail, E_PRNo, "Order No.", CellTypeNumber, 10, , False, True
    
    SpdOrdDetail.Col = E_PRdt
    SpdOrdDetail.TypeDateCentury = False
'    SpdOrdDetail.TypeDateFormat = TypeDateFormatDDMMYY
    SetSpreadCol1 SpdOrdDetail, E_PRdt, "Order Date", CellTypeStaticText, 10, , False, True
        
    SpdOrdDetail.Col = E_PRSno
    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
    SetSpreadCol1 SpdOrdDetail, E_PRSno, "Order SNo.", CellTypeNumber, 8, , True, True
        
    SetSpreadCol1 SpdOrdDetail, E_ItemCode, "Variety Code", CellTypeStaticText, 10, , False, True
    SetSpreadCol1 SpdOrdDetail, E_ItemName, "Variety Description", CellTypeStaticText, 27, , False, True
    
    SpdOrdDetail.Col = E_ItemDesc
    SpdOrdDetail.TypeMaxEditLen = 200
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetAlphanumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    'SetSpreadCol SpdOrdDetail, E_ItemDesc, "Alternate Description", CellTypeEdit, 30, , False, False
    SetSpreadCol1 SpdOrdDetail, E_ItemDesc, "Alternate Description", CellTypeStaticText, 27, , True, True
        
    SetSpreadCol1 SpdOrdDetail, E_UOM, "Unit", CellTypeStaticText, 4, , False, True
    
    SetSpreadCol1 SpdOrdDetail, E_LineNo, "Line No", CellTypeEdit, 8, , False, False
        
    SpdOrdDetail.Col = E_QuantityBale
    SpdOrdDetail.TypeNumberMin = 0
    SpdOrdDetail.TypeNumberMax = 99999999
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SpdOrdDetail, E_QuantityBale, "Qty in Bale", CellTypeNumber, 9, 0, False, False
        
     SpdOrdDetail.Col = E_grosswt
    SpdOrdDetail.TypeNumberMin = 0
    SpdOrdDetail.TypeNumberMax = 99999999.999999
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SpdOrdDetail, E_grosswt, "Gross Wt. in Kgs", CellTypeNumber, 11, 3, False, False
        
    SpdOrdDetail.Col = E_TareWt
    SpdOrdDetail.TypeNumberMin = 0
    SpdOrdDetail.TypeNumberMax = 99999999.999999
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SpdOrdDetail, E_TareWt, "Tare Wt. in Kgs", CellTypeNumber, 10, 3, False, False
        
    SpdOrdDetail.Col = E_Quantity
    SpdOrdDetail.TypeNumberMin = 0
    SpdOrdDetail.TypeNumberMax = 99999999.999999
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SpdOrdDetail, E_Quantity, "Net Wt. in Kgs", CellTypeNumber, 11, 3, False, True
    
    SpdOrdDetail.Col = E_InvQty
    SpdOrdDetail.TypeNumberMin = 0
    SpdOrdDetail.TypeNumberMax = 99999999.999
    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SpdOrdDetail, E_InvQty, "Invoice Qty in Kgs", CellTypeNumber, 11, 3, False, False
    
    
    SetSpreadCol1 SpdOrdDetail, E_rate, "Rate/KGs", CellTypeNumber, 11, 4, False, True
    SetSpreadCol1 SpdOrdDetail, E_Discrate, "Disc.Rate/KGs", CellTypeNumber, 11, 4, False, True
    SetSpreadCol1 SpdOrdDetail, E_Netrate, "Net Rate/KGs", CellTypeNumber, 11, 4, False, True
    

    SetSpreadCol1 SpdOrdDetail, E_Value, "Value", CellTypeNumber, 10, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_DiscValue, "Discount Value", CellTypeNumber, 9, 2, False, True
    
    SetSpreadCol1 SpdOrdDetail, E_ASSValue, "Taxable Value", CellTypeNumber, 10, 2, False, True
    
    SetSpreadCol1 SpdOrdDetail, E_Tax_Code, "Tax Code", CellTypeStaticText, 8, , False, True
    SetSpreadCol1 SpdOrdDetail, E_CCGSTPer, "CGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_CCGSTAmt, "CGST Amt", CellTypeNumber, 9, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_SCGSTPer, "SGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_SCGSTAmt, "SGST Amt", CellTypeNumber, 9, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_ICGSTPer, "IGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_ICGSTAmt, "IGST Amt", CellTypeNumber, 9, 2, False, True
    
    SetSpreadCol1 SpdOrdDetail, E_TCSper, "TCS %", CellTypeNumber, 8, 3, False, False
    SetSpreadCol1 SpdOrdDetail, E_TCSAMT, "TCS Amt", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SpdOrdDetail, E_TotalAmt, "Total Amount", CellTypeNumber, 12, 2, False, True

    
    SetSpreadCol1 SpdOrdDetail, E_ORDDivcode, "", CellTypeEdit, 15, , True, True
    SetSpreadCol1 SpdOrdDetail, E_Remarks, "Remarks", CellTypeEdit, 15, , False, False
    
    SpdOrdDetail.MaxCols = E_Remarks
    SpdOrdDetail.MaxRows = NoofRows
    SpdOrdDetail.SetActiveCell E_Quantity, 1
    SpdOrdDetail.ColsFrozen = E_UOM
    
    If Trim(Opt) = "" Or Opt = "fnd" Or Opt = "del" Then
        SetSpreadCol1 SpdOrdDetail, E_ItemDesc, "Description", CellTypeStaticText, 30, , True, True
        SetSpreadCol1 SpdOrdDetail, E_Quantity, "Net Wt. in Kgs", CellTypeNumber, 9, 3, False, True
    End If
    
    Exit Sub
    
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SpreadAlignPO(Optional NoofRows As Integer = 0)
    
On Error GoTo spreadalign_Error

With spdPO
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = P_ORDDIVCODE
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 spdPO, P_Select, "   ", CellTypeCheckBox, 3, , False, False

        SetSpreadCol1 spdPO, P_PRNo, "Order No.", CellTypeNumber, 8, , False, True
        SetSpreadCol1 spdPO, P_PRDt, "Order Date", CellTypeDate, 10, , False, True
        
        SetSpreadCol1 spdPO, P_ItemCode, "Variety Code", CellTypeStaticText, 8, , False, True
'        .TypeHAlign = TypeHAlignLeft
'
        SetSpreadCol1 spdPO, P_ItemName, "Variety Description", CellTypeStaticText, 35, , False, True
        SetSpreadCol1 spdPO, P_UOM, "Unit", CellTypeStaticText, 4, , False, True
        SetSpreadCol1 spdPO, P_RateUnit, "RateUnit", CellTypeStaticText, 10, 0, False, True
        SetSpreadCol1 spdPO, P_BalQty, "Balance Qty in Kgs", CellTypeNumber, 10, 3, False, True
        
           SetSpreadCol1 spdPO, P_CandyRate, "Rate KG", CellTypeNumber, 8, 6, False, True
        SetSpreadCol1 spdPO, P_ORDDIVCODE, "PRSno", CellTypeStaticText, 4, , True, True
        SetSpreadCol1 spdPO, P_Rate, "Rate/KGS", CellTypeNumber, 8, 6, False, True
        

    End With


Exit Sub

       spdPO.ClearSelection
        spdPO.MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        spdPO.ClearSelection
      
    
     
        spdPO.TypeTextWordWrap = True
    spdPO.Row = 0
'    spdPO.FontBold = True
    SetSpreadCol1 spdPO, P_Select, "   ", CellTypeCheckBox, 3, , False, False
    

    
    spdPO.Col = P_PRNo
    spdPO.TypeHAlign = TypeHAlignCenter
    spdPO.TypeNumberDecPlaces = 0
    SetSpreadCol1 spdPO, P_PRNo, "Order No.", CellTypeNumber, 8, , False, True
    
    SetSpreadCol1 spdPO, P_PRDt, "Order Date", CellTypeDate, 10, , False, True
    
    SetSpreadCol1 spdPO, P_ItemCode, "Variety Code", CellTypeStaticText, 8, , False, True
    SetSpreadCol1 spdPO, P_ItemName, "Variety Description", CellTypeStaticText, 35, , False, True
    SetSpreadCol1 spdPO, P_UOM, "Unit", CellTypeStaticText, 4, , False, True
    SetSpreadCol1 spdPO, P_RateUnit, "RateUnit", CellTypeStaticText, 10, 0, False, True
    SetSpreadCol1 spdPO, P_BalQty, "Balance Qty in Kgs", CellTypeNumber, 10, 3, False, True
    SetSpreadCol1 spdPO, P_CandyRate, "Rate KG", CellTypeNumber, 8, 6, False, True
    SetSpreadCol1 spdPO, P_ORDDIVCODE, "PRSno", CellTypeStaticText, 4, , True, True
    SetSpreadCol1 spdPO, P_Rate, "Rate/KGS", CellTypeNumber, 8, 6, False, True

    
    For nRow = 1 To spdPO.MaxRows
        spdPO.Row = nRow
        spdPO.Col = P_Select
        spdPO.value = 0
    Next
            
    spdPO.MaxCols = P_ORDDIVCODE
    spdPO.MaxRows = NoofRows
    spdPO.SetActiveCell P_Select, 1

    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub
Private Function TrnDateValidation() As Boolean

    Set rstTrnDate = New ADODB.Recordset
    strQry = "Select isnull(MAX(Docdate),'" & Format(pdate, "yyyy-MM-dd") & "') as Ldate from RM_DespatchHD  Where DivCode='" & Divcode & "' and Docdate Between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
    rstTrnDate.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstTrnDate.EOF Then
        If rstTrnDate("Ldate") <= pdate Then
            TrnDateValidation = True
        Else
            MsgBox "The Last Date of Transaction is " & Format(rstTrnDate("Ldate"), "dd/MM/yyyy") & ". You are not Allowed to make a Transaction on Previous Date.", vbInformation, head
        End If
    Else
        TrnDateValidation = True
    End If
    
End Function


Private Sub OrderbyIndent(IType As Integer)

    Set indentrs = New ADODB.Recordset
    Dim SstrSql  As String
    SstrSql = ""
    indentrs.CursorLocation = adUseClient
    
    indentrs.Open "exec SP_PRToPO_RMI '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType, DB, adOpenStatic, 1
        
    If Not indentrs.EOF Then
        RW = 1
        Call SpreadAlignPO
        spdPO.Visible = True
        spdPO.MaxRows = 1
        With spdPO
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
            .SetText ePODtls.P_PRNo, RW, indentrs("Indent No.")
            .SetText ePODtls.P_PRDt, RW, indentrs("Indent Date")
            .SetText ePODtls.P_ItemCode, RW, indentrs("Varity Code")
            .SetText ePODtls.P_ItemName, RW, indentrs("Description")
            .SetText ePODtls.P_UOM, RW, indentrs("Packtype")
            .SetText ePODtls.P_RateUnit, RW, indentrs("BalQty")
            .SetText ePODtls.P_BalQty, RW, indentrs("BalQtyKG")
          '  .SetText ePODtls.P_ RW, indentrs("ename")
            .SetText ePODtls.P_ORDDIVCODE, RW, indentrs("PrSNo")
            indentrs.MoveNext
            RW = RW + 1
             

        Loop
       End With
       ' DataGrid1.SetFocus
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

Private Sub SpreadAlignBale(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

   SPDBALEDETAILS.Row = 1
   SPDBALEDETAILS.FontBold = True
   SPDBALEDETAILS.TypeTextWordWrap = True
   SPDBALEDETAILS.ClearSelection
   SPDBALEDETAILS.AllowColMove = True
   SPDBALEDETAILS.MaxCols = B_Invwt
    SetSpreadCol1 SPDBALEDETAILS, B_DivCode, "DivCode", CellTypeStaticText, 8, , True, True
        
    SetSpreadCol1 SPDBALEDETAILS, B_docno, "docno", CellTypeNumber, 5, , True, True
    SetSpreadCol1 SPDBALEDETAILS, B_Docdate, "Req.Date", CellTypeDate, 8, , True, True

   SPDBALEDETAILS.Col = B_DOCSNO
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
    SetSpreadCol1 SPDBALEDETAILS, B_DOCSNO, "Sno", CellTypeNumber, 6, , False, True
    

    
   SPDBALEDETAILS.Col = B_PRNo
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
    SetSpreadCol1 SPDBALEDETAILS, B_PRNo, "Order No.", CellTypeNumber, 10, , True, True
    
   SPDBALEDETAILS.Col = E_PRdt
   SPDBALEDETAILS.TypeDateCentury = False
'   SPDBALEDETAILS.TypeDateFormat = TypeDateFormatDDMMYY
    SetSpreadCol1 SPDBALEDETAILS, B_PRdt, "Order Date", CellTypeStaticText, 10, , True, True

        
    SetSpreadCol1 SPDBALEDETAILS, B_ItemCode, "Variety Code", CellTypeStaticText, 10, , False, True


   SPDBALEDETAILS.Col = B_BaleNo
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
    SetSpreadCol1 SPDBALEDETAILS, B_BaleNo, "Bale SNo.", CellTypeNumber, 15, , False, True
        
'
'   SPDBALEDETAILS.Col = B_PartyBaleNo
'   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
'   SPDBALEDETAILS.TypeNumberDecPlaces = 0
'   SetSpreadCol1 SPDBALEDETAILS, B_PartyBaleNo, "Party Bale No.", CellTypeNumber, 10, , False, True
'
   SPDBALEDETAILS.Col = B_GrossWt
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol1 SPDBALEDETAILS, B_GrossWt, "Gross Wt. in Kgs", CellTypeNumber, 14, 3, False, True
        
   SPDBALEDETAILS.Col = B_TareWt
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
   SetSpreadCol1 SPDBALEDETAILS, B_TareWt, "Tare Wt. in Kgs", CellTypeNumber, 10, 3, False, True
    
   SPDBALEDETAILS.Col = B_NETWT
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
   SetSpreadCol1 SPDBALEDETAILS, B_NETWT, "Net Wt. in Kgs", CellTypeNumber, 11, 3, False, True
    
    
    SetSpreadCol1 SPDBALEDETAILS, B_Moisture, "Moisture %", CellTypeNumber, 11, 2, False, True

    SetSpreadCol1 SPDBALEDETAILS, B_Invwt, "Invoice Wt. in Kgs", CellTypeNumber, 12, 3, False, True
    
   SPDBALEDETAILS.MaxCols = B_Invwt
   SPDBALEDETAILS.MaxRows = NoofRows
    SPDBALEDETAILS.TypeNumberMax = 99999999.999
   'SPDBALEDETAILS.SetActiveCell E_Quantity, 1
   SPDBALEDETAILS.ColsFrozen = B_GrossWt

    Exit Sub
    
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SETDISCTYPEHead()

With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDDTDRate
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True

        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDocno, "Doc.No", CellTypeStaticText, 8, , False, False 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, "Doc Date", CellTypeStaticText, 10, , False, True 'b
'        .TypeHAlign = TypeHAlignLeft
'
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , False, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 30, , False, True 'i
        
           SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 18, 2, False, True  'i
      
        

    End With
Exit Sub
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = SPDDTDRate
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
       ' SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True    'a

        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDocno, "Docno", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, "Doc Date", CellTypeStaticText, 10, , True, True 'b
        
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True 'b        .Col = SPDRATEEntry.SPDVSNO
'        .TypeHAlign = TypeHAlignLeft
'
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True  'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True 'b
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 40, , False, True 'i
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 18, 2, False, True  'i


    End With
End Sub

Private Sub LoadDiscountDetails(Docno2 As String, Docdate2 As String, ItemCode2 As String, SuppCode As String)
        Call SETDISCTYPEHead
        Set Rs = New Recordset
                              
        Rs.Open "SELECT * from RM_ContDiscntRate  a  INNER JOIN RM_CONT B ON A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE  left join RM_DiscountType C on a.dtype=C.code where  (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and im_ind='I'))) AND A.Varcode='" & ItemCode2 & "' and A.contno='" & val(Docno2) & "'  and A.Contdt='" & Format(Docdate2, "yyyy-mm-dd") & "' and isnull(RPTFLG,'N')='N' and A.supcd='" & Trim(SuppCode) & "' ", DB, adOpenStatic
                             
        r1 = 0
        With SPDDiscTypeDet
        If Not Rs.EOF Then
            For I = 0 To Rs.RecordCount
                If Not Rs.EOF Then
                    r1 = r1 + 1
                    .MaxRows = r1
                     .SetText SPDDTSNO, r1, r1
                    .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
                    .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
                    .SetText SPDDTDocno, r1, Rs.Fields("docno")
                    .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
                    .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                    .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                    .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                    .SetText SPDDTDRate, r1, Rs.Fields("DRate")
                    Rs.MoveNext
                End If
            Next
        End If
       End With
End Sub
Private Sub TotalCal()
On Error Resume Next
    nTotalAmt = 0
    nTotalQty = 0
    tmp = Opt
    Opt = ""
    With SpdOrdDetail
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdOrdDetail, E_InvQty, nRow)) > 0 Then

            SpdOrdDetail.SetText E_Value, nRow, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(GetText(SpdOrdDetail, E_rate, nRow)), "0.00")
            SpdOrdDetail.SetText E_DiscValue, nRow, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(GetText(SpdOrdDetail, E_Discrate, nRow)), "0.00")
            SpdOrdDetail.SetText E_ASSValue, nRow, Format(val(GetText(SpdOrdDetail, E_Value, nRow)) - val(GetText(SpdOrdDetail, E_DiscValue, nRow)), "0.00")
             If IGSTFLG = "Y" Then
                SpdOrdDetail.SetText E_CCGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)) * val(GetText(SpdOrdDetail, E_CCGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_SCGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)) * val(GetText(SpdOrdDetail, E_SCGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_ICGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_ICGSTAmt, nRow, Format(0, "0.00")
             
             Else
                SpdOrdDetail.SetText E_ICGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)) * val(GetText(SpdOrdDetail, E_ICGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_CCGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_CCGSTAmt, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_SCGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_SCGSTAmt, nRow, Format(0, "0.00")
             End If
             Dim TCSASSAMT As Double
             Dim TCSROFF As Integer
            Set rsbk = New Recordset
            rsbk.Open "select (isnull(tcstax,'Y')) tcstax,isnull(RTCS_ROFF,0) RTCS_ROFF from rm_param ", DB, adOpenStatic
            If Not rsbk.EOF Then
                TCSROFF = rsbk(1)
                If rsbk(0) = "Y" Then
                    TCSASSAMT = Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)) + val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow)), "0.00")
                Else
                    TCSASSAMT = Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)), "0.00")
                End If
            End If
                    
             SpdOrdDetail.SetText E_TCSAMT, nRow, KSLRound(TCSASSAMT * val(GetText(SpdOrdDetail, E_TCSper, nRow)) / 100, TCSROFF)
            
             SpdOrdDetail.SetText E_TotalAmt, nRow, Format(val(GetText(SpdOrdDetail, E_ASSValue, nRow)) + val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_TCSAMT, nRow)), "0.00")
'
'
'            nTotalAmt = nTotalAmt + val(GetText(SpdOrdDetail, E_Amount, nRow))
'            nTotalQty = nTotalQty + val(GetText(SpdOrdDetail, E_Quantity, nRow))
        End If
    Next
    End With
'    txtQty.Text = Format(nTotalQty, "0.000")
'    value.Text = Format(KSLRound(nTotalAmt, 0), "0.00")
'    txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * val(txtfields(11).Text), "##,##,##,##,###.00")
'    txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
    Opt = tmp

End Sub
