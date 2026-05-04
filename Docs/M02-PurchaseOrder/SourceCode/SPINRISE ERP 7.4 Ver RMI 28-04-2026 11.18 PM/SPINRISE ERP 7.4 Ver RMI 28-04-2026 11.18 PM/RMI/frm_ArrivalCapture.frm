VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frm_ArrivalCapture 
   Caption         =   "Pre Packing Details"
   ClientHeight    =   8595
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14505
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   9
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   14505
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
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
      TabIndex        =   24
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":0000
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
         Left            =   3240
         Picture         =   "frm_ArrivalCapture.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":07DF
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
         Picture         =   "frm_ArrivalCapture.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   32
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":0E7C
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
         Picture         =   "frm_ArrivalCapture.frx":1186
         Style           =   1  'Graphical
         TabIndex        =   31
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":1522
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
         Left            =   1650
         Picture         =   "frm_ArrivalCapture.frx":182C
         Style           =   1  'Graphical
         TabIndex        =   30
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":1BCE
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
         Left            =   2175
         Picture         =   "frm_ArrivalCapture.frx":1ED8
         Style           =   1  'Graphical
         TabIndex        =   29
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_ArrivalCapture.frx":2254
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
         Left            =   1120
         Picture         =   "frm_ArrivalCapture.frx":255E
         Style           =   1  'Graphical
         TabIndex        =   28
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
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
         Index           =   12
         Left            =   5820
         Picture         =   "frm_ArrivalCapture.frx":28F3
         Style           =   1  'Graphical
         TabIndex        =   27
         ToolTipText     =   "Exit"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CRY 
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
         Left            =   2730
         Picture         =   "frm_ArrivalCapture.frx":2D35
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton CRYTran 
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
         Left            =   7860
         Picture         =   "frm_ArrivalCapture.frx":3177
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   90
         Visible         =   0   'False
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   10200
         TabIndex        =   35
         Top             =   240
         Visible         =   0   'False
         Width           =   690
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
         TabIndex        =   34
         Top             =   240
         Width           =   840
      End
   End
   Begin MSDataListLib.DataCombo DataCombo5 
      Height          =   315
      Left            =   -615
      TabIndex        =   21
      Top             =   6315
      Visible         =   0   'False
      Width           =   825
      _ExtentX        =   1455
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo5"
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
   Begin MSDataListLib.DataCombo DataCombo4 
      Height          =   315
      Left            =   -765
      TabIndex        =   20
      Top             =   6840
      Visible         =   0   'False
      Width           =   930
      _ExtentX        =   1640
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo4"
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
   Begin MSDataListLib.DataCombo DataCombo3 
      Height          =   315
      Left            =   -1215
      TabIndex        =   19
      Top             =   6675
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo3"
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
   Begin MSDataListLib.DataCombo DataCombo2 
      Height          =   315
      Left            =   -885
      TabIndex        =   18
      Top             =   6495
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo2"
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
   Begin MSDataListLib.DataCombo DataCombo1 
      Height          =   315
      Left            =   -675
      TabIndex        =   17
      Top             =   6645
      Visible         =   0   'False
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   556
      _Version        =   393216
      Text            =   "DataCombo1"
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
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
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
      Height          =   465
      Left            =   150
      ScaleHeight     =   435
      ScaleWidth      =   14805
      TabIndex        =   7
      Top             =   10365
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
         Left            =   4710
         TabIndex        =   36
         ToolTipText     =   "(Alt R)"
         Top             =   30
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
         Left            =   6135
         TabIndex        =   9
         ToolTipText     =   "(Alt x)"
         Top             =   15
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
         Left            =   7845
         TabIndex        =   8
         ToolTipText     =   "(Alt R)"
         Top             =   30
         Visible         =   0   'False
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
      Height          =   9810
      Left            =   120
      Picture         =   "frm_ArrivalCapture.frx":35B9
      ScaleHeight     =   9780
      ScaleWidth      =   14220
      TabIndex        =   0
      Top             =   585
      Width           =   14250
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   4
         Left            =   3120
         TabIndex        =   61
         TabStop         =   0   'False
         Top             =   3720
         Width           =   1635
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "varcode"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   29
         Left            =   12360
         TabIndex        =   59
         TabStop         =   0   'False
         Top             =   3720
         Width           =   1635
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Tarewt"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   3
         Left            =   11040
         TabIndex        =   58
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1635
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "LotNo"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   2
         Left            =   6600
         Locked          =   -1  'True
         TabIndex        =   56
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1635
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "ArrNo"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   55
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1875
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Read Wt."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   4920
         TabIndex        =   53
         Top             =   3750
         Width           =   1095
      End
      Begin VB.TextBox Text6 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3480
         TabIndex        =   50
         Top             =   720
         Width           =   9195
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "SupCD"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   5
         Left            =   1560
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   720
         Width           =   1875
      End
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   46
         Top             =   1515
         Width           =   11115
      End
      Begin VB.CommandButton Command3 
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
         Height          =   330
         Left            =   12720
         TabIndex        =   48
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   11220
         TabIndex        =   43
         Top             =   8895
         Visible         =   0   'False
         Width           =   1260
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
         Left            =   -375
         TabIndex        =   41
         Top             =   6000
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "bo_no"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   1560
         Locked          =   -1  'True
         TabIndex        =   40
         TabStop         =   0   'False
         Top             =   360
         Width           =   1875
      End
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
         Height          =   360
         Left            =   -15
         TabIndex        =   23
         Top             =   6765
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   360
         Top             =   3120
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
         Height          =   300
         Left            =   12720
         TabIndex        =   22
         Top             =   1080
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.TextBox txt_mtrs 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   8385
         TabIndex        =   15
         Top             =   8925
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.CheckBox Chkconst 
         Appearance      =   0  'Flat
         Caption         =   "Start To Read"
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
         TabIndex        =   11
         Top             =   4560
         Width           =   1635
      End
      Begin VB.TextBox txt_search 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   11400
         TabIndex        =   2
         Top             =   1200
         Visible         =   0   'False
         Width           =   4515
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   11040
         TabIndex        =   3
         Top             =   360
         Width           =   1605
         _ExtentX        =   2831
         _ExtentY        =   556
         _Version        =   393216
         Format          =   133955585
         CurrentDate     =   40327
      End
      Begin MSComctlLib.ListView Lv_SaleOrder 
         Height          =   720
         Left            =   13320
         TabIndex        =   4
         Top             =   9000
         Visible         =   0   'False
         Width           =   4500
         _ExtentX        =   7938
         _ExtentY        =   1270
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
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Description "
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1764
         EndProperty
      End
      Begin MSComctlLib.ListView LV_Pack 
         Height          =   1830
         Left            =   13560
         TabIndex        =   10
         Top             =   7560
         Visible         =   0   'False
         Width           =   2595
         _ExtentX        =   4577
         _ExtentY        =   3228
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
      Begin MSComctlLib.ListView Lv_Sort 
         Height          =   5610
         Left            =   1560
         TabIndex        =   12
         Top             =   4080
         Width           =   12480
         _ExtentX        =   22013
         _ExtentY        =   9895
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
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   15
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Bale No"
            Object.Width           =   1940
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Lot No"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Lot Date"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Variety Code"
            Object.Width           =   2118
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Variety Name"
            Object.Width           =   5292
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Bale No"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Gross Wt"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "Tare Wt."
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Net Weight"
            Object.Width           =   1940
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   9
            Text            =   "Arrival No"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   10
            Text            =   "Arrival Date"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   11
            Text            =   "Supplier"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   12
            Text            =   "Contract No"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   13
            Text            =   "Contract Date"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   14
            Text            =   "ID"
            Object.Width           =   0
         EndProperty
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "bo_date"
         Height          =   300
         Left            =   11040
         TabIndex        =   37
         TabStop         =   0   'False
         Top             =   360
         Width           =   1590
         _ExtentX        =   2805
         _ExtentY        =   529
         _Version        =   393216
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComctlLib.ListView ListPO 
         Height          =   1770
         Left            =   1560
         TabIndex        =   51
         Top             =   1920
         Width           =   12450
         _ExtentX        =   21960
         _ExtentY        =   3122
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
         Appearance      =   1
         NumItems        =   1
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   2540
         EndProperty
      End
      Begin MSCommLib.MSComm MSComm1 
         Left            =   13080
         Top             =   2760
         _ExtentX        =   1005
         _ExtentY        =   1005
         _Version        =   393216
         DTREnable       =   -1  'True
         ParitySetting   =   2
         DataBits        =   7
      End
      Begin VB.Label Label11 
         Caption         =   "Variety Code"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   11040
         TabIndex        =   60
         Top             =   3720
         Width           =   1275
      End
      Begin VB.Label Label10 
         Caption         =   "Tare Weight"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   9480
         TabIndex        =   57
         Top             =   1080
         Width           =   1515
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Bale Weight"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   9
         Left            =   1680
         TabIndex        =   54
         Top             =   3735
         Width           =   990
      End
      Begin VB.Label Label12 
         Caption         =   "Arrival No"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   52
         Top             =   1080
         Width           =   1155
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   5
         Left            =   120
         TabIndex        =   49
         Top             =   1545
         Width           =   555
      End
      Begin VB.Label Label9 
         Caption         =   "Lot No"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   5280
         TabIndex        =   47
         Top             =   1080
         Width           =   1035
      End
      Begin VB.Label Label7 
         Caption         =   "Bale Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   45
         Top             =   4080
         Width           =   1515
      End
      Begin VB.Label Label4 
         Caption         =   "Total Packs"
         DragMode        =   1  'Automatic
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   9870
         TabIndex        =   44
         Top             =   8955
         Width           =   1605
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Stock Date"
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
         Index           =   0
         Left            =   5520
         TabIndex        =   42
         Top             =   960
         Visible         =   0   'False
         Width           =   810
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Doc No."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   0
         Left            =   135
         TabIndex        =   39
         Top             =   360
         Width           =   660
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Doc. Date"
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
         Index           =   2
         Left            =   9480
         TabIndex        =   38
         Top             =   375
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Total Quantity"
         DragMode        =   1  'Automatic
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   6675
         TabIndex        =   16
         Top             =   9000
         Width           =   1605
      End
      Begin VB.Label Label5 
         Caption         =   "Contract List"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   14
         Top             =   1920
         Width           =   1515
      End
      Begin VB.Label Label6 
         Caption         =   "Pack Details"
         DragMode        =   1  'Automatic
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   -2610
         TabIndex        =   13
         Top             =   6660
         Visible         =   0   'False
         Width           =   1290
      End
      Begin VB.Label LblFabStkHd 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Arrival Details"
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
         TabIndex        =   6
         Top             =   -15
         Width           =   14220
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Supplier Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   120
         TabIndex        =   5
         Top             =   750
         Width           =   1170
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
Attribute VB_Name = "frm_ArrivalCapture"
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
Dim STR As String
Dim ilastindex As Integer
Dim ilastindex1 As Integer
Dim ilastindex2 As Integer
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim z As Integer
Dim PAGE As Integer
Dim lin As Integer
Dim str1, fd, td As String
Dim LN1, LN2
Dim str_flg As String
Dim li As ListItem
Dim sRecSort As String
Dim nod As Integer
Dim Balenos As String
Dim Opt As String
Dim scaleport As Integer
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
If (Opt = "qry" Or Opt = " ") And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
  MaskEdBox1.Text = adoPrimaryRS("docdt")
   DTPicker1.value = adoPrimaryRS("docdt")

  Set Rs = New Recordset
'  Rs.Open "select sum(meters) from RM_ArrivalData where bo_no='" & adoPrimaryRS("BO_NO") & "'"
End If
intervalMinutes = -1
End Sub

Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1

'If Spinmod.ReturnTRanYearValidate(Index, BUTTON(Index)) = True Then Exit Sub
'Opt = "add"
Select Case Index
Case 0
    'Addition
    Opt = "add"
    desc.Caption = "Addition"

