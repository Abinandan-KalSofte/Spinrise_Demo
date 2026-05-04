VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_BarcodePrintSel 
   Caption         =   "Bale List"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   34
      Top             =   0
      Visible         =   0   'False
      Width           =   11850
      Begin VB.CommandButton CRYTran 
         Height          =   510
         Index           =   1
         Left            =   7860
         Picture         =   "frm_BarcodePrintSel.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CRY 
         Height          =   510
         Index           =   0
         Left            =   2730
         Picture         =   "frm_BarcodePrintSel.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5820
         Picture         =   "frm_BarcodePrintSel.frx":0884
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Exit"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":0CC6
         Height          =   510
         Index           =   4
         Left            =   1120
         Picture         =   "frm_BarcodePrintSel.frx":0FD0
         Style           =   1  'Graphical
         TabIndex        =   40
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":1365
         Height          =   510
         Index           =   10
         Left            =   2175
         Picture         =   "frm_BarcodePrintSel.frx":166F
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":19EB
         Height          =   510
         Index           =   9
         Left            =   1650
         Picture         =   "frm_BarcodePrintSel.frx":1CF5
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":2097
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
         Left            =   600
         Picture         =   "frm_BarcodePrintSel.frx":23A1
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":273D
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_BarcodePrintSel.frx":2A47
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_BarcodePrintSel.frx":2DDA
         Height          =   510
         Index           =   11
         Left            =   3240
         Picture         =   "frm_BarcodePrintSel.frx":3224
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "Exit"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8760
         TabIndex        =   45
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   10200
         TabIndex        =   44
         Top             =   240
         Width           =   690
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   1440
      TabIndex        =   30
      Top             =   1200
      Width           =   5535
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   330
         IMEMode         =   3  'DISABLE
         Left            =   2280
         PasswordChar    =   "*"
         TabIndex        =   32
         Top             =   480
         Width           =   1635
      End
      Begin VB.CommandButton Command3 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   4080
         TabIndex        =   31
         Top             =   480
         Width           =   1035
      End
      Begin VB.Label Label6 
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   33
         Top             =   480
         Width           =   1515
      End
   End
   Begin MSDataListLib.DataCombo DataCombo5 
      Height          =   315
      Left            =   600
      TabIndex        =   17
      Top             =   5220
      Visible         =   0   'False
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo5"
   End
   Begin MSDataListLib.DataCombo DataCombo4 
      Height          =   315
      Left            =   600
      TabIndex        =   16
      Top             =   5280
      Visible         =   0   'False
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo4"
   End
   Begin MSDataListLib.DataCombo DataCombo3 
      Height          =   315
      Left            =   240
      TabIndex        =   15
      Top             =   4920
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo3"
   End
   Begin MSDataListLib.DataCombo DataCombo2 
      Height          =   315
      Left            =   -120
      TabIndex        =   14
      Top             =   5760
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo2"
   End
   Begin MSDataListLib.DataCombo DataCombo1 
      Height          =   315
      Left            =   720
      TabIndex        =   13
      Top             =   3600
      Visible         =   0   'False
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo1"
   End
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   465
      Left            =   240
      ScaleHeight     =   435
      ScaleWidth      =   14805
      TabIndex        =   6
      Top             =   8880
      Visible         =   0   'False
      Width           =   14835
      Begin VB.CommandButton Command2 
         Caption         =   "&ADD"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2880
         TabIndex        =   19
         ToolTipText     =   "(Alt R)"
         Top             =   0
         Visible         =   0   'False
         Width           =   1305
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6000
         TabIndex        =   8
         ToolTipText     =   "(Alt x)"
         Top             =   0
         Width           =   1485
      End
      Begin VB.CommandButton CmdCrystal 
         Caption         =   "&Print"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4560
         TabIndex        =   7
         ToolTipText     =   "(Alt R)"
         Top             =   0
         Width           =   1305
      End
   End
   Begin VB.PictureBox FraFabstk 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   8715
      Left            =   255
      ScaleHeight     =   8685
      ScaleWidth      =   14820
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   14850
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   330
         Left            =   11280
         TabIndex        =   26
         Top             =   600
         Visible         =   0   'False
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   582
         _Version        =   393216
         Format          =   157286401
         CurrentDate     =   43439
      End
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         Caption         =   "Start"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   20
         Top             =   6600
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   1700
         Left            =   150
         Top             =   2790
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   6000
         TabIndex        =   18
         Top             =   600
         Width           =   855
      End
      Begin VB.CheckBox Chkconst 
         Appearance      =   0  'Flat
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
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   240
         TabIndex        =   11
         Top             =   6120
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.CheckBox Chkcust 
         Appearance      =   0  'Flat
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
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   600
         TabIndex        =   2
         Top             =   2400
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.TextBox txt_search 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   1560
         TabIndex        =   1
         Top             =   600
         Width           =   4275
      End
      Begin MSComctlLib.ListView LV_Grade 
         Height          =   1635
         Left            =   14640
         TabIndex        =   9
         Top             =   3000
         Visible         =   0   'False
         Width           =   2595
         _ExtentX        =   4577
         _ExtentY        =   2884
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Grade"
            Object.Width           =   4427
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Description"
            Object.Width           =   2646
         EndProperty
      End
      Begin MSComctlLib.ListView LV_Pack 
         Height          =   1680
         Left            =   14760
         TabIndex        =   10
         Top             =   2640
         Visible         =   0   'False
         Width           =   2595
         _ExtentX        =   4577
         _ExtentY        =   2963
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Pack Type"
            Object.Width           =   4427
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Description"
            Object.Width           =   2646
         EndProperty
      End
      Begin MSMask.MaskEdBox MaskEdBox2 
         DataField       =   "PBO_Date"
         Height          =   300
         Left            =   13200
         TabIndex        =   22
         TabStop         =   0   'False
         Top             =   480
         Visible         =   0   'False
         Width           =   1110
         _ExtentX        =   1958
         _ExtentY        =   529
         _Version        =   393216
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComctlLib.ListView Lv_Const 
         Height          =   5025
         Left            =   1560
         TabIndex        =   24
         Top             =   3600
         Width           =   13200
         _ExtentX        =   23283
         _ExtentY        =   8864
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   9
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Bale No"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Lot No"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Lot Date"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Variety Code"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Variety Name"
            Object.Width           =   4410
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Gross Weight"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Net Weight"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "Lot Year"
            Object.Width           =   2
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Bale No"
            Object.Width           =   0
         EndProperty
      End
      Begin MSComctlLib.ListView Lv_SaleOrder 
         Height          =   2520
         Left            =   1560
         TabIndex        =   25
         Top             =   1020
         Width           =   13140
         _ExtentX        =   23178
         _ExtentY        =   4445
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Lot No"
            Object.Width           =   3175
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Lot Date"
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Variety Code"
            Object.Width           =   2
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Variety Name "
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Lot Year"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Lot No"
            Object.Width           =   9
         EndProperty
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   11280
         TabIndex        =   27
         Top             =   960
         Visible         =   0   'False
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   582
         _Version        =   393216
         Format          =   157286401
         CurrentDate     =   43439
      End
      Begin VB.Label Label4 
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   9840
         TabIndex        =   29
         Top             =   960
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.Label Label3 
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   9840
         TabIndex        =   28
         Top             =   600
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Pre Pack Doc Date"
         Height          =   195
         Index           =   0
         Left            =   11760
         TabIndex        =   23
         Top             =   480
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.Label Label7 
         Caption         =   "Pack Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Left            =   210
         TabIndex        =   21
         Top             =   5505
         Visible         =   0   'False
         Width           =   1515
      End
      Begin VB.Label Label5 
         Caption         =   "Bale List"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Left            =   120
         TabIndex        =   12
         Top             =   3720
         Width           =   1515
      End
      Begin VB.Label LblFabStkHd 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Production Packing Details"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   0
         TabIndex        =   5
         Top             =   0
         Width           =   14940
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   4
         Top             =   645
         Width           =   615
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Lot List"
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
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   1560
         WordWrap        =   -1  'True
      End
   End
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   315
      Top             =   2040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   480
      Top             =   7560
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   0
      Top             =   8535
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
End
Attribute VB_Name = "frm_BarcodePrintSel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim TmpRs As New Recordset
Dim SubRs As New Recordset
Dim temprs As New Recordset
Dim RsCn As New Recordset
Dim Rs As New Recordset
Dim Str As String
Dim ilastindex As Integer
Dim ilastindex1 As Integer
Dim ilastindex2 As Integer
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim z As Integer
Dim PAGE As Integer
Dim lin, incre As Integer
Dim str1, fd, td As String
Dim LN1, LN2
Dim str_flg As String
Dim li As ListItem
Dim sRecSort As String
Dim nod As Integer
Dim Balenos As String
Dim Opt As String

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
If (Opt = "qry" Or Opt = " ") And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
  MaskEdBox1.Text = adoPrimaryRS("bo_Date")

  Set Rs = New Recordset
  Rs.Open "select sum(meters) from IG_PACKDETAILS where bo_no='" & adoPrimaryRS("BO_NO") & "'"
