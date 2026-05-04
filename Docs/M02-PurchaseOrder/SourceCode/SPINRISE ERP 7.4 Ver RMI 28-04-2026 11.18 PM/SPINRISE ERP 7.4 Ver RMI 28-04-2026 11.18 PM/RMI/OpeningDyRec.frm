VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form OpenDyRec 
   Caption         =   "OPening Dyed  / Web  Cotton Entry"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11310
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   11310
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Caption         =   "w"
      Height          =   645
      Left            =   0
      TabIndex        =   25
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "OpeningDyRec.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":0397
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
         Picture         =   "OpeningDyRec.frx":06A1
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":0A3D
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "OpeningDyRec.frx":0D47
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":10C1
         Height          =   510
         Index           =   6
         Left            =   3180
         Picture         =   "OpeningDyRec.frx":150B
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":1858
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "OpeningDyRec.frx":1B62
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":1EF5
         Height          =   510
         Index           =   5
         Left            =   2655
         Picture         =   "OpeningDyRec.frx":233F
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   3705
         Picture         =   "OpeningDyRec.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "OpeningDyRec.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":361D
         Height          =   510
         Index           =   9
         Left            =   4755
         Picture         =   "OpeningDyRec.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   5280
         Picture         =   "OpeningDyRec.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":434F
         Height          =   510
         Index           =   8
         Left            =   4230
         Picture         =   "OpeningDyRec.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpeningDyRec.frx":4AFB
         Height          =   510
         Index           =   3
         Left            =   2130
         Picture         =   "OpeningDyRec.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   8
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
         TabIndex        =   30
         Top             =   255
         Width           =   630
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
         Left            =   7395
         TabIndex        =   28
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   33
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   5265
      Left            =   285
      TabIndex        =   22
      Top             =   885
      Width           =   10755
      _ExtentX        =   18971
      _ExtentY        =   9287
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "OpeningDyRec.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grdDataGrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   2535
         Left            =   120
         TabIndex        =   21
         Top             =   2520
         Width           =   10575
         _ExtentX        =   18653
         _ExtentY        =   4471
         _Version        =   393216
         AllowArrows     =   -1  'True
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         Height          =   2310
         Left            =   120
         TabIndex        =   23
         Top             =   60
         Width           =   10605
         Begin VB.TextBox txtFields 
            DataField       =   "DCNO"
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
            Index           =   3
            Left            =   1695
            TabIndex        =   2
            Top             =   840
            Width           =   1575
         End
         Begin VB.TextBox txtFields 
            DataField       =   "SLCODE"
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
            Index           =   7
            Left            =   1695
            MaxLength       =   10
            TabIndex        =   3
            Text            =   " "
            Top             =   1275
            Width           =   1080
         End
         Begin VB.TextBox txtFields 
            DataField       =   "RECNO"
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
            Index           =   2
            Left            =   1695
            TabIndex        =   60
            Top             =   270
            Width           =   1575
         End
         Begin VB.TextBox txtFields 
            DataField       =   "REMARKS"
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
            Index           =   0
            Left            =   1695
            MaxLength       =   25
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   1755
            Width           =   6690
         End
         Begin VB.TextBox txtFields 
            DataField       =   "DCNO"
            Height          =   330
            Index           =   1
            Left            =   1695
            TabIndex        =   54
            Text            =   "00"
            Top             =   2520
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.TextBox Text2 
            DataField       =   "slname"
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
            Left            =   2850
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   1275
            Width           =   5610
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "RECDT"
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
            Left            =   5160
            TabIndex        =   1
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
            Left            =   5115
            TabIndex        =   16
            Top             =   270
            Width           =   1410
            _ExtentX        =   2487
            _ExtentY        =   582
            _Version        =   393216
            Format          =   64684033
            CurrentDate     =   36218
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
            Index           =   1
            Left            =   5175
            TabIndex        =   55
            Top             =   2520
            Visible         =   0   'False
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
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   330
            Left            =   5130
            TabIndex        =   56
            Top             =   2520
            Visible         =   0   'False
            Width           =   1410
            _ExtentX        =   2487
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   64684033
            CurrentDate     =   36218
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "DC Number"
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
            Left            =   240
            TabIndex        =   59
            Top             =   840
            Width           =   1050
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Opening Ref No."
            Height          =   195
            Index           =   1
            Left            =   225
            TabIndex        =   58
            Top             =   2580
            Visible         =   0   'False
            Width           =   1200
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Dc Date"
            Height          =   195
            Index           =   0
            Left            =   3450
            TabIndex        =   57
            Top             =   2580
            Visible         =   0   'False
            Width           =   600
         End
         Begin VB.Label lblLabels 
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
            Index           =   9
            Left            =   210
            TabIndex        =   53
            Top             =   1800
            Width           =   825
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Party"
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
            Left            =   210
            TabIndex        =   49
            Top             =   1320
            Width           =   465
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Rec Date"
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
            Left            =   3435
            TabIndex        =   48
            Top             =   330
            Width           =   855
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Rec. Number"
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
            Left            =   210
            TabIndex        =   47
            Top             =   330
            Width           =   1185
         End
      End
   End
   Begin VB.Frame Frame5 
      Height          =   5100
      Left            =   285
      TabIndex        =   40
      Top             =   930
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton delmodok 
         Caption         =   "&OK"
         Height          =   320
         Left            =   6360
         TabIndex        =   18
         Top             =   870
         Width           =   735
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3255
         Left            =   120
         TabIndex        =   41
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
         TabIndex        =   17
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
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2580
         TabIndex        =   43
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
         TabIndex        =   42
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Frame Frame4 
      Height          =   4875
      Left            =   480
      TabIndex        =   36
      Top             =   1125
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
         TabIndex        =   19
         Top             =   4110
         Width           =   1275
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   2415
         Left            =   690
         TabIndex        =   37
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
         TabIndex        =   39
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
         TabIndex        =   38
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
      Left            =   1440
      TabIndex        =   44
      Top             =   3480
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox Text1 
         ForeColor       =   &H8000000D&
         Height          =   330
         Left            =   3360
         MaxLength       =   6
         TabIndex        =   24
         Top             =   900
         Width           =   2055
      End
      Begin VB.CommandButton Command5 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "OpeningDyRec.frx":51B6
         Height          =   615
         Left            =   4020
         Picture         =   "OpeningDyRec.frx":5598
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "OpeningDyRec.frx":596B
         Height          =   615
         Left            =   2580
         Picture         =   "OpeningDyRec.frx":5D51
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Enter the Receipt Doc.No."
         Height          =   195
         Left            =   1200
         TabIndex        =   46
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
         TabIndex        =   45
         Top             =   120
         Width           =   7530
      End
   End
   Begin VB.Frame Frame2 
      ClipControls    =   0   'False
      Height          =   5100
      Left            =   315
      TabIndex        =   34
      Top             =   930
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KSLDESC1 
         Height          =   3495
         Left            =   840
         TabIndex        =   29
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   6165
         caption         =   ""
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "OpeningDyRec.frx":6117
         Height          =   615
         Left            =   3000
         Picture         =   "OpeningDyRec.frx":64FD
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   4320
         Width           =   1185
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "OpeningDyRec.frx":68C3
         Height          =   615
         Left            =   4740
         Picture         =   "OpeningDyRec.frx":6CA5
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   4320
         Width           =   1185
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
         TabIndex        =   35
         Top             =   120
         Width           =   8790
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
      TabIndex        =   52
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
      TabIndex        =   51
      Top             =   1305
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Opening Stock  Dyed Cotton Entry"
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
      TabIndex        =   50
      Top             =   570
      Width           =   4440
   End