'    Frame1.Enabled = True
'    Frame2.Enabled = True
'    Frame9.Enabled = True
'    SSTab3.Visible = False
'    grdDataGrid.Enabled = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select  divcode,DocNo,Docdt,Supcd,ArrNo,Arrdate ,lotNo,ContNo,Contdt ,varcode,BaleNo,NetWt,GrossWt ,TareWt,entdate,user_id,Sno from RM_ArrivalData a where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
  '  Lv_Const.ListItems.clear
    Lv_Sort.ListItems.Clear
    Chkconst.value = 0

    ReDim ITARY(100, 0)

    Call adddelmod(BUTTON)
    pcode = "' '"
    Balenos = "0"
    contsno = "0"
   ' db.BeginTrans
   ' TXTFIELDS(4).Text = ""
  '  TXTFIELDS(2).Text = ""
   ' TXTFIELDS(3).Text = ""
    txt_search.Text = ""
    
    Text5.Text = ""
   ' Text3.Text = ""
    'Text4.Text = ""
    
    MaskEdBox1.Text = pdate
    MaskEdBox1.Enabled = False

    DB.CommandTimeout = 1000
    DB.Execute " set arithabort on "
  '  db.Execute "ksp_TableExists "TmpRPackDetails" & TLocalIPAdd & ""
    DB.Execute "ksp_TableExists 'TmpBaleDetails" & TLocalIPAdd & "'"

    DB.Execute "CREATE TABLE TmpBaleDetails" & TLocalIPAdd & " (divcode varchar(2),LotNo numeric(8) ,lotdt Datetime,ArrNo numeric(6),ArrDate datetime,Varcode varchar(15),Varname varchar(100),BaleNo numeric(13),GrossWt numeric(12,3),TAREWT numeric(9,3),NetWt numeric(12,3),supcd varchar(9),ContNo numeric(10),Contdt Datetime,printStatus varchar(2),id int )"

    DB.Execute " set arithabort off "
    
    txtfields(5).SetFocus


 Case 1
 'Modification
 If Record_Exists("RM_ArrivalData where divcode='" & Divcode & "' and inv_type is null and inv_no is null") = False Then Exit Sub
    Opt = "mod"
    desc.Caption = "Modification"
    Screen.MousePointer = 11
    DB.BeginTrans
    Frame3.Visible = False
    Buttonframe.Enabled = True
    Frame9.Enabled = False
    Option10.value = True
    LookUp.Clear = True
    LookUp.query = "select Distinct a.bo_type 'Type',a.bo_no 'DespatachNo',a.bo_date Date,b.slname 'Customer Name' from RM_ArrivalData a,fa_slmas b  where a.cust_code=b.slcode and a.divcode='" & Divcode & "'  AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and a.inv_type is null and inv_no is null"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "1000,1200,1100,3500"
    LookUp.Caption = "Despatch Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set Rs = New Recordset
        Rs.Open "SELECT inv_cat FROM IG_INVTYPE WHERE DIVCODE ='" & Divcode & "' and INV_TYPE='" & LookUp.Fields(0) & "'", DB

        If Not Rs.EOF Then

        INVCAT = Rs(0)
        End If



        txtfields(0).Text = LookUp.Fields(0)
        txtfields(1).Text = LookUp.Fields(1)
        txtfields(2).Locked = False
        txtfields(3).Locked = False
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
'        Call Query_Mode
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        BUTTON_Click (10)
    End If
    stbar.Panels(2).Text = "Select Despatch from the List"

    Frame1.Enabled = True
    Frame2.Enabled = True
    grddatagrid.Enabled = True
    Screen.MousePointer = 0
 Case 2
    'Deletion
    'If Record_Exists("RM_ArrivalData where inv_type is null and inv_no is null and divcode='" & divcode & "'") = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    Screen.MousePointer = 11
    Buttonframe.Enabled = True

    LookUp.Clear = True
    'LookUp.query = "select Distinct a.bo_type 'Type',a.bo_no 'DespatachNo',a.Date,b.slname 'Supplier Name' from RM_ArrivalData a,fa_slmas b " & _
     '               " where  " & _
      '              " a.cust_code=b.slcode and a.divcode='" & DivCode & "'  AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and a.inv_type is null and inv_no is null"
'    LookUp.query = "select Distinct a.bo_type 'Despatach Type',a.bo_no 'DespatachNo',a.bo_date ""BO DATE"" ,b.slname 'Customer Name' from RM_ArrivalData a,fa_slmas b " & _
'                    " where  " & _
'                    " a.cust_code=b.slcode and a.divcode='" & Divcode & "' "
  LookUp.query = "select Distinct a.DocNo 'Arrival No.',a.DOCDT ""Arrival Date"" ,b.slname 'Supplier Name',a.supcd 'Supplier Code' from RM_ArrivalData a,fa_slmas b " & _
                    " where  " & _
                    " a.Supcd=b.slcode and a.divcode='" & Divcode & "' "
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "1200,1200,5500"
    LookUp.Caption = "Arrival Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(5).Text = LookUp.Fields(3)
        Text6.Text = LookUp.Fields(2)
        txtfields(1).Text = LookUp.Fields(0)
        MaskEdBox1.Text = LookUp.Fields(1)
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
'        Call Query_Mode
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        BUTTON_Click (10)
    End If
   ' STbar.Panels(2).Text = "Select Despatch from the List"
    'Frame1.Enabled = False
    'Frame2.Enabled = False
'    grdDataGrid.Enabled = False
    If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
    Screen.MousePointer = 0
Case 3
'        Frame7.Visible = True
'        'SSTab1.Visible = False
'        Frame7.ZOrder
        Repindex = 900
        repform.Show

 Case 4
 'Find
       If Record_Exists("RM_ArrivalData where divcode='" & Divcode & "'") = False Then Exit Sub
       Opt = "fnd"
       desc.Caption = "Modification"
       Screen.MousePointer = 11
       'SSTab1.Visible = False
       'db.BeginTrans
''       Frame3.Visible = True
''       Frame3.ZOrder
''       Buttonframe.Enabled = False
''       listlb.Caption = "Customer Detail Listing"
''       Ksldesc1.conn = connectstring
''       Ksldesc1.listfield1width = 2500
''       Ksldesc1.listfield2width = 3500
''       Ksldesc1.Table = "RM_ArrivalData A,RM_ArrivalData B,FA_SLMAS C where A.divcode='" & divcode & "' AND A.BO_NO=B.BO_NO AND B.CONT_NO <>' ' AND A.CUST_CODE=C.SLCODE"
''       Ksldesc1.listfield1 = "A.bo_NO"
''       Ksldesc1.listfield2 = "C.SLNAME,A.Bo_Type"
''       Ksldesc1.SetFocus
     '  STbar.Panels(2).Text = "Select  Delivery No  from the List"
       Call adddelmod(BUTTON)
       BUTTON(9).Enabled = False
       'Call ENABLCONTLS
       Screen.MousePointer = 0

       Call Find_Lookup

 Case 5
 'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First record"
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:

Case 6
'next
        desc.Caption = "Query"
        On Error GoTo GoNextError

        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            txtfields(6).Text = adoPrimaryRS("meters")
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
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
            stbar.Panels(2).Text = "Last record"
        End If
        Exit Sub

GoNextError:
Case 7
 'previous
       desc.Caption = "Query"
       On Error GoTo GoPrevError
       If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
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
            stbar.Panels(2).Text = "First Record"
        End If
        Exit Sub

GoPrevError:

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:
Case 9
    'Save
   ' Opt = "add"
    If Opt = "add" Or Opt = "mod" Then
'        If Trim(InvCat) <> "E" Then
'            If Trim(txtfields(24).Text) = "" Then
'                MsgBox "Delivery Address cannot be empty", vbInformation, head
'
'
'                txtfields(24).SetFocus
'                Exit Sub
'            End If
'        End If
    If Trim(txtfields(2).Text) = "" Then
          MsgBox "Vehicle No. cannot be empty", vbInformation, head
          txtfields(2).SetFocus
           Exit Sub
    End If
    
    If Trim(txtfields(5).Text) = "" Then
          MsgBox "Vehicle No. cannot be empty", vbInformation, head
          txtfields(2).SetFocus
           Exit Sub
    End If
    
    
    sortType = "N"
    For I = 1 To Lv_Sort.ListItems.Count
        If Lv_Sort.ListItems.Item(I).Checked Then
            sortType = "Y"
        End If
    Next
    
    If sortType = "N" Then
        MsgBox "Please Select Atleast One Pack ", vbInformation, head
        txtfields(2).SetFocus
        Exit Sub
    
    End If
    
       
'    If Trim(txtfields(3).Text) = "" Then
'          MsgBox "Delivery Address. Cannot be empty", vbInformation, head
'         ' TXTFIELDS(3).SetFocus
'           Exit Sub
'    End If
     If Opt = "add" Then
       DB.BeginTrans
     End If
'        If Me.Option5.value = True Then
'            PubDesMode = "S"
'        ElseIf Me.Option6.value = True Then
'            PubDesMode = "T"
'        ElseIf Me.Option7.value = True Then
'            PubDesMode = "J"
'        End If

        Set Rs = New Recordset
        Rs.Open "select* from RM_ArrivalData where divcode='" & Divcode & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            Set Rs = New Recordset
            Rs.Open "select max(docno) from RM_ArrivalData where divcode='" & Divcode & "' and Docdt  between  '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
            If IsNull(Rs(0)) = False Then
            If Rs.EOF = False Then
            txtfields(1).Text = Rs(0) + 1
            Else
             txtfields(1).Text = "1"
            End If
               Else
         txtfields(1).Text = "1"
         End If
         Else
         txtfields(1).Text = "1"

        End If

'        Temp = TXTFIELDS(6).Text
'        adoSecondaryRS.MoveFirst
'        temp = grdDataGrid.Columns(12).Text

    End If


    If Opt = "add" Then
        Set rsa = New Recordset
        rsa.Open "Select Max(docdt)Date from RM_ArrivalData  where Docdt  between  '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
        If IsNull(rsa(0)) = False Then

        If Not rsa.EOF Then
            If CDate(MaskEdBox1.Text) < CDate(rsa("Date")) Then
                MsgBox "Can't Save This Record,Processing Date Is Wrong ", vbInformation, head
                MaskEdBox1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
        End If

'        Set rs = New Recordset
'        rs.Open "SELECT ISNULL(MAX(CAST(BO_NO AS Integer)),0) FROM RM_ArrivalData WHERE DATE BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'  AND DIVCODE ='" & divcode & "' AND BO_TYPE='" & TXTFIELDS(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'        If rs.RecordCount > 0 Then
'            If rs(0) = 0 Then
'               Last_docno = rs(0) + 1
'               TXTFIELDS(1).Text = Format(yfdate, "YY") & Padl(CStr(Last_docno), 6, "0")
'            Else
'               TXTFIELDS(1).Text = rs(0) + 1
'               'TXTFIELDS(1).Text = "0" & Rs(0) + 1
'
'            End If
'        End If

        On Error GoTo AddErr

        Set Rs = New Recordset
           Rs.Open "select divcode,DocNo,Docdt,Supcd,ArrNo,Arrdate ,lotNo,lotdt,ContNo,Contdt ,varcode,BaleNo,NetWt,GrossWt ,TareWt,entdate,user_id ,sno from RM_ArrivalData where divcode='" & Divcode & "' and 1=2 ", DB, adOpenDynamic, adLockBatchOptimistic
        tmp = Opt
        Opt = " "

        For I = 1 To Lv_Sort.ListItems.Count
        If Lv_Sort.ListItems.Item(I).Checked Then
            Rs.AddNew

            Rs("User_id").value = usrid
            Rs("entdate").value = Format(Date, "yyyy-mm-dd")
            Rs("Docdt").value = Format(DTPicker1.value, "yyyy-mm-dd")

            Rs("docno") = val(txtfields(1).Text)
            Rs("divcode") = Divcode
            Rs("supcd") = Trim(txtfields(5).Text)
            Rs("ArrNo") = val(txtfields(0).Text)
            Rs("Arrdate") = Format(DTPicker1.value, "yyyy-mm-dd")
            
            Rs("lotNo") = val(txtfields(0).Text)
            Rs("lotdt") = Format(DTPicker1.value, "yyyy-mm-dd")
            Rs("varcode") = Trim(txtfields(29).Text)
            
            
            Rs("baleno") = Trim(Lv_Sort.ListItems(I).SubItems(5))
            Rs("netwt") = Trim(Lv_Sort.ListItems(I).SubItems(8))
            Rs("GrossWt") = Trim(Lv_Sort.ListItems(I).SubItems(6))
            Rs("TareWt") = Trim(Lv_Sort.ListItems(I).SubItems(7))
            
            Rs("ContNo") = val(Lv_Sort.ListItems(I).SubItems(12))
            Rs("Contdt") = Format(Trim(Lv_Sort.ListItems(I).SubItems(13)), "yyyy-mm-dd")

            Rs("sno") = I

            Rs.UpdateBatch adAffectAll

       End If
       Next I
       '  SSTab3.Visible = False
