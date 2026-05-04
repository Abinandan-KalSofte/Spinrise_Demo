VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FRMLOSETL240222 
   Caption         =   "Lot Allowance"
   ClientHeight    =   8280
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11370
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   13035
   ScaleWidth      =   21480
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   4920
      Top             =   3720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4380
      Left            =   8940
      TabIndex        =   82
      Top             =   1140
      Visible         =   0   'False
      Width           =   4110
      _extentx        =   7250
      _extenty        =   7726
   End
   Begin VB.Frame Frame5 
      Height          =   540
      Left            =   4320
      TabIndex        =   78
      Top             =   570
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   345
         Left            =   4065
         TabIndex        =   88
         Top             =   135
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3090
         TabIndex        =   80
         Top             =   150
         Value           =   -1  'True
         Width           =   1035
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1830
         TabIndex        =   79
         Top             =   135
         Width           =   1155
      End
      Begin VB.Label Label5 
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
         TabIndex        =   81
         Top             =   165
         Width           =   1320
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   36
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   13
         Left            =   5880
         Picture         =   "FRMLOSETL240222.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   112
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":0442
         Height          =   550
         Index           =   4
         Left            =   1605
         Picture         =   "FRMLOSETL240222.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5355
         Picture         =   "FRMLOSETL240222.frx":0AE1
         Style           =   1  'Graphical
         TabIndex        =   72
         ToolTipText     =   "Lot Allowance Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":0F23
         Height          =   550
         Index           =   8
         Left            =   3750
         Picture         =   "FRMLOSETL240222.frx":136D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":16CF
         Height          =   550
         Index           =   10
         Left            =   4830
         Picture         =   "FRMLOSETL240222.frx":19D9
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":1D55
         Height          =   550
         Index           =   9
         Left            =   4290
         Picture         =   "FRMLOSETL240222.frx":205F
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":2401
         Height          =   550
         Index           =   11
         Left            =   6495
         Picture         =   "FRMLOSETL240222.frx":284B
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":2BE0
         Height          =   550
         Index           =   7
         Left            =   3225
         Picture         =   "FRMLOSETL240222.frx":302A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   8670
         Picture         =   "FRMLOSETL240222.frx":337A
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":3711
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
         Left            =   1080
         Picture         =   "FRMLOSETL240222.frx":3A1B
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":3DB7
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "FRMLOSETL240222.frx":4201
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":4566
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "FRMLOSETL240222.frx":4870
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":4C03
         Height          =   550
         Index           =   6
         Left            =   2685
         Picture         =   "FRMLOSETL240222.frx":504D
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FRMLOSETL240222.frx":539A
         Height          =   550
         Index           =   1
         Left            =   555
         Picture         =   "FRMLOSETL240222.frx":56A4
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Modify (Ctrl M)"
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
         Left            =   7350
         TabIndex        =   39
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
         Left            =   10470
         TabIndex        =   38
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   41
      Top             =   12735
      Width           =   21480
      _ExtentX        =   37888
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "24/02/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "20:42 PM"
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
      Height          =   6120
      Left            =   390
      TabIndex        =   47
      Top             =   1110
      Width           =   9405
      _ExtentX        =   16589
      _ExtentY        =   10795
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   12632319
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FRMLOSETL240222.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Line1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label1(5)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label1(16)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label1(18)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label1(19)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label1(9)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Label1(10)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Label1(11)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "Label1(24)"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Label6"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "Line3"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "Label1(26)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "Label1(27)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "TXTFIELDS(16)"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "TXTFIELDS(18)"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "Frame2"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "TXTFIELDS(10)"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "TXTFIELDS(19)"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "TXTFIELDS(20)"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "TXTFIELDS(11)"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "TXTFIELDS(15)"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "TXTFIELDS(17)"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "TXTFIELDS(25)"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "Frame1"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "TXTFIELDS(27)"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "Text1"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "TXTFIELDS(28)"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "TXTFIELDS(29)"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).ControlCount=   28
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "debitPer"
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
         Height          =   360
         Index           =   29
         Left            =   6045
         TabIndex        =   29
         Top             =   4800
         Width           =   1215
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "dbAmt"
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
         Height          =   360
         Index           =   28
         Left            =   8010
         MaxLength       =   10
         TabIndex        =   30
         Top             =   4800
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   2655
         TabIndex        =   94
         Top             =   4380
         Width           =   5715
      End
      Begin VB.TextBox TXTFIELDS 
         BackColor       =   &H00FFFFFF&
         DataField       =   "DBReason"
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   27
         Left            =   1455
         TabIndex        =   26
         Top             =   4395
         Width           =   1155
      End
      Begin VB.Frame Frame1 
         Height          =   555
         Left            =   120
         TabIndex        =   89
         Top             =   15
         Width           =   9105
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Asno"
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
            Height          =   350
            Index           =   22
            Left            =   1320
            Locked          =   -1  'True
            TabIndex        =   90
            Top             =   150
            Width           =   1215
         End
         Begin MSMask.MaskEdBox MaskEdBox2 
            DataField       =   "Adate"
            Height          =   345
            Left            =   7050
            TabIndex        =   91
            Top             =   150
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   609
            _Version        =   393216
            BackColor       =   16777215
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Allowance Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   21
            Left            =   5760
            TabIndex        =   93
            Top             =   210
            Width           =   1125
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Allowance No."
            Height          =   195
            Index           =   20
            Left            =   90
            TabIndex        =   92
            Top             =   225
            Width           =   1035
         End
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "Totlandcost"
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
         Index           =   25
         Left            =   7710
         Locked          =   -1  'True
         TabIndex        =   83
         Top             =   5280
         Width           =   1545
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "Ratecy"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.0000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   17
         Left            =   5070
         Locked          =   -1  'True
         TabIndex        =   32
         TabStop         =   0   'False
         Top             =   5280
         Width           =   1215
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.0000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   15
         Left            =   3690
         TabIndex        =   28
         Top             =   4785
         Width           =   1245
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "Totlandcost"
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
         Index           =   11
         Left            =   5070
         Locked          =   -1  'True
         TabIndex        =   34
         Top             =   5670
         Width           =   1215
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "dbamt"
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
         Height          =   350
         Index           =   20
         Left            =   7710
         Locked          =   -1  'True
         TabIndex        =   35
         Top             =   5685
         Width           =   1575
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "Ratekg"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.0000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   19
         Left            =   2490
         Locked          =   -1  'True
         TabIndex        =   33
         Top             =   5670
         Width           =   1575
      End
      Begin VB.TextBox TXTFIELDS 
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
         Height          =   360
         Index           =   10
         Left            =   1440
         TabIndex        =   27
         Top             =   4770
         Width           =   1155
      End
      Begin VB.Frame Frame2 
         Enabled         =   0   'False
         Height          =   3780
         Left            =   120
         TabIndex        =   48
         Top             =   510
         Width           =   9135
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ExMoistureWgt"
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
            Height          =   360
            Index           =   36
            Left            =   7830
            TabIndex        =   107
            Top             =   2100
            Width           =   1200
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ExMoisturePer"
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
            Height          =   360
            Index           =   35
            Left            =   5670
            TabIndex        =   106
            Top             =   2100
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ExtrashWgt"
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
            Height          =   360
            Index           =   34
            Left            =   3570
            TabIndex        =   105
            Top             =   2100
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ExTrashPer"
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
            Height          =   360
            Index           =   33
            Left            =   1320
            TabIndex        =   104
            Top             =   2100
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "TrashPer"
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
            Height          =   360
            Index           =   32
            Left            =   1320
            TabIndex        =   100
            Top             =   1710
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Trashwt"
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
            Height          =   360
            Index           =   31
            Left            =   3570
            TabIndex        =   99
            Top             =   1710
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "moisture_per"
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
            Height          =   360
            Index           =   30
            Left            =   5670
            TabIndex        =   98
            Top             =   1710
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "plotno"
            ForeColor       =   &H00000000&
            Height          =   350
            Index           =   26
            Left            =   4785
            TabIndex        =   86
            Top             =   150
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "lotno"
            ForeColor       =   &H00000000&
            Height          =   350
            Index           =   0
            Left            =   1320
            TabIndex        =   85
            Top             =   150
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "billdt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   24
            Left            =   4335
            TabIndex        =   75
            Top             =   3360
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "billno"
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
            Index           =   23
            Left            =   1335
            TabIndex        =   73
            Top             =   3375
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "dlytype"
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
            Height          =   360
            Index           =   21
            Left            =   4335
            TabIndex        =   21
            Top             =   2580
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "allowance"
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
            Height          =   360
            Index           =   7
            Left            =   5670
            TabIndex        =   18
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "tarewt"
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
            Height          =   360
            Index           =   4
            Left            =   3570
            TabIndex        =   16
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "grswgt"
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
            Height          =   360
            Index           =   3
            Left            =   1320
            TabIndex        =   15
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "varcode"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   2
            Left            =   1320
            TabIndex        =   13
            Top             =   915
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   1
            Left            =   1320
            TabIndex        =   11
            Top             =   525
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "netwt"
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
            Height          =   360
            Index           =   5
            Left            =   7830
            TabIndex        =   19
            Top             =   1320
            Width           =   1200
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Moisture_et"
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
            Height          =   360
            Index           =   6
            Left            =   7830
            TabIndex        =   17
            Top             =   1710
            Width           =   1200
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ratecy"
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
            Height          =   360
            Index           =   8
            Left            =   1335
            TabIndex        =   20
            Top             =   2580
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ratekg"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.0000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   9
            Left            =   7110
            TabIndex        =   22
            Top             =   2580
            Width           =   1200
         End
         Begin VB.TextBox Txtparty 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   2565
            TabIndex        =   12
            Top             =   525
            Width           =   6465
         End
         Begin VB.TextBox Txtvar 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   2565
            TabIndex        =   14
            Top             =   915
            Width           =   6465
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "bales"
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
            Index           =   12
            Left            =   1335
            TabIndex        =   23
            Top             =   2970
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "issbal"
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
            Index           =   13
            Left            =   4335
            TabIndex        =   24
            Top             =   2970
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "BALES"
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
            Index           =   14
            Left            =   7110
            TabIndex        =   25
            Top             =   2985
            Width           =   1185
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "lotdt"
            Height          =   345
            Left            =   7785
            TabIndex        =   10
            Top             =   150
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   609
            _Version        =   393216
            BackColor       =   14737632
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Moisture Wt."
            Height          =   435
            Index           =   34
            Left            =   6930
            TabIndex        =   111
            Top             =   2070
            Width           =   915
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Moisture %"
            Height          =   405
            Index           =   33
            Left            =   4830
            TabIndex        =   110
            Top             =   2070
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Trash %"
            Height          =   195
            Index           =   32
            Left            =   90
            TabIndex        =   109
            Top             =   2190
            Width           =   1125
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Trash Weight"
            Height          =   405
            Index           =   31
            Left            =   2580
            TabIndex        =   108
            Top             =   2070
            Width           =   960
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Trash Weight"
            Height          =   195
            Index           =   30
            Left            =   2550
            TabIndex        =   103
            Top             =   1800
            Width           =   960
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Trash %"
            Height          =   195
            Index           =   29
            Left            =   90
            TabIndex        =   102
            Top             =   1800
            Width           =   570
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Moisture %"
            Height          =   195
            Index           =   28
            Left            =   4830
            TabIndex        =   101
            Top             =   1800
            Width           =   765
         End
         Begin VB.Line Line2 
            X1              =   30
            X2              =   9090
            Y1              =   2520
            Y2              =   2520
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Supplier Lot No."
            Height          =   195
            Index           =   25
            Left            =   3420
            TabIndex        =   87
            Top             =   210
            Width           =   1140
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Bill Date"
            Height          =   195
            Index           =   23
            Left            =   3030
            TabIndex        =   76
            Top             =   3450
            Width           =   585
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Bill No."
            Height          =   195
            Index           =   22
            Left            =   165
            TabIndex        =   74
            Top             =   3420
            Width           =   495
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Delivery Type"
            Height          =   195
            Index           =   15
            Left            =   3030
            TabIndex        =   71
            Top             =   2670
            Width           =   975
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Allowance"
            Height          =   195
            Index           =   17
            Left            =   4860
            TabIndex        =   62
            Top             =   1380
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Lot No."
            Height          =   195
            Index           =   0
            Left            =   135
            TabIndex        =   61
            Top             =   225
            Width           =   525
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Supplier"
            Height          =   195
            Left            =   120
            TabIndex        =   60
            Top             =   585
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Variety"
            Height          =   195
            Left            =   120
            TabIndex        =   59
            Top             =   990
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   58
            Top             =   1380
            Width           =   960
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Tare Weight"
            Height          =   195
            Index           =   2
            Left            =   2580
            TabIndex        =   57
            Top             =   1380
            Width           =   885
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Moisture Wt."
            Height          =   315
            Index           =   3
            Left            =   6930
            TabIndex        =   56
            Top             =   1830
            Width           =   915
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Net Weight"
            Height          =   195
            Index           =   4
            Left            =   6930
            TabIndex        =   55
            Top             =   1380
            Width           =   810
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Rate Candy"
            Height          =   195
            Index           =   6
            Left            =   165
            TabIndex        =   54
            Top             =   2640
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Rate Kg."
            Height          =   195
            Index           =   7
            Left            =   5760
            TabIndex        =   53
            Top             =   2670
            Width           =   630
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Lot Date"
            Height          =   195
            Index           =   8
            Left            =   6750
            TabIndex        =   52
            Top             =   180
            Width           =   615
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Total Quantity"
            Height          =   195
            Index           =   12
            Left            =   135
            TabIndex        =   51
            Top             =   3030
            Width           =   990
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Issue Quantity"
            Height          =   195
            Index           =   13
            Left            =   3030
            TabIndex        =   50
            Top             =   3045
            Width           =   1005
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Balance Quantity"
            Height          =   195
            Index           =   14
            Left            =   5760
            TabIndex        =   49
            Top             =   3060
            Width           =   1215
         End
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "netwt"
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
         Height          =   360
         Index           =   18
         Left            =   2490
         Locked          =   -1  'True
         TabIndex        =   31
         Top             =   5280
         Width           =   1575
      End
      Begin VB.TextBox TXTFIELDS 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
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
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   360
         Index           =   16
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   69
         Top             =   5640
         Width           =   1425
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Bill Amount %"
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   27
         Left            =   5010
         TabIndex        =   97
         Top             =   4860
         Width           =   945
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Amount "
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   26
         Left            =   7380
         TabIndex        =   96
         Top             =   4860
         Width           =   585
      End
      Begin VB.Line Line3 
         X1              =   -90
         X2              =   9360
         Y1              =   5220
         Y2              =   5220
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Reason"
         Height          =   195
         Left            =   180
         TabIndex        =   95
         Top             =   4470
         Width           =   555
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Total Landing Cost"
         Height          =   315
         Index           =   24
         Left            =   6300
         TabIndex        =   84
         Top             =   5310
         Width           =   1335
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Rate/Candy"
         Height          =   195
         Index           =   11
         Left            =   4140
         TabIndex        =   70
         Top             =   5310
         Width           =   870
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Rate Candy"
         Height          =   285
         Index           =   10
         Left            =   2700
         TabIndex        =   68
         Top             =   4830
         Width           =   840
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Value"
         Height          =   195
         Index           =   9
         Left            =   4410
         TabIndex        =   67
         Top             =   5760
         Width           =   405
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Debit Value"
         Height          =   195
         Index           =   19
         Left            =   6810
         TabIndex        =   66
         Top             =   5760
         Width           =   825
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Rate/Kg."
         Height          =   195
         Index           =   18
         Left            =   1620
         TabIndex        =   65
         Top             =   5760
         Width           =   660
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Net Weight"
         Height          =   195
         Index           =   16
         Left            =   1620
         TabIndex        =   64
         Top             =   5310
         Width           =   810
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Allowance in Kgs "
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   5
         Left            =   180
         TabIndex        =   63
         Top             =   4890
         Width           =   1260
      End
      Begin VB.Line Line1 
         X1              =   -120
         X2              =   9480
         Y1              =   4320
         Y2              =   4320
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5580
      Left            =   840
      TabIndex        =   42
      Top             =   1080
      Visible         =   0   'False
      Width           =   9705
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "FRMLOSETL240222.frx":5A3A
         Height          =   615
         Left            =   5040
         Picture         =   "FRMLOSETL240222.frx":5E1C
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   4920
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Cancel          =   -1  'True
         Caption         =   "&OK"
         DownPicture     =   "FRMLOSETL240222.frx":61EF
         Height          =   615
         Left            =   3840
         Picture         =   "FRMLOSETL240222.frx":65D5
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   4920
         Width           =   1185
      End
      Begin listacx.codelist KSLLIST1 
         Height          =   4575
         Left            =   360
         TabIndex        =   43
         Top             =   480
         Width           =   9135
         _ExtentX        =   16113
         _ExtentY        =   8070
         caption         =   ""
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   120
         TabIndex        =   46
         Top             =   120
         Width           =   9690
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot Allowance"
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
      Left            =   420
      TabIndex        =   40
      Top             =   720
      Width           =   1845
   End