End
Attribute VB_Name = "OpenDyRec"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim trs As ADODB.Recordset
Dim uptrs As ADODB.Recordset
Dim uprec1 As Recordset
Dim uprec2 As Recordset
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
       
       Opt = "add"
       sp = "Y"
       desc.Caption = "Addition"
       stbar.Panels(2).Text = " "
       DB.BeginTrans
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE,s.slname,TH.REMARKS,th.obflag  from  RM_RECDYINGHD th, FA_SLMAS s  where th.slcode=s.slcode and 1=2", DB, adOpenStatic, adLockBatchOptimistic
       Set adoSecondaryRS = New Recordset
       adoSecondaryRS.Open "select t.DIVCODE,t.RECNO,t.REcdt,t.RECSNO  ""Serial No."",PLOTNO ""Party Lot No."",t.VARCODE ""Variety Code"",i.varname ""Name"",t.COLORCODE ""Color Code"",colorname ""Color Name"",QUANTITY ""Quantity"",NETWT ""Net Wt."",MILLWT ""Mill Wt."",t.remarks 'Remarks',obflag from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where t.varcode=i.varcode AND T.COLORCODE=J.COLORCODE and 1=2", DB, adOpenStatic, adLockBatchOptimistic
       Call bindcontls
       Set grddatagrid.DataSource = adoSecondaryRS
       Text2.Text = ""
       adoPrimaryRS.AddNew
       adoSecondaryRS.AddNew
       Set MaxNoRs = New Recordset
       MaxNoRs.Open "SELECT isnull(MAX(isnull(recNO,0)),0)+1 FROM RM_RECDYINGHD WHERE RECDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
       If MaxNoRs.RecordCount > 0 Then
            txtFields(2).Text = MaxNoRs(0)
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
        