X:
        Opt = tmp



        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record Saved Successfully", vbInformation, head
      '  STbar.Panels(2).Text = "Record Saved Successfully"


        Opt = " "
'        Call Query_Mode
        ' SSTab3.Visible = False
    End If

    If Opt = "mod" Then
        adoPrimaryRS("User_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("ordrefno").value = txtfields(8).Text
        adoPrimaryRS("isClosed") = isclosed
        adoPrimaryRS("Transport") = txtfields(16).Text
        adoPrimaryRS("LRNo") = txtfields(17).Text
        If IsDate(MaskEdBox2.Text) = True And MaskEdBox2.Text <> "__/__/____" Then
            adoPrimaryRS("ordredate").value = Format(MaskEdBox2.Text, "yyyy-mm-dd")
        Else
            adoPrimaryRS("ordredate").value = Null
        End If
        adoPrimaryRS("date") = MaskEdBox1.Text
        adoPrimaryRS("aliascode") = txtfields(13).Text
        adoPrimaryRS("aliasname") = txtfields(14).Text
        adoPrimaryRS("despatchType") = PubDesMode
        adoPrimaryRS("delcode") = Trim(txtfields(24).Text)
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        tmp = Opt
        Opt = " "
        adoSecondaryRS.MoveFirst
         On Error Resume Next
            adoSecondaryRS.UpdateBatch adAffectAllChapters
        Opt = tmp
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record Modified Successfully", vbInformation, head
        stbar.Panels(2).Text = "Record Modified Successfully"
        Opt = " "
'        Call Query_Mode
         SSTab3.Visible = False
        BUTTON(0).SetFocus
        Exit Sub
    End If

    If Opt = "del" Then

'        Set rs = New Recordset
'        rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & divcode & "' and doc_type='B' AND DOC_REF='" & TXTFIELDS(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'        'If RS(0) = Val(Right(Txtfields(1).Text, 3)) Then
        a = MsgBox("Do you want to delete?", vbYesNo, head)
        On Error GoTo delerr
        If a = 6 Then

            DB.Execute ("delete from RM_ArrivalData where divcode='" & Divcode & "' and  bo_no='" & txtfields(1).Text & "' and  bo_type='" & txtfields(0).Text & "' and bo_date='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'")

    'db.CommitTrans


            Screen.MousePointer = 0
            MsgBox "Record Deleted Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Deleted Successfully"
            Opt = " "
'            Call Query_Mode
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
'            Call Query_Mode
            Screen.MousePointer = 0
        End If
    Else
       ' Frame3.Visible = False
        'SSTab2.Visible = True
       ' Text1.SetFocus
    End If

delerr:
    If Err.Number = -2147217900 Then
        MsgBox "This Delivery No. is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
Opt = ""
BUTTON_Click (10)
Exit Sub
AddErr:
If Err.Description <> "" Then
    MsgBox Err.Description
    MsgBox "Record Not Saved", vbInformation, head
    'SSTab1.Visible = True
    BUTTON_Click (10)
    Exit Sub
End If
Case 10
On Error Resume Next
    desc.Caption = "Query"

    Screen.MousePointer = 11
    tmpvl = 0
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
    DB.RollbackTrans
'        db.Execute "DROP TABLE tptabDes"
'        SSTab1.Visible = True
        If Opt <> "add" Then
            DB.RollbackTrans
        End If
    Case "del"
        'db.RollbackTrans
     Case "qry"
        'db.RollbackTrans

    End Select
    If Opt <> "qry" Then
        Opt = "qry"
    Call QUERY_MODE
    End If
    'calling cancl procedure from module
'    Call cancl(BUTTON, 23)
    Screen.MousePointer = 0
Case 11
      I = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
    If I = vbYes Then
     Reset
        Unload Me
    End If
Case 12
    'Call DeliveryChallen(txtfields(1), txtfields(1), Trim(txtfields(0)))
    Exit Sub
End Select
End Sub


Sub Find_Lookup()

    desc.Caption = "Find"
    Screen.MousePointer = 11
    Buttonframe.Enabled = True

    LookUp.Clear = True
    LookUp.query = "select Distinct a.DocNo 'Arrival No.',a.DOCDT ""Arrival Date"" ,b.slname 'Supplier Name',a.supcd 'Supplier Code' from RM_ArrivalData a,fa_slmas b " & _
                    " where  " & _
                    " a.Supcd=b.slcode and a.divcode='" & Divcode & "' "
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "1200,1200,5500"
    LookUp.Caption = "Arrival Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(5).Text = LookUp.Fields(3)
        Text6.Text = LookUp.Fields(2)
        txtfields(1).Text = LookUp.Fields(0)
        MaskEdBox1.Text = LookUp.Fields(1)
        'MaskEdBox1
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
'        Call Query_Mode
        LookUp.Clear = True
    Else
        LookUp.Clear = True
        BUTTON_Click (10)
    End If

    If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
    Screen.MousePointer = 0
End Sub
Public Sub ENABLCONTLS()
Dim X As TextBox
For Each X In Me.txtfields
    X.Locked = False
Next
'Frame2.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = True
Next

End Sub
Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
      Set oText.DataSource = adoPrimaryRS
   Next
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
On Error Resume Next
        dt = Format(DTPicker1.value, "yyyy-mm-dd")


        Dim CryStkSta As clsCrystal
        Set CryStkSta = New clsCrystal



        Set CryStkSta.cryRept = Cry_packingadvisenew 'Cry_PackingAdviceReport 'Cry_stockpackingAdvise

        CryStkSta.CrystalPrint
        CrystalReport2.Reset
        CrystalReport2.Connect = connectstring
        CrystalReport2.ReportFileName = KALFOLDERDATA & "RepWvgPrdn.rpt"
        CrystalReport2.ParameterFields(0) = "@divcode;" & Divcode

        CrystalReport2.ParameterFields(1) = "@date;" & Format(dt, "YYYY-MM-DD")


        ''CrystalReport1.ParameterFields(3) = "@shtype;" & Trim(Mid(Combo1.Text, InStrRev(Combo1.Text, "-") + 1))


        CrystalReport2.WindowShowPrintSetupBtn = True
        CrystalReport2.WindowShowSearchBtn = True
        CrystalReport2.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport2.Action = 1
        CrystalReport2.PrinterCopies = 1
        Screen.MousePointer = 0
End Sub
Public Sub QUERY_MODE()

If Opt = " " Or Opt = "qry" Then

    'Frame5.Visible = False
    Call NEWFORM(BUTTON)

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,DocNo,Docdt,Supcd,ArrNo,Arrdate ,lotNo,ContNo,Contdt ,varcode,BaleNo,NetWt,GrossWt ,TareWt,entdate,user_id,Sno  from RM_ArrivalData a where " & _
    "  a.divcode='" & Divcode & "'  order by a.docno desc ", DB, adOpenDynamic, adLockBatchOptimistic
'
'    If Opt = "fnd" Then
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "SHAPE {select distinct a.transport,a.lrno,a.isclosed, A.DespatchType,a.divcode,a.bo_type,a.bo_no,date,cust_code,vehicle_no,rateflg,DELIVEYAT,rate,RATEFLG,deliveyat2,BALES ,TAX_CODE,ORDERNO,ORDERDATE,A.METERS,ORDREFNO,ORDREDATE, aliasname,ALIASCODE,cont_no,a.foldgper,a.delcode,a.Bo_Date FROM RM_ArrivalData a,RM_ArrivalData b where a.bo_no=b.bo_no and a.bo_type=b.bo_type and a.DIVCODE ='" & divcode & "' and bo_type = '" & Right(Ksldesc1.listfield2, 2) & "' and bo_no = '" & Ksldesc1.listfield1 & "' " & _
'            " AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and isnull(b.cont_no,'')<>'' order by a.bo_no  }  AS parentcmd APPEND ({select distinct a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no,a.sortno,b.sortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code,a.packchrg_wt,a.case_rate,cont_sno,a.meters,a.OrdRefNo,Grade,a.Bo_Date  from RM_ArrivalData a,Ig_Product b,RM_ArrivalData c where a.divcode=c.divcode and a.sortno=b.sortno and a.bo_type=c.bo_type and a.bo_no=c.bo_no and a.divcode='" & divcode & "' and isnull(a.cont_no,'')<>'' order by a.bo_no desc}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' to 'bo_no') AS childcmd", db, adOpenDynamic, adLockBatchOptimistic
'    End If

    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        Call disablcontls
        Call bindcontls
'        If Opt = "qry" Or Trim(Opt) = "" Then grdDataGrid.AllowUpdate = False
        Set adoSecondaryRS = New Recordset
        On Error GoTo Err

       ' DataCombo1.Text = adoPrimaryRS("vehicle_no")

       ' Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
       ' grdDataGrid.Columns(0).Visible = True
       ' grdDataGrid.Columns(1).Visible = True
        txtfields(6).Text = adoSecondaryRS("nett_kgs")
        txtfields(7).Text = adoSecondaryRS("gross_kgs")
        txtfields(6).Text = adoPrimaryRS("meters")
'        Set grdDataGrid.DataSource = adoSecondaryRS
'        grdDataGrid.Columns(4).Visible = False

        Call NEWFORM(BUTTON)
        desc.Caption = "Query"
        If Opt = "mod" Then
            txtfields(2).Locked = False
            txtfields(3).Locked = False
        End If
        'Call GrdAlign

        If adoPrimaryRS.Fields("DESPATCHTYPE") = "T" Then
            Option6.value = True
        ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "S" Then
            Option5.value = True
        ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "J" Then
            Option7.value = True
        End If

    Else
        MsgBox "No Records ", vbInformation + vbOKOnly, head
    End If
End If

