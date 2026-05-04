VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{6481A028-39ED-11DA-B598-00201829543C}#2.0#0"; "Kallistacx.ocx"
Begin VB.Form OBDyingDC 
   Caption         =   "DC for Dying"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11310
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   11310
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Caption         =   "w"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   0
      TabIndex        =   21
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "OBDCforDying.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":0397
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
         Picture         =   "OBDCforDying.frx":06A1
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":0A3D
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "OBDCforDying.frx":0D47
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":10C1
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   6
         Left            =   3180
         Picture         =   "OBDCforDying.frx":150B
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":1858
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "OBDCforDying.frx":1B62
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":1EF5
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   5
         Left            =   2655
         Picture         =   "OBDCforDying.frx":233F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":26A4
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   7
         Left            =   3705
         Picture         =   "OBDCforDying.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":2E3E
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "OBDCforDying.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":361D
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   9
         Left            =   4755
         Picture         =   "OBDCforDying.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":3CC9
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   10
         Left            =   5280
         Picture         =   "OBDCforDying.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":434F
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   8
         Left            =   4230
         Picture         =   "OBDCforDying.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OBDCforDying.frx":4AFB
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   3
         Left            =   2130
         Picture         =   "OBDCforDying.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl R)"
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
         Left            =   8655
         TabIndex        =   23
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
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
         Height          =   240
         Left            =   7395
         TabIndex        =   22
         Top             =   255
         Width           =   585
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   24
      Top             =   6420
      Width           =   11310
      _ExtentX        =   19950
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04/02/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "15:42"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame Frame2 
      ClipControls    =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5340
      Left            =   360
      TabIndex        =   25
      Top             =   1080
      Visible         =   0   'False
      Width           =   10785
      Begin KalsoftListacx.kalsoftlist KSLDESC1 
         Height          =   3855
         Left            =   285
         TabIndex        =   57
         Top             =   660
         Width           =   10125
         _ExtentX        =   17859
         _ExtentY        =   6800
         caption         =   ""
      End
      Begin listacx.codelist KSLDESC1A 
         Height          =   3180
         Left            =   675
         TabIndex        =   52
         Top             =   1245
         Visible         =   0   'False
         Width           =   9780
         _ExtentX        =   17251
         _ExtentY        =   5609
         caption         =   ""
      End
      Begin VB.Frame Frame6 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   55
         Top             =   4560
         Width           =   10575
         Begin VB.CommandButton Command2 
            Caption         =   "&Cancel"
            DownPicture     =   "OBDCforDying.frx":519A
            Height          =   495
            Left            =   5640
            Picture         =   "OBDCforDying.frx":557C
            Style           =   1  'Graphical
            TabIndex        =   54
            Top             =   120
            Width           =   1185
         End
         Begin VB.CommandButton Command1 
            Caption         =   "&OK"
            Default         =   -1  'True
            DownPicture     =   "OBDCforDying.frx":594F
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2640
            Picture         =   "OBDCforDying.frx":5D35
            Style           =   1  'Graphical
            TabIndex        =   56
            Top             =   120
            Width           =   1185
         End
      End
      Begin VB.Label lblist 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   60
         TabIndex        =   26
         Top             =   120
         Visible         =   0   'False
         Width           =   10200
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5265
      Left            =   360
      TabIndex        =   19
      Top             =   1080
      Width           =   10755
      _ExtentX        =   18971
      _ExtentY        =   9287
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "OBDCforDying.frx":60FB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grdDataGrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   2775
         Left            =   120
         TabIndex        =   18
         Top             =   2370
         Width           =   10575
         _ExtentX        =   18653
         _ExtentY        =   4895
         _Version        =   393216
         AllowArrows     =   -1  'True
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
         ClipControls    =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2190
         Left            =   90
         TabIndex        =   20
         Top             =   120
         Width           =   10605
         Begin VB.TextBox txtFields 
            DataField       =   "REMARKS"
            Height          =   330
            Index           =   0
            Left            =   1725
            MaxLength       =   25
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   1635
            Width           =   6690
         End
         Begin VB.TextBox txtFields 
            DataField       =   "VEHICLENO"
            Enabled         =   0   'False
            Height          =   330
            Index           =   3
            Left            =   1710
            MaxLength       =   10
            TabIndex        =   16
            Top             =   1185
            Width           =   2565
         End
         Begin VB.TextBox txtFields 
            DataField       =   "DCNO"
            Height          =   330
            Index           =   2
            Left            =   1725
            TabIndex        =   12
            Top             =   270
            Width           =   1575
         End
         Begin VB.TextBox txtFields 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   7
            Left            =   1725
            MaxLength       =   10
            TabIndex        =   14
            Text            =   " "
            Top             =   750
            Width           =   1080
         End
         Begin VB.TextBox Text2 
            DataField       =   "slname"
            Height          =   330
            Left            =   2850
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   750
            Width           =   5610
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DCDT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   240
            Index           =   0
            Left            =   4260
            TabIndex        =   13
            Top             =   315
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   423
            _Version        =   393216
            BorderStyle     =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "System"
               Size            =   9.75
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
            Height          =   330
            Left            =   4215
            TabIndex        =   44
            Top             =   270
            Width           =   1410
            _ExtentX        =   2487
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   65077249
            CurrentDate     =   36218
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            Height          =   240
            Index           =   9
            Left            =   210
            TabIndex        =   53
            Top             =   1680
            Width           =   825
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Vehicle No."
            Height          =   240
            Index           =   1
            Left            =   210
            TabIndex        =   51
            Top             =   1215
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Party"
            Height          =   240
            Index           =   7
            Left            =   210
            TabIndex        =   47
            Top             =   810
            Width           =   465
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Dc Date"
            Height          =   240
            Index           =   3
            Left            =   3435
            TabIndex        =   46
            Top             =   330
            Width           =   735
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "DC Number"
            Height          =   240
            Index           =   2
            Left            =   210
            TabIndex        =   45
            Top             =   330
            Width           =   1050
         End
      End
   End
   Begin VB.Frame Frame5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5100
      Left            =   360
      TabIndex        =   32
      Top             =   960
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton delmodok 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   320
         Left            =   6360
         TabIndex        =   33
         Top             =   870
         Width           =   735
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3255
         Left            =   120
         TabIndex        =   34
         Top             =   1320
         Visible         =   0   'False
         Width           =   8595
         _ExtentX        =   15161
         _ExtentY        =   5741
         _Version        =   393216
         AllowUpdate     =   0   'False
         BackColor       =   16777215
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Double Click The Required Record"
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
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2580
         TabIndex        =   35
         Top             =   870
         Width           =   2655
         _ExtentX        =   4683
         _ExtentY        =   635
         _Version        =   393216
         Style           =   2
         ForeColor       =   -2147483640
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label delmodoklabel 
         Caption         =   "Tc    Doc.No.   Doc.Dt."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2580
         TabIndex        =   37
         Top             =   480
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Select from the List"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   30
         TabIndex        =   36
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Frame Frame4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4875
      Left            =   480
      TabIndex        =   27
      Top             =   960
      Visible         =   0   'False
      Width           =   8715
      Begin VB.CommandButton Command4 
         Caption         =   "Ok"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4080
         TabIndex        =   29
         Top             =   4110
         Width           =   1275
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   2415
         Left            =   690
         TabIndex        =   28
         Top             =   1260
         Width           =   7665
         _ExtentX        =   13520
         _ExtentY        =   4260
         _Version        =   393216
         AllowUpdate     =   0   'False
         HeadLines       =   2
         RowHeight       =   18
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
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
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label itemcap 
         AutoSize        =   -1  'True
         Caption         =   "Item"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   930
         TabIndex        =   31
         Top             =   750
         Width           =   360
      End
      Begin VB.Label suppcap 
         AutoSize        =   -1  'True
         Caption         =   "Supplier"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   900
         TabIndex        =   30
         Top             =   420
         Width           =   705
      End
   End
   Begin VB.Frame Frame3 
      ClipControls    =   0   'False
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2430
      Left            =   300
      TabIndex        =   38
      Top             =   2130
      Visible         =   0   'False
      Width           =   8160
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   330
         Left            =   3360
         MaxLength       =   6
         TabIndex        =   39
         Top             =   900
         Width           =   2055
      End
      Begin VB.CommandButton Command5 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "OBDCforDying.frx":6117
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4020
         Picture         =   "OBDCforDying.frx":64F9
         Style           =   1  'Graphical
         TabIndex        =   43
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "OBDCforDying.frx":68CC
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2580
         Picture         =   "OBDCforDying.frx":6CB2
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Enter the Receipt Doc.No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   1200
         TabIndex        =   42
         Top             =   975
         Width           =   1890
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Find"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   120
         TabIndex        =   40
         Top             =   120
         Width           =   7530
      End
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
      Left            =   975
      TabIndex        =   50
      Top             =   1305
      Visible         =   0   'False
      Width           =   1815
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
      Left            =   2415
      TabIndex        =   49
      Top             =   1305
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Opening -  for web Cotton  Dying"
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
      Left            =   345
      TabIndex        =   48
      Top             =   570
      Width           =   4290
   End
