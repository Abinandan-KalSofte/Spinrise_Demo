VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form BaleDetail 
   Caption         =   "Lot-Bale Weightment Data Transfer"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   3
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1600
         Picture         =   "BaleDetail.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":0397
         Height          =   510
         Index           =   8
         Left            =   4230
         Picture         =   "BaleDetail.frx":07E1
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "BaleDetail.frx":0B43
         Height          =   510
         Index           =   10
         Left            =   5280
         Picture         =   "BaleDetail.frx":0E4D
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Cancel (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":11C9
         Height          =   510
         Index           =   9
         Left            =   4755
         Picture         =   "BaleDetail.frx":14D3
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":1875
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "BaleDetail.frx":1CBF
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":2054
         Height          =   510
         Index           =   7
         Left            =   3705
         Picture         =   "BaleDetail.frx":249E
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "BaleDetail.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":2E72
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
         Picture         =   "BaleDetail.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "BaleDetail.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "BaleDetail.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":4364
         Height          =   510
         Index           =   6
         Left            =   3180
         Picture         =   "BaleDetail.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BaleDetail.frx":4AFB
         Height          =   510
         Index           =   3
         Left            =   2130
         Picture         =   "BaleDetail.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (ctrl F)"
         Top             =   120
         Width           =   520
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
         Left            =   6810
         TabIndex        =   15
         Top             =   240
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
         Left            =   8340
         TabIndex        =   14
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   2895
      Width           =   9480
      _ExtentX        =   16722
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
            TextSave        =   "02/06/2015"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "4:30 PM"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   5415
      Left            =   300
      TabIndex        =   17
      Top             =   1155
      Width           =   10785
      _ExtentX        =   19024
      _ExtentY        =   9551
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "BaleDetail.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grddatagrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame Frame1 
         Height          =   2520
         Left            =   90
         TabIndex        =   33
         Top             =   60
         Width           =   10605
         Begin VB.CommandButton Command2 
            Caption         =   "Cancel"
            Height          =   375
            Left            =   5040
            TabIndex        =   53
            Top             =   2040
            Width           =   735
         End
         Begin VB.CommandButton Command1 
            Caption         =   "Ok"
            Height          =   375
            Left            =   4200
            TabIndex        =   52
            Top             =   2040
            Width           =   735
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "VARCODE"
            Height          =   330
            Index           =   6
            Left            =   4350
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   50
            Top             =   1560
            Width           =   1440
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000004&
            Height          =   330
            Index           =   4
            Left            =   6000
            MaxLength       =   40
            TabIndex        =   49
            TabStop         =   0   'False
            Top             =   1560
            Width           =   2385
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "VARCODE"
            Height          =   330
            Index           =   3
            Left            =   4350
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   47
            Top             =   1080
            Width           =   1440
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000004&
            Height          =   330
            Index           =   1
            Left            =   6000
            MaxLength       =   40
            TabIndex        =   46
            TabStop         =   0   'False
            Top             =   1080
            Width           =   4425
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "docno"
            Enabled         =   0   'False
            Height          =   330
            Index           =   2
            Left            =   1560
            TabIndex        =   38
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "partycode"
            Height          =   330
            Index           =   5
            Left            =   1560
            TabIndex        =   37
            Top             =   640
            Width           =   855
         End
         Begin VB.TextBox Text2 
            DataField       =   "SLname"
            Enabled         =   0   'False
            Height          =   330
            Left            =   2460
            Locked          =   -1  'True
            TabIndex        =   36
            Top             =   640
            Width           =   4215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   96
            Left            =   1560
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   35
            TabStop         =   0   'False
            Top             =   1200
            Width           =   1680
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   1560
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   34
            TabStop         =   0   'False
            Top             =   1680
            Width           =   1680
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "docdt"
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
            Left            =   5250
            TabIndex        =   39
            Top             =   240
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   582
            _Version        =   393216
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
            Height          =   330
            Index           =   0
            Left            =   5280
            TabIndex        =   40
            Top             =   240
            Width           =   1370
            _ExtentX        =   2408
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            CalendarForeColor=   -2147483640
            Format          =   74252289
            CurrentDate     =   36218
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "BaleNo/wt"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   2
            Left            =   3480
            TabIndex        =   51
            Top             =   1560
            Width           =   765
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Vareity"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   3480
            TabIndex        =   48
            Top             =   1080
            Width           =   600
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Doc No."
            Height          =   195
            Index           =   2
            Left            =   60
            TabIndex        =   45
            Top             =   315
            Width           =   600
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Index           =   3
            Left            =   4440
            TabIndex        =   44
            Top             =   315
            Width           =   345
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Name"
            Height          =   195
            Index           =   5
            Left            =   60
            TabIndex        =   43
            Top             =   720
            Width           =   1035
         End
         Begin VB.Label Label96 
            AutoSize        =   -1  'True
            Caption         =   "Supplier LotNo"
            Height          =   195
            Left            =   60
            TabIndex        =   42
            Top             =   1275
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Arrival LotNo"
            Height          =   195
            Index           =   0
            Left            =   60
            TabIndex        =   41
            Top             =   1755
            Width           =   915
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2325
         Left            =   240
         TabIndex        =   13
         Top             =   2640
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   4101
         _Version        =   393216
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
      Begin VB.Frame Frame4 
         Height          =   4710
         Left            =   360
         TabIndex        =   27
         Top             =   -5160
         Visible         =   0   'False
         Width           =   7995
         Begin VB.PictureBox KslList1 
            ForeColor       =   &H8000000D&
            Height          =   3255
            Left            =   420
            ScaleHeight     =   3195
            ScaleWidth      =   7125
            TabIndex        =   30
            Top             =   660
            Width           =   7185
         End
         Begin VB.CommandButton lovcancel 
            Caption         =   "&Cancel"
            DownPicture     =   "BaleDetail.frx":51B6
            Height          =   615
            Left            =   4680
            Picture         =   "BaleDetail.frx":5598
            Style           =   1  'Graphical
            TabIndex        =   29
            Top             =   3915
            Width           =   1185
         End
         Begin VB.CommandButton lovok 
            Caption         =   "&OK"
            DownPicture     =   "BaleDetail.frx":596B
            Height          =   615
            Left            =   2940
            Picture         =   "BaleDetail.frx":5D51
            Style           =   1  'Graphical
            TabIndex        =   28
            Top             =   3915
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
            Left            =   30
            TabIndex        =   31
            Top             =   120
            Width           =   7935
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2655
         Left            =   120
         TabIndex        =   32
         Top             =   2520
         Width           =   10575
      End
   End
   Begin VB.Frame Frame5 
      Height          =   2430
      Left            =   1005
      TabIndex        =   18
      Top             =   2280
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox Text1 
         Height          =   330
         Index           =   0
         Left            =   3390
         MaxLength       =   6
         TabIndex        =   21
         Top             =   900
         Width           =   2055
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "BaleDetail.frx":6117
         Height          =   615
         Left            =   2500
         Picture         =   "BaleDetail.frx":64FD
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "BaleDetail.frx":68C3
         Height          =   615
         Left            =   4020
         Picture         =   "BaleDetail.frx":6CA5
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Find  from Document  No. "
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   480
         TabIndex        =   23
         Top             =   975
         Width           =   1860
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
         TabIndex        =   22
         Top             =   120
         Width           =   7620
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
      Index           =   0
      Left            =   975
      TabIndex        =   26
      Top             =   1320
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
      TabIndex        =   25
      Top             =   1320
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot-Bale Weightment Data Transfer"
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
      Left            =   360
      TabIndex        =   24
      Top             =   660
      Width           =   4605
   End
End
Attribute VB_Name = "BaleDetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRs As Recordset
Dim db As Connection
Dim Opt As String
Dim deltype As String
Dim mvd As String
Dim rs1 As Recordset
Dim sp As Recordset
Dim ITARY() As String
Dim modqty As Double
Dim Fnd As String
Dim GRP As String
Dim RW As Long
Dim rpt As String
Dim st2 As String, st1 As String
Dim ChRS As Recordset
Dim flg As String
Dim itemc As String
Dim TotAmount As Double
Dim Rept As Report.ReportView
Dim A, c, pg1 As Integer
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
On Error Resume Next
Select Case Index
Case 0
        If Record_Exists("VM_VEHMAS", "Please Define Vehicle in Vehicle Master") = False Then Exit Sub
        If Record_Exists("VM_DEP", "Please Define Department in Setup") = False Then Exit Sub
        If Record_Exists("fa_slmas", "Please Define Suppliers") = False Then Exit Sub
       ' DTPicker1(0).Enabled = True
        DTPicker1(1).Enabled = True
        DTPicker1(2).Enabled = True
        Opt = "add"
        desc.Caption = "Addition"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Addition"
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select DIVCODE,docNO,docdt,partyCODE,start_dt,end_dt,Amount from  mm_amch where 1= 2", db, adOpenStatic, adLockBatchOptimistic
        Set adoSecondaryRs = New Recordset
        adoSecondaryRs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description 'Vehicle Name',t.Amount from mm_amcl t,VM_VEHMAS m,VM_DEP d   WHERE d.depcode=t.depcode and m.VEH_NO=t.VEH_NO and 1 =2 ", db, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Text2.Text = ""
        adoprimaryrs.AddNew
        adoSecondaryRs.AddNew
        Set grddatagrid.DataSource = adoSecondaryRs
        ReDim ITARY(100, 0)
        db.BeginTrans
        Call grdalign
        Call ENABLCONTLS
        st1 = "B"
        st2 = "B"
        TXTFIELDS(2).Locked = True
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowAddNew = True
         Call adddelmod(BUTTON)
         Fnd = "n"
         mvd = "N"
         RW = 1000
         Screen.MousePointer = 0
         On Error Resume Next
         DTPicker1(0).MaxDate = yldate
         DTPicker1(0).MinDate = yfdate
         DTPicker1(1).MaxDate = yldate
         DTPicker1(1).MinDate = yfdate
         DTPicker1(2).MaxDate = yldate
         DTPicker1(2).MinDate = yfdate
         
         flg = ""
         itemc = "' '"
         MaskEdBox1(0).Text = pdate
         MaskEdBox1(1).Text = "__/__/____"
         MaskEdBox1(2).Text = "__/__/____"
         MaskEdBox1(0).SetFocus
         TXTFIELDS(8).Locked = False
         TXTFIELDS(5).SetFocus
Case 1
        'Modification
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("mm_amch") = False Then Exit Sub
        SSTab1.Visible = False
'        Frame3.Visible = True
'        Frame3.ZOrder
 '       Buttonframe.Enabled = False
'        Listcap.Caption = "select code from list"
'        KslDesc1.conn = connectstring
'        KslDesc1.table = "mm_amch"
'        KslDesc1.listfield1 = "docno"
'        KslDesc1.listfield2 = "docdt"
'        KslDesc1.SetFocus
        stbar.Panels(2).Text = "Select Code from the List"
        Buttonframe.Enabled = False
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        db.BeginTrans
'        Exit Sub
        stbar.Panels(2).Text = "Select the Record to be  Modified"
        LookUp.clear = True
        LookUp.query = "select docno 'DocNo',docdt 'DocDate',slCode 'PartyCode',slName 'PartyName' from mm_amch a,fa_slmas b where slcode=partycode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "PartyName"
        LookUp.ALIGN = "1000,1000,1000,2500"
        LookUp.Show vbModal
        If LookUp.cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select DIVCODE,docNO,docdt,partyCODE,start_dt,end_dt,Amount from  mm_amch where docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", db, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRs = New Recordset
            adoSecondaryRs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description 'Vehicle Name',t.Amount from mm_amcl t,VM_VEHMAS m,VM_DEP d   WHERE d.depcode=t.depcode and m.VEH_NO=t.VEH_NO and t.depcode=m.depcode and docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' order by t.depcode ", db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRs
            Call bindcontls
            Call grdalign
            
            If Opt = "mod" Then
              Call ENABLCONTLS
              MaskEdBox1(0).Enabled = False
              TXTFIELDS(2).Locked = True
              grddatagrid.Columns(3).Locked = True
              grddatagrid.Columns(4).Locked = True
              grddatagrid.Columns(5).Locked = True
              grddatagrid.Columns(6).Locked = True
            ElseIf Opt = "del" Then
              Call disablcontls
            End If
           Buttonframe.Enabled = True
           SSTab1.Visible = True
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
 Case 2
         'Modification
        Opt = "del"
        desc.Caption = "Deletion"
        If Record_Exists("mm_amch") = False Then Exit Sub
        SSTab1.Visible = False
'        Frame3.Visible = True
'        Frame3.ZOrder
        Buttonframe.Enabled = False
'        Listcap.Caption = "select code from list"
'        KslDesc1.conn = connectstring
'        KslDesc1.table = "mm_amch"
'        KslDesc1.listfield1 = "docno"
'        KslDesc1.listfield2 = "docdt"
'        KslDesc1.SetFocus
        stbar.Panels(2).Text = "Select Code from the List"
'        Buttonframe.Enabled = False
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        db.BeginTrans
        stbar.Panels(2).Text = "Select the Record to be  Deleted"
        LookUp.clear = True
        LookUp.query = "select docno as 'DocNo',docdt as 'DocDate',slCode 'PartyCode',slName 'PartyName' from mm_amch a,fa_slmas b where slcode=partycode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "PartyName"
        LookUp.ALIGN = "1000,1000,1000,2500"
        LookUp.Show vbModal
        If LookUp.cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select DIVCODE,docNO,docdt,partyCODE,start_dt,end_dt,Amount from  mm_amch where docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", db, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRs = New Recordset
            adoSecondaryRs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description 'Vehicle Name',t.Amount from mm_amcl t,VM_VEHMAS m,VM_DEP d   WHERE d.depcode=t.depcode and t.depcode=m.depcode and m.VEH_NO=t.VEH_NO and docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' order by t.depcode ", db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRs
            Call bindcontls
            Call grdalign
            
            If Opt = "mod" Then
              Call ENABLCONTLS
              MaskEdBox1(0).Enabled = False
              TXTFIELDS(2).Locked = True
              grddatagrid.Columns(3).Locked = True
              grddatagrid.Columns(4).Locked = True
              grddatagrid.Columns(5).Locked = True
              grddatagrid.Columns(6).Locked = True
            ElseIf Opt = "del" Then
              Call disablcontls
            End If
           Buttonframe.Enabled = True
           SSTab1.Visible = True
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
Case 3
        'Modification
        Opt = "fnd"
        desc.Caption = "Find"
        If Record_Exists("mm_amch") = False Then Exit Sub
        SSTab1.Visible = False
        stbar.Panels(2).Text = "Select Code from the List"
        Buttonframe.Enabled = False
        grddatagrid.AllowUpdate = True
        stbar.Panels(2).Text = "Select the Record to be  Find"
        LookUp.clear = True
        LookUp.query = "select docno 'DocNo',docdt 'DocDate',slCode 'PartyCode',slName 'PartyName' from mm_amch a,fa_slmas b where slcode=partycode"
        LookUp.Caption = "Document No Listing"
        LookUp.DefCol = "PartyName"
        LookUp.ALIGN = "1000,1000,1000,2500"
        LookUp.Show vbModal
        If LookUp.cancel = False Then
            SSTab1.Visible = True
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select DIVCODE,docNO,docdt,partyCODE,start_dt,end_dt,Amount from  mm_amch where docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", db, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRs = New Recordset
            adoSecondaryRs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description 'Vehicle Name',t.Amount from mm_amcl t,VM_VEHMAS m,VM_DEP d   WHERE d.depcode=t.depcode and m.VEH_NO=t.VEH_NO and t.depcode=m.depcode and docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' order by t.depcode ", db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRs
            Call bindcontls
            Call grdalign
            Call disablcontls
            grddatagrid.AllowUpdate = False
            grddatagrid.AllowAddNew = False
           Buttonframe.Enabled = True
           SSTab1.Visible = True
        Else
           Buttonframe.Enabled = True
           BUTTON_Click (10)
           SSTab1.Visible = True
        End If
        Exit Sub
Case 4
        'Query
        'Call query(BUTTON)
        'LIST
        If Record_Exists("mm_amch where divcode = '" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ") = False Then Exit Sub
        desc.Caption = "List"
        Set sp = New Recordset
        sp.Open "SHAPE {select distinct th.DIVCODE,th.docno,th.docdt,TH.partyCODE,s.slNAME,th.start_dt,th.end_dt,th.Amount from  mm_amch th, fa_slmas s  where  th.partyCODE *= s.slCODE and TH.docDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND TH.DIVCODE = '" & Divcode & "'  " & _
        " Order by docNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.docNO,t.docDt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description  'Vehicle Name ',t.Amount '     Amount'  from  mm_amcl t, VM_DEP d, VM_VEHMAS m  where t.VEH_NO = m.VEH_NO and t.depcode = d.depcode and t.depcode=m.depcode Order by t.depcode,t.docno } AS ChildCMD RELATE DIVCODE TO DIVCODE,docNO TO docNO,docdt TO docdt) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
        If sp.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set Rept = New Report.ReportView
        A = FreeFile()
        Close
        Open "C:\amc_list.txt" For Output As #A
        pg1 = 1
        c = 0
        Call Amc_List_Header
       Do While Not sp.EOF
            Print #A, Space(5) & Padr(sp("slNAME"), 42, " ") & Space(1) & _
            Padr(sp("start_dt"), 10, " ") & Space(1) & Padr(sp("end_dt"), 10, " ") & _
            Space(1) & Padl(IIf(IsNull(sp("Amount")), "", INF(sp("Amount"), 2)), 15, " ")
            c = c + 1
            Print #A,
            c = c + 1
            If c >= PageLen Then
                Print #A, Space(5) & String(80, "-")
                Print #A, Chr(12)
                pg1 = pg1 + 1
                c = 0
                Call Amc_List_Header
            End If
            Set rs1 = New Recordset
            Set rs1 = sp("childcmd").UnderlyingValue
                Do While Not rs1.EOF
                   Print #A, Space(5) & Padr(IIf(IsNull(rs1("Code")), " ", rs1("code")), 10, " ") & Space(1) & _
                   Padr(IIf(IsNull(rs1("Vehicle Name ")), " ", rs1("Vehicle Name ")), 53, " ") & Space(1) & _
                   Padl(IIf(IsNull(rs1("     Amount")), "", INF(rs1("     Amount"), 2)), 15, " ")
                   c = c + 1
                   If c >= PageLen Then
                        Print #A, Space(5) & String(80, "-")
                        Print #A, Chr(12)
                        pg1 = pg1 + 1
                        c = 0
                        Call Amc_List_Header
                    End If
                   rs1.MoveNext
                Loop
         sp.MoveNext
         Print #A,
         c = c + 1
       Loop
       Print #A, Space(5) & String(80, "-")
       Print #A, Chr(12)
       A = FreeFile()
       Close
       Open "C:\amc_list.bat" For Output As #A
        Print #A, "cd\"
        Print #A, "c:"
        Print #A, "cd\"
        Print #A, "type amc_list.txt>prn"
        Close #A
        Rept.txtfile = "c:\amc_list.txt"
        Rept.Batfile = "c:\amc_list.bat"
        Exit Sub
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoprimaryrs.MoveFirst
        'calling fir procedure from module
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Call FIR(BUTTON)
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        Exit Sub
GoFirstError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
       
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
        If Not adoprimaryrs.EOF Then
            adoprimaryrs.MoveNext
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
            adoprimaryrs.MoveLast
             Call NEX(BUTTON)

        End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoNextError:
    If err = 3021 Then
        MsgBox " No records Found", vbInformation, head
        Exit Sub
    End If
  
Case 7
        'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        If Not adoprimaryrs.BOF Then
            adoprimaryrs.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
            adoprimaryrs.MoveFirst
            Call prev(BUTTON)
         End If
        'show the current record
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoPrevError:
  If err = 3021 Then
    MsgBox " No records Found", vbInformation, head
    Exit Sub
  End If
 
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoprimaryrs.MoveLast
        stbar.Panels(2).Text = "Records" & " " & adoprimaryrs.AbsolutePosition & " / " & " " & adoprimaryrs.RecordCount
        'calling las procedure from module
        
        Call las(BUTTON)
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        Exit Sub
GoLastError:
       If err = 3021 Then
         MsgBox " No records Found", vbInformation, head
         Exit Sub
       End If

Case 9
        'Save
        Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        DTPicker1(0).Enabled = False
        On Error GoTo ER1
        If Opt = "add" Then
            If Trim(TXTFIELDS(5).Text) = "" Then
                MsgBox "Party Code can't not be empty", vbInformation, head
                Screen.MousePointer = 0
                TXTFIELDS(5).SetFocus
                Exit Sub
            End If
            If IsDate(MaskEdBox1(1).Text) = False Or MaskEdBox1(1).Text = "__/__/____" Then
                MsgBox "Start data Cannot be empty", vbInformation, head
                MaskEdBox1(1).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If IsDate(MaskEdBox1(2).Text) = False Or MaskEdBox1(2).Text = "__/__/____" Then
                MsgBox "End date Cannot be empty", vbInformation, head
                MaskEdBox1(1).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
'            If txtFields(8).Text = "" Then
'                MsgBox "Amount Cannot be empty", vbInformation, head
'                txtFields(8).SetFocus
'                Screen.MousePointer = 0
'                Exit Sub
'            End If
        
            Opt = ""
            adoSecondaryRs.MoveFirst
            Do While Not adoSecondaryRs.EOF
                If adoSecondaryRs(3) = "" Or adoSecondaryRs(3) = " " Or IsEmpty(adoSecondaryRs(3)) = True Or IsNull(adoSecondaryRs(3)) = True Then
                    adoSecondaryRs.Delete
                ElseIf IsNull(adoSecondaryRs(7)) Then
                    MsgBox "Amount cannot be empty ", vbInformation, head
                    grddatagrid.Col = 7
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                  ElseIf (adoSecondaryRs(7) <= 0) Then
                    MsgBox "Amount has to be greater than zero", vbInformation, head
                    grddatagrid.Col = 7
                    grddatagrid.SetFocus
                    Opt = "add"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                adoSecondaryRs.MoveNext
            Loop
            
            If adoSecondaryRs.RecordCount <= 0 Then
                MsgBox "AMC Master requires at least one Vehicle detail", vbInformation, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
            adoprimaryrs("divcode") = Divcode
            adoprimaryrs(2) = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
            adoprimaryrs(4) = Format(MaskEdBox1(1).Text, "dd-mmm-yyyy")
            adoprimaryrs(5) = Format(MaskEdBox1(2).Text, "dd-mmm-yyyy")
            'adoPrimaryRS(6) = Val(txtFields(8).Text)
            docNo = newdocno()
            
            Opt = "add"
            If docNo = "" Then Exit Sub
                adoprimaryrs(1) = docNo
                Opt = ""
                adoSecondaryRs.MoveFirst
                
                TotAmount = 0
                Set vrs = New Recordset
                vrs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode,t.VEH_NO ,t.Amount from mm_amcl t   WHERE  1 =2 ", db, adOpenStatic, adLockBatchOptimistic
                Do While Not adoSecondaryRs.EOF
                    vrs.AddNew
                    vrs(0) = Divcode
                    vrs(1) = docNo
                    vrs(2) = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
                    vrs("DEPCODE") = adoSecondaryRs(3)
                    vrs("VEH_NO") = adoSecondaryRs(5)
                    vrs("AMOUNT") = adoSecondaryRs("AMOUNT").value
                    TotAmount = TotAmount + adoSecondaryRs("AMOUNT").value
                    adoSecondaryRs.MoveNext
                Loop
                adoprimaryrs(6) = TotAmount
                adoprimaryrs.UpdateBatch adAffectAll
                vrs.UpdateBatch adAffectAllChapters
                vrs.MoveFirst
                db.CommitTrans
                MsgBox "Document No. for your transaction is " & docNo, vbInformation, head
                Screen.MousePointer = 0
                Opt = ""
            End If
            
            If Opt = "mod" Then
                
                'prakash 11/06/02 ***********
                
                Opt = ""
                TotAmount = 0
                adoSecondaryRs.MoveFirst
                Do While Not adoSecondaryRs.EOF
                    If adoSecondaryRs(3) = "" Or adoSecondaryRs(3) = " " Then
                        adoSecondaryRs.Delete
                    ElseIf IsNull(adoSecondaryRs(7)) Then
                        MsgBox "Amount cannot be empty ", vbInformation, head
                        grddatagrid.Col = 7
                        grddatagrid.SetFocus
                        Opt = "mod"
                        Screen.MousePointer = 0
                        Exit Sub
                    ElseIf (adoSecondaryRs(7) <= 0) Then
                        MsgBox "Amount has to be greater than zero", vbInformation, head
                        grddatagrid.Col = 7
                        grddatagrid.SetFocus
                        Opt = "mod"
                        Screen.MousePointer = 0
                        Exit Sub
                    Else
                        TotAmount = TotAmount + adoSecondaryRs("AMOUNT")
                    End If
                    adoSecondaryRs.MoveNext
                Loop
                
                '******************************
                adoprimaryrs(6) = TotAmount
                adoprimaryrs.UpdateBatch adAffectCurrent
                Opt = ""
                adoSecondaryRs.MoveFirst
                Do While Not adoSecondaryRs.EOF
                  db.Execute ("update mm_amcl set Amount='" & val(grddatagrid.Columns(7).Text) & "' where divcode='" & Divcode & "' and docno='" & Trim(adoprimaryrs("docno")) & "' and docdt='" & Format(Trim(adoprimaryrs("docdt")), "yyyy/mm/dd") & "' and depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO='" & Trim(grddatagrid.Columns(5).Text) & "' ")
                  adoSecondaryRs.MoveNext
                Loop
                db.CommitTrans
                Opt = "mod"
                MsgBox "Record Modified", vbInformation, head
            End If
            
            If Opt = "del" Then
                'If deltype = "1" Then     'Cascade deletion - deletes records both from the master and detail
                    Screen.MousePointer = 0
                    If MsgBox("Are you sure you want to delete this record?", vbYesNo, head) = vbYes Then
                        Screen.MousePointer = 11
                        db.Execute ("DELETE FROM  mm_amch WHERE DIVCODE = '" & adoprimaryrs("divcode") & "' AND docno = " & val(adoprimaryrs("docno")) & " AND docdt = '" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "'")
                        db.Execute ("DELETE FROM  mm_amcl WHERE DIVCODE = '" & adoprimaryrs("divcode") & "' AND docno = " & val(adoprimaryrs("docno")) & " AND docdt = '" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "'")
                        db.CommitTrans
                        MsgBox "Sucessfully deleted", vbOKOnly, head
                     Else
                        Screen.MousePointer = 11
                        db.RollbackTrans
                     End If
    '            Else
    '            'Line deletion
    '                db.CommitTrans
    '                MsgBox "Transaction Complete", vbInformation, head
                'End If
                Opt = "del"
            End If
            
            ' Return to query mode
            Call query_mode(0)
            'calling newform_cancel procedure from module (also for save)
            Call NEWFORM(BUTTON, 11)
            
Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Frame3.Visible = False
    DTPicker1(0).Enabled = False
    'CANCEL
    Select Case Opt
    Case "mod"
        'To undo changes made
        db.RollbackTrans
        DataCombo1.Visible = False
    Case "add"
        'To undo addition
        db.RollbackTrans
    Case "del"
        'To undo deletion
        DataCombo1.Visible = False
        db.RollbackTrans
End Select
    'To return default settings - i.e query mode
    Call query_mode(0)
    DataCombo1.Visible = False
    delmodok.value = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    Frame2.Visible = False
    Label4.Visible = False
    Label5.Visible = False
    DataGrid1.Visible = False
    Frame1.Visible = True
    grddatagrid.Visible = True
    'calling cancl procedure from module
    Call cancl(BUTTON, 11)
    
Case 11
    'EXIT
    Unload Me
   'Pordmain.Picture2.Visible = True
End Select
Exit Sub
ER1:
If err = -2147467259 Then
MsgBox err.Description, vbInformation, head
    If Mid$(err.Description, InStr(err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox err.Description, vbInformation, head
End If

Exit Sub
BUTTON_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form BaleDetail", vbInformation, head
End Sub


Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
Buttonframe.Enabled = True
Dim rs As Recordset
'If Trim(Ksldesc1.code) = Trim(Ksldesc1.description) Then
' MsgBox "Code & Description Cannot Be Same ", vbInformation, head
' Exit Sub
'End If
 
Select Case ksldesc1.listfield1
Case "slcode"
    TXTFIELDS(5).Text = ksldesc1.Code
    Text2.Text = ksldesc1.Description
    MaskEdBox1(1).SetFocus
    Frame3.Visible = False
    Exit Sub
Case "d.depcode AS Dep_Code"
    grddatagrid.Columns(3).Text = ksldesc1.Code
    grddatagrid.Columns(4).Text = ksldesc1.Description
    If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
    
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    ksldesc1.Table = "VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO not in (" & itemc & ")"
    ksldesc1.listfield1 = "VEH_NO"
    ksldesc1.listfield2 = "description"
    Exit Sub
    
Case "VEH_NO"
    'Call chkrepeat
    itemc = itemc & ",'" & ksldesc1.Code & "'"
    If rpt = "Y" Then
            rpt = "N"
            Exit Sub
    End If
    grddatagrid.Columns(5).Text = ksldesc1.Code
    grddatagrid.Columns(6).Text = ksldesc1.Description
    grddatagrid.Col = 7
    grddatagrid.SetFocus
    Frame3.Visible = False
    
Case "docno"
  
      Frame3.Visible = False
      SSTab1.Visible = True
      Set adoprimaryrs = New Recordset
      adoprimaryrs.Open "select DIVCODE,docNO,docdt,partyCODE,start_dt,end_dt,Amount from  mm_amch where docno='" & ksldesc1.Code & "' and docdt='" & Format(ksldesc1.Description, "yyyy/mm/dd") & "'", db, adOpenStatic, adLockBatchOptimistic
      Set adoSecondaryRs = New Recordset
      adoSecondaryRs.Open "select t.DIVCODE,t.docNO,t.docdt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description 'Vehicle Name',t.Amount from mm_amcl t,VM_VEHMAS m,VM_DEP d   WHERE d.depcode=t.depcode and m.VEH_NO=t.VEH_NO and docno='" & ksldesc1.Code & "' and docdt='" & Format(ksldesc1.Description, "yyyy/mm/dd") & "' order by t.depcode ", db, adOpenStatic, adLockBatchOptimistic
      
      Set grddatagrid.DataSource = adoSecondaryRs
      Call bindcontls
      Call grdalign
      
      If Opt = "mod" Then
        Call ENABLCONTLS
        MaskEdBox1(0).Enabled = False
        TXTFIELDS(2).Locked = True
        grddatagrid.Columns(3).Locked = True
        grddatagrid.Columns(4).Locked = True
        grddatagrid.Columns(5).Locked = True
        grddatagrid.Columns(6).Locked = True
      ElseIf Opt = "del" Then
        Call disablcontls
      End If
      
    
End Select
Exit Sub
Command3_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command3_Click of Form BaleDetail", vbInformation, head

End Sub

Private Sub Command4_Click()    'find okay
On Error GoTo Command4_Click_Error
Buttonframe.Enabled = True
If Opt = "mod" Then
   If CDate(Text1.Text) Then
     Dim T_rs As Recordset
     Set T_rs = New Recordset
     Set T_rs = grddatagrid.DataSource
     T_rs.MoveFirst
     Do While Not T_rs.EOF
       If Trim(grddatagrid.Columns(7)) = "" Then
         grddatagrid.Columns(7) = Text1.Text
         T_rs.MoveNext
        Else
         T_rs.MoveNext
        End If
     Loop
     Frame5.Visible = False
     Text1.Text = ""
     Label3.Caption = "Find"
     Label7.Caption = "Find from Indent No."
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
Call query_mode(val(Text1.Text))
Frame5.Visible = False
Exit Sub
Command4_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command4_Click of Form BaleDetail", vbInformation, head
End Sub

Private Sub Command5_Click()    'find cancel
'---------------
On Error GoTo Command5_Click_Error
SSTab1.ZOrder
Buttonframe.Enabled = True
If Opt = "mod" Then
   Frame5.Visible = False
   Text1.Text = ""
   Label3.Caption = "Find"
   Label7.Caption = "Find from Indent No."
   Exit Sub
 End If
'---------------
Opt = "fnd"
Screen.MousePointer = 11
Call query_mode(1)
Frame5.Visible = False
Exit Sub
Command5_Click_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command5_Click of Form BaleDetail", vbInformation, head
End Sub

Private Sub DTPicker1_CloseUp(Index As Integer)
On Error GoTo DTPicker1_CloseUp_Error
    MaskEdBox1(Index).Text = Format(DTPicker1(Index).value, "dd/mm/yyyy")
Exit Sub
DTPicker1_CloseUp_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_CloseUp of Form BaleDetail", vbInformation, head
End Sub



Private Sub dtpicker1_LostFocus(Index As Integer)
On Error GoTo dtpicker1_LostFocus_Error
If Index = 0 And (MaskEdBox1(Index).Enabled) Then
    If Not (IsDate(MaskEdBox1(Index).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(Index).SetFocus
        Exit Sub
     End If
    If CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Document Date should not be greater then processing date"), vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Department From the List"
End If
Exit Sub
dtpicker1_LostFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure dtpicker1_LostFocus of Form BaleDetail", vbInformation, head
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
End If
    
    If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(4)
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
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
        Call BUTTON_Click(12)
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
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form BaleDetail", vbInformation, head

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
  stbar.Panels(1).Text = sbMsg
  Set db = New Connection
  db.CursorLocation = adUseClient
  db.Open "PROVIDER=MSDataShape;" + connectstring
  Opt = " "
  Call query_mode(0)
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  grddatagrid.ScrollBars = dbgAutomatic
  grddatagrid.Caption = "Vehicle Details"
  DATLAB.Caption = pdate
  DTPicker1(0).MaxDate = yldate
  DTPicker1(0).MinDate = yfdate
  DTPicker1(0).value = pdate
  DTPicker1(1).MaxDate = yldate
  DTPicker1(1).MinDate = yfdate
  DTPicker1(2).MaxDate = yldate
  DTPicker1(2).MinDate = yfdate
 ' Call NEWFORM(BUTTON, 11)
Exit Sub
Form_Load_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form BaleDetail", vbInformation, head
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  db.Close
  adoprimaryrs.Close
  Set adoprimaryrs = Nothing
  Set adoSecondaryRs = Nothing
  Set indent = Nothing
  Reset
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
  If adoprimaryrs.AbsolutePosition > 0 Then
       stbar.Panels(2).Text = "Record No " & CStr(adoprimaryrs.AbsolutePosition) & " / " & CStr(adoprimaryrs.RecordCount)
       If Not IsNull(adoprimaryrs("docdt")) Then MaskEdBox1(0).Text = Format(adoprimaryrs("docdt"), "dd/mm/yyyy")
       If Not IsNull(adoprimaryrs("start_dt")) Then MaskEdBox1(1).Text = Format(adoprimaryrs("start_dt"), "dd/mm/yyyy")
       If Not IsNull(adoprimaryrs("end_dt")) Then MaskEdBox1(2).Text = Format(adoprimaryrs("end_dt"), "dd/mm/yyyy")
    
  Else
        
       stbar.Panels(2).Text = "No Record found"
  End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form BaleDetail", vbInformation, head
  End Sub


Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error
    Select Case ColIndex
         Case 7
             If grddatagrid.Columns(7).Text <= 0 Then
                MsgBox "Amount has to be greater than zero", vbInformation, head
                grddatagrid.Col = 7
                grddatagrid.SetFocus
                flg = "Y"
                    Exit Sub
              Else
                flg = ""
             End If
    End Select
Exit Sub
grddatagrid_AfterColEdit_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_AfterColEdit of Form BaleDetail", vbInformation, head
End Sub


Private Sub grddatagrid_DblClick()
On Error GoTo grddatagrid_DblClick_Error
 If Opt = "del" Then
    MsgBox "Line Deletion Is Not Possible, Only Complete Deletion Available", vbInformation
 End If
Exit Sub
grddatagrid_DblClick_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_DblClick of Form BaleDetail", vbInformation, head
End Sub

'Private Sub grdDataGrid_AfterColUpdate(ByVal ColIndex As Integer)


Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 7 Then
        MsgBox "Amount has to be Greater than zero", vbInformation, head
        'st2 = "A"
     End If
End If
Response = 0
Exit Sub
grdDataGrid_Error_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_Error of Form BaleDetail", vbInformation, head
End Sub

Public Sub bindcontls()
Dim oText As TextBox
On Error GoTo bindcontls_Error
  For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoprimaryrs
  Next
  If Opt = "add" Then
   MaskEdBox1(0).Text = pdate
  End If
Exit Sub
bindcontls_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure bindcontls of Form BaleDetail", vbInformation, head
  End Sub

Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error
    For Each oText In Me.TXTFIELDS
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    MaskEdBox1(1).Enabled = False
    MaskEdBox1(2).Enabled = False
    
    grddatagrid.AllowAddNew = False
    grddatagrid.AllowUpdate = False
Exit Sub
disablcontls_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure disablcontls of Form BaleDetail", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.TXTFIELDS
        oText.Locked = False
    Next
'    MaskEdBox1(0).Enabled = True
    MaskEdBox1(1).Enabled = True
    MaskEdBox1(2).Enabled = True
'    DTPicker1(0).Enabled = True
    DTPicker1(1).Enabled = True
    DTPicker1(2).Enabled = True
    
    DTPicker1(0).MaxDate = pdate
    If Opt = "add" Then
        MaskEdBox1(0).Text = pdate
    End If
    grddatagrid.AllowUpdate = True
Exit Sub
ENABLCONTLS_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLCONTLS of Form BaleDetail", vbInformation, head
    End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next


If Opt = "add" And grddatagrid.Col = 7 And KeyCode = vbKeyTab And adoSecondaryRs.AbsolutePosition = adoSecondaryRs.RecordCount Then
    If Not flg = "Y" Then
      adoSecondaryRs.AddNew
      grddatagrid.Col = 3
      grddatagrid.SetFocus
      grddatagrid.EditActive = True
    End If
End If

End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
  If grddatagrid.Col = 7 Then Call tonum(grddatagrid, 10, KeyAscii)
End If
Exit Sub
grddatagrid_KeyPress_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyPress of Form BaleDetail", vbInformation, head
End Sub


Private Sub grddatagrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error Resume Next
If (Opt = "add" Or Opt = "mod") Then
    If Opt = "add" Then
    If Not flg = "Y" Then
            
             If Record_Exists("VM_VEHMAS M,VM_DEP D WHERE D.DEPCODE=M.DEPCODE AND M.VEH_NO NOT IN (" & itemc & ")", "All Records Entered") = False Then Exit Sub
            If LastCol = 3 And Frame3.Visible = False Then
            
                  
        Set rr = New Recordset
        rr.Open "SElect DEPNAME from VM_DEP  where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' ", db
        If rr.RecordCount > 0 Then
            grddatagrid.Columns(4).Text = rr(0)
                'If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
                'Frame3.Visible = True
                'Frame3.ZOrder
                grddatagrid.Col = 5
                grddatagrid.SetFocus
                Exit Sub
                
          End If

'                Frame3.Visible = True
'                Frame3.ZOrder
'                Buttonframe.Enabled = False
'                listlb.Caption = "Department Listing"
'                KslDesc1.conn = connectstring
'                KslDesc1.table = "VM_VEHMAS M,VM_DEP D WHERE D.DEPCODE=M.DEPCODE AND M.VEH_NO NOT IN (" & itemc & ")"
'                KslDesc1.listfield1 = "d.depcode AS Dep_Code"
'                KslDesc1.listfield2 = "depname"
                     LookUp.clear = True
                     LookUp.query = "select distinct d.depcode AS 'DeptCode',depname 'DeptName' from VM_VEHMAS M,VM_DEP D WHERE D.DEPCODE=M.DEPCODE AND M.VEH_NO NOT IN (" & itemc & ")"
                     LookUp.Caption = "Department Listing"
                     LookUp.DefCol = "DeptName"
                     LookUp.ALIGN = "1000,3500"
                     LookUp.Show vbModal
                     If LookUp.cancel = False Then
                        Buttonframe.Enabled = True
                        grddatagrid.Columns(3).Locked = False
                        grddatagrid.Columns(3).Text = LookUp.Fields(0)
                        grddatagrid.Columns(4).Text = LookUp.Fields(1)
'                        grddatagrid.Columns(3).Locked = True
                        If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
'                        Buttonframe.Enabled = False
                        stbar.Panels(2).Text = "Select Vehicle From the List"
                        LookUp.clear = True
                        LookUp.query = "select distinct VEH_NO as 'VehicleNo',Description from VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO not in (" & itemc & ")"
                        LookUp.Caption = "Vehicle Listing"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1000,3500"
                        LookUp.Show vbModal
                        If LookUp.cancel = False Then
                           Buttonframe.Enabled = True
                            itemc = itemc & ",'" & LookUp.Fields(0) & "'"
                            If rpt = "Y" Then
                                    rpt = "N"
                                    Exit Sub
                            End If
                            grddatagrid.Columns(5).Text = LookUp.Fields(0)
                            grddatagrid.Columns(6).Text = LookUp.Fields(1)
                            LookUp.clear = True
                            grddatagrid.SetFocus
                            grddatagrid.Col = 7
                            stbar.Panels(2).Text = "Enter Amount"
                        Else
                            Buttonframe.Enabled = True
                            LookUp.clear = True
                            grddatagrid.Col = 5
                            grddatagrid.SetFocus
                        End If
                     Else
                        Buttonframe.Enabled = True
                        grddatagrid.Col = 3
                        grddatagrid.SetFocus
                     End If
                Exit Sub
            End If
       End If
       
      If grddatagrid.Col = 4 And Trim(grddatagrid.Columns(3).Text) <> "" Then
      
        Set rr = New Recordset
        rr.Open "SElect DEPNAME from VM_DEP  where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' ", db
        If rr.RecordCount > 0 Then
            grddatagrid.Columns(4).Text = rr(0)
                'If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
                'Frame3.Visible = True
                'Frame3.ZOrder
                grddatagrid.Col = 5
                grddatagrid.SetFocus
                Exit Sub
                
          End If
 '         Buttonframe.Enabled = False
                
                
                '=================
'                LookUp.clear = True
'                        LookUp.query = "select distinct VEH_NO as 'VehicleNo',Description from VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO not in (" & itemc & ")"
'                        LookUp.Caption = "Vehicle Listing"
'                        LookUp.DefCol = "Description"
'                        LookUp.ALIGN = "1000,3500"
'                        LookUp.Show vbModal
'                        If LookUp.cancel = False Then
'                           Buttonframe.Enabled = True
'                            itemc = itemc & ",'" & LookUp.Fields(0) & "'"
'                            If rpt = "Y" Then
'                                    rpt = "N"
'                                    Exit Sub
'                            End If
'                            grddatagrid.Columns(5).Text = LookUp.Fields(0)
'                            grddatagrid.Columns(6).Text = LookUp.Fields(1)
'                            grddatagrid.Col = 7
'                            grddatagrid.SetFocus
'                        Else
'                           Buttonframe.Enabled = True
'                           grdatagrid.SetFocus
'                           grddatagrid.Col = 5
'                        End If
'
'                Exit Sub
'
                     LookUp.clear = True
                     LookUp.query = "select distinct d.depcode AS 'DeptCode',depname 'DeptName' from VM_VEHMAS M,VM_DEP D WHERE D.DEPCODE=M.DEPCODE AND M.VEH_NO NOT IN (" & itemc & ")"
                     LookUp.Caption = "Department Listing"
                     LookUp.DefCol = "DeptName"
                     LookUp.ALIGN = "1000,3500"
                     
                     LookUp.Show vbModal
                     If LookUp.cancel = False Then
                        Buttonframe.Enabled = True
                        grddatagrid.Columns(3).Locked = False
                        grddatagrid.Columns(3).Text = LookUp.Fields(0)
                        grddatagrid.Columns(4).Text = LookUp.Fields(1)
                        grddatagrid.Columns(3).Locked = True
                        If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
'                        Buttonframe.Enabled = False
                        grddatagrid.Col = 3
                        grddatagrid.SetFocus
                      Else
'                       Buttonframe.Enabled = False
                        grddatagrid.Col = 3
                        grddatagrid.SetFocus
                     
                
'                KslDesc1.conn = connectstring
'                KslDesc1.table = "VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'"
'                KslDesc1.listfield1 = "VEH_NO"
'                KslDesc1.listfield2 = "description"
'                Exit Sub
            End If
      End If
    End If
'-------------------------------
      If grddatagrid.Col = 6 And Trim(grddatagrid.Columns(3).Text) <> "" Then
        Set rr = New Recordset
        rr.Open "SElect Description,VEH_NO  from VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO='" & Trim(grddatagrid.Columns(5).Text) & "' ", db
        If rr.RecordCount > 0 Then
            grddatagrid.Columns(6).Text = rr(0)
                If Record_Exists("VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'", "No Vehicle exists for this Department") = False Then Exit Sub
                'Frame3.Visible = True
                'Frame3.ZOrder
'                Buttonframe.Enabled = False
                grddatagrid.Col = 7
                grddatagrid.SetFocus
                End If
                
                '=================
                If rr(0) = 0 Then
                LookUp.clear = True
                        LookUp.query = "select distinct VEH_NO as 'VehicleNo',Description from VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "' and VEH_NO not in (" & itemc & ")"
                        LookUp.Caption = "Vehicle Listing"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1000,3500"
                        LookUp.Show vbModal
                        If LookUp.cancel = False Then
                           Buttonframe.Enabled = True
                            itemc = itemc & ",'" & LookUp.Fields(0) & "'"
                            If rpt = "Y" Then
                                    rpt = "N"
                                    Exit Sub
                            End If
                            grddatagrid.Columns(5).Text = LookUp.Fields(0)
                            grddatagrid.Columns(6).Text = LookUp.Fields(1)
                            grddatagrid.Col = 7
                            grddatagrid.SetFocus
                        Else
                           Buttonframe.Enabled = True
                           grdatagrid.SetFocus
                           grddatagrid.Col = 5
                        End If
                     
                Exit Sub
                
                
                
'                KslDesc1.conn = connectstring
'                KslDesc1.table = "VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'"
'                KslDesc1.listfield1 = "VEH_NO"
'                KslDesc1.listfield2 = "description"
'                Exit Sub
            End If

    End If
    End If

'-------------------------------
    If Opt = "add" Or Opt = "mod" Then
        If Not flg = "Y" Then
            If LastCol = 7 And mvd = "N" Then
                    If Opt = "add" Then
                        adoSecondaryRs.AddNew
                    Else
                        Set vrs = adoprimaryrs("childcmd").value
                        grddatagrid.Row = grddatagrid.Row + 2
                    End If
                    flg = "Y"
                    rpt = "N"
             End If
        End If
    End If



If Opt = "add" Or Opt = "mod" Then
    If flg = "Y" Then
        If LastRow <> 0 Then
            LastRow = LastRow - 2
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
    End If
End If

ER1:
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error
Select Case Index
Case 1
    stbar.Panels(2).Text = "Enter Date (dd/mm/yyyy)"
Case 2
    stbar.Panels(2).Text = "Enter Date (dd/mm/yyyy)"
End Select
Exit Sub
MaskEdBox1_GotFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_GotFocus of Form BaleDetail", vbInformation, head

End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then

'If MaskEdBox1(Index) = "__/__/____" Then
'        MsgBox ("Date can't be Empty"), vbInformation, head
'        MaskEdBox1(Index).SetFocus
'        cancel = True
'        Exit Sub
'    End If


If (MaskEdBox1(Index).Enabled) And Not (Opt = "qry" Or Opt = "  " Or Opt = "") Then
    If Not (IsDate(MaskEdBox1(Index).Text)) And MaskEdBox1(Index).Text <> "__/__/____" Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(Index).Text = "__/__/____"
        MaskEdBox1(Index).SetFocus
        
        Exit Sub
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Document date should not be greater then processing date"), vbInformation, head
            MaskEdBox1(0).Text = "__/__/____"
            MaskEdBox1(0).SetFocus
            Exit Sub
    End If
End If
If Index = 2 And Opt = "add" Then
 If DateDiff("d", Format(MaskEdBox1(2).Text, "dd/mm/yyyy"), Format(MaskEdBox1(1).Text, "dd/mm/yyyy")) > 0 Then
    MsgBox "Start Date Should be Less Than End Date", vbInformation
    MaskEdBox1(1).SetFocus
    Exit Sub
 End If
    grddatagrid.Col = 2
    grddatagrid.SetFocus
    stbar.Panels(2).Text = "Select Department From List"
End If
End If
Exit Sub
MaskEdBox1_LostFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_LostFocus of Form BaleDetail", vbInformation, head
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, cancel As Boolean)
    On Error Resume Next
   If Opt = "add" Or Opt = "mod" Then

'    If MaskEdBox1(Index) = "__/__/____" Then
'        MsgBox ("Date can't be Empty"), vbInformation, head
'        MaskEdBox1(Index).SetFocus
'        cancel = True
'        Exit Sub
'    End If
'End If
'
'    If MaskEdBox1(2) <> "__/__/____" And IsDate(MaskEdBox1(2).Text) = True Then
'        If CDate(MaskEdBox1(2).Text) < CDate(MaskEdBox1(1).Text) Then
'            MsgBox ("End Date has to be greater than Start Date"), vbInformation, head
'            MaskEdBox1(Index).Text = "__/__/____"
'            MaskEdBox1(Index).SetFocus
'            cancel = True
'            Exit Sub
'    End If
   End If
End Sub

Private Sub SSTab2_DblClick()

End Sub






'Private Sub txtFields_LostFocus(Index As Integer)
''If Not (txtFields(Index).Text = "") Then
''    txtFields(Index).Text = UCase(txtFields(Index).Text)
''End If
'
'End Sub

Public Sub query_mode(MDOC As Long)
On Error GoTo query_mode_Error
    desc.Caption = "Query"
    SSTab1.Visible = True
    SSTab1.ZOrder
    If Not Opt = "" Then
        On Error GoTo ER1
        If Opt = "add" Or Opt = "mod" Then
            Call disablcontls
        End If
        Set adoprimaryrs = New Recordset
        If MDOC = 0 Then
            Call qry1
            Opt = ""
        Else
            Call fnd1(MDOC)
            If adoprimaryrs.RecordCount = 0 Then
                msg = "Record not found for Document Number " & MDOC
                MsgBox msg, vbInformation, head
                Call query_mode(0)
                Opt = ""
            End If
        End If
        Call bindcontls
        If adoprimaryrs.AbsolutePosition > 0 Then
            stbar.Panels(2).Text = "Record No " & CStr(adoprimaryrs.AbsolutePosition) & " / " & CStr(adoprimaryrs.RecordCount)
        Else
            stbar.Panels(2).Text = "No Record found"
        End If
        Screen.MousePointer = 0
        Set Text2.DataSource = adoprimaryrs
        If adoprimaryrs.RecordCount > 0 Then
            Set grddatagrid.DataSource = adoprimaryrs("ChildCMD").UnderlyingValue
            
            grddatagrid.Columns(0).Visible = False
            grddatagrid.Columns(1).Visible = False
            grddatagrid.Columns(2).Visible = False
            grddatagrid.Columns(0).Width = 0
            grddatagrid.Columns(1).Width = 0
            grddatagrid.Columns(2).Width = 0
            grddatagrid.Columns(3).Width = 1000
            grddatagrid.Columns(4).Width = 2530
            grddatagrid.Columns(5).Width = 900
            grddatagrid.Columns(6).Width = 2525
            grddatagrid.Columns(4).Locked = True
            grddatagrid.Columns(6).Locked = True
            grddatagrid.Columns(7).Width = 1155
            grddatagrid.Columns(7).NumberFormat = "########0.00"
            grddatagrid.Columns(7).Alignment = dbgRight
        Else
            Set grddatagrid.DataSource = adoprimaryrs("ChildCMD").UnderlyingValue
        End If
        grddatagrid.AllowUpdate = False
        desc.Caption = "Query"
        
        
    End If
    Screen.MousePointer = 0
   'Calling newform procedure from Module to disable buttons
    Call NEWFORM(BUTTON)
    Call disablcontls
    
    Exit Sub
ER1:
    If err = 3021 Then
        MsgBox "No records Found", vbInformation, head
        Screen.MousePointer = 0
        Set grddatagrid.DataSource = Nothing
        Call BUTTON_Click(10)
    End If
    If err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
    Screen.MousePointer = 0
Exit Sub
query_mode_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure query_mode of Form BaleDetail", vbInformation, head
End Sub



Public Function newdocno()
Dim v_stdate As String, v_endate As String
Dim rs As Recordset
Dim tcrs As Recordset
On Error GoTo newdocno_Error
    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set rs = New Recordset
    rs.Open "select max(docno) from  mm_amch where divcode = '" & Divcode & "' and docdt between '" & v_stdate & "'  and  '" & v_endate & "'", db, adOpenStatic, adLockBatchOptimistic
    If Not (IsNull(rs(0))) And (rs.BOF = False) Then 'check new entry for the year or not
        newdocno = rs(0) + 1
    Else
        newdocno = 1
    End If
Exit Function
newdocno_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure newdocno of Form BaleDetail", vbInformation, head
End Function
Public Sub qry1()
On Error GoTo qry1_Error
adoprimaryrs.Open "SHAPE {select distinct th.DIVCODE,th.docno,th.docdt,TH.partyCODE,s.slNAME,th.start_dt,th.end_dt,th.Amount from  mm_amch th, fa_slmas s  where  th.partyCODE *= s.slCODE and TH.docDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND TH.DIVCODE = '" & Divcode & "'  " & _
" Order by docNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.docNO,t.docDt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description  'Vehicle Name ',t.Amount '     Amount'  from  mm_amcl t, VM_DEP d, VM_VEHMAS m  where t.VEH_NO = m.VEH_NO and t.depcode = d.depcode and t.depcode=m.depcode Order by t.depcode,t.docno } AS ChildCMD RELATE DIVCODE TO DIVCODE,docNO TO docNO,docdt TO docdt) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
Exit Sub
qry1_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure qry1 of Form BaleDetail", vbInformation, head
End Sub

Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error
adoprimaryrs.Open "SHAPE {select distinct th.DIVCODE,th.docno,th.docdt,TH.partyCODE,s.slNAME,th.start_dt,th.end_dt,th.Amount from  mm_amch th, fa_slmas s  where  th.partyCODE  *= s.slCODE and TH.docDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND TH.DIVCODE = '" & Divcode & "'  and th.docno = " & MDOC & " " & _
" Order by docNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.docNO,t.docDt,t.depcode 'DeptCode',d.depname 'Department Name',t.VEH_NO 'McCode',m.description  'Vehicle Name ',t.Amount '    Amount'  from  mm_amcl t, VM_DEP d, VM_VEHMAS m  where t.VEH_NO = m.VEH_NO and t.depcode = d.depcode and t.depcode=m.depcode Order by t.depcode,t.docno } AS ChildCMD RELATE DIVCODE TO DIVCODE,docNO TO docNO,docdt TO docdt) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic
Exit Sub
fnd1_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure fnd1 of Form BaleDetail", vbInformation, head

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
    
    ITARY(t + 1, 0) = grddatagrid.Columns(5)
    For i = 0 To t + 1
        If ITARY(t + 1, 0) = ITARY(i, 0) Then
            Fnd = "y"
            Exit For
        End If
    Next
   ' End If
    End If
    If Fnd = "y" Then
        MsgBox "Vehicle code should not repeat", vbInformation, head
        
        grddatagrid.Columns(5) = " "
        grddatagrid.Columns(6) = " "
        rpt = "Y"
        Frame3.Visible = True
        Frame2.ZOrder
        Buttonframe.Enabled = False
        listlb.Caption = "Vehicle Listing"
        ksldesc1.Table = "VM_VEHMAS where depcode='" & Trim(grddatagrid.Columns(3).Text) & "'"
        ksldesc1.conn = connectstring
        ksldesc1.listfield1 = "VEH_NO"
        ksldesc1.listfield2 = "description"
    End If
Exit Sub
chkrepeat_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure chkrepeat of Form BaleDetail", vbInformation, head
End Sub


Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
On Error GoTo ToUpCase_Error
    If maxlen = 0 Then maxlen = 50
    If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    ElseIf Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
    KeyAscii = 0
    End If
Exit Sub
ToUpCase_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ToUpCase of Form BaleDetail", vbInformation, head

End Sub


Private Sub txtFields_Change(Index As Integer)
Dim RstFind As Recordset
On Error GoTo txtFields_Change_Error
If Index = 5 And Len(TXTFIELDS(5).Text) > 0 Then
    Set RstFind = New Recordset
    RstFind.Open "select slcode as 'PartyCode',slname as 'PartyName' from fa_slmas where slcode='" & TXTFIELDS(5).Text & "'", db
    If RstFind.RecordCount > 0 Then
        Text2.Text = RstFind("PartyName")
    End If
End If
Exit Sub
txtFields_Change_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Change of Form BaleDetail", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
If Opt = "add" Then
Select Case Index
Case 5
    stbar.Panels(2).Text = "Select Party From The List"
End Select
End If
Exit Sub
txtFields_GotFocus_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_GotFocus of Form BaleDetail", vbInformation, head
End Sub

Private Sub txtFields_Validate(Index As Integer, cancel As Boolean)
On Error GoTo txtFields_Validate_Error
    If Opt = "add" Then
        If Index = 5 Then
'            If Trim(txtFields(5).Text) <> "" Then
                Set sp = New Recordset
                sp.Open "select slcode,slname from fa_slmas where slcode = '" & Trim(TXTFIELDS(5).Text) & "'", db
                If sp.RecordCount > 0 Then
                    TXTFIELDS(5).Text = sp("slcode")
                    Text2.Text = sp("slname")
                    MaskEdBox1(1).SetFocus
                    Exit Sub
                Else
'                    Frame3.Visible = True
'                    Frame3.ZOrder
 '                   Buttonframe.Enabled = False
'                    KslDesc1.conn = connectstring
'                    KslDesc1.table = "fa_slmas "
'                    KslDesc1.listfield1 = "slcode"
'                    KslDesc1.listfield2 = "slname"
'                    Exit Sub
                     LookUp.clear = True
                     LookUp.query = "select slcode as 'PartyCode',slname as 'PartyName' from fa_slmas"
                     LookUp.Caption = "Party Listing"
                     LookUp.DefCol = "PartyName"
                     LookUp.ALIGN = "1000,3500"
                     LookUp.Show vbModal
                     If LookUp.cancel = False Then
                        TXTFIELDS(5).Text = LookUp.Fields(0)
                        Text2.Text = LookUp.Fields(1)
                        LookUp.clear = True
                        'MaskEdBox1(1).SetFocus
                        TXTFIELDS(5).SetFocus
                        TXTFIELDS(5).Enabled = True
                        
                        Buttonframe.Enabled = True
                        
                        Exit Sub
                     Else
                     Buttonframe.Enabled = True
                     If Trim(TXTFIELDS(5).Text) = "" Or TXTFIELDS(5) <> SLCODE Then
'                    MsgBox "Party Name cannot be empty", vbInformation, head
                    cancel = True
                End If

                    TXTFIELDS(5).SetFocus
                    TXTFIELDS(5).Enabled = True
'                 txtFields(5).SetFocus
                     End If
                End If
                '            Else
'                txtFields(5).SetFocus
'                cancel = True
'                Exit Sub
'            End If
'        End If
        'If Index = 8 Then
            'On Error Resume Next
            'grddatagrid.Col = 3
            'grddatagrid.SetFocus
            'txtFields(5).SetFocus
            'Exit Sub
        End If
   End If
Exit Sub
txtFields_Validate_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Validate of Form BaleDetail", vbInformation, head
End Sub

Private Sub grdalign()
On Error GoTo grdalign_Error
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(0).Width = 0
        grddatagrid.Columns(1).Width = 0
        grddatagrid.Columns(2).Width = 0
        grddatagrid.Columns(3).Width = 1000
        grddatagrid.Columns(4).Width = 2530
        grddatagrid.Columns(5).Width = 900
        grddatagrid.Columns(6).Width = 2525
        grddatagrid.Columns(4).Locked = True
        grddatagrid.Columns(6).Locked = True
        grddatagrid.Columns(7).Width = 1155
        grddatagrid.Columns(7).NumberFormat = "########0.00"
        grddatagrid.Columns(7).Alignment = dbgRight
Exit Sub
grdalign_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdalign of Form BaleDetail", vbInformation, head
End Sub
Public Sub Amc_List_Header()
On Error GoTo Amc_List_Header_Error
c = 0
Print #A, Chr(18)
Print #A, Space(5) & CENTRE(Chr(27) + "E" & DIVNAME & Chr(27) + "F", 80, " ")
Print #A,
Print #A, Space(5) & "AMC LISTING" & Space(51) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #A, Space(5) & String(80, "-")
Print #A, Space(5) & "PARTY" & Space(38) & "START DATE" & Space(1) & " END DATE" & Space(11) & "AMOUNT"
Print #A, Space(5) & "Vehicle NO" & Space(1) & "DESCRIPTION" & Space(52)
Print #A, Space(5) & String(80, "-")
c = 8
Exit Sub
Amc_List_Header_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Amc_List_Header of Form BaleDetail", vbInformation, head
End Sub