End If
End Sub
Sub Find_Lookup()

End Sub

Public Sub bindcontls()
On Error Resume Next

  'Binding  the text boxes to the data source

   Set MaskEdBox1.DataSource = adoPrimaryRS
End Sub

Private Sub Check1_Click()
If Check1.value Then
    Timer1.Enabled = True
Else
    Timer1.Enabled = False
End If
End Sub

Private Sub Chkconst_Click()
  If Chkconst.value = 1 Then
        For I = 1 To Lv_Sort.ListItems.Count
          Lv_Sort.ListItems.Item(I).Checked = True
        Next I

    Else
        For I = 1 To Lv_Sort.ListItems.Count '- 1
             Lv_Sort.ListItems.Item(I).Checked = False
        Next I
    End If
    Call Lv_Sort_Click
End Sub
Private Sub ChkGrade()
     For I = 1 To LV_Grade.ListItems.Count '- 1
             LV_Grade.ListItems.Item(I).Checked = False
    Next I
    Chkconst.value = False
End Sub
Private Sub ChkPack()
     For I = 1 To LV_Pack.ListItems.Count '- 1
             LV_Pack.ListItems.Item(I).Checked = False
    Next I
    Chkconst.value = False
End Sub


Private Sub CmdCrystal_Click()
        Balenos = "0"
        pcode = "' '"
        docnos = 0
        DOCDT = ""
        i1 = 1
         For I = 1 To Lv_Const.ListItems.Count
         If Lv_Const.ListItems.Item(I).Checked Then
          '  sortType = Trim(Lv_Const.ListItems(i).SubItems(6))
            docNo = Trim(Lv_Const.ListItems(I).SubItems(1))
             DOCDT = Trim(Lv_Const.ListItems(I).SubItems(2))
             Balenos = Balenos & "," & Trim(Lv_Const.ListItems(I).SubItems(8)) & ""
            pcode = Trim(Lv_Const.ListItems(I).SubItems(3))
          End If
         Next I
         
         
  
         packno = Balenos
         packno = Balenos
'
'        X = grdDataGrid.Columns(8).Text
'        Y = grdDataGrid.Columns(9).Text
         Dim fm1 As New frmBarcode
        ' If Option15.value Then
            
            fm1.PRINTSIZE = "755"
            
            fm1.PRINTSIZE = "50"
           ' End If
            fm1.Show
       '  For i1 = X To Y
         
            
      

            fm1.barcodeDocno = CStr(Trim(docNo))
            fm1.barcodeProduct = Trim(pcode)
            fm1.barcodeDocdt = DOCDT
'            X = grddatagrid.Columns(8).Text
'            Y = grddatagrid.Columns(9).Text
            fm1.barcodePackno = Balenos
             BarcodeText = CStr(Trim(pcode)) + "," + CStr(Balenos) + "," + CStr(Trim(docNo))

            fm1.txtBarcode.Text = BarcodeText
            Exit Sub
'          fm1.barCodePrint
           ' fm1.Hide
        ' Next
         
        ' BarcodeText = CStr(Trim(TXTFIELDS(2).Text)) + "--" + CStr(packno)
         fm1.Show
         
         
         
         
         
    

'On Error Resume Next
'        dt = Format(DTPicker1.value, "yyyy-mm-dd")
'
'
'        Dim CryStkSta As clsCrystal
'        Set CryStkSta = New clsCrystal
'
'
'
'        Set CryStkSta.cryRept = Cry_packingadvisenew 'Cry_PackingAdviceReport 'Cry_stockpackingAdvise
'
'        CryStkSta.CrystalPrint
'        CrystalReport2.Reset
'        CrystalReport2.Connect = connectstring
'        CrystalReport2.ReportFileName = KALFOLDERDATA & "RepWvgPrdn.rpt"
'        CrystalReport2.ParameterFields(0) = "@divcode;" & DivCode
'
'        CrystalReport2.ParameterFields(1) = "@date;" & Format(dt, "YYYY-MM-DD")
'
'
'        ''CrystalReport1.ParameterFields(3) = "@shtype;" & Trim(Mid(Combo1.Text, InStrRev(Combo1.Text, "-") + 1))
'
'
'        CrystalReport2.WindowShowPrintSetupBtn = True
'        CrystalReport2.WindowShowSearchBtn = True
'        CrystalReport2.WindowState = crptMaximized
'        SendKeys "{ENTER}"
'        CrystalReport2.action = 1
'        CrystalReport2.PrinterCopies = 1
'        Screen.MousePointer = 0
End Sub

Private Sub callsort()
On Error Resume Next
    b1 = Mid(DataCombo1.Text, InStr(DataCombo1.Text, "--") + 2, (Len(DataCombo1.Text) - InStr(DataCombo1.Text, "--")))
    b2 = Mid(DataCombo2.Text, InStr(DataCombo2.Text, "--") + 2, (Len(DataCombo2.Text) - InStr(DataCombo2.Text, "--")))
    fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
    tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))



    Set rsGrp = New Recordset
    '06-05-15
    'rsgrp.Open "select s.sortno,s.aliasSortname from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and isnull(invoiced,'N')='N' AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & td & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.sortno ", db, adOpenStatic, adLockBatchOptimistic
    rsGrp.Open "select s.sortno,s.aliasSortname from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='" & Divcode & "' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & b2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.sortno ", DB, adOpenStatic, adLockBatchOptimistic



    Set temprs = New Recordset
   ' temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_CONTHD a,fa_slmas b,WVG_GRPCONTHD C  where a.cust_code=b.slcode and a.divcode=c.divcode and a.GRPCONT_NO=c.cont_no and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'" & _
                        " union all select distinct a.custcode  as code,b.slname  as description from ex_salescontracthd a,fa_slmas b where a.custcode=b.slcode and a.DIVCODE='" & divcode & "' and a.contractdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockReadOnly
    temprs.Open "select s.aliasSortname  ALSortName from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where SaleOrder_no= '" & DataCombo5.Text & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='11' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & b2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname", DB, adOpenStatic, adLockBatchOptimistic
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly

    Lv_Const.ListItems.Clear
    Dim li As ListItem
    If Not temprs.EOF Then
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
             Set lj1 = Lv_Const.ListItems.ADD(, , Mid(temprs!ALSortName, 1, 150))
            Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!ALSortName
            temprs.MoveNext
        Loop
    End If
    End If
    temprs.Close


End Sub
'
'Private Sub DataCombo3_Change()
'callsort
'End Sub
'
'
'
'Private Sub DataCombo4_Change()
'Call callsort
'End Sub
'
'Private Sub DataCombo5_Change()
'Call callsort
'End Sub

Private Sub Command1_Click()
Dim itmFound  As ListItem

'This will perform a find on the ListItem object's Text property.
'It will search for partial text only
Set itmFound1 = Lv_SaleOrder.FindItem(UCase(txt_search.Text), lvwText, , lvwPartial)
If itmFound1 Is Nothing Then ' If no match, inform user and exit.
    MsgBox "No match found"
    Exit Sub
Else
    itmFound1.EnsureVisible ' Scroll ListView to show found ListItem.
    itmFound1.Selected = True ' Select the ListItem.
    'Set focus back to listview control to see selected item
    Lv_SaleOrder.SetFocus
End If
End Sub

Private Sub Command3_Click()

If UCase(Text1.Text) = UCase("admin@123") Then
FraFabstk.Visible = True
Frame1.Visible = False
FraPrint.Visible = True
End If

End Sub

Private Sub DTPicker1_CloseUp()
          Lv_SaleOrder.ListItems.Clear
           Dim itmx As ListItem
       Set temprs = New Recordset
           temprs.Open "select  a.DOC_NO ,a.DATE,b.PRODUCT_CODE,b.DESCRIPTION Pdesc from ig_rpackhd a inner join ig_rproduct b on a.PRODUCT_CODE=b.PRODUCT_CODE  where a.DATE between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'", DB, adOpenStatic

            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
                    Set itmX1 = Lv_SaleOrder.ListItems.ADD(, , Mid(Trim(temprs!doc_no), 1, 50))

                    itmX1.SubItems(1) = Format(temprs!Date, "dd/mm/yyyy")
                 '    Format(temprs!Date, "dd/mm/yyyy")'
                    itmX1.SubItems(2) = temprs!Product_code
                    itmX1.SubItems(3) = temprs!Pdesc
                   itmX1.SubItems(4) = temprs!doc_no
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
    
    Lv_Const.ListItems.Clear