End
Attribute VB_Name = "OBDyingDC"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim trs As ADODB.Recordset
Dim uptrs As ADODB.Recordset
Dim uprec As Recordset
Dim vrs As Recordset
Dim sp As String
Dim itemc As String
Dim sp1 As String
Dim adoSecondaryRS As Recordset
Dim DB As Connection
Dim Opt As String
Dim st2 As String
Dim deltype As String
Dim r As Integer
Dim MDOC As Long
Dim rs1, RS2 As Recordset
Dim TC As Integer
Dim rs3, rs4, rs5, RS6 As New Recordset
Dim itary() As String
Dim modqty As Double
Dim sp2 As Double
Dim pordrs As Recordset
Dim porddt As String
Dim rpt As String
Dim tmp As String
Dim RW As Integer
Dim lck As Integer
Dim i As Integer
Dim a As Integer
Dim lno As Integer
Dim pgn As Integer
Dim Rep As Report.ReportView
Dim MaxNoRs As Recordset

Private Sub BUTTON_Click(Index As Integer)
Dim oText As TextBox
On Error Resume Next
Select Case Index
Case 0
       'ADD Button Click
       Opt = "add"
       sp = "Y"
       desc.Caption = "Addition"
       stbar.Panels(2).Text = " "
       DB.BeginTrans
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select distinct th.DIVCODE,th.DCNO,th.DCDT,th.SLCODE,s.slname,th.VEHICLENO,TH.REMARKS,obflag  from  RM_DCDYINGHD th, FA_SLMAS s  where th.slcode=s.slcode and 1=2", DB, adOpenStatic, adLockBatchOptimistic
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks',obflag from  RM_DCDYINGDT t,RM_VAR i where t.varcode=i.varcode and 1=2", DB, adOpenStatic, adLockBatchOptimistic
       Call bindcontls
       Set grddatagrid.DataSource = adoSecondaryRS
       Text2.Text = ""
       adoPrimaryRS.AddNew
       adoSecondaryRS.AddNew
       Set MaxNoRs = New Recordset
       MaxNoRs.Open "SELECT MAX(DCNO)+1 FROM RM_DCDYINGHD WHERE DCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
       If MaxNoRs.RecordCount > 0 Then
            txtFields(2).Text = IIf(IsNull(MaxNoRs(0)) = True, 1, MaxNoRs(0))
       Else
            txtFields(2).Text = 1
       End If
       MaskEdBox1(0).Text = pdate
       Call adddelmod(BUTTON)
       Call GRIDALIGN
    'Bind the text boxes to the recordset
        For Each oText In Me.txtFields
            oText.Locked = False
        Next
        For Each oText In Me.txtFields
            oText.Enabled = True
        Next
        Text2.Locked = False
        MaskEdBox1(0).Enabled = True
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
       txtFields(7).SetFocus
       Exit Sub
         