'        SSTab1.Visible = False
'        Frame2.Visible = True
'        KSLDESC1.conn = connectstring
'        KSLDESC1.table = "RM_DCDYINGHD"
'        KSLDESC1.listfield1 = "DCNO"
'        KSLDESC1.listfield2 = "DCDT"
'        Frame2.ZOrder
'        KSLDESC1.SetFocus
        MaskEdBox1(0).SetFocus
       ' txtFields(7).SetFocus
        Exit Sub
       Exit Sub
         
Case 1 'modification
        Opt = "mod"
        
'        SSTab1.Visible = False
'        Frame2.Visible = True
'        ksldesc1.conn = connectstring
'        ksldesc1.table = "RM_RECDYINGHD"
'        ksldesc1.listfield1 = "RECNO"
'        ksldesc1.listfield2 = "RECDT"
'        Frame2.ZOrder
'        ksldesc1.SetFocus
'        Exit Sub
        
Case 2
        Opt = "del"
'        SSTab1.Visible = False
'        Frame2.Visible = True
'        ksldesc1.conn = connectstring
'        ksldesc1.table = "RM_RECDYINGHD"
'        ksldesc1.listfield1 = "RECNO"
'        ksldesc1.listfield2 = "RECDT"
'        Frame2.ZOrder
'        ksldesc1.SetFocus
'        Exit Sub
        