End Sub

Private Sub DTPicker1_DblClick()
On Error Resume Next
          Lv_SaleOrder.ListItems.Clear
           Dim itmx As ListItem
       Set temprs = New Recordset
           temprs.Open "select  a.DOC_NO ,a.DATE,b.PRODUCT_CODE,b.DESCRIPTION Pdesc from ig_rpackhd a inner join ig_rproduct b on a.PRODUCT_CODE=b.PRODUCT_CODE  where a.DATE between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'", DB, adOpenStatic

            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
                    Set itmX1 = Lv_SaleOrder.ListItems.ADD(, , Mid(Trim(temprs!Description), 1, 50))

                    itmX1.SubItems(1) = temprs!doc_no
                    itmX1.SubItems(2) = Format(temprs!Date, "dd/mm/yyyy")
                    itmX1.SubItems(3) = temprs!Product_code
                    itmX1.SubItems(4) = temprs!Pdesc
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
    
    Lv_Const.ListItems.Clear
End Sub

Private Sub DTPicker2_CloseUp()
          Lv_SaleOrder.ListItems.Clear
           Dim itmx As ListItem
       Set temprs = New Recordset
           temprs.Open "select  a.DOC_NO ,a.DATE,b.PRODUCT_CODE,b.DESCRIPTION Pdesc from ig_packhd a inner join ig_product b on a.PRODUCT_CODE=b.PRODUCT_CODE  where a.DATE between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'", DB, adOpenStatic

            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
                    Set itmX1 = Lv_SaleOrder.ListItems.ADD(, , Mid(Trim(temprs!doc_no), 1, 50))

                    itmX1.SubItems(1) = Format(temprs!Date, "dd/mm/yyyy")
                 '    Format(temprs!Date, "dd/mm/yyyy")'
                    itmX1.SubItems(2) = temprs!Product_code
                    itmX1.SubItems(3) = temprs!Pdesc
                   itmX1.SubItems(4) = temprs!doc_no
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
    
    Lv_Const.ListItems.Clear
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    LblFabStkHd.Caption = "Lot Bale List"
    Me.Caption = LblFabStkHd.Caption
    DTPicker1.value = yfdate
           ' DTPicker2.VALUE = pdate
    FraFabstk.Visible = False

    ilastindex = 1
    ilastindex1 = 1
    ilastindex2 = 1
    Balenos = "0"

    On Error Resume Next

    ' Fire Rx Event Every Two Bytes
   ' MSComm1.RThreshold = 2

    ' When Inputting Data, Input 2 Bytes at a time
   ' MSComm1.InputLen = 2

    ' 2400 Baud, No Parity, 8 Data Bits, 1 Stop Bit
   ' MSComm1.Settings = "2400,N,8,1"

    ' Make sure DTR line is low to prevent Stamp reset
   ' MSComm1.DTREnable = False
'       Set Rs = New Recordset
'    Rs.Open "select isnull(ComPort,1) ComPort from wvg_sparam where divcode='" & divcode & "'  ", db, adOpenStatic, adLockReadOnly
'
'
'    ' Open COM1
'    MSComm1.CommPort = Val(Rs(0))
'    MSComm1.PortOpen = True


    DTPicker1.value = pdate

'    Set Rs = New Recordset
'    Rs.Open "select Aliassortname + '--' + Sortno as sort  from Ig_Product order by sortno ", db, adOpenStatic, adLockReadOnly
'
'    Set DataCombo1.RowSource = Rs
'    DataCombo1.ListField = "sort"
'    DataCombo1.Text = Rs(0)
'
'    Rs.MoveLast
'    Set DataCombo2.RowSource = Rs
'    DataCombo2.ListField = "sort"
'    DataCombo2.Text = Rs(0)
'
'    Set rs1 = New Recordset
'    rs1.Open "select godown_name + '--' + godown_code as godown  from wvg_godown order by godown_code ", db, adOpenStatic, adLockReadOnly
'    rs1.MoveFirst
'    Set DataCombo3.RowSource = rs1
'    DataCombo3.ListField = "godown"
'    DataCombo3.Text = rs1(0)
'
'    rs1.MoveLast
'    Set DataCombo4.RowSource = rs1
'    DataCombo4.ListField = "godown"
'    DataCombo4.Text = rs1(0)
    
    DTPicker1.value = mfdate
    DTPicker2.value = mfdate
    
    
    
          Lv_SaleOrder.ListItems.Clear
           Dim itmx As ListItem
       Set temprs = New Recordset
'           temprs.Open "select  a.DOC_NO ,a.DATE,b.PRODUCT_CODE,b.DESCRIPTION Pdesc from ig_packhd a inner join ig_product b on a.PRODUCT_CODE=b.PRODUCT_CODE  where a.DATE between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'", db, adOpenStatic
            temprs.Open "select a.lotno ,a.lotdt,a.varcode,b.varname,lotyear from rm_lot a inner join rm_var b on a.varcode=b.varcode where divcode='" & Divcode & "' and lotyear=" & Year(yfdate) & " and bales-issbal>0 ", DB, adOpenStatic

            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
                          Set itmX1 = Lv_SaleOrder.ListItems.ADD(, , Mid(Trim(temprs!lotno), 1, 50))

                    'itmX1.SubItems(1) = Format(temprs!Date, "dd/mm/yyyy")
                 '    Format(temprs!Date, "dd/mm/yyyy")'
                    itmX1.SubItems(1) = Format(temprs!LOTDT, "dd/mm/yyyy")
                    itmX1.SubItems(2) = temprs!Varcode
                    itmX1.SubItems(3) = temprs!VarName
                    itmX1.SubItems(4) = temprs!lotyear
                    itmX1.SubItems(5) = temprs!lotno
                  
                  ' itmX1.SubItems(4) = temprs!doc_no
                    temprs.MoveNext
                 
                Loop
            End If
            temprs.Close
    
    Lv_Const.ListItems.Clear
'
'    b1 = Mid(DataCombo1.Text, InStr(DataCombo1.Text, "--") + 2, (Len(DataCombo1.Text) - InStr(DataCombo1.Text, "--")))
'    B2 = Mid(DataCombo2.Text, InStr(DataCombo2.Text, "--") + 2, (Len(DataCombo2.Text) - InStr(DataCombo2.Text, "--")))
'    fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
'    tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

'
'    Set temprs = New Recordset
'
'    temprs.Open "select isnull(Bhd.Saleorder_no,'') Saleorder_no,Bhd.contype from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='" & divcode & "' and docdt>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & Fgod & "' and  '" & TGod & "' group by Saleorder_no,Bhd.contype", db, adOpenStatic, adLockBatchOptimistic
'
'    Set DataCombo5.RowSource = temprs
'    DataCombo5.ListField = "Saleorder_no"
'    DataCombo5.Text = temprs(0)
'

    Set rsGrp = New Recordset
    '06-05-15
    'rsgrp.Open "select s.sortno,s.aliasSortname from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and isnull(invoiced,'N')='N' AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & td & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.sortno ", db, adOpenStatic, adLockBatchOptimistic
'    rsgrp.Open "select s.sortno,s.aliasSortname from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='" & divcode & "' and docdt>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & Fgod & "' and  '" & TGod & "' group by s.aliasSortname,s.sortno ", db, adOpenStatic, adLockBatchOptimistic
'
'    Set temprs = New Recordset
'
'    temprs.Open "select bhd.Saleorder_no Saleorder,fa.slname,dt.DATE CONTRACTDATE from wvg_balehd Bhd,Ig_Product s,wvg_grpcontHD  dt,fa_slmas fa where  fa.slcode=dt.CUST_CODE and  dt.CONT_NO = bhd.Saleorder_no and  Bhd.SortNo=s.sortno " & _
'                " and (despatch_REFNo is null or despatch_REFNo in   (select isnull(BO_NO,'')bo_No   from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'))  and bhd.godowncode between '01' and  '05' " & _
'                " group by fa.slname , bhd.Saleorder_no,dt.DATE  " & _
'                " union all select bhd.Saleorder_no,fa.slname,dt.CONTRACTDATE CONTRACTDATE from wvg_balehd Bhd,Ig_Product s, EX_SALESCONTRACThd   dt,fa_slmas fa where  fa.slcode=dt.CUSTCODE  and  dt.CONTRACTNO = bhd.Saleorder_no and  Bhd.SortNo=s.sortno " & _
'                " and (despatch_REFNo is null or despatch_REFNo in   (select isnull(BO_NO,'')bo_No   from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'))  and bhd.godowncode between '01' and  '05' " & _
'                " group by fa.slname , bhd.Saleorder_no ,dt.CONTRACTDATE ", DB, adOpenStatic, adLockBatchOptimistic
'