Case 1 'modification
        Opt = "mod"
        Call DocNoLookup
'        SSTab1.Visible = False
'
'        ksldesc1.Visible = True
'        ksldesc1.conn = connectstring
'        ksldesc1.listfield1width = 2500
'        ksldesc1.listfield2width = 7500
'        ksldesc1.table = "RM_DCDYINGHD"
'        ksldesc1.listfield1 = "DCNO"
'        ksldesc1.listfield2 = "DCDT"
'        ksldesc1.Caption = "DC Details"
'        Frame2.Visible = True
'        Frame2.ZOrder
'        ksldesc1.SetFocus
'        Exit Sub
'        Call DocNoLookup
        
Case 2
        'Delete Button Click
        Opt = "del"
        Call DocNoLookup
'        SSTab1.Visible = False
'
'        KSLDESC1.Visible = True
'        KSLDESC1.conn = connectstring
'        KSLDESC1.table = "RM_DCDYINGHD"
'        KSLDESC1.listfield1width = 2500
'        KSLDESC1.listfield2width = 7500
'        KSLDESC1.listfield1 = "DCNO"
'        KSLDESC1.listfield2 = "DCDT"
'        KSLDESC1.Caption = "DC Details"
'        Frame2.Visible = True
'        Frame2.ZOrder
'        KSLDESC1.SetFocus
    '    Call DocNoLookup
        Exit Sub
        
Case 3
        'Find Button Click
        desc.Caption = "Find"
        Buttonframe.Enabled = False
        Frame3.ZOrder
        Frame3.Visible = True
        Text1.Text = ""
        Text1.SetFocus
        
Case 4

        Set Rep = New Report.ReportView
        a = FreeFile
        pgn = 1
        lno = 7
        Close
        Open KALFOLDERDATA + "ind.txt" For Output As #a
        Call hdlist
        Set rs1 = New Recordset
        
        rs1.Open "select * from  RM_DCDYINGDT Order by dcno ", DB, adOpenStatic, adLockReadOnly
        Do While Not rs1.EOF
        'Print #a, Space(3) + Chr(15) + Padr(rs1("item"), 10, " ") + Space(3) + Padr(rs1("descr"), 70, " ") + Space(3) + Padl(Format(rs1("unit"), "dd/mm/yyyy"), 4, " ") + Space(2) + Padl(INF(rs1("qty"), 3), 15, " ") + Space(2) + Padr(rs1("godown"), 35, " ") + Chr(18)
        lno = lno + 1
        Call pblist
        rs1.MoveNext
        Loop
        Print #a, Space(3) + String(85, "-")
        Close #a
        Open "C:\ind.bat" For Output As #a
        Print #a, "C:"
        Print #a, "cd\"
        Print #a, "type ind.txt>prn"
        Rep.txtfile = "C:\ind.txt"
        Rep.Batfile = "C:\ind.bat"
        Close #a
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
        
       ' On Error GoTo GoNextError
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
        adoPrimaryRS.MoveLast
        ' Return to query mode
        Call QUERY_MODE(0)
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
          