End
Attribute VB_Name = "FRMLOSETL240222"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim pg1             As Integer
Dim Rs              As Recordset
Dim rs1             As Recordset
Dim Opt             As String
Dim oText           As TextBox
Dim dblAlWgt        As Double
Dim dblAlAmt        As Double
Dim dblDBAmt        As Double
Dim dblAllowWgt     As Double
Dim db              As Connection
Dim oldqty          As Integer
Dim oldcontno       As String
Dim strSQL          As String
Dim oldcontdt       As Date
Dim contdt          As Date
Dim qty             As Integer
Dim rep             As New Report.ReportView
Dim rsa             As New Recordset

Public Sub openconnection()
On Error GoTo openconnection_Error
intervalMinutes = -1
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open connectstring
    
Exit Sub

openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Lot Allowance"
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If adoPrimaryRS.RecordCount > 0 Then
    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
    
'        If Opt = "mod" Or Opt = "del" Then dblAlWgt = adoPrimaryRS!ALLOWANCE
    
        Set rsa = New Recordset
        rsa.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", db, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtparty.Text = rsa(0)
        Else
            Txtparty.Text = ""
        End If
        txtfields(16).Text = adoPrimaryRS("pjamt")
        txtfields(10).Text = Format(adoPrimaryRS("Allowance"), "0.000")
        
        txtfields(23).Text = IIf(IsNull(adoPrimaryRS("Billno")), "", adoPrimaryRS("Billno"))
        Set rsa = New Recordset
        rsa.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", db, adOpenStatic
        If rsa.RecordCount > 0 Then
            Txtvar.Text = rsa(0)
        Else
            Txtvar.Text = ""
        End If
        Set RRs = New Recordset
'        RRs.Open " select g.deldesc as dlytype from " & _
'        " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,fa_slmas f,RM_Delivery g " & _
'        " where  a.lotno = b.lotno And b.contno = c.contno And b.contdt = c.contdt And a.lotdt = b.lotdt And c.divcode = b.divcode  And c.divcode = b.divcode And g.delcode = c.dlytype and a.supcd*=e.slcode and a.brkcd*=f.slcode  and lotyear='" & Year(yfdate) & "'  " & _
'        " and a.lotdt='" & Format(adoPrimaryRS("LOTDT"), "yyyy-mm-dd") & "' and a.lotno='" & adoPrimaryRS("lotno") & "'  order by a.lotdt,a.lotno ", DB, adOpenStatic
  RRs.Open " select g.deldesc as dlytype from " & _
        " rm_lot a inner join rm_arrival b on a.lotno = b.lotno and  a.lotdt = b.lotdt  inner join rm_cont c on  b.contno = c.contno And b.contdt = c.contdt  And c.divcode = b.divcode and  c.divcode = b.divcode left join fa_slmas e on a.supcd=e.slcode  left join fa_slmas f on a.brkcd=f.slcode  " & _
        " inner join RM_Delivery g on lotyear='" & Year(yfdate) & "'  " & _
        " and a.lotdt='" & Format(adoPrimaryRS("LOTDT"), "yyyy-mm-dd") & "' and a.lotno='" & adoPrimaryRS("lotno") & "'  order by a.lotdt,a.lotno ", db, adOpenStatic
        
        If RRs.RecordCount > 0 Then
            txtfields(21).Text = RRs(0)
        Else
            txtfields(21).Text = ""
        End If
        
    End If
    txtfields(29).Text = Format(val(txtfields(29).Text), "0.00")
    Call formatObject
End If

intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FRMLOSETL", vbInformation, head
End Sub

Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0, 1, 2, 4
    If Index = 0 Then
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
    ElseIf Index = 1 Then
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
    ElseIf Index = 2 Then
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
    End If
    SSTab1.Visible = True
    SSTab1.Enabled = True
    Screen.MousePointer = 0
''    Frame3.Visible = True
''    Label15.Caption = "LOT NUMBER LISTING"
''    KSLLIST1.conn = connectstring
''    KSLLIST1.table = "RM_LOT A,FA_SLMAS B WHERE isnull(bales,0)-isnull(issbal,0)>0 and A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' "
''    KSLLIST1.listfield1 = "LOTNO"
''    KSLLIST1.listfield2 = "LOTDT"
''    Frame3.ZOrder
    LookUp.Clear = True
    If Opt = "del" Or Opt = "mod" Or Opt = "fnd" Then
        LookUp.query = "SELECT C.LOTNO""Lot No."",C.LOTDT""Lot Date"",C.aSNO""Allowance No."",C.adate ""Allowance Date""  FROM RM_LOT A,FA_SLMAS B , RM_LOTALLOWANCE C WHERE A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.DIVCODE=C.DIVCODE AND A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(yfdate) & "' AND A.OPFLG='N' and A.adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "'"
        LookUp.DefCol = "Lot No."
        LookUp.Caption = "Lot Number Listing"
        LookUp.ALIGN = "2000,2000,2000,2000"
        LookUp.Show vbModal
   Else
        'LookUp.Query = "SELECT A.LOTNO""LotNo"",A.LOTDT""Date"" FROM RM_LOT A,FA_SLMAS B WHERE isnull(bales,0)-isnull(issbal,0)>0 and A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' AND A.DIVCODE='" & Divcode & "' and a.PJNo IS NOT NULL "