Exit Sub
        Dim flgs As String
        Set Rs = New Recordset

        Rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
        If Not Rs.EOF Then
                flgs = Rs(0)
        End If
         Set temprs = New Recordset
        If flgs <> "Y" Then
                 temprs.Open " select slname as description,Saleorder code, CONTRACTDATE from ( select a.cont_no Saleorder,   fa.slname  ,a.DATE CONTRACTDATE  from WVG_GRPCONTDT b " & _
            " inner join dbo.WVG_GRPCONTHD a ON a.CONT_NO = b.CONT_NO AND a.CONT_TYPE = b.CONT_TYPE " & _
            " inner join fa_slmas fa on fa.slcode =a.CUST_CODE " & _
            " where  (a.DIVCODE = '11') AND (a.CANCELLED = 'N') AND (ISNULL(b.CANFLG, 'N') <> 'Y') and  (ISNULL(b.METERS, 0) - ISNULL(b.Des_OrdMeters, 0)- ISNULL(b.QTY_CANCEL, 0) > 0) " & _
            " AND (ISNULL(a.proj_flg, 'N') = 'Y') AND (ISNULL(a.processflg, 'N') = 'N') " & _
            " Union All " & _
            " select a.CONTRACTNO  Saleorder,  fa.slname   ,a.CONTRACTDATE   from EX_SALESCONTRACTdt  b" & _
            " inner join dbo.EX_SALESCONTRACThd a ON a.CONTRACTNO = b.CONTRACTNO AND a.inv_type  = b.inv_type " & _
            " inner join fa_slmas fa on fa.slcode =a.CUSTCODE " & _
            " where  a.CONTRACTDATE between '2016-01-01' and '" & Format(yldate, "yyyy-mm-dd") & "' ) x group by Saleorder,slname , CONTRACTDATE order by slname  ", DB, adOpenStatic, adLockBatchOptimistic
         Else
            temprs.Open " select  slname as description,isnull(Saleorder,0) code, CONTRACTDATE from ( select a.cont_no Saleorder,   isnull(ProdAlias,'') slname  ,a.DATE CONTRACTDATE,a.DATE CONTRACTDATE ,a1.cont_no,a1.date ddate  from WVG_GRPCONTDT b " & _
            " inner join dbo.WVG_GRPCONTHD a ON a.CONT_NO = b.CONT_NO AND a.CONT_TYPE = b.CONT_TYPE " & _
            " inner join fa_slmas fa on fa.slcode =a.CUST_CODE " & _
            " where  (a.DIVCODE = '11') AND (a.CANCELLED = 'N') AND (ISNULL(b.CANFLG, 'N') <> 'Y') and  (ISNULL(b.METERS, 0) - ISNULL(b.Des_OrdMeters, 0)- ISNULL(b.QTY_CANCEL, 0) > 0) " & _
            " AND (ISNULL(a.proj_flg, 'N') = 'Y') AND (ISNULL(a.processflg, 'N') = 'N') " & _
            " Union All " & _
            " select a.CONTRACTNO  Saleorder,  isnull(ProdAlias,'') slname   ,a.CONTRACTDATE   from EX_SALESCONTRACTdt  b" & _
            " inner join dbo.EX_SALESCONTRACThd a ON a.CONTRACTNO = b.CONTRACTNO AND a.inv_type  = b.inv_type " & _
            " inner join fa_slmas fa on fa.slcode =a.CUSTCODE " & _
            " where  a.CONTRACTDATE between '2016-01-01' and '" & Format(yldate, "yyyy-mm-dd") & "' ) x group by Saleorder,slname , CONTRACTDATE order by slname  ", DB, adOpenStatic, adLockBatchOptimistic
'
         End If


          Lv_SaleOrder.ListItems.Clear
         '  Dim itmx As ListItem




            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
                    Set itmX1 = Lv_SaleOrder.ListItems.ADD(, , Mid(Trim(temprs!Description), 1, 50))

                    itmX1.SubItems(1) = temprs!Code
                    itmX1.SubItems(2) = temprs!contractdate
                    temprs.MoveNext
                Loop
            End If
            temprs.Close


   ''080916

'     lv_so.ListItems.clear
'    Dim li As ListItem
'    i = 0
'    If temprs.RecordCount > 0 Then
'        Do While Not temprs.EOF
'           ' Set li = Lv_Const.ListItems.Add(, , temprs!description)
'           ss = temprs!description + temprs!Code
'            Set lii = lv_so.ListItems.Add(, ss, Mid(temprs!description, 1, 5))
'            lv_so.ListItems(lv_so.ListItems.Count).ListSubItems.Add , , temprs!CONTRACTDATE
'            temprs.MoveNext
'            i = i + 1
'        Loop
'    End If
'    temprs.Close




'
'    Set temprs = New Recordset
'    temprs.Open "select Grade,GradeName from wvg_grade", db, adOpenStatic, adLockBatchOptimistic
'    LV_Grade.ListItems.clear
'    Dim li11 As ListItem
'    If temprs.RecordCount > 0 Then
'        Do While Not temprs.EOF
'            'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
'             Set lj11 = LV_Grade.ListItems.Add(, , Mid(temprs!gradename, 1, 150))
'            LV_Grade.ListItems(LV_Grade.ListItems.Count).ListSubItems.Add , , temprs!Grade
'            temprs.MoveNext
'        Loop
'    End If
'    temprs.Close
'
'
'
'    Set temprs = New Recordset
'    temprs.Open "select PACK_TYPE,DESCRIPTION from IG_PACKTYPE order by pack_type    ", db, adOpenStatic, adLockBatchOptimistic 'where PACK_TYPE in (1,3,5,7)
'    LV_Pack.ListItems.clear
'
'    If temprs.RecordCount > 0 Then
'        Do While Not temprs.EOF
'            'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
'             Set lj1 = LV_Pack.ListItems.Add(, , Mid(temprs!description, 1, 150))
'            LV_Pack.ListItems(LV_Pack.ListItems.Count).ListSubItems.Add , , temprs!PACK_TYPE
'            temprs.MoveNext
'        Loop
'    End If
'    temprs.Close
'
'
'
'
'    Set temprs = New Recordset
'   ' temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_CONTHD a,fa_slmas b,WVG_GRPCONTHD C  where a.cust_code=b.slcode and a.divcode=c.divcode and a.GRPCONT_NO=c.cont_no and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'" & _
'                        " union all select distinct a.custcode  as code,b.slname  as description from ex_salescontracthd a,fa_slmas b where a.custcode=b.slcode and a.DIVCODE='" & divcode & "' and a.contractdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockReadOnly
'    temprs.Open "select s.aliasSortname  ALSortName from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where SaleOrder_no= '" & DataCombo5.Text & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PACKDETAILS where divcode='11' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & Fgod & "' and  '" & TGod & "' group by s.aliasSortname", db, adOpenStatic, adLockBatchOptimistic
'            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
'
'    Lv_Const.ListItems.clear
'    Dim li2 As ListItem
'    If temprs.RecordCount > 0 Then
'        Do While Not temprs.EOF
'            'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
'             'Set li2 = Lv_Const.ListItems.Add(, , Mid(temprs!ALSortName, 1, 150))
'            'Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.Add , , temprs!ALSortName
'            temprs.MoveNext
'        Loop
'    End If
'    temprs.Close





End Sub

Private Sub CmdExit_Click()
Unload Me
End Sub