If Opt = "mod" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SHAPE {select transport,lrno,isclosed,DespatchType,divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,tax_code, aliasname,ALIASCODE,FOLDGPER,METERS,BALES,delcode,Bo_Date from RM_ArrivalData where bo_type= '" & Trim(LookUp.Fields(0)) & "' and bo_no='" & Trim(LookUp.Fields(1)) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no,a.sortno,b.sortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code,a.packchrg_wt,a.case_rate,cont_sno,meters,OrdRefNo,Grade,a.Bo_Date  from RM_ArrivalData a,Ig_rProduct b where a.sortno=b.sortno and  a.divcode='" & Divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockOptimistic
    Call bindcontls
    Call ENABLCONTLS
    Set adoSecondaryRS = New Recordset
    On Error GoTo Err
    txtfields(6).Text = adoPrimaryRS("meters")
    Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
    'txtfields(6).Text = ADOSECONDARYRS("nett_kgs")
    'txtfields(7).Text = ADOSECONDARYRS("gross_kgs")
    Set grddatagrid.DataSource = adoSecondaryRS
    txtfields(0).Locked = True
    txtfields(1).Locked = True
    txtfields(2).Locked = True
    txtfields(3).Locked = True
    txtfields(5).Locked = True
    txtfields(6).Locked = True
    txtfields(7).Locked = True
    txtfields(11).Locked = False
    txtfields(10).Locked = False
    txtfields(11).Enabled = True
    txtfields(10).Enabled = True

    grddatagrid.AllowAddNew = False
    grddatagrid.Columns(0).Locked = True
    grddatagrid.Columns(1).Locked = True
    grddatagrid.Columns(2).Locked = True
    grddatagrid.Columns(3).Locked = True
    txtfields(2).Locked = False
    txtfields(3).Locked = False

    If adoPrimaryRS.Fields("DESPATCHTYPE") = "T" Then
        Option6.value = True
    ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "S" Then
            Option5.value = True
    ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "J" Then
            Option7.value = True
    End If

End If

If Opt = "del" Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SHAPE {select transport,lrno,isclosed,DespatchType,divcode,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,tax_code,METERS, aliasname,ALIASCODE,bales,foldgper,delcode,Bo_Date from RM_ArrivalData where bo_type= '" & Trim(LookUp.Fields(0)) & "' and bo_no='" & Trim(LookUp.Fields(1)) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no,a.sortno,b.sortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code,a.packchrg_wt,a.case_rate,cont_sno,meters,OrdRefNo,Grade,a.Bo_Date from RM_ArrivalData a,Ig_rProduct b where a.sortno=b.sortno and a.divcode='" & Divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockOptimistic
    Call bindcontls
    Call disablcontls
    Set adoSecondaryRS = New Recordset
    On Error GoTo Err
    Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
    Set grddatagrid.DataSource = adoSecondaryRS
    txtfields(6).Text = adoPrimaryRS("meters")
    If adoPrimaryRS.Fields("DESPATCHTYPE") = "T" Then
        Option6.value = True
    ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "S" Then
            Option5.value = True
    ElseIf adoPrimaryRS.Fields("DESPATCHTYPE") = "J" Then
            Option7.value = True
    End If

End If

If Opt = "fnd" Then

    'T = Trim(Right(Ksldesc1.Description, 2))

    t = Trim(LookUp.Fields(2))

    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open " SHAPE {select divcode,bo_type,bo_no,date,cust_code,vehicle_no,rate,rateflg,tax_code,ALIASCODE,ALIASNAME from RM_ArrivalData where bo_type = '" & T & "' and bo_no='" & Trim(Ksldesc1.CODE) & "' and divcode='" & divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.sortno,b.aliassortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code from RM_ArrivalData a,Ig_Product b where a.sortno=b.sortno and a.divcode='" & divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open " SHAPE {select transport,lrno,isclosed,DespatchType,divcode,bo_type,bo_no,date,cust_code,vehicle_no,rate,rateflg,tax_code,ALIASCODE,ALIASNAME,meters,ordrefno,deliveyat,bales,foldgper,ordredate,delcode,Bo_Date from RM_ArrivalData where bo_type = '" & t & "' and bo_no='" & Trim(LookUp.Fields(0)) & "' and divcode='" & Divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.sortno,b.sortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code,a.Bo_Date from RM_ArrivalData a,Ig_rProduct b where a.sortno=b.sortno and a.divcode='" & Divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", DB, adOpenStatic, adLockBatchOptimistic
    'adoPrimaryRS.Open " SHAPE {select divcode,bo_type,bo_no,date,cust_code,vehicle_no,rate,rateflg,tax_code,ALIASCODE,ALIASNAME,meters,ordrefno,deliveyat,bales,foldgper,ordredate from RM_ArrivalData where bo_type = '" & T & "' and bo_no='" & Trim(LookUp.Fields(0)) & "' and divcode='" & divcode & "'}  AS parent APPEND ({select a.divcode,a.bo_type,a.bo_no,a.sl_no,a.cont_type,a.nett_kgs,a.gross_kgs,a.cont_no ,a.sortno,b.sortname,a.pack_year,a.packno_code,a.SBALE_NO,a.EBALE_NO,a.pack_type,a.lot_code from RM_ArrivalData a,Ig_Product b where a.sortno=b.sortno and a.divcode='" & divcode & "'}  AS childcmd RELATE 'divcode' TO 'divcode','bo_type' TO 'bo_type','bo_no' TO 'bo_no') AS childcmd", db, adOpenStatic, adLockBatchOptimistic

    Call bindcontls
    Call disablcontls

    Set adoSecondaryRS = New Recordset

    On Error GoTo Err
    Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
    'txtfields(6).Text = adoprimaryrs("meters")
    txtfields(7).Text = adoSecondaryRS("gross_kgs")
    txtfields(6).Text = adoPrimaryRS("meters")


End If


Exit Sub
Err:

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
    rsGrp.Open "select s.sortno,s.aliasSortname from wvg_balehd Bhd,Ig_rProduct s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null ) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & b2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.sortno ", DB, adOpenStatic, adLockBatchOptimistic
''or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='" & DivCode & "' ) and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "'


    Set temprs = New Recordset
   ' temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_CONTHD a,fa_slmas b,WVG_GRPCONTHD C  where a.cust_code=b.slcode and a.divcode=c.divcode and a.GRPCONT_NO=c.cont_no and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'" & _
                        " union all select distinct a.custcode  as code,b.slname  as description from ex_salescontracthd a,fa_slmas b where a.custcode=b.slcode and a.DIVCODE='" & divcode & "' and a.contractdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockReadOnly
    temprs.Open "select s.aliasSortname  ALSortName from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where SaleOrder_no= '" & DataCombo5.Text & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null ) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & Divcode & "'  AND s.sortno between '" & b1 & "' and '" & b2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname", DB, adOpenStatic, adLockBatchOptimistic
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
''or despatch_REFNo in (select isnull(BO_NO,'')bo_No from WVG_bohd where divcode='11' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'
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



Private Sub Command4_Click()
   Call EnableTimer
    If Err Then MsgBox "": Exit Sub
End Sub

Private Sub Cry_Click(Index As Integer)
On Error Resume Next

       dt = Format(MaskEdBox1.Text, "yyyy-mm-dd")


        Dim CryStkSta As clsCrystal
        Set CryStkSta = New clsCrystal



        Set CryStkSta.cryRept = Cry_PackingDespatch 'Cry_PackingAdviceReport 'Cry_stockpackingAdvise

        CryStkSta.CrystalPrint
        CrystalReport2.Reset
        CrystalReport2.Connect = connectstring
        CrystalReport2.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
        CrystalReport2.ParameterFields(0) = "@divcode;" & Divcode
        CrystalReport2.ParameterFields(1) = "@BO_TYPE;" & Trim(txtfields(0).Text)
        CrystalReport2.ParameterFields(2) = "@BO_NO;" & Trim(txtfields(1).Text)
        CrystalReport2.ParameterFields(3) = "@BODATE;" & Format(dt, "YYYY-MM-DD")


        ''CrystalReport1.ParameterFields(3) = "@shtype;" & Trim(Mid(Combo1.Text, InStrRev(Combo1.Text, "-") + 1))


        CrystalReport2.WindowShowPrintSetupBtn = True
        CrystalReport2.WindowShowSearchBtn = True
        CrystalReport2.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport2.Action = 1
        CrystalReport2.PrinterCopies = 1
        Screen.MousePointer = 0

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring

    Me.Caption = LblFabStkHd.Caption
    DTPicker1.value = pdate
           ' DTPicker2.VALUE = pdate
    FraFabstk.Visible = True

    ilastindex = 1
    ilastindex1 = 1
    ilastindex2 = 1
    Balenos = "0"

    On Error Resume Next

    ' Fire Rx Event Every Two Bytes
'    MSComm1.RThreshold = 2
'
'    ' When Inputting Data, Input 2 Bytes at a time
'    MSComm1.InputLen = 2
'
'    ' 2400 Baud, No Parity, 8 Data Bits, 1 Stop Bit
'    MSComm1.Settings = "2400,N,8,1"
'
'    ' Make sure DTR line is low to prevent Stamp reset
'    MSComm1.DTREnable = False
       Set Rs = New Recordset
    Rs.Open "select isnull(cport,1) cport from rm_param  ", DB, adOpenStatic, adLockReadOnly

    scaleport = Rs(0)
    ' Open COM1
'    MSComm1.CommPort = val(Rs(0))
'    MSComm1.PortOpen = True


    DTPicker1.value = pdate
'
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
'
'
'    b1 = Mid(DataCombo1.Text, InStr(DataCombo1.Text, "--") + 2, (Len(DataCombo1.Text) - InStr(DataCombo1.Text, "--")))
'    b2 = Mid(DataCombo2.Text, InStr(DataCombo2.Text, "--") + 2, (Len(DataCombo2.Text) - InStr(DataCombo2.Text, "--")))
'    fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
'    tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))
'
''
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
'                " and (despatch_REFNo is null or despatch_REFNo in   (select isnull(BO_NO,'')bo_No   from RM_ArrivalData where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'))  and bhd.godowncode between '01' and  '05' " & _
'                " group by fa.slname , bhd.Saleorder_no,dt.DATE  " & _
'                " union all select bhd.Saleorder_no,fa.slname,dt.CONTRACTDATE CONTRACTDATE from wvg_balehd Bhd,Ig_Product s, EX_SALESCONTRACThd   dt,fa_slmas fa where  fa.slcode=dt.CUSTCODE  and  dt.CONTRACTNO = bhd.Saleorder_no and  Bhd.SortNo=s.sortno " & _
'                " and (despatch_REFNo is null or despatch_REFNo in   (select isnull(BO_NO,'')bo_No   from RM_ArrivalData where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'))  and bhd.godowncode between '01' and  '05' " & _
'                " group by fa.slname , bhd.Saleorder_no ,dt.CONTRACTDATE ", DB, adOpenStatic, adLockBatchOptimistic
'

        Dim flgs As String
        Set Rs = New Recordset

'        Rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", db
'        If Not Rs.EOF Then
'                flgs = Rs(0)
'        End If
'         Set temprs = New Recordset
'        If flgs <> "Y" Then
'                 temprs.Open " select slname as description,Saleorder code, CONTRACTDATE from ( select a.cont_no Saleorder,   fa.slname  ,a.DATE CONTRACTDATE  from WVG_GRPCONTDT b " & _
'            " inner join dbo.WVG_GRPCONTHD a ON a.CONT_NO = b.CONT_NO AND a.CONT_TYPE = b.CONT_TYPE " & _
'            " inner join fa_slmas fa on fa.slcode =a.CUST_CODE " & _
'            " where  (a.DIVCODE = '11') AND (a.CANCELLED = 'N') AND (ISNULL(b.CANFLG, 'N') <> 'Y') and  (ISNULL(b.METERS, 0) - ISNULL(b.Des_OrdMeters, 0)- ISNULL(b.QTY_CANCEL, 0) > 0) " & _
'            " AND (ISNULL(a.proj_flg, 'N') = 'Y') AND (ISNULL(a.processflg, 'N') = 'N') " & _
'            " Union All " & _
'            " select a.CONTRACTNO  Saleorder,  fa.slname   ,a.CONTRACTDATE   from EX_SALESCONTRACTdt  b" & _
'            " inner join dbo.EX_SALESCONTRACThd a ON a.CONTRACTNO = b.CONTRACTNO AND a.inv_type  = b.inv_type " & _
'            " inner join fa_slmas fa on fa.slcode =a.CUSTCODE " & _
'            " where  a.CONTRACTDATE between '2016-01-01' and '" & Format(yldate, "yyyy-mm-dd") & "' ) x group by Saleorder,slname , CONTRACTDATE order by slname  ", db, adOpenStatic, adLockBatchOptimistic
'         Else
'            temprs.Open " select  slname as description,isnull(Saleorder,0) code, CONTRACTDATE from ( select a.cont_no Saleorder,   isnull(ProdAlias,'') slname  ,a.DATE CONTRACTDATE,a.DATE CONTRACTDATE ,a1.cont_no,a1.date ddate  from WVG_GRPCONTDT b " & _
'            " inner join dbo.WVG_GRPCONTHD a ON a.CONT_NO = b.CONT_NO AND a.CONT_TYPE = b.CONT_TYPE " & _
'            " inner join fa_slmas fa on fa.slcode =a.CUST_CODE " & _
'            " where  (a.DIVCODE = '11') AND (a.CANCELLED = 'N') AND (ISNULL(b.CANFLG, 'N') <> 'Y') and  (ISNULL(b.METERS, 0) - ISNULL(b.Des_OrdMeters, 0)- ISNULL(b.QTY_CANCEL, 0) > 0) " & _
'            " AND (ISNULL(a.proj_flg, 'N') = 'Y') AND (ISNULL(a.processflg, 'N') = 'N') " & _
'            " Union All " & _
'            " select a.CONTRACTNO  Saleorder,  isnull(ProdAlias,'') slname   ,a.CONTRACTDATE   from EX_SALESCONTRACTdt  b" & _
'            " inner join dbo.EX_SALESCONTRACThd a ON a.CONTRACTNO = b.CONTRACTNO AND a.inv_type  = b.inv_type " & _
'            " inner join fa_slmas fa on fa.slcode =a.CUSTCODE " & _
'            " where  a.CONTRACTDATE between '2016-01-01' and '" & Format(yldate, "yyyy-mm-dd") & "' ) x group by Saleorder,slname , CONTRACTDATE order by slname  ", db, adOpenStatic, adLockBatchOptimistic
''
'         End If
'
'
'          Lv_SaleOrder.ListItems.clear
'           Dim itmx As ListItem
'
'
'
'
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                  ' Set itmX = Lv_SaleOrder.ListItems.Add(, , "")
'                    Set itmX1 = Lv_SaleOrder.ListItems.Add(, , Mid(Trim(temprs!Description), 1, 50))
'
'                    itmX1.SubItems(1) = temprs!code
'                    itmX1.SubItems(2) = temprs!contractdate
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close


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
'    temprs.Open "select s.aliasSortname  ALSortName from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where SaleOrder_no= '" & DataCombo5.Text & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from RM_ArrivalData where divcode='11' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND s.sortno between '" & b1 & "' and '" & B2 & "' and bhd.godowncode between '" & Fgod & "' and  '" & TGod & "' group by s.aliasSortname", db, adOpenStatic, adLockBatchOptimistic
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



