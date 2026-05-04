VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Frm_WasteInvoice 
   Caption         =   "Waste Invoice"
   ClientHeight    =   8940
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8940
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Push to E-Invoice"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9360
      Style           =   1  'Graphical
      TabIndex        =   263
      Top             =   720
      Width           =   2175
   End
   Begin VB.Frame FrmPrint 
      Caption         =   "Print Option"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   650
      Left            =   5280
      TabIndex        =   259
      Top             =   600
      Visible         =   0   'False
      Width           =   3975
      Begin VB.CommandButton CmdPrintbtn 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2850
         TabIndex        =   262
         Top             =   150
         Width           =   915
      End
      Begin VB.OptionButton optmail 
         Caption         =   "&Auto Mail"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   240
         Left            =   1440
         TabIndex        =   261
         Top             =   270
         Width           =   1245
      End
      Begin VB.OptionButton optPrint 
         Caption         =   "&Print"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   300
         TabIndex        =   260
         Top             =   270
         Width           =   885
      End
   End
   Begin VB.Frame Frame9 
      Height          =   1695
      Left            =   8880
      TabIndex        =   253
      Top             =   6840
      Visible         =   0   'False
      Width           =   7170
      Begin VB.CommandButton cmdremok 
         Caption         =   "&Ok"
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
         Left            =   2355
         TabIndex        =   256
         Top             =   1185
         Width           =   900
      End
      Begin VB.CommandButton cmdremcancel 
         Caption         =   "&Cancel"
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
         Left            =   3555
         TabIndex        =   255
         Top             =   1200
         Width           =   900
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   600
         Left            =   120
         MaxLength       =   150
         TabIndex        =   254
         Top             =   570
         Width           =   6915
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Cancellation Remarks"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Left            =   0
         TabIndex        =   257
         Top             =   90
         Width           =   7125
      End
   End
   Begin VB.Frame Frame8 
      Height          =   1350
      Left            =   10800
      TabIndex        =   247
      Top             =   5400
      Visible         =   0   'False
      Width           =   5295
      Begin VB.CommandButton cmdCanDelCancel 
         Caption         =   "&Cancel"
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
         Left            =   2625
         TabIndex        =   251
         Top             =   870
         Width           =   900
      End
      Begin VB.CommandButton cmdCanDelOk 
         Caption         =   "&Ok"
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
         Left            =   1365
         TabIndex        =   250
         Top             =   885
         Width           =   900
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Cancellation"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3090
         TabIndex        =   249
         Top             =   465
         Width           =   1695
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Deletion"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   660
         TabIndex        =   248
         Top             =   495
         Width           =   1695
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Invoice"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Left            =   0
         TabIndex        =   252
         Top             =   90
         Width           =   5295
      End
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   14040
      Top             =   1440
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin Crystal.CrystalReport cr1 
      Left            =   16680
      Top             =   5760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   16560
      Top             =   5160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   146
      Top             =   -90
      Width           =   16440
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   6910
         Picture         =   "Frm_WasteInvoice.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   264
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   14
         Left            =   5820
         Picture         =   "Frm_WasteInvoice.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   244
         ToolTipText     =   "GST- Invoice Transaction"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":0884
         Height          =   550
         Index           =   1
         Left            =   600
         Picture         =   "Frm_WasteInvoice.frx":0B8E
         Style           =   1  'Graphical
         TabIndex        =   171
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   13
         Left            =   8160
         Picture         =   "Frm_WasteInvoice.frx":0F08
         Style           =   1  'Graphical
         TabIndex        =   160
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5280
         Picture         =   "Frm_WasteInvoice.frx":134A
         Style           =   1  'Graphical
         TabIndex        =   159
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":178C
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "Frm_WasteInvoice.frx":1BD6
         Style           =   1  'Graphical
         TabIndex        =   156
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         DownPicture     =   "Frm_WasteInvoice.frx":1F38
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "Frm_WasteInvoice.frx":2242
         Style           =   1  'Graphical
         TabIndex        =   155
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":25BE
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "Frm_WasteInvoice.frx":28C8
         Style           =   1  'Graphical
         TabIndex        =   154
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_WasteInvoice.frx":2C6A
         Height          =   550
         Index           =   11
         Left            =   6360
         Picture         =   "Frm_WasteInvoice.frx":30B4
         Style           =   1  'Graphical
         TabIndex        =   153
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":3449
         Height          =   550
         Index           =   7
         Left            =   3210
         Picture         =   "Frm_WasteInvoice.frx":3893
         Style           =   1  'Graphical
         TabIndex        =   152
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":3BE3
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
         Left            =   1140
         Picture         =   "Frm_WasteInvoice.frx":3EED
         Style           =   1  'Graphical
         TabIndex        =   151
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":4289
         Height          =   550
         Index           =   5
         Left            =   2175
         Picture         =   "Frm_WasteInvoice.frx":46D3
         Style           =   1  'Graphical
         TabIndex        =   150
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":4A38
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "Frm_WasteInvoice.frx":4D42
         Style           =   1  'Graphical
         TabIndex        =   149
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":50D5
         Height          =   550
         Index           =   6
         Left            =   2685
         Picture         =   "Frm_WasteInvoice.frx":551F
         Style           =   1  'Graphical
         TabIndex        =   148
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_WasteInvoice.frx":586C
         Height          =   550
         Index           =   4
         Left            =   1650
         Picture         =   "Frm_WasteInvoice.frx":5B76
         Style           =   1  'Graphical
         TabIndex        =   147
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
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   9885
         TabIndex        =   158
         Top             =   270
         Width           =   1800
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
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   12885
         TabIndex        =   157
         Top             =   270
         Width           =   2070
      End
   End
   Begin VB.Frame Frame4 
      BorderStyle     =   0  'None
      Height          =   5400
      Left            =   480
      TabIndex        =   30
      Top             =   1320
      Width           =   11400
      Begin TabDlg.SSTab SSTab1 
         Height          =   5320
         Left            =   45
         TabIndex        =   31
         Top             =   0
         Width           =   8355
         _ExtentX        =   14737
         _ExtentY        =   9393
         _Version        =   393216
         Tabs            =   4
         TabsPerRow      =   4
         TabHeight       =   617
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   "&Customer"
         TabPicture(0)   =   "Frm_WasteInvoice.frx":5F0B
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "&Tax/Duty"
         TabPicture(1)   =   "Frm_WasteInvoice.frx":5F27
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame3"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "C&arrier"
         TabPicture(2)   =   "Frm_WasteInvoice.frx":5F43
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame2"
         Tab(2).ControlCount=   1
         TabCaption(3)   =   "&Others"
         TabPicture(3)   =   "Frm_WasteInvoice.frx":5F5F
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Frame7"
         Tab(3).ControlCount=   1
         Begin VB.Frame Frame3 
            Height          =   4035
            Left            =   -74880
            TabIndex        =   32
            Top             =   360
            Width           =   8175
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
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
               Height          =   360
               Index           =   95
               Left            =   5760
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   221
               TabStop         =   0   'False
               Top             =   1095
               Width           =   1935
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "typecode"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
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
               Height          =   360
               Index           =   94
               Left            =   5100
               MaxLength       =   11
               TabIndex        =   35
               TabStop         =   0   'False
               Top             =   1095
               Width           =   585
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "TCSAssValue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               Height          =   285
               Index           =   93
               Left            =   5940
               TabIndex        =   213
               TabStop         =   0   'False
               Top             =   4050
               Visible         =   0   'False
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "tax_code"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   92
               Left            =   1320
               MaxLength       =   11
               TabIndex        =   62
               Top             =   1575
               Width           =   1185
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   91
               Left            =   2550
               TabIndex        =   210
               Top             =   1575
               Width           =   5145
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "aTax_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   89
               Left            =   5940
               MaxLength       =   11
               TabIndex        =   206
               TabStop         =   0   'False
               Top             =   4770
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   88
               Left            =   6030
               TabIndex        =   204
               TabStop         =   0   'False
               Top             =   5520
               Width           =   1875
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "ATax_code"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   72
               Left            =   4935
               MaxLength       =   3
               TabIndex        =   67
               Top             =   5520
               Width           =   1080
            End
            Begin VB.ComboBox Combo1 
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
               Index           =   5
               ItemData        =   "Frm_WasteInvoice.frx":5F7B
               Left            =   1320
               List            =   "Frm_WasteInvoice.frx":5F85
               Style           =   2  'Dropdown List
               TabIndex        =   71
               Top             =   2940
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "HSONTCS_PER"
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
               Height          =   285
               Index           =   82
               Left            =   1320
               MaxLength       =   6
               TabIndex        =   76
               Top             =   6210
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "ECONTCS_PER"
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
               Height          =   285
               Index           =   84
               Left            =   1320
               MaxLength       =   6
               TabIndex        =   74
               Top             =   5820
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "ECONTCS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               Height          =   285
               Index           =   83
               Left            =   3705
               TabIndex        =   173
               TabStop         =   0   'False
               Top             =   5820
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "HSONTCS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               Height          =   285
               Index           =   81
               Left            =   3705
               TabIndex        =   172
               TabStop         =   0   'False
               Top             =   6210
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "HSCESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               Height          =   285
               Index           =   78
               Left            =   3705
               TabIndex        =   166
               TabStop         =   0   'False
               Top             =   5190
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "HSCESS_PER"
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
               Height          =   285
               Index           =   77
               Left            =   1320
               MaxLength       =   6
               TabIndex        =   60
               Top             =   5190
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "EDUCESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               Height          =   285
               Index           =   76
               Left            =   3705
               TabIndex        =   163
               TabStop         =   0   'False
               Top             =   4365
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "EDUCESS_PER"
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
               Height          =   285
               Index           =   75
               Left            =   1320
               MaxLength       =   6
               TabIndex        =   58
               Top             =   4350
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               CausesValidation=   0   'False
               DataField       =   "tcs_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
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
               Height          =   360
               Index           =   73
               Left            =   3705
               MaxLength       =   7
               TabIndex        =   72
               Top             =   2955
               Width           =   1200
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "tcs_amt"
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
               Height          =   360
               Index           =   71
               Left            =   6120
               TabIndex        =   144
               TabStop         =   0   'False
               Top             =   2955
               Width           =   1560
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "ins_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   50
               Left            =   1320
               TabIndex        =   69
               Text            =   "0.00"
               Top             =   2505
               Width           =   1180
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "ins_amt"
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
               Height          =   360
               Index           =   49
               Left            =   3705
               TabIndex        =   110
               TabStop         =   0   'False
               Text            =   "0"
               Top             =   2505
               Width           =   1200
            End
            Begin VB.ComboBox Combo1 
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
               Index           =   1
               ItemData        =   "Frm_WasteInvoice.frx":5F96
               Left            =   1320
               List            =   "Frm_WasteInvoice.frx":5FA0
               Style           =   2  'Dropdown List
               TabIndex        =   44
               Top             =   210
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "cess_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
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
               Height          =   360
               Index           =   15
               Left            =   3705
               MaxLength       =   6
               TabIndex        =   46
               Top             =   225
               Width           =   1200
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "cess_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
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
               Height          =   360
               Index           =   16
               Left            =   6120
               MaxLength       =   9
               TabIndex        =   43
               TabStop         =   0   'False
               Top             =   240
               Width           =   1560
            End
            Begin VB.ComboBox Combo1 
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
               ItemData        =   "Frm_WasteInvoice.frx":5FB1
               Left            =   1320
               List            =   "Frm_WasteInvoice.frx":5FBB
               Style           =   2  'Dropdown List
               TabIndex        =   48
               Top             =   660
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
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
               Height          =   360
               Index           =   17
               Left            =   6120
               MaxLength       =   5
               TabIndex        =   42
               Top             =   2040
               Visible         =   0   'False
               Width           =   1560
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "Charity"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   18
               Left            =   3705
               MaxLength       =   11
               TabIndex        =   50
               TabStop         =   0   'False
               Top             =   690
               Width           =   1200
            End
            Begin VB.ComboBox Combo1 
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
               Height          =   360
               Index           =   3
               ItemData        =   "Frm_WasteInvoice.frx":5FCC
               Left            =   1320
               List            =   "Frm_WasteInvoice.frx":5FD6
               Style           =   2  'Dropdown List
               TabIndex        =   52
               Top             =   1095
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
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
               Height          =   360
               Index           =   19
               Left            =   6120
               MaxLength       =   5
               TabIndex        =   41
               Top             =   2040
               Visible         =   0   'False
               Width           =   1560
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "Bed_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   20
               Left            =   1425
               MaxLength       =   11
               TabIndex        =   54
               TabStop         =   0   'False
               Top             =   4740
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   21
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   40
               Top             =   6525
               Visible         =   0   'False
               Width           =   825
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "aed_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   22
               Left            =   3675
               MaxLength       =   11
               TabIndex        =   56
               TabStop         =   0   'False
               Top             =   4740
               Width           =   1125
            End
            Begin VB.ComboBox Combo1 
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
               Index           =   4
               ItemData        =   "Frm_WasteInvoice.frx":5FE7
               Left            =   1320
               List            =   "Frm_WasteInvoice.frx":5FF1
               Style           =   2  'Dropdown List
               TabIndex        =   64
               Top             =   2010
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
               DataField       =   "tax_per"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   25
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   39
               Top             =   6570
               Width           =   825
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "Tax_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   26
               Left            =   3705
               MaxLength       =   11
               TabIndex        =   38
               TabStop         =   0   'False
               Top             =   2025
               Width           =   1200
            End
            Begin VB.TextBox txtfields 
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   27
               Left            =   1920
               MaxLength       =   5
               TabIndex        =   37
               Top             =   6600
               Width           =   825
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "lsc_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   285
               Index           =   28
               Left            =   5955
               MaxLength       =   11
               TabIndex        =   36
               TabStop         =   0   'False
               Top             =   4425
               Width           =   1080
            End
            Begin VB.TextBox txtfields 
               DataField       =   " tax_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   23
               Left            =   2970
               MaxLength       =   5
               TabIndex        =   34
               Top             =   6525
               Visible         =   0   'False
               Width           =   825
            End
            Begin VB.TextBox txtfields 
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   24
               Left            =   3840
               MaxLength       =   5
               TabIndex        =   33
               Top             =   6525
               Visible         =   0   'False
               Width           =   2535
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Against Form"
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
               Height          =   240
               Index           =   40
               Left            =   5100
               TabIndex        =   220
               Top             =   720
               Width           =   1185
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax Code"
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
               Index           =   39
               Left            =   150
               TabIndex        =   211
               Top             =   1635
               Width           =   1575
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "A.Tax Amt"
               Enabled         =   0   'False
               Height          =   195
               Index           =   38
               Left            =   5070
               TabIndex        =   207
               Top             =   4815
               Width           =   735
            End
            Begin VB.Label Label1 
               Caption         =   "Additional Tax Code"
               Enabled         =   0   'False
               Height          =   375
               Index           =   37
               Left            =   3750
               TabIndex        =   205
               Top             =   5520
               Width           =   1020
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "TCS"
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
               Index           =   36
               Left            =   150
               TabIndex        =   184
               Top             =   3000
               Width           =   1575
            End
            Begin VB.Label Label12 
               Caption         =   "EC on TCS %"
               Enabled         =   0   'False
               Height          =   240
               Left            =   150
               TabIndex        =   177
               Top             =   5850
               Width           =   1335
            End
            Begin VB.Label Label11 
               Caption         =   "EC on TCS Amt"
               Enabled         =   0   'False
               Height          =   285
               Left            =   2520
               TabIndex        =   176
               Top             =   5850
               Width           =   1110
            End
            Begin VB.Label Label10 
               Caption         =   "HS on TCS %"
               Enabled         =   0   'False
               Height          =   225
               Left            =   150
               TabIndex        =   175
               Top             =   6225
               Width           =   1305
            End
            Begin VB.Label Label9 
               Caption         =   "HS on TCS Amt"
               Enabled         =   0   'False
               Height          =   255
               Left            =   2520
               TabIndex        =   174
               Top             =   6225
               Width           =   1215
            End
            Begin VB.Label Label5 
               Caption         =   "HS.Cess Amt"
               Enabled         =   0   'False
               Height          =   255
               Left            =   2520
               TabIndex        =   165
               Top             =   5205
               Width           =   1110
            End
            Begin VB.Label Label4 
               Caption         =   "HS.Cess %"
               Enabled         =   0   'False
               Height          =   225
               Left            =   150
               TabIndex        =   164
               Top             =   5220
               Width           =   825
            End
            Begin VB.Label Label3 
               Caption         =   "Edu. Cess Amt"
               Enabled         =   0   'False
               Height          =   270
               Left            =   2520
               TabIndex        =   162
               Top             =   4425
               Width           =   1110
            End
            Begin VB.Label Label2 
               Caption         =   "Edu.Cess %"
               Enabled         =   0   'False
               Height          =   240
               Left            =   150
               TabIndex        =   161
               Top             =   4365
               Width           =   870
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               Caption         =   "TCS %"
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
               Left            =   2640
               TabIndex        =   142
               Top             =   3000
               Width           =   630
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "TCS Amt"
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
               Index           =   18
               Left            =   5100
               TabIndex        =   141
               Top             =   3000
               Width           =   795
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Insurance %"
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
               Index           =   12
               Left            =   150
               TabIndex        =   112
               Top             =   2550
               Width           =   1575
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
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
               Index           =   11
               Left            =   2640
               TabIndex        =   111
               Top             =   2550
               Width           =   1275
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Enabled         =   0   'False
               Height          =   195
               Index           =   7
               Left            =   1320
               TabIndex        =   68
               Top             =   360
               Width           =   45
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
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
               Height          =   240
               Index           =   8
               Left            =   150
               TabIndex        =   66
               Top             =   270
               Width           =   1575
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Cess %"
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
               Index           =   11
               Left            =   2640
               TabIndex        =   65
               Top             =   270
               Width           =   690
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Amount"
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
               Height          =   240
               Index           =   12
               Left            =   5100
               TabIndex        =   63
               Top             =   270
               Width           =   675
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
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
               Height          =   240
               Index           =   13
               Left            =   150
               TabIndex        =   61
               Top             =   720
               Width           =   1575
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Charity "
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
               Index           =   14
               Left            =   2640
               TabIndex        =   59
               Top             =   720
               Width           =   660
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Duty"
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
               Height          =   240
               Index           =   16
               Left            =   150
               TabIndex        =   57
               Top             =   1155
               Width           =   1575
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   17
               Left            =   240
               TabIndex        =   55
               Top             =   4785
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   19
               Left            =   2700
               TabIndex        =   53
               Top             =   4785
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax"
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
               Index           =   21
               Left            =   150
               TabIndex        =   51
               Top             =   2070
               Width           =   1575
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
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
               Index           =   22
               Left            =   2640
               TabIndex        =   49
               Top             =   2070
               Width           =   975
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Surcharge"
               Height          =   195
               Index           =   24
               Left            =   5070
               TabIndex        =   47
               Top             =   4470
               Width           =   765
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Tax "
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
               Height          =   240
               Index           =   26
               Left            =   5040
               TabIndex        =   45
               Top             =   2070
               Visible         =   0   'False
               Width           =   615
            End
         End
         Begin VB.Frame Frame7 
            Height          =   4785
            Left            =   -74895
            TabIndex        =   125
            Top             =   360
            Width           =   8175
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "Load_Amt"
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
               Height          =   360
               Index           =   99
               Left            =   6120
               TabIndex        =   265
               Top             =   840
               Width           =   1245
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "RND_OFF"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               ForeColor       =   &H00800000&
               Height          =   360
               Index           =   39
               Left            =   1470
               TabIndex        =   203
               Top             =   1335
               Width           =   1245
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "rg23c_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   60
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   202
               Top             =   7095
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "rg23c_bed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   59
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   201
               Top             =   6750
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "rg23a_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   56
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   200
               Top             =   6405
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "rg23a_bed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   55
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   199
               Top             =   6060
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "Pla_aed"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   52
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   198
               Top             =   5700
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "PLA_BED"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   51
               Left            =   5160
               MaxLength       =   11
               TabIndex        =   197
               Top             =   5340
               Width           =   1815
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "fwd_chrg"
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
               Height          =   360
               Index           =   74
               Left            =   6120
               TabIndex        =   196
               Top             =   360
               Width           =   1245
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "freight"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   31
               Left            =   1470
               MaxLength       =   11
               TabIndex        =   195
               Top             =   840
               Width           =   1245
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "rg23c_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   57
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   194
               Top             =   6750
               Width           =   525
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "rg23a_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   53
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   193
               Top             =   6045
               Width           =   525
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "pla_CODE"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   32
               Left            =   1110
               MaxLength       =   2
               TabIndex        =   192
               Top             =   5340
               Width           =   525
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   66
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   191
               Top             =   5685
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   67
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   190
               Top             =   6390
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   " "
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   68
               Left            =   1110
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   189
               Top             =   7095
               Width           =   2025
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   69
               Left            =   1470
               MaxLength       =   2
               TabIndex        =   188
               Top             =   360
               Width           =   1245
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "remarks"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               DataMember      =   "remarks"
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
               Height          =   1170
               Index           =   70
               Left            =   1470
               MaxLength       =   150
               MultiLine       =   -1  'True
               TabIndex        =   187
               Top             =   1800
               Width           =   5895
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "PLA_NO"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   33
               Left            =   1680
               Locked          =   -1  'True
               MaxLength       =   8
               TabIndex        =   128
               Top             =   5340
               Width           =   975
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "rg23a_code"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   54
               Left            =   1680
               MaxLength       =   8
               TabIndex        =   127
               Top             =   6045
               Width           =   975
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "rg23c_no"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   58
               Left            =   1680
               MaxLength       =   8
               TabIndex        =   126
               Top             =   6750
               Width           =   975
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Loading Charges "
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
               Index           =   41
               Left            =   3000
               TabIndex        =   266
               Top             =   900
               Width           =   3495
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Round off"
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
               Index           =   32
               Left            =   150
               TabIndex        =   186
               Top             =   1380
               Width           =   2175
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Freight"
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
               Index           =   28
               Left            =   150
               TabIndex        =   185
               Top             =   900
               Width           =   615
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Handling / Forwarding Charges"
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
               Index           =   19
               Left            =   3000
               TabIndex        =   145
               Top             =   405
               Width           =   2895
               WordWrap        =   -1  'True
            End
            Begin VB.Label Label1 
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
               Index           =   35
               Left            =   150
               TabIndex        =   143
               Top             =   1920
               Width           =   1905
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Freight / Pack"
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
               Index           =   17
               Left            =   150
               TabIndex        =   140
               Top             =   405
               Width           =   1230
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "PLA No."
               Height          =   195
               Index           =   13
               Left            =   150
               TabIndex        =   137
               Top             =   5430
               Width           =   600
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "BED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   15
               Left            =   3735
               TabIndex        =   136
               Top             =   5400
               Width           =   375
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " AED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   18
               Left            =   3690
               TabIndex        =   135
               Top             =   5760
               Width           =   420
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23A No."
               Height          =   195
               Index           =   15
               Left            =   150
               TabIndex        =   134
               Top             =   6090
               Width           =   825
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   20
               Left            =   3690
               TabIndex        =   133
               Top             =   6120
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   23
               Left            =   3735
               TabIndex        =   132
               Top             =   6465
               Width           =   375
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "RG23C No."
               Height          =   195
               Index           =   14
               Left            =   150
               TabIndex        =   131
               Top             =   6765
               Width           =   870
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   " BED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   25
               Left            =   3705
               TabIndex        =   130
               Top             =   6825
               Width           =   420
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "AED "
               Enabled         =   0   'False
               Height          =   195
               Index           =   31
               Left            =   3735
               TabIndex        =   129
               Top             =   7170
               Width           =   375
            End
         End
         Begin VB.Frame Frame2 
            Height          =   4635
            Left            =   -74880
            TabIndex        =   116
            Top             =   480
            Width           =   8175
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "lorryphoneno"
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
               Index           =   98
               Left            =   6180
               MaxLength       =   10
               TabIndex        =   245
               Top             =   600
               Width           =   1890
            End
            Begin VB.Frame Frame6 
               Height          =   1455
               Left            =   5520
               TabIndex        =   239
               Top             =   2760
               Width           =   2415
               Begin VB.TextBox txtfields 
                  Appearance      =   0  'Flat
                  DataField       =   "pre_time"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "hh:mm AMPM"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   4
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
                  Height          =   360
                  Index           =   36
                  Left            =   1260
                  MaxLength       =   8
                  TabIndex        =   241
                  Top             =   240
                  Width           =   1065
               End
               Begin VB.TextBox txtfields 
                  Appearance      =   0  'Flat
                  DataField       =   "rem_time"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "hh:mm AMPM"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   4
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
                  ForeColor       =   &H00800000&
                  Height          =   360
                  Index           =   37
                  Left            =   1260
                  MaxLength       =   8
                  TabIndex        =   240
                  Top             =   840
                  Width           =   1065
               End
               Begin VB.Label lblLabels 
                  AutoSize        =   -1  'True
                  Caption         =   "Prep. Time"
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
                  Index           =   10
                  Left            =   120
                  TabIndex        =   243
                  Top             =   285
                  Width           =   990
               End
               Begin VB.Label lblLabels 
                  AutoSize        =   -1  'True
                  Caption         =   "Rem Time"
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
                  Left            =   120
                  TabIndex        =   242
                  Top             =   900
                  Width           =   945
               End
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "eway_billno"
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
               Height          =   360
               Index           =   97
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   234
               Top             =   3675
               Width           =   3435
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "LR_DATE"
               Height          =   255
               Index           =   3
               Left            =   6600
               TabIndex        =   20
               Top             =   1140
               Width           =   1185
               _ExtentX        =   2090
               _ExtentY        =   450
               _Version        =   393216
               BorderStyle     =   0
               MaxLength       =   10
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "lr_no"
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
               Index           =   35
               Left            =   1980
               MaxLength       =   20
               TabIndex        =   19
               Top             =   1080
               Width           =   2655
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "vehicle_no"
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
               Index           =   34
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   18
               Top             =   600
               Width           =   2655
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "are_no"
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
               Index           =   38
               Left            =   1980
               MaxLength       =   15
               TabIndex        =   21
               Top             =   1500
               Width           =   2655
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "CARRIER_CODE"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   29
               Left            =   1980
               MaxLength       =   3
               TabIndex        =   17
               Top             =   150
               Width           =   945
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
               Height          =   360
               Index           =   30
               Left            =   3030
               TabIndex        =   117
               Top             =   150
               Width           =   5025
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "CONS_ADD1"
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
               Index           =   61
               Left            =   1980
               MaxLength       =   30
               TabIndex        =   24
               Top             =   1950
               Width           =   6075
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "CONS_ADD2"
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
               Index           =   62
               Left            =   1980
               MaxLength       =   30
               TabIndex        =   25
               Top             =   2370
               Width           =   6075
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "CONS_ADD3"
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
               Index           =   63
               Left            =   1980
               MaxLength       =   30
               TabIndex        =   26
               Top             =   2805
               Width           =   3435
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "CONS_ADD4"
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
               Index           =   64
               Left            =   1980
               MaxLength       =   30
               TabIndex        =   27
               Top             =   3250
               Width           =   3435
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "are_date"
               Height          =   255
               Index           =   1
               Left            =   6600
               TabIndex        =   22
               Top             =   1530
               Width           =   1185
               _ExtentX        =   2090
               _ExtentY        =   450
               _Version        =   393216
               BorderStyle     =   0
               MaxLength       =   10
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
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
               Height          =   315
               Index           =   1
               Left            =   6540
               TabIndex        =   118
               Top             =   1485
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   556
               _Version        =   393216
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Format          =   160694273
               CurrentDate     =   37211
            End
            Begin MSComCtl2.DTPicker DTPicker1 
               Height          =   315
               Index           =   3
               Left            =   6540
               TabIndex        =   138
               Top             =   1080
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   556
               _Version        =   393216
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Format          =   160694273
               CurrentDate     =   37211
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "eway_bill_date"
               Height          =   255
               Index           =   4
               Left            =   2040
               TabIndex        =   238
               Top             =   4150
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   450
               _Version        =   393216
               BorderStyle     =   0
               Enabled         =   0   'False
               MaxLength       =   10
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
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
               Height          =   375
               Index           =   4
               Left            =   1980
               TabIndex        =   237
               Top             =   4100
               Width           =   1455
               _ExtentX        =   2566
               _ExtentY        =   661
               _Version        =   393216
               Enabled         =   0   'False
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Format          =   137428993
               CurrentDate     =   42901
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Phone number"
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
               Index           =   25
               Left            =   4800
               TabIndex        =   246
               Top             =   650
               Width           =   1305
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "e-Way Bill Date"
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
               Index           =   24
               Left            =   240
               TabIndex        =   236
               Top             =   4180
               Width           =   2025
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "e-Way Bill No."
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
               Index           =   23
               Left            =   240
               TabIndex        =   235
               Top             =   3720
               Width           =   2025
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
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
               Index           =   34
               Left            =   5430
               TabIndex        =   139
               Top             =   1130
               Width           =   435
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "LR Number "
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
               Index           =   30
               Left            =   60
               TabIndex        =   124
               Top             =   1130
               Width           =   2025
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Vehicle Number"
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
               Index           =   44
               Left            =   60
               TabIndex        =   123
               Top             =   645
               Width           =   1440
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Carrier"
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
               Index           =   27
               Left            =   60
               TabIndex        =   122
               Top             =   195
               Width           =   2025
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "ARE No."
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
               Left            =   60
               TabIndex        =   121
               Top             =   1550
               Width           =   2025
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Date"
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
               Index           =   30
               Left            =   5430
               TabIndex        =   120
               Top             =   1550
               Width           =   435
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Consignee Address"
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
               Index           =   16
               Left            =   60
               TabIndex        =   119
               Top             =   1965
               Width           =   2025
            End
         End
         Begin VB.Frame Frame1 
            Height          =   4850
            Left            =   100
            TabIndex        =   70
            Top             =   390
            Width           =   8175
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
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
               Height          =   360
               Index           =   137
               Left            =   4530
               TabIndex        =   231
               Top             =   1440
               Width           =   3525
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "cust_gststcode"
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
               Height          =   360
               Index           =   138
               Left            =   1725
               TabIndex        =   230
               Top             =   1440
               Width           =   1335
            End
            Begin VB.Frame Frame16 
               Caption         =   "GST"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF00FF&
               Height          =   735
               Left            =   60
               TabIndex        =   223
               Top             =   4020
               Width           =   8055
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  Appearance      =   0  'Flat
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "CGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "#0.00"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
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
                  ForeColor       =   &H00FF0000&
                  Height          =   360
                  Index           =   136
                  Left            =   1245
                  TabIndex        =   226
                  Top             =   225
                  Width           =   1335
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  Appearance      =   0  'Flat
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "SGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "#0.00"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
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
                  ForeColor       =   &H00FF0000&
                  Height          =   360
                  Index           =   135
                  Left            =   3960
                  TabIndex        =   225
                  Top             =   225
                  Width           =   1335
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  Appearance      =   0  'Flat
                  BackColor       =   &H00C0FFFF&
                  DataField       =   "IGSTAMT"
                  BeginProperty DataFormat 
                     Type            =   1
                     Format          =   "#0.00"
                     HaveTrueFalseNull=   0
                     FirstDayOfWeek  =   0
                     FirstWeekOfYear =   0
                     LCID            =   1033
                     SubFormatType   =   0
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
                  ForeColor       =   &H00FF0000&
                  Height          =   360
                  Index           =   134
                  Left            =   6600
                  TabIndex        =   224
                  Top             =   225
                  Width           =   1335
               End
               Begin VB.Label Label26 
                  Caption         =   "CGST Amt"
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
                  Height          =   255
                  Left            =   120
                  TabIndex        =   229
                  Top             =   300
                  Width           =   975
               End
               Begin VB.Label Label25 
                  Caption         =   "SGST Amt"
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
                  Height          =   255
                  Left            =   2760
                  TabIndex        =   228
                  Top             =   300
                  Width           =   1095
               End
               Begin VB.Label Label24 
                  Caption         =   "IGST Amt"
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
                  Height          =   255
                  Left            =   5520
                  TabIndex        =   227
                  Top             =   300
                  Width           =   975
               End
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H8000000A&
               DataField       =   "tinv_no"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0"
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
               Height          =   360
               Index           =   96
               Left            =   2505
               Locked          =   -1  'True
               MaxLength       =   8
               TabIndex        =   222
               Top             =   150
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H00E0E0E0&
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
               Height          =   360
               Index           =   123
               Left            =   3120
               Locked          =   -1  'True
               MaxLength       =   50
               TabIndex        =   16
               TabStop         =   0   'False
               Top             =   3630
               Width           =   4905
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "NOTIFY_CODE"
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
               Height          =   360
               Index           =   124
               Left            =   1725
               MaxLength       =   6
               TabIndex        =   15
               Top             =   3630
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               DataField       =   "cr_days"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   360
               Index           =   65
               Left            =   6920
               MaxLength       =   3
               TabIndex        =   14
               Top             =   3210
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H8000000A&
               DataField       =   "inv_no"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0"
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
               Height          =   360
               Index           =   1
               Left            =   2505
               MaxLength       =   8
               TabIndex        =   1
               Top             =   150
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "inv_TYPE"
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
               Index           =   0
               Left            =   1725
               MaxLength       =   2
               TabIndex        =   0
               Top             =   150
               Width           =   720
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H8000000A&
               DataField       =   "cex_inv_no"
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
               Index           =   3
               Left            =   6630
               MaxLength       =   8
               TabIndex        =   3
               Top             =   150
               Width           =   1395
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "Cex_inv_TYPE"
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
               Index           =   2
               Left            =   5910
               MaxLength       =   2
               TabIndex        =   2
               Top             =   150
               Width           =   645
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H8000000A&
               DataField       =   "BO_No"
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
               Index           =   5
               Left            =   6630
               MaxLength       =   8
               TabIndex        =   6
               TabStop         =   0   'False
               Top             =   550
               Width           =   1395
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "Cust_CODE"
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
               Index           =   6
               Left            =   1725
               MaxLength       =   7
               TabIndex        =   7
               TabStop         =   0   'False
               Top             =   1020
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
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
               Left            =   3120
               MaxLength       =   50
               TabIndex        =   79
               TabStop         =   0   'False
               Top             =   1020
               Width           =   4905
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "Agent_Code"
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
               Index           =   8
               Left            =   1725
               MaxLength       =   7
               TabIndex        =   8
               TabStop         =   0   'False
               Top             =   1890
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
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
               Index           =   9
               Left            =   3120
               MaxLength       =   50
               TabIndex        =   78
               TabStop         =   0   'False
               Top             =   1890
               Width           =   4905
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "Brok_code"
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   10
               Left            =   1245
               MaxLength       =   7
               TabIndex        =   9
               TabStop         =   0   'False
               Top             =   5025
               Visible         =   0   'False
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   11
               Left            =   2400
               MaxLength       =   50
               TabIndex        =   77
               TabStop         =   0   'False
               Top             =   5025
               Visible         =   0   'False
               Width           =   4065
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "bo_TYPE"
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
               Index           =   4
               Left            =   5925
               MaxLength       =   2
               TabIndex        =   5
               Top             =   550
               Width           =   645
            End
            Begin VB.ComboBox Combo1 
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
               ItemData        =   "Frm_WasteInvoice.frx":6002
               Left            =   1725
               List            =   "Frm_WasteInvoice.frx":600F
               Style           =   2  'Dropdown List
               TabIndex        =   10
               Top             =   2335
               Width           =   2115
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
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
               Index           =   12
               Left            =   4530
               MaxLength       =   50
               TabIndex        =   11
               Top             =   2300
               Width           =   3495
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               BackColor       =   &H80000000&
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
               Index           =   14
               Left            =   3120
               MaxLength       =   50
               TabIndex        =   73
               Top             =   2760
               Width           =   4905
            End
            Begin VB.TextBox txtfields 
               Appearance      =   0  'Flat
               DataField       =   "Despatch_to"
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
               Index           =   13
               Left            =   1725
               MaxLength       =   6
               TabIndex        =   12
               Top             =   2760
               Width           =   1335
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "date"
               Height          =   255
               Index           =   0
               Left            =   1770
               TabIndex        =   4
               Top             =   645
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   450
               _Version        =   393216
               BorderStyle     =   0
               MaxLength       =   10
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
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
               Left            =   1725
               TabIndex        =   80
               Top             =   605
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   582
               _Version        =   393216
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Format          =   460914689
               CurrentDate     =   37211
            End
            Begin VB.TextBox txtfields 
               DataField       =   "BANK_CODE"
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
               Index           =   48
               Left            =   4605
               MaxLength       =   6
               TabIndex        =   75
               Top             =   2310
               Width           =   1065
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "DELIVERY_DT"
               Height          =   250
               Index           =   2
               Left            =   1800
               TabIndex        =   13
               Top             =   3240
               Width           =   1065
               _ExtentX        =   1879
               _ExtentY        =   450
               _Version        =   393216
               BorderStyle     =   0
               MaxLength       =   10
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
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
               Index           =   2
               Left            =   1725
               TabIndex        =   113
               Top             =   3180
               Width           =   1395
               _ExtentX        =   2461
               _ExtentY        =   582
               _Version        =   393216
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Format          =   460914689
               CurrentDate     =   37211
            End
            Begin VB.Label Label27 
               Caption         =   "GST StateCode"
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
               Height          =   255
               Left            =   120
               TabIndex        =   233
               Top             =   1500
               Width           =   1605
            End
            Begin VB.Label Label1 
               Caption         =   "GSTIN"
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
               Height          =   255
               Index           =   62
               Left            =   3840
               TabIndex        =   232
               Top             =   1500
               Width           =   975
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Notify"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000007&
               Height          =   240
               Index           =   60
               Left            =   150
               TabIndex        =   219
               Top             =   3630
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Credit days"
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
               Index           =   33
               Left            =   5760
               TabIndex        =   115
               Top             =   3240
               Width           =   1140
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Delivery Date"
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
               Index           =   32
               Left            =   120
               TabIndex        =   114
               Top             =   3240
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Invoice No."
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
               Index           =   0
               Left            =   120
               TabIndex        =   90
               Top             =   180
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "CEX Invoice"
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
               Index           =   1
               Left            =   4110
               TabIndex        =   89
               Top             =   180
               Width           =   1080
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Invoice Date"
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
               Index           =   2
               Left            =   120
               TabIndex        =   88
               Top             =   600
               Width           =   1725
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bale Order No."
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
               Index           =   3
               Left            =   4110
               TabIndex        =   87
               Top             =   600
               Width           =   2535
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Customer"
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
               Index           =   4
               Left            =   120
               TabIndex        =   86
               Top             =   1065
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Agent"
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
               Index           =   5
               Left            =   120
               TabIndex        =   85
               Top             =   1935
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Broker"
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   84
               Top             =   5055
               Visible         =   0   'False
               Width           =   465
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Pay Mode"
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
               Left            =   120
               TabIndex        =   83
               Top             =   2385
               Width           =   1605
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Bank"
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
               Index           =   10
               Left            =   3960
               TabIndex        =   82
               Top             =   2380
               Width           =   465
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Place of supply"
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
               Index           =   29
               Left            =   120
               TabIndex        =   81
               Top             =   2850
               Width           =   1605
            End
         End
      End
      Begin TabDlg.SSTab SSTab3 
         Height          =   5325
         Left            =   8370
         TabIndex        =   91
         Top             =   0
         Width           =   2985
         _ExtentX        =   5265
         _ExtentY        =   9393
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   " "
         TabPicture(0)   =   "Frm_WasteInvoice.frx":6044
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame5"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame5 
            Enabled         =   0   'False
            Height          =   5085
            Left            =   120
            TabIndex        =   92
            Top             =   120
            Width           =   2775
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "ATAX_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   90
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   208
               Text            =   " "
               Top             =   6150
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "hsontcs_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   87
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   181
               Text            =   " "
               Top             =   7770
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "econtcs_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   86
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   180
               Text            =   " "
               Top             =   7425
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "tcs_amt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   85
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   178
               Text            =   " "
               Top             =   2175
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "HSCESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   80
               Left            =   1140
               TabIndex        =   170
               Top             =   6780
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "EDUCESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   79
               Left            =   1140
               TabIndex        =   168
               Top             =   6465
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   46
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   107
               Text            =   " "
               Top             =   2670
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFF80&
               DataField       =   "TOTAL_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   360
               Index           =   47
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   105
               Text            =   " "
               Top             =   4470
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "TAX_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
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
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   45
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   103
               Text            =   " "
               Top             =   1700
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "AED_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   44
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   101
               Text            =   " "
               Top             =   5475
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "BED_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
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
               Index           =   43
               Left            =   1140
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   99
               Text            =   " "
               Top             =   5145
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "CESS_AMT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   42
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   97
               Text            =   " "
               Top             =   1215
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "CHARITY"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "#0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
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
               ForeColor       =   &H00FF0000&
               Height          =   360
               Index           =   41
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   95
               Text            =   " "
               Top             =   750
               Width           =   1335
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               Appearance      =   0  'Flat
               BackColor       =   &H00C0FFFF&
               DataField       =   "MATL_VALUE"
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
               Index           =   40
               Left            =   1335
               Locked          =   -1  'True
               MaxLength       =   11
               TabIndex        =   93
               Text            =   " "
               Top             =   210
               Width           =   1335
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Additional Tax"
               Height          =   195
               Index           =   22
               Left            =   90
               TabIndex        =   209
               Top             =   6195
               Width           =   1005
            End
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "HS on TCS"
               Height          =   195
               Left            =   90
               TabIndex        =   183
               Top             =   7815
               Width           =   810
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "EC on TCS"
               Height          =   195
               Index           =   21
               Left            =   90
               TabIndex        =   182
               Top             =   7470
               Width           =   795
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "TCS"
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
               Index           =   20
               Left            =   90
               TabIndex        =   179
               Top             =   2220
               Width           =   1965
            End
            Begin VB.Label Label8 
               Caption         =   "HS.Cess"
               Height          =   210
               Left            =   90
               TabIndex        =   169
               Top             =   6825
               Width           =   915
            End
            Begin VB.Label Label7 
               Caption         =   "Edu.Cess"
               Height          =   240
               Left            =   90
               TabIndex        =   167
               Top             =   6480
               Width           =   885
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Others"
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
               Left            =   90
               TabIndex        =   108
               Top             =   2705
               Width           =   1665
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Invoice Amt."
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
               Index           =   8
               Left            =   80
               TabIndex        =   106
               Top             =   4515
               Width           =   1275
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "GST"
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
               Left            =   90
               TabIndex        =   104
               Top             =   1750
               Width           =   1845
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "AED"
               Height          =   195
               Index           =   6
               Left            =   90
               TabIndex        =   102
               Top             =   5520
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "BED"
               Height          =   195
               Index           =   5
               Left            =   90
               TabIndex        =   100
               Top             =   5190
               Width           =   330
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Cess"
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
               Left            =   90
               TabIndex        =   98
               Top             =   1260
               Width           =   2145
            End
            Begin VB.Label lblLabels 
               AutoSize        =   -1  'True
               Caption         =   "Charity"
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
               Left            =   90
               TabIndex        =   96
               Top             =   795
               Width           =   1695
            End
            Begin VB.Label lblLabels 
               Caption         =   "Assessable Val."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   435
               Index           =   2
               Left            =   90
               TabIndex        =   94
               Top             =   240
               Width           =   1095
            End
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   23
      Top             =   8640
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
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
            TextSave        =   "11/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "02:17 PM"
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
   Begin VB.Timer Timer1 
      Interval        =   800
      Left            =   3060
      Top             =   2130
   End
   Begin TabDlg.SSTab SSTab4 
      Height          =   4215
      Left            =   11970
      TabIndex        =   214
      Top             =   1350
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7435
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "Frm_WasteInvoice.frx":6060
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame15"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Command1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.CommandButton Command1 
         Caption         =   "&CANCEL"
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
         Left            =   1575
         TabIndex        =   218
         Top             =   3480
         Width           =   1095
      End
      Begin VB.Frame Frame15 
         Caption         =   "Print Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3975
         Left            =   120
         TabIndex        =   215
         Top             =   120
         Width           =   3855
         Begin VB.CommandButton CmdDSCSignView 
            Caption         =   "&Print with DSC Sign"
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
            Left            =   2640
            TabIndex        =   258
            Top             =   3360
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.ListBox List1 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2760
            Left            =   120
            Style           =   1  'Checkbox
            TabIndex        =   217
            Top             =   240
            Width           =   3615
         End
         Begin VB.CommandButton cmdok 
            Caption         =   "&Ok"
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
            Left            =   180
            TabIndex        =   216
            Top             =   3360
            Width           =   1095
         End
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   2730
      Left            =   555
      TabIndex        =   28
      Top             =   6720
      Width           =   14310
      _ExtentX        =   25241
      _ExtentY        =   4815
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Frm_WasteInvoice.frx":607C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2535
         Left            =   90
         TabIndex        =   109
         Top             =   90
         Width           =   14100
         _ExtentX        =   24871
         _ExtentY        =   4471
         _Version        =   393216
         AllowUpdate     =   0   'False
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         Enabled         =   -1  'True
         HeadLines       =   1
         RowHeight       =   19
         TabAcrossSplits =   -1  'True
         TabAction       =   2
         WrapCellPointer =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
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
               Type            =   4
               Format          =   "0%"
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
   Begin VB.Label Label14 
      Caption         =   "Label14"
      Height          =   255
      Left            =   4725
      TabIndex        =   212
      Top             =   5925
      Width           =   1155
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Invoice"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   345
      Left            =   495
      TabIndex        =   29
      Top             =   720
      Width           =   2970
   End
End
Attribute VB_Name = "Frm_WasteInvoice"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rate As Double
Dim ADOSECONDARYRS, QryRS As Recordset
Dim Rs, rs1, RS2 As Recordset
Dim DB As Connection
Dim rspara As Recordset
Dim Opt, STFLAG As String
Dim st, st1, ST2 As String
Dim BlnRoundoff As Boolean
Dim ITARY() As String
Dim cou, Col As Integer
Dim cou1, c As Integer
Dim FLG As String
Dim REP As Report.ReportView
Dim a, B As Integer
Dim xx As Integer
Dim Str As String
Dim rf As String
Dim RWTCS_ROFF As Integer
Dim Doc_prefix As String
Dim Doc_Prefixdocno As Long
Dim InvoicenowithPrefix As Integer
Dim ex1, ex As Double
Dim rsrec As New ADODB.Recordset
Dim BlnInvRoundoff As Boolean
Dim BlnPackTax As Boolean
Dim BlnTCSTax As Boolean
Dim BlnTcsCalc As Boolean
Dim BInCESSTAX As Boolean
Dim BInCESSTCS As Boolean
Dim BInPACKTCS As Boolean
Dim BInPACKCESS As Boolean
Dim BInPackBEd As Boolean
Dim BInTaxBED As Boolean
Dim InvnoEdit As Boolean
Dim BInAssRound As Integer
Dim EDUFLG As Boolean
Dim HSCESSFLG As Boolean
Dim docno As String
Dim SCPer, STPer, AEDPer, BEDPer, CESSPer, CHARPer, INVSNO  As Integer
Dim errflg, CHFLG, CESSFLG, DUTYFLG, TAXFLG, tcsflg As Boolean
Dim EDU_CESS, hscessAMT As Double
Dim NettRExR, NettR, ExR, packno, invamt, DBED, DAED, Charity, cess, Bed, Aed, tax, SurCharge, Insur, rndoff, Assval, TotAmt, atax As Double
Dim LoadAmt As Double
Dim adflg As String
Dim AddTax As Boolean
Dim frmFa As New frmFaPostingVerification
Dim BolAutoDel As Boolean
Dim rscustgst As New Recordset

Dim canflg, delflg As String 'Added on 10-12-2020 Annamalai S
 
Dim BlnCharity As Boolean
Dim BlnFrt As Boolean
Dim BlnHandling As Boolean
Dim BlnInsurance As Boolean
Dim MailVerify, MailFlg As String  ''''''''''07-11-2023 By Annamalai S
Dim XMLFlg As String

Dim TDSTCSFlg  As String


  Const Gdivcode = 0
  Const GINV_TYPE = 1
  Const GINV_NO = 2
  Const GCONT_TYPE = 3
  Const GCONT_NO = 4
  Const GPRODUCT_CODE = 5
  Const GDescription = 6
  Const Gpacks = 7
  Const GNett_Kgs = 8
  Const GGROSS_KGS = 9
  Const GRate_Ex = 10
  Const GRate_Nett = 11
  Const GRate_Kg = 12
  Const Gvalue = 13
  Const GCharity = 14
  Const GTax_code = 15
  Const GTax_Per = 16
  Const GATax_code = 17
  Const GATax_Per = 18
  Const GBed_Per = 19
  Const GAed_Per = 20
  Const GLsc_Per = 21
  Const GTax_Amt = 22
  Const GATax_Amt = 23
  Const GBed_Amt = 24
  Const GAed_Amt = 25
  Const GLsc_Amt = 26
  Const GCess_Amt = 27
  Const GINVSNO = 28
  Const GFWDCHRG = 29
  Const Geducess_per = 30
  Const Geducess_amt = 31
  Const Ghscess_per = 32
  Const Ghscess_amt = 33
  Const gIns_Amt = 34
  Const gfreight = 35
  Const gTcs_Amt = 36
  Const gRound_Off = 37
  Const gTot_Amt = 38
  Const gReceiptt_Amt = 39
  Const gCNN_Amt = 40
  Const gDNN_Amt = 41
  Const gTaxable_Values = 42
  Const gECONTCS_Amt = 43
  Const gHSONTCS_Amt = 44
  Const gPackType = 45
  'For GST'
  Const CGSTPER = 47
  Const CGSTAMT = 48
  Const SGSTPER = 49
  Const SGSTAMT = 50
  Const IGSTPER = 51
  Const IGSTAMT = 52
  Const HSNCODE = 53
  Const godown = 54
  Const GLoading_Amt = 55
  
  Private Enum TErrorCorretion
    QualityLow
    QualityMedium
    QualityStandard
    QualityHigh
End Enum

Private Declare Sub GenerateBMP _
                Lib "quricol32.dll" _
                Alias "GenerateBMPW" ( _
                ByVal FileName As Long, _
                ByVal Text As Long, _
                ByVal Margin As Long, _
                ByVal Size As Long, _
                ByVal Level As TErrorCorretion)
   

Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
   (ByVal hWnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long
Private Sub CanDelQry()
On Error GoTo CanDelQry_Error


    BlnRoundoff = False
    If canflg = "Y" Then
        errflg = False
        desc.Caption = "Cancellation"
'        db.BeginTrans
        Call adddelmod(BUTTON)
        Buttonframe.Enabled = False
        Frame8.Visible = False
    ElseIf canflg = "N" Then
'        Opt = "del"
        errflg = False
        desc.Caption = "Deletion"
        Call adddelmod(BUTTON)
        Frame8.Visible = False
    End If
    
          If Record_Exists("IG_RINVHD A WHERE isnull(Cancelled,'N')<>'Y' and divcode='" & Divcode & "' and date='" & Format(pdate, "DD-MMM-YYYY") & "' and CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPE)", "Invoice Not Found") = False Then
            BUTTON_Click (10)
            Exit Sub
          End If

              
          Call ModLock
          txtfields(61).Locked = False
          txtfields(62).Locked = False
          txtfields(63).Locked = False
          txtfields(64).Locked = False
          LookUp.Clear = True
          
'          If Opt = "del" Then
'              LookUp.query = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo,a.TInv_no as Invoice_No from Ig_Rinvhd A where isnull(AppFlg,'N')='N' and divcode = '" & divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
'          Else
'              LookUp.query = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo,a.TInv_no as Invoice_No from Ig_Rinvhd A where  divcode = '" & divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
'          End If
          
            If canflg = "Y" Then
                LookUp.query = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo from Ig_Rinvhd A where isnull(AppFlg,'N')='N' and isnull(Cancelled,'N')<>'Y' and isnull(irn_no,'')<>'' and divcode = '" & Divcode & "' and date = '" & Format(pdate, "yyyy-mm-dd") & "'  and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and formxxdt is not null and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
            ElseIf delflg = "Y" Then
                LookUp.query = "Select a.inv_type as InvoiceType,max(a.Inv_no) as InvoiceNo from Ig_Rinvhd A where isnull(AppFlg,'N')='N' and isnull(irn_no,'')='' and isnull(Cancelled,'N')<>'Y' and divcode = '" & Divcode & "' and date = '" & Format(pdate, "yyyy-mm-dd") & "'  and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and formxxdt is not null  and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye ) group by a.inv_type "
            End If
 
            LookUp.DefCol = "InvoiceType"
            LookUp.Caption = "Invoice Listing"
            LookUp.ALIGN = "3000,2000"
            LookUp.Show vbModal
            
          If LookUp.Cancel = False Then
          
              Set adoPrimaryRS = New Recordset
              adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2," & _
                                " CONS_ADD3,CONS_ADD4,entdate,user_id,remarks,tcs_per,tcs_amt,fwd_chrg,educess_per,educess_amt,hscess_per,hscess_amt,taxable_value,ECONTCS_AMT,HSONTCS_AMT,ECONTCS_PER,HSONTCS_PER,Tax_Code,notify_code,typecode,TINV_NO,cust_gststcode,CGSTAMT,SGSTAMT,IGSTAMT,eway_billno,eway_bill_date, lorryphoneno,Load_Amt ,formxxdt from IG_RINVHD where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
              
              Call bindcontls
              
          'GST No for Customer'
              Set rscustgst = New Recordset
              rscustgst.Open "select isnull(gstinno,'')gstinno from fa_slmas where slcode ='" & txtfields(6).Text & "'", DB, adOpenStatic
              If rscustgst.RecordCount > 0 Then
                  txtfields(137).Text = rscustgst("gstinno")
              End If
              
              
              Set ADOSECONDARYRS = New Recordset
              'ADOSECONDARYRS.Open "SELECT distinct a.DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"", b.Description ""Description"", Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Rate_Kg,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,A.FWDCHRG,educess_per,educess_amt,hscess_per,hscess_amt,Ins_Amt,Freight,Tcs_Amt,Round_Off,Tot_Amt,Receiptt_Amt,CNN_Amt,DNN_Amt,taxable_values,ECONTCS_Amt,HSONTCS_Amt  FROM IG_RINVDT a, IG_rProduct b  where a.divcode=b.divcode and a.Product_Code= b.Product_Code and inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and a.divcode = '" & divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                ADOSECONDARYRS.Open "SELECT Distinct a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",ATax_code,ATax_per,Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",ATax_amt,Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,A.FWDCHRG,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
                                    " ,Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt""EC on TCS Amt"",HSONTCS_Amt""HS on TCS Amt"",a.Pack_type,cgstper ""CGST %"",cgstamt ""CGST Amt"",sgstper""SGST %"",sgstamt ""SGST Amt"",igstper ""IGST %"",igstamt ""IGST Amt"",hsncode""HSNCODE"",Godown,Load_Amt ""Loading Amt"" ,a.MixRate  FROM IG_RINVDT a, IG_rProduct b where a.divcode=b.divcode and a.Product_Code= b.Product_Code and inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and a.divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        
              Set grddatagrid.DataSource = ADOSECONDARYRS
              grddatagrid.Enabled = True
              LookUp.Clear = True
              Set TERS = New Recordset
              TERS.Open "select cess,charity,duty,tax,educess,hscess from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
              If Not TERS.EOF Then
              If TERS(0) = "Y" Then
                  Combo1(1).ListIndex = 0
                  Call Combo1_Click(1)
                  CESSFLG = True
              Else
                  Combo1(1).ListIndex = 1
              End If
              
              Else
                  MsgBox "No Matches Found", vbInformation, head
                  Opt = " "
                  Call query_mode
                  Exit Sub
              End If
              If TERS(1) = "Y" Then
                  Combo1(2).ListIndex = 0
                  Call Combo1_Click(2)
                  CHFLG = True
              Else
                  Combo1(2).ListIndex = 1
              End If
              If TERS(2) = "Y" Then
                  Combo1(3).ListIndex = 0
                  Call Combo1_Click(3)
                  DUTYFLG = True
              Else
                  Combo1(3).ListIndex = 1
              End If
              If TERS(3) = "Y" Then
                  Combo1(4).ListIndex = 0
                  Call Combo1_Click(4)
                  TAXFLG = True
              Else
                  Combo1(4).ListIndex = 1
              End If
             If TERS(4) = "Y" Then
                  
                  EDUFLG = True
              Else
                  EDUFLG = False
              End If
              If TERS(5) = "Y" Then
                  HSCESSFLG = True
              Else
                  HSCESSFLG = False
              End If
             Call gridalign

             Call ModLock
             
             On Error Resume Next
'            If Opt = "del" Then BUTTON(9).SetFocus
'            Else
'                Call BUTTON_Click(10)
'            End If
            If canflg = "Y" Then
                        Frame8.Visible = False
                        Buttonframe.Enabled = True
                        Frame9.Left = 6000
                        Frame9.Top = 3500
                        Frame9.Visible = True
                        Frame9.ZOrder
                        Text1.Text = ""
                        Text1.Locked = False
                        Text1.SetFocus
                Else
                        Frame8.Visible = False
                        Buttonframe.Enabled = True
                        Frame9.Visible = False
            End If
                Else
                    Call BUTTON_Click(10)
                End If
Exit Sub
CanDelQry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdCanDelOk_Click of Form Waste Invoice", vbInformation, head

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    intervalMinutes = -1
    
    On Error GoTo adoPrimaryRS_MoveComplete_Error

If Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF And Opt <> "add" Then

    MaskEdBox1(0).Text = IIf(IsNull(adoPrimaryRS("DaTe")), "__/__/____", Format(adoPrimaryRS("date"), "DD/MM/YYYY"))
    MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRS("DELIVERY_DT")), "__/__/____", Format(adoPrimaryRS("DELIVERY_DT"), "DD/MM/YYYY"))
    MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRS("ARE_DATE")), "__/__/____", Format(adoPrimaryRS("ARE_DATE"), "DD/MM/YYYY"))
    MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("LR_DATE")), "__/__/____", Format(adoPrimaryRS("LR_DATE"), "DD/MM/YYYY"))
    MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("eway_bill_date")), "__/__/____", Format(adoPrimaryRS("eway_bill_date"), "DD/MM/YYYY"))
    
    If adoPrimaryRS("pay_mode") = "D" Then
        Combo1(0).ListIndex = 0
    ElseIf adoPrimaryRS("pay_mode") = "A" Then
        Combo1(0).ListIndex = 1
    Else
        Combo1(0).ListIndex = 2
    End If
    
     txtfields(94).Text = adoPrimaryRS("typecode") & ""
     txtfields(98).Text = adoPrimaryRS("lorryphoneno") & ""
     
        Set uu = New Recordset
        uu.Open "select name from  ig_bank where bank_code='" & adoPrimaryRS("Bank_code") & "'", DB
        If Not uu.EOF Then
            txtfields(12).Text = uu(0)
        Else
            txtfields(12).Text = ""
        End If
        
        stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
        BUTTON(1).Enabled = False
    
Else
'    Call bindcontls
    If adoPrimaryRS.RecordCount > 0 Then
        Set grddatagrid.DataSource = Nothing
    End If
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub BUTTON_Click(Index As Integer)
    intervalMinutes = -1
    On Error GoTo BUTTON_Click_Error

Select Case Index
Case 3
Call LoadGAtePassPrint
   
Case 0
'Addition
     
     If Not TrnDateValidation Then Exit Sub
     If ToValidFinYearW = False Then Exit Sub
     Call VaildAdd("add", "ig_rinvhd", "date")
     If Addallow = False Then Exit Sub
     Opt = ""
     desc.Caption = "Addition"
     CHFLG = False:      CESSFLG = False:     DUTYFLG = False:     TAXFLG = False:     errflg = False
     Dim c As Control
     SSTab1.Enabled = True

     For Each c In Me.Controls
        If TypeOf c Is TextBox Then
           c.Text = ""
        End If
     Next
    txtfields(39).Text = 0
     SSTab1.Tab = 0
     Screen.MousePointer = 11
     desc.Caption = "Addition"
     stbar.Panels(2).Text = "Addition"
     DB.BeginTrans
     Set adoPrimaryRS = New Recordset
     Set ADOSECONDARYRS = New Recordset
     adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,entdate,user_id,remarks,tcs_per,tcs_amt,fwd_chrg,educess_per,educess_amt,hscess_per,hscess_amt,taxable_value,ECONTCS_AMT,HSONTCS_AMT,ECONTCS_PER,HSONTCS_PER," & _
                        " ATax_code, ATax_amt,Tax_Code,TCSAssValue,TCSToTValue,notify_code,typecode,TInv_no,cust_gststcode,CGSTAMT,SGSTAMT,IGSTAMT,eway_billno,eway_bill_date, lorryphoneno,Invoice_No,Load_Amt,formxxdt from IG_RINVHD where divcode = '" & Divcode & "' and 1=2 ", DB, adOpenStatic, adLockOptimistic
     adoPrimaryRS.AddNew
     Call bindcontls
     ReDim ITARY(100, 0)
     
     'ADOSECONDARYRS.Open "SELECT a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"", b.Description ""Description"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Rate_Kg,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,                                                                                                                                                                                                                                                    Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO,educess_per,educess_amt,hscess_per,hscess_amt,Ins_Amt,Freight,Tcs_Amt,Round_Off,Tot_Amt,Receiptt_Amt,CNN_Amt,DNN_Amt,taxable_values,ECONTCS_Amt,HSONTCS_Amt FROM IG_RINVDT a, IG_rProduct b where a.divcode=b.divcode and  a.Product_Code=b.Product_Code and a.divcode = '" & divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
     
     'Commented'
'      ADOSECONDARYRS.Open " SELECT Distinct a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",ATax_code,ATax_per,Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",ATax_amt,Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,A.FWDCHRG,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
'            ",Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt""EC on TCS Amt"",HSONTCS_Amt""HS on TCS Amt"",a.Pack_type,TInv_no,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,hsncode FROM IG_RINVDT a, IG_rProduct b where a.divcode=b.divcode and  a.Product_Code=b.Product_Code and a.divcode = '" & divcode & "' and 1=2", db, adOpenStatic, adLockBatchOptimistic
        
        
       ADOSECONDARYRS.Open " SELECT Distinct a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",ATax_code,ATax_per,Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",ATax_amt,Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,A.FWDCHRG,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
            ",Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt""EC on TCS Amt"",HSONTCS_Amt""HS on TCS Amt"",a.Pack_type,TInv_no,cgstper ""CGST %"",cgstamt ""CGST Amt"",sgstper""SGST %"",sgstamt ""SGST Amt"",igstper ""IGST %"",igstamt ""IGST Amt"",hsncode""HSNCODE"",Godown,Load_Amt ""Loading Amt"" ,a.MixRate FROM IG_RINVDT a, IG_rProduct b where a.divcode=b.divcode and  a.Product_Code=b.Product_Code and a.divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        
     Set grddatagrid.DataSource = ADOSECONDARYRS
     Call gridalign
     MaskEdBox1(0).Text = pdate
     DTPicker1(0).value = pdate
     MaskEdBox1(2).Text = pdate
     DTPicker1(2).value = pdate
     txtfields(36).Text = Format(Time, "HH:MM AM/PM")
     txtfields(37).Text = Format(Time, "HH:MM AM/PM")
     txtfields(15).Text = "0.05"
     grddatagrid.AllowAddNew = True
     grddatagrid.AllowUpdate = True
     Call ENABLCONTLS
     Call adddelmod(BUTTON)
     txtfields(0).SetFocus
     Screen.MousePointer = 0
     txtfields(13).Locked = False
     Opt = "add"
     Call InvoiceTypeLookup
     BlnRoundoff = False
     txtfields(76).Text = "0.00"
     txtfields(77).Text = "0.00"
     txtfields(78).Text = "0.00"
     txtfields(79).Text = "0.00"
     txtfields(75).Text = "0.00"
     txtfields(80).Text = "0.00"
     Set Rs = New Recordset
     Rs.Open "select AddTaxflg from ig_rparam where divcode='" & Divcode & "'", DB
     If Not Rs.EOF Then
        If Rs("AddTaxflg") = "Y" Then
            AddTax = True
            txtfields(89).Locked = False
            txtfields(72).Locked = False
            txtfields(88).Locked = False
        Else
            AddTax = False
            txtfields(72).Locked = True
            txtfields(88).Locked = True
        End If
     End If
Case 2 '10-12-2020  cancel option add

        Buttonframe.Enabled = False
        Frame8.Left = 6000
        Frame8.Top = 3500
        Frame8.Visible = True
        Frame8.ZOrder
        If Option1.Enabled Then Option1.value = True Else Option2.value = True
        cmdCanDelOk.SetFocus
        canflg = ""
        delflg = ""
        Exit Sub
        
Case 1, 2, 4     '  mod

    If Record_Exists("IG_RINVHD A WHERE divcode='" & Divcode & "' and date='" & Format(pdate, "DD-MMM-YYYY") & "' and CEX_INV_NO IS NULL OR CEX_INV_NO IN(SELECT MAX(CEX_INV_NO) FROM IG_RINVHD B WHERE A.CEX_INV_TYPE=B.CEX_INV_TYPE GROUP BY CEX_INV_TYPe)", "Invoice Not Found") = False Then
        BUTTON_Click (10)
        Exit Sub
    End If
    BlnRoundoff = False
    If Index = 1 Then
        Opt = "mod"
        errflg = False
        desc.Caption = "Modification"
        DB.BeginTrans
        Call adddelmod(BUTTON)
    ElseIf Index = 2 Then
        Opt = "del"
        errflg = False
        desc.Caption = "Deletion"
        
        Call adddelmod(BUTTON)
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
        Call Find(BUTTON)
    End If
        
    Call ModLock
    txtfields(61).Locked = False
    txtfields(62).Locked = False
    txtfields(63).Locked = False
    txtfields(64).Locked = False
    LookUp.Clear = True
    
    If Opt = "del" Or Opt = "mod" Then
        LookUp.query = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo,a.TInv_no as Invoice_No from Ig_Rinvhd A where isnull(CANCELLED,'N')='N' and isnull(AppFlg,'N')='N' and divcode = '" & Divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
    Else
        LookUp.query = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo,a.TInv_no as Invoice_No from Ig_Rinvhd A where  divcode = '" & Divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " ''and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )
    End If
    LookUp.DefCol = "InvoiceType"
    LookUp.Caption = "Invoice Listing"
    If InvoicenowithPrefix = 1 Then
        LookUp.ALIGN = "3000,2000,2000"
    Else
        LookUp.ALIGN = "3000,2000,0"
    End If
        LookUp.Show vbModal
    If LookUp.Cancel = False Then
    
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,LR_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,PLA_CODE,PLA_NO,PLA_BED,PLA_AED,RG23A_CODE,RG23A_NO,RG23A_BED,RG23A_AED,RG23C_CODE,RG23C_NO,RG23C_AED,RG23C_BED,DELIVERY_DT,CONS_ADD1,CONS_ADD2," & _
                          " CONS_ADD3,CONS_ADD4,entdate,user_id,remarks,tcs_per,tcs_amt,fwd_chrg,educess_per,educess_amt,hscess_per,hscess_amt,taxable_value,ECONTCS_AMT,HSONTCS_AMT,ECONTCS_PER,HSONTCS_PER,Tax_Code,notify_code,typecode,TINV_NO,cust_gststcode,CGSTAMT,SGSTAMT,IGSTAMT,eway_billno,eway_bill_date, lorryphoneno,Load_Amt,formxxdt  from IG_RINVHD where inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and divcode = '" & Divcode & "'", DB, adOpenDynamic, adLockBatchOptimistic
        
        Call bindcontls
        
    'GST No for Customer'
        Set rscustgst = New Recordset
        rscustgst.Open "select isnull(gstinno,'')gstinno from fa_slmas where slcode ='" & txtfields(6).Text & "'", DB, adOpenStatic
        If rscustgst.RecordCount > 0 Then
            txtfields(137).Text = rscustgst("gstinno")
        End If
        
        
        Set ADOSECONDARYRS = New Recordset
        'ADOSECONDARYRS.Open "SELECT distinct a.DIVCODE,Inv_Type ,Inv_No,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"", b.Description ""Description"", Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Rate_Kg,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno,A.FWDCHRG,educess_per,educess_amt,hscess_per,hscess_amt,Ins_Amt,Freight,Tcs_Amt,Round_Off,Tot_Amt,Receiptt_Amt,CNN_Amt,DNN_Amt,taxable_values,ECONTCS_Amt,HSONTCS_Amt  FROM IG_RINVDT a, IG_rProduct b  where a.divcode=b.divcode and a.Product_Code= b.Product_Code and inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and a.divcode = '" & divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
          ADOSECONDARYRS.Open "SELECT Distinct a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",ATax_code,ATax_per,Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",ATax_amt,Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,A.FWDCHRG,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
                              " ,Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt""EC on TCS Amt"",HSONTCS_Amt""HS on TCS Amt"",a.Pack_type,TInv_no,cgstper ""CGST %"",cgstamt ""CGST Amt"",sgstper""SGST %"",sgstamt ""SGST Amt"",igstper ""IGST %"",igstamt ""IGST Amt"",hsncode ""HSNCODE"",Godown,Load_Amt ""Loading Amt"",a.MixRate   FROM IG_RINVDT a, IG_rProduct b where a.divcode=b.divcode and a.Product_Code= b.Product_Code and inv_type='" & LookUp.Fields(0) & "' and inv_no='" & LookUp.Fields(1) & "' and a.divcode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
  
        Set grddatagrid.DataSource = ADOSECONDARYRS
        grddatagrid.Enabled = True
        LookUp.Clear = True
        Set TERS = New Recordset
        TERS.Open "select cess,charity,duty,tax,educess,hscess from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
        If Not TERS.EOF Then
        If TERS(0) = "Y" Then
            Combo1(1).ListIndex = 0
            Call Combo1_Click(1)
            CESSFLG = True
        Else
            Combo1(1).ListIndex = 1
        End If
        
        Else
            MsgBox "No Matches Found", vbInformation, head
            Opt = " "
            Call query_mode
            Exit Sub
        End If
        If TERS(1) = "Y" Then
            Combo1(2).ListIndex = 0
            Call Combo1_Click(2)
            CHFLG = True
        Else
            Combo1(2).ListIndex = 1
        End If
        If TERS(2) = "Y" Then
            Combo1(3).ListIndex = 0
            Call Combo1_Click(3)
            DUTYFLG = True
        Else
            Combo1(3).ListIndex = 1
        End If
        If TERS(3) = "Y" Then
            Combo1(4).ListIndex = 0
            Call Combo1_Click(4)
            TAXFLG = True
        Else
            Combo1(4).ListIndex = 1
        End If
       If TERS(4) = "Y" Then
            
            EDUFLG = True
        Else
            EDUFLG = False
        End If
        If TERS(5) = "Y" Then
            HSCESSFLG = True
        Else
            HSCESSFLG = False
        End If
       Call gridalign
       If Opt = "mod" Then
            grddatagrid.AllowUpdate = True
            Call disablcontls
            For I = 8 To grddatagrid.Columns.Count - 1 Step 1
                grddatagrid.Columns(I).Locked = False
            Next
       End If
        Call ModLock
       
       On Error Resume Next
       If Opt = "del" Then BUTTON(9).SetFocus
    Else
        Call BUTTON_Click(10)
    End If
    
Case 4 'Find
    If Record_Exists("IG_RINVHD H", "Invoice Not Found") = False Then
    BUTTON_Click (10)
    Exit Sub
    End If
    Opt = "qry"
    desc.Caption = "Find"
    errflg = False
    listlb.Caption = "Invoice Listing"
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    ksldesc1.table = "IG_RINVHD where divcode='" & Divcode & "' "
    ksldesc1.listfield1 = "CAST(h.inv_type AS VARCHAR(4))"
    ksldesc1.listfield2 = "H.inv_no"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
    Call gridalign
    
Case 5
'First
         desc.Caption = "Query"
         On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Call query_mode(CStr(adoPrimaryRS!inv_type), CStr(adoPrimaryRS!inv_no))
         BUTTON(5).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(6).Enabled = True
         BUTTON(8).Enabled = True
         stbar.Panels(2).Text = "First Record"
         Exit Sub
GoFirstError:

Case 6
'Next
            desc.Caption = "Query"
            On Error GoTo GoNextError
            adoPrimaryRS.MoveNext
            If adoPrimaryRS.EOF Then
               
                adoPrimaryRS.MoveLast
                txtfields(46).Text = Format(val(adoPrimaryRS("FREIGHT") & "") + val(adoPrimaryRS("LSC_AMT") & "") + val(adoPrimaryRS("INS_AMT") & "") + val(adoPrimaryRS("FWD_CHRG") & ""), "#.00")
            End If
            Call query_mode(CStr(adoPrimaryRS!inv_type), CStr(adoPrimaryRS!inv_no))
            If Not adoPrimaryRS.EOF Then
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            Else
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
            End If
            Exit Sub
GoNextError:

Case 7
 'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        adoPrimaryRS.MovePrevious
        If adoPrimaryRS.BOF Then
            adoPrimaryRS.MoveFirst
            txtfields(46).Text = Format(val(adoPrimaryRS("FREIGHT") & "") + val(adoPrimaryRS("LSC_AMT") & "") + val(adoPrimaryRS("INS_AMT") & "") + val(adoPrimaryRS("FWD_CHRG") & ""), "#.00")
        End If
        Call query_mode(CStr(adoPrimaryRS!inv_type), CStr(adoPrimaryRS!inv_no))
        If Not adoPrimaryRS.BOF Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        Else
            Beep
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        Exit Sub

GoPrevError:
       
Case 8
'Last
         desc.Caption = "Query"
         On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        If adoPrimaryRS.EOF Then
         txtfields(30) = ""
         txtfields(89) = ""
            adoPrimaryRS.MoveLast
            txtfields(46).Text = Format(val(adoPrimaryRS("FREIGHT") & "") + val(adoPrimaryRS("LSC_AMT") & "") + val(adoPrimaryRS("INS_AMT") & "") + val(adoPrimaryRS("FWD_CHRG") & ""), "#.00")
        End If
        Call query_mode(CStr(adoPrimaryRS!inv_type), CStr(adoPrimaryRS!inv_no))
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:
         
Case 9
'SAVE
 
        YrNo = ""
        
        Set RsPP = New Recordset
        RsPP.Open "Select Right(year(AYFDATE),2) YNo from pp_year where  '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' between  AYFDATE and AYlDATE  ", DB, adOpenStatic
        If Not RsPP.EOF Then
            YrNo = RsPP("YNo")
        Else
            MsgBox "Please check Financial Year", vbInformation, head
            Exit Sub
        End If
        
        If YrNo = "" Then
            MsgBox "Please check Invoice Number !!!", vbInformation, head
            Exit Sub
        End If
        
        If Trim(YrNo) = Left(Trim(txtfields(1).Text), 2) Then
        Else
            MsgBox "Please check Invoice Number !!!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
            
        validhsn = "Y"
        If Opt = "add" Then
            If Trim(txtfields(13).Text) = "" Then
                MsgBox "Please Enter Despatch To", vbInformation, head
                SSTab1.Tab = 0
                txtfields(13).SetFocus
                Exit Sub
            End If
            If Trim(txtfields(4).Text) = "" Then
                MsgBox "Please Enter Bale Order Number", vbInformation, head
                txtfields(4).SetFocus
                Exit Sub
            End If
            If val(txtfields(47).Text & "") <= 0 Then
                MsgBox "Invalid Invoice Amount", vbInformation, head
                
                Exit Sub
            End If
        End If
        
'        If Val(txtfields(47).Text) > 50000 Then
'            If txtfields(97).Text = "" Then
'                MsgBox "Please Enter the E-Way Bill No. and E-Way Bill date"
'                Exit Sub
'            End If
'        End If
        
        If txtfields(92).Text = "" Then
            MsgBox "Please Enter the Tax code in Tax/Duty tab...!"
            SSTab2.SetFocus
            txtfields(92).SetFocus
            Exit Sub
        End If
        
    '''10.05.2022 below validation added
     '''start=====================================
    If val(txtfields(85).Text) > 0 Then
        Set RsPrm = New Recordset
        RsPrm.Open "Select isnull(fa_link,'N') FALink  from ig_param where divcode='" & Divcode & "'", DB, adOpenStatic
        
        Set RsItyp = New Recordset
        RsItyp.Open "Select isnull(fa_transfer,'N') FATransFlg from ig_invtype  where divcode='" & Divcode & "' and inv_type='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
        
        Set RsFpm = New Recordset
        RsFpm.Open "Select isnull(salapp,'N') SalApp  from fa_param ", DB, adOpenStatic

        
        If RsPrm("FALink") = "Y" And RsItyp("FATransFlg") = "Y" And RsFpm("SalApp") = "Y" Then
        
            Set Rs222 = New Recordset
            Rs222.Open "select isnull(a.Org_type,'') Org_type,isnull(pan,'') pan from fa_slmas a inner join FA_org_type b on a.ORG_TYPE=b.ORG_TYPE where a.slcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If Rs222.EOF Then
                MsgBox "Organization Type is not mapped in Customer Master !!! Please Map Organization Type for selected Customer", vbInformation, head
                Exit Sub
            End If
            
            Set Rs222 = New Recordset
            Rs222.Open "select isnull(b.glcode,'') TDSGL from fa_slmas a inner join fa_tds_gl b on a.ORG_TYPE=b.ORG_TYPE where a.slcode='" & Trim(txtfields(6).Text) & "' ", DB, adOpenStatic
            If Rs222.EOF Then
                MsgBox "Please Map GL Code/Organization Type for selected Customer", vbInformation, head
                Exit Sub
            End If
        End If
    End If
     '''end=======================================
        
        
    If Opt = "add" Then
      
      Set rsg = New Recordset
          rsg.Open "SELECT isnull(DocNoGrp,0) DocNoGrp,ISNULL(DIVGRP,'')DIVGRP,isnull(doc_prefix,'') doc_prefix  from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            DocNoGrp = rsg("DOCNOGRP")
            divgrp = rsg("DIVGRP")
            Doc_prefix = rsg("doc_prefix")
        End If
    
    If InvnoEdit = False Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) last_no,MAX(docno) docno from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'", DB
    
        '- for shivdhara diff invioce no
      If InvoicenowithPrefix = 1 Then
        txtfields(96).Text = Trim(Doc_prefix) & CStr((Rs("docno") + 1))
        Doc_Prefixdocno = (Rs("docno") + 1)
      Else
        txtfields(96).Text = ""
        Doc_Prefixdocno = 0
      End If
        '-----------
        docno = YearNo & Padl(CStr(Rs("last_no") + 1), 6, "0")
        txtfields(1).Text = docno
        txtfields(1).SetFocus
    ElseIf InvnoEdit = True Then
        
        If txtfields(1).Text = "" Then
            MsgBox " Please enter Invoice No", vbInformation, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        
        Set rsg = New Recordset
            rsg.Open " SELECT DISTINCT inv_no FROM IG_INVHD a, ig_doccontrol c WHERE a.INV_NO='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and a.divcode = '" & Divcode & "' and a.Date Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.INV_TYPE=c.DOC_REF AND a.divcode='" & Divcode & "' and a.divcode=c.divcode and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'" & _
                    " union SELECT DISTINCT inv_no FROM IG_rINVHD a, ig_doccontrol c WHERE a.INV_NO='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and a.divcode = '" & Divcode & "' and a.Date Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.INV_TYPE=c.DOC_REF AND a.divcode='" & Divcode & "' and a.divcode=c.divcode and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'" & _
                    " union SELECT DISTINCT inv_no FROM IG_cINVHD a, ig_doccontrol c WHERE a.INV_NO='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and a.divcode = '" & Divcode & "' and a.Date Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.INV_TYPE=c.DOC_REF AND a.divcode='" & Divcode & "' and a.divcode=c.divcode and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'" & _
                    " union SELECT DISTINCT invono FROM IG_wINVHD a, ig_doccontrol c WHERE a.INVoNO='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and a.divcode = '" & Divcode & "' and a.invdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.INV_TYPE=c.DOC_REF AND a.divcode='" & Divcode & "' and a.divcode=c.divcode and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'" & _
                    " union SELECT DISTINCT inv_no FROM IG_FINVHD a, ig_doccontrol c WHERE a.INV_NO='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and a.divcode = '" & Divcode & "' and a.Date Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.INV_TYPE=c.DOC_REF AND a.divcode='" & Divcode & "' and a.divcode=c.divcode and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'", DB
                 
        If rsg.RecordCount > 0 Then
            If rsg(0) = txtfields(1).Text Then
                MsgBox "Invoice Number Cannot be Duplicated", vbInformation, head
                SSTab1.Tab = 0
                txtfields(1).SetFocus
                Exit Sub
            End If
         End If
    End If
    
        INSNO = 0
        Call INVCALC
        ADOSECONDARYRS.MoveFirst
        
        Do While Not ADOSECONDARYRS.EOF
            If grddatagrid.Columns(Gpacks).Text = "" Then
                ADOSECONDARYRS.Delete
            Else
                INSNO = INSNO + 1
                ADOSECONDARYRS("DIVCODE") = Divcode
                ADOSECONDARYRS("INV_TYPE") = txtfields(0).Text
                ADOSECONDARYRS("INV_NO") = txtfields(1).Text
                ADOSECONDARYRS("TInv_no") = txtfields(96).Text
                ADOSECONDARYRS("INVSNO") = INSNO
                ADOSECONDARYRS("Cont No.") = IIf(IsNull(ADOSECONDARYRS("Cont No.")), "", ADOSECONDARYRS("Cont No."))
                ADOSECONDARYRS("Cont Type") = IIf(IsNull(ADOSECONDARYRS("Cont Type")), "", ADOSECONDARYRS("Cont Type"))
            End If
            ADOSECONDARYRS.MoveNext
        Loop
        
            Call INVCALC
            DBED = 0
            DAED = 0
        If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
            DBED = val(txtfields(51).Text) + val(txtfields(55).Text) + val(txtfields(59).Text)
            If Not val(txtfields(43)) = val(DBED) Then
                MsgBox "B.E.D Amount Not Tally", vbInformation, head
                txtfields(34).SetFocus
                Exit Sub
            End If
            DAED = val(txtfields(52).Text) + val(txtfields(56).Text) + val(txtfields(60).Text)
            If Not (val(txtfields(44)) = val(DAED)) Then
                MsgBox "A.E.D Amount Not Tally", vbInformation, head
                txtfields(34).SetFocus
                Exit Sub
            End If
        End If
        If Combo1(0).ListIndex = 0 Then
            adoPrimaryRS("pay_mode") = "D"
        ElseIf Combo1(0).ListIndex = 1 Then
            adoPrimaryRS("pay_mode") = "A"
        Else
            adoPrimaryRS("pay_mode") = "P"
        End If
        If STFLAG = "L" Then
            adoPrimaryRS("TAX_FLAG") = "L"
        ElseIf STFLAG = "I" Then
            adoPrimaryRS("TAX_FLAG") = "C"
        Else
            adoPrimaryRS("TAX_FLAG") = "N"
        End If
        
        adoPrimaryRS("TInv_no") = txtfields(96).Text
        adoPrimaryRS("cust_code") = Trim(txtfields(6).Text)
        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
        
        'If txtfields(47).Text > 50000 Then
            If IsDate(MaskEdBox1(4)) Then adoPrimaryRS("eway_bill_date") = Format(MaskEdBox1(4), "YYYY/mm/dd")
        'End If
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("User_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")

        adoPrimaryRS("educess_per") = val(txtfields(75).Text)
        adoPrimaryRS("educess_amt") = val(txtfields(76).Text)
        adoPrimaryRS("hscess_per") = val(txtfields(77).Text)
        adoPrimaryRS("hscess_amt") = val(txtfields(78).Text)
        
'        adoPrimaryRS("taxable_value") = Val(TXTFIELDS(40).Text & "") + Val(TXTFIELDS(41).Text & "") + _
'                                        Val(TXTFIELDS(42).Text & "") + Val(TXTFIELDS(46).Text & "") + Val(TXTFIELDS(43).Text & "") + Val(TXTFIELDS(44).Text & "")

        
        adoPrimaryRS("taxable_value") = val(txtfields(40).Text & "") + val(txtfields(43).Text & "") + val(txtfields(44).Text & "") + val(txtfields(99).Text & "")
        Dim TAXABLEVAL As Double
        
        TAXABLEVAL = val(txtfields(40).Text & "") + val(txtfields(43).Text & "") + val(txtfields(44).Text & "")
        
        If BlnFrt Then
            TAXABLEVAL = TAXABLEVAL + val(txtfields(31).Text & "")
        End If
        If BInCESSTAX Then
            TAXABLEVAL = TAXABLEVAL + val(txtfields(42).Text & "")
        End If
        If BlnCharity Then
            TAXABLEVAL = TAXABLEVAL + val(txtfields(41).Text & "")
        End If
        If BlnPackTax = True Then
          TAXABLEVAL = TAXABLEVAL + val(txtfields(74).Text & "")
        End If
        If BlnInsurance = True Then
        TAXABLEVAL = TAXABLEVAL + val(txtfields(49).Text & "")
        End If
        TAXABLEVAL = TAXABLEVAL + val(txtfields(99).Text & "")
        
        adoPrimaryRS("taxable_value") = val(TAXABLEVAL)
        adoPrimaryRS("tcs_per") = val(txtfields(73).Text)
        adoPrimaryRS("tcs_amt") = val(txtfields(71).Text)
        adoPrimaryRS("ECONTCS_PER") = val(txtfields(84).Text)
        adoPrimaryRS("ECONTCS_AMT") = val(txtfields(83).Text)
        adoPrimaryRS("HSONTCS_PER") = val(txtfields(82).Text)
        adoPrimaryRS("HSONTCS_AMT") = val(txtfields(81).Text)
        
        adoPrimaryRS("TCSAssValue") = val(txtfields(93).Text)
        adoPrimaryRS("TCSToTValue") = val(val(adoPrimaryRS("tcs_amt")) + val(adoPrimaryRS("ECONTCS_AMT")) + val(adoPrimaryRS("HSONTCS_AMT")))
        
        adoPrimaryRS("Atax_code") = Trim(txtfields(72).Text)
        adoPrimaryRS("Atax_amt") = Trim(txtfields(89).Text)
        
        adoPrimaryRS("NOTIFY_CODE") = Trim(txtfields(124).Text)
         adoPrimaryRS("ins_amt") = val(txtfields(49).Text)
'         adoPrimaryRS("TOTAL_AMT") = invamt
        
        If UCase(CustID) = "LMW" Then
            adoPrimaryRS("INS_AMT") = 0
        End If
        
        Set uu = New Recordset
        uu.Open "select bank_code from  ig_bank where name='" & txtfields(12).Text & "' ", DB
        If Not uu.EOF Then
            adoPrimaryRS("Bank_code") = uu(0)
        End If
        
        '' 11-May-2007 - following 2 lines commented
        '''' adoPrimaryRS("vehicle") = txtfields(72).Text
        adoPrimaryRS("formxxdt") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("remarks") = txtfields(70).Text
        adoPrimaryRS("Receipt_Amt") = 0
        adoPrimaryRS("CN_Amt") = 0
        adoPrimaryRS("DN_Amt") = 0
       '18/03/14
        adoPrimaryRS("RND_OFF") = val(txtfields(39))
        adoPrimaryRS("typecode") = txtfields(94).Text
       ' adoPrimaryRS("lorryphoneno") = TXTFIELDS(98).Text
        
        If val(txtfields(99).Text) > 0 Then AmountSplitup "Loading Amt", txtfields(99).Text, "            Value", True
        If val(txtfields(99).Text) > 0 Then AmountSplitup "Loading Amt", txtfields(99).Text, "            Value"
        If val(txtfields(31).Text) > 0 Then AmountSplitup "         Freight", txtfields(31).Text, "            Value", True
        If val(txtfields(49).Text) > 0 Then AmountSplitup "        Ins Amt", txtfields(49).Text, "            Value", True
        If val(txtfields(71).Text) > 0 Then AmountSplitup "       TCS Amt", txtfields(71).Text, "            Value", True
        If val(txtfields(39).Text) > 0 Then AmountSplitup "      Round Off", txtfields(39).Text, "            Value", True
'        If Val(TXTFIELDS(47).Text) > 0 Then AmountSplitup "    Total Amt", TXTFIELDS(47).Text, "            Value", True
        '28.12.2021 taxable_value column commented by Annamalai s
        If IIf(IsNull(adoPrimaryRS("taxable_value")), 0, val(adoPrimaryRS("taxable_value"))) > 0 Then AmountSplitup "Taxable_Values", adoPrimaryRS("taxable_value"), "            Value", True
        If IIf(IsNull(adoPrimaryRS("Receipt_Amt")), 0, val(adoPrimaryRS("Receipt_Amt"))) > 0 Then AmountSplitup "  Receipt Amt", adoPrimaryRS("Receipt_Amt"), "            Value", True
        If IIf(IsNull(adoPrimaryRS("CN_Amt")), 0, val(adoPrimaryRS("CN_Amt"))) > 0 Then AmountSplitup "      CNN Amt", adoPrimaryRS("CN_Amt"), "            Value", True
        If IIf(IsNull(adoPrimaryRS("DN_Amt")), 0, val(adoPrimaryRS("DN_Amt"))) > 0 Then AmountSplitup "      DNN Amt", adoPrimaryRS("DN_Amt"), "            Value", True
        If val(txtfields(40).Text) > 0 Then AmountSplitup "            Value", txtfields(40).Text
        If val(txtfields(41).Text) > 0 Then AmountSplitup "          Charity", txtfields(41).Text
        If val(txtfields(45).Text) > 0 Then AmountSplitup "        Tax Amt", txtfields(45).Text
        If val(txtfields(43).Text) > 0 Then AmountSplitup "    B.E.D. Amt", txtfields(43).Text
        If val(txtfields(44).Text) > 0 Then AmountSplitup "   A.E.D. Amt", txtfields(44).Text
        If val(txtfields(28).Text) > 0 Then AmountSplitup "Surcharge Amt", txtfields(28).Text
        If val(txtfields(42).Text) > 0 Then AmountSplitup "      Cess Amt", txtfields(42).Text
        If val(txtfields(74).Text) > 0 Then AmountSplitup "Fwdchrg", txtfields(74).Text
        If val(txtfields(76).Text) > 0 Then AmountSplitup "    Edu. Cess Amt", txtfields(76).Text
        If val(txtfields(78).Text) > 0 Then AmountSplitup "   H.S. Cess Amt", txtfields(78).Text
        If val(txtfields(31).Text) > 0 Then AmountSplitup "         Freight", txtfields(31).Text
        If val(txtfields(49).Text) > 0 Then AmountSplitup "        Ins Amt", txtfields(49).Text
        If val(txtfields(71).Text) > 0 Then AmountSplitup "       TCS Amt", txtfields(71).Text
        If val(txtfields(39).Text) > 0 Then AmountSplitup "      Round Off", txtfields(39).Text
        ''28.12.2021
        If val(txtfields(47).Text) > 0 Then AmountSplitup "    Total Amt", txtfields(47).Text
'        If Val(TXTFIELDS(47).Text) > 0 Then AmountSplitup "    Total Amt", adoPrimaryRS("total_amt")
        If val(txtfields(83).Text) > 0 Then AmountSplitup "EC on TCS Amt", txtfields(83).Text
        If val(txtfields(81).Text) > 0 Then AmountSplitup "HS on TCS Amt", txtfields(81).Text
        If val(txtfields(90).Text) > 0 Then AmountSplitup "aTax_Amt", txtfields(90).Text
        
        If val(adoPrimaryRS("Receipt_Amt")) > 0 Then AmountSplitup "  Receipt Amt", adoPrimaryRS("Receipt_Amt")
        If val(adoPrimaryRS("CN_Amt")) > 0 Then AmountSplitup "CNN_Amt", adoPrimaryRS("CN_Amt")
        If val(adoPrimaryRS("DN_Amt")) > 0 Then AmountSplitup "DNN_Amt", adoPrimaryRS("DN_Amt")
        If val(adoPrimaryRS("taxable_value")) > 0 Then AmountSplitup "taxable_values", adoPrimaryRS("taxable_value")
        
        
        ' adoPrimaryRS.UpdateBatch adAffectAllChapters
        ' Set DB = New Connection
        ' DB.CursorLocation = adUseClient
        ' DB.Open "PROVIDER=MSDataShape;" & connectstring
  
        Dim NewRs As Recordset
        Set NewRs = New Recordset
        NewRs.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex,Rate_Nett,Rate_Kg,Value,Charity,Tax_code,Tax_Per,ATax_code,ATax_per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,ATax_amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,Invsno,FWDCHRG,educess_per,educess_amt,hscess_per,hscess_amt,Ins_Amt,Freight,Tcs_Amt,Round_Off,Tot_Amt" & _
                   " ,Receiptt_Amt,CNN_Amt,DNN_Amt,Taxable_Values,ECONTCS_Amt,HSONTCS_Amt,Pack_type,TInv_no,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,hsncode,Godown,Load_Amt,MixRate  FROM IG_RINVDT where divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        ADOSECONDARYRS.MoveFirst
        
        While Not ADOSECONDARYRS.EOF
        
            NewRs.AddNew
            NewRs.Fields(0) = ADOSECONDARYRS.Fields(0)
            NewRs.Fields(1) = ADOSECONDARYRS.Fields(1)
            NewRs.Fields(2) = ADOSECONDARYRS.Fields(2)
            NewRs.Fields(3) = ADOSECONDARYRS.Fields(3)
            NewRs.Fields(4) = ADOSECONDARYRS.Fields(4)
            NewRs.Fields(5) = ADOSECONDARYRS.Fields(5)
            
            
            For I = 6 To NewRs.Fields.Count - 1
                NewRs.Fields(I) = ADOSECONDARYRS.Fields(I + 1)
            Next
                                
            NewRs("TInv_no") = ADOSECONDARYRS("Tinv_no")
            NewRs("FWDCHRG") = val(ADOSECONDARYRS("FWDCHRG") & "")
            NewRs("Ins_Amt") = IIf(IsNull(ADOSECONDARYRS("        Ins Amt")), 0, ADOSECONDARYRS("        Ins Amt"))
            'NewRs("Ins_Amt") = Val(ADOSECONDARYRS("        Ins Amt") & "")
            NewRs("Freight") = val(ADOSECONDARYRS("         Freight") & "")
            NewRs("Tcs_Amt") = val(ADOSECONDARYRS("       TCS Amt") & "")
            NewRs("Round_Off") = val(ADOSECONDARYRS("      Round Off") & "")
            '''28.12.2021
''            NewRs("Tot_Amt") = Val(ADOSECONDARYRS("    Total Amt") & "")
            NewRs("Tot_Amt") = (val(ADOSECONDARYRS("        Ins Amt") & "") + val(ADOSECONDARYRS("    Edu. Cess Amt") & "") + val(ADOSECONDARYRS("      Round Off") & "") + val(ADOSECONDARYRS("            Value") & "") + val(ADOSECONDARYRS("          Charity") & "") + val(ADOSECONDARYRS("      Cess Amt") & "") + val(ADOSECONDARYRS("    B.E.D. Amt") & "") + val(ADOSECONDARYRS("   A.E.D. Amt") & "") + val(ADOSECONDARYRS("   H.S. Cess Amt") & "") + val(ADOSECONDARYRS("        Tax Amt") & "") + val(ADOSECONDARYRS("ATax_amt") & "") + val(ADOSECONDARYRS("Surcharge Amt") & "") + val(ADOSECONDARYRS("FWDCHRG") & "") + val(ADOSECONDARYRS("         Freight") & "") + val(ADOSECONDARYRS("       TCS Amt") & "") + val(ADOSECONDARYRS("Loading Amt") & ""))
            NewRs("Receiptt_Amt") = val(ADOSECONDARYRS("  Receipt Amt") & "")
            NewRs("CNN_Amt") = val(ADOSECONDARYRS("      CNN Amt") & "")
            NewRs("DNN_Amt") = val(ADOSECONDARYRS("      DNN Amt") & "")
            NewRs("educess_per") = val(txtfields(75).Text)
            NewRs("educess_amt") = val(ADOSECONDARYRS("    Edu. Cess Amt") & "")
            NewRs("hscess_per") = val(txtfields(77).Text)
            NewRs("hscess_amt") = val(ADOSECONDARYRS("   H.S. Cess Amt") & "")
            '''NewRs("taxable_values") = Val(ADOSECONDARYRS("Taxable_Values") & "")
            NewRs("taxable_values") = IIf(IsNull(ADOSECONDARYRS("Taxable_Values")), 0, ADOSECONDARYRS("Taxable_Values"))
            NewRs("atax_amt") = val(ADOSECONDARYRS("atax_amt") & "")
            NewRs("atax_per") = val(ADOSECONDARYRS("atax_per") & "")
            NewRs("atax_code") = Trim(ADOSECONDARYRS("atax_code") & "")
            NewRs("Pack_type") = Trim(ADOSECONDARYRS("Pack_type") & "")
            
            'For GST
            
            NewRs("cgstper") = IIf(IsNull(ADOSECONDARYRS("CGST %")), 0, ADOSECONDARYRS("CGST %"))
            NewRs("cgstamt") = IIf(IsNull(ADOSECONDARYRS("CGST Amt")), 0, ADOSECONDARYRS("CGST Amt"))
            NewRs("sgstper") = IIf(IsNull(ADOSECONDARYRS("SGST %")), 0, ADOSECONDARYRS("SGST %"))
            NewRs("sgstamt") = IIf(IsNull(ADOSECONDARYRS("SGST Amt")), 0, ADOSECONDARYRS("SGST Amt"))
            NewRs("igstper") = IIf(IsNull(ADOSECONDARYRS("IGST %")), 0, ADOSECONDARYRS("IGST %"))
            NewRs("igstamt") = IIf(IsNull(ADOSECONDARYRS("IGST Amt")), 0, ADOSECONDARYRS("IGST Amt"))
            
            hsncde = IIf(IsNull(ADOSECONDARYRS("hsncode")), "", ADOSECONDARYRS("hsncode"))
            If hsncde = "" Then
                MsgBox "The HSN Code is not available for this product :" & ADOSECONDARYRS.Fields(5)
                Exit Sub
            Else
                NewRs("hsncode") = IIf(IsNull(ADOSECONDARYRS("hsncode")), "", ADOSECONDARYRS("hsncode"))
            End If
             NewRs("godown") = Trim(ADOSECONDARYRS("godown") & "")
             NewRs("Load_Amt") = IIf(IsNull(ADOSECONDARYRS("Loading Amt")), 0, ADOSECONDARYRS("Loading Amt"))
             
            ADOSECONDARYRS.MoveNext
        Wend
        NewRs.UpdateBatch adAffectAllChapters
        DB.Execute "update ig_rbohd set inv_no='" & txtfields(1).Text & "',inv_type='" & txtfields(0).Text & "' where bo_type='" & txtfields(4).Text & "' and bo_no='" & txtfields(5).Text & "' and divcode='" & Divcode & "'"
                
        CEXNOGRP = 0: DocNoGrp = 0: divgrp = ""
        Set rsg = New Recordset
        rsg.Open "SELECT isnull(DocNoGrp,0)""DocNoGrp"",isnull(CexNoGrp,0)""CexNoGrp"",ISNULL(DIVGRP,'')DIVGRP from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            DocNoGrp = rsg("DOCNOGRP")
            CEXNOGRP = rsg("CexNoGrp")
            divgrp = rsg("DIVGRP")
        End If
        
        Set RSGLB = New Recordset
        RSGLB.Open "SELECT ISNULL(DIVGRP_NOGEN_FLG,'N')DIVGRP FROM IG_PARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
    
        Set Rs = New Recordset
        If RSGLB("DIVGRP") = "Y" Then
            DB.Execute "update ig_doccontrol set Cex_lastno =" & val(Mid$(txtfields(3).Text, 3, 8)) & " where divcode='" & Divcode & "' and divGRP='" & divgrp & "' and year_no='" & YearNo & "' AND CexNoGRP=" & CEXNOGRP & "  AND DOC_TYPE='I'", a
        Else
            DB.Execute "update ig_doccontrol set Cex_lastno =" & val(Mid$(txtfields(3).Text, 3, 8)) & " where divcode='" & Divcode & "' and year_no='" & YearNo & "' AND CexNoGRP=" & CEXNOGRP & "  AND DOC_TYPE='I'", a
        End If
        ''DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & Val(Mid$(txtfields(1).Text, 3, 8)) & " WHERE DOC_TYPE='I' AND DIVCODE='" & divcode & "' AND DOC_REF='" & txtfields(0).Text & "' AND YEAR_NO='" & YearNo & "'", a
         
            DB.Execute " UPDATE ig_DOCCONTROL SET LAST_NO=" & val(Mid$(txtfields(1).Text, 3, 8)) & " WHERE divcode='" & Divcode & "' and year_no='" & YearNo & "' AND isnull(DOCNOGRP,0)=" & DocNoGrp & "  AND DOC_TYPE='I' AND isnull(DIVGRP,'')='" & divgrp & "'", a
        
        If InvoicenowithPrefix = 1 Then
            DB.Execute "UPDATE ig_DOCCONTROL SET docno=" & Doc_Prefixdocno & " WHERE divcode='" & Divcode & "' and year_no='" & YearNo & "' AND isnull(DOCNOGRP,0)=" & DocNoGrp & "  AND DOC_TYPE='I' AND isnull(DIVGRP,'')='" & divgrp & "'", a
        End If
        
        ''If Not Trim(txtfields(2).Text) = "" Then DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=" & Val(Mid$(txtfields(3).Text, 3, 8)) & " WHERE DOC_TYPE='E' AND DOC_REF='" & txtfields(2).Text & "' AND YEAR_NO='" & YearNo & "'"
        ''Call AddUpdate
        
 
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
        If Not errflg Then
            DB.CommitTrans
        End If
        
           
        '========================FA Posting Details========================
        If Opt = "add" Or Opt = "mod" Then
        
            If UCase(getFAtransferFlg(Trim(txtfields(0).Text))) = UCase("Y") Then
                
                sql = ""
                'Sql = "SELECT ISNULL(A.TC_CODE,'')TC_CODE FROM IG_INVTYPE A WHERE A.DIVCODE='" & divcode & "' AND A.INV_TYPE='" & txtfields(0).Text & "'"
                
                sql = "SELECT ISNULL(A.TC_CODE,0)TC_CODE FROM IG_INVTYPE A WHERE A.DIVCODE='" & Divcode & "' AND A.INV_TYPE='" & txtfields(0).Text & "'"
                Set rsinvtype = New Recordset
                rsinvtype.Open sql, DB, adOpenStatic
                invtc = rsinvtype("tc_code")
                        
                frmFa.sTC = invtc
                frmFa.sVocno = val(Mid(txtfields(1), 3, 8))
                frmFa.sVocdt = Format(DTPicker1(0).value, "dd/mm/yyyy")
                frmFa.sBillNo = ""
                frmFa.sBillDt = ""
                frmFa.sTrnType = "SA"
                frmFa.Show vbModal
                If Not frmFa.bolTally Then
                    Opt = "del"
                    BolAutoDel = True
                    Call BUTTON_Click(9)
                    BolAutoDel = False
                    Exit Sub
                End If
                
            End If
        End If
                '========================FA Posting Details========================
 

''28-11-2019 Log table created
            Set RsTransLog = New Recordset
            RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                
                RsTransLog.AddNew
                RsTransLog("Divcode") = Divcode
                RsTransLog("moduleNo") = ModuleNo
                RsTransLog("Trans_Module") = "RM Waste Sales"
                RsTransLog("Trans_Name") = heading
                RsTransLog("Trans_Mod") = "ADD"
                RsTransLog("Trans_Host") = LocalHost
                RsTransLog("Trans_IPADD") = LocalIPAdd
                RsTransLog("Trans_UserId") = usrid
                RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                RsTransLog("docno") = Trim(txtfields(1).Text)
                RsTransLog("SDI_TYPE") = Trim(txtfields(0).Text)
                RsTransLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                RsTransLog("custcode") = txtfields(6).Text
                RsTransLog("agentcode") = txtfields(8).Text
 
               RsTransLog.UpdateBatch adAffectAll
               
               
        MsgBox "Records Saved Successfully", vbInformation, head
        Call InvoicenoUpdate
        Opt = " "
        
        
    ElseIf Opt = "mod" Then
'            db.BeginTrans
'            If adoPrimaryRS("eway_billno") = "" Then
'                MsgBox "Please enter the E Way Bill No", vbInformation, vbhead
'                txtfields(97).SetFocus
'                Exit Sub
'            End If
                If Format(MaskEdBox1(4), "YYYY-mm-dd") = "__/__/____" Then
                    MsgBox "Please select the E - Way Bill Date", vbInformation, head
                Exit Sub
                End If
                DB.Execute "Update IG_RINVHD SET  eway_billno='" & (adoPrimaryRS("eway_billno") & "") & "',eway_bill_date='" & Format(MaskEdBox1(4), "YYYY-mm-dd") & "' from IG_RINVHD where divcode = '" & Divcode & "' and inv_no='" & txtfields(1).Text & "' and inv_type='" & txtfields(0).Text & "'"
            DB.CommitTrans
          Opt = " "
            MsgBox " Modification Sucessfully", vbInformation, head
'          Call query_mode
          Call BUTTON_Click(10)
         Exit Sub
        
        adoPrimaryRS("User_id") = usrid
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("formxxdt") = Format(Date, "yyyy-mm-dd")
        
   
        adoPrimaryRS("DATE") = Format(MaskEdBox1(0).Text, "YYYY/MM/DD")
        If IsDate(MaskEdBox1(2)) Then adoPrimaryRS("DELIVERY_DT") = Format(MaskEdBox1(2), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(1)) Then adoPrimaryRS("Are_Date") = Format(MaskEdBox1(1), "YYYY/mm/dd")
        If IsDate(MaskEdBox1(3)) Then adoPrimaryRS("LR_Date") = Format(MaskEdBox1(3), "YYYY/mm/dd")
        
        If IsDate(MaskEdBox1(4)) Then adoPrimaryRS("eway_bill_date") = Format(MaskEdBox1(4), "YYYY/mm/dd")
        
        adoPrimaryRS("tcs_per") = val(txtfields(73).Text)
        adoPrimaryRS("tcs_amt") = val(txtfields(71).Text)
        adoPrimaryRS("educess_per") = val(txtfields(75).Text)
        adoPrimaryRS("educess_amt") = val(txtfields(76).Text)
        adoPrimaryRS("hscess_per") = val(txtfields(77).Text)
        adoPrimaryRS("hscess_amt") = val(txtfields(78).Text)
        adoPrimaryRS("taxable_value") = val(txtfields(40).Text & "") + val(txtfields(41).Text & "") + _
                                        val(txtfields(42).Text & "") + val(txtfields(46).Text & "") + val(txtfields(43).Text & "") + val(txtfields(44).Text & "") + val(txtfields(99).Text & "")
        
        'If Val(txtFields(99).Text) > 0 Then AmountSplitup "Loading Amt", txtFields(99).Text, "Value", True
        If val(txtfields(31).Text) > 0 Then AmountSplitup "Freight", txtfields(31).Text, "Value", True
        If val(txtfields(49).Text) > 0 Then AmountSplitup "Ins_Amt", txtfields(49).Text, "Value", True
        If val(txtfields(71).Text) > 0 Then AmountSplitup "Tcs_Amt", txtfields(71).Text, "Value", True
        If val(txtfields(39).Text) > 0 Then AmountSplitup "Round_Off", txtfields(39).Text, "Value", True
        If val(txtfields(47).Text) > 0 Then AmountSplitup "Tot_Amt", txtfields(47).Text, "Value", True
        If val(adoPrimaryRS("taxable_value")) > 0 Then AmountSplitup "taxable_values", adoPrimaryRS("taxable_value"), "Value", True
        If val(adoPrimaryRS("Receipt_Amt")) > 0 Then AmountSplitup "Receiptt_Amt", adoPrimaryRS("Receipt_Amt"), "Value", True
        If val(adoPrimaryRS("CN_Amt")) > 0 Then AmountSplitup "CNN_Amt", adoPrimaryRS("CN_Amt"), "Value", True
        If val(adoPrimaryRS("DN_Amt")) > 0 Then AmountSplitup "DNN_Amt", adoPrimaryRS("DN_Amt"), "Value", True
        
        If val(txtfields(40).Text) > 0 Then AmountSplitup "Value", txtfields(40).Text
        If val(txtfields(41).Text) > 0 Then AmountSplitup "Charity", txtfields(41).Text
        If val(txtfields(45).Text) > 0 Then AmountSplitup "Tax_Amt", txtfields(45).Text
        If val(txtfields(43).Text) > 0 Then AmountSplitup "Bed_Amt", txtfields(43).Text
        If val(txtfields(44).Text) > 0 Then AmountSplitup "Aed_Amt", txtfields(44).Text
        If val(txtfields(28).Text) > 0 Then AmountSplitup "Lsc_Amt", txtfields(28).Text
        If val(txtfields(42).Text) > 0 Then AmountSplitup "Cess_Amt", txtfields(42).Text
        If val(txtfields(74).Text) > 0 Then AmountSplitup "Fwdchrg", txtfields(74).Text
        If val(txtfields(76).Text) > 0 Then AmountSplitup "educess_amt", txtfields(76).Text
        If val(txtfields(78).Text) > 0 Then AmountSplitup "hscess_amt", txtfields(78).Text
        If val(txtfields(31).Text) > 0 Then AmountSplitup "Freight", txtfields(31).Text
        If val(txtfields(49).Text) > 0 Then AmountSplitup "Ins_Amt", txtfields(49).Text
        If val(txtfields(71).Text) > 0 Then AmountSplitup "Tcs_Amt", txtfields(71).Text
        If val(txtfields(39).Text) > 0 Then AmountSplitup "Round_Off", txtfields(39).Text
        If val(txtfields(47).Text) > 0 Then AmountSplitup "Tot_Amt", txtfields(47).Text
        If val(adoPrimaryRS("Receipt_Amt")) > 0 Then AmountSplitup "Receiptt_Amt", adoPrimaryRS("Receipt_Amt")
        If val(adoPrimaryRS("CN_Amt")) > 0 Then AmountSplitup "CNN_Amt", adoPrimaryRS("CN_Amt")
        If val(adoPrimaryRS("DN_Amt")) > 0 Then AmountSplitup "DNN_Amt", adoPrimaryRS("DN_Amt")
        If val(adoPrimaryRS("taxable_value")) > 0 Then AmountSplitup "taxable_values", adoPrimaryRS("taxable_value")
        
        '' 11-May-2007 - following 2 lines commented
        ''adoPrimaryRS("vehicle") = txtfields(72).Text
        
        adoPrimaryRS("remarks") = txtfields(70).Text
        
        adoPrimaryRS("NOTIFY_CODE") = Trim(txtfields(124).Text)
        
        adoPrimaryRS("typecode") = txtfields(94).Text
        
        DB.Execute "Update IG_RINVHD SET DIVCODE='" & adoPrimaryRS("Divcode") & "" & "',INV_TYPE='" & adoPrimaryRS("Inv_Type") & "" & "', " & _
                   " INV_NO ='" & adoPrimaryRS("Inv_NO") & "" & "',CEX_INV_TYPE='" & adoPrimaryRS("Cex_Inv_type") & "" & "',CEX_INV_NO='" & adoPrimaryRS("Cex_Inv_NO") & "" & "', " & _
                   " DATE = '" & adoPrimaryRS("Date") & "" & "',CUST_CODE='" & adoPrimaryRS("Cust_Code") & "" & "',AGENT_CODE='" & adoPrimaryRS("Agent_Code") & "" & "', " & _
                   " BROK_CODE='" & adoPrimaryRS("Brok_Code") & "" & "',BO_TYPE='" & adoPrimaryRS("Bo_Type") & "" & "',BO_NO='" & adoPrimaryRS("Bo_NO") & "" & "',PAY_MODE='" & adoPrimaryRS("Pay_Mode") & "" & "', " & _
                   " BANK_CODE='" & adoPrimaryRS("Bank_Code") & "" & "',MATL_VALUE=" & val(adoPrimaryRS("Matl_Value") & "") & ",CESS_PER=" & val(adoPrimaryRS("Cess_Per") & "") & ",CESS_AMT=" & val(adoPrimaryRS("Cess_Amt") & "") & ", " & _
                   " CHARITY=" & val(adoPrimaryRS("Charity") & "") & ",BED_AMT=" & val(adoPrimaryRS("Bed_Amt") & "") & ",AED_AMT=" & val(adoPrimaryRS("Aed_Amt") & "") & ",TAX_FLAG='" & adoPrimaryRS("Tax_Flag") & "" & "',TAX_AMT=" & val(adoPrimaryRS("Tax_Amt") & "") & ", " & _
                   " LSC_AMT=" & val(adoPrimaryRS("Lsc_Amt") & "") & ",FREIGHT=" & val(adoPrimaryRS("Freight") & "") & ",INS_PER=" & val(adoPrimaryRS("Ins_Per") & "") & ",INS_AMT=" & val(adoPrimaryRS("Ins_Amt") & "") & ",RND_OFF=" & val(adoPrimaryRS("Rnd_Off") & "") & ", " & _
                   " TOTAL_AMT=" & val(adoPrimaryRS("Total_Amt") & "") & ",RECEIPT_AMT=" & val(adoPrimaryRS("Receipt_Amt") & "") & ",DN_AMT=" & val(adoPrimaryRS("DN_Amt") & "") & ",CN_AMT=" & val(adoPrimaryRS("CN_Amt") & "") & ",CONS_ADD1='" & adoPrimaryRS("Cons_Add1") & "" & "', " & _
                   " CONS_ADD2='" & adoPrimaryRS("Cons_Add2") & "" & "',CONS_ADD3='" & adoPrimaryRS("Cons_Add3") & "" & "',CONS_ADD4='" & adoPrimaryRS("Cons_Add4") & "" & "',DESPATCH_TO='" & adoPrimaryRS("Despatch_to") & "" & "',PRE_TIME='" & adoPrimaryRS("Pre_Time") & "" & "', " & _
                   " REM_TIME='" & adoPrimaryRS("Rem_Time") & "" & "',CARRIER_CODE='" & adoPrimaryRS("Carrier_Code") & "" & "',VEHICLE_NO='" & adoPrimaryRS("Vehicle_No") & "" & "',LR_NO='" & adoPrimaryRS("Lr_No") & "" & "',LR_date='" & adoPrimaryRS("Lr_Date") & "" & "',ARE_NO='" & adoPrimaryRS("Are_NO") & "" & "', " & _
                   " ARE_DATE='" & adoPrimaryRS("Are_Date") & "" & "',CANCELLED='" & adoPrimaryRS("Cancelled") & "" & "',CANCEL_DT='" & adoPrimaryRS("Cancel_Dt") & "" & "',CANCEL_REM='" & adoPrimaryRS("Cancel_Rem") & "" & "',CR_DAYS=" & val(adoPrimaryRS("Cr_Days") & "") & ",PLA_CODE='" & adoPrimaryRS("Pla_Code") & "" & "',PLA_NO=" & val(adoPrimaryRS("Pla_No") & "") & ", " & _
                   " PLA_BED=" & val(adoPrimaryRS("pla_Bed") & "") & ",PLA_AED=" & val(adoPrimaryRS("pla_Aed") & "") & ",RG23A_CODE='" & adoPrimaryRS("Rg23A_Code") & "" & "',RG23A_NO=" & val(adoPrimaryRS("RG23a_NO") & "") & ",RG23A_BED=" & val(adoPrimaryRS("Rg23A_Bed") & "") & ",RG23A_AED=" & val(adoPrimaryRS("Rg23A_Aed") & "") & ",RG23C_CODE='" & adoPrimaryRS("Rg23C_Code") & "" & "', " & _
                   " RG23C_NO=" & val(adoPrimaryRS("Rg23C_No") & "") & ",RG23C_AED=" & val(adoPrimaryRS("Rg23C_Aed") & "") & ",RG23C_BED=" & val(adoPrimaryRS("RG23C_Bed") & "") & ",DELIVERY_DT='" & adoPrimaryRS("Delivery_Dt") & "" & "', " & _
                   " entdate='" & adoPrimaryRS("entdate") & "" & "',user_id='" & adoPrimaryRS("user_id") & "" & "',remarks='" & adoPrimaryRS("remarks") & "" & "',tcs_per=" & val(adoPrimaryRS("tcs_per") & "") & ",tcs_amt=" & val(adoPrimaryRS("Tcs_Amt") & "") & ",fwd_chrg=" & val(adoPrimaryRS("Fwd_Chrg") & "") & ",educess_per=" & val(adoPrimaryRS("educess_per") & "") & ",educess_amt=" & val(adoPrimaryRS("Educess_amt") & "") & ", " & _
                   " hscess_per=" & val(adoPrimaryRS("hscess_per") & "") & ",hscess_amt=" & val(adoPrimaryRS("hscess_amt") & "") & ",taxable_value=" & val(adoPrimaryRS("taxable_value")) & "" & ",eway_billno='" & (adoPrimaryRS("eway_billno") & "") & "',eway_bill_date='" & (adoPrimaryRS("eway_bill_date") & "") & "',Load_Amt='" & (adoPrimaryRS("Load_Amt") & "") & "' from IG_RINVHD where divcode = '" & Divcode & "' and inv_no='" & txtfields(1).Text & "' and inv_type='" & txtfields(0).Text & "'"
        'adoPrimaryRS.UpdateBatch adAffectAllChapters
      
        Set NewRs = New Recordset
        NewRs.Open "SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,INVSNO,FWDCHRG,educess_per,educess_amt,hscess_per,hscess_amt,Ins_Amt,Freight,Tcs_amt,Round_Off,Tot_Amt,Receiptt_Amt,CNN_Amt,DNN_Amt,taxable_values,Pack_type,Load_Amt,MixRate  FROM IG_RINVDT where divcode = '" & Divcode & "' and inv_no='" & txtfields(1).Text & "' and inv_type='" & txtfields(0).Text & "'", DB, adOpenDynamic, adLockReadOnly
        ADOSECONDARYRS.MoveFirst
        While Not ADOSECONDARYRS.EOF
        
            NewRs.AddNew
            NewRs.Fields(0) = ADOSECONDARYRS.Fields(0)
            NewRs.Fields(1) = ADOSECONDARYRS.Fields(1)
            NewRs.Fields(2) = ADOSECONDARYRS.Fields(2)
            NewRs.Fields(3) = ADOSECONDARYRS.Fields(3)
            NewRs.Fields(4) = ADOSECONDARYRS.Fields(4)
            NewRs.Fields(5) = ADOSECONDARYRS.Fields(5)
            
            For I = 6 To NewRs.Fields.Count - 1
                NewRs.Fields(I) = ADOSECONDARYRS.Fields(I + 1)
            Next
            NewRs("FWDCHRG") = val(ADOSECONDARYRS("FWDCHRG") & "")
            NewRs("Ins_Amt") = val(ADOSECONDARYRS("Ins_Amt") & "")
            NewRs("Freight") = val(ADOSECONDARYRS("Freight") & "")
            NewRs("Tcs_Amt") = val(ADOSECONDARYRS("Tcs_Amt") & "")
            NewRs("Round_Off") = val(ADOSECONDARYRS("Round_Off") & "")
            NewRs("Tot_Amt") = val(ADOSECONDARYRS("Tot_Amt") & "")
            NewRs("Receiptt_Amt") = val(ADOSECONDARYRS("Receiptt_Amt") & "")
            NewRs("CNN_Amt") = val(ADOSECONDARYRS("CNN_Amt") & "")
            NewRs("DNN_Amt") = val(ADOSECONDARYRS("DNN_Amt") & "")
            NewRs("educess_per") = val(txtfields(75).Text)
            NewRs("educess_amt") = val(ADOSECONDARYRS("educess_amt") & "")
            NewRs("hscess_per") = val(txtfields(77).Text)
            NewRs("hscess_amt") = val(ADOSECONDARYRS("hscess_amt") & "")
            NewRs("taxable_values") = val(ADOSECONDARYRS("taxable_values") & "")
            
            'NewRs("Pack_type") = Trim(ADOSECONDARYRS("Pack_type") & "")
          '  NewRs("Load_Amt") = Trim(ADOSECONDARYRS("Loading Amt") & "")
            ADOSECONDARYRS.MoveNext
        Wend
        NewRs.UpdateBatch adAffectAllChapters
'        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
        If Not errflg Then
            DB.CommitTrans
            
            
        '======================================================================
            If Opt = "mod" Then
                sql = ""
                sql = "SELECT ISNULL(A.TC_CODE,'')TC_CODE FROM IG_INVTYPE A WHERE A.DIVCODE='" & Divcode & "' AND A.INV_TYPE='" & txtfields(0).Text & "'"
                    Set rsinvtype = New Recordset
                        rsinvtype.Open sql, DB, adOpenStatic
                        invtc = rsinvtype("tc_code")
            
                Topt = Opt
                Opt = ""
                ';Dim frmFa As New frmFaPostingVerification
                frmFa.sTC = invtc
                frmFa.sVocno = val(Mid(txtfields(1), 3, 8))
                frmFa.sVocdt = Format(DTPicker1(0).value, "dd/mm/yyyy")
                frmFa.sBillNo = Trim("")
                frmFa.sBillDt = Trim("")
                frmFa.sTrnType = "SA"
                frmFa.Show vbModal
                If Not frmFa.bolTally Then
                    Opt = "del"
                    DB.BeginTrans
                    BolAutoDel = True
                    Call BUTTON_Click(9)
                    BolAutoDel = False
                    Exit Sub
                End If
            End If
          '======================================================================

''28-11-2019 Log table created
            Set RsTransLog = New Recordset
            RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                
                RsTransLog.AddNew
                RsTransLog("Divcode") = Divcode
                RsTransLog("moduleNo") = ModuleNo
                RsTransLog("Trans_Module") = "RM Waste Sales"
                RsTransLog("Trans_Name") = heading
                RsTransLog("Trans_Mod") = "MOD"
                RsTransLog("Trans_Host") = LocalHost
                RsTransLog("Trans_IPADD") = LocalIPAdd
                RsTransLog("Trans_UserId") = usrid
                RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                RsTransLog("docno") = Trim(txtfields(1).Text)
                RsTransLog("SDI_TYPE") = Trim(txtfields(0).Text)
                RsTransLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                RsTransLog("custcode") = txtfields(6).Text
                RsTransLog("agentcode") = txtfields(8).Text
 
               RsTransLog.UpdateBatch adAffectAll
            MsgBox "Records Modified Successfully", vbInformation, head
            
'        DB.Execute " Insert into Ig_Inv_Automail(Divcode,INV_NO,INV_TYPE,DATE,Module,OPT_MOD,OPT_TrackingDate,OPT_count,MailSendingFlg,MailSendingDate) " & _
'         " (SELECT DIVCODE,DOCNO,SDI_TYPE,DOCDT,Module,OPT_MOD,GETDATE(),count( distinct TRACKING_DATE),NULL,NULL from ig_trans_log_sales where DOCNO ='" & txtfields(1).Text & "' and SDI_TYPE ='" & txtfields(0).Text & "' AND DIVCODE='" & divcode & "' " & _
'         " and opt_mod='MOD' and docdt='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and Form_Name='INVOICE' group by  DIVCODE,SDI_TYPE,DOCNO,DOCDT,Module,OPT_MOD ,DOCDT )"

                Call InvoicenoUpdate
        End If
            Opt = " "
    ElseIf Opt = "del" Then
        On Error GoTo DELERR6
        ''Call DelUpdate
            If delflg = "Y" Then
                    If Not errflg Then
                        
                        DB.BeginTrans
            
'''            ''28-11-2019 Log table created
'''                        Set RsTransLog = New Recordset
'''                        RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
'''
'''                            RsTransLog.AddNew
''''''                            RsTransLog("Divcode") = divcode
''''''                            RsTransLog("moduleNo") = ModuleNo
''''''                            RsTransLog("Trans_Module") = "Waste Sales"
''''''                            RsTransLog("Trans_Name") = heading
''''''                            RsTransLog("Trans_Mod") = "DEL"
''''''                            RsTransLog("Trans_Host") = LocalHost
''''''                            RsTransLog("Trans_IPADD") = LocalIPAdd
''''''                            RsTransLog("Trans_UserId") = usrid
''''''                            RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
''''''                            RsTransLog("docno") = Trim(txtfields(1).Text)
''''''                            RsTransLog("SDI_TYPE") = Trim(txtfields(0).Text)
''''''                            RsTransLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
''''''                            RsTransLog("custcode") = txtfields(6).Text
''''''                            RsTransLog("agentcode") = txtfields(8).Text
                        Call LogTransaction
                        
                        '''RsTransLog.UpdateBatch adAffectAll
                        DB.Execute "delete from IG_RINVDT where divcode='" & Divcode & "' and inv_type='" & txtfields(0) & "' and inv_no='" & txtfields(1) & "'"
                        DB.Execute "delete from IG_RINVHD where divcode='" & Divcode & "' and inv_type='" & txtfields(0) & "' and inv_no='" & txtfields(1) & "'"
                        
                        ''''DB.Execute "UPDATE ig_DOCCONTROL SET LAST_NO=last_no-1 WHERE DOC_TYPE='I' AND DOC_REF='" & txtfields(0).Text & "'"
                        
                        DB.Execute "update ig_rbohd  set inv_type=null ,inv_no = null where divcode = '" & Divcode & "' and bo_type = '" & txtfields(4).Text & "' and bo_no = '" & txtfields(5) & "'"
                        
                        CEXNOGRP = 0
                        DocNoGrp = 0
                        divgrp = ""
                        Set rsg = New Recordset
                        rsg.Open "SELECT isnull(DocNoGrp,0)docnogrp,isnull(CexNoGrp,0)cexnogrp,ISNULL(DIVGRP,'')DIVGRP from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' and year_no='" & YearNo & "'", DB, adOpenStatic
                        If rsg.RecordCount > 0 Then
                            DocNoGrp = rsg("DOCNOGRP")
                            CEXNOGRP = rsg("cexNogrp")
                            divgrp = rsg("DIVGRP")
                        End If
                        
                        Set RSGLB = New Recordset
                        RSGLB.Open "SELECT ISNULL(DIVGRP_NOGEN_FLG,'N')DIVGRP FROM IG_PARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
                        
                        Set rsg = New Recordset
                        rsg.Open "select isnull(last_no,1) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and doc_type='I' AND DOC_REF='" & txtfields(0).Text & "'", DB, adOpenStatic
                        If rsg(0) = val(Right(txtfields(1).Text, 6)) Then
                            'db.Execute "UPDATE IG_DOCCONTROL SET LAST_NO=last_no-1,docno=docno-" & IIf(InvoicenowithPrefix = 1, 1, 0) & " WHERE divcode='" & divcode & "' and DOC_TYPE='I' AND isnull(DOCNOGRP,0)=" & DocNoGrp & " and year_no='" & YearNo & "' AND isnull(DIVGRP,'')='" & divgrp & "'"
                            
                            DB.Execute "UPDATE IG_DOCCONTROL SET LAST_NO=last_no-1,docno=docno-" & IIf(InvoicenowithPrefix = 1, 1, 0) & " WHERE divcode='" & Divcode & "' and DOC_TYPE='I' AND isnull(DOCNOGRP,0)=" & DocNoGrp & " and year_no='" & YearNo & "' AND isnull(DIVGRP,'')='" & divgrp & "'"
                        End If
                        
                        
                        Set rsg = New Recordset
                        If RSGLB("DIVGRP") = "Y" Then
                            rsg.Open "select isnull(cex_lastno,1) from ig_doccontrol where divcode='" & Divcode & "' and divGRP='" & divgrp & "' and year_no='" & YearNo & "' and doc_type='I' AND cexNOGRP=" & CEXNOGRP & "", DB, adOpenStatic
                            If Not rsg.EOF Then
                            If rsg(0) = val(Right(txtfields(3).Text, 6)) Then
                                DB.Execute "UPDATE IG_DOCCONTROL SET cex_LASTNO=cex_lastno-1 WHERE divcode='" & Divcode & "' and divgrp='" & divgrp & "' and DOC_TYPE='I' AND CexNOGRP=" & CEXNOGRP & " and year_no='" & YearNo & "'"
                            End If
                            End If
                        Else
                            rsg.Open "select isnull(cex_lastno,1) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and doc_type='I' AND cexNOGRP=" & CEXNOGRP & "", DB, adOpenStatic
                            If Not rsg.EOF Then
                            If rsg(0) = val(Right(txtfields(3).Text, 6)) Then
                                DB.Execute "UPDATE IG_DOCCONTROL SET cex_LASTNO=cex_lastno-1 WHERE divcode='" & Divcode & "' and DOC_TYPE='I' AND CexNOGRP=" & CEXNOGRP & " and year_no='" & YearNo & "'"
                            End If
                            End If
                        End If
                                    
                        
                        DB.CommitTrans
                        MsgBox "Records Deleted Successfully", vbInformation, head
                    End If
                    
            ElseIf canflg = "Y" Then
                DB.BeginTrans
                
                    Call wsDelUpdate
                    ''28-11-2019 Log table created
                    Set RsTransLog = New Recordset
                    RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    RsTransLog.AddNew
                    RsTransLog("Divcode") = Divcode
                    RsTransLog("moduleNo") = ModuleNo
                    RsTransLog("Trans_Module") = "RM Waste Sales"
                    RsTransLog("Trans_Name") = heading
                    RsTransLog("Trans_Mod") = "CAN"
                    RsTransLog("Trans_Host") = LocalHost
                    RsTransLog("Trans_IPADD") = LocalIPAdd
                    RsTransLog("Trans_UserId") = usrid
                    RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
                    RsTransLog("docno") = Trim(txtfields(1).Text)
                    RsTransLog("SDI_TYPE") = Trim(txtfields(0).Text)
                    RsTransLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                    RsTransLog("custcode") = txtfields(6).Text
                    RsTransLog("agentcode") = txtfields(8).Text
                    
                    RsTransLog.UpdateBatch adAffectAll
                    
                DB.CommitTrans
                MsgBox "Records Cancelled Successfully", vbInformation, head
                    
            End If
        Opt = " "
    End If
        BlnRoundoff = False
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(1).Enabled = False
        SSTab1.Tab = 0
DELERR6:
    If Err.Number = "-2147217900" And Opt = "del" Then
        MsgBox "This Invoice cannot be deleted as dependencies exist"", vbInformation, head"
        Opt = "del"
        BUTTON_Click (10)
    End If
        
Case 10
    'CANCEL
    Screen.MousePointer = 11
    'Frame6.Visible = False
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    If adoPrimaryRS.RecordCount > 0 Then
        adoPrimaryRS.MoveLast
    End If
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Call NEWFORM1(BUTTON, GSNO)
    'If BUTTON(0).Enabled Then BUTTON(0).SetFocus
    Screen.MousePointer = 0
    BUTTON(1).Enabled = True
Case 11
'EXIT
    Unload Me
Case 13
If Trim(UCase(CustID)) = "BALKRISHNA" Then
     List1.Clear
            Screen.MousePointer = 11
            
            rfooter = ""
            SSTab1.Visible = True
            Set repfrs = New Recordset
            repfrs.Open "SELECT DISTINCT  DESCRIPTION FROM WVG_PRINTTYPE  ORDER BY DESCRIPTION", DB, adOpenStatic
            If repfrs.RecordCount > 0 Then
                Do While Not repfrs.EOF
                List1.AddItem repfrs(0)
                repfrs.MoveNext
                Loop
            Else
                MsgBox "No Print Type!!"
            End If
            Screen.MousePointer = 0
            SSTab4.Visible = True
       
Else
        Set tr = New Recordset
        If Table_Exists("winvtmp1") Then
            DB.Execute "drop table winvtmp1"
        End If

        Set tr = New Recordset
        If Table_Exists("winvtmp2") Then
            DB.Execute "drop table winvtmp2"
        End If
        
        DB.Execute "select * into winvtmp1 from ig_rinvhd where inv_type='" & Left(txtfields(0).Text, 2) & "' and inv_no='" & Trim(Mid(txtfields(1).Text, 1, 8)) & "' and divcode='" & Divcode & "'"
        DB.Execute "select * into winvtmp2 from ig_rinvdt where inv_type='" & Left(txtfields(0).Text, 2) & "' and inv_no='" & Trim(Mid(txtfields(1).Text, 1, 8)) & "' and divcode='" & Divcode & "'"
'        Set Rs = New Recordset
'        Rs.Open "select * from winvtmp1", db, adOpenDynamic, adLockOptimistic
        '------------------------------------------
        Set DB = New Connection
        DB.Open connectstring

'''If Trim(UCase(CustId)) = "NATURAL" Then

Dim CryCls_Wsales_WasteInvoiceNAt As New clsCrystal
     If Trim(UCase(CustID)) = "NATURAL" Then
        Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_WasteSales_Invoice
'     ElseIf Trim(UCase(CustId)) = "BALKRISHNA" Then
'         Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_WasteSales_Invoice_BAL
     
        CryCls_Wsales_WasteInvoiceNAt.CrystalPrint

        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
        
        Dim INVTYPE As String
        INVNO = val(txtfields(1).Text)
        Invdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        cfdate = val(txtfields(47).Text)
        INVTYPE = txtfields(0).Text

        'CrystalReport1.SelectionFormula = "{winvtmp1.DATE} = DATE(" & Val(Year(Invdt)) & "," & Val(Month(Invdt)) & "," & Val(Day(Invdt)) & ")  and {winvtmp1.INV_NO} ='" & INVNO & "' and {winvtmp1.DIVCODE}='" & divcode & "'"
        CrystalReport1.ParameterFields(0) = "@divcode ;" & Divcode
        CrystalReport1.ParameterFields(1) = "@invdate ;" & Invdt
        CrystalReport1.ParameterFields(2) = "@invno ;" & INVNO
        CrystalReport1.ParameterFields(3) = "@invtype  ;" & INVTYPE
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized

        'SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
ElseIf CustID = "BIRLA" Then
        ''''''''''''''''''''''''' Start For Invoice Format for Product 2012 Birla ''''''''''''''''''''''''
'        Dim CryCls_Wsales_WasteInvoiceBirla As New clsCrystal
'        Set CryCls_Wsales_WasteInvoiceBirla.cryRept = Cry_WSales_BirlaInvoice
'        CryCls_Wsales_WasteInvoiceBirla.CrystalPrint
'
'        CrystalReport1.Reset
'        CrystalReport1.Connect = connectstring
'        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
'
'        INVNO = Val(txtfields(1).Text)
'        iNVDT = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
'        cfdate = Val(txtfields(47).Text)
'
'        CrystalReport1.SelectionFormula = "{winvtmp1.DATE} = DATE(" & Val(Year(iNVDT)) & "," & Val(Month(iNVDT)) & "," & Val(Day(iNVDT)) & ")  and {winvtmp1.INV_NO} ='" & INVNO & "' and {winvtmp1.DIVCODE}='" & divcode & "'"
'        'CrystalReport1.ParameterFields(0) = "@fd;" & cfdate
'        'CrystalReport1.ParameterFields(1) = "@td;" & Num_To_Word(Round(Rs("total_amt"), 0))
'        CrystalReport1.WindowShowPrintSetupBtn = True
'        CrystalReport1.WindowShowSearchBtn = True
'        CrystalReport1.WindowState = crptMaximized
'
'        'SendKeys "{ENTER}"
'        CrystalReport1.Action = 1
'        CrystalReport1.PrinterCopies = 1
'        Screen.MousePointer = 0
        ''''''''''''''''''''''' End For Invoice Format for Product 2012 Birla '''''''''''''''''''''''''''
    Else
        ''''''''''''''''''''''' Start Invoice Format for Product 2012 '''''''''''''''''''''''''''''''''''''''''''''
        Dim CryCls_Wsales_WasteInvoice As New clsCrystal
        
           
        If Trim(UCase(CustID)) = "SKY" Then
            Set CryCls_Wsales_WasteInvoice.cryRept = Cry_Wsales_WasteInvoice_Sky
        Else
            Set CryCls_Wsales_WasteInvoice.cryRept = Cry_Wsales_WasteInvoice
        End If
        CryCls_Wsales_WasteInvoice.CrystalPrint

        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"

        INVNO = val(txtfields(1).Text)
        Invdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        cfdate = val(txtfields(47).Text)

        CrystalReport1.SelectionFormula = "{winvtmp1.DATE} = DATE(" & val(Year(Invdt)) & "," & val(MONTH(Invdt)) & "," & val(Day(Invdt)) & ")  and {winvtmp1.INV_NO} ='" & INVNO & "' and {winvtmp1.DIVCODE}='" & Divcode & "'"
        'CrystalReport1.ParameterFields(0) = "@fd;" & cfdate
        'CrystalReport1.ParameterFields(1) = "@td;" & Num_To_Word(Round(Rs("total_amt"), 0))
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized

        'SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        ''''''''''''''''End For Invoice Format for Product 2012 ''''''''''''''''''''''''''''''''
    End If
End If

Case 14
    'For GST - Invoice Transaction Print - 15-06-2017'
    If MailVerify = "Y" Then
        FrmPrint.Visible = True
        optPrint.value = True
        FrmPrint.ZOrder
    Else
        List1.Clear
        SSTab4.Visible = True
        Set repfrs = New Recordset
      
            repfrs.Open "SELECT DISTINCT  DESCRIPTION FROM WVG_PRINTTYPE  WHERE DIVCODE='" & Divcode & "' ORDER BY DESCRIPTION", DB, adOpenStatic
        
        If repfrs.RecordCount > 0 Then
                FileAvailable = "N"
                Set fso = New FileSystemObject
                Do While Not repfrs.EOF
                List1.AddItem repfrs(0)
 

                repfrs.MoveNext
            Loop
        Else
            MsgBox "No Print Type!!"
        End If
   End If
        
    

End Select
    intervalMinutes = -1
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Invoice", vbInformation, head
        ''Screen.MousePointer = 0
End Sub

Private Sub wsDelUpdate()
'DELETION TIME UPDATATIONS
On Error GoTo DELUPDATEERR
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF

'---------------------------------PACKNOS
    Set Rs = New Recordset
    Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR,BO_NO,BO_TYPE,PACK_YEAR,PRODUCT_CODE ,LOT_CODE FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode = '" & Divcode & "' and bo_no='" & txtfields(5).Text & "' and bo_type='" & txtfields(4).Text & "'", DB
    
    Do While Not Rs.EOF
    
    packno = Rs(0)
    EpkNo = Rs(1)
    
        Do While packno <= EpkNo 'Rs(1)
            DB.Execute "update IG_RPACKNOS set INVOICED='N',BO_NO=NULL,BO_TYPE=NULL,BO_DATE=NULL where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & "and pack_no=" & packno & " and product_code='" & Rs("PRODUCT_CODE") & "' "
            packno = packno + 1
        Loop
        
    Rs.MoveNext
    Loop
'--------------------------------Contract
   DB.Execute "update ig_rcontdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(Gpacks) & " where divcode='" & Divcode & "' and CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   
'--------------------------------Product
'   db.Execute "update IG_RPRODUCT set kg_rate=" & grddatagrid.Columns(GGROSS_KGS) & " where Product_code='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   ADOSECONDARYRS.MoveNext
   Loop
   
'---------------------------Bale Order
    DB.Execute "update IG_RBOHD set CANCELLED='Y',CANCEL_DT ='" & Format(pdate, "YYYY-MM-DD") & "' where divcode='" & Divcode & "' and bo_type='" & txtfields(4) & "' and bo_no='" & txtfields(5) & "'"
    
'---------------------------Invoice
    DB.Execute "update ig_rinvhd set CANCELLED='Y', CANCEL_DT='" & Format(pdate, "YYYY-MM-DD") & "',Can_Remarks='" & Trim(Text1.Text) & "' where divcode='" & Divcode & "' and inv_no ='" & txtfields(1).Text & "' and inv_type='" & txtfields(0).Text & "' and bo_type='" & txtfields(4).Text & "' and bo_no='" & txtfields(5).Text & "' "
    
 Exit Sub
DELUPDATEERR:
MsgBox "This Record Cannot be Deleted" & Err.Description, vbInformation, head
DB.RollbackTrans
errflg = True
End Sub


 

 
Private Sub cmdCanDelCancel_Click()
    Frame8.Visible = False
    Buttonframe.Enabled = True
End Sub

Private Sub cmdCanDelOk_Click()
On Error GoTo cmdCanDelOk_Click_Error
    Opt = "del"
    If Option2.value = True Then
        canflg = "Y"
        delflg = "N"
        Call CanDelQry
        Buttonframe.Enabled = True

    Else
        canflg = "N"
        delflg = "Y"
        Call CanDelQry
        Buttonframe.Enabled = True
    End If
Exit Sub
cmdCanDelOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdCanDelOk_Click of Form Waste Invoice", vbInformation, head
End Sub
Private Sub AmountSplitup(ByVal Field As String, ByVal HeadValue As Double, Optional ByVal ValField As String, Optional ByVal SplitVal As Boolean = False)
On Error GoTo AmountSplitup_Error
Dim Rst As New Recordset
Dim CValue As Double
Dim ExtraValue As Double
'Set adoSecondaryRS = New Recordset
'Set Rst = rsgadd.Clone
ADOSECONDARYRS.MoveFirst
If SplitVal = True Then
    CValue = 0
    While Not ADOSECONDARYRS.EOF
        CValue = CValue + ADOSECONDARYRS("" & ValField & "")
        ADOSECONDARYRS.MoveNext
    Wend
    ADOSECONDARYRS.MoveFirst
    While Not ADOSECONDARYRS.EOF
        If CValue <> 0 Then
        ADOSECONDARYRS("" & Field & "") = (HeadValue / CValue) * ADOSECONDARYRS("" & ValField & "")
        End If
        ADOSECONDARYRS.MoveNext
    Wend
    Exit Sub
End If


CValue = 0: ExtraValue = 0
ADOSECONDARYRS.MoveFirst
While Not ADOSECONDARYRS.EOF
    CValue = CValue + val(IIf(IsNull(ADOSECONDARYRS("" & Field & "")), 0, ADOSECONDARYRS("" & Field & "")))
    ADOSECONDARYRS.MoveNext
Wend

If CValue <> HeadValue Then
    ExtraValue = HeadValue - CValue
'    adoSecondaryRS.Move
'    adoSecondaryRS.RecordCount
    ADOSECONDARYRS.MoveLast
    If ADOSECONDARYRS.EOF = False Then
       ADOSECONDARYRS("" & Field & "") = ADOSECONDARYRS("" & Field & "") + INF(ExtraValue, 2)
    End If
End If

Exit Sub
AmountSplitup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AmountSplitup_Click of Form Invoice", vbInformation, head
        Screen.MousePointer = 0
Resume
End Sub


Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)

On Error GoTo BUTTON_KeyDown_Error
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If
Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub CmdDSCSignView_Click()
On Error GoTo CmdFrtSUp_Click_Error

   'loop through the items in the ListBox
Dim fso As New FileSystemObject

For I = 0 To List1.ListCount - 1
    If List1.Selected(I) = True Then
        listval = List1.List(I)
        Set Rs = New Recordset
        'Rs.Open "exec Ksp_Invoice_DSCSignFile '" & divcode & "','" & Trim(txtfields(0).Text) & "','" & Trim(txtfields(1).Text) & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Trim(txtfields(6).Text) & "','" & Trim(listval) & "','Waste'", DB, adOpenStatic
        Rs.Open "exec Ksp_Invoice_DSCSignFile '" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Trim(txtfields(1).Text) & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Trim(txtfields(7).Text) & "','" & Trim(listval) & "','Waste'", DB, adOpenStatic
        If Not Rs.EOF Then
            If IsNull(Rs(0)) = False Then
                sFilePath = Replace(Rs(0), "\\", "\") ''App.path & "\RMERPPO" & CustId & "\" & Divcode & "-PONO-" & Trim(txtfields(0).Text) + " DT-" + Trim(Format(MaskEdBox3.Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) & ".pdf"
                sFile = sFilePath
                If fso.FileExists(sFilePath) Then
                    ShellExecute 0&, "Print", sFilePath, "", "", vbNormalFocus
                                        
                End If
            End If
        End If
     End If
  Next
  SSTab4.Visible = False
Exit Sub
CmdFrtSUp_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CmdFrtSUp_Click of Form Invoice", vbInformation, head


End Sub

Private Sub cmdOK_Click()

    Dim bol1 As Boolean
    Dim rs9 As New Recordset
    Dim rec As New Recordset
    Dim Rsck As New Recordset
    Dim Selection As String
      'On Error Resume Next
    Dim TmpSno As Integer
    Dim Tmppack_no As String
    
    rfooter = ""
    a = 0
    B = List1.ListCount
    List1.ListIndex = 0
    pack_no = ""
    
    bol1 = False
    Selection = "NO"
    I = 0
    
     'Code added on  24.12.2020
    Set rsinnew = New Recordset
    rsinnew.Open "select isnull(Qrcode,'') Qrcode ,isnull(sno,0) sno from ig_reinvoice where  divcode='" & Divcode & "' and  isnull(irn_no,'')<>''  AND INV_NO='" & txtfields(1).Text & "' AND INV_TYPE='" & txtfields(0).Text & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsinnew.RecordCount > 0 Then
      strfile = rsinnew(0)
      SNO = rsinnew(1)
    Else
        strfile = ""
        SNO = 0
    End If
    
     GenerateBMP StrPtr("c:\SignQR.bmp"), StrPtr(strfile), 1.3, 1.3, QualityMedium

        Set rsin = New Recordset
        rsin.Open "select Qrcode from ig_reinvoice where  divcode='" & Divcode & "' and sno='" & SNO & "' AND INV_NO='" & Trim(txtfields(1).Text) & "' and  isnull(irn_no,'')<>'' AND  INV_TYPE='" & Trim(txtfields(0).Text) & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If rsin.EOF = True Then
        End If

            Dim binObj As ADODB.Stream
                sql = "SELECT  * FROM ig_reinvoice WHERE divcode='" & Divcode & "' and sno='" & SNO & "' and INV_NO='" & val(txtfields(1).Text) & "' and  isnull(irn_no,'')<>'' AND INV_TYPE='" & Trim(txtfields(0).Text) & "' AND date='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' "
                Set rsnew = New Recordset
                rsnew.Open sql, DB, adOpenKeyset, adLockOptimistic
                If Not (rsnew.BOF And rsnew.EOF) Then
                         Set binObj = New ADODB.Stream
                         binObj.Type = adTypeBinary
                         binObj.Open
                         binObj.LoadFromFile "c:\SignQR.bmp"
                         rsnew!QrcodeImg = binObj.Read
                         rsnew.Update
                         binObj.Close
                         Set binObj = Nothing
                 End If
 'Code added on  24.12.2020
    
    Do While Not a = B
        If List1.Selected(List1.ListIndex) = True Then
            Selection = "YES"
 

    DB.BeginTrans
    Dim TableName As String
    ipadds = Right(LocalIPAdd, 3)
    'TableName = "TEMP_BAGNO_wsales" & ipadds & ""
    TableName = "TEMP_BAGNO_wsales"
    DB.CommandTimeout = 1000
    DB.Execute " set arithabort on "
    DB.Execute "ksp_TableExists TEMP_WSALESPRINTTYPE"
    DB.Execute "CREATE TABLE TEMP_WSALESPRINTTYPE (INV_NO [varchar](12) NULL,INV_TYPE [varchar](4) NULL, ipad [varchar](20),Divcode varchar(3),invsno numeric(7),PRINTHEAD VARCHAR(40))"

   ' DB.Execute "ksp_TableExists 'TEMP_BAGNO_wsales" & ipadds & "'"
    DB.Execute "ksp_TableExists 'TEMP_BAGNO_wsales'"
    DB.Execute "CREATE TABLE TEMP_BAGNO_wsales   (INV_NO [varchar](12) NULL,INV_TYPE [varchar](4) NULL,PRODUCTCODE [varchar](20) NULL,PACKNO [varchar](700) NULL,INV_Date datetime,ipad [varchar](25),Divcode varchar(3),Lotcode varchar(30))"
    
    'DB.Execute " delete from TEMP_BAGNO_wsales" & ipadds & ""
    DB.Execute " delete from TEMP_BAGNO_wsales"
    Set RS2 = New Recordset
    RS2.Open "select distinct a.date as inv_date ,inv_no,inv_type from ig_rinvhd a with (nolock) where a.divcode='" & Divcode & "' and  a.inv_type ='" & txtfields(0).Text & "'  and  a.inv_no = '" & txtfields(1).Text & "'   ", DB, adOpenDynamic, adLockOptimistic
    
    If RS2.EOF = True Then
        MsgBox "No Records found for selected Invoice Number", vbInformation, head
        Exit Sub
    End If
   Do While Not RS2.EOF

  Set rs3 = New Recordset
 
    Set rsb = New Recordset
    rsb.Open "select distinct a.product_code,b.description,d.lot_code from ig_rinvdt a with (nolock),ig_rproduct b with (nolock),ig_rbodt d with (nolock),IG_rBOHD E with (nolock) where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
                    "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type ='" & Trim(txtfields(0).Text) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code", DB, adOpenDynamic, adLockOptimistic
     Do While Not rsb.EOF
        Set rs5 = New Recordset
        rs5.Open "select distinct b.product_code,b.lot_code as ldesc  from ig_rbodt b with (nolock),IG_rBOHD C with (nolock) where " & _
                            " C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                            " INV_no='" & RS2("inv_no") & "' AND Inv_TYPE ='" & Trim(txtfields(0).Text) & "' and b.product_code='" & rsb("product_code") & "'  AND B.BO_TYPE ='" & Trim(txtfields(0).Text) & "'  AND b.Divcode='" & Divcode & "'  and b.lot_code='" & rsb("lot_code") & "' order by b.lot_code", DB, adOpenDynamic, adLockOptimistic
                            ''isnull(b.spack_no,'') as spack_no,isnull(b.epack_no,'') as epack_no,
                pack_no = " "
                TmpSno = 0: Tmppack_no = 0
          rs5.MoveFirst
  
              lot_Des = "":             lot_desc = "":             GG = 1:             ii = 1
          Do While Not rs5.EOF
           pack_no = " "
                 Set rs6 = New Recordset
                     rs6.Open "select distinct b.product_code,isnull(b.spack_no,'0') as spack_no,isnull(b.epack_no,'0') as epack_no,b.lot_code as ldesc  from ig_rbodt b with (nolock),IG_rBOHD C with (nolock) where  " & _
                            "   C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                            " INV_no='" & RS2("inv_no") & "' AND Inv_TYPE ='" & Trim(txtfields(0).Text) & "' and b.product_code='" & rs5("product_code") & "'  and b.lot_code='" & rs5("ldesc") & "' AND B.BO_TYPE= '" & Trim(txtfields(0).Text) & "' AND b.Divcode='" & Divcode & "' order by b.lot_code", DB, adOpenDynamic, adLockOptimistic
                
            If UCase(CustID) = "SOUTHERN" Then
                Set rs9 = New Recordset
                    rs9.Open "select top 1   b.product_code,isnull(b.spack_no,'0') as spack_no,isnull(b.epack_no,'0') as epack_no,b.lot_code as ldesc  from ig_rbodt b with (nolock),IG_rBOHD C with (nolock) where  " & _
                    "   C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                    " INV_no='" & RS2("inv_no") & "' AND Inv_TYPE ='" & Trim(txtfields(0).Text) & "' and b.product_code='" & rs5("product_code") & "'  and b.lot_code='" & rs5("ldesc") & "' AND B.BO_TYPE= '" & Trim(txtfields(0).Text) & "' AND b.Divcode='" & Divcode & "' order by b.spack_no asc ", DB, adOpenDynamic, adLockOptimistic
                
                    frmpack = rs9("spack_no")
                
                Set rs10 = New Recordset
                    rs10.Open "select top  1    b.product_code,isnull(b.spack_no,'0') as spack_no,isnull(b.epack_no,'0') as epack_no,b.lot_code as ldesc  from ig_rbodt b with (nolock),IG_rBOHD C with (nolock) where  " & _
                    "   C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                    " INV_no='" & RS2("inv_no") & "' AND Inv_TYPE ='" & Trim(txtfields(0).Text) & "' and b.product_code='" & rs5("product_code") & "'  and b.lot_code='" & rs5("ldesc") & "' AND B.BO_TYPE= '" & Trim(txtfields(0).Text) & "' AND b.Divcode='" & Divcode & "' order by b.epack_no desc ", DB, adOpenDynamic, adLockOptimistic
                
                    topack = rs10("epack_no")
                    
                    If frmpack <> topack Then
                        pack_no = pack_no & " " & CStr(frmpack) & "-" & CStr(topack)
                    Else
                        pack_no = pack_no & "," & CStr(frmpack)
                    End If
           Else
            
                    Do While Not rs6.EOF
                       If pack_no = " " Then
                           If rs6("spack_no") = rs6("epack_no") Then
                               pack_no = CStr(rs6("spack_no"))
                           ElseIf rs6("spack_no") <> rs6("epack_no") Then
                               pack_no = CStr(rs6("spack_no")) & "-" & CStr(rs6("epack_no"))
                           End If
                       Else
                           
                           If CStr(rs6("spack_no")) = rs6("epack_no") Then
                                 pack_no = pack_no & "," & CStr(rs6("spack_no"))
                           ElseIf rs6("spack_no") <> rs6("epack_no") Then
                               pack_no = pack_no & "," & CStr(rs6("spack_no")) & "-" & CStr(rs6("epack_no"))
                           End If
                           
                       End If
                        rs6.MoveNext
                    Loop
        End If
                    DB.Execute " insert into TEMP_BAGNO_wsales  values('" & txtfields(1).Text & "','" & txtfields(0).Text & "','" & rs5("product_code") & "','" & pack_no & "','" & Format(RS2("inv_date"), "yyyy-mm-dd") & "','" & ipadds & "','" & Divcode & "','" & rs5("ldesc") & "')"
               rs5.MoveNext
         Loop
'         End If
     rsb.MoveNext
  Loop
    RS2.MoveNext
    Loop
      'DB.Execute ("delete from INVBAGDET_wsales  where ipad='" & ipadds & "' and divcode='" & divcode & "'")
      'DB.Execute ("delete from TEMP_BAGNO_wsales  where ipad='" & ipadds & "' and divcode='" & divcode & "'")
       
      Set rsb = New Recordset
      rsb.Open "select   isnull(INV_NO,'0') INV_NO,isnull(INV_TYPE,'') INV_TYPE  ,isnull(PRODUCTCODE,'') PRODUCTCODE  ,isnull(PACKNO,'') PACKNO ,isnull(INV_Date,'1999-09-01') INV_Date ,isnull(ipad,'') ipad ,isnull(Divcode,'') Divcode  ,isnull(Lotcode,'') Lotcode FROM " + TableName + " a with (nolock) where  divcode='" & Divcode & "' ", DB, adOpenDynamic, adLockOptimistic
       If Not rsb.EOF Then
       Do While Not rsb.EOF
       
      ' (INV_NO,INV_TYPE ,PRODUCTCODE ,PACKNO ,INV_Date ,ipad ,Divcode ,Lotcode )"
      ' DB.Execute (" insert into  INVBAGDET_wsales  (INV_NO,INV_TYPE,PRODUCTCODE,PACKNO,INV_Date,ipad,divcode,LOTCODE) values ('" & RSB("INV_NO") & "','" & RSB("INV_TYPE") & "' ,'" & RSB("PRODUCTCODE") & "' ,'" & RSB("PACKNO") & "' ,'" & Format(RSB("INV_Date"), "yyyy-mm-dd") & "' ,'" & RSB("ipad") & "' ,'" & RSB("Divcode") & "' ,'" & RSB("Lotcode") & "' )")
       ' DB.Execute (" insert into  TEMP_BAGNO_wsales  (INV_NO,INV_TYPE,PRODUCTCODE,PACKNO,INV_Date,ipad,divcode,LOTCODE) values ('" & RSB("INV_NO") & "','" & RSB("INV_TYPE") & "' ,'" & RSB("PRODUCTCODE") & "' ,'" & RSB("PACKNO") & "' ,'" & Format(RSB("INV_Date"), "yyyy-mm-dd") & "' ,'" & RSB("ipad") & "' ,'" & RSB("Divcode") & "' ,'" & RSB("Lotcode") & "' )")
       rsb.MoveNext
       Loop
       End If
       
        rfooter = "" & List1.List(List1.ListIndex) & ""
        DB.Execute "INSERT INTO TEMP_WSALESPRINTTYPE  (INV_NO ,INV_TYPE , ipad ,Divcode,invsno,PRINTHEAD ) VALUES('" & txtfields(1).Text & "','" & txtfields(0).Text & "','" & ipadds & "','" & Divcode & "','" & (a + 1) & "','" & rfooter & "')"
       
       DB.CommitTrans
       
     Set RsTmp = New Recordset
     RsTmp.Open "exec KSP_WastePackserialno '" & Divcode & "','" & txtfields(0).Text & "','" & txtfields(1).Text & "' ,'" & ipadds & "'", DB
     
     
     
    'this  code command on 15-2-2018 Annamalai.S
    
'    a = 0
'    B = List1.ListCount
'    List1.ListIndex = 0
'
'    '20-03-2018--------------------- print type
'
'    bol1 = False
'    i = 0
'
'    ipadds = Right(LocalIPAdd, 3)
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'    DB.Execute "ksp_TableExists TEMP_WSALESPRINTTYPE"
'    DB.Execute "CREATE TABLE TEMP_WSALESPRINTTYPE (INV_NO [varchar](12) NULL,INV_TYPE [varchar](4) NULL, ipad [varchar](6),Divcode varchar(3),invsno numeric(4),PRINTHEAD VARCHAR(30))"
'    DB.Execute "Delete from  TEMP_BAGNO_wsales"
'
'
'    Do While Not a = B
'        If List1.Selected(List1.ListIndex) = True Then
'            'Pack no ---------------------------------------'
'             DB.BeginTrans
'            Set rs6 = New Recordset
'
'            rs6.Open "select distinct b.product_code,isnull(b.spack_no,'') as spack_no,isnull(b.epack_no,'') as epack_no,b.lot_code as ldesc  from ig_rbodt b,IG_rBOHD C where  " & _
'             " C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND " & _
'             " INV_no='" & TXTFIELDS(1).Text & "' AND Inv_TYPE ='" & TXTFIELDS(0).Text & "' AND B.BO_TYPE ='" & TXTFIELDS(0).Text & "' AND b.Divcode='" & divcode & "' order by b.lot_code", DB, adOpenStatic
'
'              Do While Not rs6.EOF
'                 If pack_no = "" Then
'                     If rs6("spack_no") = rs6("epack_no") Then
'                         pack_no = CStr(rs6("spack_no"))
'                     ElseIf rs6("spack_no") <> rs6("epack_no") Then
'                         pack_no = CStr(rs6("spack_no")) & "-" & CStr(rs6("epack_no"))
'                     End If
'
'                     If prcode = rs6("product_code") Then
'                        pack_nonew = pack_nonew & "," & pack_no
'                     Else
'                        pack_nonew = pack_no
'                        DB.Execute " insert into TEMP_BAGNO_WSALES values('" & TXTFIELDS(1).Text & "','" & TXTFIELDS(0).Text & "','" & rs6("product_code") & "','" & pack_no & "')"
'                     End If
'
''                     If prcode = rs6("product_code") Then
''                        DB.Execute "update TEMP_BAGNO_WSALES set  PACKNO = '" & pack_nonew & "' where inv_no= '" & TXTFIELDS(1).Text & "' AND Inv_TYPE ='" & TXTFIELDS(0).Text & "' and productcode='" & rs6("product_code") & "' "
''                     End If
'                        prcode = rs6("product_code")
'                        pack_no = ""
'                 End If
'                  rs6.MoveNext
'              Loop
'
'
'        rfooter = "" & List1.List(List1.ListIndex) & ""
'
'        DB.Execute "INSERT INTO TEMP_WSALESPRINTTYPE  (INV_NO ,INV_TYPE , ipad ,Divcode,invsno,PRINTHEAD ) VALUES('" & TXTFIELDS(1).Text & "','" & TXTFIELDS(0).Text & "','" & ipadds & "','" & divcode & "','" & (a + 1) & "','" & rfooter & "')"
'
'        DB.CommitTrans
    
        If UCase(CustID) <> "ASM" Then
        
        Dim Crycls_wSales_Invoice_GST As New clsCrystal
        

                Set Crycls_wSales_Invoice_GST.cryRept = Cry_WSales_Inv_SKS
  
            
            Crycls_wSales_Invoice_GST.CrystalPrint
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            DOCDT = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
            
            CrystalReport1.ParameterFields(0) = "@DIVCODE;" & Divcode
            CrystalReport1.ParameterFields(1) = "@INV_NO;" & txtfields(1).Text
            CrystalReport1.ParameterFields(2) = "@INV_TYPE;" & txtfields(0).Text
            'CrystalReport1.ParameterFields(3) = "@TempTable;" & ipadds
            CrystalReport1.Formulas(0) = "invHead='" & Trim(rfooter) & "'"
            
            If optmail.value = False Then
                CrystalReport1.WindowShowPrintSetupBtn = True
                CrystalReport1.WindowShowSearchBtn = True
                CrystalReport1.WindowState = crptMaximized
                
                SendKeys "{ENTER}"
                CrystalReport1.Action = 1
                CrystalReport1.PrinterCopies = 1
                Screen.MousePointer = 0
            End If
    End If
    End If
'        If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
'        a = a + 1
'        i = i + 1
        If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
        a = a + 1
        I = I + 1
    Loop
      
    If UCase(CustID) = "ASM" And optmail.value = False Then
                Dim Crycls_LSales_Invoice_GST1 As New clsCrystal
  
                Set Crycls_LSales_Invoice_GST1.cryRept = Cry_Invoice_Gst_Details
      
            Crycls_LSales_Invoice_GST1.CrystalPrint
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
            DOCDT = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
            CrystalReport1.ParameterFields(0) = "@DIVCODE ;" & Divcode
            CrystalReport1.ParameterFields(1) = "@INV_NO ;" & txtfields(1).Text
            CrystalReport1.ParameterFields(2) = "@INV_TYPE  ;" & txtfields(0).Text
            CrystalReport1.ParameterFields(3) = "@TempTable  ;" & ipadds 'LocalIPAdd1
            'CrystalReport1.Formulas(0) = "invHead='" & Trim(rfooter) & "'"
'            CrystalReport1.Formulas(1) = "Bags='" & Trim(pack_no) & "'"
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            
             SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
    End If
    
    
'    If MailFlg = "Y" Then
'        If MailVerify = "Y" Then
            If optmail.value = True Then
                
                Set Rsck = New Recordset
                Rsck.Open "Ksp_WasteAutomailConfig '" & Divcode & "','" & Trim(txtfields(1).Text) & "','" & Trim(txtfields(0).Text) & "','WS'", DB
                If Not Rsck.EOF Then
                    If Rsck("CC_mail") = "" Or Rsck("CC_mail") = " " Then
                        MsgBox "Please updated the CC mail", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    If Rsck("Tomail") = "" Or Rsck("Tomail") = " " Then
                        MsgBox "Please updated the To mail from customer master", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    
                     
                    Call ExportWSalesInvPdf
                    FrmMailSend.Hide
                    FrmMailSend.Text1.Text = Trim(txtfields(6).Text)
                    FrmMailSend.Text2.Text = Trim(txtfields(7).Text)
                    FrmMailSend.Hide
                    FrmMailSend.Text3.Text = Trim(txtfields(1).Text)
                    FrmMailSend.Text4.Text = Trim(txtfields(0).Text)
                    FrmMailSend.Hide
                    FrmMailSend.Text5.Text = Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy"))
                    
                    
                    Call FrmMailSend.LoadmailData
                    FrmMailSend.Hide
'                MailFlg = "N"
                End If
            End If
'        Else
'                Call ExportWSalesInvPdf
'        End If
'    End If
    FrmPrint.Visible = False
    SSTab4.Visible = False
End Sub

Private Sub CmdPrintbtn_Click()
 MailFlg = "Y"
        OLDPRINT = "NO"
        List1.Clear
        SSTab4.Visible = True
        Set repfrs = New Recordset
        repfrs.Open "SELECT DISTINCT  DESCRIPTION FROM WVG_PRINTTYPE  WHERE DIVCODE='" & Divcode & "' ORDER BY DESCRIPTION", DB, adOpenStatic
        If repfrs.RecordCount > 0 Then
            Do While Not repfrs.EOF
                List1.AddItem repfrs(0)
                repfrs.MoveNext
            Loop
        Else
            MsgBox "No Print Type!!"
        End If
End Sub

Private Sub cmdremcancel_Click()
    Frame9.Visible = False
    Buttonframe.Enabled = True
    Call BUTTON_Click(10)
End Sub

Private Sub cmdremok_Click()
On Error GoTo cmdremok_Click_Error

    Buttonframe.Enabled = True
    Frame9.Visible = False
    BUTTON(9).SetFocus
    'Call BUTTON_Click(9)
    Exit Sub

Exit Sub
cmdremok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdremok_Click of Form Invoice", vbInformation, head

End Sub


Private Sub Combo1_Click(Index As Integer)
Call Combo1_Validate(Index, False)
End Sub

Private Sub Combo1_Validate(Index As Integer, Cancel As Boolean)
On Error Resume Next
Select Case Index
Case 1
    If Combo1(1).Text = "Y-YES" Then
        CESSFLG = 1
        'cess = 0
        'grdDataGrid.columns(GAed_Amt) = 0
    Else
        CESSFLG = False
        cess = 0
        grddatagrid.Columns(GLsc_Amt) = 0
    End If
Case 2
    If Combo1(2).Text = "Y-YES" Then
        CHFLG = 1
        Charity = 0
        grddatagrid.Columns(Gvalue) = 0
    Else
        CHFLG = False
        Charity = 0
        grddatagrid.Columns(Gvalue) = 0
    End If
Case 3
    If Combo1(3).Text = "Y-YES" Then
        DUTYFLG = 1
        Bed = 0
        Aed = 0
        grddatagrid.Columns(GTax_Amt) = 0
        grddatagrid.Columns(GBed_Amt) = 0
    Else
        DUTYFLG = False
        Bed = 0
        Aed = 0
        For I = 51 To 60
            txtfields(I).Text = ""
        Next
        txtfields(66).Text = ""
        txtfields(67).Text = ""
        txtfields(68).Text = ""
        txtfields(32).Text = ""
        txtfields(33).Text = ""
        grddatagrid.Columns(GTax_Amt) = 0
        grddatagrid.Columns(GBed_Amt) = 0

    End If
Case 4
    If Combo1(4).Text = "Y-YES" Then
        TAXFLG = 1
        tax = 0
        grddatagrid.Columns(GAed_Amt) = 0
    Else
        TAXFLG = False
        tax = 0
        grddatagrid.Columns(GLsc_Per) = 0
        grddatagrid.Columns(GAed_Amt) = 0
    End If
Case 5
    If Combo1(5).Text = "Y-YES" Then
        tcsflg = True
        grddatagrid.Columns(gTcs_Amt) = 0
        grddatagrid.Columns(gECONTCS_Amt) = 0
        grddatagrid.Columns(gHSONTCS_Amt) = 0
    Else
        tcsflg = False
        grddatagrid.Columns(gTcs_Amt) = 0
        grddatagrid.Columns(gECONTCS_Amt) = 0
        grddatagrid.Columns(gHSONTCS_Amt) = 0
    End If
End Select
Call INVCALC
End Sub

Private Sub Command1_Click()
    SSTab4.Visible = False
End Sub



Private Sub Command3_Click()
If Trim(UCase(CustID)) = "BALKRISHNA" Then
Dim CryCls_Wsales_WasteInvoiceNAt As New clsCrystal
'     If Trim(UCase(CustId)) = "NATURAL" Then
'        Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_WasteSales_Invoice
     If Trim(UCase(CustID)) = "BALKRISHNA" Then
        If Trim(divname) = "SHIVDHARA SPINNERS & SPINNERS PVT. LTD." Then
            'Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_WasteSales_Invoice_BAL
            Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_WasteSaleinv  'Cry_WasteSales_Invoice_BAL_New
            
        Else
            Set CryCls_Wsales_WasteInvoiceNAt.cryRept = Cry_balkrishnainvoice 'ry_WasteSales_Invoice_BACL
        End If
  
        CryCls_Wsales_WasteInvoiceNAt.CrystalPrint

        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
           rfooter = ""
    a = 0
    B = List1.ListCount
    List1.ListIndex = 0
    
    Dim bol1 As Boolean
    bol1 = False

    I = 0
    Do While Not a = B
        If List1.Selected(List1.ListIndex) = True Then
        
            If bol1 Then
                MsgBox "Select any one type", vbInformation, head
                Exit Sub
            End If
            
            bol1 = True

            rfooter = "" & List1.List(List1.ListIndex) & ""

        End If
        
        If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
        
        a = a + 1
        I = I + 1
    Loop
    

        Dim INVTYPE As String
        INVNO = val(txtfields(1).Text)
        Invdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        cfdate = val(txtfields(47).Text)
        INVTYPE = txtfields(0).Text

        'CrystalReport1.SelectionFormula = "{winvtmp1.DATE} = DATE(" & Val(Year(Invdt)) & "," & Val(Month(Invdt)) & "," & Val(Day(Invdt)) & ")  and {winvtmp1.INV_NO} ='" & INVNO & "' and {winvtmp1.DIVCODE}='" & divcode & "'"
        CrystalReport1.ParameterFields(0) = "@divcode ;" & Divcode
        CrystalReport1.ParameterFields(1) = "@invdate ;" & Invdt
        CrystalReport1.ParameterFields(2) = "@invno ;" & INVNO
        CrystalReport1.ParameterFields(3) = "@invtype  ;" & INVTYPE
        CrystalReport1.Formulas(1) = "inv_name='" & Trim(rfooter) & "'"
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized

        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        End If
Else
    rfooter = ""
    a = 0
    B = List1.ListCount
    List1.ListIndex = 0
    
    Dim bol12 As Boolean
    bol12 = False

    I = 0
    Do While Not a = B
        If List1.Selected(List1.ListIndex) = True Then
        
            If bol12 Then
                MsgBox "Select any one type", vbInformation, head
                Exit Sub
            End If
            
            bol12 = True

            rfooter = "" & List1.List(List1.ListIndex) & ""

        End If
        
        If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
        
        a = a + 1
        I = I + 1
    Loop


'    Call PrePrint_Saranya(CStr(txtfields(1).Text), CStr(txtfields(1).Text), CStr(txtfields(0).Text), CStr(rfooter))
  End If
    
End Sub

Private Sub Command2_Click()
Dim UserName As String
 Dim r As Long
 
    UserName = ""
    If usrid <> "" Then
        webuser = Trim(usrid)
    Else
        webuser = ""
    End If
    
    Set rsnew = New Recordset
    rsnew.Open "select dbo.decryptstring(password) password,user_name from pp_passwd where DIVCODE='" & Divcode & "' AND module='" & ModuleNo & "' and USER_ID='" & webuser & "'", DB, adOpenStatic
    
    If rsnew.RecordCount > 0 Then
        Webpasswd = Trim(rsnew("password"))
        UserName = Trim(rsnew("user_name"))
    Else
        webpath = ""
    End If
    
    Set rsnew = New Recordset
    rsnew.Open "select ISNULL(EInvoice_URL,'')EInvoice_URL from IG_WPARAM WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
    
    If rsnew.RecordCount > 0 Then
        webpath = Trim(rsnew("EInvoice_URL"))
    Else
        webpath = ""
    End If
    
    Token = 0
    Set RsEInv = New Recordset
    RsEInv.Open "EXEC ksp_UserSessionInsert '" & Divcode & "','" & ModuleNo & "','" & usrid & "','" & UserName & "','" & Format(pdate, "yyyy-MM-dd") & "','" & LocalIPAdd & "','" & LocalHost & "','" & GSTRDBNAME & "'", DB
    If Not RsEInv.EOF Then
        Token = RsEInv(0)
    Else
        MsgBox "Please Create user rights", vbInformation
        Exit Sub
    End If
 
    r = ShellExecute(0, "open", "" & webpath & "?TokenId=" & Token & " ", 0, 0, 1)
End Sub

Private Sub DTPicker1_CloseUp(Index As Integer)
On Error GoTo DTPicker1_CloseUp_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3, 4
    MaskEdBox1(Index).Text = DTPicker1(Index).value
End Select
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    intervalMinutes = -1
    
On Error Resume Next
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
    intervalMinutes = -1
    On Error GoTo Form_Load_Error
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    'BUTTON(3).ToolTipText = "List (Ctrl L)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    BUTTON(12).ToolTipText = "Print (Ctrl P)"
   ' BUTTON(13).ToolTipText = "Crystal (Ctrl Y)"
    
    If UCase(CustID) = "PGT" Then
        BUTTON(3).ToolTipText = "GatePass Print"
        BUTTON(3).Visible = True
        BUTTON(3).Left = 6360
        BUTTON(11).Left = 6910
    End If
    YearNo = Right(Year(yfdate), 2)
    
   Opt = "qry"
   B = 0
   Set DB = New Connection
   DB.CursorLocation = adUseClient
   DB.Open "PROVIDER=MSDataShape;" & connectstring
   DB.CommandTimeout = 0
   desc.Caption = "Query"
   DATLAB.Caption = Date
   stbar.Panels(1).Text = head
   txtfields(47).FontBold = True
   DTPicker1(0).value = pdate
   DTPicker1(1).value = pdate
   DTPicker1(2).value = pdate
   
   '''07-11-2023 MailVerify flag added
   
    MailVerify = "N"
    MailFlg = "N"
    XMLFlg = "N"
    
   TDSTCSFlg = "N"
    
    Set rsmail = New Recordset
    rsmail.Open "select isnull(MailVerify_flg,'N')MailVerify_flg,isnull(EInvoice_Btn,'N')EInvoice_Btn from ig_rparam where divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
    If Not rsmail.EOF Then
        MailVerify = rsmail(0)
    End If
    If rsmail("EInvoice_Btn") = "Y" Then
        Command2.Visible = True
    Else
        Command2.Visible = False
    End If
    
    grddatagrid.HeadLines = 2.5
   Call query_mode
   SSTab1.Tab = 0
   grddatagrid.Enabled = True
   BlnInvRoundoff = False
   BlnPackTax = False
   BlnTCSTax = False
   BlnTcsCalc = False
   BInPACKCESS = False
   BInCESSTCS = False
   BInCESSTAX = False
   BInPACKTCS = False
   BInPackBEd = False
   BInTaxBED = False
   
   
 BlnCharity = False
 BlnFrt = False
BlnHandling = False
BlnInsurance = False
    If rsrec.State = 1 Then rsrec.Close
        rsrec.Open " select isnull(TINSURANCEFLG,0) TINSURANCEFLG,isnull(TCharityFlg,0) TCharityFlg, isnull(TCharityFlg,0) TCharityFlg,isnull(FRTFLG,0) FRTFLG,isnull(HANDFLG,0) HANDFLG ,isnull(invtot_roff,'0') invroundoff ,isnull(pack_Tax,'N') Pack_Tax,isnull(tcs_Tax,'N') Tcs_Tax, isnull(TCS_CALC,'N') TCS_CALC,isnull(cess_tax,'N') cess_tax,isnull(cess_tcs,'N') cess_tcs,isnull(pack_tcs,'N') pack_tcs,isnull(Pack_Cess,'N') Pack_Cess,isnull(Assvall_Roff,0) Assvall_Roff,isnull(BED_TAx,'N') as Bed_tax,isnull(pack_bed,'N') as pack_bed,isnull(InvoicenowithPrefix,0) InvoicenowithPrefix   from IG_RPARAM where divcode='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
    
    If rsrec.EOF = False Then
    
        If rsrec!FRTFLG = 1 Then BlnFrt = True ' freight amount
       If rsrec!HANDFLG = 1 Then BlnHandling = True  ' handling charges
        If rsrec!TCharityFlg = 1 Then BlnCharity = True ' Charity amount
        If rsrec!TINSURANCEFLG = 1 Then BlnInsurance = True ' insurance amount
        InvoicenowithPrefix = rsrec("InvoicenowithPrefix")
        
        If rsrec("invroundoff") = 0 Then
            BlnInvRoundoff = True
        End If
         If rsrec("pack_Tax") = "Y" Then
            BlnPackTax = True
         End If
        If Trim(rsrec("tcs_Tax")) = "Y" Then
            BlnTCSTax = True
         End If
        
         If Trim(rsrec("TCS_CALC")) = "Y" Then
            BlnTcsCalc = True
         End If
         If rsrec("cess_tcs") = "Y" Then
            BInCESSTCS = True
         End If
         If rsrec("cess_tax") = "Y" Then
            BInCESSTAX = True
         End If
         If rsrec("pack_tcs") = "Y" Then
            BInPACKTCS = True
         End If
         If rsrec("pack_cess") = "Y" Then
            BInPACKCESS = True
         End If
         If rsrec("pack_bed") = "Y" Then
            BInPackBEd = True
         End If
         If rsrec("Bed_tax") = "Y" Then
            BInTaxBED = True
         End If
         
         BInAssRound = rsrec("Assvall_Roff")
    End If
    
    If InvoicenowithPrefix = 1 Then
        txtfields(96).Visible = True
        txtfields(96).Locked = True
    Else
        txtfields(96).Visible = False
    End If

    Set rs1 = New Recordset
    rs1.Open "select * from IG_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='I' and DOC_REF='WS' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
    If rs1.RecordCount = 0 Then
        DB.Execute "insert IG_doccontrol values('" & Divcode & " ','" & YearNo & "','I','WS','Waste Sales','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL)"
    End If
    
    Set rs1 = New Recordset
    rs1.Open "select * from IG_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='I' and DOC_REF='YW' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
    If rs1.RecordCount = 0 Then
        DB.Execute "insert IG_doccontrol values('" & Divcode & " ','" & YearNo & "','I','YW','Yarn Waste Sales','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL)"
    End If
    If adoPrimaryRS.RecordCount > 0 Then
    adoPrimaryRS.MoveLast
    txtfields(46).Text = Format(val(adoPrimaryRS("FREIGHT") & "") + val(adoPrimaryRS("LSC_AMT") & "") + val(adoPrimaryRS("INS_AMT") & "") + val(adoPrimaryRS("FWD_CHRG") & ""), "#.00")
    If txtfields(46).Text = 0 Then
        txtfields(46).Text = "0.00"
    End If
    Else
      Exit Sub
    End If
    BUTTON(1).Enabled = True
        intervalMinutes = -1
'   txtfields(79).Text = "0.00"
'   txtfields(80).Text = "0.00"
'   txtfields(76).Text = "0.00"
'   txtfields(78).Text = "0.00"
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
Private Sub query_mode(Optional INVTYPE As String, Optional INVNO As String)
On Error GoTo er1
 BUTTON(1).Enabled = True
If (Opt = " " Or Opt = "qry") Then
   
    If INVNO = "" Then
         
        Set QryRS = New Recordset
        QryRS.Open " select inv_type from IG_RINVHD WHERE DIVCODE='" & Divcode & "' ORDER BY INV_TYPE", DB
        Set adoPrimaryRS = New Recordset
        
        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,FWD_CHRG,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,lr_date,ARE_NO,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT,remarks,tcs_per,tcs_amt,educess_per,educess_amt,hscess_per,hscess_amt,taxable_value,ECONTCS_AMT,HSONTCS_AMT,ECONTCS_PER,HSONTCS_PER,tax_code,EntryDate,NOTIFY_CODE,typecode,TINV_NO,cust_gststcode,CGSTAMT,SGSTAMT,IGSTAMT,eway_billno,eway_bill_date,lorryphoneno,Invoice_No,Load_Amt,formxxdt from IG_RINVHD WHERE DIVCODE='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' order by Date} AS ParentCMD APPEND " & _
            "({SELECT Distinct a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",ATax_code,ATax_per,Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",ATax_amt,Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,A.FWDCHRG,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
            " ,Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt""EC on TCS Amt"",HSONTCS_Amt""HS on TCS Amt"",a.Pack_type,TInv_no,cgstper ""CGST %"",cgstamt ""CGST Amt"",sgstper""SGST %"",sgstamt ""SGST Amt"",igstper ""IGST %"",igstamt ""IGST Amt"",hsncode""HSNCODE"" ,Godown,Load_Amt ""Loading Amt"",a.MixRate   FROM IG_RINVDT a , Ig_rPRoduct b where a.Product_Code=b.Product_Code and a.divcode = '" & Divcode & "'  and a.divcode=b.divcode} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
            
            If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
                
            '    ADOSECONDARYRS.Open "SELECT distinct a.Divcode,INV_TYPE,INV_NO,CONT_TYPE,CONT_NO,a.PRODUCT_CODE""Product"",Description,Packs,NETT_KGS""Nett Kgs"",GROSS_KGS""Gross Kgs"",RATE_EX""EX Rate/Kg"",RATE_NETT""Nett Rate/Kg"",rate_kg,Value,Charity,CESS_AMT""Cess Amt"",BED_PER""B.E.D. %"",BED_AMT""B.E.D. Amt"",AED_PER""A.E.D. %"",AED_AMT""A.E.D. Amt"",EDUCESS_PER""Edu. Cess %"",EDUCESS_AMT""Edu. Cess Amt"",HSCESS_PER""H.S. Cess %"",HSCESS_AMT""H.S. Cess Amt"",TAX_CODE""TaxCode"",TAX_PER""Tax %"",TAX_AMT""Tax Amt"",LSC_PER""Surcharge %"",LSC_AMT""Surcharge Amt"",CashDiscountPer""CashDiscount %"",CashDiscountAmt""CashDiscount Amt"",invsno,conewt,lotcode,godown_code,Frt_amt ""Freight"",PACK_CHRG,isnull(a.remarks,'') remarks,a.TaxableValue,a.Total_Amt,a.Ins_Amt,a.Receipt_Amt,a.DN_Amt,a.CN_Amt,a.RND_off,a.HandlingRate " & _
                            " FROM IG_INVDT a,ig_product b where a.divcode=b.divcode and a.product_code=b.product_code and a.divcode = '" & divcode & "'  and inv_type='" & adoPrimaryRS("inv_type") & "' and  inv_no='" & adoPrimaryRS("inv_no") & "' and inv_no in (select inv_no from ig_invhd where DIVCODE='" & divcode & "' AND inv_no='" & adoPrimaryRS("inv_no") & "' and date='" & Format(adoPrimaryRS("date"), "yyyy-mm-dd") & "' and a.inv_no=inv_no) ORDER BY INVSNO ", DB, adOpenStatic, adLockBatchOptimistic

    Else
    
        '        Set adoPrimaryRS = New Recordset
        '        adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,INV_TYPE,INV_NO,CEX_INV_TYPE,CEX_INV_NO,DATE,CUST_CODE,AGENT_CODE,BROK_CODE,BO_TYPE,BO_NO,PAY_MODE,BANK_CODE,MATL_VALUE,CESS_PER,CESS_AMT,CHARITY,BED_AMT,AED_AMT,TAX_FLAG,TAX_AMT,LSC_AMT,FREIGHT,INS_PER,INS_AMT,RND_OFF,TOTAL_AMT,RECEIPT_AMT,DN_AMT,CN_AMT,CONS_ADD1,CONS_ADD2,CONS_ADD3,CONS_ADD4,DESPATCH_TO,PRE_TIME,REM_TIME,CARRIER_CODE,VEHICLE_NO,LR_NO,ARE_NO,lr_date,ARE_DATE,CANCELLED,CANCEL_DT,CANCEL_REM,CR_DAYS,DELIVERY_DT from IG_RINVHD WHERE DIVCODE='" & divcode & "' AND INV_TYPE='" & InvType & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' } AS ParentCMD APPEND " & _
        '        "({SELECT DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",PRODUCT_CODE""Product"",Packs,Nett_Kgs""Nett Kgs"",GROSS_KGS""Gross Kgs"",Rate_Ex,Rate_Nett,Value,Charity,Tax_code""TaxCode"",Tax_Per,Bed_Per,Aed_Per,Lsc_Per,Tax_Amt,Bed_Amt,Aed_Amt,Lsc_Amt,Cess_Amt,invsno FROM IG_RINVDT where divcode = '" & divcode & "' AND INV_NO='" & INVNO & "' AND INV_TYPE='WS' AND INV_TYPE='WS' ORDER BY INV_NO} AS ChildCMD  RELATE 'DIVCODE' TO 'DIVCODE','inv_no' TO 'inv_no','inv_type' to 'inv_type') AS ChildCMD ", DB, adOpenStatic, adLockBatchOptimistic
        
    End If
    
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    
    Call disablcontls
    Call bindcontls
        
    'GST No for Customer'
    Set rscustgst = New Recordset
    rscustgst.Open "select isnull(gstinno,'')gstinno from fa_slmas where slcode ='" & txtfields(6).Text & "'", DB, adOpenStatic
    If rscustgst.RecordCount > 0 Then
        txtfields(137).Text = rscustgst("gstinno")
    End If
    
    
    If Not adoPrimaryRS.RecordCount > 0 Then
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
            Screen.MousePointer = 0
            Exit Sub
    End If
    
    txtfields(46).Text = Format(val(adoPrimaryRS("FREIGHT") & "") + val(adoPrimaryRS("LSC_AMT") & "") + val(adoPrimaryRS("INS_AMT") & "") + val(adoPrimaryRS("FWD_CHRG") & ""), "#.00")
    If txtfields(46).Text = 0 Then
        txtfields(46).Text = "0.00"
    End If
    
    'Set ADOSECONDARYRS = New Recordset
'    ADOSECONDARYRS.Open = " SELECT a.DIVCODE,INV_TYPE,INV_NO,CONT_TYPE ""Cont Type"",CONT_NO ""Cont No."",a.PRODUCT_CODE""Product"" , b.Description ""Description"",Packs""     Packs"",Nett_Kgs""             Nett Kgs"",GROSS_KGS""           Gross Kgs"",Rate_Ex""       EX Rate/Kg"",Rate_Nett""     Nett Rate/Kg"",Rate_Kg""       Rate Kg"",Value""            Value"",Charity""          Charity"",Tax_code""TaxCode"",Tax_Per""    Tax %"",Bed_Per""B.E.D. %"",Aed_Per""A.E.D. %"",Lsc_Per""Surcharge %"",Tax_Amt""        Tax Amt"",Bed_Amt""    B.E.D. Amt"",Aed_Amt""   A.E.D. Amt"",Lsc_Amt""Surcharge Amt"",Cess_Amt""      Cess Amt"",Invsno,educess_per""       Edu. Cess %"",educess_amt""    Edu. Cess Amt"",hscess_per""      H.S. Cess %"",hscess_amt""   H.S. Cess Amt"",Ins_Amt""        Ins Amt"",Freight""         Freight"",Tcs_Amt""       TCS Amt"",Round_Off""      Round Off"",Tot_Amt""    Total Amt""" & _
'        " ,Receiptt_Amt""  Receipt Amt"",CNN_Amt""      CNN Amt"",DNN_Amt""      DNN Amt"",Taxable_Values,ECONTCS_Amt,HSONTCS_Amt   FROM IG_RINVDT a , Ig_rPRoduct b where a.Product_Code=b.Product_Code and a.divcode = '" & divcode & "'  and a.divcode=b.divcode and inv_type=" ' & adoprimaryrs("inv_type") & "' and inv_no='" & adoprimaryrs("inv_no") &"'", DB, adOpenStatic, adLockBatchOptimistic
    'ADOSECONDARYRS.Recordset = adoPrimaryRS("childCMD")
    
    Set grddatagrid.DataSource = adoPrimaryRS("childCMD").UnderlyingValue
    'Set grddatagrid.DataSource = ADOSECONDARYRS
    grddatagrid.Enabled = True
    Call gridalign
    desc.Caption = "Query"
    'stbar.Panels(2).Text = "Query"
    BUTTON(9).Enabled = False
    BUTTON(1).Enabled = True
    
    gridalign
    Call NEWFORM1(BUTTON, GSNO)
     BUTTON(1).Enabled = True
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    End If
    SSTab1.Enabled = True
    SSTab1.Tab = 0
    
'    BUTTON(0).SetFocus
'    BUTTON(1).Enabled = False
    
End If
 BUTTON(1).Enabled = True
Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If
End Sub

Public Sub bindcontls()
On Error Resume Next

    If adoPrimaryRS.RecordCount >= 0 Then
        Dim c As Control
            For Each c In Me.Controls
                If TypeOf c Is TextBox Then
                   Set c.DataSource = adoPrimaryRS
                End If
            Next
    End If
    
End Sub
Public Sub disablcontls()
Dim c As Control
For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = True
Next
grddatagrid.Enabled = True
If Opt = "mod" Or Opt = "add" Then
    txtfields(15).Locked = False
    txtfields(39).Locked = False
End If

End Sub
Public Sub ENABLCONTLS()
Dim c As Control
For Each c In Me.Controls
 If TypeOf c Is TextBox Or TypeOf c Is ComboBox Then c.Locked = False
Next
For I = 6 To 28
txtfields(I).Locked = True
Next
txtfields(12).Locked = False
txtfields(15).Locked = False
txtfields(71).Locked = True
txtfields(83).Locked = True
txtfields(81).Locked = True
txtfields(14).Locked = True
txtfields(30).Locked = True
txtfields(76).Locked = True
txtfields(78).Locked = True
txtfields(49).Locked = True
grddatagrid.Enabled = True
For I = 0 To 28
If I <> 10 And I <> 11 And I <> 12 Then
    grddatagrid.Columns(I).Locked = True
Else
    grddatagrid.Columns(I).Locked = False
End If
Next
End Sub
Private Sub gridalign()
On Error Resume Next
    grddatagrid.Columns(Gdivcode).Width = 0
    grddatagrid.Columns(Gdivcode).Visible = False
    grddatagrid.Columns(GINV_TYPE).Visible = False
    grddatagrid.Columns(GINV_NO).Visible = False
    grddatagrid.Columns(GCONT_TYPE).Visible = False
    grddatagrid.Columns(GCONT_NO).Visible = False
    
    grddatagrid.Columns(GNett_Kgs).NumberFormat = "#0.000"
    grddatagrid.Columns(GGROSS_KGS).NumberFormat = "#0.000"
  
    grddatagrid.Columns(GPRODUCT_CODE).Caption = "Waste"
    grddatagrid.Columns(Gpacks).Caption = " Packs"
    grddatagrid.Columns(GNett_Kgs).Caption = "    Nett Kgs"
    grddatagrid.Columns(GGROSS_KGS).Caption = " Gross Kgs"
    grddatagrid.Columns(GRate_Ex).Caption = "EX Rate/Kg"
    grddatagrid.Columns(GRate_Nett).Caption = "Nett Rate/Kg"
    grddatagrid.Columns(GRate_Kg).Caption = "    Rate Kg"
    
    grddatagrid.Columns(GATax_Amt).Caption = "   ATax Amt"
    grddatagrid.Columns(GATax_Per).Caption = "  ATax %"
    grddatagrid.Columns(GATax_code).Caption = "ATax Code"
    grddatagrid.Columns(godown).Caption = "Godown"
        
    grddatagrid.Columns(GATax_code).Width = 0
    
    grddatagrid.Columns(GATax_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(GATax_Per).NumberFormat = "#0.00"
    
    grddatagrid.Columns(GATax_Amt).Alignment = dbgRight
    grddatagrid.Columns(GATax_Per).Alignment = dbgRight
    
    grddatagrid.Columns(GRate_Ex).NumberFormat = "#0.00"
    grddatagrid.Columns(Gpacks).Width = 700
    grddatagrid.Columns(GNett_Kgs).Width = 1100
    grddatagrid.Columns(GGROSS_KGS).Width = 1100
    grddatagrid.Columns(GRate_Ex).Width = 1100
    grddatagrid.Columns(GRate_Nett).Width = 1200
    grddatagrid.Columns(GRate_Kg).Width = 1100
    grddatagrid.Columns(GTax_code).Width = 1000
    grddatagrid.Columns(GLsc_Per).Width = 1250
    grddatagrid.Columns(GLsc_Amt).Width = 1350
    grddatagrid.Columns(gDNN_Amt).Width = 1500
    grddatagrid.Columns(GRate_Nett).NumberFormat = "#0.00"
    grddatagrid.Columns(GTax_Per).NumberFormat = "#0.00"
    grddatagrid.Columns(GBed_Per).NumberFormat = "#0.00"
    grddatagrid.Columns(GAed_Per).NumberFormat = "#0.00"
    grddatagrid.Columns(GLsc_Per).NumberFormat = "#0.00"
    grddatagrid.Columns(GFWDCHRG).NumberFormat = "#0.00"
    grddatagrid.Columns(GCharity).NumberFormat = "#0.00"
    grddatagrid.Columns(Gvalue).NumberFormat = "#0.00"
    grddatagrid.Columns(GTax_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(GBed_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(GAed_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(GLsc_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(GCess_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(Geducess_per).NumberFormat = "#0.00"
    grddatagrid.Columns(Ghscess_per).NumberFormat = "#0.00"
    grddatagrid.Columns(Ghscess_amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gIns_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gTcs_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gfreight).NumberFormat = "#0.00"
    grddatagrid.Columns(gRound_Off).NumberFormat = "#0.00"
    grddatagrid.Columns(gTot_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gReceiptt_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gCNN_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gDNN_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gTaxable_Values).NumberFormat = "#0.00"
    grddatagrid.Columns(gECONTCS_Amt).NumberFormat = "#0.00"
    grddatagrid.Columns(gHSONTCS_Amt).NumberFormat = "#0.00"
 
    'FOR GST'
    grddatagrid.Columns(CGSTAMT).NumberFormat = "#0.00"
    grddatagrid.Columns(SGSTAMT).NumberFormat = "#0.00"
    grddatagrid.Columns(IGSTAMT).NumberFormat = "#0.00"
    
    grddatagrid.Columns(CGSTPER).NumberFormat = "#0.00"
    grddatagrid.Columns(SGSTPER).NumberFormat = "#0.00"
    grddatagrid.Columns(IGSTPER).NumberFormat = "#0.00"
    
    grddatagrid.Columns(Gpacks).Alignment = dbgRight
    grddatagrid.Columns(GNett_Kgs).Alignment = dbgRight
    grddatagrid.Columns(GGROSS_KGS).Alignment = dbgRight
    grddatagrid.Columns(GRate_Ex).Alignment = dbgRight
    grddatagrid.Columns(GRate_Nett).Alignment = dbgRight
    grddatagrid.Columns(GRate_Kg).Alignment = dbgRight
    grddatagrid.Columns(Gvalue).Alignment = dbgRight
    grddatagrid.Columns(GCharity).Alignment = dbgRight
    grddatagrid.Columns(GTax_Per).Alignment = dbgRight
    grddatagrid.Columns(GBed_Per).Alignment = dbgRight
    grddatagrid.Columns(GAed_Per).Alignment = dbgRight
    grddatagrid.Columns(GLsc_Per).Alignment = dbgRight
    grddatagrid.Columns(GTax_Amt).Alignment = dbgRight
    grddatagrid.Columns(GBed_Amt).Alignment = dbgRight
    grddatagrid.Columns(GAed_Amt).Alignment = dbgRight
    grddatagrid.Columns(GLsc_Amt).Alignment = dbgRight
    grddatagrid.Columns(GCess_Amt).Alignment = dbgRight
    grddatagrid.Columns(GINVSNO).Alignment = dbgRight
    grddatagrid.Columns(GFWDCHRG).Alignment = dbgRight
    grddatagrid.Columns(Geducess_per).Alignment = dbgRight
    grddatagrid.Columns(Geducess_amt).Alignment = dbgRight
    grddatagrid.Columns(Ghscess_per).Alignment = dbgRight
    grddatagrid.Columns(Ghscess_amt).Alignment = dbgRight
    grddatagrid.Columns(gIns_Amt).Alignment = dbgRight
    grddatagrid.Columns(gfreight).Alignment = dbgRight
    grddatagrid.Columns(gTcs_Amt).Alignment = dbgRight
    grddatagrid.Columns(gRound_Off).Alignment = dbgRight
    grddatagrid.Columns(gTot_Amt).Alignment = dbgRight
    grddatagrid.Columns(gReceiptt_Amt).Alignment = dbgRight
    grddatagrid.Columns(gCNN_Amt).Alignment = dbgRight
    grddatagrid.Columns(gDNN_Amt).Alignment = dbgRight
    grddatagrid.Columns(gTaxable_Values).Alignment = dbgRight
    grddatagrid.Columns(gECONTCS_Amt).Alignment = dbgRight
    grddatagrid.Columns(gHSONTCS_Amt).Alignment = dbgRight
    
    'For GST'
    
    grddatagrid.Columns(CGSTAMT).Alignment = dbgRight
    grddatagrid.Columns(SGSTAMT).Alignment = dbgRight
    grddatagrid.Columns(IGSTAMT).Alignment = dbgRight
    
    grddatagrid.Columns(CGSTPER).Alignment = dbgRight
    grddatagrid.Columns(SGSTPER).Alignment = dbgRight
    grddatagrid.Columns(IGSTPER).Alignment = dbgRight
    
    grddatagrid.Columns(CGSTAMT).Width = 1050
    grddatagrid.Columns(SGSTAMT).Width = 1050
    grddatagrid.Columns(IGSTAMT).Width = 1050
    
    grddatagrid.Columns(CGSTPER).Width = 850
    grddatagrid.Columns(SGSTPER).Width = 850
    grddatagrid.Columns(IGSTPER).Width = 850
    grddatagrid.Columns(HSNCODE).Width = 990
    grddatagrid.Columns(godown).Width = 850
    grddatagrid.Columns(GLoading_Amt).Width = 950
    grddatagrid.Columns(GLoading_Amt).Alignment = dbgRight
    grddatagrid.Columns(GLoading_Amt).NumberFormat = "#0.00"
    
    'cgstper ""CGST %"",cgstamt ""CGST Amt"",sgstper""SGST %"",sgstamt ""SGST Amt"",igstper ""IGST %"",igstamt ""IGST Amt"",hsncode""HSNCODE""
    
    'If Opt <> "qry" Then
'        grddatagrid.Columns(CGSTAMT).Caption = "CGST Amt"
'        grddatagrid.Columns(SGSTAMT).Caption = "SGST Amt"
'        grddatagrid.Columns(IGSTAMT).Caption = "IGST Amt"
'
'        grddatagrid.Columns(CGSTPER).Caption = "CGST %"
'        grddatagrid.Columns(SGSTPER).Caption = "SGST %"
'        grddatagrid.Columns(IGSTPER).Caption = "IGST %"
'        grddatagrid.Columns(HSNCODE).Caption = "IGST %"
    'End If
    
    grddatagrid.Columns(CGSTAMT).Locked = True
    grddatagrid.Columns(SGSTAMT).Locked = True
    grddatagrid.Columns(IGSTAMT).Locked = True

    grddatagrid.Columns(CGSTPER).Locked = True
    grddatagrid.Columns(SGSTPER).Locked = True
    grddatagrid.Columns(IGSTPER).Locked = True
    grddatagrid.Columns(HSNCODE).Locked = True
'
    
    grddatagrid.Columns(gTaxable_Values).Width = 1500
    grddatagrid.Columns(gECONTCS_Amt).Width = 1500
    grddatagrid.Columns(gHSONTCS_Amt).Width = 1500
 
    grddatagrid.Columns(GFWDCHRG).Width = 1160
    grddatagrid.Columns(gIns_Amt).Width = 1240
    grddatagrid.Columns(gfreight).Width = 1240
    grddatagrid.Columns(gTcs_Amt).Width = 1300
 
    
    
    grddatagrid.EditActive = False
    For I = 0 To 40
    If I <> 10 And I <> 11 And I <> 12 Then
        grddatagrid.Columns(I).Locked = True
    Else
        grddatagrid.Columns(I).Locked = False
    End If
    Next
    
    If CustID = "COTTON" Then
        grddatagrid.Columns(GNett_Kgs).Locked = False
        grddatagrid.Columns(GGROSS_KGS).Locked = False
    End If
    grddatagrid.Columns(GATax_Amt).Visible = False
    grddatagrid.Columns(GATax_Per).Visible = False
    grddatagrid.Columns(GATax_code).Visible = False
    grddatagrid.Columns(GBed_Per).Visible = False
    grddatagrid.Columns(GAed_Per).Visible = False
    grddatagrid.Columns(GLsc_Per).Visible = False
    grddatagrid.Columns(GBed_Amt).Visible = False
    grddatagrid.Columns(GAed_Amt).Visible = False
    grddatagrid.Columns(GLsc_Amt).Visible = False
    grddatagrid.Columns(Geducess_per).Visible = False
    grddatagrid.Columns(Geducess_amt).Visible = False
    grddatagrid.Columns(Ghscess_per).Visible = False
    grddatagrid.Columns(Ghscess_amt).Visible = False
    grddatagrid.Columns(gCNN_Amt).Visible = False
    grddatagrid.Columns(gDNN_Amt).Visible = False
    grddatagrid.Columns(gECONTCS_Amt).Visible = False
    grddatagrid.Columns(gHSONTCS_Amt).Visible = False
    grddatagrid.Columns(gPackType).Visible = False
    grddatagrid.Columns(46).Visible = False
End Sub

Private Sub Form_Resize()
On Error Resume Next
    If Gbl_MenuNmae = "winv" Then
        SSTab2.Width = Me.Width - 1500
        grddatagrid.Width = SSTab2.Width - 200
        
        SSTab2.Height = Me.Height - 8500
        grddatagrid.Height = SSTab2.Height - 200
        grddatagrid.HeadFont.Bold = False
        grddatagrid.RowHeight = 300
    End If
    
    Gbl_MenuNmae = ""
    stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    intervalMinutes = -1
End Sub

 

 

 
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColUpdate_Error
If ColIndex = Gpacks Or ColIndex = GNett_Kgs Or ColIndex = GTax_code Or ColIndex = GGROSS_KGS Or ColIndex = GRate_Ex Or ColIndex = GRate_Kg Then
    Call NETTOEX
    Call INVCALC
End If
Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form Invoice", vbInformation, head
    Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)

On Error Resume Next
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
If Opt = "add" Or Opt = "mod" Then
    Index = grddatagrid.Col
      If Index = GRate_Ex Or Index = GRate_Nett Or Index = GRate_Kg Then
        tonum grddatagrid, 4, KeyAscii, 2
      End If
End If
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error Resume Next
If Opt = "add" Then
If grddatagrid.Col = 5 Then
    If Trim(grddatagrid.Columns(5) = "") Then
        SSTab1.Tab = 0
        BUTTON(9).SetFocus
        Exit Sub
    End If
End If
End If
End Sub

 

 

 

 

Private Sub MaskEdBox1_Change(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 1, 2, 3
        If IsDate(MaskEdBox1(Index).Text) Then DTPicker1(Index).value = MaskEdBox1(Index).Text
End Select
End If
End Sub

 
Private Sub Txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
If adflg <> "Y" Then
On Error Resume Next
Select Case Index
Case 15
    Call INVCALC
Case 6, 8, 10
        Set rs1 = New Recordset
        rs1.Open "select isnull(slname,' ') from fa_slmas where slcode='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(Index + 1).Text = rs1(0)
        Else
            txtfields(Index + 1).Text = " "
        End If

Case 94

    Set rs1 = New Recordset
    rs1.Open " SELECT TYPECODE , DESCRIPTION FROM PO_FormType where typecode='" & txtfields(94).Text & "'", DB
    If Not rs1.EOF Then
        txtfields(95).Text = rs1("description")
    Else
        txtfields(95).Text = ""
    End If

Case 124

    Set rs1 = New Recordset
    rs1.Open "SELECT [DESCRIPTION] FROM IG_NOTIFY where  notify_code='" & txtfields(124).Text & "'", DB
    If Not rs1.EOF Then
        txtfields(123).Text = rs1(0)
    Else
        txtfields(123).Text = ""
    End If
Case 7
    
    On Error Resume Next
    Dim BlnRecord As Boolean
       
       Set rs1 = New Recordset
       rs1.Open "select isnull(add1,' '),isnull(add2,' '),isnull(add3,' ') ,isnull(city,' ') from fa_slmas where slcode='" & txtfields(6).Text & "'", DB
            
       If Opt = "add" Then
       BlnRecord = False
       End If

 
    If BlnRecord = False Then

            txtfields(61).Text = txtfields(7).Text
            If Not rs1.EOF Then
            txtfields(62).Text = rs1(0)
            txtfields(63).Text = rs1(1)
            txtfields(64).Text = rs1(2)
            End If
            Set DT = New Recordset
            DT.Open "SELECT AREA_CODE,NAME FROM ig_AREA WHERE NAME='" & txtfields(64).Text & "'", DB, adOpenStatic
            If DT.RecordCount > 0 Then
                txtfields(13).Text = DT(0)
                txtfields(14).Text = DT(1)
                txtfields(13).Enabled = False
                txtfields(14).Enabled = False
            Else
                txtfields(13).Locked = False
                txtfields(14).Locked = False
                txtfields(13).Enabled = True
                txtfields(14).Enabled = True
            End If
    End If
     
Case 32
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtfields(66).Text = rs1(0)
        
Case 53
        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
        If Not rs1.EOF Then txtfields(67).Text = rs1(0)
Case 57

        Set rs1 = New Recordset
        rs1.Open "select DESCRIPTION from ig_DUTYTYPE where DUTY_code='" & txtfields(Index).Text & "' and divcode = '" & Divcode & "'", DB
            If Not rs1.EOF Then txtfields(68).Text = rs1(0)
        
Case 48
        Set rs1 = New Recordset
        rs1.Open "select bank_code,name from ig_bank where bank_code='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then txtfields(12).Text = rs1(1)
Case 29
        Set rs1 = New Recordset
        rs1.Open "select name from ig_CARRIER where CARRIER_CODE='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(30).Text = rs1(0)
        Else
            txtfields(30).Text = ""
        End If
Case 72
        Set rs1 = New Recordset
        rs1.Open "select tax_code,Description,st_per from ig_tax where tax_CODE='" & txtfields(72).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(88).Text = rs1(1)
            If Opt = "add" Then
            If ADOSECONDARYRS.RecordCount <> 0 Then
                ADOSECONDARYRS.MoveFirst
                Do While Not ADOSECONDARYRS.EOF
                grddatagrid.Columns(GATax_code) = rs1("tax_code")
                grddatagrid.Columns(GATax_Per) = rs1("st_per")
                ADOSECONDARYRS.MoveNext
                Loop
            End If
            End If
            Call INVCALC
        Else
            txtfields(88).Text = " "
        End If
Case 92
        Set rs1 = New Recordset
        rs1.Open "select tax_code,Description,st_per from ig_tax where tax_CODE='" & txtfields(92).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(91).Text = rs1(1)
            If Opt = "add" Then
            If ADOSECONDARYRS.RecordCount <> 0 Then
                ADOSECONDARYRS.MoveFirst
                Do While Not ADOSECONDARYRS.EOF
                grddatagrid.Columns(GTax_code) = rs1("tax_code")
                grddatagrid.Columns(GTax_Per) = rs1("st_per")
                
                                    
'                  'GST TAX CALCULATION'
'Call GST_CALCULATION

''-----------------------------Code added on 12-06-2017----------------------------------------------------------------
'
'            Dim RWCGSTVal_Roff, RWSGSTVal_Roff, RWIGSTVal_Roff As Integer
'
'Set rspara = New Recordset
'    rspara.Open "SELECT ISNULL(WCGSTVal_Roff,0)WCGSTVal_Roff,ISNULL(WSGSTVal_Roff,0)WSGSTVal_Roff,ISNULL(WIGSTVal_Roff,0)WIGSTVal_Roff FROM IG_rPARAM WHERE  DIVCODE='" & divcode & "'", db, adOpenStatic
'
'  If rspara.EOF = False Then
'    RWCGSTVal_Roff = rspara("WCGSTVal_Roff")
'    RWSGSTVal_Roff = rspara("WSGSTVal_Roff")
'    RWIGSTVal_Roff = rspara("WIGSTVal_Roff")
'
'  End If
'
'
'
'            Set rsgstdeladdcheck = New Recordset 'For delivery address state code
'            rsgstdeladdcheck.Open "SELECT s.gststatecode as deladdrgststcode FROM IG_AREA a join ig_state s on a.STATE_CODE =s.STATE_CODE WHERE AREA_CODE='" & txtfields(13).Text & "'", db, adOpenStatic
'                If rsgstdeladdcheck.RecordCount > 0 Then
'                    Set rsourstatecode = New Recordset 'For our state code
'                    rsourstatecode.Open "select gststatecode as outgststatecode from pp_divmas where divcode='" & divcode & "' ", db, adOpenStatic
'                    If rsourstatecode.RecordCount > 0 Then
'                        If rsourstatecode("outgststatecode") = rsgstdeladdcheck("deladdrgststcode") Then    'if ourstate code is equal to delivery address state code is match CSGT and SGST available'
'                            'CGST,SGST'
'                            CGST_SGSTTAXPER = grddatagrid.Columns(GTax_Per) / 2
'                            grddatagrid.Columns(CGSTPER) = CGST_SGSTTAXPER
'                            grddatagrid.Columns(CGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100
'
'                            grddatagrid.Columns(SGSTPER) = CGST_SGSTTAXPER
'                            grddatagrid.Columns(SGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100
''                           txtfields(136).Text = round(Val(txtfields(136).Text) + Val(grdDataGrid.Columns(CGSTAMT)), 2)
''                           txtfields(135).Text = round(Val(txtfields(135).Text) + Val(grdDataGrid.Columns(SGSTAMT)), 2)
'
'                            txtfields(136).Text = Format(Round(Val(txtfields(136).Text) + Val(grddatagrid.Columns(CGSTAMT)), RWCGSTVal_Roff), "#0.00")
'                            txtfields(135).Text = Format(Round(Val(txtfields(135).Text) + Val(grddatagrid.Columns(SGSTAMT)), RWSGSTVal_Roff), "#0.00")
'                            cgst = cgst + Val(grddatagrid.Columns(CGSTAMT))
'                            sgst = sgst + Val(grddatagrid.Columns(SGSTAMT))
'
'                        Else
'                            'IGST'
'                            IGST_TAXPER = grddatagrid.Columns(GTax_Per)
'                            grddatagrid.Columns(IGSTPER) = IGST_TAXPER
'                            grddatagrid.Columns(IGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * IGST_TAXPER) / 100
'                            txtfields(134).Text = Format(Round(Val(txtfields(134).Text) + Val(grddatagrid.Columns(IGSTAMT)), RWIGSTVal_Roff), "#0.00")
'
'                            igst = igst + Val(grddatagrid.Columns(IGSTAMT))
'                        End If
'                    End If
'                End If
'
'                'Fot HSNCODE'
'
'                Dim rshsncode As New Recordset
'                Set rshsncode = New Recordset
'                rshsncode.Open "select hsn from ig_rproduct where PRODUCT_CODE = '" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode ='" & divcode & "'", db, adOpenStatic
'                If rshsncode.RecordCount > 0 Then
'                    grddatagrid.Columns(HSNCODE) = rshsncode("hsn")
'                End If
'
'
''-----------------------------------------------------------------------------------------------------------------
                ADOSECONDARYRS.MoveNext
                Loop
                txtfields(71).Text = Format(Abs(INFG(tcsval, val(rspara("tcs_roff")))), "#0.00")
                
                
            End If
            End If
            Call INVCALC
        Else
            txtfields(91).Text = " "
        End If
        
        If txtfields(47).Text > 50000 Then
            txtfields(97).Enabled = True
            DTPicker1(4).Enabled = True
            MaskEdBox1(4).Enabled = True
        End If

Case 13
             Set rs1 = New Recordset
             rs1.Open "select count(*) from ig_AREA WHERE area_code='" & txtfields(13).Text & "'", DB, adOpenStatic
             If rs1(0) > 0 Then
                Set RS2 = New Recordset
                RS2.Open "select name from ig_area where area_code= '" & txtfields(13).Text & "'", DB, adOpenStatic
                txtfields(14).Text = RS2("name")
            Else
                txtfields(14).Text = ""
            End If
Case 99
        If val(txtfields(99).Text) > 0 Then
            Call INVCALC
        End If
End Select
   
End If
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Change of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
'Private Sub GST_CALCULATION()
'
'      'GST TAX CALCULATION'
''-----------------------------Code added on 12-06-2017----------------------------------------------------------------
'
'            Dim RWCGSTVal_Roff, RWSGSTVal_Roff, RWIGSTVal_Roff As Integer
'
'Set rspara = New Recordset
'    rspara.Open "SELECT ISNULL(WCGSTVal_Roff,0)WCGSTVal_Roff,ISNULL(WSGSTVal_Roff,0)WSGSTVal_Roff,ISNULL(WIGSTVal_Roff,0)WIGSTVal_Roff FROM IG_rPARAM WHERE  DIVCODE='" & divcode & "'", DB, adOpenStatic
'
'  If rspara.EOF = False Then
'    RWCGSTVal_Roff = rspara("WCGSTVal_Roff")
'    RWSGSTVal_Roff = rspara("WSGSTVal_Roff")
'    RWIGSTVal_Roff = rspara("WIGSTVal_Roff")
'
'  End If
'      TXTFIELDS(134).Text = ""
'      TXTFIELDS(135).Text = ""
'      TXTFIELDS(136).Text = ""
'
'        If TXTFIELDS(92).Text <> "" Then
'            Set rsgstdeladdcheck = New Recordset 'For delivery address state code
'            rsgstdeladdcheck.Open "SELECT s.gststatecode as deladdrgststcode FROM IG_AREA a join ig_state s on a.STATE_CODE =s.STATE_CODE WHERE AREA_CODE='" & TXTFIELDS(13).Text & "'", DB, adOpenStatic
'                If rsgstdeladdcheck.RecordCount > 0 Then
'                    Set rsourstatecode = New Recordset 'For our state code
'                    rsourstatecode.Open "select gststatecode as outgststatecode from pp_divmas where divcode='" & divcode & "' ", DB, adOpenStatic
'                    If rsourstatecode.RecordCount > 0 Then
'                        If rsourstatecode("outgststatecode") = rsgstdeladdcheck("deladdrgststcode") Then    'if ourstate code is equal to delivery address state code is match CSGT and SGST available'
'                            'CGST,SGST'
'                            CGST_SGSTTAXPER = grdDataGrid.Columns(GTax_Per) / 2
'                            grdDataGrid.Columns(CGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
'                            grdDataGrid.Columns(CGSTAMT) = Round((Val(grdDataGrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100, RWCGSTVal_Roff)
'
'                            grdDataGrid.Columns(SGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
'                            grdDataGrid.Columns(SGSTAMT) = Round((Val(grdDataGrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100, RWSGSTVal_Roff)
'
'                            grdDataGrid.Columns(IGSTAMT) = Format(0, "#0.00")
'                            grdDataGrid.Columns(IGSTPER) = Format(0, "#0.00")
'
'                            TXTFIELDS(136).Text = Format(Round(Val(TXTFIELDS(136).Text) + Val(grdDataGrid.Columns(CGSTAMT)), RWCGSTVal_Roff), "#0.00")
'                            TXTFIELDS(135).Text = Format(Round(Val(TXTFIELDS(135).Text) + Val(grdDataGrid.Columns(SGSTAMT)), RWSGSTVal_Roff), "#0.00")
'                            TXTFIELDS(134).Text = Format(0, "#0.00")
'
'
'                            cgst = cgst + Val(grdDataGrid.Columns(CGSTAMT))
'                            sgst = sgst + Val(grdDataGrid.Columns(SGSTAMT))
'
'                        Else
'                            'IGST'
'                            IGST_TAXPER = Val(grdDataGrid.Columns(GTax_Per))
'                            grdDataGrid.Columns(IGSTPER) = Format(IGST_TAXPER, "#0.00")
'                            grdDataGrid.Columns(IGSTAMT) = Round((Val(grdDataGrid.Columns(Gvalue)) * IGST_TAXPER) / 100, RWIGSTVal_Roff)
'                            TXTFIELDS(134).Text = Format(Round(Val(TXTFIELDS(134).Text) + Val(grdDataGrid.Columns(IGSTAMT)), RWIGSTVal_Roff), "#0.00")
'                            TXTFIELDS(135).Text = Format(0, "#0.00")
'                            TXTFIELDS(136).Text = Format(0, "#0.00")
'
'                            grdDataGrid.Columns(CGSTAMT) = Format(0, "#0.00")
'                            grdDataGrid.Columns(CGSTPER) = Format(0, "#0.00")
'
'                            grdDataGrid.Columns(SGSTAMT) = Format(0, "#0.00")
'                            grdDataGrid.Columns(SGSTPER) = Format(0, "#0.00")
'
'                            igst = igst + Val(grdDataGrid.Columns(IGSTAMT))
'                        End If
'                    End If
'                End If
'
''            Else
''                MsgBox "Please Enter the Tax coode in Tax/Duty Tab to calculate the GST...!"
''                TXTFIELDS(92).SetFocus
''                Exit Sub
'            End If
'                'Fot HSNCODE'
'
'                Dim rshsncode As New Recordset
'                Set rshsncode = New Recordset
'                rshsncode.Open "select isnull(hsn,'')hsn from ig_rproduct where PRODUCT_CODE = '" & grdDataGrid.Columns(GPRODUCT_CODE) & "' and divcode ='" & divcode & "'", DB, adOpenStatic
'                If rshsncode.RecordCount > 0 Then
'                    If rshsncode("hsn") <> "" Then
'                        grdDataGrid.Columns(HSNCODE) = rshsncode("hsn")
'                    Else
'                        If validhsn = "Y" Then
'                            MsgBox "The HSN Code is not available for this product: " & grdDataGrid.Columns(GPRODUCT_CODE)
'                            Exit Sub
'                        End If
'                    End If
'                Else
'                    MsgBox "HSN Code is not available for this product: " & grdDataGrid.Columns(GPRODUCT_CODE)
'                    Exit Sub
'                End If
'
'
''-----------------------------------------------------------------------------------------------------------------
'
'End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 12
            stbar.Panels(2) = "Enter Bank code Maximum 3 Characters"
        Case 36
            stbar.Panels(2) = "Enter Preparation Time"
        Case 37
            stbar.Panels(2) = "Enter Removal Time"
        Case 65
            stbar.Panels(2) = "Enter Credit Days maximum 3 integers"
        Case 13
            stbar.Panels(2) = "Enter Despatch To Code maximum 3 Characters"
        Case 29
            stbar.Panels(2) = "Enter Carrier Code maximum 3 Characters"
        Case 34
            stbar.Panels(2) = "Enter Vehicle No maximum 15 Characters"
        Case 35
            stbar.Panels(2) = "Enter LR Number maximum 20 Characters"
        Case 38
            stbar.Panels(2) = "Enter ARE Number maximum 15 Characters"
        Case 61
            stbar.Panels(2) = "Enter Consignee Address maximum 30 Characters"
        Case 20
            stbar.Panels(2) = "Enter Remarks maximum 50 Characters"
        Case 15, 75, 77, 73, 84, 82
            stbar.Panels(2) = "Enter Percentage maximum 3 integers and 2 Decimals"
        Case Else
        
    End Select
End If

If Opt = "add" Then
Select Case Index
Case 0
    stbar.Panels(2).Text = "Select Invice Type from the List"
Case 3
    If txtfields(2).Text = " " Or Len(txtfields(2).Text) = 0 Then
        txtfields(2).SetFocus
        Exit Sub
    End If
Case 5
    If txtfields(4).Text = " " Or Len(txtfields(4).Text) = 0 Then
        txtfields(4).SetFocus
        Exit Sub
    End If

Case 32
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'", "Duty Type Not Found") = False Then Exit Sub
    xx = 66
    Buttonframe.Enabled = False
    ksldesc1.conn = connectstring
    listlb.Caption = "PLA-Duty Type Listing"
    ksldesc1.table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='P'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 53
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 67
    ksldesc1.conn = connectstring
    listlb.Caption = "RG23A-Duty Type Listing"
    ksldesc1.table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='A'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 57
    If Record_Exists("ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'", "Duty Type Not Found") = False Then Exit Sub
    Buttonframe.Enabled = False
    xx = 68
    ksldesc1.conn = connectstring
    listlb.Caption = "RG23C-Duty Type Listing"
    ksldesc1.table = "ig_rDUTYTYPE P where divcode='" & Divcode & "' AND DUTY_CAT='C'"
    ksldesc1.listfield1 = "P.DUTY_CODE"
    ksldesc1.listfield2 = "P.DESCRIPTION"
    Frame6.ZOrder
    Frame6.Visible = True
    ksldesc1.SetFocus
Case 29
End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)

On Error GoTo txtfields_KeyDown_Error
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
    ''    Call BUTTON_Click(13)
    End If
    

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyDown of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

Call ToUpCase(txtfields, KeyAscii)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0, 2, 4
    Call ToAlphanum(txtfields(Index), 2, KeyAscii)
Case 1, 3, 5
    Call tonum(txtfields(Index), 8, KeyAscii)
Case 12
    Call ToAlphanum(txtfields(Index), 50, KeyAscii)
Case 50
    Call tonum(txtfields(Index), 10, KeyAscii, 1)
Case 13
    Call ToAlphanum(txtfields(Index), 6, KeyAscii)
Case 51, 52, 55, 56, 59, 60, 31
    Call tonum(txtfields(Index), 8, KeyAscii)
Case 29
    Call ToAlphanum(txtfields(Index), 3, KeyAscii)
    Call ToUpCase(txtfields(Index), KeyAscii)
Case 34
    Call ToAlphanum(txtfields(Index), 15, KeyAscii)
Case 35, 38
    Call ToAlphanum(txtfields(Index), 20, KeyAscii)
Case 61, 62, 63, 64
    Call ToAlphanum(txtfields(Index), 30, KeyAscii)
    Call ToUpCase(txtfields(Index), KeyAscii)
Case 73
    Call tonum(txtfields(Index), 3, KeyAscii, 1)
Case 84, 82, 39, 15, 65, 75, 77, 50
    Call tonum(txtfields(Index), 3, KeyAscii)
Case 78, 79, 80
     Call tonum(txtfields(Index), 10, KeyAscii)
Case 69
   ' Call ToNumber(txtfields(Index), 2, KeyAscii)
Case 74
    Call tonum(txtfields(Index), 5, KeyAscii)
Case 36, 37
                If Len(txtfields(Index).Text) = 2 And KeyAscii <> 8 Then
                iKeyAscii = KeyAscii
                KeyAscii = 0
                KeyAscii = 58
                SendKeys Chr(iKeyAscii)
            ElseIf Len(txtfields(Index).Text) = 5 And KeyAscii <> 8 Then
                iKeyAscii = KeyAscii
                KeyAscii = 0
                KeyAscii = 32
                SendKeys Chr(iKeyAscii)
            ElseIf Len(txtfields(Index).Text) > 5 And KeyAscii <> 8 Then
                Call ToUpCase(txtfields(Index), KeyAscii, 8)
                If KeyAscii = 65 Then
                    txtfields(Index).Text = Mid(txtfields(Index).Text, 1, 6) & "AM"
                ElseIf KeyAscii = 80 Then
                    txtfields(Index).Text = Mid(txtfields(Index).Text, 1, 6) & "PM"
                ElseIf (Right(txtfields(Index).Text, 2) <> "AM" And Right(txtfields(Index).Text, 2) <> "PM") Then
                    KeyAscii = 0
                End If
            ElseIf Len(txtfields(Index).Text) < 6 And KeyAscii <> 8 Then
                Call ToNumNew(txtfields(Index), 8, KeyAscii)
            End If

    
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

Select Case Index
Case 15, 65, 75, 77, 50, 84, 82, 73
    'Call ToNumPer(txtfields(Index), 3)
End Select

Select Case Index
Case 65
    SSTab1.Tab = 1
    'Commented for GST - on 13-06-2017'
    'txtfields(92).SetFocus
Case 50
  'txtfields(94).SetFocus
Case 28
    SSTab1.Tab = 2
    txtfields(29).SetFocus
Case 92
    If txtfields(92).Text = "" Then
        MsgBox "Please Enter the Tax...!", vbInformation
        txtfields(92).SetFocus
    End If
Case 69
    On Error Resume Next
    ADOSECONDARYRS.MoveFirst
    If txtfields(69).Text <> "" And grddatagrid.Columns(Gpacks).value <> "" Then
        txt = txtfields(69).Text * grddatagrid.Columns(Gpacks).value
        txtfields(31).Text = val(txt)
        txtfields(31).SetFocus
    End If
Case 73, 84, 82
    
Call INVCALC
Case 39
    
        BlnRoundoff = True
        Call INVCALC
Case 37
    grddatagrid.Col = 10
    grddatagrid.SetFocus
End Select

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LostFocus of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub txtfields_MouseMove(Index As Integer, BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
    If Index = 13 Then
        Set rsagentgstno = New Recordset
        rsagentgstno.Open "select isnull(gstinno,0)gstinno from fa_slmas where slcode='" & txtfields(4).Text & "'", DB, adOpenStatic, adLockOptimistic
        If rsagentgstno.RecordCount > 0 Then
        txtfields(4).ToolTipText = "Agent GST No is : " & rsagentgstno("gstinno")
        txtfields(5).ToolTipText = "Agent GST No is : " & rsagentgstno("gstinno")
        End If
    End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
  Case 1
        If Trim(txtfields(0).Text) <> "" Then
            Set Rs = New Recordset
            Rs.Open "Select * from IG_RINVHD where divcode='" & Divcode & "' and inv_type='" & Trim(txtfields(0).Text) & "' and inv_no='" & txtfields(1).Text & "'", DB, adOpenStatic
            If Not Rs.EOF Then
                MsgBox "This Invoice Number Already Defined", vbInformation, head
                txtfields(1).SetFocus
                Cancel = True
                Exit Sub
            End If
            
        End If
    
  Case 94
    
     If txtfields(94).Text <> "" Then
             Set rs1 = New Recordset
                 rs1.Open " SELECT TYPECODE as [Form Type], DESCRIPTION FROM PO_FormType WHERE typecode='" & txtfields(94).Text & "'", DB, adOpenStatic
            
            If Not rs1.EOF Then
               txtfields(95).Text = rs1("DESCRIPTION")
                txtfields(28).SetFocus
            Else
                  LookUp.Clear = True
                  LookUp.query = " SELECT TYPECODE as [Form Type], DESCRIPTION FROM PO_FormType "
                  LookUp.DefCol = "DESCRIPTION"
                  LookUp.ALIGN = "1500,3500"
                  LookUp.Caption = "Form Type Listing"
                  LookUp.Show vbModal
                  
                  If LookUp.Cancel = False Then
                        txtfields(94).Text = LookUp.Fields(0)
                        txtfields(95).Text = LookUp.Fields(1)
                        LookUp.Clear = True
                        txtfields(28).SetFocus
                  Else
                        txtfields(94).Text = ""
                        txtfields(95).Text = ""
                        Cancel = True
                        Exit Sub
                  End If
             End If
        End If
        
    Case 124
        
        If (Opt = "add" Or Opt = "mod") And txtfields(0).Text <> "" Then
             Set rs1 = New Recordset
             rs1.Open "SELECT notify_code,[DESCRIPTION],isDuty FROM IG_NOTIFY  WHERE notify_code='" & txtfields(Index).Text & "'", DB, adOpenStatic
             If Not rs1.EOF Then
                txtfields(14).Text = rs1("DESCRIPTION")
            Else
                  LookUp.Clear = True
                  LookUp.query = "SELECT distinct notify_code,[DESCRIPTION],isDuty FROM IG_NOTIFY"
                  LookUp.DefCol = "DESCRIPTION"
                  LookUp.ALIGN = "1500,3500,0"
                  LookUp.Caption = "Notificatoon Detail Listing"
                  LookUp.Show vbModal
                  
                  If LookUp.Cancel = False Then
                        txtfields(124).Text = LookUp.Fields(0)
                        txtfields(123).Text = LookUp.Fields(1)
                        
                            If LookUp.Fields(2) = "1" And loadAre1Duty Then
                                txtfields(127).SetFocus
                                LookUp.Clear = True
                                LookUp.query = "SELECT Code,[DESC] as [DESCRIPTION] FROM IG_ARE1Duty  where isnull(IsActive,'Y')='Y'"
                                LookUp.DefCol = "DESCRIPTION"
                                LookUp.ALIGN = "1500,3500"
                                LookUp.Caption = "ARE1 Duty Detail Listing"
                                LookUp.Show vbModal
                                If LookUp.Cancel = False Then
                                    txtfields(127).Text = LookUp.Fields(0)
                                    txtfields(128).Text = LookUp.Fields(1)
                                Else
                                    txtfields(127).Text = ""
                                    txtfields(128).Text = ""
                                    txtfields(127).SetFocus
                                    Cancel = True
                                    
                                End If
                                
                            End If
                        
                        LookUp.Clear = True
                        MaskEdBox1(2).SetFocus
                  Else
                        txtfields(124).Text = ""
                        txtfields(123).Text = ""
                        Cancel = True
                        If txtfields(14).Enabled = True Then txtfields(14).SetFocus
                        Exit Sub
                  End If
             End If
        End If
    Case 2
        Call CEXLookup
    Case 4
        Call OrderLookup
    Case 13
        Set rs1 = New Recordset
        rs1.Open "select A.name,B.STATE_FLAG from ig_area A,ig_STATE B where A.STATE_CODE =B.STATE_CODE AND area_code='" & txtfields(Index).Text & "'", DB
        If Not rs1.EOF Then
            txtfields(Index + 1).Text = rs1(0)
        Else
        End If
        If Opt = "add" Then
             Set rs1 = New Recordset
             rs1.Open "select count(*) from ig_AREA WHERE area_code='" & txtfields(13).Text & "'", DB, adOpenStatic
             If rs1(0) > 0 Then
                Set RS2 = New Recordset
                RS2.Open "select name from ig_area where area_code= '" & txtfields(13).Text & "'", DB, adOpenStatic
                txtfields(14).Text = RS2("name")
            Else
                    
                LookUp.Clear = True
                'LookUp.query = "select area_code as Code,name as Description from ig_area"
                LookUp.query = "select AREA_CODE""AreaCode"",A.Name from IG_STATE S JOIN IG_AREA A ON S.STATE_CODE = A.STATE_CODE WHERE gststatecode =" & txtfields(138).Text & " ORDER BY A.NAME "
                LookUp.DefCol = "Description"
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "2000,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(13).Text = LookUp.Fields(0)
                    txtfields(14).Text = LookUp.Fields(1)
                    'Call GST_CALCULATION
                    LookUp.Clear = True
                Else
                    LookUp.Clear = True
                    txtfields(13).Text = ""
                    txtfields(14).Text = ""
                End If
                Exit Sub
             End If
        End If

    Case 74
        If Opt = "add" Or Opt = "mod" Then
            Call PACKING_SPLITUP
            Call INVCALC
        End If
    Case 50, 31
        On Error Resume Next
        If Index = 31 And rf <> "X" Then
            grddatagrid.Row = 0
            grddatagrid.Columns(GGROSS_KGS).Text = 0
             NETTOEX
        End If
               Call INVCALC
    Case 29
        If Record_Exists("ig_carrier", "Carrier Not Found") = False Or Trim(txtfields(29).Text) = "" Then Exit Sub
        Set Rs = New Recordset
        Rs.Open "select count(*) from ig_carrier where carrier_code='" & txtfields(29) & "'", DB
        If Rs(0) > 0 Then
            txtfields(29).Text = txtfields(29).Text
        Else
            LookUp.Clear = True
            LookUp.query = "select carrier_code as Code,name as Description from ig_carrier"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Carrier Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(29).Text = LookUp.Fields(0)
                txtfields(30).Text = LookUp.Fields(1)
                LookUp.Clear = True
            Else
                txtfields(29).Text = ""
                txtfields(30).Text = ""
            End If
            Exit Sub
        End If
    Case 72
        If Record_Exists("ig_tax", "TAX Not Found") = False Or Trim(txtfields(72).Text) = "" Then Exit Sub
        Set Rs = New Recordset
        Rs.Open "select description from ig_tax where tax_code='" & txtfields(72) & "'", DB
        If Rs.RecordCount > 0 Then
            txtfields(88).Text = Rs("Description")
        Else
            LookUp.Clear = True
            LookUp.query = "select tax_code as Code,Description from ig_Tax"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Tax Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(72).Text = LookUp.Fields(0)
                txtfields(88).Text = LookUp.Fields(1)
                LookUp.Clear = True
            Else
                txtfields(72).Text = ""
                txtfields(88).Text = ""
            End If
              Exit Sub
        End If
    Case 92
        If Record_Exists("ig_tax", "TAX Not Found") = False Or Trim(txtfields(92).Text) = "" Then Exit Sub
        Set Rs = New Recordset
        Rs.Open "select description from ig_tax where tax_code='" & txtfields(92) & "'", DB
        If Rs.RecordCount > 0 Then
            txtfields(91).Text = Rs("Description")
        Else
            LookUp.Clear = True
            LookUp.query = "select tax_code as Code,Description from ig_Tax where isnull(taxstatus,'N')='Y'"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Tax Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(92).Text = LookUp.Fields(0)
                txtfields(91).Text = LookUp.Fields(1)
                LookUp.Clear = True
            Else
                txtfields(92).Text = ""
                txtfields(91).Text = ""
            End If
            Exit Sub
        End If
    Case 73
        txtfields(73).Text = Format(txtfields(73).Text, "#.000")
    Case 12
        If Trim(txtfields(12).Text) <> "" Then
            Set rs1 = New Recordset
            rs1.Open "select BANK_CODE,name from ig_BANK where NAME LIKE'" & txtfields(12).Text & "%'", DB
            If Not rs1.EOF Then
                txtfields(48).Text = rs1(0)
                txtfields(12).Text = rs1(1)
          
            Else
                LookUp.Clear = True
                LookUp.query = "select bank_code as Code,name as Description from ig_bank"
                LookUp.DefCol = "Description"
                LookUp.Caption = "Bank Listing"
                LookUp.ALIGN = "2000,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(48).Text = LookUp.Fields(0)
                    txtfields(12).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                Else
                    LookUp.Clear = True
                    txtfields(48).Text = ""
                    txtfields(12).Text = ""
                End If
                Exit Sub
                
            End If
        End If
        SSTab1.Tab = 1
        txtfields(92).Enabled = True
        txtfields(92).SetFocus
'        Case 8
'            Set rs = New Recordset
'            rs.Open "select Ptype_salesagent from masterlen", DB
'            If IsNull(rs(0)) = False Then
'                agenttype = rs(0)
'            End If
'            l = 1
'            p = 1
'            Do While InStr(Mid(agenttype, l, 20), Chr(44)) <> 0
'                l = l + InStr(Mid(agenttype, l, 20), Chr(44))
'                p = p + 1
'            Loop
'
'            If InStr(agenttype, Chr(44)) Then
'                st1() = Split(agenttype, Chr(44))
'            Else
'                st = agenttype
'            End If
'
'            i = 1
'            Do While i <> p
'                Str = " or slcode like '" & st1(i) & "%'"
'                i = i + 1
'            Loop
'
'                    Set rec = New Recordset
'                    rec.Open "select slcode,slname from FA_SLMAS WHERE SLCODE LIKE 'C%' and slcode = '" & Trim(txtfields(4).Text) & "'", DB, adOpenStatic
'                    If rec.RecordCount > 0 Then
'                        txtfields(8).Text = rec("slcode")
'                        txtfields(9).Text = rec("slname")
'                        txtfields(10).SetFocus
'                        Exit Sub
'                    Else
'                        FLG = "b"
'                        stbar.Panels(2).Text = "Select Agent Code  from the List"
'                            LookUp.clear = True
'                            If p = 1 Then
'                                LookUp.query = "select slcode""Code"",slname""Description"" from fa_slmas where slcode like '" & st & "%'"
'                            Else
'                                LookUp.query = "select slcode""Code"",slname""Description"" from fa_slmas where slcode like 'C%'"
'                            End If
'                            LookUp.DefCol = "Description"
'                            LookUp.ALIGN = "1500,5000"
'                            LookUp.Caption = "Agent Listing"
'                            LookUp.Show vbModal
'                            If LookUp.Cancel = False Then
'                                txtfields(8).Text = LookUp.Fields(0)
'                                txtfields(9).Text = LookUp.Fields(1)
'                                LookUp.clear = True
'                                txtfields(10).SetFocus
'                             Else
'                                txtfields(9).Text = ""
'                                txtfields(10).SetFocus
'                                Exit Sub
'                             End If
'                    End If
'
'            Case 10
'            Set rs = New Recordset
'            rs.Open "select Ptype_salesbroker from masterlen", DB
'            If IsNull(rs(0)) = False Then
'                brokertype = rs(0)
'            End If
'            l = 1
'            p = 1
'            Do While InStr(Mid(brokertype, l, 20), Chr(44)) <> 0
'                l = l + InStr(Mid(brokertype, l, 20), Chr(44))
'                p = p + 1
'            Loop
'
'            If InStr(brokertype, Chr(44)) Then
'                st1() = Split(brokertype, Chr(44))
'            Else
'                st = brokertype
'            End If
'
'            i = 0
'            Do While i <> p
'                Str = Str & " or slcode like '" & st1(i) & "%'"
'                i = i + 1
'            Loop
'                txtfields(9).Locked = False
'                If Len(Trim(txtfields(7).Text)) <> 0 Then
'                    Set rec = New Recordset
'                    rec.Open "select slcode,slname from FA_SLMAS WHERE slcode = '" & Trim(txtfields(7).Text) & "'", DB, adOpenStatic
'                    If rec.RecordCount > 0 Then
'                        txtfields(10).Text = rec("slcode")
'                        txtfields(11).Text = rec("slname")
'                        txtfields(12).SetFocus
'                        Exit Sub
'                    Else
'                        FLG = "c"
'                        stbar.Panels(2).Text = "Select Broker Code  from the List"
'                            LookUp.clear = True
'                            If p = 1 Then
'                                LookUp.query = "select slcode""Code"",slname""Description"" from fa_slmas where 1=2 or slcode like '" & st & "'"
'                            Else
'                                LookUp.query = "select slcode""Code"",slname""Description"" from fa_slmas where 1=2 " & Str
'                            End If
'                            LookUp.DefCol = "Description"
'                            LookUp.ALIGN = "1500,5000"
'                            LookUp.Caption = "Broker Listing"
'                            LookUp.Show vbModal
'                            If LookUp.Cancel = False Then
'                                If FLG = "c" Then
'                                    txtfields(10).Text = LookUp.Fields(0)
'                                    txtfields(11).Text = LookUp.Fields(1)
'                                      LookUp.clear = True
'                                      txtfields(12).SetFocus
'                                End If
'                            Else
'                                txtfields(7).Text = ""
'                                txtfields(9).Locked = True
'                                txtfields(10).SetFocus
'                          End If
'                    End If
'                Else
'                    txtfields(9).Locked = True
'                    txtfields(10).SetFocus
'                    Exit Sub
'                End If
'            End If
End Select
End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub INVCALC()
'INVOICE CALCULATION
On Error GoTo InvCalc_Error:
Dim Packing_Charges As Double
Dim TCS_Amt As Double

Dim Rsch As New Recordset


If Opt = "add" Or Opt = "mod" Then


 BlnInvRoundoff = False
   BlnPackTax = False
   BlnTCSTax = False
   BlnTcsCalc = False
   BInPACKCESS = False
   BInCESSTCS = False
   BInCESSTAX = False
   BInPACKTCS = False
   BInPackBEd = False
   BInTaxBED = False
   
   
 BlnCharity = False
 BlnFrt = False
 BlnHandling = False
 BlnInsurance = False

 Packing_Charges1 = 0
 Taxamt = 0
Set rsrec = New Recordset
    If rsrec.State = 1 Then rsrec.Close
        rsrec.Open " select isnull(TINSURANCEFLG,0) TINSURANCEFLG,isnull(TCharityFlg,0) TCharityFlg, isnull(TCharityFlg,0) TCharityFlg,isnull(FRTFLG,0) FRTFLG,isnull(HANDFLG,0) HANDFLG ,isnull(invtot_roff,'0') invroundoff ,isnull(pack_Tax,'N') Pack_Tax,isnull(tcs_Tax,'N') Tcs_Tax, isnull(TCS_CALC,'N') TCS_CALC,isnull(cess_tax,'N') cess_tax,isnull(cess_tcs,'N') cess_tcs,isnull(pack_tcs,'N') pack_tcs,isnull(Pack_Cess,'N') Pack_Cess,isnull(Assvall_Roff,0) Assvall_Roff,isnull(BED_TAx,'N') as Bed_tax,isnull(pack_bed,'N') as pack_bed,isnull(InvoicenowithPrefix,0) InvoicenowithPrefix from IG_RPARAM where divcode='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
    
    If rsrec.EOF = False Then
    
        If rsrec!FRTFLG = 1 Then BlnFrt = True ' freight amount
        If rsrec!HANDFLG = 1 Then BlnHandling = True  ' handling charges
        If rsrec!TCharityFlg = 1 Then BlnCharity = True ' Charity amount
        If rsrec!TINSURANCEFLG = 1 Then BlnInsurance = True ' insurance amount
        InvoicenowithPrefix = rsrec("InvoicenowithPrefix")
        
        If rsrec("invroundoff") = 0 Then
            BlnInvRoundoff = True
        End If
         If rsrec("pack_Tax") = "Y" Then
            BlnPackTax = True
         End If
        If Trim(rsrec("tcs_Tax")) = "Y" Then
            BlnTCSTax = True
         End If
        
         If Trim(rsrec("TCS_CALC")) = "Y" Then
            BlnTcsCalc = True
         End If
         If rsrec("cess_tcs") = "Y" Then
            BInCESSTCS = True
         End If
         If rsrec("cess_tax") = "Y" Then
            BInCESSTAX = True
         End If
         If rsrec("pack_tcs") = "Y" Then
            BInPACKTCS = True
         End If
         If rsrec("pack_cess") = "Y" Then
            BInPACKCESS = True
         End If
         If rsrec("pack_bed") = "Y" Then
            BInPackBEd = True
         End If
         If rsrec("Bed_tax") = "Y" Then
            BInTaxBED = True
         End If
         
         BInAssRound = rsrec("Assvall_Roff")
    End If

    
Dim RWCGSTVal_Roff, RWSGSTVal_Roff, RWIGSTVal_Roff As Integer
      
Set rspara = New Recordset
    rspara.Open "SELECT ISNULL(WCGSTVal_Roff,0)WCGSTVal_Roff,ISNULL(WSGSTVal_Roff,0)WSGSTVal_Roff,ISNULL(WIGSTVal_Roff,0)WIGSTVal_Roff FROM IG_rPARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
          
If rspara.EOF = False Then
    RWCGSTVal_Roff = rspara("WCGSTVal_Roff")
    RWSGSTVal_Roff = rspara("WSGSTVal_Roff")
    RWIGSTVal_Roff = rspara("WIGSTVal_Roff")
End If
    

    
Dim RoffAssval, RoffBED, RoffAED, RoffTCS, RoffETCS, RoffHTCS, RoffCess, RoffTax As Integer
RWTCS_ROFF = 0
  
Set rspara = New Recordset
    rspara.Open "SELECT ISNULL(Assvall_Roff,0)Assvall_Roff,ISNULL(Cess_Roff,0)Cess_Roff,ISNULL(Bed_Roff,0)Bed_Roff,ISNULL(Aed_Roff,0)Aed_Roff,ISNULL(Edu_Roff,0)Edu_Roff,ISNULL(Tax_Roff,0)Tax_Roff,isnull(HSCESS_ROFF,0) HSCESS_ROFF,isnull(InvTot_Roff,0) InvTot_Roff,isnull(TCS_Roff,0) TCS_Roff,isnull(ECONTCS_Roff,0) ECONTCS_Roff,isnull(HSONTCS_Roff,0) HSONTCS_Roff,ISNULL(ATax_Roff,0)ATax_Roff ,isnull(RTCS_Roff,0) RWTCS_ROFF  FROM IG_rPARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
      
  If rspara.EOF = False Then
    RoffAssval = rspara("Assvall_Roff")
    RoffCess = rspara("CESS_ROFF")
    RoffBED = rspara("bed_roff")
    RoffAED = rspara("aed_roff")
    RoffTax = rspara("tax_roff")
    RoffTCS = rspara("tcs_roff")
    RoffETCS = rspara("ECONTCS_Roff")
    RoffHTCS = rspara("HSONTCS_Roff")
    RWTCS_ROFF = rspara("RWTCS_ROFF")
  End If
      
    Assval = 0:   tax = 0:      SurCharge = 0:  Aed = 0:    Bed = 0:    Charity = 0: TaxableValue = 0
    cess = 0:     TotAmt = 0:   Insur = 0:      Assval2 = 0:    NettRExR = 0: EDU_CESS = 0: hscessAMT = 0: EDUTCS_CESS = 0: hscessTCSAMT = 0: TCSAssValue = 0
    atax = 0:   dbldiscount = 0: LoadAmt = 0
    If Not ADOSECONDARYRS.BOF Then ADOSECONDARYRS.MoveFirst
    txtfields(134).Text = 0
    txtfields(135).Text = 0
    txtfields(136).Text = 0
    
   Do While Not ADOSECONDARYRS.EOF
        
                Dim rshsncode As New Recordset
                Set rshsncode = New Recordset
                rshsncode.Open "select isnull(hsn,'')hsn from ig_rproduct where PRODUCT_CODE = '" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode ='" & Divcode & "'", DB, adOpenStatic
                If rshsncode.RecordCount > 0 Then
                    If rshsncode("hsn") <> "" Then
                        grddatagrid.Columns(HSNCODE) = rshsncode("hsn")
                       '' grdDataGrid.Columns(52) = rshsncode("hsn")
                    Else
                       ' If validhsn = "Y" Then
                            MsgBox "The HSN Code is not available for this product: " & grddatagrid.Columns(GPRODUCT_CODE)
                            Exit Sub
                       ' End If
                    End If
                Else
                    MsgBox "HSN Code is not available for this product: " & grddatagrid.Columns(GPRODUCT_CODE)
                    Exit Sub
                End If
        
        
        If Rsch.State = 1 Then Rsch.Close
        Rsch.Open "select isnull(charity_rate,0) from IG_RPRODUCT a left join IG_PRODUCTtype b on a.product_type = b.product_type where a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "'", DB
        
'Ass value
    If BInAssRound = 0 Then
        If val(grddatagrid.Columns(GRate_Kg)) <> 0 Then
            grddatagrid.Columns(Gvalue) = Round((val(grddatagrid.Columns(GNett_Kgs)) * (val(grddatagrid.Columns(GRate_Ex)) / val(grddatagrid.Columns(GRate_Kg)))), RoffAssval)
        Else
            grddatagrid.Columns(Gvalue) = Round((val(grddatagrid.Columns(GNett_Kgs)) * val(grddatagrid.Columns(GRate_Ex))), RoffAssval)
        End If
    Else
        If val(grddatagrid.Columns(GRate_Kg)) <> 0 Then
            grddatagrid.Columns(Gvalue) = Format(Abs(INFG((val(grddatagrid.Columns(GNett_Kgs)) * (val(grddatagrid.Columns(GRate_Ex)) / val(grddatagrid.Columns(GRate_Kg)))), BInAssRound)), "#.#0")
        Else
            grddatagrid.Columns(Gvalue) = Format(Abs(INFG((val(grddatagrid.Columns(GNett_Kgs)) * val(grddatagrid.Columns(GRate_Ex))), BInAssRound)), "#.#0")
        End If
        
    End If
        
        
        Assval = Assval + grddatagrid.Columns(Gvalue) + val(txtfields(31).Text) + val(txtfields(74).Text) 'value + freight + handling charges
        Assval2 = Assval2 + grddatagrid.Columns(Gvalue) ' value
'        If Val(grddatagrid.columns(GRate_Kg)) <> 0 Then
'            NettRExR = Val(grddatagrid.Columns(1 + 9) / grddatagrid.columns(GRate_Kg))
'        Else
            NettRExR = val(grddatagrid.Columns(GRate_Ex))
'        End If
        
'Charity
        If CHFLG Then
            grddatagrid.Columns(GCharity) = KSLRound(val(grddatagrid.Columns(Gpacks)) * (val(Rsch(0))), 2)
            Charity = Charity + val(grddatagrid.Columns(GCharity))
            NettRExR = Round(NettRExR + val(Rsch(0) / 100), 2)
        Else
            grddatagrid.Columns(GCharity) = 0
            Charity = Charity + grddatagrid.Columns(GCharity)
            NettRExR = Round(NettRExR + val(Rsch(0) / 100), 2)
        End If

'Cess
        If CESSFLG Then
            Packing_Charges = 0
            If BInPACKCESS = True Then
               Packing_Charges = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            grddatagrid.Columns(GCess_Amt) = Format(Round((val(grddatagrid.Columns(Gvalue)) + Packing_Charges) * (val(txtfields(15).Text) / 100), RoffCess), "#0.00")
            cess = cess + val(grddatagrid.Columns(GCess_Amt))
            NettRExR = Round(NettRExR + (NettRExR * ((val(txtfields(15).Text) / 100))), 2)
        Else
            grddatagrid.Columns(GCess_Amt) = 0
            cess = cess + Round(val(grddatagrid.Columns(GCess_Amt)), RoffCess)
            NettRExR = Round(NettRExR + (NettRExR * (val((txtfields(15).Text) / 100))), 2)
        End If

'Duty
        If DUTYFLG Then
            Packing_Charges = 0
            If BInPackBEd = True Then
                Packing_Charges = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            
            grddatagrid.Columns(GBed_Amt) = Round(val(grddatagrid.Columns(Gvalue) + val(val(grddatagrid.Columns(GCharity)) + val(Packing_Charges))) * (val(grddatagrid.Columns(GBed_Per)) / 100), RoffBED)
            
            Bed = Bed + grddatagrid.Columns(GBed_Amt)
            bedR = NettRExR * val(grddatagrid.Columns(GBed_Per)) / 100
            NettRExR = Round(NettRExR + (NettRExR * val(grddatagrid.Columns(GBed_Per)) / 100), 2)
            
            txtfields(20).Text = Bed
            txtfields(43).Text = Bed
            
            grddatagrid.Columns(GAed_Amt) = Round((grddatagrid.Columns(GBed_Amt)) * (val(grddatagrid.Columns(GAed_Per)) / 100), RoffAED)
            Aed = Aed + val(grddatagrid.Columns(GAed_Amt))
            NettRExR = Round(NettRExR + val(bedR * val(grddatagrid.Columns(GAed_Per)) / 100), 2)
            txtfields(22).Text = Round(Aed, 0)
            txtfields(44).Text = Round(Aed, 0)
         Else
            grddatagrid.Columns(GBed_Amt) = 0
            grddatagrid.Columns(GAed_Amt) = 0
            Bed = Round(Bed + grddatagrid.Columns(GBed_Amt), RoffBED)
            bedR = NettRExR * val(grddatagrid.Columns(GBed_Per)) / 100
            NettRExR = NettRExR + (NettRExR * val(grddatagrid.Columns(GBed_Per)) / 100)
            Aed = Aed + Round(val(grddatagrid.Columns(GAed_Amt)), RoffAED)
            NettRExR = Round(NettRExR + val(bedR * val(grddatagrid.Columns(GAed_Per)) / 100), 2)
        End If

'TCS AMOUNT CALC before tax

If BlnTCSTax = True Then

      If tcsflg = True Then
      
            If BInPACKTCS = True Then
               Packing_Charges1 = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            cessamt = 0
            If BInCESSTCS = True Then
               cessamt = val(grddatagrid.Columns(GCess_Amt).Text)
            End If
         '  txtfields(73).Text = 1
           TCSAssValue = TCSAssValue + val(val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1))
           
           grddatagrid.Columns(gTcs_Amt).Text = Round(val(val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1)) * (val(txtfields(73).Text) / 100), RoffTCS)
           tcsval = val(tcsval) + (val(grddatagrid.Columns(gTcs_Amt).Text))
           txtfields(71).Text = Format(tcsval, "#0.00")
           

        'EC ON TCS Amount CALC

           grddatagrid.Columns(gECONTCS_Amt).Text = Round(val(val(grddatagrid.Columns(gTcs_Amt))) * (val(txtfields(84).Text) / 100), RoffETCS)
           ECTCSVAL = val(ECTCSVAL) + (val(grddatagrid.Columns(gECONTCS_Amt).Text))
           txtfields(83).Text = Format(ECTCSVAL, "#0.00")
           
        'HS ON TCS Amount CALC

           grddatagrid.Columns(gHSONTCS_Amt).Text = Round(val(val(grddatagrid.Columns(gTcs_Amt))) * (val(txtfields(82).Text) / 100), RoffHTCS)
           HSTCSVAL = val(HSTCSVAL) + (val(grddatagrid.Columns(gHSONTCS_Amt).Text))
           txtfields(81).Text = Format(HSTCSVAL, "#0.00")
        
        Else

                grddatagrid.Columns(gTcs_Amt).Text = 0
                grddatagrid.Columns(gECONTCS_Amt).Text = 0
                grddatagrid.Columns(gECONTCS_Amt).Text = 0

        End If

End If

    
  'Tax
        If TAXFLG Then
            
            Packing_Charges = 0
            btaxamount = 0
            educess = 0
            TCS_Amt = 0
            cessamt = 0
            
            If BlnPackTax = True Then
                Packing_Charges = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            
            If BlnTCSTax = True Then
                TCS_Amt = val(grddatagrid.Columns(gTcs_Amt).Text)
            End If
            
            If BInCESSTAX = True Then
                cessamt = val(grddatagrid.Columns(GCess_Amt).Text)
            End If
            
             If BInTaxBED = True Then
                btaxamount = val(grddatagrid.Columns(GBed_Amt).Text)
                educess = val(grddatagrid.Columns(Geducess_amt).Text)
            End If
            
            DblFrtAmt = 0: DblinsAmt = 0: taxCharity = 0
            
            If BlnFrt = True And val(txtfields(31).Text) > 0 Then
                '' changed by Annamalai S on 17-08-2023
                ''DblFrtAmt = Val(txtfields(31).Text) / ADOSECONDARYRS.RecordCount
                DblFrtAmt = Round((val(txtfields(31).Text) * val(grddatagrid.Columns(Gvalue).Text)) / (val(txtfields(40).Text)), 2)
            End If
            
            DblinsAmt = val(txtfields(49).Text) / ADOSECONDARYRS.RecordCount
            
            If BlnCharity = True Then
                taxCharity = val(txtfields(41).Text) / ADOSECONDARYRS.RecordCount
            End If
            Insur = 0
            
            If BlnInsurance = True Then
                insurcalAmt = val(Round(Assval) - dbldiscount) + taxCharity + val(DblFrtAmt)

                    If val(txtfields(50).Text) <> 0 Then
                            Insur = KSLRound(val(insurcalAmt) * val(txtfields(50)) / 100, 2)
                            txtfields(49).Text = Format(val(txtfields(49).Text) + Insur, "#0.00")
                    Else
                            Insur = Format(val(txtfields(49).Text), "#0.00")
                    End If
                Insur = Insur / ADOSECONDARYRS.RecordCount
            End If
'''Loading Charges
            If val(txtfields(99).Text) > 0 And val(grddatagrid.Columns(Gvalue).Text) > 0 And val(txtfields(40).Text) Then '''20-12-2024 added
                LoadAmt = Round((val(txtfields(99).Text) * val(grddatagrid.Columns(Gvalue).Text)) / (val(txtfields(40).Text)), 2)
                grddatagrid.Columns(GLoading_Amt) = LoadAmt
            End If
            
            ''28.12.2021 taxable value added
            '''========
'            grdDataGrid.Columns("Taxablevalue") = Val(Round(Assval, 2) - dbldiscount) + Val(grdDataGrid.Columns(GCharity)) + PackingAmt + DblFrtAmt + DblHandlingAmt + (Val(grdDataGrid.Columns(GEDUAMT).Text)) + (Val(grdDataGrid.Columns(GHSAMT).Text)) + Val(grdDataGrid.Columns(GCessAmt)) + (Val(grdDataGrid.Columns(GBEDAmt))) + Val(grdDataGrid.Columns(GAEDAmt))
            grddatagrid.Columns("Taxable_Values") = val(Round((grddatagrid.Columns(Gvalue).Text), 2) - dbldiscount) + val(grddatagrid.Columns(GCharity)) + Packing_Charges + DblFrtAmt + cessamt + Aed + Bed + LoadAmt
            TaxableValue = TaxableValue + grddatagrid.Columns("Taxable_Values")
            '''===========
        If txtfields(92).Text <> "" Then
            Set rsgstdeladdcheck = New Recordset 'For delivery address state code
            rsgstdeladdcheck.Open "SELECT s.gststatecode as deladdrgststcode FROM IG_AREA a join ig_state s on a.STATE_CODE =s.STATE_CODE WHERE AREA_CODE='" & txtfields(13).Text & "'", DB, adOpenStatic
                If rsgstdeladdcheck.RecordCount > 0 Then
                    Set rsourstatecode = New Recordset 'For our state code
                    rsourstatecode.Open "select gststatecode as outgststatecode from pp_divmas where divcode='" & Divcode & "' ", DB, adOpenStatic
                    If rsourstatecode.RecordCount > 0 Then
                        If rsourstatecode("outgststatecode") = val(rsgstdeladdcheck("deladdrgststcode")) Then    'if ourstate code is equal to delivery address state code is match CSGT and SGST available'
                            'CGST,SGST'
                            If UCase(CustID) = "LMW" Then
                            
                                CGST_SGSTTAXPER = grddatagrid.Columns(GTax_Per) / 2
                                grddatagrid.Columns(CGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
                                grddatagrid.Columns(CGSTAMT) = (val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * CGST_SGSTTAXPER / 100
    
                                grddatagrid.Columns(SGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
                                grddatagrid.Columns(SGSTAMT) = (val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * CGST_SGSTTAXPER / 100
                                
                                grddatagrid.Columns(IGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(IGSTPER) = Format(0, "#0.00")
    
                                txtfields(136).Text = Format(val(txtfields(136).Text) + val(grddatagrid.Columns(CGSTAMT)), "#0.00")
                                txtfields(135).Text = Format(val(txtfields(135).Text) + val(grddatagrid.Columns(SGSTAMT)), "#0.00")
                                txtfields(134).Text = Format(0, "#0.00")
                                
                                
                                cgst = cgst + val(grddatagrid.Columns(CGSTAMT))
                                sgst = sgst + val(grddatagrid.Columns(SGSTAMT))
                            Else
                                
                                CGST_SGSTTAXPER = grddatagrid.Columns(GTax_Per) / 2
                                grddatagrid.Columns(CGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
                                grddatagrid.Columns(CGSTAMT) = Round((val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * CGST_SGSTTAXPER / 100, RWCGSTVal_Roff)
    
                                grddatagrid.Columns(SGSTPER) = Format(CGST_SGSTTAXPER, "#0.00")
                                grddatagrid.Columns(SGSTAMT) = Round((val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * CGST_SGSTTAXPER / 100, RWSGSTVal_Roff)
                                
                                grddatagrid.Columns(IGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(IGSTPER) = Format(0, "#0.00")
    
                                txtfields(136).Text = Format(Round(val(txtfields(136).Text) + val(grddatagrid.Columns(CGSTAMT)), RWCGSTVal_Roff), "#0.00")
                                txtfields(135).Text = Format(Round(val(txtfields(135).Text) + val(grddatagrid.Columns(SGSTAMT)), RWSGSTVal_Roff), "#0.00")
                                txtfields(134).Text = Format(0, "#0.00")
                                
                                
                                cgst = cgst + val(grddatagrid.Columns(CGSTAMT))
                                sgst = sgst + val(grddatagrid.Columns(SGSTAMT))
                            End If
                        Else
                            'IGST'
                            If UCase(CustID) = "LMW" Then
                            
                                IGST_TAXPER = grddatagrid.Columns(GTax_Per)
                                grddatagrid.Columns(IGSTPER) = Format(IGST_TAXPER, "#0.00")
                                grddatagrid.Columns(IGSTAMT) = (val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * IGST_TAXPER / 100
                                txtfields(134).Text = Format(val(txtfields(134).Text) + val(grddatagrid.Columns(IGSTAMT)), "#0.00")
                                txtfields(135).Text = Format(0, "#0.00")
                                txtfields(136).Text = Format(0, "#0.00")
                                
                                grddatagrid.Columns(CGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(CGSTPER) = Format(0, "#0.00")
                                
                                grddatagrid.Columns(SGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(SGSTPER) = Format(0, "#0.00")
                                
                                igst = igst + val(grddatagrid.Columns(IGSTAMT))
                            Else
                                 IGST_TAXPER = grddatagrid.Columns(GTax_Per)
                                grddatagrid.Columns(IGSTPER) = Format(IGST_TAXPER, "#0.00")
                                grddatagrid.Columns(IGSTAMT) = Round((val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt + DblFrtAmt + Insur + taxCharity + LoadAmt) * IGST_TAXPER / 100, RWIGSTVal_Roff)
                                txtfields(134).Text = Format(Round(val(txtfields(134).Text) + val(grddatagrid.Columns(IGSTAMT)), RWIGSTVal_Roff), "#0.00")
                                txtfields(135).Text = Format(0, "#0.00")
                                txtfields(136).Text = Format(0, "#0.00")
                                
                                grddatagrid.Columns(CGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(CGSTPER) = Format(0, "#0.00")
                                
                                grddatagrid.Columns(SGSTAMT) = Format(0, "#0.00")
                                grddatagrid.Columns(SGSTPER) = Format(0, "#0.00")
                                
                                igst = igst + val(grddatagrid.Columns(IGSTAMT))
                            End If
                        End If
                    End If
                End If
                
'            Else
'                MsgBox "Please Enter the Tax coode in Tax/Duty Tab to calculate the GST...!"
'                TXTFIELDS(92).SetFocus
'                Exit Sub
            End If
                'Fot HSNCODE'
                
     
            

            
            'Commented for GST'
'            grddatagrid.Columns(GTax_Amt) = Round((Val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessAmt + Val(btaxamount) + educess + TCS_Amt) * Val(grddatagrid.Columns(GTax_Per)) / 100, RoffTax)
                        
             'New code added for GST on 15-06-2017'
             grddatagrid.Columns(GTax_Amt) = Round(val(grddatagrid.Columns(CGSTAMT)) + val(grddatagrid.Columns(SGSTAMT)) + val(grddatagrid.Columns(IGSTAMT)), RoffTax)
            tax = tax + grddatagrid.Columns(GTax_Amt)
            
            TaxR = NettRExR * val(grddatagrid.Columns(GTax_Per)) / 100
            If val(grddatagrid.Columns(GRate_Kg)) <> 0 Then
                NettRExR = Round(NettRExR + ((NettRExR - (NettRExR - val(grddatagrid.Columns(GRate_Ex).Text) / grddatagrid.Columns(GRate_Kg).Text)) * val(grddatagrid.Columns(GTax_Per)) / 100), 2)
            Else
                NettRExR = Round(NettRExR + ((NettRExR - (NettRExR - val(grddatagrid.Columns(GRate_Ex).Text))) * val(grddatagrid.Columns(GTax_Per)) / 100), 2)
            End If
            grddatagrid.Columns(GLsc_Amt) = KSLRound(val(grddatagrid.Columns(GTax_Amt)) * val(grddatagrid.Columns(GLsc_Per)) / 100, 2)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(GLsc_Amt)), 2)
            NettRExR = Round(NettRExR + val(TaxR * val(grddatagrid.Columns(GLsc_Per)) / 100), 2)
        Else
            grddatagrid.Columns(GTax_Amt) = 0
            grddatagrid.Columns(GLsc_Amt) = 0
            tax = tax + Round(grddatagrid.Columns(GTax_Amt), RoffTax)
            TaxR = NettRExR * val(grddatagrid.Columns(GTax_Per)) / 100
            NettRExR = Round(NettRExR + (NettRExR * val(grddatagrid.Columns(GTax_Per)) / 100), 2)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(GLsc_Amt)), 2)
            NettRExR = Round(NettRExR + val(TaxR * val(grddatagrid.Columns(GLsc_Per)) / 100), 2)
       End If
        
        SurCharge = KSLRound((tax * val(grddatagrid.Columns(GLsc_Per))) / 100, 2)
       ' On Error Resume Next
       If val(grddatagrid.Columns(GNett_Kgs).Text) > 0 Then
        grddatagrid.Columns(GRate_Nett).Text = Round(NettRExR + (val(txtfields(31).Text) / val(grddatagrid.Columns(GNett_Kgs).Text)) + (val(txtfields(74).Text) / val(grddatagrid.Columns(GNett_Kgs).Text)), 2)
      End If
     ' Call GST_CALCULATION
      
'Additional Tax
        If TAXFLG Then
            Packing_Charges = 0
            btaxamount = 0
            educess = 0
            cessamt = 0
            TCS_Amt = 0
             
            If BlnPackTax = True Then
                Packing_Charges = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            If BlnTCSTax = True Then
                TCS_Amt = val(grddatagrid.Columns(gTcs_Amt).Text)
            End If
            
            If BInCESSTAX = True Then
                cessamt = val(grddatagrid.Columns(GCess_Amt).Text)
            End If
             If BInTaxBED = True Then
                btaxamount = val(grddatagrid.Columns(GBed_Amt).Text)
                educess = val(grddatagrid.Columns(Geducess_amt).Text)
            End If
            
            grddatagrid.Columns(GATax_Amt) = Round((val(grddatagrid.Columns(Gvalue)) + Packing_Charges + cessamt + val(btaxamount) + educess + TCS_Amt) * val(grddatagrid.Columns(GATax_Per)) / 100, RoffTax)
            
            atax = atax + grddatagrid.Columns(GATax_Amt)
            
            TaxR = NettRExR * val(grddatagrid.Columns(GATax_Per)) / 100
            If val(grddatagrid.Columns(GRate_Kg)) <> 0 Then
                NettRExR = Round(NettRExR + ((NettRExR - (NettRExR - val(grddatagrid.Columns(GRate_Ex).Text) / grddatagrid.Columns(GRate_Kg).Text)) * val(grddatagrid.Columns(GATax_Per)) / 100), 2)
            Else
                NettRExR = Round(NettRExR + ((NettRExR - (NettRExR - val(grddatagrid.Columns(GRate_Ex).Text))) * val(grddatagrid.Columns(GATax_Per)) / 100), 2)
            End If
            grddatagrid.Columns(GLsc_Amt) = KSLRound(val(grddatagrid.Columns(GATax_Amt)) * val(grddatagrid.Columns(GLsc_Per)) / 100, 2)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(GLsc_Amt)), 2)
            NettRExR = Round(NettRExR + val(TaxR * val(grddatagrid.Columns(GLsc_Per)) / 100), 2)
        Else
            grddatagrid.Columns(GATax_Amt) = 0
            grddatagrid.Columns(GLsc_Amt) = 0
            atax = atax + Round(grddatagrid.Columns(GATax_Amt), RoffTax)
            TaxR = NettRExR * val(grddatagrid.Columns(GATax_Per)) / 100
            NettRExR = Round(NettRExR + (NettRExR * val(grddatagrid.Columns(GATax_Per)) / 100), 2)
            SurCharge = KSLRound(val(SurCharge) + val(grddatagrid.Columns(GLsc_Amt)), 2)
            NettRExR = Round(NettRExR + val(TaxR * val(grddatagrid.Columns(GLsc_Per)) / 100), 2)
       End If
        
        SurCharge = KSLRound((tax * val(grddatagrid.Columns(GLsc_Per))) / 100, 2)
        On Error Resume Next
        If val(grddatagrid.Columns(GNett_Kgs).Text) > 0 Then
            grddatagrid.Columns(GRate_Nett).Text = Round(NettRExR + (val(txtfields(31).Text) / val(grddatagrid.Columns(GNett_Kgs).Text)) + (val(txtfields(74).Text) / val(grddatagrid.Columns(GNett_Kgs).Text)), 2)
        End If
'EDU AND HSC AMOUNT CALC
If EDUFLG Then
           grddatagrid.Columns(Geducess_amt).Text = KSLRound(val((grddatagrid.Columns(GBed_Amt))) * (val(grddatagrid.Columns(Geducess_per)) / 100), 2)
           EDU_CESS = val(EDU_CESS) + (val(grddatagrid.Columns(Geducess_amt).Text))
           txtfields(76).Text = Format(Round(EDU_CESS, 0), "#0.00")
           txtfields(79).Text = Format(Round(EDU_CESS, 0), "#0.00")
           'txtFields(71).Text = Format((EDU_CESS), "#0.00")
           NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(Geducess_per)) / 100)
Else
           grddatagrid.Columns(Geducess_amt).Text = 0
           EDU_CESS = val(EDU_CESS) + (val(grddatagrid.Columns(Geducess_amt).Text))
           NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(Geducess_per)) / 100)
End If

If HSCESSFLG Then
           grddatagrid.Columns(Ghscess_amt).Text = KSLRound(val((grddatagrid.Columns(GBed_Amt))) * (val(grddatagrid.Columns(Ghscess_per)) / 100), 2)
           hscessAMT = val(hscessAMT) + (val(grddatagrid.Columns(Ghscess_per).Text))
           txtfields(78).Text = Format(Round(hscessAMT, 0), "#0.00")
           txtfields(80).Text = Format(Round(hscessAMT, 0), "#0.00")
           NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(Ghscess_per)) / 100)
Else
           grddatagrid.Columns(Ghscess_amt).Text = 0
           hscessAMT = val(hscessAMT) + (val(grddatagrid.Columns(Ghscess_amt).Text))
           NettRExR = NettRExR + val(bedR * val(grddatagrid.Columns(Ghscess_per)) / 100)
End If

'TCS AMOUNT CALC after tax
    If BlnTCSTax <> True Then

      If tcsflg = True Then
      
            If BInPACKTCS = True Then
               Packing_Charges1 = val(grddatagrid.Columns(GFWDCHRG).Text)
            End If
            cessamt = 0
            If BInCESSTCS = True Then
               cessamt = val(grddatagrid.Columns(GCess_Amt).Text)
            End If
            If BlnTcsCalc = True Then
               Taxamt = val(grddatagrid.Columns(GTax_Amt).Text) + val(grddatagrid.Columns(GATax_Amt).Text)
            End If
            
         '  TCSAssValue = TCSAssValue + Val(Val(grddatagrid.Columns(Gvalue) + cessAmt + Packing_Charges1 + taxamt))
'           grddatagrid.Columns(gTcs_Amt).Text = Round(Val(Val(grddatagrid.Columns(Gvalue) + cessAmt + Packing_Charges1 + taxamt)) * (Val(txtfields(73).Text) / 100), RoffTCS)
'           tcsval = Val(tcsval) + (Val(grddatagrid.Columns(gTcs_Amt).Text))
'           txtfields(71).Text = Format(tcsval, "#0.00")

            Dim adosPOS As Integer
            Dim totalInvAmt As Double
            totalInvAmt = 0
            
            adosPOS = ADOSECONDARYRS.AbsolutePosition
            ADOSECONDARYRS.MoveFirst
            Do While Not ADOSECONDARYRS.EOF
                totalInvAmt = totalInvAmt + val(val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1 + Taxamt)) + DblFrtAmt + Insur + taxCharity + LoadAmt
                ADOSECONDARYRS.MoveNext
            Loop
            
            
             ADOSECONDARYRS.AbsolutePosition = adosPOS
            Dim totalsaleAmt As Double
            totalsaleAmt = 0
            Dim PANNO As String
            
            Set Rs222 = New Recordset
            Rs222.Open "select isnull(pan,'') pan,ISNULL(TDS_TCS_Cal_Flg,'N') TDS_TCS_Flg from fa_slmas where slcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If Not Rs222.EOF Then
                PANNO = Rs222(0)
                TDSTCSFlg = Rs222("TDS_TCS_Flg")
            End If
            
            Set tcscheck = New Recordset
            tcscheck.Open "exec KSP_TCSAmountCheck '" & Divcode & "','" & Format(yfdate, "yyyy-mm-dd") & "' ,'" & Format(yldate, "yyyy-mm-dd") & "' ,'" & Trim(PANNO) & "' ,'" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            If Not tcscheck.EOF Then
                    totalsaleAmt = IIf(IsNull(tcscheck(0)), 0, tcscheck(0))
            End If
        
         Set rs1 = New Recordset
        rs1.Open "select isnull(TCS_GrossAmt,0) TCS_GrossAmt,isnull(TCSPER_WPan,0.00) TCSPER_WPan, isnull(TCSPER_WOPan,0.00) TCSPER_WOPan from IG_rPARAM b where b.divcode='" & Divcode & "'", DB
        If TDSTCSFlg <> "Y" Then
            If (val(totalsaleAmt) + val(totalInvAmt)) >= rs1(0) Then
              Set Rs222 = New Recordset
                Rs222.Open "select isnull(pan,'') pan from fa_slmas where slcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
                If Not Rs222.EOF Then
                    If Len(Rs222("pan")) = 10 Then
                        txtfields(73).Text = Format(rs1(1), "#0.000")
                    Else
                       txtfields(73).Text = Format(rs1(2), "#0.000")
                     
                    End If
                    
                     TCSAssValue = TCSAssValue + val(val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1 + Taxamt)) + DblFrtAmt + Insur + taxCharity + LoadAmt
                                      
                    
                    '.grddatagrid.Columns(gTcs_Amt).Text = Val(Val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1 + taxamt)) * (Val(txtfields(73).Text) / 100) sasi13.10.20
                    grddatagrid.Columns(gTcs_Amt).Text = KSLRound(val(val(grddatagrid.Columns(Gvalue) + cessamt + Packing_Charges1 + val(Taxamt) + DblFrtAmt + Insur + taxCharity + LoadAmt)) * (val(txtfields(73).Text) / 100), RWTCS_ROFF)
                    tcsval = val(tcsval) + (val(grddatagrid.Columns(gTcs_Amt).Text))
                    txtfields(71).Text = Format(Round(tcsval, 0), "#0.00")
                    
                End If
            Else
                txtfields(73).Text = Format("0", "#0.000")
              '  txtfields(115).Text = Format("0", "#0.00")
            
            End If
        End If

        'EC ON TCS Amount CALC

           grddatagrid.Columns(gECONTCS_Amt).Text = Round(val(val(grddatagrid.Columns(gTcs_Amt))) * (val(txtfields(84).Text) / 100), RoffETCS)
           ECTCSVAL = val(ECTCSVAL) + (val(grddatagrid.Columns(gECONTCS_Amt).Text))
           txtfields(83).Text = Format(ECTCSVAL, "#0.00")
           
        'HS ON TCS Amount CALC

           grddatagrid.Columns(gHSONTCS_Amt).Text = Round(val(val(grddatagrid.Columns(gTcs_Amt))) * (val(txtfields(82).Text) / 100), RoffHTCS)
           HSTCSVAL = val(HSTCSVAL) + (val(grddatagrid.Columns(gHSONTCS_Amt).Text))
           txtfields(81).Text = Format(HSTCSVAL, "#0.00")
        
        Else

                grddatagrid.Columns(gTcs_Amt).Text = 0
                grddatagrid.Columns(gECONTCS_Amt).Text = 0
                grddatagrid.Columns(gECONTCS_Amt).Text = 0

        End If

        
        
        'GST TAX CALCULATION'
'-----------------------------Code added on 12-06-2017----------------------------------------------------------------

'            Dim RWCGSTVal_Roff, RWSGSTVal_Roff, RWIGSTVal_Roff As Integer
'
'Set rspara = New Recordset
'    rspara.Open "SELECT ISNULL(WCGSTVal_Roff,0)WCGSTVal_Roff,ISNULL(WSGSTVal_Roff,0)WSGSTVal_Roff,ISNULL(WIGSTVal_Roff,0)WIGSTVal_Roff FROM IG_rPARAM WHERE  DIVCODE='" & divcode & "'", db, adOpenStatic
'
'  If rspara.EOF = False Then
'    RWCGSTVal_Roff = rspara("WCGSTVal_Roff")
'    RWSGSTVal_Roff = rspara("WSGSTVal_Roff")
'    RWIGSTVal_Roff = rspara("WIGSTVal_Roff")
'
'  End If
'
'
'
'            Set rsgstdeladdcheck = New Recordset 'For delivery address state code
'            rsgstdeladdcheck.Open "SELECT s.gststatecode as deladdrgststcode FROM IG_AREA a join ig_state s on a.STATE_CODE =s.STATE_CODE WHERE AREA_CODE='" & txtfields(13).Text & "'", db, adOpenStatic
'                If rsgstdeladdcheck.RecordCount > 0 Then
'                    Set rsourstatecode = New Recordset 'For our state code
'                    rsourstatecode.Open "select gststatecode as outgststatecode from pp_divmas where divcode='" & divcode & "' ", db, adOpenStatic
'                    If rsourstatecode.RecordCount > 0 Then
'                        If rsourstatecode("outgststatecode") = rsgstdeladdcheck("deladdrgststcode") Then    'if ourstate code is equal to delivery address state code is match CSGT and SGST available'
'                            'CGST,SGST'
'                            CGST_SGSTTAXPER = grddatagrid.Columns(GTax_Per) / 2
'                            grddatagrid.Columns(CGSTPER) = CGST_SGSTTAXPER
'                            grddatagrid.Columns(CGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100
'
'                            grddatagrid.Columns(SGSTPER) = CGST_SGSTTAXPER
'                            grddatagrid.Columns(SGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * CGST_SGSTTAXPER) / 100
'
''                           txtfields(136).Text = round(Val(txtfields(136).Text) + Val(grdDataGrid.Columns(CGSTAMT)), 2)
''                           txtfields(135).Text = round(Val(txtfields(135).Text) + Val(grdDataGrid.Columns(SGSTAMT)), 2)
'
'                            txtfields(136).Text = Val(txtfields(136).Text) + Val(grddatagrid.Columns(CGSTAMT))
'                            txtfields(135).Text = Val(txtfields(135).Text) + Val(grddatagrid.Columns(SGSTAMT))
'                            cgst = cgst + Val(grddatagrid.Columns(CGSTAMT))
'                            sgst = sgst + Val(grddatagrid.Columns(SGSTAMT))
'
'
'                        Else
'                            'IGST'
'                            IGST_TAXPER = grddatagrid.Columns(GTax_Per)
'                            grddatagrid.Columns(igstper) = IGST_TAXPER
'                            grddatagrid.Columns(IGSTAMT) = (Val(grddatagrid.Columns(Gvalue)) * IGST_TAXPER) / 100
'                            txtfields(134).Text = Val(txtfields(134).Text) + Val(grddatagrid.Columns(IGSTAMT))
'
'                            igst = igst + Val(grddatagrid.Columns(IGSTAMT))
'                        End If
'                    End If
'                End If
'
'                'Fot HSNCODE'
'
'                Dim rshsncode As New Recordset
'                Set rshsncode = New Recordset
'                rshsncode.Open "select hsn from ig_rproduct where PRODUCT_CODE = '" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode ='" & divcode & "'", db, adOpenStatic
'                If rshsncode.RecordCount > 0 Then
'                    grddatagrid.Columns(HSNCODE) = rshsncode("hsn")
'                End If
'
                
'-----------------------------------------------------------------------------------------------------------------
        



End If

ADOSECONDARYRS.MoveNext
         
Loop

'---------------------
  Set rspara = New Recordset
  rspara.Open "SELECT ISNULL(Assvall_Roff,0)Assvall_Roff,ISNULL(Cess_Roff,0)Cess_Roff,ISNULL(Bed_Roff,0)Bed_Roff,ISNULL(Aed_Roff,0)Aed_Roff,ISNULL(Edu_Roff,0)Edu_Roff,ISNULL(Tax_Roff,0)Tax_Roff,isnull(HSCESS_ROFF,0) HSCESS_ROFF,isnull(InvTot_Roff,0) InvTot_Roff,isnull(TCS_Roff,0) TCS_Roff,isnull(ECONTCS_Roff,0) ECONTCS_Roff,isnull(HSONTCS_Roff,0) HSONTCS_Roff,ISNULL(ATax_Roff,0)ATax_Roff FROM IG_rPARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
           If Not rspara.EOF Then
                txtfields(40).Text = Format(Abs(INFG(Assval2, val(rspara("Assvall_roff")))), "#.00")
                txtfields(41).Text = Format(Abs(INFG(Charity, 0)), "#0.00")
                txtfields(18).Text = Format(Abs(INFG(Charity, 0)), "#0.00")
                txtfields(42).Text = Format(Abs(INFG(cess, val(rspara("CESS_ROFF")))), "#0.00")
                txtfields(16).Text = Format(Abs(INFG(cess, val(rspara("CESS_ROFF")))), "#0.00")
                txtfields(43).Text = Format(Abs(INFG(Bed, val(rspara("bed_roff")))), "#0.00")
                txtfields(20).Text = Format(Abs(INFG(Bed, val(rspara("bed_roff")))), "#0.00")
                txtfields(44).Text = Format(Abs(INFG(Aed, val(rspara("aed_roff")))), "#0.00")
                txtfields(22).Text = Format(Abs(INFG(Aed, val(rspara("Aed_roff")))), "#0.00")
                
                'Code added for GST on 14-06-2017 '
                tax = val(txtfields(134)) + val(txtfields(135)) + val(txtfields(136))
                
                txtfields(45).Text = Format(Abs(INFG(tax, val(rspara("tax_roff")))), "#0.00")
                txtfields(26).Text = Format(Abs(INFG(tax, val(rspara("tax_roff")))), "#0.00")
                txtfields(78).Text = Format(Abs(INFG(hscessAMT, val(rspara("HSCESS_roff")))), "#0.00")
                txtfields(80).Text = Format(Abs(INFG(hscessAMT, val(rspara("HSCESS_roff")))), "#0.00")
                txtfields(28).Text = Format(Abs(INFG(SurCharge, 0)), "#0.00")
                txtfields(76).Text = Format(Abs(INFG(EDU_CESS, val(rspara("edu_roff")))), "#0.00")
                txtfields(79).Text = Format(Abs(INFG(EDU_CESS, val(rspara("edu_roff")))), "#0.00")
                
                txtfields(71).Text = Format(Abs(INFG(tcsval, val(rspara("tcs_roff")))), "#0.00")
                txtfields(85).Text = Format(Abs(INFG(tcsval, val(rspara("tcs_roff")))), "#0.00")
                txtfields(83).Text = Format(Abs(INFG(ECTCSVAL, val(rspara("ECONTCS_Roff")))), "#0.00")
                txtfields(86).Text = Format(Abs(INFG(ECTCSVAL, val(rspara("ECONTCS_Roff")))), "#0.00")
                txtfields(81).Text = Format(Abs(INFG(HSTCSVAL, val(rspara("HSONTCS_Roff")))), "#0.00")
                txtfields(87).Text = Format(Abs(INFG(HSTCSVAL, val(rspara("HSONTCS_Roff")))), "#0.00")
                
                txtfields(93).Text = Format(Abs(INFG(TCSAssValue, val(rspara("tcs_roff")))), "#0.00")
                
                txtfields(90).Text = Format(Abs(INFG(atax, val(rspara("atax_roff")))), "#0.00")
                txtfields(89).Text = Format(Abs(INFG(atax, val(rspara("atax_roff")))), "#0.00")
                invroundoff = rspara("InvTot_Roff")


txtfields(50) = Format(val(txtfields(50).Text), "#.00")
txtfields(31).Text = Format(val(txtfields(31).Text), "#.00")
txtfields(74).Text = Format(val(txtfields(74).Text), "#.00")
txtfields(73).Text = val(txtfields(73).Text)
'--------------------
        
        'TotAmt = Assval2 + Charity + Round(cess, 0) + Round(Bed, 0) + Round(Aed, 0) + Round(Tax, 0) + Val(SurCharge) + Round(hscessAMT, 0) + Round(EDU_CESS, 0) + Val(txtfields(71).Text) + Val(txtfields(83).Text) + Val(txtfields(81).Text)
        TotAmt = val(txtfields(40).Text) + val(txtfields(18).Text) + val(txtfields(16).Text) + val(txtfields(20).Text) + val(txtfields(44).Text) + val(txtfields(45).Text) + val(txtfields(28).Text) + val(txtfields(78).Text) + val(txtfields(76).Text) + val(txtfields(71).Text) + val(txtfields(83).Text) + val(txtfields(81).Text) + val(txtfields(89).Text)
        
'        Insur = 0''sasi31.7.17

'        Insur = KSLRound(TotAmt * Val(TXTFIELDS(50)) / 100, 2)
'        TXTFIELDS(49).Text = Format(Round(Insur, 0), "#0.00")
       Insur = 0

     
        If val(txtfields(50).Text) <> 0 Then ''sasi 26.7.17
                 Insur = KSLRound((val(txtfields(40).Text) - val(txtfields(41).Text) + val(Charity) + val(txtfields(31).Text)) * val(txtfields(50)) / 100, 2)
                txtfields(49).Text = Format(Insur, "#0.00")
        Else
                Insur = Format(val(txtfields(49).Text), "#0.00")
        End If
                
        txtfields(46).Text = Format(val(txtfields(49).Text) + SurCharge + val(txtfields(31).Text) + val(txtfields(74).Text) + val(txtfields(99).Text), "#0.00")

        invamt = Format(val(txtfields(49).Text) + TotAmt + val(txtfields(31).Text) + val(txtfields(74).Text) + val(txtfields(99).Text), "#0.00")
   
        
'-----------------------------------Round-----------------------------
   If BlnInvRoundoff = False Then
        txtfields(47).Text = Format(val(invamt) + val(txtfields(39).Text), "#0.00")
   Else
        txtfields(39) = 0
        If invroundoff = 0 Then
        If InStr(CStr(invamt), ".") > 0 Then
            tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
               If Right(tmprnd, 1) >= 5 Then
                invamt = Format(invamt, "#########0.00")
                End If
                Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
               
                    If val(txtfields(39)) = 0 Then
                        If Round1 <= 0.5 Then
                            txtfields(39).Text = Format("-" & Round1, "#0.00")
                            txtfields(47) = Format(invamt - Round1, "#0.00")
                        Else
                            txtfields(39).Text = Format(1 - Round1, "#0.00")
                            txtfields(47).Text = Format(invamt + (1 - Round1), "#0.00")
                        End If
                    Else
                        txtfields(47).Text = Format((invamt) + (val(txtfields(39).Text)), "#0.00")
                    End If
         End If
         
'              txtfields(47) = Format(Round(invamt, 0), "#0.00")
'              txtfields(39) = Format(Round(Val(invamt), 0) - Val(invamt), "#.00")
        ElseIf invroundoff = 3 Then
                txtfields(47).Text = Format(Abs(INFG((invamt), (val(rspara("InvTot_Roff") + val(txtfields(39).Text))))), "#0.000")
        Else
                txtfields(47).Text = Format(Abs(INFG((invamt), (val(rspara("InvTot_Roff") + val(txtfields(39).Text))))), "#0.00")
                 
        
'            If InStr(CStr(invamt), ".") > 0 Then
'                  tmprnd = Mid(CStr(invamt), InStr(CStr(invamt), "."), 4)
'                    If Right(tmprnd, 1) >= 5 Then
'                        invamt = Format(invamt, "#########0.00")
'                    End If
'                    Round1 = Mid(CStr(invamt), InStr(CStr(invamt), "."), 3)
'                    If Round1 <= 0.5 Then
'                        txtfields(39).Text = Format("-" & Round1, "#0.00")
'                        txtfields(47) = Format(Abs(INFG((invamt - Round1), Val(rspara("InvTot_Roff")))), "#0.00")
'                    Else
'                        txtfields(39).Text = Format(1 - Round1, "#0.00")
'                        txtfields(47).Text = Format(Abs(INFG((invamt + (1 - Round1)), Val(rspara("InvTot_Roff")))), "#0.00")
'                    End If
'               End If
            End If
            
   End If
   Else
    MsgBox " Please Enter Parameter In House Keeping", vbInformation, head
    Exit Sub
   End If
End If
'If Len(txtfields(39).Text) = " " Then
'   txtfields(39).Text = Format(0, "0.00")
'End If

Exit Sub
InvCalc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Invcalc of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
Set RRs = New Recordset
RRs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
KSLRound = RRs(0)
End Function

Private Sub AddUpdate()
'ADDITION TIME UPDATATIONS
On Error GoTo UPDATEERR
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtfields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs+" & val(grddatagrid.Columns(Gpacks)) & ",exp_value=exp_value+" & grddatagrid.Columns(GRate_Nett) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs+" & val(grddatagrid.Columns(Gpacks)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
    Else
        
         Dim SPS1 As Double
         Dim SPS As New Recordset
         Set SPS = New Recordset
         SPS.Open "SELECT PACK_WT FROM IG_RPRODUCT WHERE PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "'", DB, adOpenStatic
         SPS1 = Round(val(grddatagrid.Columns(Gpacks).value) - val((grddatagrid.Columns(GDescription).Text) * SPS("PACK_WT")), 2)
        'db.Execute "update ig_rrg1trn set home_kgs=home_kgs+" & Val(grdDataGrid.columns(Gpacks)) & ",home_value=home_value+" & grdDataGrid.columns(GRate_Nett) & " where divcode='" & divcode & "' and product_code='" & grdDataGrid.columns(GPRODUCT_CODE ).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grdDataGrid.columns(GPRODUCT_CODE ).Text & "')"
        
        If SPS1 > 0 Then
            'db.Execute "update ig_rg1trn set LOOSE_KGS=LOOSE_KGS-" & SPS1 & " where divcode='" & divcode & "' and product_code='" & grddatagrid.columns(GPRODUCT_CODE ).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.columns(GPRODUCT_CODE ).Text & "')"
        End If
        
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs+" & val(grddatagrid.Columns(Gpacks)) & ",home_value=home_value+" & grddatagrid.Columns(GRate_Nett) + val(txtfields(46).Text) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
        
    End If
        
        DB.Execute "update ig_rg1trn set packs=packs+" & grddatagrid.Columns(GDescription) & ",pack_kgs=pack_kgs+" & val(grddatagrid.Columns(Gpacks)) & ",bed_amt=bed_amt+" & val(grddatagrid.Columns(GTax_Amt)) & ",aed_amt=aed_amt+" & val(grddatagrid.Columns(GBed_Amt)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtfields(3).Text) Or Trim(txtfields(3).Text) = "", "", "," + CStr(val(Mid$(txtfields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(val(grddatagrid.Columns(GTax_Amt)) + val(grddatagrid.Columns(GBed_Amt)) > 0, val(grddatagrid.Columns(GRate_Nett)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
        'Easwar db.Execute "update ig_rrg1trn set bed_amt=bed_amt+" & Val(grddatagrid.Columns(1+19)) & ",aed_amt=aed_amt+" & Val(grddatagrid.Columns(1+20)) & ",invoices=substring(invoices+'" & IIf(IsNull(txtFields(3).Text) Or Trim(txtFields(3).Text) = "", "", "," + CStr(Val(Mid$(txtFields(3), 3, 6)))) & "',1,20),duty_sales=duty_sales+" & IIf(Val(grddatagrid.Columns(1+19)) + Val(grddatagrid.Columns(1+20)) > 0, Val(grddatagrid.columns(GRate_Nett)), 0) & " where divcode='" & divcode & "' and product_code='" & grddatagrid.columns(GPRODUCT_CODE ).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & divcode & "' and product_code='" & grddatagrid.columns(GPRODUCT_CODE ).Text & "')"
        
'-------------------------------CDSTOCK
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT COUNT(*) FROM ig_CDSTOCK WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))), DB
        If rs1(0) = 0 Then
            Set RS2 = New Recordset
            RS2.Open "SELECT OPEN_KGS+TRF_KGS-SOLD_KGS FROM ig_CDSTOCK X WHERE X.DIVCODE='" & Divcode & "' AND X.CUST_CODE='" & txtfields(6) & "' AND X.PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' AND X.YEARMON=(SELECT MAX(Y.YEARMON) FROM ig_CDSTOCK Y WHERE  Y.DIVCODE=X.DIVCODE AND Y.CUST_CODE=X.CUST_CODE AND Y.PRODUCT_CODE=X.PRODUCT_CODE)", DB
            If Not RS2.EOF Then
                DB.Execute "INSERT INTO ig_rCDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtfields(6) & "','" & grddatagrid.Columns(GPRODUCT_CODE) & "'," & val(RS2(0)) & "," & val(grddatagrid.Columns(Gpacks)) & ",0)"
            Else
                DB.Execute "INSERT INTO ig_CDSTOCK VALUES('" & Divcode & "'," & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0)))) & ",'" & txtfields(6) & "','" & grddatagrid.Columns(GPRODUCT_CODE) & "',0," & val(grddatagrid.Columns(Gpacks)) & ",0)"
            End If
        Else
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS+" & val(grddatagrid.Columns(Gpacks)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))

            
        End If
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode = '" & Divcode & "'", DB
   Rs.MoveFirst
   Do While Not Rs.EOF
        For I = Rs(0) To Rs(1)
            DB.Execute "update IG_RPACKNOS set INVOICED='Y' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & " and pack_no=" & I, a
        Next
        Rs.MoveNext
   Loop
   
'   Do While PackNo <= rs(1)
'    db.Execute "update ig_rpacknos set INVOICED='Y' where divcode='" & divcode & "' and packno_code='" & rs(2) & "' and pack_year=" & rs(3) & "and pack_no=" & PackNo
'    PackNo = PackNo + 1
'   Loop
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED+" & grddatagrid.Columns(Gpacks) & " where CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   
'--------------------------------Product
   DB.Execute "update IG_RPRODUCT set kg_rate=" & val(grddatagrid.Columns(GGROSS_KGS)) & " where Product_code='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   ADOSECONDARYRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type='" & txtfields(0) & "',inv_no='" & txtfields(1) & "' where divcode='" & Divcode & "' and bo_type='" & txtfields(4) & "' and bo_no='" & txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
   If Trim(txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(32) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',Null," & val(txtfields(51)) & "," & val(txtfields(52)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(51)) & ",aed_dr=aed_dr+" & val(txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtfields(32) & "'"
   End If
   On Error GoTo sp1
   If Trim(txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(53) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',null," & val(txtfields(55)) & "," & val(txtfields(56)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(55)) & ",aed_dr=aed_dr+" & val(txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtfields(53) & "'"
   End If
   If Trim(txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select ISNULL(max(LAST_NO),0) from ig_rdoccontrol where divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'", DB
        docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
        DB.Execute "insert into ig_rdutytrn (DIVCODE,DUTY_CODE,DOC_NO,DATE,TRAN_TYPE,REFERENCE,BANK_SL,BED_AMT,AED_AMT,ref_dt) values('" & Divcode & "','" & txtfields(57) & "','" & docno & "','" & Format(pdate, "yyyy/mm/dd") & "','I','" & IIf(txtfields(3) = "", "null", txtfields(3)) & "',null," & val(txtfields(59)) & "," & val(txtfields(60)) & ",'" & Format(MaskEdBox1(0), "yyyy/mm/dd") & "')"
        DB.Execute "update ig_rdoccontrol set last_no=last_no+1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'"
        DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(59)) & ",aed_dr=aed_dr+" & val(txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtfields(57) & "'"
   End If
 End If
 Exit Sub
sp1:
    MsgBox "Check the Invoice type you have selected", vbInformation, head
    DB.RollbackTrans
    errflg = True

UPDATEERR:
MsgBox "This Record Not Saved", vbInformation, head
DB.RollbackTrans
errflg = True
End Sub
Private Sub DelUpdate()
'DELETION TIME UPDATATIONS
On Error GoTo DELUPDATEERR
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
'----------------------------RG1TRN
    Set Rs = New Recordset
    Rs.Open "Select inv_cat from ig_invtype where inv_type='" & txtfields(0) & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "E" Then
        DB.Execute "update ig_rg1trn set exp_kgs=exp_kgs-" & val(grddatagrid.Columns(Gpacks)) & ",exp_value=exp_value-" & grddatagrid.Columns(GRate_Nett) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
    ElseIf Rs(0) = "P" Then
        DB.Execute "update ig_rg1trn set ar3a_kgs=AR3A_kgs-" & val(grddatagrid.Columns(Gpacks)) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rrg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
    Else
        DB.Execute "update ig_rg1trn set home_kgs=home_kgs-" & val(grddatagrid.Columns(Gpacks)) & ",home_value=home_value-" & grddatagrid.Columns(GRate_Nett) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
    End If
        DB.Execute "update ig_rg1trn set packs=packs-" & grddatagrid.Columns(GDescription) & ",pack_kgs=pack_kgs-" & grddatagrid.Columns(Gpacks) & ",bed_amt=bed_amt-" & val(grddatagrid.Columns(GTax_Amt)) & ",aed_amt=aed_amt-" & val(grddatagrid.Columns(GBed_Amt)) & ",invoices=substring(invoices,1,len(invoices)),duty_sales=duty_sales-" & IIf(val(grddatagrid.Columns(GTax_Amt)) + val(grddatagrid.Columns(GBed_Amt)) > 0, val(grddatagrid.Columns(GRate_Nett)), 0) & " where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "' and date=(select max(date) from ig_rg1trn where divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "')"
'-------------------------------CDSTOCK
    
    If Rs(0) = "C" Or Rs(0) = "T" Or Rs(0) = "P" Then
            DB.Execute "UPDATE ig_rCDSTOCK SET TRF_KGS=TRF_KGS-" & val(grddatagrid.Columns(Gpacks)) & " WHERE DIVCODE='" & Divcode & "' AND CUST_CODE='" & txtfields(6) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' AND YEARMON=" & val(CStr(Year(MaskEdBox1(0))) & CStr(MONTH(MaskEdBox1(0))))
    End If
'---------------------------------PACKNOS
   Set Rs = New Recordset
   Rs.Open "SELECT SPACK_NO,EPACK_NO,PACKNO_CODE,PACK_YEAR FROM IG_RBODT WHERE CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "' and divcode = '" & Divcode & "'", DB
   packno = Rs(0)
   Do While packno <= Rs(1)
    DB.Execute "update IG_RPACKNOS set INVOICED='N' where divcode='" & Divcode & "' and packno_code='" & Rs(2) & "' and pack_year=" & Rs(3) & "and pack_no=" & packno
    packno = packno + 1
   Loop
   
'--------------------------------Contract
   DB.Execute "update ig_contdt set QTY_DELIVERED=QTY_DELIVERED-" & grddatagrid.Columns(Gpacks) & " where CONT_TYPE='" & grddatagrid.Columns(GCONT_TYPE) & "' AND CONT_NO='" & grddatagrid.Columns(GCONT_NO) & "' AND PRODUCT_CODE='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   
'--------------------------------Product
   DB.Execute "update IG_RPRODUCT set kg_rate=" & grddatagrid.Columns(GGROSS_KGS) & " where Product_code='" & grddatagrid.Columns(GPRODUCT_CODE) & "'"
   ADOSECONDARYRS.MoveNext
   Loop
   
'---------------------------Bale Order
      DB.Execute "update IG_RBOHD set inv_type=null,inv_no=null where divcode='" & Divcode & "' and bo_type='" & txtfields(4) & "' and bo_no='" & txtfields(5) & "'"
      
'-----------------------Duty TRN & DutyType

 If Trim(txtfields(32).Text) <> "" Or Trim(txtfields(53).Text) <> "" Or Trim(txtfields(57).Text) <> "" Then
   If Trim(txtfields(32).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "' and tran_type='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(32) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(32) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtfields(51)) & ",aed_dr=aed_dr-" & val(txtfields(52)) & " where divcode='" & Divcode & "' and Duty_cat='P' and Duty_code='" & txtfields(32) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtfields(53)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(53) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(53) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr+" & val(txtfields(55)) & ",aed_dr=aed_der+" & val(txtfields(56)) & " where divcode='" & Divcode & "' and Duty_cat='A' and Duty_code='" & txtfields(53) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
   If Trim(txtfields(57)) <> "" Then
        Set Rs = New Recordset
        Rs.Open "SELECT LAST_NO,DOC_NO FROM ig_rDOCCONTROL A,ig_rDUTYTRN B where A.DIVCODE=B.DIVCODE AND A.DOC_REF=B.DUTY_CODE AND A.divcode='" & Divcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "' AND TRAN_TYPE='I'", DB
        If Rs(0) = val(Mid$(Rs(1), 3, 6)) Then
            DB.Execute "DELETE FROM ig_rDUTYTRN WHERE DIVCODE='" & Divcode & "' AND DUTY_CODE='" & txtfields(57) & "' AND TRAN_TYPE='I' AND REFERENCE='" & txtfields(3) & "'"
            DB.Execute "update ig_rdoccontrol set last_no=last_no-1 where divcode='" & dovcode & "' and DOC_TYPE='D' and doc_ref='" & txtfields(57) & "'"
            DB.Execute "update ig_rdutytype set bed_dr=bed_dr-" & val(txtfields(59)) & ",aed_dr=aed_dr-" & val(txtfields(60)) & " where divcode='" & Divcode & "' and Duty_cat='C' and Duty_code='" & txtfields(57) & "'"
        Else
            GoTo DELUPDATEERR
        End If
   End If
 End If
 Exit Sub
DELUPDATEERR:
MsgBox "This Record Cannot be Deleted" & Err.Description, vbInformation, head
DB.RollbackTrans
errflg = True
End Sub
Private Sub NETTOEX()
'THIS PROCEDURE FIND THE EX-MILL RATE FROM NETT RATE
On Error GoTo NETTOEX_Error

ExR = 0
ADOSECONDARYRS.MoveFirst
Do While Not ADOSECONDARYRS.EOF
If (val(grddatagrid.Columns(GRate_Ex)) = 0 Or Trim(grddatagrid.Columns(GRate_Ex)) = "") And val(grddatagrid.Columns(GRate_Nett)) > 0 Then
    NettR = val(grddatagrid.Columns(GRate_Nett))
    STPer = val(grddatagrid.Columns(GTax_Per)) / 100
    SCPer = val(grddatagrid.Columns(GLsc_Per)) / 100
    BEDPer = val(grddatagrid.Columns(GBed_Per)) / 100
    AEDPer = val(grddatagrid.Columns(GAed_Per)) / 100
    CESSPer = val(txtfields(15).Text) / 100
    Set Rs = New Recordset
    Rs.Open "select isnull(charity_rate,0) from IG_RPRODUCT a, IG_PRODUCTtype b where a.product_type=b.product_type and a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "'", DB
    If Not Rs.EOF Then CHARPer = Rs(0)
                        '******************calculation******************
'*************** original comment by prakash
    ExR = NettR
    'for rasi changed by senthil
    
    ExR = Round((NettR / (((1 + STPer) + (STPer * SCPer)) * ((1 + BEDPer) + (BEDPer * AEDPer) + CESSPer))) - (val(txtfields(31).Text) / val(grddatagrid.Columns(GNett_Kgs).Text) + val(txtfields(74).Text) / val(grddatagrid.Columns(GNett_Kgs).Text)), 3)
    
    
' '-----------------------------Exmillrate=exmilrate-freight
'      ExR = KSLRound(ExR - Val(txtfields(31).Text) / Val(grdDataGrid.columns(Gpacks).Text), 5)
''-----------------------nett-st-sc
'      ExR = KSLRound(ExR / (1 + STPer + (STPer * SCPer)), 5)
''-----------------------nett-st-sc-aed-bed
'     ExR = KSLRound(ExR / (1 + BEDPer + (BEDPer * AEDPer)), 5)
''-----------------------nett-st-sc-aed-bed-cess
'     'Easwar ExR = KSLRound(ExR - ExR * CESSPer, 5)
'     ExR = KSLRound(ExR - (ExR * CESSPer), 5)
''-----------------------EXMILL RATE = NETTRATE-SC-ST-AED-BED-CESS-CHARITY
'     ExR = KSLRound(ExR - (Val(grdDataGrid.columns(GDescription).Text) * CHARPer), 2)


'****************************************************
'by prakash.s
'Dim ex As Double
'ex  = 0
'ex1 = 0
'ExR = KSLRound((NettR * (Val(grdDataGrid.columns(GCharity).Text) + Val(grdDataGrid.columns(GBed_Per).Text))) / (100 + (STPer + SCPer) * 100), 4)
'ExR = ExR / (NettR + (STPer + SCPer) * 100)
'ExR = NettR - ExR
'ex  = ExR
'ExR = Val(ex * (18.45)) / (118.45)
'Ex1 = ExR
'ex1 = ex - ExR
'ExR = Round(ex - ExR, 4)
'***************

grddatagrid.Columns(GRate_Ex) = Round(ExR, 2)
STPer = 0
SCPer = 0
BEDPer = 0
AEDPer = 0
CESSPer = 0
CHARPer = 0
End If
ADOSECONDARYRS.MoveNext
Loop

Exit Sub
NETTOEX_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure NETTOEX of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
Private Sub ModLock()
'THIS PROCEDURE UNLOCKS THE MODIFIABLE FIELDS
For I = 61 To 65
    txtfields(I).Locked = False
Next
For I = 34 To 38
    txtfields(I).Locked = False
Next
txtfields(29).Locked = False
grddatagrid.Enabled = True
txtfields(97).Locked = False
End Sub

Public Sub InvoiceTypeLookup()
On Error GoTo InvoiceTypeLookup_Error

If Record_Exists("ig_invtype where divcode='" & Divcode & "'", "Please Define Invoice Type") = False Then
    Call BUTTON_Click(10)
    Exit Sub
End If

LookUp.Clear = True
LookUp.query = "select distinct  A.inv_type as Type,A.Description from ig_invtype A INNER JOIN IG_RBOHD B ON B.BO_TYPE=A.INV_TYPE AND A.DIVCODE=B.DIVCODE INNER JOIN RM_JobOrderHD C ON C.SLCODE=B.CUST_CODE AND C.DIVCODE=A.DIVCODE where A.divcode='" & Divcode & "'  AND ISNULL(B.INV_NO,'') =''"
LookUp.DefCol = "Description"
LookUp.Caption = "Invoice Type Listing"
LookUp.ALIGN = "2000,5000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(0).Text = LookUp.Fields(0)
    LookUp.Clear = True
    DocNoGrp = 0
    divgrp = ""
    Set rsg = New Recordset
    rsg.Open "SELECT isnull(DocNoGrp,0) DocNoGrp,ISNULL(DIVGRP,'')DIVGRP,isnull(doc_prefix,'') doc_prefix from ig_doccontrol where DOC_REF='" & txtfields(0).Text & "' AND  doc_type='I' and divcode = '" & Divcode & "' AND YEAR_NO='" & YearNo & "'", DB, adOpenStatic
     If rsg.RecordCount > 0 Then
        DocNoGrp = rsg("DOCNOGRP")
        divgrp = rsg("DIVGRP")
        Doc_prefix = rsg("doc_prefix")
    End If
YearNo = Right(Year(yfdate), 2)
    Set Rs = New Recordset
    Rs.Open "Select ISNULL(max(LAST_NO),0) last_no,ISNULL(max(docno),0) docno from ig_doccontrol where divcode='" & Divcode & "' and  DOC_TYPE='I'  AND isnull(DOCNOGRP,0)=" & DocNoGrp & " AND YEAR_NO='" & Right(Year(yfdate), 2) & "' AND isnull(DIVGRP,'')='" & divgrp & "'", DB

        '- for shivdhara diff invioce no
            If InvoicenowithPrefix = 1 Then
                txtfields(96).Text = Trim(Doc_prefix) & CStr((Rs("docno") + 1))
                Doc_Prefixdocno = (Rs("docno") + 1)
            Else
                txtfields(96).Text = ""
                Doc_Prefixdocno = 0
            End If
        '-----------
      
    docno = YearNo & Padl(CStr(Rs(0) + 1), 6, "0")
    Set rs1 = New Recordset
    rs1.Open " select Invno_Edit from ig_rparam where divcode='" & Divcode & "'", DB
    If Not rs1.EOF Then
        If rs1(0) = "Y" Then
        txtfields(0).Locked = False
        txtfields(1).Locked = False
        InvnoEdit = True
        Else
        txtfields(0).Locked = True
        txtfields(1).Locked = True
        InvnoEdit = False
        End If
    End If
    txtfields(1).Text = docno
    txtfields(1).SetFocus
     
    Set Rs = New Recordset
    Rs.Open "select cess,charity,duty,tax,educess,hscess,tcs_calc from ig_invtype where inv_type='" & txtfields(0).Text & "' and divcode = '" & Divcode & "'", DB
    If Rs(0) = "Y" Then
        Combo1(1).ListIndex = 0
        CESSFLG = True
    Else
        Combo1(1).ListIndex = 1
    End If
    If Rs(1) = "Y" Then
        Combo1(2).ListIndex = 0
        CHFLG = True
    Else
        Combo1(2).ListIndex = 1
    End If
    If Rs(2) = "Y" Then
        Combo1(3).ListIndex = 0
        DUTYFLG = True
    Else
        Combo1(3).ListIndex = 1
    End If
    If Rs(3) = "Y" Then
        Combo1(4).ListIndex = 0
        TAXFLG = True
    Else
        Combo1(4).ListIndex = 1
    End If
    If Rs(4) = "Y" Then
'        Combo1(4).ListIndex = 0
        EDUFLG = True
    Else
        'Combo1(4).ListIndex = 1
        EDUFLG = False
    End If
    If Rs(5) = "Y" Then
       HSCESSFLG = True
    Else
      HSCESSFLG = False
    End If
    If Rs(6) = "Y" Then
        Combo1(5).ListIndex = 0
    Else
        Combo1(5).ListIndex = 1
    End If
Else
    Call BUTTON_Click(10)
End If

Exit Sub
InvoiceTypeLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure InvoiceTypeLookup of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Public Sub CEXLookup()
On Error GoTo CEXLookup_Error
    stbar.Panels(2) = "Select Cex Invoice Type from the List"
    LookUp.Clear = True
    LookUp.query = "select CEX_INVTYPE as Type,b.description as Description from ig_invtype A,ig_CEXINVTYPE B WHERE A.DIVCODE=B.DIVCODE AND (CEX_REF_CY=CEX_INVTYPE OR CEX_REF_CSY=CEX_INVTYPE OR CEX_REF_NCSY=CEX_INVTYPE) AND INV_TYPE='" & txtfields(0).Text & "' AND A.divcode='" & Divcode & "'"
    LookUp.DefCol = "Description"
    LookUp.Caption = "Central Excise Invoice Type Listing"
    LookUp.ALIGN = "2000,5000"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(2).Text = LookUp.Fields(0)
        LookUp.Clear = True
        txtfields(4).SetFocus
        Set rsg = New Recordset
        rsg.Open "SELECT isnull(CEX_LASTNO,0)""CEX_LASTNO"",ISNULL(CEXNOGRP,0)""CEXNOGRP"",isnull(divgrp,'')divgrp FROM IG_DOCCONTROL WHERE DOC_REF='" & txtfields(0).Text & "' AND DOC_TYPE='I' AND DIVCODE='" & Divcode & "' AND YEAR_NO='" & Right(yfdate, 2) & "'", DB, adOpenStatic
        divgrp = ""
        DocNoGrp = 0
        If rsg.RecordCount > 0 Then
            divgrp = rsg(2)
            DocNoGrp = rsg(1)
        End If
        Set RSGLB = New Recordset
        RSGLB.Open "SELECT ISNULL(DIVGRP_NOGEN_FLG,'N')DIVGRP FROM IG_PARAM WHERE  DIVCODE='" & Divcode & "'", DB, adOpenStatic
    
        Set rsQry = New Recordset
        rsQry.Open "select INV_no from ig_INVHD a,ig_doccontrol b where a.inv_type=b.doc_ref and  a.INV_no='" & txtfields(1).Text & "' and a.INV_type='" & txtfields(0).Text & "' and b.docnogrp='" & DocNoGrp & "' and b.doc_type='I' AND A.DIVCODE=B.DIVCODE AND A.DIVCODE='" & Divcode & "'", DB, adOpenStatic

        If rsQry.EOF = False Then
            MsgBox ("Invoice No. already Exists"), vbCritical, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        txtfields(12).SetFocus
    
        If rsg.RecordCount > 0 Then
                If rsg(1) = 0 Then
                    txtfields(2).Text = txtfields(0).Text
                    txtfields(3).Text = txtfields(1).Text
                 Else
                    txtfields(2).Text = txtfields(0).Text
                    DocNoGrp = YearNo & Padl(CStr(rsg(0) + 1), 6, "0")
                    txtfields(3).Text = DocNoGrp
                End If
                txtfields(4).SetFocus
        Else
                txtfields(2).Text = txtfields(0).Text
                txtfields(3).Text = txtfields(1).Text
                txtfields(4).SetFocus
        End If
        MaskEdBox1(0).SetFocus
    Else
    txtfields(2).Text = ""
    txtfields(3).Text = ""
    txtfields(2).SetFocus
    Exit Sub
    End If

Exit Sub
CEXLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CEXLookup of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub

Public Sub OrderLookup()
On Error GoTo OrderLookup_Error
Dim GridRow As Integer

If Record_Exists("IG_RBOHD where divcode='" & Divcode & "' AND BO_TYPE='" & txtfields(0).Text & "' AND INV_NO IS NULL", "Bale Order Not Found") = False Then
    Call BUTTON_Click(10)
    Exit Sub
End If
stbar.Panels(2) = "Select Bale Order No. from the List"
LookUp.Clear = True
LookUp.query = "select bo_type as OrderType,bo_no as OrderNo,date as Date ,Cust_code ""Customer Code"" from IG_RBOHD where divcode='" & Divcode & "' AND INV_NO IS NULL AND BO_TYPE='" & txtfields(0).Text & "' and issflg<>'P'"
LookUp.DefCol = "OrderType"
LookUp.Caption = "Bale Order Listing"
LookUp.ALIGN = "2000,2000,2000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    ADOSECONDARYRS.Requery
    Call gridalign
    txtfields(5).Text = LookUp.Fields(1)
    txtfields(4).Text = LookUp.Fields(0)
    txtfields(6).Text = LookUp.Fields("Customer Code")

    Set Rs = New Recordset
    Rs.Open "select isnull(pan,'') pan,len(isnull(pan,'')) psnlen,isnull(TDS_TCS_Cal_Flg,'N') TDS_TCS_Flg from fa_slmas where slcode='" & Trim(txtfields(6).Text) & "' ", DB
    If Not Rs.EOF Then
        If Rs(0) = "" Then
            MsgBox "PAN No is Empty for selected Customer!!!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        
         If Rs(1) <> 10 Then
            MsgBox "PAN No Should be 10 Digit!!!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        TDSTCSFlg = Rs("TDS_TCS_Flg")
    End If
    
    Set Rs = New Recordset
    Rs.Open "select isnull(a.cust_code,''), isnull(a.vehicle_no, ''),isnull(b.cont_type,0)as cont_type,isnull(b.cont_no,0)as cont_no, b.product_code,SUM((b.epack_no - b.spack_no)+1) as packs, SUM(b.nett_kgs),SUM(b.gross_kgs),0,isnull(a.rateflg,'X'),c.Description,b.rate,a.agent_code,b.Pack_type,isnull(b.Godown,'')Godown,A.JobOrdNo,ISNULL(B.MixRate,0) MixRate from IG_RBOHD a, IG_RBODT b ,IG_rProduct C where a.divcode='" & Divcode & "' and a.divcode = b.divcode and a.bo_no = b.bo_no and a.bo_type = b.bo_type and a.divcode=c.divcode and b.Product_Code=c.Product_Code and a.divcode='" & Divcode & "' and a.bo_no='" & LookUp.Fields(1) & "' and a.bo_type='" & LookUp.Fields(0) & "' GROUP BY  b.product_code,c.Description,isnull(a.cust_code,''), isnull(a.vehicle_no, ''), b.cont_type, b.cont_no,a.rateflg,b.rate,a.agent_code,b.Pack_type,ISNULL(B.Godown,''),A.JobOrdNo,ISNULL(B.MixRate,0) ", DB
    
    If Not Rs.EOF Then
    
        Set yy = New Recordset
        yy.Open "SELECT c.name,* FROM IG_rCONThd a,ig_bank c WHERE a. bank_code=c.bank_code and CONT_NO='" & Rs("cont_no") & "' AND CONT_TYPE='" & Rs("cont_type") & "'", DB
        If Not yy.EOF Then
           txtfields(13).Text = IIf(IsNull(yy("Despatch_to")), "", yy("Despatch_to"))
              Set DT = New Recordset
                DT.Open "SELECT AREA_CODE,NAME FROM ig_AREA WHERE Area_code='" & txtfields(13).Text & "'", DB, adOpenStatic
                If DT.RecordCount > 0 Then
                    txtfields(13).Text = DT(0)
                    txtfields(14).Text = DT(1)
                    txtfields(13).Enabled = False
                    txtfields(14).Enabled = False
                Else
                    txtfields(13).Enabled = True
                    txtfields(14).Enabled = True
                End If
           txtfields(8).Text = IIf(IsNull(yy("Agent_code")), "", yy("Agent_code"))
           txtfields(65).Text = IIf(IsNull(yy("credit_days")), "", yy("credit_days"))
           txtfields(12).Text = IIf(IsNull(yy("name")), "", yy("name"))
        End If
        
        Set RsHn = New Recordset
        RsHn.Open "Select hsn from ig_rproduct where divcode='" & Divcode & "' and product_code='" & Rs("product_code") & "'", DB, adOpenStatic
        If Not RsHn.EOF Then
            If (Len(Trim(RsHn("hsn"))) = "6" Or Len(Trim(RsHn("hsn"))) = "8") Then
            Else
                MsgBox "HSN Code should be 6 or 8 digits", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
        Else
            MsgBox "Please update the HSN Code in product Master  " & Rs("product_code"), vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        
    End If
    
    txtfields(6).Text = Rs(0)
    txtfields(34).Text = Rs(1)
    
    
    Set rscustgst = New Recordset
    rscustgst.Open "select isnull(gstinno,'')gstinno,isnull(convert(varchar(5),gststatecode),'')gststatecode,isnull(supptype,'R')supptype   from fa_slmas where slcode ='" & txtfields(6).Text & "'", DB, adOpenStatic
    If rscustgst.RecordCount > 0 Then
        If rscustgst("supptype") <> "U" Then
            If rscustgst("gstinno") = "" Then
                MsgBox "The GST No. is not mapped for this customer...!"
                txtfields(8).SetFocus
                txtfields(92).Enabled = False
                Exit Sub
            Else
                txtfields(137) = rscustgst("gstinno")
            End If
         End If
         
         
            If rscustgst("gststatecode") = "" Then
                MsgBox "The GST State Code is not mapped for this customer...!"
                txtfields(8).SetFocus
                txtfields(92).Enabled = False
                Exit Sub
            Else
                txtfields(138) = rscustgst("gststatecode")
            End If
    End If
    
    LookUp.Clear = True
    While Not Rs.EOF
        txtfields(8).Text = IIf(IsNull(Rs("Agent_code")), "", Rs("Agent_code"))
        ADOSECONDARYRS.AddNew
        grddatagrid.Columns(GDescription).Text = Rs("Description")
        grddatagrid.Columns(GCONT_TYPE).Text = Rs(2)
        grddatagrid.Columns(GCONT_NO).Text = Rs("JobOrdNo")
        grddatagrid.Columns(GPRODUCT_CODE).Text = Rs(4)
        
        grddatagrid.Columns(gPackType).Text = Rs("Pack_type")
        grddatagrid.Columns(godown).Text = Rs("Godown")
        
        grddatagrid.Columns("MixRate").Text = Rs("MixRate")
        
        
        If IIf(IsNull(Rs("Rate")), 0, Rs("Rate")) <> 0 Then grddatagrid.Columns(GRate_Ex).Locked = True: grddatagrid.Columns(GRate_Nett).Locked = True: grddatagrid.Columns(GRate_Kg).Locked = True
        grddatagrid.Columns(GRate_Ex).Text = IIf(IsNull(Rs("Rate")), 0, Rs("Rate"))
        Set rs101 = New Recordset
        rs101.Open "select A.STATE_CODE AS CUSTSTATE,B.STATE_CODE AS DIVSTATE FROM FA_SLMAS A,PP_DIVMAS B WHERE B.DIVCODE='" & Divcode & "' AND A.SLCODE='" & Trim(txtfields(6).Text) & "'", DB
        If Not rs101.EOF Then
            If rs101("CUSTSTATE") = rs101("DIVSTATE") Then
                STFLAG = "L"
            Else
                STFLAG = "I"
            End If
        End If
        
        Set rs1 = New Recordset
        If STFLAG = "L" Then
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ltax_code from IG_RPRODUCT where product_code='" & grddatagrid.Columns(GPRODUCT_CODE) & "' and DivCode='" & Divcode & "')", DB
        Else
            rs1.Open "SELECT tax_code,st_per,sc_per from ig_tax where tax_code=(select ctax_code from IG_RPRODUCT where product_code='" & grddatagrid.Columns(GPRODUCT_CODE) & "' and DivCode='" & Divcode & "')", DB
        End If
        
      
        
        Set RS2 = New Recordset
        RS2.Open "select isnull(charity_rate,0),isnull(aed_per,0),isnull(bed_per,0),isnull(cess_per,0),isnull(educess_Per,0),isnull(hscess_per,0),isnull(ECONTCS_PER,0),ISNULL(TCS_PER,0),ISNULL(HSONTCS_PER,0) from IG_RPRODUCT a left join IG_PRODUCTtype b on a.product_type = b.product_type where  a.divcode='" & Divcode & "' and a.product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "'", DB
        
        If Not RS2.EOF Then
            GridRow = grddatagrid.Row
            adflg = "Y"
            txtfields(15).Text = Format(RS2(3), "#.00")
            txtfields(75).Text = Format(RS2(4), "#.00")
            txtfields(77).Text = Format(RS2(5), "#.00")
            txtfields(73).Text = Format(RS2(7), "#.00")
            txtfields(84).Text = Format(RS2(6), "#.00")
            txtfields(82).Text = Format(RS2(8), "#.00")
            adflg = "N"
            grddatagrid.Row = GridRow
            grddatagrid.Columns(Gpacks).Text = val(Rs(5))
            grddatagrid.Columns(GNett_Kgs).Text = Rs(6)
            grddatagrid.Columns(GGROSS_KGS).Text = Rs(7)
            grddatagrid.Columns(Geducess_per).Text = RS2(4)
            grddatagrid.Columns(Ghscess_per).Text = RS2(5)
'            If rs(9) = "X" Then
'                grdDataGrid.Columns(9 + 1).Text = rs(8)
'                rf = rs(9)
'            Else
'            'prakash on 21/6/02
'                Rate = IIf(IsNull(rs(8)), 0, rs(8))
'                grdDataGrid.Columns(10 + 1).Text = IIf(IsNull(rs(8)), 0, rs(8))
'                rf = rs(9)
'            End If
           Set uu1 = New Recordset
            uu1.Open "select b.description from ig_rbodt a,ig_packtype b where a.pack_type=b.pack_type and a.divcode='" & Divcode & "' and a.bo_no='" & txtfields(5).Text & "' and a.bo_type='" & txtfields(4).Text & "' and a.product_code='" & grddatagrid.Columns(GPRODUCT_CODE).Text & "'", DB
            If Not uu1.EOF Then
                Set uu = New Recordset
                uu.Open "select HRate from ig_rhandlingrate where pack_type='" & uu1(0) & "'", DB
                If Not uu.EOF Then
                    txtfields(74).Text = val(txtfields(74).Text) + val(Rs(5)) * uu(0)
                    PACKING_SPLITUP
                    ADOSECONDARYRS.MoveLast
                End If
            End If
        If Not rs1.EOF Then
            grddatagrid.Columns(GTax_code).Text = rs1(0)
            grddatagrid.Columns(GTax_Per).Text = rs1(1)
            grddatagrid.Columns(GLsc_Per).Text = rs1(2)
        End If
        grddatagrid.Columns(GBed_Per).Text = RS2(2)
        grddatagrid.Columns(GAed_Per).Text = RS2(1)

        End If
        Rs.MoveNext
    Wend
    Call NETTOEX
    Call INVCALC
    grddatagrid.AllowUpdate = True
    Else
    txtfields(4).Text = ""
    txtfields(5).Text = ""
End If

Exit Sub
OrderLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OrderLookup of Form Invoice", vbInformation, head
    Screen.MousePointer = 0

End Sub
Public Sub PACKING_SPLITUP()
Dim totalKgs As Double
Dim fwd_AMT As Double
Dim TAsValues As Double
Dim PrdValue As Double
 
totalKgs = 0: fwd_AMT = 0
 If Opt = "add" Or Opt = "mod" Then
If ADOSECONDARYRS.RecordCount > 0 Then
 totalKgs = 0: fwd_AMT = 0
 
  ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
    ''' fwd amt calculateion based on values
        ''totalKgs = totalKgs + ADOSECONDARYRS("             Nett Kgs")
        totalKgs = totalKgs + ADOSECONDARYRS("            Value")
        ADOSECONDARYRS.MoveNext
    Loop

    totalKgs = Format(totalKgs, "#####0.00")
     
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
            ''' fwd amt calculateion based on values
            ''fwd_AMT = Round((Val(TXTFIELDS(74).Text) / totalKgs) * Val(ADOSECONDARYRS("             Nett Kgs")), 2)
            If val(txtfields(74).Text) > 0 Then
                fwd_AMT = Round((val(txtfields(74).Text) / totalKgs) * val(ADOSECONDARYRS("            value")), 2)
            Else
                fwd_AMT = 0
            End If
            grddatagrid.Columns(GFWDCHRG).Text = val(fwd_AMT)
            ADOSECONDARYRS.MoveNext
        Loop
'    End If
''    ''28.12.2021 added
''    '''===============================================
''    ADOSECONDARYRS.MoveFirst
''        Do While Not ADOSECONDARYRS.EOF
''
''            If ADOSECONDARYRS("       EX Rate/Kg") = "0" Then
''                TXTFIELDS(74).Text = "0.00"
''                MsgBox "Please Enter the Product wise EX Rate/KGs", vbInformation, head
''                Exit Sub
''            End If
''
''        ADOSECONDARYRS.MoveNext
''    Loop
''
''    '''===============================================
''    ADOSECONDARYRS.MoveFirst
''    Do While Not ADOSECONDARYRS.EOF
''        TAsValues = TAsValues + ADOSECONDARYRS("            Value")
''        ADOSECONDARYRS.MoveNext
''    Loop
''
''    TAsValues = Format(TAsValues, "#####0.00")
''    ADOSECONDARYRS.MoveFirst
''    Do While Not ADOSECONDARYRS.EOF
''        fwd_AMT = Round((Val(TXTFIELDS(74).Text) / TAsValues) * Val(ADOSECONDARYRS("            Value")), 2)
''        grdDataGrid.Columns(GFWDCHRG).Text = Val(fwd_AMT)
''        ADOSECONDARYRS.MoveNext
''    Loop
 End If
 
End If
End Sub

Private Function TrnDateValidation() As Boolean

   On Error GoTo TrnDateValidation_Error

    Set rstTrnDate = New ADODB.Recordset
    strQry = "Select isnull(MAX(DATE),'" & Format(pdate, "yyyy-MM-dd") & "') as Ldate from ig_rinvhd  where DIVCODE='" & Divcode & "' and DATE between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
    rstTrnDate.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstTrnDate.EOF Then
        If rstTrnDate("Ldate") <= pdate Then
            TrnDateValidation = True
        Else
            TrnDateValidation = False
            MsgBox "The Last Date of Transaction is " & Format(rstTrnDate("Ldate"), "dd/MM/yy") & ". You are not Allowed to make a Transaction on Previous Date.", vbCritical, head
        End If
    Else
        TrnDateValidation = True
    End If

   On Error GoTo 0
   Exit Function

TrnDateValidation_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TrnDateValidation of Form frmPPD"
    
End Function
Private Function getFAtransferFlg(SINVTYPE As String) As String
    
   On Error GoTo getFAtransferFlg_Error
'''========================================================

    getFAtransferFlg = ""
    strQty = "select isnull(FA_TRANSFER,'N') as FA_TRANSFER from IG_INVTYPE where DIVCODE='" & Divcode & "' and INV_TYPE='" & SINVTYPE & "'"
    Set rstgetTC = New ADODB.Recordset
    rstgetTC.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstgetTC.EOF Then
        getFAtransferFlg = rstgetTC("FA_TRANSFER")
    Else
        getFAtransferFlg = "N"
    End If


'''========================================================
   On Error GoTo 0
   Exit Function

getFAtransferFlg_Error:
    getFAtransferFlg = "N"
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure getFAtransferFlg of Form Invoice"
    
End Function

'Private Sub cmdCanDelOk_Click()
'On Error GoTo cmdCanDelOk_Click_Error
'    Opt = "del"
'    If Option2.value = True Then
'        canflg = "Y"
'        delflg = "N"
'        FMdate = fnmfdate(pdate)
'        Fldate = fnmldate(pdate)
''         qry = "Select a.inv_type as InvoiceType,a.Inv_no as InvoiceNo from Ig_Rinvhd A where isnull(AppFlg,'N')='N' and isnull(irn_no,'')='' and divcode = '" & divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
'        Call CanDelQry
'        Buttonframe.Enabled = True
'
'    Else
'        canflg = "N"
'        delflg = "Y"
'        Set Rsk = New Recordset
''        RSK.Open "select top 1 a.inv_type,a.inv_no,Date,slname from   IG_INVHD A ,FA_SLMAS B WHERE  ISNULL(a.Appflg,'N')<>'Y' AND  ISNULL(A.CANCELLED,'N')<>'Y' AND  A.DIVCODE='" & divcode & "' AND A.INV_TYPE NOT LIKE 'W%' AND A.CUST_CODE=B.SLCODE  AND DATE='" & Format(StkCloseDate, "YYYY-MM-DD") & "' order by moddate desc,inv_no desc", db
''        qry = "Select top 1  a.inv_type as InvoiceType,a.Inv_no as InvoiceNo from Ig_Rinvhd A where isnull(AppFlg,'N')='N' and isnull(irn_no,'')='' and divcode = '" & divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Inv_no not in (select inv_no from ig_routpassdt b where a.divcode=b.divcode  and a.Inv_no=b.Inv_no and a.inv_type=b.inv_tye )"
'        Call CanDelQry
'        Buttonframe.Enabled = True
'    End If
'Exit Sub
'cmdCanDelOk_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmdCanDelOk_Click of Form Waste Invoice", vbInformation, head
'End Sub
'
'


Private Sub ExportWSalesInvPdf()

    If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "can" Or UCase(usrid) = "KSL" Then
        Dim strNewFile As String
        strNewFile = ""
        Dim fso As New FileSystemObject
        Dim totcnt As Integer
        totcnt = 0
        
'        If Not (fso.FolderExists(App.Path & "\WSALESINVOICE" & CustId)) Then
'            fso.CreateFolder (App.Path & "\WSALESINVOICE" & CustId)
'        End If
        If Not (fso.FolderExists(KALFOLDERDATA & "\WSALESINVOICE" & CustID)) Then
            fso.CreateFolder (KALFOLDERDATA & "\WSALESINVOICE" & CustID)
        End If
        
        
        Set RsCnt = New Recordset
        RsCnt.Open "select isnull(max(opt_count),0)optcnt from Ig_Inv_Automail where divcode='" & Divcode & "' and inv_no='" & Trim(txtfields(1).Text) & "' and INV_TYPE='" & Trim(txtfields(0).Text) & "' and Module='LOCAL SALES' and opt_mod='" & Opt & "' and date = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not RsCnt.EOF Then
            totcnt = RsCnt(0)
            opmod = UCase(Opt) & "-" & totcnt
        End If
        
        
        Dim sFilePath As String
        Set fso = New FileSystemObject
        
'        If totcnt = 0 And Opt = "" Then
'            sFilePath = App.Path & "\LSALESINVOICE" & CustId & "\" & divcode & "-INVNO-" & Trim(txtFields(1).Text) + "-INVTYPE-" + Trim(txtFields(0).Text) + "-DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) & ".pdf"
'        Else
            'sFilePath = App.Path & "\WSALESINVOICE" & CustId & "\" & opmod & "-" & divcode & "-INVNO-" & Trim(txtfields(1).Text) + "-INVTYPE-" + Trim(txtfields(0).Text) + "-DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) & ".pdf"
'        End If
           ' sFilePath = App.Path & "\WSALESINVOICE" & CustId & "\" & divcode & "-InvNo-" & Trim(txtfields(1).Text) + "-InvType-" & Trim(txtfields(0).Text) + "  DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Trim(Left(Trim(txtfields(7).Text), 15)) & ".pdf"
            sFilePath = KALFOLDERDATA & "\WSALESINVOICE" & CustID & "\" & Divcode & "-InvNo-" & Trim(txtfields(1).Text) + "-InvType-" & Trim(txtfields(0).Text) + "  DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Trim(Left(Trim(txtfields(7).Text), 15)) & ".pdf"
            'sFilePath = App.Path & "\WSALESINVOICE" & CustId & "\" & divcode & "-InvNo-" & Trim(txtfields(1).Text) + "-InvType-" & Trim(txtfields(0).Text) + "  DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(txtfields(7).Text), 15) & ""
         Set lobj_cdomsg = Nothing
        If fso.FileExists(sFilePath) Then

        If Opt <> "add" And Opt <> "mod" Then
            If MsgBox("Invoice Print Already Exists!!! Do you want to override In server?", vbYesNo, head) = vbNo Then Exit Sub
            End If
        End If

        Dim CrApp As CRAXDRT.Application
        Dim oRpt As CRAXDRT.Report
        
        Set CrApp = New CRAXDRT.Application
        Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepWSales.rpt", 1)
        
        oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
        
        oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
        oRpt.ParameterFields.Item(2).AddCurrentValue txtfields(1).Text
        oRpt.ParameterFields.Item(3).AddCurrentValue txtfields(0).Text
        'oRpt.ParameterFields.Item(4).AddCurrentValue LocalIPAdd1
 
        oRpt.ExportOptions.DiskFileName = sFilePath
        oRpt.ExportOptions.DestinationType = crEDTDiskFile
        oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
        oRpt.ExportOptions.PDFExportAllPages = True
        oRpt.ExportOptions.PDFExportAllPages = True
        oRpt.ExportOptions.PDFExportAllPages = True
 
        oRpt.Export False
        
       ' MsgBox "PDF File generated sucessfully.", vbInformation, head
        
    End If
    MailFlg = "N"
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Waste Invoice for Invoice form"
End Sub
Private Sub LogTransaction()
                ''28-11-2019 Log table created
Set RsTransLog = New Recordset
RsTransLog.Open "select * from wsales_trans_log where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    
    RsTransLog.AddNew
    RsTransLog("Divcode") = Divcode
    RsTransLog("moduleNo") = ModuleNo
    RsTransLog("Trans_Module") = "RM Waste Sales"
    RsTransLog("Trans_Name") = heading
    RsTransLog("Trans_Mod") = "DEL"
    RsTransLog("Trans_Host") = LocalHost
    RsTransLog("Trans_IPADD") = LocalIPAdd
    RsTransLog("Trans_UserId") = usrid
    RsTransLog("Trans_date") = Format(Now, "yyyy-MM-dd hh:mm:ss")
    RsTransLog("docno") = Trim(txtfields(1).Text)
    RsTransLog("SDI_TYPE") = Trim(txtfields(0).Text)
    RsTransLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
    RsTransLog("custcode") = txtfields(6).Text
    RsTransLog("agentcode") = txtfields(8).Text
RsTransLog.UpdateBatch adAffectAll
End Sub
Private Sub InvoicenoUpdate()
 
    Set Rsgno = New Recordset
    If UCase(CustID) = "ASM" Then
        Rsgno.Open "exec Ksp_wsales_Invoice_gst '" & Divcode & "','" & txtfields(1).Text & "','" & txtfields(0).Text & "','" & Right(LocalIPAdd, 3) & "' ", DB
    Else
        Rsgno.Open "exec Ksp_wsales_Invoice_gst '" & Divcode & "','" & txtfields(1).Text & "','" & txtfields(0).Text & "' ", DB
    End If
    
    DB.Execute "Update Ig_Rinvhd set Invoice_No ='" & Rsgno("inv_noPrefix") & "' where divcode='" & Divcode & "' and inv_no='" & txtfields(1).Text & "' and inv_type='" & txtfields(0).Text & "' "

End Sub

Private Sub Find(tol As Object)
    On Error Resume Next
    tol(0).Enabled = False 'add
    tol(1).Enabled = False 'mod
    tol(2).Enabled = False 'del
    tol(3).Enabled = False  'LIST
    tol(4).Enabled = False  'Find
    tol(5).Enabled = False  'FIRST
    tol(6).Enabled = False  'NEXT
    tol(7).Enabled = False  'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
    tol(12).Enabled = True 'PRINT
End Sub
Private Sub LoadGAtePassPrint()
        Dim CryCls_WasteOutpass As New clsCrystal
        Set CryCls_WasteOutpass.cryRept = Cry_GatepassInv_PGT
   
        CryCls_WasteOutpass.CrystalPrint

        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"
 
        CrystalReport1.ParameterFields(0) = "@DIVCODE;" & Divcode
        CrystalReport1.ParameterFields(1) = "@INV_NO;" & txtfields(3).Text
        CrystalReport1.ParameterFields(2) = "@INV_type;" & txtfields(0).Text
        CrystalReport1.ParameterFields(3) = "@DATE;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized

        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
End Sub