Private Sub txt_search_Change()
Dim itm1 As ListItem
On Error Resume Next
With Lv_SaleOrder
    Set itm = .FindItem(Trim(UCase(txt_search.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        Lv_SaleOrder.ListItems(ilastindex).Bold = False
        Lv_SaleOrder.ListItems(ilastindex).ForeColor = vbBlack

        itm.EnsureVisible
        lastindex = itm.Index
        Lv_SaleOrder.ListItems(lastindex).Selected = True
        ilastindex = lastindex

        Lv_SaleOrder.ListItems(ilastindex).Bold = True
        Lv_SaleOrder.ListItems(ilastindex).ForeColor = vbBlue


        Lv_SaleOrder.SetFocus
        txt_search.SetFocus
    End If
End With
Set itm = Nothing
ilastindex = 1
End Sub




Private Sub Lv_Const_Click()

On Error GoTo err_lvcustclick


Exit Sub
   Lv_Sort.ListItems.Clear
       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear
        DB.Execute "truncate table  TmpPackDetails" & TLocalIPAdd & ""
'        For I = 1 To Lv_Const.ListItems.count
'
'
'        If Lv_Const.ListItems.Item(I).Checked Then
'            sortType = Trim(Lv_Const.ListItems(I).SubItems(7))
'            Set temprs = New Recordset
'          'temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PackingAdvise where divcode='" & DivCode & "' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & DivCode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", db, adOpenStatic, adLockBatchOptimistic
'
'            'db.Execute "insert into TmpPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs) "
'          ' " values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & Val(Rs!Docno) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & T & ")"
'        End If
'        Next I
        
        
        
    txt_mtrs.Text = "0"
    text2.Text = "0"
        Dim i1 As Integer
        i1 = 1
         For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
       
            sortType = Trim(Lv_Const.ListItems(I).SubItems(4))
            
'            Set Rst = New Recordset
'            Rst.Open "select *from  IG_PackingAdvise where bo_no='" & Val(TXTFIELDS(2).Text) & "' and Bo_Date='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' order by spack_no ", db, adOpenStatic
'
'            If Rst.EOF Then
'            Exit Sub
'            End If
            
            
             
             incre = 1
             
             Do While Not rst.EOF

'                Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & ProductCode & "' and lot_code='" & LotCode & "'  AND  a.pack_year='" & packyear & "' and a.pack_no between " & packno & " and " & packno & " and isnull(invoiced,'N')='N' " & _
'                       " order by pack_year,pack_no", db
'               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' and prod_date>= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
            Set Rs = New Recordset
               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & Divcode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' and a.Lot_year='" & rst("Lot_year") & "' and a.pack_year='" & rst("pack_year") & "' and a.Product_code='" & rst("Product_code") & "' and a.lot_code='" & rst("lot_code") & "' and a.pack_no='" & rst("spack_no") & "' " & _
                       " and a.pack_type='" & rst("pack_type") & "' and a.packno_code='" & rst("packno_code") & "' order by pack_year,pack_no", DB

              Do While Not Rs.EOF
                        Set lj1 = Lv_Sort.ListItems.ADD(, , Rs!pack_no)
                        Balenos = Balenos & "," & Rs!pack_no & ""
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Product_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Description
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!lot_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!packno_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_type
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(10)) 'rate

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_wt
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , (Rs!pack_wt + Rs!tare)

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(2)) 'cont no
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(3)) 'cont date
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(1)) ' cont type


                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!GODOWN_CODE
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!GODOWN_CODE
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(11))
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Lot_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_no
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , i1
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(Lv_Const.ListItems(I).SubItems(8)) ' Balance Packs
                        
                        
                        txt_mtrs.Text = val(txt_mtrs.Text) + Rs!pack_wt
                        text2.Text = val(text2.Text) + 1
'                            Balenos = Balenos & "," & Rs!pack_no & ""
                            DB.Execute "insert into TmpPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs, custcode ,contno,contdate, conttype  ,rate  ) " & _
                                    " values('" & Rs!Product_code & "', '" & Rs!Description & "','" & Rs!pack_year & "','" & Rs!packno_code & "','" & Rs!pack_no & "','" & Rs!pack_no & "','" & Rs!pack_type & "', '" & Rs!lot_code & "',0, '" & Rs!GODOWN_CODE & "','" & Rs!Lot_year & "','N'," & incre & " ,'" & Rs!pack_wt & "','" & (Rs!pack_wt + Rs!tare) & "','" & Trim(Lv_Const.ListItems(I).SubItems(11)) & "','" & Trim(Lv_Const.ListItems(I).SubItems(2)) & "','" & Format(Trim(Lv_Const.ListItems(I).SubItems(3)), "yyyy-mm-dd") & "','" & Trim(Lv_Const.ListItems(I).SubItems(1)) & "','" & Trim(Lv_Const.ListItems(I).SubItems(10)) & "')"
                    
              incre = incre + 1
                       ' Lv_Sort.ListItems.Item(Lv_Sort.ListItems.count).Checked = True
                        i1 = i1 + 1
              Rs.MoveNext
              Loop
              
                 rst.MoveNext
              Loop

         
      End If

     Next I
     
'             For I = 1 To Lv_Sort.ListItems.count
'                    Lv_Sort.ListItems.Item(I).Checked = True
'            Next I
'
'            Call Lv_Sort_Click
      '  (product_code varchar(12) ,description varchar(50),pack_year numeric(6),packno_code varchar(4),spack_no numeric(10),epack_no numeric(10),pack_type varchar(5),lot_code varchar(9),packchrg_wt numeric(9,3),Rate numeric(9,2),GODOWN_CODE varchar(3),Lot_year numeric(9),printStatus varchar(2),id int ,nett_kgs numeric(9,3),gross_kgs numeric(9,3))"
 Exit Sub

'       Call ChkPack
'       Call ChkGrade
'
'       Lv_Sort.ListItems.clear
'       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
'       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))
'
'       ' Lv_Const.ListItems.clear
'        db.Execute "truncate table  TmpPackDetails" & TLocalIPAdd & ""
'        For I = 1 To Lv_Const.ListItems.count
'
'
'        If Lv_Const.ListItems.Item(I).Checked Then
'            sortType = Trim(Lv_Const.ListItems(I).SubItems(7))
'            Set temprs = New Recordset
'         ' temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
'
'
'        End If
'        Next I





 Exit Sub

err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub

Private Sub Lv_Grade_Click()

On Error GoTo err_lvcustclick
       Dim gradename As String
      Dim stat As Boolean
      Dim sortin As String
      Dim packin As String
      stat = False
      gradename = ""

         Chkconst.value = False
        For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
            sortType = Trim(Lv_Const.ListItems(I).SubItems(1))
             sortin = sortin + ",'" + Trim(Lv_Const.ListItems(I).SubItems(1)) + "'"
          End If
        Next

        If Len(sortin) <= 1 Then
        MsgBox "select sort name", vbInformation, head
        End If

      packin = ""

       For I = 1 To LV_Pack.ListItems.Count
        If LV_Pack.ListItems.Item(I).Checked Then

             packin = packin + ",'" + Trim(LV_Pack.ListItems(I).SubItems(1)) + "'"
          End If
        Next
        If Len(packin) <= 1 Then
        MsgBox "select Pack Type", vbInformation, head
        Exit Sub
        End If



        For I = 1 To LV_Grade.ListItems.Count
        If LV_Grade.ListItems.Item(I).Checked Then
           gradename = gradename + ",'" + Trim(LV_Grade.ListItems(I).SubItems(1)) + "'"
           stat = True
        End If
        Next

        If Len(gradename) <= 1 Then
        MsgBox "select Grade ", vbInformation, head
        End If
        gradename = Mid$(gradename, 2, Len(gradename))
        packin = Mid$(packin, 2, Len(packin))
        sortin = Mid$(Trim(sortin), 2, Len(Trim(sortin)))
     Lv_Sort.ListItems.Clear
       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear
        DB.Execute "truncate table  TmpPackDetails" & TLocalIPAdd & ""
        If stat Then
'        For i = 1 To Lv_Const.ListItems.Count
'
'        If LV_Grade.ListItems.Item(i).Checked Then
'        sortType = Trim(LV_Grade.ListItems(i).SubItems(1))
        Set temprs = New Recordset
         ' temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
        Set Rs = New Recordset
        Rs.Open "select bhd.docno,p.description pack, bhd.docdt, BHD.BALENO, bhd.Grosswt, bhd.tarewt, bhd.net_wt,s.Sortno,s.Sortname, isnull(sum(Tot_mtrs),0) totmtrs,count(baleno) bales,t.description,wg.GradeName " & _
        " from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t,wvg_grade wg,ig_packtype p " & _
        " where p.pack_type=bhd.pack_type and Bhd.SortNo=s.sortno and wg.grade=bhd.grade  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='11' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' " & _
        " and bhd.pack_type in (" & packin & ") and bhd.grade in (" & gradename & ") and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' and s.Sortname in (" & sortin & ") group by p.description,s.Sortno,s.Sortname,t.description, bhd.docno, bhd.docdt,bhd.baleno,bhd.net_wt,wg.GradeName, bhd.Grosswt, bhd.tarewt order by s.sortno,bhd.baleno", DB, adOpenStatic, adLockBatchOptimistic