intervalMinutes = -1

End Sub

Private Sub CmdExit_Click()
Unload Me
End Sub




Private Sub ListPO__Click()


End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
'  Call ToNumNew(Text4, 9, KeyAscii, 0)
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "add" Then
    If KeyCode = 13 Then
    
         For I = 1 To Lv_Sort.ListItems.Count '- 1
             Lv_Sort.ListItems.Item(I).Checked = False
        Next I
    Dim ChkFlg As String
        For I = 1 To Lv_Sort.ListItems.Count

           ' If Lv_Sort.ListItems.Item(I).Checked Then
            If val(Trim(Lv_Sort.ListItems(I).SubItems(17))) >= val(Text3.Text) And val(Trim(Lv_Sort.ListItems(I).SubItems(17))) <= val(Text4.Text) Then
                Lv_Sort.ListItems.Item(I).Checked = True
              
                ChkFlg = "Y"
            End If
           
            
         Next I
         txt_mtrs.Text = "0"
         Text2.Text = "0"
           For I = 1 To Lv_Sort.ListItems.Count
            If Lv_Sort.ListItems.Item(I).Checked Then
                txt_mtrs.Text = val(txt_mtrs.Text) + val(Trim(Lv_Sort.ListItems(I).SubItems(8)))
                Text2.Text = val(Text2.Text) + 1
            End If
        Next I
         
    End If
End If
End Sub

Private Sub Text4_KeyPress(KeyAscii As Integer)
'  Call ToNumNew(Text4, 9, KeyAscii, 0)
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub ListPO_Click()
   For I = 1 To ListPO.ListItems.Count '- 1
        If ListPO.ListItems.Item(I).Checked Then
            txtfields(29).Text = Trim(ListPO.ListItems(I).SubItems(2))
        End If
             
   Next I
End Sub