Case 9
        'SAVE
        If Opt = "add" Then
            desc.Caption = "Query"
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                If adoSecondaryRS("Variety Code") = Empty Or IsNull(adoSecondaryRS("Variety Code")) Then
                    adoSecondaryRS.Delete adAffectCurrent
                End If
                adoSecondaryRS.MoveNext
            Loop
            
            'adoPrimaryRS.AddNew
            
            adoPrimaryRS("DIVCODE") = Divcode
            adoPrimaryRS("DCNO") = txtFields(2)
            adoPrimaryRS("DCDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
            adoPrimaryRS("SLCODE") = txtFields(7).Text
            adoPrimaryRS("VEHICLENO") = txtFields(3).Text
            adoPrimaryRS("REMARKS") = txtFields(0).Text
            adoPrimaryRS("obflag") = "Y"
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            
            
'            db.Execute "INSERT INTO RM_DCDYINGHD (DIVCODE,DCNO,DCDT,SLCODE,VEHICLENO,REMARKS) VALUES ('" & Divcode & "'," & txtFields(2) & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "','" & txtFields(7).Text & "','" & txtFields(3).Text & "','" & txtFields(0).Text & "')"
            
            SERNO = 1
            
            adoSecondaryRS.MoveFirst
            'adoSecondaryRS.AddNew
            Do While Not adoSecondaryRS.EOF
                
                adoSecondaryRS("DIVCODE") = Divcode
                adoSecondaryRS("DCNO") = txtFields(2)
                adoSecondaryRS("DCDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                adoSecondaryRS("Serial No.") = SERNO
                adoSecondaryRS("Variety Code") = adoSecondaryRS("Variety Code")
                adoSecondaryRS("Quantity") = adoSecondaryRS("Quantity")
                adoSecondaryRS("Kgs") = adoSecondaryRS("KGS")
                adoSecondaryRS("REMARKS") = adoSecondaryRS!remarks
                adoSecondaryRS("obflag") = "Y"
                
                'db.Execute "INSERT INTO RM_DCDYINGDT (DIVCODE,DCNO,DCDT,DCSNO,VARCODE,QUANTITY,KGS,REMARKS) VALUES ('" & Divcode & "'," & txtFields(2) & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'," & SERNO & ",'" & adoSecondaryRS("Variety Code") & "'," & adoSecondaryRS("Quantity") & "," & adoSecondaryRS("KGS") & ",'" & adoSecondaryRS!REMARKS & "')"
                adoSecondaryRS.MoveNext
                SERNO = SERNO + 1
            Loop
            adoSecondaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
        ElseIf Opt = "del" Then
            DB.BeginTrans
            DB.Execute "DELETE FROM RM_DCDYINGDT WHERE DCNO=" & txtFields(2).Text & " AND DCDT='" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'"
            DB.Execute "DELETE FROM RM_DCDYINGHD WHERE DCNO=" & txtFields(2).Text & " AND DCDT='" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'"
            DB.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
        ElseIf Opt = "mod" Then
            DB.BeginTrans
            adoPrimaryRS("DIVCODE") = Divcode
            adoPrimaryRS("DCNO") = txtFields(2)
            adoPrimaryRS("DCDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
            adoPrimaryRS("SLCODE") = txtFields(7).Text
            adoPrimaryRS("VEHICLENO") = txtFields(3).Text
            adoPrimaryRS("REMARKS") = txtFields(0).Text
            adoPrimaryRS("OBFALG") = "Y"
            adoPrimaryRS.UpdateBatch adAffectAllChapters
        
            Set adoRSMOD = New ADODB.Recordset
            
            adoRSMOD.Open "select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks' from  RM_DCDYINGDT t,RM_VAR i where t.dcno= " & txtFields(2) & " and t.dcdt = '" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "' and t.varcode=i.varcode ", DB, adOpenStatic, adLockBatchOptimistic
            W = adoRSMOD.RecordCount
            adoRSMOD.MoveFirst
            'adoSecondaryRS.AddNew
            SERNO = 1
            grddatagrid.Bookmark = 1
            Do While Not adoRSMOD.EOF
                
                adoRSMOD("DIVCODE") = Divcode
                adoRSMOD("DCNO") = txtFields(2)
                adoRSMOD("DCDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                adoRSMOD("Serial No.") = SERNO
                adoRSMOD("Variety Code") = grddatagrid.Columns(4).Text
                adoRSMOD("Quantity") = grddatagrid.Columns(6).Text
                adoRSMOD("Kgs") = grddatagrid.Columns(7).Text
                adoRSMOD("REMARKS") = grddatagrid.Columns(8).Text
               ' grdDataGrid.Bookmark
                adoRSMOD.MoveNext
                SERNO = SERNO + 1
                grddatagrid.Bookmark = grddatagrid.Bookmark + 1
            Loop
            adoRSMOD.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            
        End If
        ' Return to query mode
        Call QUERY_MODE(0)
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
          
          
Case 10
    tmp = Opt
    desc.Caption = "Query"
    Frame5.Visible = False
    Frame4.Visible = False
    txtFields(3).Enabled = False
    Screen.MousePointer = 11
    Buttonframe.Enabled = True
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
    Call QUERY_MODE(0)
    Frame2.Visible = False
    Label4.Visible = False
    Label5.Visible = False
    Frame5.Visible = False
    Set DataGrid1.DataSource = Nothing
    Frame1.Visible = True
    grddatagrid.Visible = True
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).Enabled = True
    
    
Case 11
    'EXIT
    Unload Me
Case 12
   ''Changed to Print # on 26/4/02
    
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If
    
    docNo = val(adoPrimaryRS("DOCNO"))
    DOCDT = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
    TC = val(adoPrimaryRS("TC"))
    
    
End Select
Exit Sub
ER1:
If Err = -2147467259 Then
 MsgBox Err.description, vbCritical, head

    If Mid$(Err.description, InStr(Err.description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head + "Save Message"
    End If
ElseIf Err = -2147217864 Then
     Resume Next
Else
    'MsgBox Err.description & " -Please inform this " & Err.Number & "  code number to EDP Department. Thank you", vbInformation, head
    Resume Next
End If
Opt = tmp
End Sub

Private Sub SCODLIST1_DblClick()
Call Command1_Click
End Sub
    

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Frame2.Visible = False
    SSTab1.Visible = True
    Select Case KslDesc1.listfield1
    Case "slname as SupplierName"
        txtFields(7).Text = KslDesc1.description
        Text2.Text = KslDesc1.Code
        txtFields(3).SetFocus
        Exit Sub
    Case "VARCODE"
        grddatagrid.Columns(4).Text = KslDesc1.Code
        grddatagrid.Columns(5).Text = KslDesc1.description
        grddatagrid.Col = 6
        grddatagrid.SetFocus
        Exit Sub
    Case "DCNO"
    
        Call adddelmod(BUTTON)
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.DCNO,th.DCDT,th.SLCODE," & _
                           "s.slname,th.VEHICLENO,TH.REMARKS,TH.obflag  from  RM_DCDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DCNO=" & KslDesc1.Code & " AND DCDT='" & Format(KslDesc1.description, "YYYY/MM/DD") & "' " & _
                           "  Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks',t.obflag from  RM_DCDYINGDT t,RM_VAR i where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE Order by t.dcsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,DCNO TO DCNO,DCDT TO DCDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Set Text2.DataSource = adoPrimaryRS
        Set grddatagrid.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        desc.Caption = "Query"
        If Opt = "mod" Or Opt = "del" Then
           DataCombo1.Visible = False
           delmodok.Visible = False
           delmodoklabel.Visible = False
            grddatagrid.Enabled = True
            
            grddatagrid.EditActive = True
            grddatagrid.Columns(6).Locked = False
            grddatagrid.Columns(7).Locked = False
        End If
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Visible = False
        grddatagrid.Columns(4).Width = 1250
        grddatagrid.Columns(5).Width = 2000
        grddatagrid.Columns(6).Width = 1289.764
        grddatagrid.Columns(7).Width = 1289.764
        grddatagrid.Columns(8).Width = 2500
    End Select

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Frame2.Visible = False
    SSTab1.Visible = True
    Select Case KslDesc1.listfield1
    Case "SLCODE"
        txtFields(7).SetFocus
        Exit Sub
    Case "VARCODE"
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        Exit Sub
    End Select

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command2_Click of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(0).Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DTPicker1_CloseUp of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_LostFocus()
On Error GoTo DTPicker1_LostFocus_Error

If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox "GIN date Cannot be greater then processing date", vbInformation, head
            MaskEdBox1(0).SetFocus
    End If
End If

Exit Sub
DTPicker1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DTPicker1_LostFocus of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

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
    End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyDown of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo Form_KeyPress_Error

    If KeyAscii = 13 Then SendKeys "({Tab})"

Exit Sub
Form_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyPress of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

stbar.Panels(1).Text = sbmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
   BUTTON(9).Enabled = False
  Opt = "qry"
  Call QUERY_MODE(0)
  Call NEWFORM(BUTTON)
  grddatagrid.WrapCellPointer = True
  grddatagrid.ScrollBars = dbgAutomatic
  DTPicker1.value = pdate
stbar.Panels(1).Text = sbmsg
txtFields(3).Enabled = False

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  'adoprimaryrs.Close
  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Nqcrecept = Nothing
  Reset

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If Opt = " " Then
      If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
      Else
        stbar.Panels(2).Text = "No records found"
      End If
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub bindcontls()
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo bindcontls_Error

    For Each oText In Me.txtFields
        Set oText.DataSource = adoPrimaryRS
    Next
    If Opt = "add" Then
        MaskEdBox1(0).Text = Date
    End If
    On Error Resume Next
    If adoPrimaryRS.RecordCount > 0 Then
        If IsNull(adoPrimaryRS("dcdt")) = False Then
            Set MaskEdBox1(0).DataSource = adoPrimaryRS
        End If
    End If

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure bindcontls of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error

    For Each oText In Me.txtFields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure disablcontls of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error

    For Each oText In Me.txtFields
        oText.Locked = False
    Next
    txtFields(1).Locked = True
    MaskEdBox1(0).Enabled = True
    MaskEdBox1(1).Enabled = True
    
    DTPicker1.Enabled = True
    DTPicker2.Enabled = True
    DTPicker1.MaxDate = pdate
    DTPicker2.MaxDate = pdate
    If Opt = "add" Then
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(1).Text = pdate
    End If
    grddatagrid.AllowUpdate = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ENABLCONTLS of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
    End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

    If Opt = "add" And KeyCode = 9 Then
        If grddatagrid.Col = 8 Then
            adoSecondaryRS.AddNew
            grddatagrid.Col = 3
            grddatagrid.SetFocus
            Exit Sub
        End If
    End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
'''    If Opt = "add" Or Opt = "mod" Then
'''        If grdDataGrid.Col = 5 Then
'''            grdDataGrid.Columns(5).Locked = True
'''        End If
'''        Select Case grdDataGrid.Col
'''            Case 10
'''                If KeyAscii <> 9 Then
'''                    tonum grdDataGrid, 12, KeyAscii
'''                End If
'''            Case 11
'''                If KeyAscii = vbKeyTab Then
'''                    Value = Val(grdDataGrid.Text) * Val(grdDataGrid.Columns(10).Text)
'''                    grdDataGrid.Columns(12).Text = Value
''''''                    grddatagrid.Col = 12
''''''                    grddatagrid.SetFocus
''''''                    Exit Sub
'''                End If
'''            Case 14
'''                If KeyAscii <> 9 Then
'''                    Call tonum(grdDataGrid, 9, KeyAscii)
'''                End If
'''        End Select
'''    End If
End Sub


Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
Dim CHECKVARRS As Recordset
On Error GoTo GRDDATAGRID_RowColChange_Error

    Select Case LastCol
    Case 4
        Set CHECKVARRS = New Recordset
        CHECKVARRS.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & grddatagrid.Columns(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CHECKVARRS.RecordCount > 0 Then
            grddatagrid.Columns(5).Text = CHECKVARRS!VarName
            grddatagrid.Col = 6
            grddatagrid.SetFocus
            Exit Sub
        Else
            'SSTab1.Visible = False
            LookUp.clear = True
            
            LookUp.Query = "select VARCODE""Code"",VARNAME""Name"" from rm_var"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "1200,2300"
            LookUp.Caption = "Variety Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grddatagrid.Columns(4).Text = LookUp.Fields(0)
                grddatagrid.Columns(5).Text = LookUp.Fields(1)
                LookUp.clear = True
                grddatagrid.Col = 6
                grddatagrid.SetFocus
                Exit Sub
            Else
                LookUp.clear = True
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                Exit Sub
            End If
            
''            ksldesc1.Visible = True
''            ksldesc1.conn = connectstring
''            ksldesc1.table = "RM_VAR"
''            ksldesc1.listfield1 = "VARCODE"
''            ksldesc1.listfield2 = "VARNAME"
''            ksldesc1.Caption = "Variety Details"
''            Frame2.Visible = True
''            Frame2.ZOrder
''            ksldesc1.SetFocus
''            Exit Sub
        End If
    End Select

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select the document date"
End If
If Index = 0 And (MaskEdBox1(0).Enabled) And Not (Opt = "qry" Or Opt = " " Or Opt = "") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox1(0).SetFocus
        Exit Sub
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox "GIN date cannot be greater then processing date", vbInformation, head
        MaskEdBox1(0).SetFocus
        Exit Sub
    ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
        MsgBox "GIN date cannot be less then processing date", vbInformation, head
        MaskEdBox1(0).SetFocus
        Exit Sub
    Else
        txtFields(5).SetFocus
        Exit Sub
    End If
End If
If Index = 1 And (MaskEdBox1(1).Enabled) And Not (Opt = "qry" Or Opt = " " Or Opt = "") Then
    If Not (IsDate(MaskEdBox1(1).Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox1(1).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > pdate Then
            MsgBox "Delivery challan date Cannot be greater then processing date", vbInformation, head
            MaskEdBox1(1).SetFocus
    End If
End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure MaskEdBox1_LostFocus of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

   If (KeyAscii <> 9) Or (KeyAscii <> 8) Then
       tonum Text1, 6, KeyAscii
   End If

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Text1_KeyPress of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub QUERY_MODE(docNo As Long)
    Dim Rs As Recordset
On Error GoTo QUERY_MODE_Error

    If Not Opt = " " Then
        On Error GoTo ER1
        'BUTTON(12).Enabled = True
        Call disablcontls
        DATLAB.Caption = pdate   'This variable is declared as global to show the date
        If docNo = 0 Then
            Opt = " "
            Set adoPrimaryRS = New Recordset
            Call qry1
        Else
            Call fnd1(docNo)
        End If
        If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
            MsgBox "No records found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
            Dim oText As TextBox
            'Bind the text boxes to the recordset
            For Each oText In Me.txtFields
                oText.Text = ""
            Next
            Text1.Text = ""
            Text2.Text = ""
            TCN.Text = ""
            MaskEdBox1(0).Text = ""
            MaskEdBox1(1).Text = ""
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
            MsgBox "No records found", vbInformation, head
            Screen.MousePointer = dv1
            Call BUTTON_Click(10)
            Exit Sub
        End If
  
        Call bindcontls
        
        If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
'        MaskEdBox1(2).Enabled = False
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Set Text2.DataSource = adoPrimaryRS
        Set grddatagrid.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        desc.Caption = "Query"
        If Opt = "mod" Or Opt = "del" Then
           DataCombo1.Visible = False 'For modification & deletion
           delmodok.Visible = False 'For modification & deletion
           delmodoklabel.Visible = False
        End If
        
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Visible = False
        
        grddatagrid.Columns(4).Width = 1250
        grddatagrid.Columns(5).Width = 2000
        grddatagrid.Columns(6).Width = 1289.764
        grddatagrid.Columns(7).Width = 1289.764
        grddatagrid.Columns(8).Width = 2500
    End If
    
    ' Calling newform procedure from Module to disable buttons
  
    Call NEWFORM(BUTTON)
    If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
        MsgBox "No records found", vbInformation, head
        Call Norecfound(BUTTON)
        TCN.Text = ""
        Text1.Text = ""
        Text2.Text = ""
        Call bindcontls
        Set grddatagrid.DataSource = Nothing
        Screen.MousePointer = 0
        Exit Sub
    Else
        Call NEWFORM(BUTTON)
    End If
    If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = dv1
        Exit Sub
    End If
    Screen.MousePointer = 0
    Exit Sub
ER1:
    If Err = 3021 Then
        MsgBox "No records Found", vbInformation, head + "Message"
        If Opt = "fnd" Then
            Set grddatagrid.DataSource = Nothing
        End If
        Screen.MousePointer = 0
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  coul", vbInformation, head
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0

Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub qry1()
On Error GoTo qry1_Error

 Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.DCNO,th.DCDT,th.SLCODE," & _
 "s.slname,th.VEHICLENO,TH.REMARKS,th.obflag  from  RM_DCDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
 "  Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks',t.obflag from  RM_DCDYINGDT t,RM_VAR i where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE Order by t.dcsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,DCNO TO DCNO,DCDT TO DCDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
qry1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure qry1 of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
 End Sub
 

Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error

 Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.DCNO,th.DCDT,th.SLCODE," & _
 "s.slname,th.VEHICLENO,TH.REMARKS,th.obflag  from  RM_DCDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
 "  Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks',t.obflag from  RM_DCDYINGDT t,RM_VAR i where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE Order by t.dcsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,DCNO TO DCNO,DCDT TO DCDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
fnd1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure fnd1 of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub hdlist()
On Error GoTo hdlist_Error

    Print #a, Chr(18) + Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
    Rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(txtFields(2).Text) & "  Order by TH.DOCNO ", DB, adOpenStatic, adLockReadOnly
    Print #a, Space(3) + Padr("Receipts Without Purchase Order Listing", 50, " ")
    Print #a,
    Print #a, Space(3) + "GRN No         :" + Padr(Rs("docno"), 10, " ") + Space(45) + "Date :" + Padr(Format(Rs("docdt"), "dd/mm/yy"), 10, " ")
    Print #a, Space(3) + "Supplier       :" + Padr(Rs("slname"), 40, " ") + Space(12) + "Ref. No :" + Padr(Rs("refno"), 10, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + Chr(15) + Padr("Code", 10, " ") + Space(3) + Padr("Description", 70, " ") + Space(3) + Padr("Unit", 4, " ") + Space(2) + Padl("Quantity", 15, " ") + Space(2) + Padr("Godown", 35, " ") + Chr(18)
    Print #a, Space(3) + String(85, "-")

Exit Sub
hdlist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure hdlist of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub pblist()
On Error GoTo pblist_Error

    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    Call hdlist
    End If

Exit Sub
pblist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure pblist of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub GRIDALIGN()
On Error GoTo GRIDALIGN_Error

    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    
    grddatagrid.Columns(4).Width = 1250
    grddatagrid.Columns(5).Width = 2000
    grddatagrid.Columns(6).Width = 1289.764
    grddatagrid.Columns(7).Width = 1289.764
    grddatagrid.Columns(8).Width = 2500

Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRIDALIGN of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Dim CHECKSLRS As Recordset
    Select Case Index
    Case 7
        Set CHECKSLRS = New Recordset
        CHECKSLRS.Open "SELECT * FROM FA_SLMAS WHERE SLCODE LIKE 'C1%' AND SLCODE='" & txtFields(7).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CHECKSLRS.RecordCount > 0 Then
            Text2.Text = CHECKSLRS!Slname
            txtFields(3).SetFocus
            Exit Sub
        Else
            
            LookUp.clear = True
            LookUp.Query = "select slcode as Code,slname  as Name from FA_SLMAS WHERE SLCODE LIKE 'C1%'"
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "1200,3500"
            LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                        txtFields(7).Text = LookUp.Fields(0)
                        Text2.Text = LookUp.Fields(1)
                        LookUp.clear = True
                        txtFields(3).SetFocus
                 Else
                        LookUp.clear = True
                        txtFields(7).SetFocus
                 End If

''            Frame2.Visible = True
''            Frame2.ZOrder
''            SSTab1.Visible = False
''            ksldesc1.Visible = True
''            ksldesc1.conn = connectstring
''            ksldesc1.table = "FA_SLMAS WHERE SLCODE LIKE 'C1%'"
''            ksldesc1.listfield1width = 6800
''            ksldesc1.listfield2width = 3000
''            ksldesc1.listfield1 = "slname as SupplierName"
''            ksldesc1.listfield2 = "slcode as SupplierCode"
''            ksldesc1.Caption = "Suppliers Details"
''            Frame2.Visible = True
''            Frame2.ZOrder
''            ksldesc1.SetFocus
''            Exit Sub
        End If
    End Select
End If

Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure txtFields_LostFocus of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0
End Sub
Sub DocNoLookup()
On Error GoTo DocNoLookup_Error

        LookUp.clear = True
        LookUp.Query = "SELECT DCNO,DCDT FROM RM_DCDYINGHD WHERE DCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'"
        LookUp.Caption = "Document No. Listing"
        LookUp.DefCol = "DCNO"
        LookUp.ALIGN = "2000,2500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Call adddelmod(BUTTON)
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.DCNO,th.DCDT,th.SLCODE," & _
                               "s.slname,th.VEHICLENO,TH.REMARKS,TH.obflag  from  RM_DCDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DCNO=" & LookUp.Fields(0) & " AND DCDT='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "' " & _
                               "  Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.DCNO,t.dcdt,t.DCSNO  ""Serial No."",t.VARCODE ""Variety Code"",i.varname ""Name"",QUANTITY ""Quantity"",KGS ""Kgs"",t.remarks 'Remarks',t.obflag from  RM_DCDYINGDT t,RM_VAR i where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE Order by t.dcsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,DCNO TO DCNO,DCDT TO DCDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
            
            Call bindcontls
            If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
            stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
            Set Text2.DataSource = adoPrimaryRS
            Set grddatagrid.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
            desc.Caption = "Query"
            If Opt = "mod" Or Opt = "del" Then
               DataCombo1.Visible = False
               delmodok.Visible = False
               delmodoklabel.Visible = False
                grddatagrid.Enabled = True
                
                grddatagrid.EditActive = True
                grddatagrid.Columns(6).Locked = False
                grddatagrid.Columns(7).Locked = False
            End If
            grddatagrid.Columns(0).Visible = False
            grddatagrid.Columns(1).Visible = False
            grddatagrid.Columns(2).Visible = False
            grddatagrid.Columns(3).Visible = False
            grddatagrid.Columns(4).Width = 1250
            grddatagrid.Columns(5).Width = 2000
            grddatagrid.Columns(6).Width = 1289.764
            grddatagrid.Columns(7).Width = 1289.764
            grddatagrid.Columns(8).Width = 2500
            LookUp.clear = True
        Else
            Call BUTTON_Click(10)
        End If

Exit Sub
DocNoLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure DocNoLookup of Form OBDyingDC", vbInformation, head
Screen.MousePointer = 0

End Sub