'        If rs.RecordCount <= 0 Then
'            MsgBox "No Records Found", vbInformation, head
'            Screen.MousePointer = 0
'           ' Exit Sub
'        End If
        'Print #z, Space(1) + Space(1) + Padr(rs("aliassortname"), 35, " ")
        'lin = lin + 1
        If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        Do While Not Rs.EOF
        '    Set Rsack.Open "select isnull(sum(Tot_mtrs),0) tot_mtrs,count(baleno) bales from wvg_balehd where docdt <='" & td & "' and sortno='" & rs("sortno") & "' and isnull(invoiced,'N')<>'Y' AND ISNULL(REPACKFLG,'N') <> 'Y' AND Divcode='" & divcode & "'", db
            DblTotmtrs = 0
            Dblbales = 0

            DblTotmtrs = val(Rs!totmtrs)
            Dblbales = val(Rs!baleno)

            strpc_length = ""
            Set rsdt = New Recordset

            rsdt.Open "select pc_length from wvg_baledt where docno = " & Rs("docno") & " and docdt = '" & Format(Rs("docdt"), "YYYY/MM/dd") & "' and divcode =  '" & Divcode & "' order by slno", DB
            If rsdt.EOF = False Then
            Dim t As Integer
            t = 1
            Do While Not rsdt.EOF
            If strpc_length = "" Then
             strpc_length = rsdt("pc_length")

            Else
              t = t + 1
            strpc_length = strpc_length & "," & rsdt("pc_length")
            End If


            rsdt.MoveNext
            Loop
             DB.Execute "insert into TmpPackDetails" & TLocalIPAdd & "(sortname,sortno,grade,totalmeters,netwt,baleno,plength,systemid,Grosswt,tarewt,docno,docdt,pack,noofpcs) values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & val(Rs!docNo) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & t & ")"
         End If
         Rs.MoveNext
         Loop

         End If

        End If
       ' Next i

       ' End If
        Set temprs = New Recordset
        temprs.Open "SELECT  *from TmpPackDetails" & TLocalIPAdd & " order by sortno ", DB, adOpenStatic, adLockReadOnly

        Dim ljp3 As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
                    'sql = "insert into tmpsaleodr values('" & temprs!ordNo & "', '" & temprs!ordtype & "', '" & temprs!dispmts & "', '" & temprs!ORDMETER & "')"
                'Set ljp3 = Lv_Sort.ListItems.Add(, , Mid(Trim(temprs!SortName), 1, 150))
                Set lj1 = Lv_Sort.ListItems.ADD(, , Mid(temprs!sortname, 1, 150))
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!sortno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Grade
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!baleno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!totalmeters
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!GrossWt
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!TAREWT
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!netwt

                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Plength
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!id
                temprs.MoveNext
            Loop
        End If
        temprs.Close


 Exit Sub

err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

End Sub

Private Sub LV_Pack_Click()

On Error GoTo err_lvpackclick

 If Opt = "add" Then
       Dim gradename As String
      Dim stat As Boolean
      Dim sortin As String
      Dim packin As String
      Call ChkGrade
      stat = False
      gradename = ""
       Chkconst.value = False
        For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
            sortType = Trim(Lv_Const.ListItems(I).SubItems(1))
             sortin = sortin + ",'" + Trim(Lv_Const.ListItems(I).SubItems(1)) + "'"
          End If
        Next

        If Len(sortin) <= 1 Then
        MsgBox "select Construction", vbInformation, head
        End If

      packin = ""

       For I = 1 To LV_Pack.ListItems.Count
        If LV_Pack.ListItems.Item(I).Checked Then

             packin = packin + ",'" + Trim(LV_Pack.ListItems(I).SubItems(1)) + "'"
          End If
        Next
        If Len(packin) <= 1 Then
        MsgBox "select Pack Type", vbInformation, head
        End If


    gradename = Mid$(gradename, 2, Len(gradename))

        packin = Mid(packin, 2, Len(packin))
        sortin = Mid(sortin, 2, Len(sortin))

       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear
        DB.Execute "truncate table  TmpPackDetails" & TLocalIPAdd & ""
         Lv_Sort.ListItems.Clear
        For I = 1 To LV_Pack.ListItems.Count

        If LV_Pack.ListItems.Item(I).Checked Then
            sortType = Trim(LV_Pack.ListItems(I).SubItems(1))
            Set temprs = New Recordset
         ' temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
        Set Rs = New Recordset
        Rs.Open "select bhd.docno,p.description pack, bhd.docdt, BHD.BALENO, bhd.Grosswt, bhd.tarewt, bhd.net_wt,s.sortname,s.Sortno,s.aliasSortname, isnull(sum(Tot_mtrs),0) totmtrs,count(baleno) bales,t.description,wg.GradeName " & _
        " from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t,wvg_grade wg ,ig_packtype p" & _
        " where Bhd.SortNo=s.sortno and wg.grade=bhd.grade  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from wvg_bohd where divcode='" & Divcode & "' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' " & _
        " and bhd.pack_type=p.pack_type  and bhd.pack_type in (" & packin & ") and  bhd.godowncode between '" & fgod & "' and  '" & tgod & "' and s.Sortname in (" & sortin & ") group by p.description, s.sortname,s.Sortno,s.aliasSortname,t.description, bhd.docno, bhd.docdt,bhd.baleno,bhd.net_wt,wg.GradeName, bhd.Grosswt, bhd.tarewt order by s.sortno,bhd.baleno", DB, adOpenStatic, adLockBatchOptimistic

'        If rs.RecordCount <= 0 Then
'            MsgBox "No Records Found", vbInformation, head
'            Screen.MousePointer = 0
'           ' Exit Sub
'        End If
        'Print #z, Space(1) + Space(1) + Padr(rs("aliassortname"), 35, " ")
        'lin = lin + 1
        If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        Do While Not Rs.EOF
        '    Set Rsack.Open "select isnull(sum(Tot_mtrs),0) tot_mtrs,count(baleno) bales from wvg_balehd where docdt <='" & td & "' and sortno='" & rs("sortno") & "' and isnull(invoiced,'N')<>'Y' AND ISNULL(REPACKFLG,'N') <> 'Y' AND Divcode='" & divcode & "'", db
            DblTotmtrs = 0
            Dblbales = 0

            DblTotmtrs = val(Rs!totmtrs)
            Dblbales = val(Rs!baleno)

            strpc_length = ""
            Set rsdt = New Recordset
             rsdt.Open "select pc_length from wvg_baledt where docno = " & Rs("docno") & " and docdt = '" & Format(Rs("docdt"), "YYYY/MM/dd") & "' and divcode =  '" & Divcode & "' order by slno", DB
            If rsdt.EOF = False Then
            Dim t As Integer
            t = 1
            Do While Not rsdt.EOF
            If strpc_length = "" Then
             strpc_length = rsdt("pc_length")

            Else
              t = t + 1
            strpc_length = strpc_length & "," & rsdt("pc_length")
            End If


            rsdt.MoveNext
            Loop
             DB.Execute "insert into TmpPackDetails" & TLocalIPAdd & "(sortname,sortno,grade,totalmeters,netwt,baleno,plength,systemid,Grosswt,tarewt,docno,docdt,pack,noofpcs) values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & val(Rs!docNo) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & t & ")"
         End If
         Rs.MoveNext
         Loop

         End If

        End If
        Next I


        Set temprs = New Recordset
        temprs.Open "SELECT  *from TmpPackDetails" & TLocalIPAdd & " order by sortno ", DB, adOpenStatic, adLockReadOnly

        Dim ljp3 As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
                    'sql = "insert into tmpsaleodr values('" & temprs!ordNo & "', '" & temprs!ordtype & "', '" & temprs!dispmts & "', '" & temprs!ORDMETER & "')"
                'Set ljp3 = Lv_Sort.ListItems.Add(, , Mid(Trim(temprs!SortName), 1, 150))
                Set lj1 = Lv_Sort.ListItems.ADD(, , Mid(temprs!sortname, 1, 150))
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!sortno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Grade
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!baleno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!totalmeters
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!GrossWt
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!TAREWT
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!netwt

                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Plength
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!id
                temprs.MoveNext
            Loop
        End If
        temprs.Close
 End If

 Exit Sub

err_lvpackclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

End Sub


Private Sub Lv_SaleOrder_Click()
On Error GoTo er_loadabale