'        LookUp.Query = "SELECT A.LOTNO""Lot No."",A.LOTDT""Lot Date"" FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' AND A.DIVCODE='" & Divcode & "' and lottype='A' AND LOTNO NOT IN (SELECT LOTNO FROM RM_LOTALLOWANCE where lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(pdate, "YYYY-MM-DD") & "' ) "
        LookUp.query = "SELECT A.LOTNO""Lot No."",A.LOTDT""Lot Date"" FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' AND A.DIVCODE='" & Divcode & "' and lottype='A' " ' AND LOTNO NOT IN (SELECT LOTNO FROM RM_LOTALLOWANCE where lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(pdate, "YYYY-MM-DD") & "' ) "
        'LookUp.Query = "SELECT A.LOTNO""LotNo"",A.LOTDT""Date"" FROM RM_LOT A,FA_SLMAS B WHERE isnull(bales,0)-isnull(issbal,0)>0 and A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' AND A.DIVCODE='" & Divcode & "' "
        LookUp.DefCol = "Lot No."
        LookUp.Caption = "Lot Number Listing"
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        End If
    If LookUp.Cancel = False Then
        If Opt = "add" Then
            Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Lotno,Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,Bales,Issbal,Asno,Adate,Pjamt,Totlandcost,Allowance,billno,billdt,isnull(pjamt,0) as pjamt,plotno from rm_lot WHERE DIVCODE='" & Divcode & "' AND OPFLG='N' AND LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' AND lotno='" & LookUp.Fields(0) & "' and lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.Open "SELECT a.arrno,a.arrdt, a.Lotno,a.Lotdt,a.Supcd,a.Varcode,a.Grswgt,a.Tarewt,a.Netwt,a.Moiture,a.Ratecy,a.Ratekg,a.Bales,a.Issbal,a.Asno,a.Adate,a.Pjamt,a.Totlandcost,a.Allowance,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,a.plotno,b.trashper,b.moisture_per,c.SEASON," & _
                              " round((isnull(b.GROSSWT,0) - isnull(b.TAREWT,0)) * (isnull(b.trashper,0)/100),4) AS trashwt,b.moisture_et from rm_lot a,RM_ARRIVAL b,RM_CONT c WHERE a.ARRNO=b.arrno AND a.ARRDT=b.arrdate AND a.DIVCODE = c.divcode AND b.divcode=c.DIVCODE AND b.contno=c.CONTNO AND b.contdt=c.contdt  AND a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND a.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND a.LOTYEAR='" & Year(yfdate) & "' AND a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockBatchOptimistic
            If adoPrimaryRS.RecordCount > 0 Then
            
                  
                  Set rsa = New Recordset
                  rsa.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", db, adOpenStatic
                  If rsa.RecordCount > 0 Then
                      Txtparty.Text = rsa(0)
                  Else
                      Txtparty.Text = ""
                  End If
                  Set rsa = New Recordset
                  rsa.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", db, adOpenStatic
                  If rsa.RecordCount > 0 Then
                      Txtvar.Text = rsa(0)
                  Else
                      Txtvar.Text = ""
                  End If
                  
                  txtfields(18).Text = pdate
            End If
            Call ENABLCONTLS
            Call bindcontls
            txtfields(29).Text = ""
            txtfields(10).Text = ""
            txtfields(22).Text = ""
            txtfields(27).Text = ""
            txtfields(28).Text = ""
            txtfields(29).Text = ""
            txtfields(18).Text = ""
            txtfields(10).Text = ""
            txtfields(20).Text = ""
            txtfields(11).Text = ""
            txtfields(19).Text = ""
            txtfields(16).Text = ""
            txtfields(25).Text = ""
            txtfields(27).SetFocus
            txtfields(28).Locked = False
            
            Set Rs = New Recordset
            Rs.Open "select SeasonCalcReq from rm_param", db, adOpenStatic
            If Rs(0) = "Y" Then
                Call SeasonAllowance(adoPrimaryRS("arrno"), adoPrimaryRS("arrdt"))
                Call CalcDebit(CDbl(Ratekg_Cal), CDbl(netwt), adoPrimaryRS("lotno"), adoPrimaryRS("lotdt"))
                txtfields(10).SetFocus
            End If
            
'            TXTFIELDS(23).Text = adoPrimaryRS("Billno")
'            txtFields(23).Text = IIf(IsNull(adoPrimaryRS("Billno")), "", adoPrimaryRS("Billno"))
'            Set rrs = New Recordset
'                    rrs.Open " select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'')='M' then 'FOR' else '' end as dlytype from " & _
'                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,fa_slmas f " & _
'                    " where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
'                    " and a.supcd*=e.slcode and a.brkcd*=f.slcode and lotyear='" & Year(yfdate) & "'  " & _
'                    " and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotno='" & LookUp.Fields(0) & "'  order by a.lotdt,a.lotno ", DB, adOpenStatic
'            If rrs.RecordCount > 0 Then
'                txtFields(21).Text = rrs(0)
'            Else
'                txtFields(21).Text = ""
'            End If
        
            txtfields(14).Text = val(txtfields(12).Text) - val(txtfields(13).Text)
            MaskEdBox2.Text = pdate
            
            Frame3.Visible = False
            Call adddelmod(BUTTON)
            'BUTTON(9).ToolTipText = "Add Record"
            txtfields(18).Locked = True  '' Net Weight
            txtfields(17).Locked = True  '' Rate Candy
            txtfields(19).Locked = True  '' Rate Kg
            txtfields(11).Locked = True  '' Value
            txtfields(20).Locked = True  '' Debit Value
            
        End If
        If Opt = "mod" Then
            Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Lotno,Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,Bales,Issbal,Asno,Adate,Pjamt,Totlandcost,Allowance,billno,billdt,plotno,isnull(pjamt,0) as pjamt from rm_lot WHERE DIVCODE='" & Divcode & "' AND OPFLG='N' AND LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' AND asno='" & LookUp.Fields(2) & "' and adate='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' AND lotno='" & LookUp.Fields(0) & "' and lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.Open "select A.Lotno,A.Lotdt,A.Supcd,A.Varcode,A.Grswgt,A.Tarewt,A.Netwt,A.Moiture,A.Ratecy,A.Ratekg,A.Bales,A.Issbal,C.Asno,C.Adate,A.Pjamt,A.Totlandcost,A.Allowance as allow,c.akgs as Allowance,c.dbamt,A.billno,A.billdt,A.plotno,isnull(A.pjamt,0) as pjamt FROM RM_LOT A,FA_SLMAS B , RM_LOTALLOWANCE C WHERE A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.DIVCODE=C.DIVCODE AND A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(yfdate) & "'  AND C.asno='" & LookUp.Fields(2) & "' and C.adate='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' and A.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND A.LOTYEAR='" & Year(yfdate) & "' AND A.lotno='" & LookUp.Fields(0) & "' and A.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockBatchOptimistic
            'LookUp.Query = "SELECT C.LOTNO""Lot No."",C.LOTDT""Lot Date"",C.aSNO""Allowance No."",C.adate ""Allowance Date""  FROM RM_LOT A,FA_SLMAS B , RM_LOTALLOWANCE C WHERE A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.DIVCODE=C.DIVCODE AND A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(yfdate) & "' AND A.OPFLG='N' and A.adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' AND (ISNULL(NETWT,0)-ISNULL(ISSWT,0))>0"
            If adoPrimaryRS.RecordCount > 0 Then
                  dblAlAmt = 0: dblAlWgt = 0
                  dblAlAmt = adoPrimaryRS!DBamt
                  dblAlWgt = adoPrimaryRS!Allowance
                    
                  Set rsa = New Recordset
                  rsa.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", db, adOpenStatic
                  If rsa.RecordCount > 0 Then
                      Txtparty.Text = rsa(0)
                  Else
                      Txtparty.Text = ""
                  End If
                  Set rsa = New Recordset
                  rsa.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", db, adOpenStatic
                  If rsa.RecordCount > 0 Then
                      Txtvar.Text = rsa(0)
                  Else
                      Txtvar.Text = ""
                  End If
                  
                  txtfields(18).Text = pdate
                
            End If
            Call ENABLCONTLS
            Call bindcontls
'            TXTFIELDS(23).Text = adoPrimaryRS("Billno")
            txtfields(23).Text = IIf(IsNull(adoPrimaryRS("Billno")), "", adoPrimaryRS("Billno"))
            Set RRs = New Recordset
'                    RRs.Open " select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'')='M' then 'FOR' else '' end as dlytype from " & _
'                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,fa_slmas f " & _
'                    " where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
'                    " and a.supcd*=e.slcode and a.brkcd*=f.slcode and lotyear='" & Year(yfdate) & "'  " & _
'                    " and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotno='" & LookUp.Fields(0) & "'  order by a.lotdt,a.lotno ", DB, adOpenStatic
          RRs.Open " select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'')='M' then 'FOR' else '' end as dlytype from  rm_lot a inner join rm_arrival b on a.lotno = b.lotno  And a.lotdt = b.lotdt" & _
                    "  inner join rm_cont c on  b.contno = c.contno  left join fa_slmas e on a.supcd=e.slcode left join fa_slmas f on a.brkcd=f.slcode" & _
                    " where  lotyear='" & Year(yfdate) & "'  " & _
                    " and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotno='" & LookUp.Fields(0) & "'  order by a.lotdt,a.lotno ", db, adOpenStatic
            
            If RRs.RecordCount > 0 Then
                txtfields(21).Text = RRs(0)
            Else
                txtfields(21).Text = ""
            End If
        
            txtfields(14).Text = val(txtfields(12).Text) - val(txtfields(13).Text)
'            MaskEdBox2.Text = pdate
'            txtFields(18).Text = ""
'            txtFields(10).Text = ""
'            txtFields(20).Text = ""
'            txtFields(11).Text = ""
'            txtFields(19).Text = ""
'            txtFields(16).Text = ""
'            txtFields(25).Text = ""
            txtfields(10).SetFocus
            Frame3.Visible = False
            Call adddelmod(BUTTON)
            'BUTTON(9).ToolTipText = "Add Record"
            txtfields(18).Locked = True  '' Net Weight
            txtfields(17).Locked = True  '' Rate Candy
            txtfields(19).Locked = True  '' Rate Kg
            txtfields(11).Locked = True  '' Value
            txtfields(20).Locked = True  '' Debit Value
            txtfields(28).Locked = False
            
        End If
        
        
        If Opt = "del" Or Opt = "fnd" Then
            Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,B.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,isnull(a.pjamt,0) as pjamt,a.billno,b.Debitper,b.dbReason from rm_lot a,rm_lotallowance b" & _
'                          " WHERE a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", DB, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.Open "select A.Lotno,A.Lotdt,A.Supcd,A.Varcode,A.Grswgt,A.Tarewt,A.Netwt,A.Moiture,A.Ratecy,A.Ratekg,A.Bales,A.Issbal,C.Asno,C.Adate,A.Pjamt,A.Totlandcost,A.Allowance as allow,c.akgs as Allowance,c.dbamt,A.billno,A.billdt,A.plotno,isnull(A.pjamt,0) as pjamt FROM RM_LOT A,FA_SLMAS B , RM_LOTALLOWANCE C WHERE A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.DIVCODE=C.DIVCODE AND A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(yfdate) & "'  AND C.asno='" & LookUp.Fields(2) & "' and C.adate='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' and A.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND A.LOTYEAR='" & Year(yfdate) & "' AND A.lotno='" & LookUp.Fields(0) & "' and A.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockBatchOptimistic

            If adoPrimaryRS.RecordCount <> 0 Then
               'Bind the text boxes,check boxes and option buttons to the data source
               Call bindcontls
               desc.Caption = "Query"
              'This variable is declared as global to show the date
               DATLAB.Caption = pdate
               'Calling newform procedure from Module to disable buttons
             
               Call disablcontls
               Call adddelmod(BUTTON)
             
            Else
                 MsgBox "No Records Found", vbInformation, head
                 Call Norecfound(BUTTON)
                 Call bindcontls
                 Call disablcontls
            End If
            Frame3.Visible = False
   
            Screen.MousePointer = 0
        End If

    Else
        Call BUTTON_Click(10)
    End If
    
Case 1
'modification