Private Sub Text5_Change()
Dim itm6 As ListItem
On Error Resume Next
With Lv_Const
    Set itm = .FindItem(Trim(UCase(Text5.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        ListPO.ListItems(ilastindex).Bold = False
        ListPO.ListItems(ilastindex).ForeColor = vbBlack

        itm.EnsureVisible
        lastindex = itm.Index
        ListPO.ListItems(lastindex).Selected = True
        ilastindex = lastindex

        ListPO.ListItems(ilastindex).Bold = True
        ListPO.ListItems(ilastindex).ForeColor = vbBlue


        ListPO.SetFocus
        Text5.SetFocus
    End If
End With
Set itm = Nothing
ilastindex = 1
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




'       Call ChkPack
'       Call ChkGrade

       Lv_Sort.ListItems.Clear
       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear
        DB.Execute "truncate table  TmpRPackDetails" & TLocalIPAdd & ""
        
        LV_Grade.ListItems.Clear
           Dim i123 As Integer
        i12 = 1
         For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
       
            sortType = Trim(Lv_Const.ListItems(I).SubItems(4))
             Set Rs = New Recordset

'                Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & ProductCode & "' and lot_code='" & LotCode & "'  AND  a.pack_year='" & packyear & "' and a.pack_no between " & packno & " and " & packno & " and isnull(invoiced,'N')='N' " & _
'                       " order by pack_year,pack_no", db
'               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' and prod_date>= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"

               Rs.Open "select distinct  a.Lot_year,a.lot_code,a.Product_code  from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & Divcode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' " & _
                       " and (a.Docno not in (select aa.prddocno  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode and aa.divcode='" & Divcode & "' ) or a.pack_no not in (select aa.spack_no  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode  and aa.divcode='" & Divcode & "') ) order by lot_code", DB

              Do While Not Rs.EOF
                        Set lj12 = LV_Grade.ListItems.ADD(, , Rs!lot_code)
                        Balenos = Balenos & "," & Rs!lot_code & ""

                        LV_Grade.ListItems(LV_Grade.ListItems.Count).ListSubItems.ADD , , Rs!Lot_year
                        LV_Grade.ListItems(LV_Grade.ListItems.Count).ListSubItems.ADD , , Rs!lot_code
                        LV_Grade.ListItems(LV_Grade.ListItems.Count).ListSubItems.ADD , , Rs!Product_code

                        i1 = i1 + 1
                    Rs.MoveNext
              Loop

         
      End If

     Next I
     Exit Sub
        
        
        
        
        
        
'        For I = 1 To Lv_Const.ListItems.count
'
'
'        If Lv_Const.ListItems.Item(I).Checked Then
'            sortType = Trim(Lv_Const.ListItems(I).SubItems(7))
'            Set temprs = New Recordset
'          'temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from RM_ArrivalData where divcode='" & DivCode & "' and date>'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & DivCode & "' AND DocDt <= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", db, adOpenStatic, adLockBatchOptimistic
'
'            'db.Execute "insert into TmpRPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs) "
'          ' " values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & Val(Rs!Docno) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & T & ")"
'        End If
'        Next I
        
        
        
    txt_mtrs.Text = "0"
    Text2.Text = "0"
       ' Dim i1 As Integer
        i1 = 1
         For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
       
            sortType = Trim(Lv_Const.ListItems(I).SubItems(4))
             Set Rs = New Recordset

'                Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & ProductCode & "' and lot_code='" & LotCode & "'  AND  a.pack_year='" & packyear & "' and a.pack_no between " & packno & " and " & packno & " and isnull(invoiced,'N')='N' " & _
'                       " order by pack_year,pack_no", db
'               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' and prod_date>= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"

               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & Divcode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' " & _
                       " and (a.Docno not in (select aa.prddocno  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode and aa.divcode='" & Divcode & "' ) or a.pack_no not in (select aa.spack_no  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode  and aa.divcode='" & Divcode & "') ) order by pack_year,pack_no", DB

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
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Format(Rs!PROD_DATE, "dd/mm/yyyy") ' Balance Packs
                         Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!docNo
                        
                       ' txt_mtrs.Text = Val(txt_mtrs.Text) + Rs!pack_wt
                      '  Text2.Text = Val(Text2.Text) + 1
'                        db.Execute "insert into TmpRPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs,prddate,prddocno) " & _
'                                    " values('" & Rs!Product_code & "', '" & Rs!Description & "','" & Rs!pack_year & "','" & Rs!packno_code & "','" & Rs!pack_no & "','" & Rs!pack_no & "','" & Rs!pack_type & "', '" & Rs!lot_code & "',0, '" & Rs!GODOWN_CODE & "','" & Rs!Lot_year & "','N'," & i1 & " ,'" & Rs!pack_wt & "','" & (Rs!pack_wt + Rs!TARE) & "','" & Format(Rs!PROD_DATE, "yyyy-mm-dd") & "','" & (Rs!Docno) & "' )"
'
                       ' Lv_Sort.ListItems.Item(Lv_Sort.ListItems.count).Checked = True
                        i1 = i1 + 1
              Rs.MoveNext
              Loop

         
      End If

     Next I
      '  (product_code varchar(12) ,description varchar(50),pack_year numeric(6),packno_code varchar(4),spack_no numeric(10),epack_no numeric(10),pack_type varchar(5),lot_code varchar(9),packchrg_wt numeric(9,3),Rate numeric(9,2),GODOWN_CODE varchar(3),Lot_year numeric(9),printStatus varchar(2),id int ,nett_kgs numeric(9,3),gross_kgs numeric(9,3))"
 Exit Sub

err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub

Private Sub Lv_Product_Click()

On Error GoTo err_lvcustclick
       Dim gradename As String
      Dim stat As Boolean
      Dim Productlist As String
      Dim lot As String
      stat = False
      Productlist = ""
      lot = ""

'         Chkconst.value = False
'        For I = 1 To Lv_Const.ListItems.count
'        If Lv_Const.ListItems.Item(I).Checked Then
'              sortType = Trim(Lv_Const.ListItems(I).SubItems(1))
'             sortin = sortin + ",'" + Trim(Lv_Const.ListItems(I).SubItems(1)) + "'"
'          End If
'        Next

'        If Len(sortin) <= 1 Then
'        MsgBox "select sort name", vbInformation, head
'        End If

      packin = ""

'       For I = 1 To LV_Pack.ListItems.count
'        If LV_Pack.ListItems.Item(I).Checked Then
'
'             packin = packin + ",'" + Trim(LV_Pack.ListItems(I).SubItems(1)) + "'"
'          End If
'        Next
'        If Len(packin) <= 1 Then
'        MsgBox "select Pack Type", vbInformation, head
'        Exit Sub
'        End If



        For I = 1 To Lv_Product.ListItems.Count
        If Lv_Product.ListItems.Item(I).Checked Then
           lot = lot + ",'" + Trim(Lv_Product.ListItems(I).SubItems(1)) + "'"
           Productlist = Productlist + ",'" + Trim(Lv_Product.ListItems(I).SubItems(1)) + "'"
           stat = True
        End If
        Next

        If Len(Productlist) <= 1 Then
        MsgBox "select Product ", vbInformation, head
        End If
        Productlist = Mid$(Productlist, 2, Len(Productlist))
       ' packin = Mid$(packin, 2, Len(packin))
        lot = Mid$(Trim(lot), 2, Len(Trim(lot)))
        
  
         Lv_Sort.ListItems.Clear
       
        
        
        If stat Then
            
               
        
    txt_mtrs.Text = "0"
    Text2.Text = "0"
       ' Dim i1 As Integer
        i1 = 1

           ' sortType = Trim(Lv_Const.ListItems(i).SubItems(4))
             Set Rs = New Recordset

'                Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where a.docno='" & Packdocno & "' and ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & ProductCode & "' and lot_code='" & LotCode & "'  AND  a.pack_year='" & packyear & "' and a.pack_no between " & packno & " and " & packno & " and isnull(invoiced,'N')='N' " & _
'                       " order by pack_year,pack_no", db
'               Rs.Open "select b.description, a.* from ig_packnos a inner join ig_product b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & DivCode & "' and a.product_code='" & sortType & "' and isnull(bo_no,'0')='0'  and isnull(invoiced,'N')='N' and prod_date>= '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"

               Rs.Open "select b.description, a.* from ig_rpacknos a inner join ig_rproduct b on a.divcode=b.divcode and a.product_code=b.product_code where  ISNULL(a.REPACK_FLG,'N')='N' AND a.divcode='" & Divcode & "' and a.product_code in (" & Productlist & ")  and isnull(invoiced,'N')='N' " & _
                       " and (a.Docno not in (select aa.prddocno  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode and aa.divcode='" & Divcode & "' ) or a.pack_no not in (select aa.spack_no  from RM_ArrivalData aa where aa.prddocno=a.docno and aa.divcode=a.divcode  and aa.divcode='" & Divcode & "') ) order by b.product_code ,pack_no", DB

              Do While Not Rs.EOF
                        Set lj1 = Lv_Sort.ListItems.ADD(, , Rs!pack_no)
                        Balenos = Balenos & "," & Rs!pack_no & ""
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Product_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!Description
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!lot_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!packno_code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_type
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , 0 'rate

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , (Rs!pack_wt - Rs!tare)
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , (Rs!pack_wt)

                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , "" 'cont no
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , "" 'cont date
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , "" ' cont type


                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , ""
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , ""
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Trim(txtfields(5).Text) ''cust code
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_year
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!pack_no
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , i1
                        
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , "0" ' Balance Packs
                        Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Format(Rs!PROD_DATE, "dd/mm/yyyy") ' Balance Packs
                         Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , Rs!docNo
                        
                       ' txt_mtrs.Text = Val(txt_mtrs.Text) + Rs!pack_wt
                      '  Text2.Text = Val(Text2.Text) + 1
'                        db.Execute "insert into TmpRPackDetails" & TLocalIPAdd & "(product_code,description,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,packchrg_wt,GODOWN_CODE,Lot_year,printStatus,id,nett_kgs,gross_kgs,prddate,prddocno) " & _
'                                    " values('" & Rs!Product_code & "', '" & Rs!Description & "','" & Rs!pack_year & "','" & Rs!packno_code & "','" & Rs!pack_no & "','" & Rs!pack_no & "','" & Rs!pack_type & "', '" & Rs!lot_code & "',0, '" & Rs!GODOWN_CODE & "','" & Rs!Lot_year & "','N'," & i1 & " ,'" & Rs!pack_wt & "','" & (Rs!pack_wt + Rs!TARE) & "','" & Format(Rs!PROD_DATE, "yyyy-mm-dd") & "','" & (Rs!Docno) & "' )"
'
                       ' Lv_Sort.ListItems.Item(Lv_Sort.ListItems.count).Checked = True
                        i1 = i1 + 1
              Rs.MoveNext
              Loop

         
      End If

   
        
        
       ' End If
        
        
        
  
  Exit Sub
       ' Lv_Const.ListItems.clear
      '  db.Execute "truncate table  TmpRPackDetails" & TLocalIPAdd & ""
        If stat Then
'        For i = 1 To Lv_Const.ListItems.Count
'
'        If LV_Grade.ListItems.Item(i).Checked Then
'        sortType = Trim(LV_Grade.ListItems(i).SubItems(1))
        Set temprs = New Recordset
         ' temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from RM_ArrivalData where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
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
             DB.Execute "insert into TmpRPackDetails" & TLocalIPAdd & "(sortname,sortno,grade,totalmeters,netwt,baleno,plength,systemid,Grosswt,tarewt,docno,docdt,pack,noofpcs) values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & val(Rs!docNo) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & t & ")"
         End If
         Rs.MoveNext
         Loop

         End If

        End If
       ' Next i

       ' End If
        Set temprs = New Recordset
        temprs.Open "SELECT  *from TmprPackDetails" & TLocalIPAdd & " order by sortno ", DB, adOpenStatic, adLockReadOnly

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
        DB.Execute "truncate table  TmpRPackDetails" & TLocalIPAdd & ""
         Lv_Sort.ListItems.Clear
        For I = 1 To LV_Pack.ListItems.Count

        If LV_Pack.ListItems.Item(I).Checked Then
            sortType = Trim(LV_Pack.ListItems(I).SubItems(1))
            Set temprs = New Recordset
         ' temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from RM_ArrivalData where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and s.aliasSortname= '" & sortType & "' and '" & B2 & "' and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
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
             DB.Execute "insert into TmpRPackDetails" & TLocalIPAdd & "(sortname,sortno,grade,totalmeters,netwt,baleno,plength,systemid,Grosswt,tarewt,docno,docdt,pack,noofpcs) values('" & Rs!sortname & "', '" & Rs!sortno & "','" & Rs!gradename & "','" & Rs!totmtrs & "','" & Rs!net_wt & "','" & Rs!baleno & "','" & strpc_length & "', '" & LocalIPAdd & "', '" & Rs!GrossWt & "','" & Rs!TAREWT & "','" & val(Rs!docNo) & "' ,'" & Format(Rs!DOCDT, "yyyy-mm-dd") & "','" & Rs!pack & "'," & t & ")"
         End If
         Rs.MoveNext
         Loop

         End If

        End If
        Next I


        Set temprs = New Recordset
        temprs.Open "SELECT  *from TmpRPackDetails" & TLocalIPAdd & " order by sortno ", DB, adOpenStatic, adLockReadOnly

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
 If Opt = "add" Then
 Lv_Sort.ListItems.Clear
       fgod = Mid(DataCombo3.Text, InStr(DataCombo3.Text, "--") + 2, (Len(DataCombo3.Text) - InStr(DataCombo3.Text, "--")))
       tgod = Mid(DataCombo4.Text, InStr(DataCombo4.Text, "--") + 2, (Len(DataCombo4.Text) - InStr(DataCombo4.Text, "--")))

       ' Lv_Const.ListItems.clear

               Lv_Const.ListItems.Clear
        For I = 1 To Lv_SaleOrder.ListItems.Count

        If Lv_SaleOrder.ListItems.Item(I).Checked Then
            sortType = Trim(Lv_SaleOrder.ListItems(I).SubItems(1))

            Dim li2 As ListItem
             Set temprs = New Recordset
      Dim qry As String

        If txtfields(0).Text = "KN" Then vt = "IG_FABCONTHD": VT1 = "IG_FABCONTDT" Else vt = "IG_CONTHD": VT1 = "IG_CONTDT"
        LookUp.Clear = True


            If UCase(CustID) <> "COTTON" Then
            qry = " SELECT  b.cont_no,b.Cont_type,b.Date, c.SNO""SNO"",c.PRODUCT_CODE""ProductCode"",d.short_Code""ShortCode"",c.Rate,Description ""Product Name"",isnull(hsn,'') ""HSN Code"",b.ORDREFNO ,IsNull(c.Kgs, 0)  KGS, IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) BalKgs ,ISNULL(c.Packs,0) Packs ,ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) BalPack " & _
                    " from " & vt & " b," & VT1 & " c,ig_product d,IG_Bodt e  " & _
                    " where b.Cont_no*=e.Cont_no and b.Cont_Type*=e.Cont_Type and b.Divcode *=e.Divcode and c.product_code*=e.product_code  and c.product_code=d.product_code and kgs-isnull(qty_delivered,0)>0 " & _
                    " and  isnull(d.actflg,0)=1 and b.divcode=c.divcode and b.divcode=D.divcode and b.cont_no=c.cont_no and b.cont_type=c.cont_type AND B.DIVCODE='" & Divcode & "' " & _
                    " AND b.CUST_CODE='" & sortType & "' and b.cont_type='" & Trim(txtfields(0).Text) & "' " & _
                    " Group by b.cont_no,b.Cont_type,b.Date, " & _
                    " hsn,c.SNO,c.PRODUCT_CODE,d.short_Code,c.Rate ,Kgs-isnull(Qty_delivered,0),D.Description,b.cont_no,b.Date ,c.Product_Code,c.Kgs,c.Packs,c.Cancel_Packs,c.Cancel_Kgs,b.ORDREFNO  " & _
                    " Having IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) > 0 " & _
                    " and ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) > 0 "
            Else
                  qry = " SELECT b.cont_no,b.Cont_type,b.Date, c.SNO""SNO"",c.PRODUCT_CODE""ProductCode"",d.short_Code""ShortCode"",c.Rate,Description ""Product Name"",isnull(hsn,'') ""HSN Code"",b.ORDREFNO,IsNull(c.Kgs, 0)  KGS, IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) BalKgs ,ISNULL(c.Packs,0) Packs, ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) BalPack " & _
                    " from " & vt & " b," & VT1 & " c,ig_product d,IG_Bodt e  " & _
                    " where b.Cont_no*=e.Cont_no and b.Cont_Type*=e.Cont_Type and b.Divcode *=e.Divcode and c.product_code*=e.product_code  and c.product_code=d.product_code and kgs-isnull(qty_delivered,0)>0 " & _
                    " and b.divcode=c.divcode and b.divcode=D.divcode and b.cont_no=c.cont_no and b.cont_type=c.cont_type AND B.DIVCODE='" & Divcode & "' " & _
                    " AND b.CUST_CODE='" & sortType & "' and b.cont_type='" & Trim(txtfields(0).Text) & "'" & _
                    " Group by b.cont_no,b.Cont_type,b.Date, " & _
                    " hsn,c.SNO,c.PRODUCT_CODE,d.short_Code,c.Rate ,Kgs-isnull(Qty_delivered,0),D.Description,b.cont_no,b.Date ,c.Product_Code,c.Kgs,c.Packs,c.Cancel_Packs,c.Cancel_Kgs,b.ORDREFNO  " & _
                    " Having IsNull(c.Kgs, 0) - (Sum(IsNull(e.Nett_Kgs, 0)) + IsNull(Cancel_kgs, 0)) > 0 " & _
                    " and ISNULL(c.Packs,0) -  (SUM(ISNULL(e.EPacK_No,0) - ISNULL(e.SPack_No,1) + 1) + ISNULL(Cancel_Packs,0)) > 0 "

            End If
            temprs.Open qry, DB, adOpenStatic, adLockBatchOptimistic
            'temprs.Open "select s.aliasSortname  ALSortName,s.SortNo from wvg_balehd Bhd,Ig_Product s,wvg_loomtype t where Bhd.SaleOrder_no='" & sortType & "' and Bhd.SortNo=s.sortno  and bhd.loom_type*=t.loom_type and (despatch_REFNo is null or despatch_REFNo in (select isnull(BO_NO,'')bo_No from RM_ArrivalData where divcode='" & divcode & "' and date>'" & Format(DTPicker1.Value, "yyyy-mm-dd") & "')) AND ISNULL(REPACKFLG,'N') = 'N' AND Divcode='" & divcode & "' AND DocDt <= '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "'  and bhd.godowncode between '" & fgod & "' and  '" & tgod & "' group by s.aliasSortname,s.SortNo", DB, adOpenStatic, adLockBatchOptimistic
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    'Set li = Lv_Const.ListItems.Add(, , temprs!ALSortName)
                     Set lj1 = Lv_Const.ListItems.ADD(, , Mid(temprs!ORDREFNO, 1, 150))
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ProductCode
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Rate
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Sno
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!cont_No
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!Date
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!cont_type
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ShortCode
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , temprs!ORDREFNO
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.add , , Trim(CStr(sortType))

                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!Cont_type
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!cont_no
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Format(temprs!Date, "dd/mm/yyyy")
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!ProductCode
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!ShortCode
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!packs
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!kgs
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!balpack
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!balkgs
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!rate
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , Trim(CStr(sortType))




                    temprs.MoveNext
                Loop
            End If
            temprs.Close

         End If
         Next

    Call ChkGrade

 End If
    Exit Sub
er_loadabale:
     MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub

Private Sub Lv_Sort_Click()
On Error GoTo er_loadabale
        'Lv_Sort.ListItems.clear
        Exit Sub
txt_mtrs.Text = "0"
Text2.Text = "0"
 If Opt = "add" Then
        Dim sid As String
        Dim balpack, addedpack As Double
        

        balpack = 0
        For I = 1 To Lv_Const.ListItems.Count
        If Lv_Const.ListItems.Item(I).Checked Then
                balpack = balpack + Trim(Lv_Const.ListItems(I).SubItems(8))
            End If
        Next I
        
        addedpack = 0
        For I = 1 To Lv_Sort.ListItems.Count
            If Lv_Sort.ListItems.Item(I).Checked Then
                sid = Trim(Lv_Sort.ListItems(I).SubItems(8))
                
                addedpack = addedpack + 1
            End If
        Next I
        
        
'        If addedpack > balpack Then
'            MsgBox "Despatch Pack Cannot be Greater than Order Pack", vbInformation, head
'            Chkconst.value = 0
'        Exit Sub
'
'        End If
        
        For I = 1 To Lv_Sort.ListItems.Count

        If Lv_Sort.ListItems.Item(I).Checked Then
            sid = Trim(Lv_Sort.ListItems(I).SubItems(8))
            balpack = Trim(Lv_Sort.ListItems(I).SubItems(19))
            
            
            
            txt_mtrs.Text = Format(val(txt_mtrs.Text) + val(Trim(Lv_Sort.ListItems(I).SubItems(8))), "#0.000")
            Text2.Text = val(Text2.Text) + 1
            
            
            
            'Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,RM_ArrivalData bo ,RM_ArrivalData HD ,wvg_costsheet sh Where HD.divcode = BO.divcode AND dt.CUST_CODE =hd.CUST_CODE And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and hd.cust_code='" & sWevType & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly

            'Dim ljp3 As ListItem
           ' If temprs.RecordCount > 0 Then
              '  Do While Not temprs.EOF
                  '  Sql = "update TmpRPackDetails" & TLocalIPAdd & " set printStatus='Y' where id='" & sid & "' "
                   ' db.Execute Sql
                   ' Set ljp3 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordNo
                   ' temprs.MoveNext
                'Loop
            'End If
            'temprs.Close
        Else
         sid = Trim(Lv_Sort.ListItems(I).SubItems(18))
'         Sql = "update TmpRPackDetails" & TLocalIPAdd & " set printStatus='N' where id='" & sid & "' "
'                    db.Execute Sql
        End If
        Next I
'

'        Set temprs = New Recordset
'        temprs.Open "SELECT sum(nett_kgs) from  TmpRPackDetails" & TLocalIPAdd & " where isnull(printStatus,'N')='Y'  ", db, adOpenStatic, adLockReadOnly
'        If IsNull(temprs(0)) = False Then
'        txt_mtrs.Text = temprs(0)
'        Else
'        txt_mtrs.Text = "0"
'        End If
 End If
Exit Sub
er_loadabale:
     MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub


Private Function JoinHighLow(lHigh As Long, lLow As Long) As Long
JoinHighLow = (lHigh * &H100) Or lLow
End Function

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "add" Then
'If Index = 2 Then
' Call ToUpCase(TXTFIELDS(Index), KeyAscii)
'End If
End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Then
 Dim qry As String
If Index = 3 Then
        sortType = ""
'    stbar.Panels(2).Text = "Select Delivery Code from the List"
'        For I = 1 To Lv_SaleOrder.ListItems.count
'
'        If Lv_SaleOrder.ListItems.Item(I).Checked Then
'            sortType = Trim(Lv_SaleOrder.ListItems(I).SubItems(1))
'         End If
'         Next I

'                LookUp.clear = True
'                LookUp.query = "select a.delcode as DeliveryCode,a.CName as DeliveryName,a.gstinno as [GSTIN No.]  from ig_deladd a where slcode='" & Trim(txtfields(5).Text) & "'"
'                LookUp.DefCol = "DeliveryName"
'                LookUp.ALIGN = "1500,3500,2500"
'                LookUp.Caption = "Delivery Detail Listing"
'                LookUp.Show vbModal
'                If LookUp.Cancel = False Then
'                    txtfields(3).Text = LookUp.Fields(0)
'                    txtfields(4).Text = LookUp.Fields(1)
'                    LookUp.clear = True
'                Else
'                    txtfields(3).Text = ""
'                    txtfields(3).SetFocus
'                   ' Cancel = True
'                    Exit Sub
'                End If
'

End If

    If Index = 5 Then
   '  Call GetPartyType("CUSTOMER", "slcode")
    LookUp.Clear = True
    testr = ""
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton") & "%"
    Else
        sup = ""
    End If
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from FA_SLMAS WHERE SLCODE LIKE '" & sup & "'", db
'    If Not rs4(0) = 0 Then
'        Set Rs = New Recordset
'        ''rs.Open "select SLcode from FA_SLMAS where SLcode = '" & txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'        If globalarrivalorder = "C" Then
'            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & TXTFIELDS(2).Text & "'  and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where  a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", db, adOpenStatic
'        Else
'            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & TXTFIELDS(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where   divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", db, adOpenStatic
'        End If
'
'        If Rs.BOF Then
           ' Label15.Caption = "Supplier List"
           ' StatusBar1.Panels(2).Text = "Select Supplier Code From the List"
            If globalarrivalorder = "C" Then
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where    a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))"
            Else
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'"
            End If
            
            Set rsnew = New Recordset
            If globalarrivalorder = "C" Then
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
            End If
            grpcode = ""
            If rsnew.RecordCount > 0 Then
                grpcode = rsnew("GROUPCODE")
            End If
            
            StrAppQry = ""
            If POApproval = True Then
                StrAppQry = " and isnull(a.Appflg,'N')='Y' "
            End If
            
            LookUp.Clear = True

            If globalarrivalorder = "C" Then
            If grpcode = "" Then
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where   (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "" & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & StrAppQry & ""
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where    (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")" & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")"
            End If

            Else
            
            If grpcode = "" Then
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "" & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & StrAppQry & ""
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  divcode='" & Divcode & "' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")" & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")"
            End If
            
            End If




                   ' LookUp.query = "SELECT distinct Slcode 'Customer Code',slname 'Customer Name' from fa_slmas where   1=2 " & custstr
'                    LookUp.query = "select distinct bo_type ""DeliveryType"" ,cast(bo_no as int) BO_NO ,Bo_Date Date,b.slname ""Customer Name"",b.slcode from RM_ArrivalData a inner join fa_slmas b on a.cust_code=b.slcode  where isnull(Packed,'N')<>'Y' order by  cast(bo_no  as int)"
                    LookUp.DefCol = "Customer Name"
                    LookUp.ALIGN = "1500,3500"
                    LookUp.Caption = "Supplier Listing"
                   
                    LookUp.Show vbModal

                    If LookUp.Cancel = False Then
                            On Error Resume Next
                        Lv_Sort.ListItems.Clear
                                SuppType = LookUp.Fields("Supptype")
                        Set Rs = New Recordset
                        Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                        If Not Rs.EOF Then
                               STATEFLAG = Rs(0)
                        End If
                        
                         If STATEFLAG <> "F" And SuppType = "R" Then
                  
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
                           End If
                    
                        txtfields(5).Text = LookUp.Fields(0)
                        Text6.Text = LookUp.Fields(1)
                        sCode = LookUp.Fields(0)
                        Sname = LookUp.Fields(1)
                        
                        custgrp = LookUp.Fields(4)
                        
        '                Qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
        '                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P'" & _
        '                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
        '                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & _
        '                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & Lookup.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as VARCHAR(10)) "
         
                        If globalarrivalorder = "C" Then
                             If custgrp = "" Then
                                qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                                  " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                                  " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                                  " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                                  " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X order by cast(contno as VARCHAR(10)) "
                            Else
                                qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                                  " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                                  " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                                  " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                                  " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "' )X order by cast(contno as VARCHAR(10)) "
                            End If
        
                        Else
        
                        
                            If custgrp = "" Then
                                qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                                  " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                                  " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                                  " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                                  " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as VARCHAR(10)) "
                            Else
                                qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                                  " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "'" & _
                                  " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                                  " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                                  " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "')X order by cast(contno as VARCHAR(10)) "
                            End If
                        End If
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                LstPO.Clear
                ListPO.ListItems.Clear
                ListPO.ColumnHeaders.Clear
                 
                ListPO.ColumnHeaders.ADD , , "PO No.", 1300, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "PO Date", 1800, lvwColumnCenter
                ListPO.ColumnHeaders.ADD , , "Variety Code", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Variety Name", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Quantity", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Candy Rate", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Rate per Unit", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "DivCode", 1400, lvwColumnLeft
               ' ListPO.ColumnHeaders.ADD , , "PONO", 1400, lvwColumnLeft
                Do Until Lrs.EOF
                    ''LstPO.AddItem Padl(Lrs("Contno"), 8, " ") & Space(1) & Padl(Format(Lrs("contdt"), "dd/mm/yyyy"), 10, " ") & Space(2) & Padr(Lrs("Varcode"), 11, " ") & Space(1) & Padr(Lrs("Varname"), 17, " ") & Space(1) & Padl(Lrs("BalQty"), 10, " ") & Space(2) & Padl(Lrs("candyrate"), 10, " ") & Space(2) & Padr(Lrs("Rateunit"), 10, " ") & Space(4) & Padr(Lrs!Divcode & "-" & getMasterName("ABBR", "PP_DIVMAS", "DIVCODE", Lrs!Divcode), 20, " ")
                    Set itmx = ListPO.ListItems.ADD(, , Lrs("Contno"))
                    itmx.Tag = Lrs("Contno")
                    itmx.SubItems(1) = Format(Lrs("contdt"), "dd/mm/yyyy")
                    itmx.SubItems(2) = Lrs("Varcode")
                    itmx.SubItems(3) = Lrs("Varname")
                    itmx.SubItems(4) = Lrs("BalQty")
                    itmx.SubItems(5) = Lrs("candyrate")
                    itmx.SubItems(6) = Lrs("Rateunit")
                    itmx.SubItems(7) = Lrs!Divcode ''& "-" & getMasterName("ABBR", "PP_DIVMAS", "DIVCODE", Lrs!Divcode)
                    Lrs.MoveNext
                Loop
'                Frame14.Visible = True
'                Frame14.ZOrder
'                SSTab1.Enabled = False
                ''LstPO.SetFocus
                ListPO.SetFocus
                Exit Sub
'                Txtfields(2).Text = sCode
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
                            
                            
'                            LookUp.clear = True
'                            Exit Sub
'                    Else
'                        TXTFIELDS(5).Text = ""
'                        TXTFIELDS(5).SetFocus
'                        LookUp.clear = True
'                        Cancel = True
'
'                    End If
    End If

    If Index = 0 Then
'               LookUp.clear = True
'                    LookUp.query = "SELECT distinct bo_type""DeliveryType"",b.Description from  ig_doccontrol a,ig_botype b where b.bo_type = a.doc_ref and a.doc_type='B' and a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.description like '%WASTE%'"
''                    LookUp.query = "select distinct bo_type ""DeliveryType"" ,cast(bo_no as int) BO_NO ,Bo_Date Date,b.slname ""Customer Name"",b.slcode from RM_ArrivalData a inner join fa_slmas b on a.cust_code=b.slcode  where isnull(Packed,'N')<>'Y' order by  cast(bo_no  as int)"
'                    LookUp.DefCol = "Description"
'                    LookUp.ALIGN = "1500,3500"
'                    LookUp.Caption = "Delivery Detail Listing"
'
'                    LookUp.Show vbModal
'
'                    If LookUp.Cancel = False Then
'                            On Error Resume Next
'
'                            txtfields(0).Text = LookUp.Fields(0)
'                            txtfields(5).SetFocus
'                          LookUp.clear = True
'                          txtfields(5).SetFocus
'                          Exit Sub
'                    Else
'                            Call BUTTON_Click(10)
'                            LookUp.clear = True
'                            Exit Sub
'                    End If
    End If
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  intervalMinutes = -1
'  Call BUTTON_Click(11)
'    Exit Sub
'    I = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
'    If I = vbYes Then
'     Reset
'        Unload Me
'    End If
End Sub

Private Sub ProductLoad()
intervalMinutes = -1
On Error Resume Next
Set Rs = New Recordset
 Rs.Open "select distinct a.PRODUCT_CODE as Code,a.description as Description from IG_RPRODUCT a ,IG_RPACKNOS B where a.divcode=b.divcode and  A.PRODUCT_CODE=B.PRODUCT_CODE AND A.product_code like 'W%' AND isnull(invoiced,'N')='N' and a.divcode='" & Divcode & "'", DB

    Set temprs = New Recordset
    temprs.Open "select distinct a.pack_type,a.description from ig_packtype a", DB, adOpenStatic, adLockBatchOptimistic
    LV_PackCode.ListItems.Clear
    Dim li11 As ListItem
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
             Set lj11 = LV_PackCode.ListItems.ADD(, , Mid(temprs!Description, 1, 150))
            LV_PackCode.ListItems(LV_PackCode.ListItems.Count).ListSubItems.ADD , , temprs!pack_type
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    
    
    Set temprs = New Recordset
    temprs.Open "SELECT DISTINCT A.PACKNO_CODE,A.DESCRIPTION FROM ig_packnotype a   ", DB, adOpenStatic, adLockBatchOptimistic 'where PACK_TYPE in (1,3,5,7)
    LV_PackCode.ListItems.Clear
 
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
             Set lj1 = LV_PackCode.ListItems.ADD(, , Mid(temprs!Description, 1, 150))
            LV_PackCode.ListItems(LV_PackCode.ListItems.Count).ListSubItems.ADD , , temprs!packno_code
            temprs.MoveNext
        Loop
    End If
    temprs.Close


Set Rs = New Recordset
Rs.Open "select distinct a.PRODUCT_CODE as Code,a.description as Description from IG_RPRODUCT a ,IG_RPACKNOS B where a.divcode=b.divcode and  A.PRODUCT_CODE=B.PRODUCT_CODE AND A.product_code like 'W%' AND isnull(invoiced,'N')='N' and a.divcode='" & Divcode & "' ", DB
If Not Rs.EOF Then
  
  Lv_Product.ListItems.Clear
  Do While Not Rs.EOF
                    'Set li = Lv_Product.ListItems.Add(, , temprs!ALSortName)
        Set lj1 = Lv_Product.ListItems.ADD(, , Mid(Rs!Description, 1, 150))
        
        Lv_Product.ListItems(Lv_Product.ListItems.Count).ListSubItems.ADD , , Rs!Code
    
        Rs.MoveNext
    Loop
   Lv_Stock.ListItems.Clear
  Frame12.Visible = True
  Frame12.ZOrder 0
Else

  MsgBox "There is no Stock for this product", vbInformation, head
  Exit Sub
    SSTab3.Visible = True
    txtfields(18).SetFocus
  Buttonframe.Visible = True
End If
   
End Sub


Private Sub EnableTimer()

     txtfields(4).Text = 0
        txtfields(4).Visible = True
        txtfields(4).MaxLength = 18
    Dim dblTest     As Double
    Dim strErrMsg   As String
    If Scale_Toledo_1938_ReadWeight_LbsOunces(dblTest, scaleport, CInt(9600), _
                                            "None", CInt(8), CLng(1), _
                                            "XONXOFF", strErrMsg) Then
        txtfields(4) = Trim$(dblTest)
     
        
       'db.Execute "truncate table  TmpRPackDetails" & TLocalIPAdd & ""
        ' Lv_Sort.ListItems.clear
        For I = 1 To ListPO.ListItems.Count

        If ListPO.ListItems.Item(I).Checked Then
            'PONO = Trim(ListPO.ListItems(i).SubItems(1))
            
            PONO = ListPO.ListItems.Item(I).Tag
            PODT = Trim(ListPO.ListItems(I).SubItems(1))
            Varcode = Trim(ListPO.ListItems(I).SubItems(2))
            
            baleno = 0
             txtfields(2).Text = MaxLotNo
              txtfields(0).Text = MaxNo
           Set rsnew = New Recordset
           rsnew.Open "select isnull(max(BaleNo),0) +1 from TmpBaleDetails" & TLocalIPAdd & "", DB
           If Not rsnew.EOF Then
            baleno = rsnew(0)
           End If
             
           Set rsVar = New Recordset
           rsVar.Open "select varname from rm_var where varcode='" & Varcode & "'", DB
           VarName = ""
           If Not rsVar.EOF Then
             VarName = rsVar(0)
           End If
        
             DB.Execute "insert into TmpBaleDetails" & TLocalIPAdd & "(divcode ,LotNo ,lotdt ,ArrNo ,ArrDate ,Varcode ,Varname ,BaleNo ,GrossWt,NetWt,TareWt,supcd,ContNo,Contdt ,printStatus ,id  ) values('" & Divcode & "','" & val(txtfields(2).Text) & "', '" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & val(txtfields(0).Text) & "', '" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Trim(Varcode) & "','" & VarName & "','" & val(baleno) & "','" & val(txtfields(4).Text) & "','" & val(txtfields(4).Text) - val(txtfields(3).Text) & "','" & val(txtfields(3).Text) & "', '" & Trim(txtfields(5).Text) & "','" & val(PONO) & "','" & Format(PODT, "yyyy-mm-dd") & "', 'Y',1)"
         End If
        Next I
Lv_Sort.ListItems.Clear
        Set temprs = New Recordset
        temprs.Open "SELECT  *from TmpBaleDetails" & TLocalIPAdd & " order by Baleno ", DB, adOpenStatic, adLockReadOnly

        Dim ljp3 As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
                    'sql = "insert into tmpsaleodr values('" & temprs!ordNo & "', '" & temprs!ordtype & "', '" & temprs!dispmts & "', '" & temprs!ORDMETER & "')"
                'Set ljp3 = Lv_Sort.ListItems.Add(, , Mid(Trim(temprs!SortName), 1, 150))
                Set lj1 = Lv_Sort.ListItems.ADD(, , Mid(temprs!baleno, 1, 150))
                'Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!lotno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!lotno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!LOTDT
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!VarName
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!baleno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!GrossWt
                 Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!TAREWT
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!netwt
                
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!SUPCD
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!Arrno
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!ArrDate
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!ContNo
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!contdt
                Lv_Sort.ListItems(Lv_Sort.ListItems.Count).ListSubItems.ADD , , temprs!printStatus
                If temprs!printStatus = "Y" Then
                Lv_Sort.ListItems.Item(Lv_Sort.ListItems.Count).Checked = True
                End If
                temprs.MoveNext
            Loop
        End If
        temprs.Close
        
        

    Else
        txtfields(4) = "0"
      '  lblErrorMessage = "Messages: " & strErrMsg
    End If
End Sub
Public Function Scale_Toledo_1938_ReadWeight_LbsOunces(ByRef r_dblScaleWgtLbsOz As Double, ByVal v_intComPortNumber As Integer, Optional ByVal v_intBaudRate As Integer = 9600, _
                                               Optional ByVal v_strParity As String = "None", Optional ByVal v_intDataBits As Integer = 8, _
                                               Optional ByVal v_lngStopBits As Long = 1, Optional ByVal v_strHandShaking As String = "XONXOFF", _
                                               Optional ByRef r_strErrorMessage As String) As Boolean
                                               
    ' MSCOMM32.OCX is required to be a reference in the project for this function to work properly. Early or Late Bound
    ' This function can be called from anywhere in the project allowing for instantaneous reading of weight on the scale.
    ' The 1938 will have the following communication method.
    '   :-) = Actual ASCII "smiley face" produced by the scale as "first character" in string.
    Dim wt() As String
    Dim strStartCharacter   As String
    Dim strEndCharacter     As String
    Dim strScaleResponse    As String   ' Holds scale response for interrogation
    Dim strParity           As String   ' Left char of supplied parity
    Dim strSettings         As String   ' Holds buad, parity, data, and stop bits
    
    Dim snglPounds          As Single   ' Holds whole pounds
    Dim snglOunces          As Single   ' Holds ounces
    
    Dim intLbsLocation      As Integer
    Dim intHandshaking      As Integer
    Dim intStartPos         As Integer
    Dim intEndPos           As Integer
    
    Dim datStart            As Date
    
    Dim objMSComm           As MSComm
    
On Error GoTo ErrorHandler
    
    strStartCharacter = Chr(2)
    strEndCharacter = "L"
    
    Set objMSComm = MSComm1
    
    ' Validate Com port #
    If v_intComPortNumber < 1 Or v_intComPortNumber > 16 Then
        r_strErrorMessage = "Com port number supplied, " & _
         ", is invalid. Must be between 1 and 16."
        GoTo ErrorHandler
    End If
    
    ' Validate Buad Rate
    If v_intBaudRate < 110 Or v_intBaudRate > 256000 Then
        r_strErrorMessage = "Baud rate supplied, " & v_intBaudRate & ", is invalid. Must be between 110 and 256000."
        GoTo ErrorHandler
    End If
    
    ' Validate Parity
    If LenB(v_strParity) = 0 Then
        r_strErrorMessage = "Parity MUST be set for proper scale communications!"
        GoTo ErrorHandler
    End If
    
    strParity = UCase$(Left$(v_strParity, 1))
    
    If InStrB(1, ",N,O,M,E,S", strParity, vbBinaryCompare) <= 1 Then
        r_strErrorMessage = v_strParity & " is invalid. Valid Parities are Even, Mark, None, Odd, and Space."
        GoTo ErrorHandler
    End If
    
    ' Validate Databits
    If v_intDataBits < 4 Or v_intDataBits > 8 Then
        r_strErrorMessage = v_intDataBits & " is invalid. Valid Data bits are 4,5,6,7, and 8."
        GoTo ErrorHandler
    End If
    
    ' Validate Stopbits
    If v_lngStopBits < 1 Or v_lngStopBits > 2 Then
        r_strErrorMessage = v_lngStopBits & " is invalid. Stop bits are 1, 1.5, and 2."
        GoTo ErrorHandler
    End If
    
    strSettings = Trim$(v_intBaudRate) & "," & strParity & "," & Trim$(v_intDataBits) & "," & Trim$(v_lngStopBits)
    
    Select Case UCase(v_strHandShaking)
        Case "XONXOFF"
            intHandshaking = comXOnXoff
        Case "RTS"
            intHandshaking = comRTS
        Case "RTSXONXOFF"
            intHandshaking = comRTSXOnXOff
        Case Else
            intHandshaking = comNone
    End Select
    
    With objMSComm
    
        .CommPort = v_intComPortNumber
        .Settings = strSettings
        .InputLen = 0
        .InputMode = comInputModeText
        .InBufferSize = 1024
        .OutBufferSize = 512
        .InBufferCount = 0
        .Handshaking = intHandshaking
        .PortOpen = True
        .Output = "P" & vbCr
        
        datStart = Now
        
        Do While DateDiff("s", datStart, Now) < 1
            DoEvents
        Loop
        
        strScaleResponse = Trim$(.Input)
        
        If LenB(strScaleResponse) <= 0 Then
            r_strErrorMessage = "No response from the scale."
            GoTo ErrorHandler
        End If
        wt = Split(strScaleResponse, Chr(13))
        'If InStr(1, "," & UCase(strScaleResponse), "K", vbBinaryCompare) > 1 Then
        '    r_strErrorMessage = "Scale is in Metric Kilograms."
        '    GoTo ErrorHandler
        'End If
        
       ' intStartPos = InStr(1, strScaleResponse, strStartCharacter, vbBinaryCompare)
       ' intEndPos = InStrRev(strScaleResponse, strEndCharacter, -1, vbBinaryCompare)
        
        'If intStartPos = 0 Or intEndPos = 0 Then
        '    r_strErrorMessage = "Invalide response from scale." & vbNewLine & strScaleResponse
        '    GoTo ErrorHandler
        'End If
      
         wt(2) = Trim(Replace(wt(2), " ", ""))
       wt(2) = Mid(wt(2), 3, Len(wt(2)))
        r_dblScaleWgtLbsOz = CDbl(Trim(Replace(wt(2), vbTab, "")))
        
    End With
       
    Scale_Toledo_1938_ReadWeight_LbsOunces = True

GoTo OVERERROR

ErrorHandler:
    Scale_Toledo_1938_ReadWeight_LbsOunces = False
    
    r_dblScaleWgtLbsOz = -301
    
    If LenB(r_strErrorMessage) = 0 Then
        r_strErrorMessage = Err.Number & ": " & Err.Description & vbNewLine & "Ensure Clippership or some other application is not using Com Port#: " & Trim$(v_intComPortNumber)
    End If
    
    r_strErrorMessage = r_strErrorMessage
    
OVERERROR:
    
    With objMSComm
        If .PortOpen Then
            .PortOpen = False
        End If
    End With
    
    Set objMSComm = Nothing
End Function



Private Function MaxNo() As Integer
Dim rsMax As New ADODB.Recordset
Dim iMaxNo As Integer
On Error GoTo MaxNo_Error

Set rsMax = New Recordset
    
    rsMax.Open "SELECT ISNULL(MAX(ARRNO),0)+1 FROM rm_arrival WHERE  ARRdAtE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsMax.RecordCount > 0 Then
        MaxNo = rsMax(0)
    Else
        MaxNo = "1"
    End If

Exit Function
MaxNo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaxNo of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Function

Private Function MaxLotNo() As Integer
Dim rsMax As New ADODB.Recordset
Dim iMaxNo As Integer
On Error GoTo MaxNo_Error



                     Set Rs = New Recordset
               Rs.Open "select isnull(Arrivaltransfardocno,'N') as Arrivaltransfardocno from  rm_param", DB, adOpenStatic, adLockBatchOptimistic
               If Rs("Arrivaltransfardocno") = "Y" Then
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & txtfields(29).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        
                        Set rsd = New Recordset
                        If LotNoGen = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' ", DB, adOpenStatic
                        ElseIf LotNoGen = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y'  and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf LotNoGen = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' and CatCd ='" & catcode & "' and VarCode ='" & txtfields(29).Text & "'", DB, adOpenStatic
                        End If
                        MaxLotNo = rsd("lotno")
                     Else
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & txtfields(29).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        
                        Set rsd = New Recordset
                        If Trim(LotNoGen) = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A'", DB, adOpenStatic
                        ElseIf Trim(LotNoGen) = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf Trim(LotNoGen) = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "' and VarCode ='" & txtfields(2).Text & "'", DB, adOpenStatic
                        End If
                        MaxLotNo = rsd("lotno")

             End If





Exit Function
MaxNo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaxNo of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Function