Lv_Const.ListItems.Clear

        
        
'
'    txt_mtrs.Text = "0"
'    Text2.Text = "0"
        Dim i1 As Integer
        i1 = 1
         For I = 1 To Lv_SaleOrder.ListItems.Count
        If Lv_SaleOrder.ListItems.Item(I).Checked Then
       
            sortType = Trim(Lv_SaleOrder.ListItems(I).SubItems(1))
            sortType1 = Trim(Lv_SaleOrder.ListItems(I).SubItems(2))
            sortType2 = Trim(Lv_SaleOrder.ListItems(I).SubItems(5))
            sortType3 = Trim(Lv_SaleOrder.ListItems(I).SubItems(4))

             incre = 1
             
             Set Rs = New Recordset
              Rs.Open "select a.Baleno, a.lotno ,a.lotdt,a.varcode,b.varname,a.favaourablewgt,GRWT ,lot_year from rm_bale a inner join rm_var b on a.varcode=b.varcode where divcode='" & Divcode & "' and lot_year=" & val(sortType3) & " and  a.lotno='" & val(sortType2) & "' and a.varcode='" & Trim(sortType1) & "' and lotdt='" & Format(sortType, "yyyy-mm-dd") & "' and isnull(issued,'N')='N'", DB

              Do While Not Rs.EOF
                        Set lj1 = Lv_Const.ListItems.ADD(, , Rs!baleno)
                        Balenos = Balenos & "," & Rs!baleno & ""
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Rs!lotno
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Format(Rs!LOTDT, "dd/mm/yyyy")
                        
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Rs!Varcode
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Rs!VarName
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Rs!GRWT
                        
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Rs!favaourablewgt
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Trim(Rs!Lot_year)

   
                        
                        Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Trim(Rs!baleno)
                       ' Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Trim(Format(Rs("prod_date"), "dd/mm/yyyy"))
                        
                 
              incre = incre + 1
                       ' Lv_Sort.ListItems.Item(Lv_Sort.ListItems.count).Checked = True
                        i1 = i1 + 1
              Rs.MoveNext
              Loop
              
               '  Rst.MoveNext
              

         
      End If

     Next I





Exit Sub
 If Opt = "add" Then
 
 
 
' Lv_Sort.ListItems.clear
'       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
'       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))
'
'       ' Lv_Const.ListItems.clear
'
'               Lv_Const.ListItems.clear
'        For I = 1 To Lv_SaleOrder.ListItems.count
'
'        If Lv_SaleOrder.ListItems.Item(I).Checked Then
'            sortType = Trim(Lv_SaleOrder.ListItems(I).SubItems(1))
'
'            Dim li2 As ListItem
'             Set temprs = New Recordset
'      Dim qry As String
'
'        If TXTFIELDS(0).Text = "KN" Then vt = "IG_FABCONTHD": VT1 = "IG_FABCONTDT" Else vt = "IG_CONTHD": VT1 = "IG_CONTDT"
'        LookUp.clear = True
'
'
'            If UCase(CustId) <> "COTTON" Then
'            qry = " SELECT  b.cont_no,b.Cont_type,b.Date, c.SNO""SNO"",c.PRODUCT_CODE""ProductCode"",d.short_Code""ShortCode"",c.Rate,Description ""Product Name"",isnull(hsn,'') ""HSN Code"",b.ORDREFNO " & _
'                    " from " & vt & " b," & VT1 & " c,ig_product d,IG_Bodt e  " & _
'                    " where b.Cont_no*=e.Cont_no and b.Cont_Type*=e.Cont_Type and b.Divcode *=e.Divcode and c.product_code*=e.product_code  and c.product_code=d.product_code and kgs-isnull(qty_delivered,0)>0 " & _
'                    " and  isnull(d.actflg,0)=1 and b.divcode=c.divcode and b.divcode=D.divcode and b.cont_no=c.cont_no and b.cont_type=c.cont_type AND B.DIVCODE='" & DivCode & "' " & _
'                    " AND b.CUST_CODE='" & sortType & "' and b.cont_type='" & Trim(TXTFIELDS(0).Text) & "' " & _
'                    " Group by b.cont_no,b.Cont_type,b.Date, " & _
'                    " hsn,c.SNO,c.PRODUCT_CODE,d.short_Code,c.Rate ,Kgs-isnull(Qty_delivered,0),D.Description,b.cont_no,b.Date ,c.Product_Code,c.Kgs,c.Packs,c.Cancel_Packs,c.Cancel_Kgs,b.ORDREFNO  " & _
'                    " Having IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) > 0 " & _
'                    " and ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) > 0 "
'            Else
'                  qry = " SELECT b.cont_no,b.Cont_type,b.Date, c.SNO""SNO"",c.PRODUCT_CODE""ProductCode"",d.short_Code""ShortCode"",c.Rate,Description ""Product Name"",isnull(hsn,'') ""HSN Code"",b.ORDREFNO  " & _
'                    " from " & vt & " b," & VT1 & " c,ig_product d,IG_Bodt e  " & _
'                    " where b.Cont_no*=e.Cont_no and b.Cont_Type*=e.Cont_Type and b.Divcode *=e.Divcode and c.product_code*=e.product_code  and c.product_code=d.product_code and kgs-isnull(qty_delivered,0)>0 " & _
'                    " and b.divcode=c.divcode and b.divcode=D.divcode and b.cont_no=c.cont_no and b.cont_type=c.cont_type AND B.DIVCODE='" & DivCode & "' " & _
'                    " AND b.CUST_CODE='" & sortType & "' and b.cont_type='" & Trim(TXTFIELDS(0).Text) & "'" & _
'                    " Group by b.cont_no,b.Cont_type,b.Date, " & _
'                    " hsn,c.SNO,c.PRODUCT_CODE,d.short_Code,c.Rate ,Kgs-isnull(Qty_delivered,0),D.Description,b.cont_no,b.Date ,c.Product_Code,c.Kgs,c.Packs,c.Cancel_Packs,c.Cancel_Kgs,b.ORDREFNO  " & _
'                    " Having IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) > 0 " & _
'                    " and ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) > 0 "
'
'            End If
'            temprs.Open qry, db, adOpenStatic, adLockBatchOptimistic
'            'temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SaleOrder_no='" & sortType & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from IG_PACKDETAILS where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'  and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
'                     Set lj1 = Lv_Const.ListItems.add(, , Mid(temprs!ShortCode, 1, 150))
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ProductCode
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Rate
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Sno
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!cont_no
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Date
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Cont_type
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ShortCode
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ORDREFNO
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , Trim(CStr(sortType))
'
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
'
'         End If
'         Next
'
'    Call ChkGrade


'On Error GoTo err_lvcustclick

'       Call ChkPack
'       Call ChkGrade
        Lv_Sort.ListItems.Clear
       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear

        
    
    For I = 1 To Lv_Const.ListItems.Count
          Lv_Const.ListItems.Item(I).Checked = True
    Next I
    
Call Lv_Const_Click
 End If
    Exit Sub
er_loadabale:
     MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub

Private Sub Lv_Sort_Click()
On Error GoTo er_loadabale
        'Lv_Sort.ListItems.clear

 If Opt = "add" Then
        Dim sid As String
        For I = 1 To Lv_Sort.ListItems.Count

        If Lv_Sort.ListItems.Item(I).Checked Then
            sid = Trim(Lv_Sort.ListItems(I).SubItems(18))
            'Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,IG_PACKDETAILS bo ,IG_PACKDETAILS HD ,wvg_costsheet sh Where HD.divcode = BO.divcode AND dt.CUST_CODE =hd.CUST_CODE And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and hd.cust_code='" & sWevType & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly

            'Dim ljp3 As ListItem
           ' If temprs.RecordCount > 0 Then
              '  Do While Not temprs.EOF
'                    Sql = "update TmpPackDetails" & TLocalIPAdd & " set printStatus='Y' where id='" & sid & "' "
'                    db.Execute Sql
                   ' Set ljp3 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordNo
                   ' temprs.MoveNext
                'Loop
            'End If
            'temprs.Close
        Else
'         sid = Trim(Lv_Sort.ListItems(I).SubItems(18))
'         Sql = "update TmpPackDetails" & TLocalIPAdd & " set printStatus='N' where id='" & sid & "' "
'                    db.Execute Sql
        End If
        Next I