Case 2
        'Deletion
    Opt = "del"
    desc.Caption = "Deletion"
    SSTab1.Visible = True
    Screen.MousePointer = 0
    Frame3.Visible = True
    Label15.Caption = "LOT NUMBER LISTING"
    kslLIST1.conn = connectstring
    kslLIST1.Table = "RM_LOT A,FA_SLMAS B WHERE Asno is not null and A.SUPCD=B.SLCODE AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' and adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
    kslLIST1.listfield1 = "LOTNO"
    kslLIST1.listfield2 = "LOTDT"
    Frame3.ZOrder
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Delete Record"
Case 3
        'list
        Screen.MousePointer = 11
        Dim r As String
        Dim s As String
        Dim div As String
        r = a
        s = B
        div = divname
        co = 0
        pg1 = 1
        Set cn = New Connection
        cn.Provider = "msdatashape"
        cn.Open connectstring
        Set Rs = New Recordset
        Set rev = New Report.ReportView
        Close
       ' Open "c:\convar.txt" For Output As #1
       Open KALFOLDERDATA & "\convar.TXT" For Output As #1

        Call callhead(r, s, div)
        Set RS2 = New Recordset
        RS2.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,slname,varname,v.Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,a.Aratecy,Akgs,TOTLANDCOST,B.DBAMT from rm_lot a,rm_lotallowance b,fa_slmas s,rm_var v " & _
                          " WHERE a.supcd=s.slcode and a.varcode=v.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", db, adOpenStatic, adLockBatchOptimistic
         If RS2.RecordCount <= 0 Then
            MsgBox "No record found", vbInformation
            Close #1
            Exit Sub
         
         End If
            Do While Not RS2.EOF
                 Print #1, Space(2) & Padr(Format(RS2("Adate"), "dd/mm/yy"), 8, " ") & Space(1) & Padl(RS2("asno"), 5, " "); Space(1) & Padr(RS2("varname"), 10, " ") & Space(1) & Padl(RS2("lotno"), 6, " ") & Space(2) & Padl(Format(RS2("lotdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(RS2("slname"), 30, " ") & Space(1) & Padl(RS2("bales"), 7, " ") & Space(1) & Padl(INF(RS2("akgs"), 3), 15, " ") & Padl(RS2("aratecy"), 10, " ")
                 co = co + 1
                 RS2.MoveNext
                 If co > PageLen Then
                    Print #1, Chr(12)
                    Print #1, String(130, "-")
                    co = 0
                    pg1 = pg1 + 1
                Call callhead(r, s, div)
              End If
           Loop
        Print #1, Space(2) & String(130, "-")
        
        Close #1
'        Open "c:\convar.bat" For Output As #1
'        Print #1, "cd\"
'        Print #1, "c:"
'        Print #1, "cd\"
'        Print #1, "type convar.txt>prn"
'        rev.txtfile = "c:\convar.txt"
'        rev.Batfile = "c:\convar.bat"
'        Close #1
         '1 = FreeFile
         Call KALBATPROCESS("convar")
        Screen.MousePointer = 0
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        statusbar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
        Call navi(BUTTON)
        Call FIR(BUTTON)
        Beep
        Exit Sub
GoFirstError:
        MsgBox Err.Description, vbInformation, head
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
'        TXTFIELDS(23).Text = adoPrimaryRS("Billno")
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        statusbar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
       
        Beep
    End If
        ' show the current record
        Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        statusbar1.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
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
        
        If adoPrimaryRS.BOF Then
            statusbar1.Panels(2).Text = "First Record"
        End If
            Call bindcontls
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
    End If

    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        If adoPrimaryRS.EOF = True Then txtfields(23).Text = adoPrimaryRS("Billno")
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        statusbar1.Panels(2).Text = "First Record"
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