Case 3
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
        Open "C:\ind.txt" For Output As #a
        Call hdlist
        Set rs1 = New Recordset
        
        rs1.Open "select t.porddt as podt ,t.ITEMCODE as item ,i.itemname as Descr,i.Cuom as Unit,round((t.Quantity/I.UOMQTY)*I.CUOMQTY,0)  as Qty,t.rate as Rate ,t.value as Value,h.NAME as Godown, t.remarks 'Remarks' from  in_TRNTAIL t,in_godown h,in_item i where  ( t.pordno is null OR  t.pordno in (0)) and h.godcode = t.godcode and t.divcode = '" & Divcode & "'AND T.DIVCODE=H.DIVCODE and t.itemcode = i.itemcode And t.docno = " & Trim(txtFields(2).Text) & "   Order by t.docsno ", DB, adOpenStatic, adLockReadOnly
        Do While Not rs1.EOF
        Print #a, Space(3) + Chr(15) + Padr(rs1("item"), 10, " ") + Space(3) + Padr(rs1("descr"), 70, " ") + Space(3) + Padl(Format(rs1("unit"), "dd/mm/yyyy"), 4, " ") + Space(2) + Padl(INF(rs1("qty"), 3), 15, " ") + Space(2) + Padr(rs1("godown"), 35, " ") + Chr(18)
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
'''        If Trim(txtFields(2).Text) <> Empty Then
'''              Set rs = New Recordset
'''              rs.Open "SELECT DISTINCT TYPE_CODE,B.TYPNAME FROM IN_TRNTAIL A,PO_TYPE B WHERE A.POGRP=B.TYPE_CODE AND DOCNO=" & txtFields(2) & "", db, adOpenStatic, adLockBatchOptimistic
'''              If rs.RecordCount > 0 Then
'''                  txtFields(4).Text = rs(0)
'''                  Text3.Text = rs(1)
'''              Else
'''                  txtFields(4).Text = Empty
'''                  Text3.Text = Empty
'''              End If
'''        End If
        
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
'''        If Trim(txtFields(2).Text) <> Empty Then
'''              Set rs = New Recordset
'''              rs.Open "SELECT DISTINCT TYPE_CODE,B.TYPNAME FROM IN_TRNTAIL A,PO_TYPE B WHERE A.POGRP=B.TYPE_CODE AND DOCNO=" & txtFields(2) & "", db, adOpenStatic, adLockBatchOptimistic
'''              If rs.RecordCount > 0 Then
'''                  txtFields(4).Text = rs(0)
'''                  Text3.Text = rs(1)
'''              Else
'''                  txtFields(4).Text = Empty
'''                  Text3.Text = Empty
'''              End If
'''        End If
        
        'Call navi(BUTTON)
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
'''        If Trim(txtFields(2).Text) <> Empty Then
'''              Set rs = New Recordset
'''              rs.Open "SELECT DISTINCT TYPE_CODE,B.TYPNAME FROM IN_TRNTAIL A,PO_TYPE B WHERE A.POGRP=B.TYPE_CODE AND DOCNO=" & txtFields(2) & "", db, adOpenStatic, adLockBatchOptimistic
'''              If rs.RecordCount > 0 Then
'''                  txtFields(4).Text = rs(0)
'''                  Text3.Text = rs(1)
'''              Else
'''                  txtFields(4).Text = Empty
'''                  Text3.Text = Empty
'''              End If
'''        End If
        
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
            desc.Caption = "ADD"
            
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF  ' delete the empty rows in grid
                If adoSecondaryRS("Color Code") = Empty Or IsNull(adoSecondaryRS("Color Code")) Then
                    adoSecondaryRS.Delete adAffectCurrent
                End If
                adoSecondaryRS.MoveNext
            Loop
            
                'adoPrimaryRS.MoveFirst
                'w = adoPrimaryRS.RecordCount
            'Do While Not adoPrimaryRS.EOF   ' inserting in RM_RECDYINGHD
                'adoPrimaryRS.AddNew
                adoPrimaryRS("DIVCODE") = Divcode
                adoPrimaryRS("RECNO") = txtFields(2)
                adoPrimaryRS("RECDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                adoPrimaryRS("DCNO") = txtFields(3)
                adoPrimaryRS("DCDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
                adoPrimaryRS("SLCODE") = txtFields(7).Text
                adoPrimaryRS("REMARKS") = txtFields(0).Text
                adoPrimaryRS("Obflag") = "Y"
                
                ' On Error GoTo errde
            'Loop
                adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            
            'db.Execute "INSERT INTO RM_RECDYINGHD (DIVCODE,RECNO,RECDT,DCNO,DCDT,SLCODE,REMARKS,OPenflag) VALUES ('" & Divcode & "'," & txtFields(2) & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'," & txtFields(1) & ",'" & Format(MaskEdBox1(1).Text, "YYYY/MM/DD") & "','" & txtFields(7).Text & "','" & txtFields(0).Text & "'," & 1 & ")"
            SERNO = 1
            
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF  'Inserting RM_RECDYINGDT
'                adoSecondaryRS("DIVCODE") = Divcode
'                adoSecondaryRS("RECNO") = txtfields(2)
'                adoSecondaryRS("RECDT") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
'                adoSecondaryRS("Serial No.") = SERNO
'                adoSecondaryRS("Party Lot No.") = grdDataGrid.Columns(4).Text
'                adoSecondaryRS("Variety Code") = grdDataGrid.Columns(5).Text
'                adoSecondaryRS("Color Code") = grdDataGrid.Columns(7).Text
'                adoSecondaryRS("Quantity") = grdDataGrid.Columns(9).Text
'                adoSecondaryRS("Net Wt.") = grdDataGrid.Columns(11).Text
'                adoSecondaryRS("Mill Wt.") = grdDataGrid.Columns(11).Text
'                adoSecondaryRS("REMARKS") = grdDataGrid.Columns(12).Text
'                adoSecondaryRS("OBFLAG") = "Y"
                
                'db.Execute "INSERT INTO RM_RECDYINGDT (DIVCODE,RECNO,RECDT,RECSNO,PLOTNO,VARCODE,COLORCODE,QUANTITY,NETWT,MILLWT,REMARKS) VALUES ('" & Divcode & "'," & txtFields(2) & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'," & SERNO & ",'" & grdDataGrid.Columns(4).Text & "','" & grdDataGrid.Columns(5).Text & "','" & grdDataGrid.Columns(7).Text & "'," & grdDataGrid.Columns(9).Text & "," & grdDataGrid.Columns(10).Text & "," & grdDataGrid.Columns(11).Text & ",'" & grdDataGrid.Columns(12).Text & "')"
                DB.Execute "INSERT INTO RM_RECDYINGDT (DIVCODE,RECNO,RECDT,RECSNO,PLOTNO,VARCODE,COLORCODE,QUANTITY,NETWT,MILLWT,REMARKS,OBFLAG) VALUES ('" & Divcode & "'," & txtFields(2) & ",'" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'," & SERNO & ",'" & grddatagrid.Columns(4).Text & "','" & grddatagrid.Columns(5).Text & "','" & grddatagrid.Columns(7).Text & "'," & grddatagrid.Columns(9).Text & "," & grddatagrid.Columns(11).Text & "," & grddatagrid.Columns(11).Text & ",'" & grddatagrid.Columns(12).Text & "','Y')"
                adoSecondaryRS.MoveNext
                SERNO = SERNO + 1
                
            Loop
             
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
        ElseIf Opt = "del" Then
            DB.BeginTrans
            DB.Execute "DELETE FROM RM_RECDYINGDT WHERE RECNO=" & txtFields(2).Text & " AND RECDT='" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'"
            DB.Execute "DELETE FROM RM_RECDYINGHD WHERE RECNO=" & txtFields(2).Text & " AND RECDT='" & Format(MaskEdBox1(0).Text, "YYYY/MM/DD") & "'"
            DB.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
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
    Frame2.Visible = False
    SSTab1.Visible = True
    Select Case KslDesc1.listfield1
    Case "SLCODE"
        txtFields(7).Text = KslDesc1.Code
        Text2.Text = KslDesc1.description
        txtFields(0).SetFocus
        Exit Sub
    Case "VARCODE"
        grddatagrid.Columns(5).Text = KslDesc1.Code
        grddatagrid.Columns(6).Text = KslDesc1.description
        grddatagrid.Col = 7
        grddatagrid.SetFocus
        Exit Sub
        
    Case "COLORCODE"
    
        grddatagrid.Columns(7).Text = KslDesc1.Code
        grddatagrid.Columns(8).Text = KslDesc1.description
        grddatagrid.Col = 9
        grddatagrid.SetFocus
        Exit Sub
        
        
    Case "DCNO"
        
        Call adddelmod(BUTTON)
'''        Call bindcontls
        Set uprec1 = New Recordset
        uprec1.Open "SELECT DCNO,DCDT,A.SLCODE,SLNAME FROM RM_DCDYINGHD A,FA_SLMAS B WHERE A.SLCODE=B.SLCODE AND DCNO=" & KslDesc1.Code & " AND DCDT='" & Format(KslDesc1.description, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        txtFields(1).Text = uprec1!DCNO
        MaskEdBox1(1).Text = Format(uprec1!DCDT, "DD/MM/YYYY")
        txtFields(7).Text = uprec1!SLCODE
        Text2.Text = uprec1!Slname
        Set uprec2 = New Recordset
        uprec2.Open "SELECT * FROM RM_DCDYINGDT A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND DCNO=" & KslDesc1.Code & " AND DCDT='" & Format(KslDesc1.description, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not uprec2.EOF
            adoSecondaryRS.AddNew
            adoSecondaryRS("Variety Code") = uprec2!Varcode
            adoSecondaryRS("NAME") = uprec2!VarName
            adoSecondaryRS!Quantity = uprec2!Quantity
            uprec2.MoveNext
        Loop
        adoSecondaryRS.MoveFirst
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        Exit Sub
        
    Case "RECNO"
    
        Call adddelmod(BUTTON)
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE," & _
                           "s.slname,TH.REMARKS,th.obflag  from  RM_RECDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND RECNO=" & KslDesc1.Code & " AND RECDT='" & Format(KslDesc1.description, "YYYY/MM/DD") & "' " & _
                           "  Order by TH.RECNO } AS ParentCMD APPEND ({select t.DIVCODE,t.RECNO,t.REcdt,t.RECSNO  ""Serial No."",t.PLOTNO ""Party Lot No."",t.VARCODE ""Variety Code"",i.varname ""Name"",t.COLORCODE ""Color Code"",J.colorname ""Color Name"",QUANTITY ""Quantity"",netwt ""Net Wt."",millwt ""Mill Wt."",t.remarks 'Remarks',t.obflag from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE AND T.COLORCODE=J.COLORCODE Order by t.RECsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,RECNO TO RECNO,RECDT TO RECDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
        
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
End Sub

Private Sub Command2_Click()
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
End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.value
End Sub

Private Sub DTPicker1_LostFocus()
If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Invalid date", vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox "GIN date Cannot be greater then processing date", vbInformation, head
            MaskEdBox1(0).SetFocus
    End If
End If
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "({Tab})"
End Sub

Private Sub Form_Load()
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
End Sub


Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  'adoprimaryrs.Close
  Set adoPrimaryRS = Nothing
  Set adoSecondaryRS = Nothing
  Set Nqcrecept = Nothing
  Reset
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt = " " Then
      If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
      Else
        stbar.Panels(2).Text = "No records found"
      End If
  End If
End Sub


Public Sub bindcontls()
    Dim oText As TextBox
    'Bind the text boxes to the recordset
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
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtFields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
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
    End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
    If Opt = "add" And KeyCode = 9 Then
        If grddatagrid.Col = 12 Then
            adoSecondaryRS.AddNew
            grddatagrid.Col = 3
            grddatagrid.SetFocus
            Exit Sub
        End If
    End If
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
    Select Case LastCol
    Case 5
        Set CHECKVARRS = New Recordset
        CHECKVARRS.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CHECKVARRS.RecordCount > 0 Then
            grddatagrid.Columns(6).Text = CHECKVARRS!VarName
            grddatagrid.Col = 7
            grddatagrid.SetFocus
            Exit Sub
        Else
            LookUp.clear = True
            LookUp.Query = "select VARCODE""Code"",VARNAME""Name"" FROM RM_VAR"
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "1200,1500"
            LookUp.Show vbModal
                  If LookUp.Cancel = False Then
                            grddatagrid.Columns(5).Text = LookUp.Fields(0)
                            grddatagrid.Columns(6).Text = LookUp.Fields(1)
                            LookUp.clear = True
                            grddatagrid.Col = 7
                            grddatagrid.SetFocus
                            Exit Sub
                  Else
                            LookUp.clear = True
                            grddatagrid.Col = 7
                            grddatagrid.SetFocus
                  End If

        
        
        
''            SSTab1.Visible = False
''            Frame2.Visible = True
''            ksldesc1.conn = connectstring
''            ksldesc1.table = "RM_VAR"
''            ksldesc1.listfield1 = "VARCODE"
''            ksldesc1.listfield2 = "VARNAME"
''            Frame2.ZOrder
''            ksldesc1.SetFocus
''            Exit Sub
        End If
        
    Case 7
        Set CHECKVARRS = New Recordset
        CHECKVARRS.Open "SELECT * FROM RM_COLOR WHERE COLORCODE='" & grddatagrid.Columns(7).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CHECKVARRS.RecordCount > 0 Then
            grddatagrid.Columns(8).Text = CHECKVARRS!COLORNAME
            grddatagrid.Col = 9
            grddatagrid.SetFocus
            Exit Sub
        Else
        
              LookUp.clear = True
            LookUp.Query = "select COLORCODE""Code"",COLORNAME""Name"" FROM RM_COLOR"
            LookUp.Caption = "Colour Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "1200,1500"
            LookUp.Show vbModal
                  If LookUp.Cancel = False Then
                        grddatagrid.Columns(7).Text = LookUp.Fields(0)
                        grddatagrid.Columns(8).Text = LookUp.Fields(1)
                        LookUp.clear = True
                        grddatagrid.Col = 9
                        grddatagrid.SetFocus
                        Exit Sub
                  Else
                        LookUp.clear = True
                        grddatagrid.Col = 7
                        grddatagrid.SetFocus
                  End If

''            SSTab1.Visible = False
''            Frame2.Visible = True
''            ksldesc1.conn = connectstring
''            ksldesc1.table = "RM_COLOR"
''            ksldesc1.listfield1 = "COLORCODE"
''            ksldesc1.listfield2 = "COLORNAME"
''            Frame2.ZOrder
''            ksldesc1.SetFocus
''            Exit Sub
        End If
        

    End Select
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
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
        'TXTFIELDS(5).SetFocus
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
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
   If (KeyAscii <> 9) Or (KeyAscii <> 8) Then
       tonum Text1, 6, KeyAscii
   End If
End Sub

Public Sub QUERY_MODE(docNo As Long)
    Dim Rs As Recordset
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
        grddatagrid.Columns(10).Visible = False
        grddatagrid.Columns(4).Width = 645.1654
        grddatagrid.Columns(5).Width = 1200.189
        grddatagrid.Columns(6).Width = 1440
        grddatagrid.Columns(7).Width = 1080
        grddatagrid.Columns(8).Width = 1844.787
        grddatagrid.Columns(9).Width = 764.7874
        grddatagrid.Columns(10).Width = 780.0945
        grddatagrid.Columns(11).Width = 734.7402
        grddatagrid.Columns(12).Width = 1739.906
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
End Sub


Public Sub qry1()
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE," & _
                   "s.slname,TH.REMARKS,obflag  from  RM_RECDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                   " and th.obflag='Y' Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.RECNO,t.REcdt,t.RECSNO  ""Serial No."",t.PLOTNO ""Party Lot No."",t.VARCODE ""Variety Code"",i.varname ""Name"",t.COLORCODE ""Color Code"",colorname ""Color Name"",QUANTITY ""Quantity"",netwt ""Net Wt."",millwt ""Mill Wt."",t.remarks 'Remarks',obflag from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE AND T.COLORCODE=J.COLORCODE Order by t.RECsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,RECNO TO RECNO,RECDT TO RECDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
 End Sub
 

Public Sub fnd1(MDOC)
 Set adoPrimaryRS = New Recordset
 adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE," & _
                   "s.slname,TH.REMARKS,obflag  from  RM_RECDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                   "  Order by TH.DCNO } AS ParentCMD APPEND ({select t.DIVCODE,t.RECNO,t.REcdt,t.RECSNO  ""Serial No."",t.PLOTNO ""Party Lot No."",t.VARCODE ""Variety Code"",i.varname ""Name"",t.COLORCODE ""Color Code"",colorname ""Color Name"",QUANTITY ""Quantity"",netwt ""Net Wt."",millwt ""Mill Wt."",t.remarks 'Remarks',obflag from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE AND T.COLORCODE=J.COLORCODE Order by t.RECsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,RECNO TO RECNO,RECDT TO RECDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

End Sub


Public Sub hdlist()
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
End Sub
Public Sub pblist()
    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    Call hdlist
    End If
End Sub
Public Sub GRIDALIGN()
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(3).Visible = False
    grddatagrid.Columns(4).Visible = False
    grddatagrid.Columns(10).Visible = False
    grddatagrid.Columns(4).Width = 1445.1654
    grddatagrid.Columns(5).Width = 1200.189
    grddatagrid.Columns(6).Width = 1440
    grddatagrid.Columns(7).Width = 1080
    grddatagrid.Columns(8).Width = 1844.787
    grddatagrid.Columns(9).Width = 764.7874
    grddatagrid.Columns(10).Width = 780.0945
    grddatagrid.Columns(11).Width = 734.7402
    grddatagrid.Columns(12).Width = 1739.906
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
Dim CHECKSLRS As Recordset
    Select Case Index
    
    Case 0
            grddatagrid.SetFocus
            grddatagrid.Enabled = True
            grddatagrid.AllowAddNew = True
            grddatagrid.Col = 4
            
            
            
    Case 7
        Set CHECKSLRS = New Recordset
        CHECKSLRS.Open "SELECT * FROM FA_SLMAS WHERE SLCODE LIKE 'C1%' AND SLCODE='" & txtFields(7).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CHECKSLRS.RecordCount > 0 Then
            Text2.Text = CHECKSLRS!Slname
            'TXTFIELDS(3).SetFocus
            Exit Sub
        Else
            'SSTab1.Visible = False
      LookUp.clear = True
      LookUp.Query = "select SLCODE as Code,SLNAME as Name FROM FA_SLMAS WHERE SLCODE  LIKE 'C1%' "
      LookUp.Caption = "Supplier Listing"
      LookUp.DefCol = "Name"
      LookUp.ALIGN = "1200,4500"
      LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtFields(7).Text = LookUp.Fields(0)
                Text2.Text = LookUp.Fields(1)
                LookUp.clear = True
                txtFields(0).SetFocus
                Exit Sub
            Else
                LookUp.clear = True
                txtFields(7).SetFocus
            End If
            
            
''            Frame2.Visible = True
''            ksldesc1.conn = connectstring
''            ksldesc1.table = "FA_SLMAS WHERE SLCODE LIKE 'C1%'"
''            ksldesc1.listfield1 = "SLCODE"
''            ksldesc1.listfield2 = "SLNAME"
''            Frame2.ZOrder
''            ksldesc1.SetFocus
''            Exit Sub
        End If
    End Select
End Sub
Sub DocNoLookup()
LookUp.clear = True
LookUp.Query = "select Recno,Recdt from RM_RECDYINGHD where recdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
LookUp.Caption = "Document No. Listing"
LookUp.DefCol = "Recno"
LookUp.ALIGN = "2000,2500"
LookUp.Show vbModal
If LookUp.Cancel = False Then
        Call adddelmod(BUTTON)
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.RECNO,th.RECDT,th.DCNO,th.DCDT,th.SLCODE," & _
                           "s.slname,TH.REMARKS,th.obflag  from  RM_RECDYINGHD th, FA_SLMAS s  where th.divcode = '" & Divcode & "' and th.slcode = s.slcode  and th.dcdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND RECNO=" & LookUp.Fields(0) & " AND RECDT='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "' " & _
                           "  Order by TH.RECNO } AS ParentCMD APPEND ({select t.DIVCODE,t.RECNO,t.REcdt,t.RECSNO  ""Serial No."",t.PLOTNO ""Party Lot No."",t.VARCODE ""Variety Code"",i.varname ""Name"",t.COLORCODE ""Color Code"",J.colorname ""Color Name"",QUANTITY ""Quantity"",netwt ""Net Wt."",millwt ""Mill Wt."",t.remarks 'Remarks',t.obflag from  RM_RECDYINGDT t,RM_VAR i,RM_COLOR J where  t.divcode = '" & Divcode & "' and t.VARCODE = i.VARCODE AND T.COLORCODE=J.COLORCODE Order by t.RECsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,RECNO TO RECNO,RECDT TO RECDT) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
        
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
End Sub