'

        Set temprs = New Recordset
        temprs.Open "SELECT sum(nett_kgs) nett_kgs,count(nett_kgs) cnt from  TmpPackDetails" & TLocalIPAdd & " where isnull(printStatus,'N')='Y'  ", DB, adOpenStatic, adLockReadOnly
        If IsNull(temprs(0)) = False Then
        txt_mtrs.Text = temprs(0)
          text2.Text = temprs(1)
        Else
        txt_mtrs.Text = "0"
        End If
 End If
Exit Sub
er_loadabale:
     MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub

Private Sub Timer1_Timer()
'    If MSComm1.PortOpen = False Then ' If comm port is not open
'       MSComm1.PortOpen = True ' Open it
'    End If
'
'    If MSComm1.InBufferCount > 0 Then ' If theres data in comm buffer
'        inst = inst + MSComm1.Input ' Get the data
'        Text1 = inst ' Show its value
'    End If

Dim sData As String
Dim lHighByte As Long
Dim lLowByte As Long
Dim lByte As Long
On Error Resume Next
' If Rx Event then get data and process
If MSComm1.CommEvent = comEvReceive Then
    sData = MSComm1.Input ' Get data
    lHighByte = Asc(Mid$(sData, 1, 1)) ' get 1st byte
    lLowByte = Asc(Mid$(sData, 2, 1))  ' Get 2nd byte
    lByte = JoinHighLow(lHighByte, lLowByte)

    strnumber = CStr(lByte)
 End If
 Dim LotCode, ProductCode, packyear, Packdocno, packno As String
   'Text1.Text = strnumber
If Opt = "add" Then
    If Trim(Text1.Text) <> "" Then
        For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
         Dim inc As Integer
         Set rst = New Recordset
         rst.Open "select items from dbo.split('" & Text1.Text & "',',')", DB
         inc = 1
         Do While Not rst.EOF
            If inc = 1 Then
               ProductCode = rst(0)
            ElseIf inc = 2 Then
               packno = rst(0)
            ElseIf inc = 3 Then
               Packdocno = rst(0)
            End If
         inc = inc + 1
         rst.MoveNext
         Loop

inc = 1

        If Trim(Lv_Const.ListItems(I).SubItems(4)) = ProductCode Then
            sortType = Trim(Lv_Const.ListItems(I).SubItems(4))
             Set Rs = New Recordset

'                Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & ProductCode & "' and lot_code='" & LotCode & "'  AND  a.pack_year='" & packyear & "' and a.pack_no between " & packno & " and " & packno & " and isnull(invoiced,'N')='N' " & _
'                       " order by pack_year,pack_no", db
               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & Divcode & "' and a.product_code='" & sortType & "'  and a.product_code='" & ProductCode & "'  and a.pack_no between " & val(packno) & " and " & val(packno) & " and isnull(invoiced,'N')='N' and  isnull(bo_no,'0')='0'   " & _
                       " order by pack_year,pack_no", DB

              If Rs.RecordCount > 0 Then
              
              
            Set rst = New Recordset
            rst.Open "select * from TmpPackDetails" & TLocalIPAdd & " a where  a.product_code='" & ProductCode & "'  and a.spack_no between " & val(packno) & " and " & val(packno) & " and a.pack_year='" & Rs("pack_year") & "' and a.Product_code='" & Rs("Product_code") & "' and a.lot_code='" & Rs("lot_code") & "'  and a.pack_type='" & Rs("pack_type") & "' and a.packno_code='" & Rs("packno_code") & "'", DB, adOpenStatic
              
              If Not rst.EOF Then
              
              sql = "update TmpPackDetails" & TLocalIPAdd & " set printStatus='Y' where id='" & rst("id") & "' "
              End If
             DB.Execute sql
              
             Balenos = Balenos & "," & Rs!pack_no & ""
'                db.Execute "insert into TmpPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs, custcode ,contno,contdate, conttype  ,rate  ) " & _
'                                    " values('" & Rs!Product_code & "', '" & Rs!Description & "','" & Rs!pack_year & "','" & Rs!packno_code & "','" & Rs!pack_no & "','" & Rs!pack_no & "','" & Rs!pack_type & "', '" & Rs!lot_code & "',0, '" & Rs!GODOWN_CODE & "','" & Rs!Lot_year & "','N'," & incre & " ,'" & Rs!pack_wt & "','" & (Rs!pack_wt + Rs!TARE) & "','" & Trim(Lv_Const.ListItems(I).SubItems(9)) & "','" & Trim(Lv_Const.ListItems(I).SubItems(4)) & "','" & Format(Trim(Lv_Const.ListItems(I).SubItems(5)), "yyyy-mm-dd") & "','" & Trim(Lv_Const.ListItems(I).SubItems(6)) & "','" & Trim(Lv_Const.ListItems(I).SubItems(2)) & "')"
'
'              incre = incre + 1
               ' db.Execute "CREATE TABLE TmpPackDetails" & TLocalIPAdd & " (product_code varchar(12) ,description varchar(50),pack_year numeric(6),packno_code varchar(4),spack_no numeric(10),epack_no numeric(10),pack_type varchar(5),lot_code varchar(9),packchrg_wt numeric(9,3),Rate numeric(9,2),GODOWN_CODE varchar(3),Lot_year numeric(9),printStatus varchar(2),id int ,nett_kgs numeric(9,3),gross_kgs numeric(9,3))"

              '  db.Execute " insert into TmpPackDetails" & TLocalIPAdd & " (product_code  ,description ,pack_year ,packno_code ,spack_no ,epack_no ,pack_type ,lot_code ,packchrg_wt ,Rate ,GODOWN_CODE ,Lot_year ,printStatus ,id  ,nett_kgs ,gross_kgs )"
'                        Set lj1 = Lv_Sort.ListItems.add(, , Rs!pack_no)
'
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!Product_code
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!Description
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!pack_year
'
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!packno_code
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!pack_type
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!lot_code
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Trim(Lv_Const.ListItems(I).SubItems(2))
'
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!pack_wt
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , (Rs!pack_wt + Rs!TARE)
'
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Trim(Lv_Const.ListItems(I).SubItems(4))
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Trim(Lv_Const.ListItems(I).SubItems(5))
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Trim(Lv_Const.ListItems(I).SubItems(6))
'
'
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!GODOWN_CODE
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!GODOWN_CODE
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Trim(Lv_Const.ListItems(I).SubItems(9))
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!Lot_year
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , Rs!pack_no
'                        Lv_Sort.ListItems(Lv_Sort.ListItems.count).ListSubItems.add , , I
'                        Lv_Sort.ListItems.Item(Lv_Sort.ListItems.count).Checked = True
'
'
                        
              End If

          End If
      End If

     Next I

      

        
        Lv_Sort.ListItems.Clear
      Set Rs = New Recordset
      
      Rs.Open "select *from TmpPackDetails" & TLocalIPAdd & " order by id desc", DB
       If Not Rs.EOF Then
       Rs.MoveFirst
       End If
       inc = 1
      Do While Not Rs.EOF
    '  Product_code , Description, pack_year, packno_code, spack_no, epack_no, pack_type, lot_code, packchrg_wt, GODOWN_CODE, Lot_year, printStatus, Id, nett_kgs, gross_kgs
      ''--------------
                        
                             Set lj1 = Lv_Sort.ListItems.ADD(, , Rs!SPack_No)
                        Balenos = Balenos & "," & Rs!SPack_No & ""
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Product_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Description
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!lot_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!packno_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_type
                    
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!rate

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!nett_kgs
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , (Rs!gross_kgs)

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!ContNo
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!ContDate
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!ContType


                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!GODOWN_CODE
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!GODOWN_CODE
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!CustCode
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Lot_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!SPack_No
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , inc
                        If Rs!printStatus = "Y" Then
                         Lv_Sort.ListItems.Item(Lv_Sort.ListItems.Count).Checked = True
                        End If
                        
               inc = inc + 1
            Rs.MoveNext
        Loop
      '''
      
     txt_mtrs.Text = ""
     text2.Text = 0
     Dim inc1 As Integer
     inc1 = 0
        For I = 1 To Lv_Sort.ListItems.Count
        If Lv_Sort.ListItems.Item(I).Checked Then
        txt_mtrs.Text = val(txt_mtrs.Text) + val(Trim(Lv_Sort.ListItems(I).SubItems(8)))
        inc1 = inc1 + 1
        End If
        Next I
        text2.Text = CStr(inc1)
        txt_mtrs.Text = Format(txt_mtrs.Text, "#0.000")
        
    End If
 End If

Text1.Text = ""
Text1.SetFocus
       Exit Sub

'End If

End Sub
Private Function JoinHighLow(lHigh As Long, lLow As Long) As Long
JoinHighLow = (lHigh * &H100) Or lLow
End Function