GoPrevError:
        MsgBox Err.Description, vbInformation, head

Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        statusbar1.Panels(2).Text = "Last Record"
        Call bindcontls
        txtfields(23).Text = adoPrimaryRS("Billno")
        'calling las procedure from module
        Call navi(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub

GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
        'Save
        'Return to query mode
        If Opt = "add" Then
            Set rrsa = New Recordset
            rrsa.Open "select Divcode,Adate,ASNO,lotno,Lotdt,Bales,AKgs,Dbno,Dbdt,Dbamt,Dbnarr,aRatecy, debitPer, Dbreason,ExTrashPer,ExTrashWgt,ExMoisturePer,ExMoistureWgt from rm_LotAllowance where 1=2", db, adOpenStatic, adLockBatchOptimistic
            
            rrsa.AddNew
            
            rrsa("divcode") = Divcode
'            rrsa("ASNO") = val(TXTFIELDS(22).Text)

            rrsa("adate") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
            rrsa("dbreason") = Trim(txtfields(27).Text)
            rrsa("debitper") = val(txtfields(29).Text)
            rrsa("lotno") = val(txtfields(0).Text)
            rrsa("lotdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
            rrsa("bales") = val(txtfields(14).Text)
            rrsa("akgs") = val(txtfields(10).Text)
            
            rrsa("ExTrashPer") = val(txtfields(33).Text)
            rrsa("ExTrashWgt") = val(txtfields(34).Text)
            rrsa("ExMoisturePer") = val(txtfields(35).Text)
            rrsa("ExMoistureWgt") = val(txtfields(36).Text)
            
            If Vno > 0 Then
                rrsa("Dbno") = Vno
                rrsa("dbdt") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                rrsa("dbnarr") = nar1
            End If
            rrsa("Dbamt") = val(txtfields(20).Text)
            rrsa("aratecy") = val(txtfields(15).Text)
            rrsa.UpdateBatch adAffectAllChapters
            
            
              
           
            
            
                      
            Set Rs = New Recordset
            Rs.Open "select isnull(max(Asno),0) from rm_lotallowance where Adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode ='" & Divcode & "'", db, adOpenStatic
            If Rs.RecordCount > 0 Then
              txtfields(22).Text = Rs(0)
            End If

        
            If val(txtfields(10).Text) + val(txtfields(15).Text) + val(txtfields(28).Text) = 0 Then
                MsgBox "Please enter Allowance in Kgs (or) Rate/candy (or) Amount", vbInformation, head
                txtfields(10).SetFocus
                Exit Sub
            End If

            db.BeginTrans
            Set rsb = New Recordset
            rsb.Open "SELECT BILLNO FROM RM_LOT WHERE lotyear='" & Year(yfdate) & "' and opflg='N' and BILLNO<>'' AND BILLNO IS NOT NULL AND lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic
            If rsb.RecordCount > 0 Then
                Set RsDb = New Recordset
                RsDb.Open "Select ISNULL(Fainstal,'N'), ISNULL(Fatfr,'N') FROM In_Para", db, adOpenStatic
                FaInstall = RsDb(0): FaTfr = RsDb(1)
                If FaInstall = "Y" Then
                    a = MsgBox("Do You Want to Raise Debit/Credit Amount", vbYesNo, head)
                    If a = 6 Then
                       
                        nar1 = "Lot Settlement - "
                        If val(txtfields(15).Text) <> 0 Then
                           nar1 = nar1 & "Allowance in Ratecandy  " & val(txtfields(15).Text) & " "
                        End If
                        If val(txtfields(10).Text) <> 0 Then
                           nar1 = nar1 & "Allowance in Kgs  " & val(txtfields(10).Text) & " "
                        End If
                        
                        
                        Vno = Raise_DBNote(txtfields(1).Text, val(txtfields(20).Text), MaskEdBox2.Text, CStr(nar1))
                            
                            If Vno > 0 Then
                            
'                            strSQL = "Update rm_lot set  dbno='" & Vno & "' ,dbdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',dbamt=ISNULL(dbamt,0) + " & val(txtFields(20).Text) & ", dbnarr='" & nar1 & "'," & _
'                                       " dbtc=41,Abales= ISNULL(Abales,0) + " & val(txtFields(16).Text) & ",Allowance=isnull(Allowance,0)+" & val(txtFields(10).Text) & " ,Aratecy= ISNULL(ARATECY,0)+" & val(txtFields(10).Text) & ",ArateKg= ISNULL(ARATEKG,0)+" & val(txtFields(11).Text) & ",Afratekg= ISNULL(AFRATEKG,0)+" & val(txtFields(7).Text) & ",Asno=" & val(txtFields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'  WHERE lotno='" & txtFields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
'
                            db.Execute "Update rm_lot set dbno='" & Vno & "' ,dbdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',dbamt=ISNULL(dbamt,0) + (" & val(txtfields(20).Text) & "), dbnarr='" & nar1 & "'," & _
                                       " dbtc=41,Abales= ISNULL(Abales,0) + (" & val(txtfields(16).Text) & "),Allowance=isnull(Allowance,0)+(" & val(txtfields(10).Text) & ") ,Aratecy= ISNULL(ARATECY,0)+(" & val(txtfields(10).Text) & "),ArateKg= ISNULL(ARATEKG,0)+(" & val(txtfields(11).Text) & "),Afratekg= ISNULL(AFRATEKG,0)+(" & val(txtfields(7).Text) & "),Asno=" & val(txtfields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
                                       
                            Set rsa = New Recordset
                            rsa.Open "SELECT ISNULL(DBNO,0),ISNULL(DBDT,'') FROM RM_lot WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic
                            
                            If rsa.EOF = False Then
                               'Call DBNOTE.DBNOTE(Trim(txtFields(1).Text), 0, CDbl(rsa(0)), CStr(rsa(1)), 41, 1)
                            End If
                        End If
                    Else
                        Set adoPrimaryRS = New Recordset
                        adoPrimaryRS.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,b.Debitper,b.dbReason from rm_lot a,rm_lotallowance b" & _
                                          " WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", db, adOpenStatic, adLockBatchOptimistic
                    End If
                End If
            End If

            If Vno = 0 Then
            'DB.Execute "Update rm_lot set NETWT=" & val(txtFields(18).Text) & ",pjamt=" & adoPrimaryRS("pjamt") & ",Allowance=isnull(Allowance,0)+" & val(txtFields(10).Text) & " ,Ratekg=" & val(txtFields(19).Text) & ",totlandcost='" & val(txtFields(11).Text) & "',Asno=" & val(txtFields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'  WHERE lotno='" & txtFields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
               strSQL = "Update rm_lot set NETWT=" & val(txtfields(18).Text) & ",Allowance=isnull(Allowance,0)+" & val(txtfields(10).Text) & " ,Ratekg=" & Round(val(txtfields(25).Text) / val(txtfields(18).Text), 4) & ",totlandcost='" & val(txtfields(25).Text) & "',Asno=" & val(txtfields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "', dbamt = isnull(dbamt,0)+ " & val(txtfields(20).Text) & "  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
            db.Execute strSQL
            Else
               strSQL = "Update rm_lot set NETWT= " & val(txtfields(18).Text) & ",Ratekg= " & Round(val(txtfields(25).Text) / val(txtfields(18).Text), 4) & ",totlandcost='" & val(txtfields(25).Text) & "',Asno=" & val(txtfields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
               db.Execute strSQL
            End If
        
            If val(txtfields(10).Text) > 0 Then
               
                If val(txtfields(14).Text) > 0 Then netwt = Round(val(txtfields(10).Text) / val(txtfields(14).Text), 3) Else netwt = Round(val(txtfields(10).Text), 3)
                
                TotNetWT = 0
                Set rsb = New Recordset
                rsb.Open "select distinct baleno from rm_bale where isqty is null and lotno ='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by 1", db, adOpenStatic
                If rsb.RecordCount > 0 Then
                    Do While rsb.EOF = False
                        If rsb.AbsolutePosition = rsb.RecordCount Then
                            netwt = val(txtfields(10).Text) - TotNetWT
                        End If
                        db.Execute "Update rm_bale set NETWT=ISNULL(NETWT,0)- " & netwt & ",Allowance=" & netwt & " where baleno=" & rsb("baleno") & " and lotno ='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                        TotNetWT = TotNetWT + netwt
                        rsb.MoveNext
                    Loop
                
                End If
            
            End If
            
               If Vno > 0 Then
                    strSQL = "Update rm_lotAllowance set  dbno='" & Vno & "' ,dbdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',dbamt=" & val(txtfields(20).Text) & ", dbnarr='" & nar1 & "'" & _
                             "WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' and Asno='" & Trim(txtfields(22).Text) & "' and aDate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'  and Adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
                    
                    db.Execute strSQL
               End If
               
               
                     Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax ,BILLDATE,BILLNO FROM RM_Trans_Log  WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Lot Allowance"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = db.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = Trim(txtfields(22).Text)
                    TrnLog("docdt") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    TrnLog("lotno") = val(txtfields(0).Text)
                    TrnLog("lotdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                   
                    TrnLog("varcode") = Trim(txtfields(2).Text)
                    TrnLog("ratecy") = val(txtfields(15).Text)
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("billno") = txtfields(23).Text
                    TrnLog("billdate") = Format(txtfields(24).Text, "yyyy-mm-dd")
                    TrnLog("Line_No") = txtfields(27).Text
                   ' TrnLog("ordqty") = adoSecondaryRS("BALENO")
                    TrnLog("ordkgs") = val(txtfields(10).Text)
                    TrnLog("LandingCost") = val(txtfields(25).Text)
                    TrnLog("IRNo") = val(Vno)
                    TrnLog("IRDate") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    
                    TrnLog.UpdateBatch adAffectAllChapters
               
              
            db.CommitTrans
        End If
        
        
        If Opt = "mod" Then
            If val(txtfields(10).Text) + val(txtfields(15).Text) + val(txtfields(20).Text) = 0 Then
                MsgBox "Please enter Allowance in Kgs. or Rate/candy  or Amount", vbInformation, head
                txtfields(10).SetFocus
                Exit Sub
            End If

            db.BeginTrans
            Set rsb = New Recordset
            rsb.Open "SELECT BILLNO FROM RM_LOT WHERE lotyear='" & Year(yfdate) & "' and opflg='N' and BILLNO<>'' AND BILLNO IS NOT NULL AND lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic
            If rsb.RecordCount > 0 Then
                Set RsDb = New Recordset
                RsDb.Open "Select ISNULL(Fainstal,'N'), ISNULL(Fatfr,'N') FROM In_Para", db, adOpenStatic
                FaInstall = RsDb(0): FaTfr = RsDb(1)
                If FaInstall = "Y" Then
                    a = MsgBox("Do You Want to Raise Debit/Credit Amount", vbYesNo, head)
                    If a = 6 Then
                       
                        nar1 = "Lot Settlement - "
                        If val(txtfields(15).Text) <> 0 Then
                           nar1 = nar1 & "Allowance in Ratecandy  " & val(txtfields(15).Text) & " "
                        End If
                        If val(txtfields(10).Text) <> 0 Then
                           nar1 = nar1 & "Allowance in Kgs  " & val(txtfields(10).Text) & " "
                        End If
                        
                        
                        Vno = Raise_DBNote(txtfields(1).Text, val(txtfields(20).Text), MaskEdBox2.Text, CStr(nar1))
                        ratekg = Round(val(txtfields(11).Text) / val(txtfields(18).Text), 4)
                        If Vno > 0 Then
                            strSQL = "UPDATE rm_lotallowance SET akgs = " & val(txtfields(10).Text) & ", Aratecy= " & val(txtfields(15).Text) & ", lotno='" & txtfields(0).Text & "', lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "', debitper =" & val(txtfields(29).Text) & ", dbreason ='" & Trim(txtfields(27).Text) & "',dbamt = " & val(txtfields(20).Text) & " where Asno='" & txtfields(22).Text & "' and Adate ='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' AND DIVCODE = '" & Divcode & "'"
                            db.Execute strSQL

                            strSQL = "Update rm_lot set dbno='" & Vno & "' ,dbdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "', dbnarr='" & nar1 & "'," & _
                                       " dbtc=41,Abales=" & val(txtfields(16).Text) & ",Adate='" & Format(txtfields(18).Text, "yyyy-mm-dd") & "',Aratecy= Aratecy + " & val(txtfields(15).Text) & ",ArateKg=" & val(ratekg) & ",Afratekg=" & val(ratekg) & "  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
                                       
                            db.Execute strSQL
'
'                            Set Rs = New Recordset
'                            Rs.Open "Select sum(isnull(dbamt,0)),sum(isnull(alkgs,0)) from rm_lotallowance where divcode ='" & Divcode & "' and lotno='" & TXTFIELDS(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
'
'                            strSQL = "Update rm_lot set dbno='" & Vno & "' ,dbdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',dbamt= dbamt + " & val(TXTFIELDS(20).Text) - dblAlAmt & ", dbnarr='" & nar1 & "'," & _
'                                       " dbtc=41,Abales=" & val(TXTFIELDS(16).Text) & ",Adate='" & Format(TXTFIELDS(18).Text, "yyyy-mm-dd") & "',Aratecy= Aratecy + " & val(TXTFIELDS(15).Text) & ",ArateKg=" & val(TXTFIELDS(11).Text) & ",Afratekg=" & val(TXTFIELDS(7).Text) & "  WHERE lotno='" & TXTFIELDS(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
'
                            
                            Set rsa = New Recordset
                            rsa.Open "SELECT ISNULL(DBNO,0),ISNULL(DBDT,'') FROM RM_lot WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic
                            
                            If rsa.EOF = False Then
                               'Call DBNOTE.DBNOTE(Trim(TXTFIELDS(1).Text), 0, CDbl(rsa(0)), CStr(rsa(1)), 41, 1)
                            End If
                        End If
                    Else
                        Set adoPrimaryRS = New Recordset
                        adoPrimaryRS.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,b.Debitper,b.dbReason from rm_lot a,rm_lotallowance b" & _
                                          " WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", db, adOpenStatic, adLockBatchOptimistic
                    End If
                End If
            End If
            
            Set rrsa = New Recordset
            If Vno = 0 Then
                strSQL = "UPDATE rm_lotallowance SET akgs = " & val(txtfields(10).Text) & ", Aratecy= " & val(txtfields(15).Text) & ", lotno='" & txtfields(0).Text & "', lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "', debitper =" & val(txtfields(29).Text) & ", dbreason ='" & Trim(txtfields(27).Text) & "',dbamt = " & val(txtfields(20).Text) & " where Asno='" & txtfields(22).Text & "' and Adate ='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' AND DIVCODE = '" & Divcode & "'"
                db.Execute strSQL
            End If
            If Vno > 0 Then
                strSQL = "UPDATE rm_lotallowance SET Dbno =" & Vno & " ,dbdt = '" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & _
                         "', dbnarr = '" & nar1 & "' , akgs = " & val(txtfields(10).Text) & ", Aratecy= " & val(txtfields(15).Text) & ", lotno='" & txtfields(0).Text & "', lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "', debitper =" & val(txtfields(29).Text) & ", dbreason ='" & Trim(txtfields(27).Text) & "',dbamt = " & val(txtfields(20).Text) & " where Asno='" & txtfields(22).Text & "' and Adate ='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' AND DIVCODE = '" & Divcode & "'"
                db.Execute strSQL
            End If
            
            Dim rstQry As Recordset
            Dim strQry As String
            Dim dblAllowanceWt As Double
            dblAllowanceWt = 0
            
            Set rstQry = New Recordset
            
            rstQry.Open "SELECT allowance FROM RM_LOT WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", db, adOpenStatic
            If rstQry.EOF = False Then
                dblAllowanceWt = rstQry(0)
            Else
                dblAllowanceWt = 0
            End If
            
            strQry = "Update rm_lot set netwt= grswgt - TAREWT  + " & val(txtfields(10).Text) & ",dbamt= dbamt - " & dblAlAmt & " + (" & val(txtfields(20).Text) & "), Allowance=" & val(txtfields(10).Text) & " ,Ratekg=" & Round(val(ratekg), 4) & ",totlandcost='" & val(txtfields(25).Text) & "',Asno=" & val(txtfields(22).Text) & ",Adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
            
            
            db.Execute strQry
        
            If val(txtfields(10).Text) > 0 Then
               
                If val(txtfields(14).Text) > 0 Then netwt = Round(val(txtfields(10).Text) / val(txtfields(14).Text), 3) Else netwt = Round(val(txtfields(10).Text), 3)
                
                TotNetWT = 0
                Set rsb = New Recordset
                rsb.Open "select distinct baleno from rm_bale where isqty is null and lotno ='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by 1", db, adOpenStatic
                If rsb.RecordCount > 0 Then
                    Do While rsb.EOF = False
                        If rsb.AbsolutePosition = rsb.RecordCount Then
                            netwt = val(txtfields(10).Text) - TotNetWT
                        End If
                        db.Execute "Update rm_bale set NETWT=ISNULL(NETWT,0)- " & netwt & ",Allowance=" & netwt & " where baleno=" & rsb("baleno") & " and lotno ='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                        TotNetWT = TotNetWT + netwt
                        rsb.MoveNext
                    Loop
                
                End If
            
            End If
            
                           
                     Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax ,BILLDATE,BILLNO FROM RM_Trans_Log  WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Lot Allowance"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = db.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = Trim(txtfields(22).Text)
                    TrnLog("docdt") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    TrnLog("lotno") = val(txtfields(0).Text)
                    TrnLog("lotdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                   
                    TrnLog("varcode") = Trim(txtfields(2).Text)
                    TrnLog("ratecy") = val(txtfields(15).Text)
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("billno") = txtfields(23).Text
                    TrnLog("billdate") = Format(txtfields(24).Text, "yyyy-mm-dd")
                    TrnLog("Line_No") = txtfields(27).Text
                   ' TrnLog("ordqty") = adoSecondaryRS("BALENO")
                    TrnLog("ordkgs") = val(txtfields(10).Text)
                    TrnLog("LandingCost") = val(txtfields(25).Text)
                    TrnLog("IRNo") = val(Vno)
                    TrnLog("IRDate") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    
                    TrnLog.UpdateBatch adAffectAllChapters
            
            db.CommitTrans
        End If
        
        If Opt = "del" Then
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
            If msg = vbYes Then
                db.BeginTrans
                Set rsa = New Recordset
                rsa.Open "select dbno,dbdt,dbtc,isnull(dbamt,0) as dbamt,isnull(totlandcost,0) as totlandcost from rm_lot where dbno is not null and lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and opflg='N'", db, adOpenStatic
                
                If rsa.RecordCount > 0 Then
                    tlandcost = val(rsa("totlandcost")) - val(rsa("dbamt"))
                
                    db.Execute "delete from Fa_Jvhead where vocno='" & rsa("dbno") & "' and vocdt='" & Format(rsa("dbdt"), "yyyy-mm-dd") & "' and tc='" & rsa("dbtc") & "' "
                    db.Execute "delete from Fa_Jvline where vocno='" & rsa("dbno") & "' and vocdt='" & Format(rsa("dbdt"), "yyyy-mm-dd") & "' and tc='" & rsa("dbtc") & "' "
                    db.Execute "Update rm_lot set dbno=null ,dbdt=null,dbamt=null, dbnarr=null," & _
                   " dbtc=null,Abales=null,Adate=null,Aratecy=null,ArateKg=null,Afratekg=null WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Divcode ='" & Divcode & "'"
                Else
                    tlandcost = val(txtfields(25).Text) - (val(txtfields(28).Text))
                End If
                
                netwt = val(txtfields(18).Text) - val(txtfields(10).Text)
                RATECY = val(txtfields(17).Text) - val(txtfields(15).Text)
                    
                Dim RCYRs As Recordset
                Set RCYRs = New Recordset
                RCYRs.Open "Select PJAmt,NetWt from RM_Lot where LotNo='" & txtfields(0).Text & "' and LotDt ='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "'", db, adOpenStatic
                If Not RCYRs.EOF Then
                    If netwt = 0 Then
                        Ratekg_Cal = 0
                    Else
                        Ratekg_Cal = Round(val(RCYRs("PJAmt")) / val(netwt), 4)
                    End If
                Else
                    Ratekg_Cal = 0
                End If
                    
                Call CalcDebit(CDbl(Ratekg_Cal), CDbl(netwt), adoPrimaryRS("lotno"), adoPrimaryRS("lotdt"))
                
               strSQL = "Update rm_lot set ratecy='" & RATECY & "' ,NETWT=" & netwt & ",pjamt=" & val(txtfields(16).Text) & ",Allowance=isnull(Allowance,0)-" & val(txtfields(10).Text) & " ,Ratekg=" & val(txtfields(19).Text) & ",totlandcost='" & val(txtfields(11).Text) & "'  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
                db.Execute "Update rm_lot set ratecy='" & RATECY & "' ,NETWT=" & netwt & ",dbno=null ,dbdt=null,dbamt=null, dbnarr=null,dbtc=null,Abales=null,Adate=null,Aratecy=null,ArateKg=null,Afratekg=null,pjamt=" & val(txtfields(16).Text) & ",Allowance=isnull(Allowance,0)-(" & val(txtfields(10).Text) & ") ,Ratekg=" & val(txtfields(19).Text) & ",totlandcost=" & tlandcost & "  WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'"
                
'                strSQL = "Update rm_bale set Netwt=netwt+(isnull(Allowance,0)*-1) ,Allowance=0 WHERE lotno='" & txtFields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
                db.Execute "Update rm_bale set Netwt=netwt+(isnull(Allowance,0)*-1) ,Allowance=0 WHERE lotno='" & txtfields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
                
'                strSQL = "Delete from rm_lotallowance where Asno='" & adoPrimaryRS("asno") & "' and adate='" & Format(adoPrimaryRS("adate"), "yyyy-mm-dd") & "' and divcode=" & Divcode & ""
                db.Execute "Delete from rm_lotallowance where Asno='" & adoPrimaryRS("asno") & "' and adate='" & Format(adoPrimaryRS("adate"), "yyyy-mm-dd") & "' and divcode=" & Divcode & ""
                
                
'                Set Rs = New Recordset
'                Rs.Open "SELECT MAX(ADATE),mAX(ASNO),SUM(ISNULL(AKGS,0)) AS aLKGS, SUM(ISNULL(DBAMT,0)) AS DBAMT FROM RM_LOTALLOWANCE WHERE LOTNO='" & adoPrimaryRS("LOTNO") & "' and LOTDT='" & Format(adoPrimaryRS("LOTDT"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'
'                If Rs.EOF = False Then
'                    DB.Execute "update rm_lot set Asno = " & Rs(1) & " ,adate='" & Format(Rs(0), "YYYY/MM/DD") & "',aLLOWANCE = " & Rs!ALKGS & ", DBAMT= " & val(Rs!DBamt) & "  WHERE lotno='" & txtFields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
'                Else
'                    DB.Execute "update rm_lot set Asno = null ,adate=null,DBAMT=NULL  WHERE lotno='" & txtFields(0).Text & "' and lotdt ='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
'                End If
                               
                     Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax ,BILLDATE,BILLNO FROM RM_Trans_Log  WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Lot Allowance"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = db.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = Trim(txtfields(22).Text)
                    TrnLog("docdt") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    TrnLog("lotno") = val(txtfields(0).Text)
                    TrnLog("lotdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                   
                    TrnLog("varcode") = Trim(txtfields(2).Text)
                    TrnLog("ratecy") = val(txtfields(15).Text)
                    TrnLog("slcode") = txtfields(1).Text
                    TrnLog("billno") = txtfields(23).Text
                    TrnLog("billdate") = Format(txtfields(24).Text, "yyyy-mm-dd")
                    TrnLog("Line_No") = txtfields(27).Text
                   ' TrnLog("ordqty") = adoSecondaryRS("BALENO")
                    TrnLog("ordkgs") = val(txtfields(10).Text)
                    TrnLog("LandingCost") = val(txtfields(25).Text)
                    TrnLog("IRNo") = val(Vno)
                    TrnLog("IRDate") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
                    
                    TrnLog.UpdateBatch adAffectAllChapters
                
                db.CommitTrans
                
                MsgBox "Record(s) Deleted", vbInformation, head
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
        If Opt = "fnd" Then
            Call Querymode
            Exit Sub
        End If
        MsgBox "Transaction Completed Successfully", vbInformation, head
        
        
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, GSNO)
        Call Querymode
        SSTab1.Enabled = False
        Exit Sub
GOPRIMERROR:
    If Err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:
    If Err.Number = -2147217900 Then
        MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        GoTo gocancel
        Exit Sub
    End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
        desc.Caption = "Query"
        Screen.MousePointer = 11
        On Error Resume Next
Select Case Opt

    Case "mod"
        db.RollbackTrans
    Case "add"
      ' DB.RollbackTrans
    Case "del"
        db.RollbackTrans
    Case "fnd"
        db.RollbackTrans
    End Select
    SSTab1.Enabled = False
    Call Querymode
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)

Case 11
        'EXIT
       ' If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me
        
Case 12
        Frame5.Visible = True
        Frame5.ZOrder 0
        Option5.value = True
        Option5.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        Command1.Visible = True
        Buttonframe.Enabled = False
        
Case 13

  Dim clsCryRptVariety As New clsCrystal
  Set clsCryRptVariety.cryRept = Cry_LotAllowance
  clsCryRptVariety.CrystalPrint

  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  CrystalReport1.ParameterFields(1) = "@lno;" & txtfields(0).Text & ""
  CrystalReport1.ParameterFields(2) = "@lfdate;" & Format(yfdate, "yyyy-MM-dd") & ""
  CrystalReport1.ParameterFields(3) = "@ltdate;" & Format(yldate, "yyyy-MM-dd") & ""
  CrystalReport1.ParameterFields(4) = "@asno;" & txtfields(22).Text & ""
  CrystalReport1.ParameterFields(5) = "@bdate;" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & ""
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
        
 End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FRMLOSETL", vbInformation, head
'    Resume
End Sub

Private Sub Command1_Click()
    Dim intLot As Integer
On Error GoTo Command1_Click_Error

        Screen.MousePointer = 11
        If txtfields(0).Text <> "" Then
            Set rep = New Report.ReportView
            'desc.Caption = "Listing"
            Set rs1 = New Recordset
            
    ''        RS1.Open "select DISTINCT a.Lotno,a.Lotdt,c.slname as supname,d.varname,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales," & _
    ''        " A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE " & _
    ''        " from rm_lot a,rm_lotallowance b, fa_slmas c, rm_var d  WHERE a.supcd=c.slcode and a.lotno=b.lotno and a.lotdt=b.lotdt and  a.varcode = d.varcode and a.divcode=b.divcode and " & _
    ''        " a.DIVCODE='" & Divcode & "' AND a.lotno='" & Txtfields(0).Text & "' and OPFLG='N' AND " & _
    ''        " A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' " & _
    ''        " ORDER BY B.ASNO,B.ADATE", DB, adOpenStatic, adLockReadOnly
    
    
            rs1.Open "select DISTINCT a.Lotno,a.Lotdt,c.slname as supname,d.varname,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales," & _
            " A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE " & _
            " from rm_lot a,rm_lotallowance b, fa_slmas c, rm_var d  WHERE a.supcd=c.slcode and a.lotno=b.lotno and a.lotdt=b.lotdt and  a.varcode = d.varcode and a.divcode=b.divcode and " & _
            " a.DIVCODE='" & Divcode & "' AND a.lotno='" & txtfields(0).Text & "' and OPFLG='N' AND B.ASNO='" & txtfields(22).Text & "' and B.adate='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' and " & _
            " A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' " & _
            " ORDER BY B.ASNO,B.ADATE", db, adOpenStatic, adLockReadOnly
        Else
            MsgBox "No Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If

'        If RS1.RecordCount <= 0 Then
'        MsgBox "No record found", vbInformation
'        Exit Sub
'        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA + "reddx.txt" For Output As #1
            Print #1, Chr(18)
            Print #1, Space(3) & Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27); "F"
            Print #1,
            Print #1, Space(3); CENTRE("Lot Allowance Slip", 85, " ") '& "Dt: "; Format(pdate, "dd/mm/yy")
            Print #1, Space(3) & String(85, "-")
            Print #1, Space(3); "Supplier     : "; Padr(rs1("supname"), 35, " ") + Space(2) + "Lot No.         : "; Padr(rs1("Lotno"), 5, " ")
            Print #1,
            Print #1, Space(3); "Variety         : "; Padr(rs1("varname"), 32, " "); Space(2) + "Date            : "; Padr(Format(rs1("lotdt"), "dd/mm/yy"), 10, " ")
            Print #1,
            Print #1, Space(3); "Gross Weight    : "; Padr(Format(rs1("grswgt"), "##0.000"), 15, " "); Space(19) + "Tare Weight     : "; Padr(Format(rs1("tarewt"), "##0.000"), 12, " ")
            Print #1,
            Print #1, Space(3); "Qty In Kgs     "
            Print #1, Space(3); "Allowance       : "; Padr(Format(rs1("allowance"), "##0.000"), 15, " "); Space(19) + "Moisture Weight : "; Padr(Format(rs1("moiture"), "##0.000"), 12, " ")
            Print #1,
            Print #1, Space(3); "Net Weight      : "; Padr(Format(rs1("netwt"), "##0.000"), 15, " ")  'Space(14) + "Nett Weight     : "; Padr(Format(RS1("netwt"), "##0.000"), 8, " ")
            Print #1,
            Print #1, Space(3); "Rate Candy      : "; Padr(Format(rs1("ratecy"), "##0.00"), 15, " "); Space(19) + "Rate Kg         : "; Padr(Format(rs1("ratekg"), "##0.00"), 12, " ")
            Print #1,
            Print #1, Space(3); "Delivery Type   : "; Padr(txtfields(21).Text, 15, " "); Space(19) + "Value           : "; Padr(Format(rs1("TOTLANDCOST"), "##0.00"), 12, " ")
            Print #1,
            Print #1, Space(3); "Bill No.        : "; Padr(txtfields(23).Text, 15, " "); Space(19) + "Bill Date       : "; Padr(Format(txtfields(24), "dd/MM/yy"), 12, " ")
            Print #1,
            Print #1, Space(3); "Allowance Amount: "; Padr(txtfields(20).Text, 15, " "); Space(19)
            Print #1,
            Print #1, Space(3); "Allowance"
            Print #1, Space(3); "In Rate Candy   : "; Padr(txtfields(15).Text, 15, " "); Space(19)
            For K = 1 To 9
            Print #1,
            Next K
            Print #1, Space(3) & String(85, "-")
            Print #1,
            Print #1,
            Print #1,
            Print #1,
            'Call FOOTER_PRINT(80, CStr(1), 5)
            Call footermod(CInt(1), UserFooter1.SelectedStr, 88)
            Print #1,
            Print #1,
            
         Close #1
         
         Call KALBATPROCESS("Reddx")
         Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Command1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command1_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
Command1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_KeyDown of Form FRMLOSETL", vbInformation, head
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
        Call BUTTON_Click(10) 'cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
statusbar1.Panels(1).Text = STBARmsg
Call openconnection
  SSTab1.Visible = True
  SSTab1.Enabled = False
  DATLAB.Caption = pdate
Call Querymode
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
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
''    ElseIf KeyCode = vbKeyW And Shift = 2 Then
''        Call Command6_Click
'    End If
End Sub
'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
Set MaskEdBox1.DataSource = adoPrimaryRS
Set MaskEdBox2.DataSource = adoPrimaryRS
End Sub

Public Sub ENABLCONTLS()
On Error Resume Next
For Each oText In Me.txtfields
    oText.Locked = False
Next

End Sub

Public Sub disablcontls()
On Error Resume Next
For Each oText In Me.txtfields
    oText.Locked = False
Next
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

If Opt = "add" Or Opt = "mod" Then
    Call BUTTON_Click(11)
Else
    Call Querymode
End If
Frame3.Visible = False

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

If Opt = "add" Or Opt = "mod" Then
Select Case kslLIST1.listfield1
Case "LOTNO"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select Lotno,Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,Bales,Issbal,Asno,Adate,isnull(pjamt,0) as pjamt,Totlandcost,Allowance from rm_lot WHERE DIVCODE='" & Divcode & "' AND OPFLG='N' AND LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' AND lotno='" & kslLIST1.Code & "' and lotdt='" & Format(kslLIST1.Description, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockBatchOptimistic
      If adoPrimaryRS.RecordCount > 0 Then
          Set rsa = New Recordset
          rsa.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", db, adOpenStatic
          If rsa.RecordCount > 0 Then
              Txtparty.Text = rsa(0)
          Else
              Txtparty.Text = ""
          End If
          Set rsa = New Recordset
          rsa.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", db, adOpenStatic
          If rsa.RecordCount > 0 Then
              Txtvar.Text = rsa(0)
          Else
              Txtvar.Text = ""
          End If
          
          txtfields(18).Text = pdate
          
      End If
      Call ENABLCONTLS
      Call bindcontls
       Set RRs = New Recordset
            RRs.Open " select case when isnull(c.dlytype,'')='S' then 'Spot' when isnull(c.dlytype,'')='M' then 'FOR' else '' end as dlytype from " & _
            " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,fa_slmas f " & _
            " where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
            " and a.supcd*=e.slcode and a.brkcd*=f.slcode and lotyear='" & Year(yfdate) & "'  " & _
            " and a.lotdt='" & Format(kslLIST1.Description, "yyyy-mm-dd") & "' and a.lotno='" & kslLIST1.Code & "'  order by a.lotdt,a.lotno ", db, adOpenStatic
            If RRs.RecordCount > 0 Then
                txtfields(21).Text = RRs(0)
            Else
                txtfields(21).Text = ""
            End If

      txtfields(14).Text = val(txtfields(12).Text) - val(txtfields(13).Text)
      
'      Set rs = New Recordset
'      rs.Open "select isnull(max(Asno),0)+1 from rm_lotallowance where Adate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode ='" & Divcode & "'", DB, adOpenStatic
'      If rs.RecordCount > 0 Then
'        txtFields(22).Text = rs(0)
'      End If
      MaskEdBox2.Text = pdate
      txtfields(18).Text = ""
      txtfields(10).Text = ""
      txtfields(20).Text = ""
      txtfields(11).Text = ""
      txtfields(19).Text = ""
      txtfields(16).Text = ""
      txtfields(10).SetFocus
      Frame3.Visible = False
End Select
End If
If Opt = "del" Then
    Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,B.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,isnull(a.pjamt,0) as pjamt,b.Debitper,b.dbReason from rm_lot a,rm_lotallowance b" & _
                    " WHERE a.lotno='" & kslLIST1.Code & "' and a.lotdt='" & Format(kslLIST1.Description, "yyyy-mm-dd") & "' and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", db, adOpenStatic, adLockBatchOptimistic
  
  If adoPrimaryRS.RecordCount <> 0 Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
   
     Call disablcontls
     
   
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       Call bindcontls
       Call disablcontls
  End If
   Frame3.Visible = False
   
  Screen.MousePointer = 0
End If


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form FRMLOSETL", vbInformation, head
End Sub

Private Sub MaskEdBox2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox2_KeyDown_Error

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
        Call BUTTON_Click(10) 'cancel
    End If
End If

Exit Sub
MaskEdBox2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_KeyDown of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox2_LostFocus()
On Error GoTo MaskEdBox2_LostFocus_Error

If IsDate(MaskEdBox2.Text) = False Then
    MsgBox "Please enter a valid date", vbInformation, head
    MaskEdBox2.SetFocus
    Exit Sub
End If

Exit Sub
MaskEdBox2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_LostFocus of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command1.Visible = True

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    'Command1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
intervalMinutes = -1
    If Index = 27 Then Text1.Text = getMasterName("DBREASON", "RM_DBNOTETYPE", "DBCODE", Trim(txtfields(Index).Text))
     If Opt <> "add" And Opt <> "mod" Then
          Select Case Index
              Case 16, 11, 25, 28, 29
                  txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
              Case 10
                  txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
          End Select
     End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
intervalMinutes = -1
If Index = 15 Or Index = 10 Then
    txtfields(Index).BackColor = &HC0FFC0
    statusbar1.Panels(2).Text = "Enter Maximum of 10 Integers with 4 Decimals"
End If
If Index = 28 Then statusbar1.Panels(2).Text = "Enter Maximum of 8 Integers with 2 Decimals"
If Index = 29 Then statusbar1.Panels(2).Text = "Enter Maximum of 3 Integers with 2 Decimals"
Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
'If Opt = "add" Or Opt = "mod" Then
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
''    ElseIf KeyCode = vbKeyW And Shift = 2 Then
''        Call Command6_Click
'    End If
'End If



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
        Call BUTTON_Click(10) 'cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
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

Sub Querymode()
intervalMinutes = -1
On Error GoTo Querymode_Error

  Set adoPrimaryRS = New Recordset
'  adoPrimaryRS.Open "select DISTINCT a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,A.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,a.plotno,b.Debitper,b.dbReason from rm_lot a,rm_lotallowance b" & _
'                    " WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", DB, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open "select TOP 1 a.Lotno,a.Lotdt,Supcd,Varcode,Grswgt,Tarewt,Netwt,Moiture,Ratecy,Ratekg,B.Bales,A.Issbal,B.ASNO,B.Adate,A.Dbno,A.Dbdt,B.DbAmt,A.Dbnarr,b.Aratecy,Akgs,TOTLANDCOST,B.DBAMT,ALLOWANCE AS aLLOW,B.AKGS AS ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,a.plotno,b.Debitper,b.dbReason,b.ExTrashPer,b.ExTrashWgt,b.ExMoisturePer,b.ExMoistureWgt from rm_lot a,rm_lotallowance b" & _
                    " WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' AND OPFLG='N' AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO Desc,B.ADATE Desc ", db, adOpenStatic, adLockBatchOptimistic
  
  
  If adoPrimaryRS.RecordCount <> 0 Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
     txtfields(23).Text = adoPrimaryRS.Fields("Billno")
   
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       Call bindcontls
       Call disablcontls
  End If
  Screen.MousePointer = 0

intervalMinutes = -1
Exit Sub
Querymode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Querymode of Form FRMLOSETL", vbInformation, head
End Sub

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo TXTFIELDS_KeyPress_Error

If Index = 10 Or Index = 15 Then
    'tonum txtFields(Index), 10, KeyAscii
    If KeyAscii <> 46 Then
        ToAlphaNumber txtfields(Index), 10, KeyAscii
        ToNumberAssign txtfields(Index), 10, KeyAscii, 10, 4
    End If
End If
If Index = 28 Then ToNumberAssign txtfields(Index), 10, KeyAscii, 8, 2
If Index = 29 Then
'    ToNumberAssign TXTFIELDS(Index), 5, KeyAscii, 3, 2
'    If val(TXTFIELDS(Index).Text) <= 100 Then KeyAscii = 0
End If


Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    If Index = 28 Then
        If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
        If val(txtfields(28).Text) > val(txtfields(16).Text) Then
            MsgBox "Please enter Allowance Amount less than Landed cost ", vbInformation, head
            txtfields(Index).SetFocus
            'Txtfields_Validate (Index)
            Exit Sub
        End If

    End If
    
        
    If Index = 29 Then
        If val(txtfields(Index).Text) > 100 Then
            MsgBox "Please enter Percentage Below 100", vbInformation, head
            txtfields(Index).SetFocus
            'Txtfields_Validate (Index)
            Exit Sub
        End If
    End If
    
End If
If Index = 15 Or Index = 10 Then
    txtfields(Index).BackColor = &HFFFFFF
    statusbar1.Panels(2).Text = ""
    If Index = 10 Then txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
    If Index = 15 Then txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.0000")
End If

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

On Error GoTo txtfields_Validate_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    If Index = 10 Or Index = 28 Or Index = 29 Then 'Kgs
'        If val(TXTFIELDS(10).Text) <> 0 Then
            If val(txtfields(10).Text) > val(txtfields(5).Text) Then
                MsgBox "Allowance Kgs. must be less than or equal to the Nett Weight", vbInformation, head
                txtfields(10).Text = val(txtfields(5).Text)
                txtfields(10).SetFocus
                
            Else
                txtfields(18).Text = val(txtfields(5).Text) + val(txtfields(10).Text)
                If val(txtfields(15).Text) <> 0 Then
                    RATECY = txtfields(8).Text + val(txtfields(15).Text)
                Else
                    RATECY = val(txtfields(8).Text)
                End If
                txtfields(17).Text = RATECY
                
'                Ratekg_Cal = 0
                Dim RCYRs As Recordset
                Set RCYRs = New Recordset
                RCYRs.Open "Select PJAmt,NetWt,TotLandCost,isnull(dbamt,0) as DBAmt from RM_Lot where LotNo='" & txtfields(0).Text & "' and LotDt ='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "' And Divcode ='" & Divcode & "'", db, adOpenStatic
                If Not RCYRs.EOF Then
                    'Ratekg_Cal = Round(val(RCYRs("PJAmt")) / val(RCYRs("NetWt")), 4)
                    If Opt = "add" Then
                         If RCYRs!netwt > 0 Then Ratekg_Cal = Round(val(RCYRs("TotLandCost")) / val(RCYRs("NetWt")), 4) Else Ratekg_Cal = 0
                    ElseIf Opt = "mod" Then
                         dblDBAmt = 0
'                         If RCYRs!DBamt < 0 Then dblDBAmt = RCYRs!DBamt * (-1) Else dblDBAmt = RCYRs!DBamt
                         dblDBAmt = RCYRs!DBamt * (-1)
                         dblAllowWgt = val(txtfields(7).Text) * (-1)
                         If RCYRs!netwt > 0 Then Ratekg_Cal = Round((val(RCYRs("TotLandCost")) + dblDBAmt) / (val(RCYRs("NetWt")) + dblAllowWgt + (val(txtfields(10).Text))), 4) Else Ratekg_Cal = 0
                         txtfields(25).Text = Round((val(RCYRs("TotLandCost")) + dblDBAmt), 2)
                    End If
                Else
                    Ratekg_Cal = 0
                End If
                
                If val(txtfields(18).Text) > 0 Then
                    If Opt = "add" Then
                         netwt = txtfields(18).Text
                    ElseIf Opt = "mod" Then
                         netwt = (val(RCYRs("NetWt")) + dblAllowWgt + (val(txtfields(10).Text)))
                         txtfields(18).Text = Format(netwt, "0.000")
                    End If
                Else
                    If Opt = "add" Then
                         netwt = val(txtfields(5).Text)
                    ElseIf Opt = "mod" Then
                         netwt = (val(RCYRs("NetWt")) + dblAllowWgt + (val(txtfields(10).Text)))
                         txtfields(18).Text = Format(netwt, "0.000")
                    End If
                    
                End If
                
                
               
                
                If Index = 29 Then
                    If Opt = "add" Then
                         If val(txtfields(28).Text) = 0 Then txtfields(28).Text = val(txtfields(25).Text) * (val(txtfields(29).Text) / 100)
                    ElseIf Opt = "mod" Then
                         txtfields(28).Text = val(txtfields(25).Text) * (val(txtfields(29).Text) / 100)
                    End If
                End If

                Call CalcDebit(CDbl(Ratekg_Cal), CDbl(netwt), adoPrimaryRS("lotno"), adoPrimaryRS("lotdt"))
                If Opt = "add" Then
                    txtfields(25).Text = Round(val(RCYRs("TotLandCost")) + val(txtfields(20).Text), 4)
                ElseIf Opt = "mod" Then
                    txtfields(25).Text = Round((val(RCYRs("TotLandCost")) + dblDBAmt + val(txtfields(28).Text)), 2)
                End If
'            End If
        End If
    End If
    If Index = 27 Then
        Set rsa = New Recordset
        rsa.Open "select * from rm_dbnotetype", db, adOpenStatic
        If rsa.RecordCount > 0 Then
                Set rsa = New Recordset
                rsa.Open "select dbcode 'Debit Note Code',dbReason 'Debit Note Reason' from rm_dbnotetype where dbcode='" & txtfields(27).Text & "'", db, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.Clear = True
                    LookUp.query = "select dbcode 'Debit Note Code',dbReason 'Debit Note Reason' from rm_dbnotetype "
                    LookUp.Caption = "Debit Note Reason Listing"
                    LookUp.DefCol = "Debit Note Reason"
                    LookUp.ALIGN = "2000,6000"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(27).Text = LookUp.Fields(0)
                        Text1.Text = LookUp.Fields(1)
                        LookUp.Clear = True
                    Else
                       txtfields(27).Text = ""
                       Text1.Text = ""
                       txtfields(10).SetFocus
                    End If
                Else
                   Text1.Text = rsa("Debit Note Reason")
                End If
        Else
            txtfields(27).Text = ""
            Text1.Text = ""
        End If
    End If
    
    If Index = 15 Then 'Candy
        If val(txtfields(15).Text) <> 0 Then
        
            Set RCYRs = New Recordset
            RCYRs.Open "Select PJAmt,NetWt from RM_Lot where LotNo='" & txtfields(0).Text & "' and LotDt ='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "'", db, adOpenStatic
            If Not RCYRs.EOF Then
                Ratekg_Cal = Round(val(RCYRs("PJAmt")) / val(RCYRs("NetWt")), 4)
            Else
                Ratekg_Cal = 0
            End If
            
            
            Set rateunitrs = New Recordset
            rateunitrs.Open "select ContNO from RM_Arrival where LotNo='" & txtfields(0).Text & "' and LotDt='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "'", db, adOpenStatic
            If rateunitrs.RecordCount > 0 Then
                vContNo = rateunitrs("ContNo")
                Set rateunitrs = New Recordset
                rateunitrs.Open "select RateUnit from RM_Cont where ContNo='" & vContNo & "'", db, adOpenStatic
                If rateunitrs.RecordCount > 0 Then
                    vRateUnitName = rateunitrs("RateUnit")
                    Set rateunitrs = New Recordset
                    rateunitrs.Open "select Value from RM_RateUnit where UnitName='" & vRateUnitName & "'", db, adOpenStatic
                    If rateunitrs.RecordCount > 0 Then
                        vrateunitvalue = rateunitrs("Value")
                    End If
                End If
            End If
            
            'Ratekg_Cal = Ratekg_Cal + (txtfields(15).Text / vRateUnitValue)
            
            
            txtfields(18).Text = val(txtfields(5).Text) + val(txtfields(10).Text)
            If val(txtfields(15).Text) <> 0 Then
                RATECY = val(txtfields(8).Text) + val(txtfields(15).Text)
            Else
                RATECY = val(txtfields(8).Text)
            End If
            txtfields(17).Text = RATECY
            If val(txtfields(18).Text) > 0 Then
                netwt = val(txtfields(18).Text)
            Else
                netwt = val(txtfields(5).Text)
            End If
            Call CalcDebit(CDbl(Ratekg_Cal), CDbl(netwt), adoPrimaryRS("lotno"), adoPrimaryRS("lotdt"))
        End If
    End If
End If



Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FRMLOSETL", vbInformation, head

Screen.MousePointer = 0
End Sub


Sub CalcDebit(RATECY As Double, netwt As Double, lotno As Integer, LOTDT As Date)
On Error GoTo CalcDebit_Error

Set rsa = New Recordset
rsa.Open "select CATCD,TOTLANDCOST,isnull(Vatamt,0)+isnull(taxamt,0)+isnull(odint,0)+isnull(freght,0)+isnull(ldgulg,0)+isnull(brkcom,0)+isnull(dnamt1,0)+isnull(dnamt2,0)+isnull(insamt,0)+isnull(bedamt,0)+isnull(spotexp,0) from rm_lot where lotno='" & lotno & "' and lotdt ='" & Format(LOTDT, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic

If rsa.RecordCount > 0 Then
    
    Set rateunitrs = New Recordset
    rateunitrs.Open "select ContNO,contdt from RM_Arrival where LotNo='" & lotno & "' and LotDt='" & Format(LOTDT, "yyyy-MM-dd") & "'", db, adOpenStatic
    If rateunitrs.RecordCount > 0 Then
        vContNo = rateunitrs("ContNo")
        vcontdt = rateunitrs("contdt")
        Set Rs = New Recordset
        Rs.Open "SELECT CENTRALIZEDORDER FROM RM_PARAM", db, adOpenStatic
        If Rs(0) = "Y" Then
            Set rateunitrs = New Recordset
            rateunitrs.Open "select RateUnit from RM_Cont where ContNo='" & vContNo & "' and contdt='" & Format(vcontdt, "yyyy-MM-dd") & "'", db, adOpenStatic
        Else
            Set rateunitrs = New Recordset
            rateunitrs.Open "select RateUnit from RM_Cont where ContNo='" & vContNo & "' and divcode='" & Divcode & "' and contdt='" & Format(vcontdt, "yyyy-MM-dd") & "'", db, adOpenStatic
        End If
        If rateunitrs.RecordCount > 0 Then
            vRateUnitName = rateunitrs("RateUnit")
            Set rateunitrs = New Recordset
            rateunitrs.Open "select Value from RM_RateUnit where UnitName='" & vRateUnitName & "'", db, adOpenStatic
            If rateunitrs.RecordCount > 0 Then
                vrateunitvalue = rateunitrs("Value")
            End If
        End If
    End If
     
         pjamt = Round(RATECY * netwt, 0)
     
     '  adoprimaryrs("PJAMT") = pjamt
       txtfields(16).Text = pjamt
     If val(netwt) > 0 Then
         If rsa("catcd") = "P" Then
            txtfields(19).Text = Round((val(pjamt) + rsa(2)) / netwt, 4)
              'ratekg            'tottaxamt         'NETWT
         Else
             'txtFields(19).Text = Round((val(pjamt) + rsa(2)) / netwt, 4)
                   'ratekg                                        'tottaxamt         'NETWT
            txtfields(19).Text = Round((val(pjamt)) / netwt, 4)
         End If
         'txtFields(11).Text = Round((val(pjamt) + rsa(2)), 0)
         txtfields(11).Text = Round((val(pjamt)), 0)

     End If
     oldval = adoPrimaryRS("totlandcost")
End If
Set Rs = New Recordset
Rs.Open "select ratecy,ratekg from rm_lot where lotno='" & lotno & "' and lotdt='" & Format(LOTDT, "yyyy-MM-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
If Rs.RecordCount > 0 Then
  RATECY = IIf(IsNull(Rs("ratecy")), 0, Rs("ratecy"))
  ratekg = IIf(IsNull(Rs("ratekg")), 0, Rs("ratekg"))
Else
  RATECY = 0
  ratekg = 0
End If
If val(txtfields(10).Text) <> 0 Then
    DBamt = Round(val(txtfields(10).Text) * (RATECY))
'     DBamt = Round(val(txtFields(10).Text) * (ratekg))
ElseIf (txtfields(15).Text) <> 0 Then
    DBamt = Round(val(txtfields(15).Text) * (netwt / vrateunitvalue))
Else
    DBamt = 0
End If
'DBamt = oldval - val(txtfields(11).Text)
If txtfields(10).Text <> "" Then
    Set rs1 = New Recordset
    rs1.Open "Select isnull(vatper,0) as vatper,isnull(vatamt,0) as vatamt,isnull(netwt,0) as netwt from rm_lot where lotno='" & txtfields(0).Text & "' and divcode='" & Divcode & "' and lotdt='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "'", db, adOpenStatic
    If rs1.RecordCount > 0 Then
        If rs1("netwt") > 0 Then
            Taxamt = Round((rs1("vatamt") / rs1("netwt")) * val(txtfields(10).Text))
        End If
    End If
    If val(txtfields(28).Text) = 0 Then txtfields(28).Text = Format(Round(DBamt + Taxamt, 2), "0.00")
    txtfields(20).Text = Format(Round(val(txtfields(28).Text), 2), "0.00")
ElseIf txtfields(15).Text <> "" Then
    Set rs1 = New Recordset
    rs1.Open "Select isnull(vatper,0) as vatper,isnull(vatamt,0) as vatamt,isnull(ratecy,0) as ratecy, ISNULL(TaxAmt,0) as TaxAmount from rm_lot where lotno='" & txtfields(0).Text & "' and divcode='" & Divcode & "' and lotdt='" & Format(MaskEdBox1.Text, "yyyy-MM-dd") & "'", db, adOpenStatic
    If rs1.RecordCount > 0 Then
        If txtfields(21).Text = "Spot" Then
            Taxamt = Round((val(txtfields(15).Text) / rs1("ratecy")) * rs1("TaxAmount"))
        End If
        'If RS1("ratecy") > 0 Then
        '    Taxamt = Round((val(txtfields(15).Text) / RS1("ratecy")) * RS1("vatamt"))
        'End If
    End If
End If
 If val(txtfields(28).Text) = 0 Then txtfields(28).Text = Format(Round(DBamt + Taxamt, 2), "0.00")
txtfields(20).Text = Format(Round(val(txtfields(28).Text), 2), "0.00")
txtfields(11).Text = val(txtfields(11)) + val(txtfields(20))
Exit Sub
CalcDebit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CalcDebit of Form FRMLOSETL", vbInformation, head
End Sub
Private Sub callhead(s As String, q As String, v As String)
Dim div As String
On Error GoTo callhead_Error

Print #1,
Print #1, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(27) & Chr(205)

Print #1, Space(2) & "Lot Allowance " & "     " & Space(9) & "   " & Space(50) & Format(pdate, "dd/mm/yy") & Space(5) & "Pg.: " & CInt(pg1)   '& Chr(15)
Print #1, Space(2) & String(130, "-")
Print #1, Space(2); "All.Date  All. Variety       Lot      Lot  Supplier Name                     <--------  Allowance -------->"
Print #1, Space(2); "          No.  Name          No.     Date                                     Bales       Kgs.        Candy"
Print #1, Space(2) & String(130, "-")
co = co + 9

Exit Sub
callhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure callhead of Form FRMLOSETL", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Function SeasonAllowance(ArrivalNo As Integer, ArrivalDate As String)

Set Rs = New Recordset
Rs.Open " SELECT Season, isNull(b.trashper,0) as trashper,isnull(b.moisture_per,0) as moistureper," & _
        " (isnull(GROSSWT,0) - isnull(TAREWT,0)) * (isnull(b.TRASHPER,0)- isNull(c.trashper,0))/100 AS trashwt," & _
        " (isnull(GROSSWT,0) - isnull(TAREWT,0)) * (isnull(b.MOISTURE_PER,0)- isNull(c.MOISTUREPER,0))/100 AS Moisturewt, " & _
        " isnull(c.TRASHPER,0) AS seaTrashper,isnull(c.MOISTUREPER,0) as seaMoisturePer FROM rm_cont a," & _
        " rm_arrival b ,RM_SEASON c Where a.Divcode = b.Divcode And a.contno = b.contno And a.contdt = b.contdt" & _
        " And a.SEASON = C.SEACODE AND arrno=" & ArrivalNo & " AND arrdate='" & Format(ArrivalDate, "YYYY-MM-DD") & _
        "' and b.Divcode = '" & Divcode & "'", db, adOpenStatic
    
        If Rs.EOF = False Then
            txtfields(33).Text = Format(Rs("trashper") - Rs("seatrashper"), "0.00")
            txtfields(34).Text = Format(Rs("trashwt"), "0.000")
            txtfields(35).Text = Format(Rs("moistureper") - Rs("seamoistureper"), "0.00")
            txtfields(36).Text = Format(Rs("Moisturewt"), "0.000")
            txtfields(10).Text = Format(((Rs("trashwt") + Rs("Moisturewt")) * -1), "0.000")
            
        End If
End Function

Private Sub formatObject()
    txtfields(10).Text = Format(val(txtfields(10).Text), "0.000")
    txtfields(32).Text = Format(val(txtfields(32).Text), "0.00")
    txtfields(31).Text = Format(val(txtfields(31).Text), "0.000")
    txtfields(30).Text = Format(val(txtfields(30).Text), "0.00")
    txtfields(6).Text = Format(val(txtfields(6).Text), "0.000")
    txtfields(33).Text = Format(val(txtfields(33).Text), "0.00")
    txtfields(34).Text = Format(val(txtfields(34).Text), "0.000")
    txtfields(35).Text = Format(val(txtfields(35).Text), "0.00")
    txtfields(36).Text = Format(val(txtfields(36).Text), "0.000")
End Sub


