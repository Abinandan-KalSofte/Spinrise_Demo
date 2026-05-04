VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmArrival 
   Caption         =   "Arrival"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   ForeColor       =   &H80000009&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport crr 
      Left            =   1485
      Top             =   8535
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
      WindowShowPrintSetupBtn=   -1  'True
      WindowShowRefreshBtn=   -1  'True
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   33
      Top             =   -120
      Width           =   11310
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5190
         Picture         =   "RMIArrival.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   70
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   105
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":0442
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "RMIArrival.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   68
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":0AE1
         Height          =   510
         Index           =   11
         Left            =   5760
         Picture         =   "RMIArrival.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit  (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":12C0
         Height          =   510
         Index           =   10
         Left            =   4710
         Picture         =   "RMIArrival.frx":15CA
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel   (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":1946
         Height          =   510
         Index           =   9
         Left            =   4185
         Picture         =   "RMIArrival.frx":1C50
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save  (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":1FF2
         Height          =   510
         Index           =   8
         Left            =   3660
         Picture         =   "RMIArrival.frx":243C
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record  (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3135
         Picture         =   "RMIArrival.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record  (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":2F38
         Height          =   510
         Index           =   6
         Left            =   2610
         Picture         =   "RMIArrival.frx":3382
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record  (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":36CF
         Height          =   510
         Index           =   5
         Left            =   2085
         Picture         =   "RMIArrival.frx":3B19
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record  (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":3E7E
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
         Picture         =   "RMIArrival.frx":4188
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete  (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":4524
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIArrival.frx":482E
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrival.frx":4BA8
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "RMIArrival.frx":4EB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   9330
         TabIndex        =   35
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7800
         TabIndex        =   34
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   32
      Top             =   8190
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10584
            MinWidth        =   10584
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "27/04/2026"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "06:04 PM"
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
      Height          =   7245
      Left            =   480
      TabIndex        =   36
      Top             =   990
      Width           =   9915
      _ExtentX        =   17489
      _ExtentY        =   12779
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "RMIArrival.frx":5245
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         Height          =   7140
         Left            =   105
         TabIndex        =   37
         Top             =   30
         Width           =   9690
         Begin VB.CommandButton Command4 
            Caption         =   "&Arrival"
            Default         =   -1  'True
            Height          =   315
            Left            =   8160
            TabIndex        =   96
            Top             =   240
            Width           =   1260
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "Line_No"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   34
            Left            =   6495
            MaxLength       =   30
            TabIndex        =   94
            Top             =   4455
            Width           =   2565
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "plcode"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   33
            Left            =   1635
            MaxLength       =   4
            TabIndex        =   92
            Top             =   4455
            Width           =   975
         End
         Begin VB.TextBox Text10 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2655
            Locked          =   -1  'True
            TabIndex        =   91
            TabStop         =   0   'False
            Top             =   4455
            Width           =   2805
         End
         Begin MSComCtl2.DTPicker dtpLorryinDt 
            Height          =   285
            Left            =   1650
            TabIndex        =   85
            Top             =   4110
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   71106561
            CurrentDate     =   41060
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "Gincode"
            Height          =   330
            Index           =   32
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   97
            Top             =   3045
            Width           =   975
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   31
            Left            =   2640
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   23
            TabStop         =   0   'False
            Top             =   3045
            Width           =   6810
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "catcd"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   29
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   75
            Top             =   495
            Width           =   1020
         End
         Begin VB.TextBox Text9 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   74
            TabStop         =   0   'False
            Text            =   " "
            Top             =   495
            Width           =   4500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "Sno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   30
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   21
            Top             =   2640
            Width           =   2580
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "freight"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#,##0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   14
            Left            =   8085
            TabIndex        =   20
            Top             =   2295
            Width           =   1350
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   19
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2295
            Width           =   4515
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacode"
            Height          =   330
            Index           =   4
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   16
            Top             =   1950
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "weignment"
            Height          =   330
            Index           =   13
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   17
            Top             =   2295
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   28
            Left            =   8430
            MaxLength       =   10
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   6735
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   27
            Left            =   7035
            MaxLength       =   10
            TabIndex        =   64
            TabStop         =   0   'False
            Top             =   6735
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   26
            Left            =   5610
            MaxLength       =   10
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   6735
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   25
            Left            =   4230
            MaxLength       =   10
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   6735
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   89
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   54
            TabStop         =   0   'False
            Top             =   855
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   90
            Left            =   3570
            MaxLength       =   10
            TabIndex        =   53
            TabStop         =   0   'False
            Top             =   855
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   91
            Left            =   8070
            MaxLength       =   10
            TabIndex        =   52
            TabStop         =   0   'False
            Top             =   840
            Width           =   1350
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   95
            Left            =   5880
            MaxLength       =   10
            TabIndex        =   51
            TabStop         =   0   'False
            Top             =   855
            Width           =   1305
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   6420
            Locked          =   -1  'True
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   3390
            Width           =   3030
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   23
            Left            =   6420
            Locked          =   -1  'True
            MaxLength       =   30
            TabIndex        =   29
            TabStop         =   0   'False
            Top             =   3735
            Width           =   3030
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "godown"
            Height          =   330
            Index           =   22
            Left            =   5415
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   28
            Top             =   3735
            Width           =   975
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "lrno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   21
            Left            =   1650
            MaxLength       =   30
            TabIndex        =   27
            Top             =   3735
            Width           =   2565
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   10
            Top             =   135
            Width           =   1020
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1950
            Width           =   6750
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1605
            Width           =   6750
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   2685
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   13
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1260
            Width           =   6750
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            Height          =   330
            Index           =   2
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   12
            Top             =   1260
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            Height          =   330
            Index           =   3
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            Top             =   1605
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "lorrynos"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   1650
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   24
            Top             =   3390
            Width           =   2565
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "carcode"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   5415
            MaxLength       =   4
            TabIndex        =   25
            Top             =   3390
            Width           =   975
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   255
            Index           =   0
            Left            =   5880
            TabIndex        =   11
            Top             =   195
            Width           =   1035
            _ExtentX        =   1826
            _ExtentY        =   450
            _Version        =   393216
            BorderStyle     =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
            Left            =   5865
            TabIndex        =   38
            Top             =   150
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   168099841
            CurrentDate     =   36831
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00E0E0E0&
            Height          =   345
            Left            =   8100
            Locked          =   -1  'True
            TabIndex        =   30
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2295
            Visible         =   0   'False
            Width           =   1320
         End
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   1530
            Left            =   15
            TabIndex        =   69
            Top             =   4950
            Width           =   9660
            _Version        =   524288
            _ExtentX        =   17039
            _ExtentY        =   2699
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            DisplayRowHeaders=   0   'False
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
            ProcessTab      =   -1  'True
            RowHeaderDisplay=   0
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "RMIArrival.frx":5261
            AppearanceStyle =   0
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DATE1"
            Height          =   330
            Index           =   3
            Left            =   6165
            TabIndex        =   22
            Top             =   2640
            Width           =   1050
            _ExtentX        =   1852
            _ExtentY        =   582
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
         Begin MSComCtl2.DTPicker dtpLorryinTime 
            Height          =   285
            Left            =   3000
            TabIndex        =   86
            Top             =   4110
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   168951810
            CurrentDate     =   41060
         End
         Begin MSComCtl2.DTPicker dtpLorryOutDt 
            Height          =   285
            Left            =   5400
            TabIndex        =   88
            Top             =   4140
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   168951809
            CurrentDate     =   41060
         End
         Begin MSComCtl2.DTPicker dtpLorryOutTime 
            Height          =   285
            Left            =   6750
            TabIndex        =   89
            Top             =   4140
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   168951810
            CurrentDate     =   41060
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "Line No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   5520
            TabIndex        =   95
            Top             =   4500
            Width           =   600
         End
         Begin VB.Label Label45 
            Caption         =   "Plant Name"
            ForeColor       =   &H00FF0000&
            Height          =   285
            Left            =   195
            TabIndex        =   93
            Top             =   4515
            Width           =   1410
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Out Date"
            Height          =   195
            Left            =   4320
            TabIndex        =   87
            Top             =   4170
            Width           =   1035
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            Caption         =   "Lorry In Date"
            Height          =   195
            Left            =   180
            TabIndex        =   84
            Top             =   4170
            Width           =   915
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "Ginner "
            Height          =   195
            Left            =   180
            TabIndex        =   83
            Top             =   3105
            Width           =   510
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   165
            TabIndex        =   76
            Top             =   555
            Width           =   630
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward Date"
            Height          =   195
            Left            =   4365
            TabIndex        =   73
            Top             =   2715
            Width           =   1470
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward No."
            Height          =   195
            Left            =   180
            TabIndex        =   71
            Top             =   2715
            Width           =   1380
         End
         Begin VB.Label Label22 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Freight"
            Height          =   195
            Left            =   7200
            TabIndex        =   41
            Top             =   2370
            Width           =   600
         End
         Begin VB.Label Label36 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Nett Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   8475
            TabIndex        =   67
            Top             =   6480
            Width           =   945
         End
         Begin VB.Label Label35 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Excess Moisture"
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   6750
            TabIndex        =   65
            Top             =   6480
            Width           =   1305
         End
         Begin VB.Label Label34 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Tare Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   5595
            TabIndex        =   63
            Top             =   6480
            Width           =   945
         End
         Begin VB.Label Label33 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Gross Wt."
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   4230
            TabIndex        =   61
            Top             =   6480
            Width           =   1020
         End
         Begin VB.Label Label32 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Total"
            ForeColor       =   &H000000FF&
            Height          =   225
            Left            =   3420
            TabIndex        =   60
            Top             =   6810
            Width           =   480
         End
         Begin VB.Label lblcontract 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Ordered"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   180
            TabIndex        =   58
            Top             =   915
            Width           =   1035
         End
         Begin VB.Label lblarrived 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Arrived"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   2745
            TabIndex        =   57
            Top             =   930
            Width           =   765
         End
         Begin VB.Label lblbalance 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Balance"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   7320
            TabIndex        =   56
            Top             =   915
            Width           =   900
         End
         Begin VB.Label Label94 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            BackStyle       =   0  'Transparent
            Caption         =   "Cancelled"
            ForeColor       =   &H00000000&
            Height          =   225
            Left            =   4815
            TabIndex        =   55
            Top             =   930
            Width           =   795
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "L.R. No."
            Height          =   195
            Left            =   180
            TabIndex        =   49
            Top             =   3810
            Width           =   600
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4320
            TabIndex        =   48
            Top             =   3810
            Width           =   600
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Weighnment  by"
            Height          =   195
            Left            =   180
            TabIndex        =   47
            Top             =   2355
            Width           =   1155
         End
         Begin VB.Line Line6 
            BorderColor     =   &H00FFFFFF&
            X1              =   -15
            X2              =   9645
            Y1              =   4815
            Y2              =   4815
         End
         Begin VB.Line Line5 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   9690
            Y1              =   4800
            Y2              =   4800
         End
         Begin VB.Line Line4 
            BorderColor     =   &H00FFFFFF&
            X1              =   15
            X2              =   9570
            Y1              =   3000
            Y2              =   3000
         End
         Begin VB.Line Line3 
            BorderColor     =   &H00808080&
            X1              =   120
            X2              =   9655
            Y1              =   3015
            Y2              =   3015
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00FFFFFF&
            X1              =   30
            X2              =   9565
            Y1              =   1215
            Y2              =   1215
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   0
            X2              =   9660
            Y1              =   1230
            Y2              =   1230
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4845
            TabIndex        =   46
            Top             =   225
            Width           =   825
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   45
            Top             =   195
            Width           =   735
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   44
            Top             =   1335
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   180
            TabIndex        =   43
            Top             =   2025
            Width           =   495
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
            Height          =   195
            Left            =   180
            TabIndex        =   42
            Top             =   1650
            Width           =   465
         End
         Begin VB.Label Label20 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Lorry No."
            Height          =   195
            Left            =   180
            TabIndex        =   40
            Top             =   3450
            Width           =   645
         End
         Begin VB.Label Label21 
            Caption         =   "Transporter Name"
            ForeColor       =   &H00FF0000&
            Height          =   420
            Left            =   4320
            TabIndex        =   39
            Top             =   3375
            Width           =   960
         End
      End
   End
   Begin VB.Frame Frame14 
      Height          =   4755
      Left            =   120
      TabIndex        =   77
      Top             =   1920
      Visible         =   0   'False
      Width           =   12420
      Begin MSComctlLib.ListView ListPO 
         Height          =   3690
         Left            =   30
         TabIndex        =   90
         Top             =   450
         Width           =   12330
         _ExtentX        =   21749
         _ExtentY        =   6509
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
      Begin VB.ListBox LstPO 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   780
         ItemData        =   "RMIArrival.frx":5692
         Left            =   30
         List            =   "RMIArrival.frx":5694
         Style           =   1  'Checkbox
         TabIndex        =   78
         Top             =   675
         Visible         =   0   'False
         Width           =   11130
      End
      Begin VB.CommandButton StockOk 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   4950
         TabIndex        =   79
         Top             =   4215
         Width           =   945
      End
      Begin VB.CommandButton StockClose 
         Cancel          =   -1  'True
         Caption         =   "&Close"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   6510
         TabIndex        =   80
         Top             =   4230
         Width           =   945
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H00800000&
         Caption         =   "         No Date        Variety Name                  Balance Qty       Rate  Unit          Division                  "
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   90
         Index           =   10
         Left            =   30
         TabIndex        =   82
         Top             =   435
         Visible         =   0   'False
         Width           =   12345
      End
      Begin VB.Label Label107 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Order Listing"
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
         Left            =   30
         TabIndex        =   81
         Top             =   105
         Width           =   12345
      End
   End
   Begin VB.Label Label40 
      AutoSize        =   -1  'True
      Caption         =   "Weighment"
      Height          =   195
      Left            =   0
      TabIndex        =   72
      Top             =   0
      Width           =   810
   End
   Begin VB.Label Label30 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   405
      Left            =   6750
      TabIndex        =   50
      Top             =   720
      Width           =   3885
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Arrival"
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
      Left            =   525
      TabIndex        =   31
      Top             =   540
      Width           =   900
   End
End
Attribute VB_Name = "FrmArrival"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rstPARAM As Recordset
Dim rstSLOTNO As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim co As Integer
Dim oText As TextBox
Dim DB As Connection
Dim Arrdespatch_Flg, MasterEntryFlg As String
Dim oldcontdt As Date
Dim DelReasonCode As String
Dim QTY As Integer
Dim Sname As String
Dim sCode As String
Dim gCode As String
Dim sLorryNo As String
Dim sOrdNo As String
Dim gDivision As String
Dim iLenght, iString As String
Dim STATEFLAG, SuppType As String
Dim sDivCode As String
Dim StrAppQry As String
Dim WContNo, WcontDt, WSupCd As String
''For spread Grid Col position
Const IContno As Integer = 1
Const IContdt As Integer = 2
Const IVarcode As Integer = 3
Const IVarName As Integer = 4
Const Iplotno As Integer = 5
Const Iprno As Integer = 6
Const Ipressmarkno As Integer = 7
Const Iunit As Integer = 8
Const Imixcount As Integer = 9
Const Imixgrp As Integer = 10
Const Icandyrate As Integer = 11
Const Ibalqty As Integer = 12
Const IFullTruckWt As Integer = 13
Const IEmptyTruckWt As Integer = 14
Const Igrosswt As Integer = 15
Const Itarewt As Integer = 16
'---------------------
Dim iTrashPer As Integer
Dim iMoitureper As Integer
Dim iMoiturewt As Integer
Dim iNetwt, iDPlanNO, iDPlanDT, ICommr_Wt As Integer
Dim WGBales As Double
Dim WGGrossWt As Double
Dim rssarrmod As Recordset

'====Freight amt fa posting=================================
    Dim iJVTc As Integer
    Dim sSLcode As String
    Dim sSLName As String
    Dim sGLCode As String
    Dim iVocno As Integer
    Dim iVocdt As String
Private Sub Command4_Click()
On Error Resume Next
If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT Baleno FROM RM_ArrivalData WHERE divcode='" & Divcode & "' and isnull(arrivalflg,'N')<>'Y' ", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
            StatusBar1.Panels(2).Text = "Select Arrival Data"
            LookUp.Clear = True
            LookUp.query = "select  a.ContNo 'Contract No.',a.Contdt 'Contract Date',a.Supcd 'Supplier Code',b.slname 'Supplier Name' ,count(a.baleno) Bales,Sum(GrossWt) 'Gross Wt.' , sum(netwt) 'Net Wt.' ,a.Docno 'Doc. No.',A.docdt 'Doc. Date',b.SuppType,b.GSTINNO,b.GSTSTATECODE, b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from RM_ArrivalData a inner join rm_cont c on c.contno=a.contno and c.contdt=a.contdt and a.divcode=c.divcode inner join fa_slmas b on a.supcd=b.slcode where a.divcode='" & Divcode & "' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' group by  a.ContNo ,a.Contdt,a.Supcd,b.slname ,a.Docno ,A.docdt,b.SuppType,b.GSTINNO ,b.GSTSTATECODE , b.City, b.brcode,GROUPCODE"
            LookUp.DefCol = "Supplier Name"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "1500,1500,1000,3500,1000,1000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                WContNo = LookUp.Fields(0)
                WcontDt = LookUp.Fields(1)
                WSupCd = LookUp.Fields(2)
                spdVar.Row = spdVar.ActiveRow
                spdVar.Col = 5
                spdVar.Action = ActionActiveCell
                spdVar.SetText Ibalqty, spdVar.ActiveRow, LookUp.Fields("Bales")
                spdVar.SetText Igrosswt, spdVar.ActiveRow, LookUp.Fields("Gross Wt.")
                spdVar.SetText iNetwt, spdVar.ActiveRow, LookUp.Fields("Net Wt.")
                WGBales = LookUp.Fields("Bales")
                WGNetwt = LookUp.Fields("Net Wt.")
                WGGrossWt = LookUp.Fields("Gross Wt.")
                txtfields(2).Text = LookUp.Fields("Supplier Code")
                Text1.Text = LookUp.Fields("Supplier Name")
                SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("Supplier Code") & "'", DB
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
                txtfields(2).Text = LookUp.Fields("Supplier Code")
                sCode = LookUp.Fields("Supplier Code")
                Sname = LookUp.Fields("Supplier Name")
                Text1.Text = LookUp.Fields("Supplier Name")
                custgrp = LookUp.Fields("GROUPCODE")
                If globalarrivalorder = "C" Then
                     If custgrp = "" Then
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0  AND supcd='" & LookUp.Fields("Supplier Code") & "' and a.contno='" & val(WContNo) & "' and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X order by cast(contno as VARCHAR(10)) "
                    Else
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE and a.contno='" & val(WContNo) & "'  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and a.contno='" & val(WContNo) & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE and a.contno='" & val(WContNo) & "'  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE and a.contno='" & val(WContNo) & "'  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "' )X order by cast(contno as VARCHAR(10)) "
                    End If
                Else
                    If custgrp = "" Then
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE and a.contno='" & val(WContNo) & "' AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' and a.contno='" & val(WContNo) & "' AND supcd='" & LookUp.Fields("Supplier Code") & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as VARCHAR(10)) "
                    Else
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and a.contno='" & val(WContNo) & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "'" & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and divcode='" & Divcode & "' and a.contno='" & val(WContNo) & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' and a.contno='" & val(WContNo) & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)""balqty"",candyrate,rateunit,arrivaltype from rm_cont a,RM_VAR C,FA_SLMAS fs where A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' and a.contno='" & val(WContNo) & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "')X order by cast(contno as VARCHAR(10)) "
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
                Do Until Lrs.EOF
                    Set itmX = ListPO.ListItems.ADD(, , Lrs("Contno"))
                    itmX.Tag = Lrs("Contno")
                    itmX.SubItems(1) = Format(Lrs("contdt"), "dd/mm/yyyy")
                    itmX.SubItems(2) = Lrs("Varcode")
                    itmX.SubItems(3) = Lrs("Varname")
                    itmX.SubItems(4) = Lrs("BalQty")
                    itmX.SubItems(5) = Lrs("candyrate")
                    itmX.SubItems(6) = Lrs("Rateunit")
                    itmX.SubItems(7) = Lrs!Divcode
                    Lrs.MoveNext
                Loop
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                ListPO.SetFocus
                Exit Sub
                LookUp.Clear = True
            Else
                txtfields(22).Text = ""
                txtfields(23).Text = ""
                txtfields(22).SetFocus
            End If
    End If
    BUTTON(9).Enabled = True
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
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Arrival"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
gCode = ""
Select Case Index
Case 0
  Call AddRecord
Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
    'Modification
    Set rsz = New Recordset
    rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_arrival aa where divcode='" & Divcode & "'  and arrno not in (select arrno from rm_lot a where a.arrno=aa.arrno and a.divcode=aa.divcode and aa.ARRDATE=a.arrdt and a.pjno is not null and a.supcd=aa.supcd and aa.varcode=a.varcode)   and isnull(lotrecqty,0)=0", DB
   
    txtfields(25).Text = ""
    txtfields(26).Text = ""
    txtfields(27).Text = ""
    txtfields(28).Text = ""
    txtfields(89).Text = ""
    txtfields(90).Text = ""
    txtfields(95).Text = ""
    txtfields(91).Text = ""
    If Not Rs(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
       
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for modification"
        LookUp.Clear = True
        LookUp.query = "select distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier Name"" from rm_arrival a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               
               Set adoPrimaryRS = New Recordset
               adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL aa WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and (passed is null or passdt is null)  and arrno not in (select arrno from rm_lot a where a.arrno=aa.arrno and a.divcode=aa.divcode and aa.ARRDATE=a.arrdt and a.pjno is not null and a.supcd=aa.supcd and aa.varcode=a.varcode)  and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic

               If adoPrimaryRS.RecordCount <> 0 Then
                   Set adoPrimaryRS = New Recordset
                    adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL aa WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and (passed is null or passdt is null) and lotno is null and arrno not in (select arrno from rm_lot a where a.arrno=aa.arrno and a.divcode=aa.divcode and aa.ARRDATE=a.arrdt and a.pjno is not null and a.supcd=aa.supcd and aa.varcode=a.varcode) and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
                   Set rssarrmod = New Recordset
                   rssarrmod.Open "select ARRNO,catcd,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,weignment,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,PlCode,Line_No,Globaldiv,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
               
                   If adoPrimaryRS.RecordCount = 0 Then
                       MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                       Set adoPrimaryRS = New Recordset
                       adoPrimaryRS.Open "select distinct ARRNO, catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,Globaldiv,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                       
                       Exit Sub
                   End If
               Else
                   MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
                   Set adoPrimaryRS = New Recordset
                   adoPrimaryRS.Open "select distinct ARRNO,catcd,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode,Globaldiv,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                   
                   Exit Sub
               End If
               Call ArrivalDisplay
               Call bindcontls
               Call ENABLCONTLS
               If Not adoPrimaryRS.EOF Then
                    txtfields(2).Text = adoPrimaryRS!SUPCD
                    txtfields(11).Text = adoPrimaryRS!LORRYNOS
                    txtfields(21).Text = adoPrimaryRS!Lrno
                    txtfields(22).Text = adoPrimaryRS!godown
                    txtfields(14).Text = adoPrimaryRS!Freight
               End If
               Dim iIndex As Integer
               For iIndex = 0 To 25 Step 1
                  Call Txtfields_Change(iIndex)
               Next
               If Opt = "del" Then
                 Call disablcontls
               End If
            For I = 0 To 6
                txtfields(I).Locked = True
            Next
            Text4.Locked = True

            txtfields(0).Locked = True
            txtfields(3).Locked = True
            txtfields(4).Locked = True
 
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = True
            Call disablcontls
            txtfields(13).Locked = False
            txtfields(3).Locked = True
            txtfields(4).Locked = True
            txtfields(0).Locked = True
            txtfields(30).Locked = False
            txtfields(14).Locked = False
            SSTab1.Enabled = True
            FreightAmtPosting "mod", "mod"
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                    Exit Sub
                End If
            End If
        End If
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_arrival where divcode='" & Divcode & "' and isnull(lotrecqty,0)=0", DB
    txtfields(25).Text = ""
    txtfields(26).Text = ""
    txtfields(27).Text = ""
    txtfields(28).Text = ""
    txtfields(89).Text = ""
    txtfields(90).Text = ""
    txtfields(95).Text = ""
    txtfields(91).Text = ""
    If Not Rs(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
      
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Deletion"
        LookUp.Clear = True
        LookUp.query = "select DISTINCT arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier Name""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               BUTTON(9).Enabled = True
               Set adoPrimaryRS = New Recordset
               adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and lotno is null and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
               If adoPrimaryRS.RecordCount <> 0 Then
                   Set adoPrimaryRS = New Recordset
                   adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and lotno is null  and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
                   If adoPrimaryRS.RecordCount = 0 Then
                       MsgBox "Lot/Bale Details Entered for this arrival. Hence Modification Not allowed!", vbInformation, head
                       Exit Sub
                   End If
               Else
                   MsgBox "Inspection completed for this arrival. Hence Modification not allowed!", vbInformation, head
                   Exit Sub
               End If
               Call ArrivalDisplay
               Call bindcontls
               Call ENABLCONTLS
               If Opt = "del" Then
                 Call disablcontls
               End If
            For I = 0 To 6
            txtfields(I).Locked = True
            Next
            txtfields(13).Locked = True
            Text4.Locked = True

            txtfields(0).Locked = True
            txtfields(3).Locked = True
            txtfields(4).Locked = True
            Call adddelmod(BUTTON)
            Call disablcontls
            txtfields(0).Locked = True
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

Case 4
        Opt = "fnd"
        desc.Caption = "Find"
       
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Find"
        LookUp.Clear = True
        LookUp.query = "select distinct arrno""ArrivalNumber"",arrdate""Date"",slname""Supplier"",contno""PurchaseOrderNo."",plotno ""SupplierLotNo."" from rm_arrival a,fa_slmas b,rm_var c where a.varcode=c.varcode and a.supcd=b.slcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
        LookUp.DefCol = "Supplier"
        LookUp.Caption = "Arrival Listing"
        LookUp.ALIGN = "1500,1500,4000,1600,1600"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,isnull(gincode,'') gincode,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'  and  divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
            If adoPrimaryRS.RecordCount > 0 Then
                Set rssarrmod = New Recordset
                rssarrmod.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,LRNO,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE ARRNO='" & LookUp.Fields(0) & "' AND ARRDATE='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'   and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
                 Call ArrivalDisplay
                Call ENABLCONTLS
                Call bindcontls
                If Opt = "del" Then
                  Call disablcontls
                End If
                For I = 0 To 6
                    txtfields(I).Locked = True
                Next
                Text4.Locked = True

                txtfields(0).Locked = True
                txtfields(3).Locked = True
                txtfields(4).Locked = True
                BUTTON(10).Enabled = True
                Call disablcontls
                txtfields(13).Locked = False
                txtfields(0).Locked = True
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = False
            Else
            End If
        Else
            Call BUTTON_Click(10)
        End If
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        If Not adoPrimaryRS.EOF Or Not adoPrimaryRS.BOF Then adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling first procedure from module
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
    
        If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
            adoPrimaryRS.MoveLast
        Else
            adoPrimaryRS.MoveNext
        End If
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
    End If
        ' show the current record
        Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
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
            StatusBar1.Panels(2).Text = "First Record"
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
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        StatusBar1.Panels(2).Text = "First Record"
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
        If Not adoPrimaryRS.EOF Or Not adoPrimaryRS.BOF Then adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        Call navi(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub
GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        For lr = 1 To spdVar.MaxRows
            a = Ibalqty
            If val(GetText(spdVar, a, lr)) = 0 Then
                MsgBox "Please enter Quantity", vbInformation, head
                Exit Sub
            End If
            B = Igrosswt
            If val(GetText(spdVar, B, lr)) = 0 Then
                MsgBox "Please enter Gross Weight", vbInformation, head
                spdVar.Col = B
                spdVar.SetFocus
                Exit Sub
            End If
            c = Iplotno
            If Trim(GetText(spdVar, c, lr)) = "" Then
                MsgBox "Please enter Party Lot No.", vbInformation, head
                spdVar.Col = c
                spdVar.SetFocus
                Exit Sub
            End If
        Next
        If Trim(txtfields(9).Text) = "" Then
            MsgBox "Please Enter Carrier", vbInformation, head
            txtfields(9).SetFocus
            Exit Sub
        End If
        If Trim(txtfields(4).Text) = "" Then
            MsgBox "Please enter Area Code", vbInformation, head
            txtfields(4).SetFocus
            Exit Sub
        End If
    End If

If Opt <> "del" Then
    On Error GoTo ERRDB
    DB.BeginTrans
End If
    If Opt = "add" Then
        txtfields(0).Text = MaxNo
        Set rsarrival = New Recordset
        rsarrival.Open "select divcode,ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK," & _
                    " CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG," & _
                    " ARRDATE,CONTDT,PLOTDT,lotno,lottype,lotdt,weignment,godown,LRNO,MOITURE,moisture_per," & _
                    " moisture_et,catcd,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,trashper,GinCode,CarJV_TC," & _
                    " CarJV_VocNo,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,Globaldiv,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        For lr = 1 To spdVar.MaxRows
            rsarrival.AddNew
            rsarrival("ARRNO") = MaxNo
            rsarrival("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsarrival("supcd") = Trim(txtfields(2).Text)
            rsarrival("brkcd") = txtfields(3).Text
            rsarrival("godown") = Trim(txtfields(22).Text)
            rsarrival("areacode") = Trim(txtfields(4).Text)
            rsarrival("Lorrynos") = Trim(txtfields(11).Text)
            rsarrival("freight") = val(txtfields(14).Text)
            rsarrival("weignment") = Trim(txtfields(13).Text)
            If txtfields(30).Text <> "" Then
            rsarrival("inwardno") = val(txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rsarrival("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            Set rsVar = New Recordset
            rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & GetText(spdVar, 3, lr) & "'", DB, adOpenStatic
            If rsVar.RecordCount > 0 Then
                rsarrival("CATCD") = rsVar("CATCD")
            End If
            a = IContno
            rsarrival("contno") = GetText(spdVar, a, lr)
            a = IContdt
            rsarrival("contdt") = Format(GetText(spdVar, a, lr), "yyyy-mm-dd")
            rsarrival("lotno") = Null
            rsarrival("lotdt") = Null
            rsarrival("lottype") = "a"
            rsarrival("CARCODE") = CStr(txtfields(9).Text)
            rsarrival("plotdt") = Null
            a = Iunit
            If GetText(spdVar, a, lr) = "Bale" Then
                rsarrival("bbflag") = "B"
            ElseIf GetText(spdVar, a, lr) = "Borah" Then
                rsarrival("bbflag") = "R"
            Else
                rsarrival("bbflag") = "H"
            End If
            rsarrival("divcode") = Divcode
            a = IVarcode
            rsarrival("varcode") = GetText(spdVar, a, lr)
            rsarrival("LRNO") = IIf(txtfields(21).Text = "", 0, txtfields(21).Text)

            rsarrival("PlCode") = Trim(txtfields(33).Text)
            rsarrival("Line_No") = Trim(txtfields(34).Text)
            rsarrival("LR_InDt") = Format(dtpLorryinDt.value, "yyyy-MM-dd")
            rsarrival("LR_InTime") = Format(dtpLorryinTime.value, "yyyy-MM-dd hh:mm:ss")
            rsarrival("LR_OutDt") = Format(dtpLorryOutDt.value, "yyyy-MM-dd")
            rsarrival("LR_OutTime") = Format(dtpLorryOutTime.value, "yyyy-MM-dd hh:mm:ss")
            a = iGinner
            rsarrival("Gincode") = Trim(txtfields(32).Text)
            a = iMoiturewt
            rsarrival("moiture") = GetText(spdVar, a, lr)
            a = Iplotno
            rsarrival("plotno") = GetText(spdVar, a, lr)
            a = Iprno
            rsarrival("prno") = GetText(spdVar, a, lr)
            a = Ipressmarkno
            rsarrival("prmark") = GetText(spdVar, a, lr)
            rsarrival("Globaldiv") = gDivision
            Set RsH = New Recordset
            If globalarrivalorder = "C" Then
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            End If
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH(0)
            End If
            a = Ibalqty
            rsarrival("quantity") = GetText(spdVar, a, lr)
            If ARRIVALTYPE = "P" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ")
                Else
                    DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
                If IsDate(Trim(GetText(spdVar, iDPlanDT, lr))) = True Then
                    DB.Execute "update RM_DespatchDT set  RVDQTY=ISNULL(RVDQTY,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "'  and DIVCODE='" & Divcode & "' and docno='" & val(GetText(spdVar, iDPlanNO, lr)) & "' and docdate='" & Format(Trim(GetText(spdVar, iDPlanDT, lr)), "yyyy-mm-dd") & "' "
                End If
            End If
            a = Imixcount
            rsarrival("cntcode") = GetText(spdVar, a, lr)
            a = IFullTruckWt
            rsarrival("FullTruckWgt") = val(GetText(spdVar, a, lr))
            a = IEmptyTruckWt
            rsarrival("EmptyTruckWgt") = val(GetText(spdVar, a, lr))
            a = Igrosswt
            rsarrival("Grosswt") = val(GetText(spdVar, a, lr))
            rsarrival("DPDocno") = val(GetText(spdVar, iDPlanNO, lr))
            If IsDate(Trim(GetText(spdVar, iDPlanDT, lr))) = True Then
             rsarrival("DPDocDate") = Format(Trim(GetText(spdVar, iDPlanDT, lr)), "yyyy-mm-dd")
            End If
            rsarrival("Commr_Wt") = val(GetText(spdVar, ICommr_Wt, lr))
            a = Itarewt
            rsarrival("tarewt") = val(GetText(spdVar, a, lr))
            a = iTrashPer
            rsarrival("Trashper") = val(GetText(spdVar, a, lr))
            a = iMoitureper
            rsarrival("moisture_per") = val(GetText(spdVar, a, lr))
            a = iMoiturewt
            rsarrival("moisture_et") = val(GetText(spdVar, a, lr))
            a = iNetwt
            rsarrival("netwt") = val(GetText(spdVar, a, lr))
            If ARRIVALTYPE = "K" Then
                If globalarrivalorder = "C" Then
                    DB.Execute ("update rm_cont set RCDKGS=ISNULL(RCDKGS,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and supcd='" & rsarrival("supcd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                Else
                    DB.Execute ("update rm_cont set RCDKGS=ISNULL(RCDKGS,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
                If IsDate(Trim(GetText(spdVar, iDPlanDT, lr))) = True Then
                    DB.Execute "update RM_DespatchDT set  RVDKGS=ISNULL(RVDKGS,0)+" & GetText(spdVar, a, lr) & "  where varcode='" & rsarrival("varcode") & "' and contno='" & rsarrival("contno") & "' and contdt='" & Format(rsarrival("contdt"), "yyyy-mm-dd") & "'  and DIVCODE='" & Divcode & "' and docno='" & val(GetText(spdVar, iDPlanNO, lr)) & "' and docdate='" & Format(Trim(GetText(spdVar, iDPlanDT, lr)), "yyyy-mm-dd") & "' "
                End If
                
            End If
            a = Icandyrate
            rsarrival("ratecy") = val(GetText(spdVar, a, lr))
            
        Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Arrival"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("plcode") = Trim(txtfields(33).Text)
            TrnLog("Line_No") = Trim(txtfields(34).Text)
            TrnLog("docno") = Trim(txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("arrno") = Trim(txtfields(0).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("contno") = rsarrival("contno")
            TrnLog("CONTDT") = Format(rsarrival("contdt"), "yyyy-mm-dd")
            TrnLog("slcode") = txtfields(2).Text
            TrnLog("areacode") = IIf(Trim(txtfields(4).Text) = "", Null, txtfields(4).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
            TrnLog("godown") = Trim(txtfields(22).Text)
            TrnLog("LorryNo") = Trim(txtfields(11).Text)
            TrnLog("Frg_Amt") = val(txtfields(14).Text)
            TrnLog("varcode") = rsarrival("varcode")
            TrnLog("catcd") = Trim(txtfields(29).Text)
            TrnLog("ordqty") = rsarrival("quantity")
            TrnLog("Grosswt") = rsarrival("Grosswt")
            TrnLog("tarewt") = rsarrival("tarewt")
            TrnLog("netwt") = rsarrival("netwt")
            TrnLog("cntcode") = rsarrival("cntcode")
            TrnLog("RateCY") = rsarrival("ratecy")
            TrnLog("LR_INDate") = Format(dtpLorryinDt, "yyyy-mm-dd") & " " & Format(dtpLorryinTime.value, "hh:mm:ss")
            TrnLog("LR_OutDate") = Format(dtpLorryOutDt, "yyyy-mm-dd") & " " & Format(dtpLorryOutTime.value, "hh:mm:ss")
            TrnLog.UpdateBatch adAffectAllChapters
            
        Next
        
            txtfields(0).Text = MaxNo
           rsarrival.UpdateBatch adAffectAllChapters
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
               DB.Execute "Update io_materialInward set po_flg ='Y' where divcode='" & Divcode & "' and sno=" & val(txtfields(30).Text) & " and date1 = '" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "'"
            End If

           Set Rs = New Recordset
           Dim strNo As String
           strNo = ""
            If spdVar.MaxRows = 1 Then
                strNo = GetText(spdVar, 1, 1)
            Else
                For I = 1 To spdVar.MaxRows Step 1
                    strNo = strNo + ", " + GetText(spdVar, 1, I)
                Next
                strNo = Mid(strNo, 2)
            End If
            
            Rs.Open "UPDATE rm_arrival set ReceivedNo = '" & Trim(strNo) & "' where ARRno=" & val(txtfields(0).Text) & " and Arrdate ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and supcd ='" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
           
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                If globalarrivalorder = "C" Then
                     If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'  and (DIVCODE='" & Divcode & "' or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' ))) "
                    End If
                Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'Y' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
                End If
            Next
            
            Dim n As Integer
            Dim iLOT As Integer
            Dim STRlOT As String
            STRlOT = "0"
            iLOT = 0
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
            If globalarrivalorder = "C" Then
                If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and  (DIVCODE='" & Divcode & "' or contno in ((select contno from RM_CONT where cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE='" & globalimportpo & "' and im_ind='I')))   ", DB, adOpenStatic
               End If
            Else
               If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
               End If
           End If
               If Rs.EOF = False Then
               
               If Rs.RecordCount > 1 Then
               Do While Not Rs.EOF
                   iLOT = Rs!sLotno
                   If Rs!recflg <> "Y" Then STRlOT = STRlOT & "," & iLOT
                   iLOT = iLOT + 1
                   Rs.MoveNext
               Loop
                    
                    Set Rs = New Recordset
                    Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                    If globalarrivalorder = "C" Then
                        If Rs(0) = "Y" Then
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
                        Else
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and  (DIVCODE='" & Divcode & "' or contno in ((select contno from RM_CONT where cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE='" & globalimportpo & "' and im_ind='I')))  ", DB, adOpenStatic
                        End If
                    Else
                        If Rs(0) = "Y" Then
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
                        Else
                            Set Rs = New Recordset
                            Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
                        End If
                    End If
             If globalarrivalorder = "C" Then
                If Rs.EOF = False Then
                        s = Right(STRlOT, Len(STRlOT) - 1)
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If
                   Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If
                    End If
             Else
                   If Rs.EOF = False Then
                        s = Right(STRlOT, Len(STRlOT) - 1)
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                   
                   Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                    End If
               End If
               Else
                    If globalarrivalorder = "C" Then
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' "
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                            DB.Execute strSQL
                        End If
                    Else
                        Set Rs = New Recordset
                        Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                            DB.Execute strSQL
                        Else
                            strSQL = "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                            DB.Execute strSQL
                        End If
                    End If
               End If
               End If
            Next
            Call FreightAmtPosting("add")
            DB.CommitTrans
            
            MsgBox "Arrival Saved!. Arrival No. is " & (txtfields(0).Text), vbInformation, head
            Label30.Visible = False
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
        End If
    
    If Opt = "mod" Then
        
        For lr = 1 To spdVar.MaxRows
            rssarrmod("ARRNO") = txtfields(0).Text
            rssarrmod("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rssarrmod("supcd") = Trim(txtfields(2).Text)
            rssarrmod("brkcd") = txtfields(3).Text
            rssarrmod("godown") = Trim(txtfields(22).Text)
            rssarrmod("areacode") = Trim(txtfields(4).Text)
            rssarrmod("Lorrynos") = txtfields(11).Text
            rssarrmod("freight") = val(txtfields(14).Text)
            rssarrmod("weignment") = Trim(txtfields(13).Text)
            If txtfields(30).Text <> "" Then
            rssarrmod("inwardno") = Trim(txtfields(30).Text)
            End If
            If MaskEdBox1(3).Text <> "__/__/____" And MaskEdBox1(3).Text <> "" Then
                rssarrmod("inwarddate") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            a = IContno
            rssarrmod("contno") = GetText(spdVar, a, lr)
            a = IContdt
            rssarrmod("contdt") = Format(GetText(spdVar, a, lr), "yyyy-mm-dd")
            rssarrmod("PlCode") = Trim(txtfields(33).Text)
            rssarrmod("Line_No") = Trim(txtfields(34).Text)
            rssarrmod("Globaldiv") = gDivision
            rssarrmod("LR_InDt") = Format(dtpLorryinDt.value, "yyyy-MM-dd")
            rssarrmod("LR_InTime") = Format(dtpLorryinTime.value, "yyyy-MM-dd hh:mm:ss")
            rssarrmod("LR_OutDt") = Format(dtpLorryOutDt.value, "yyyy-MM-dd")
            rssarrmod("LR_OutTime") = Format(dtpLorryOutTime.value, "yyyy-MM-dd hh:mm:ss")
            rssarrmod("plotdt") = Null
            a = Iunit
            If GetText(spdVar, a, lr) = "Bale" Then
                rssarrmod("bbflag") = "B"
            ElseIf GetText(spdVar, a, lr) = "Borah" Then
                rssarrmod("bbflag") = "R"
            Else
                rssarrmod("bbflag") = "H"
            End If
            rssarrmod("CARCODE") = CStr(txtfields(9).Text)
            a = IVarcode
            rssarrmod("varcode") = GetText(spdVar, a, lr)
            rssarrmod("LRNO") = IIf(txtfields(21).Text = "", 0, txtfields(21).Text)
      
            a = iMoiturewt
            rssarrmod("moiture") = GetText(spdVar, a, lr)
            a = Iplotno
            rssarrmod("plotno") = GetText(spdVar, a, lr)
            a = Iprno
            rssarrmod("prno") = GetText(spdVar, a, lr)
            a = Ipressmarkno
            rssarrmod("prmark") = GetText(spdVar, a, lr)
            a = Ibalqty
            rssarrmod("quantity") = GetText(spdVar, a, lr)
            Set Rst = New Recordset
            Rst.Open "select quantity,GROSSWT from rm_arrival where supcd='" & txtfields(2).Text & "' and varcode='" & rssarrmod("varcode") & "' and arrno=" & adoPrimaryRS("arrno") & " and arrdate='" & Format(adoPrimaryRS("arrdate"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            Set RsH = New Recordset
            If globalarrivalorder = "C" Then
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE from rm_cont where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
            End If
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH(0)
            End If
            If globalarrivalorder = "C" Then
                If ARRIVALTYPE = "P" Then
                    If Not Rst.EOF Then DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & val(GetText(spdVar, a, lr)) - val(Rst("quantity")) & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))")
                End If
            Else
                If ARRIVALTYPE = "P" Then
                   If Not Rst.EOF Then DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0)+" & val(GetText(spdVar, a, lr)) - val(Rst("quantity")) & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'")
                End If
            End If
            a = Imixcount
            rssarrmod("cntcode") = GetText(spdVar, a, lr)
            rssarrmod("DPDocno") = val(GetText(spdVar, iDPlanNO, lr))
            If IsDate(Trim(GetText(spdVar, iDPlanDT, lr))) = True Then
             rssarrmod("DPDocDate") = Format(Trim(GetText(spdVar, iDPlanDT, lr)), "yyyy-mm-dd")
            End If
            rssarrmod("Commr_Wt") = val(GetText(spdVar, ICommr_Wt, lr))
            a = Igrosswt
            rssarrmod("Grosswt") = val(GetText(spdVar, a, lr))
            a = Itarewt
            rssarrmod("tarewt") = val(GetText(spdVar, a, lr))
            a = iTrashPer
            rssarrmod("Trashper") = val(GetText(spdVar, a, lr))
            a = iNetwt
            rssarrmod("netwt") = val(GetText(spdVar, a, lr))
            If globalarrivalorder = "C" Then
                If ARRIVALTYPE = "K" Then
                    DB.Execute ("update rm_cont set RCDKGS =ISNULL(rcDKGS,0)+" & GetText(spdVar, a, lr) - rssarrmod("netwt") & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                End If
            Else
                If ARRIVALTYPE = "K" Then
                   DB.Execute ("update rm_cont set RCDKGS =ISNULL(rcDKGS,0)+" & GetText(spdVar, a, lr) - rssarrmod("netwt") & " where varcode='" & rssarrmod("varcode") & "' and contno='" & rssarrmod("contno") & "' and contdt='" & Format(rssarrmod("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                End If
            End If
            a = Icandyrate
            rssarrmod("ratecy") = val(GetText(spdVar, a, lr))
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Arrival"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("plcode") = Trim(txtfields(33).Text)
            TrnLog("Line_No") = Trim(txtfields(34).Text)
            TrnLog("docno") = Trim(txtfields(0).Text)
            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("arrno") = Trim(txtfields(0).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
            TrnLog("contno") = rssarrmod("contno")
            TrnLog("CONTDT") = Format(rssarrmod("contdt"), "yyyy-mm-dd")
            TrnLog("slcode") = txtfields(2).Text
            TrnLog("catcd") = Trim(txtfields(29).Text)
            TrnLog("areacode") = IIf(Trim(txtfields(4).Text) = "", Null, txtfields(4).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
            TrnLog("godown") = Trim(txtfields(22).Text)
            TrnLog("LorryNo") = Trim(txtfields(11).Text)
            TrnLog("Frg_Amt") = val(txtfields(14).Text)
            TrnLog("varcode") = rssarrmod("varcode")
            TrnLog("ordqty") = rssarrmod("quantity")
            TrnLog("Grosswt") = rssarrmod("Grosswt")
            TrnLog("tarewt") = rssarrmod("tarewt")
            TrnLog("netwt") = rssarrmod("netwt")
            TrnLog("cntcode") = rssarrmod("cntcode")
            TrnLog("RateCY") = rssarrmod("ratecy")
            TrnLog("LR_INDate") = Format(dtpLorryinDt, "yyyy-mm-dd") & " " & Format(dtpLorryinTime.value, "hh:mm:ss")
            TrnLog("LR_OutDate") = Format(dtpLorryOutDt, "yyyy-mm-dd") & " " & Format(dtpLorryOutTime.value, "hh:mm:ss")
           
            TrnLog.UpdateBatch adAffectAllChapters
            rssarrmod.MoveNext
        Next

            rssarrmod.UpdateBatch adAffectAllChapters
            FreightAmtPosting "mod"
            DB.CommitTrans
            
            
            
            MsgBox "Arrival Modified!", vbInformation, head
            SSTab1.Enabled = False
            Screen.MousePointer = 0
            Opt = ""
    End If

    If Opt = "del" Then
        On Error GoTo del
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
             
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
      On Error GoTo ERRDB
         DB.BeginTrans
       Call ArrivalDelLog
            '==========JV Freight amt ============================
            FreightAmtPosting "del"
            '=====================================================
            
            For I = 1 To spdVar.MaxRows
                a = IContno
                B = IContdt
                d = IVarcode
                
                Set RsH = New Recordset
                RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,pREFIX from rm_cont where  VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'", DB, adOpenStatic
                ARRIVALTYPE = "P"
                If RsH.RecordCount > 0 Then
                    ARRIVALTYPE = RsH(0)
                End If
                
                If ARRIVALTYPE = "P" Then
                    c = Ibalqty
                    If IsDate(Trim(GetText(spdVar, iDPlanDT, I))) = True Then
                        DB.Execute "update RM_DespatchDT set  RVDQTY=ISNULL(RVDQTY,0)-" & GetText(spdVar, c, I) & "  where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "' and DIVCODE='" & Divcode & "' and docno='" & val(GetText(spdVar, iDPlanNO, I)) & "' and docdate='" & Format(Trim(GetText(spdVar, iDPlanDT, I)), "yyyy-mm-dd") & "' "
                    End If
                End If
                
                If ARRIVALTYPE = "K" Then
                    c = iNetwt
                    If IsDate(Trim(GetText(spdVar, iDPlanDT, I))) = True Then
                        DB.Execute "update RM_DespatchDT set  RVDKGS=ISNULL(RVDKGS,0)-" & GetText(spdVar, c, I) & "  where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'  and DIVCODE='" & Divcode & "' and docno='" & val(GetText(spdVar, iDPlanNO, I)) & "' and docdate='" & Format(Trim(GetText(spdVar, iDPlanDT, I)), "yyyy-mm-dd") & "' "
                    End If
                End If
                
                If globalarrivalorder = "C" Then
                    If RsH!Prefix = "C" Then
                    If ARRIVALTYPE = "P" Then
                            c = Ibalqty
                            DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'")
                        Else
                            c = iNetwt
                            DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'")
                        End If
                    Else
                        If ARRIVALTYPE = "P" Then
                            c = Ibalqty
                            DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                        Else
                            c = iNetwt
                            DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ")
                        End If
                    End If
                Else
                If RsH!Prefix = "C" Then
                    If ARRIVALTYPE = "P" Then
                        c = Ibalqty
                        DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'")
                    Else
                        c = iNetwt
                        DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "'")
                    End If
                Else
                    If ARRIVALTYPE = "P" Then
                        c = Ibalqty
                        DB.Execute ("update rm_cont set recqty =ISNULL(recqty,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                    Else
                        c = iNetwt
                        DB.Execute ("update rm_cont set rcDKGS =ISNULL(rCDKGS,0) - " & val(GetText(spdVar, c, I)) & " where VARCODE='" & GetText(spdVar, d, I) & "' AND contno= '" & GetText(spdVar, a, I) & "' and contdt='" & Format(GetText(spdVar, B, I), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
                    End If
                End If
             End If
            Next
            DB.Execute ("delete from rm_arrival where arrno =" & Trim(txtfields(0).Text) & " and arrdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'")
            
            For I = 1 To spdVar.MaxRows Step 1
                Set Rs = New Recordset
                Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                If globalarrivalorder = "C" Then
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "'  or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' ))) "
                    End If
                Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " AND  CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT_SLOTNO SET RECFLG = 'N' WHERE SLOTNO=" & val(GetText(spdVar, 5, I)) & " and CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'"
                    End If
                End If
            Next
            Set Rs = New Recordset
            Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
            For I = 1 To spdVar.MaxRows Step 1
            If globalarrivalorder = "C" Then
                If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
        
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or contno in ((select contno from rm_cont where DIVCODE='" & globalimportpo & "' and im_ind='I' and cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'))) ", DB, adOpenStatic
               End If
            Else
               If Rs(0) = "Y" Then
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "'", DB, adOpenStatic
        
               Else
                   Set Rs = New Recordset
                   Rs.Open "SELECT * FROM RM_CONT_SLOTNO WHERE cONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND CONTDT = '" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' and DIVCODE = '" & Divcode & "'", DB, adOpenStatic
               End If
            End If
               Do While Not Rs.EOF
                   iLOT = Rs!sLotno
                   If Rs!recflg <> "Y" Then STRlOT = STRlOT & "," & iLOT
                   iLOT = iLOT + 1
                   Rs.MoveNext
               Loop
               
               Set Rs = New Recordset
               Rs.Open "SELECT cENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
               If globalarrivalorder = "C" Then
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                    End If
               Else
                    If Rs(0) = "Y" Then
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "'"
                    Else
                        DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='' WHERE CONTDT='" & Format(GetText(spdVar, 2, I), "YYYY-MM-DD") & "' AND CONTNO='" & Trim(GetText(spdVar, 1, I)) & "' AND dIVCODE ='" & Divcode & "'"
                    End If
               End If
            Next
 
            
            
            DB.CommitTrans
            MsgBox "Arrival Deleted!", vbInformation, head
            Opt = ""
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
    
LoadRec:
        txtfields(25).Text = ""
        txtfields(26).Text = ""
        txtfields(27).Text = ""
        txtfields(28).Text = ""
        txtfields(89).Text = ""
        txtfields(90).Text = ""
        txtfields(95).Text = ""
        txtfields(91).Text = ""
        Call SpreadAlign(0)
        On Error Resume Next
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct ARRNO,SUPCD,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE arrdate between  dateadd(day,-30,'" & Format(pdate, "yyyy-mm-dd") & "') AND '" & Format(pdate, "yyyy-mm-dd") & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        Call NEWFORM1(BUTTON, GSNO)
        adoPrimaryRS.MoveLast
        BUTTON(0).SetFocus
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
        Opt = ""
        
        txtfields(25).Text = ""
        txtfields(26).Text = ""
        txtfields(27).Text = ""
        txtfields(28).Text = ""
        txtfields(89).Text = ""
        txtfields(90).Text = ""
        txtfields(95).Text = ""
        txtfields(91).Text = ""
        Call SpreadAlign(0)
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,catcd,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,weignment,LRNO,godown,MOITURE,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime ,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE  arrdate between  dateadd(day,-30,'" & Format(pdate, "yyyy-mm-dd") & "') AND '" & Format(pdate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
     
        Label30.Visible = False
            
        If Not adoPrimaryRS.EOF Then
            txtfields(2).Text = adoPrimaryRS!SUPCD
            txtfields(11).Text = adoPrimaryRS!LORRYNOS
            txtfields(21).Text = IIf(IsNull(adoPrimaryRS!Lrno), "", adoPrimaryRS!Lrno)
            txtfields(22).Text = adoPrimaryRS!godown
            txtfields(14).Text = adoPrimaryRS!Freight
        End If
       
        For iIndex = 0 To 25 Step 1
            Txtfields_Change (iIndex)
        Next
Case 11
        Unload Me
Case 13
   Call ArrPrint
End Select
Exit Sub
ERRDB:
DB.RollbackTrans
 MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmArrival", vbInformation, head

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmArrival", vbInformation, head

End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.value
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Dim strQry As String
  StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  SSTab1.Visible = True
  DATLAB.Caption = pdate
  
    Set Rs = New Recordset
    Rs.Open "Select SeasonCalcReq From rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        iTrashPer = 17
        iMoitureper = 18
        iMoiturewt = 19
        iNetwt = 20
        iDPlanNO = 21
        iDPlanDT = 22
        ICommr_Wt = 23
    Else
        iMoitureper = 17
        iMoiturewt = 18
        iNetwt = 19
        iDPlanNO = 20
        iDPlanDT = 21
        ICommr_Wt = 22
    End If
  
   Set Rs = New Recordset
   Rs.Open "SELECT isnull(Arrdespatch_Flg,'N') Arrdespatch_Flg ,isnull(MasterEntryFlg,'N') MasterEntryFlg FROM RM_PARAM", DB, adOpenStatic
   If Not Rs.EOF Then
    Arrdespatch_Flg = Rs("Arrdespatch_Flg")
    MasterEntryFlg = Rs("MasterEntryFlg")

   End If
  Set adoPrimaryRS = New Recordset
  strQry = "select  ARRNO,SUPCD,catcd,BRKCD,AREACODE,CARCODE,GCNO,LORRYNOS,ATLNO,FREIGHT,ARRDATE,PLOTDT,weignment,LRNO,godown, isnull(catcd,''),inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,Trashper,GinCode,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE arrdate between dateadd(day,-30,'" & Format(pdate, "yyyy-mm-dd") & "') AND '" & Format(pdate, "yyyy-mm-dd") & "' and  arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrdate desc,arrno desc"
  adoPrimaryRS.Open strQry, DB, adOpenStatic, adLockBatchOptimistic
  If adoPrimaryRS.RecordCount <> 0 Then
     Call bindcontls
     desc.Caption = "Query"
     DATLAB.Caption = pdate
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
    If Not adoPrimaryRS.EOF Then
        txtfields(2).Text = adoPrimaryRS!SUPCD
        txtfields(11).Text = adoPrimaryRS!LORRYNOS
        txtfields(21).Text = adoPrimaryRS!Lrno
        txtfields(22).Text = adoPrimaryRS!godown
        txtfields(14).Text = adoPrimaryRS!Freight
    End If
     
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
  End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmArrival", vbInformation, head
End Sub



Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  intervalMinutes = -1
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
If adoPrimaryRS.BOF = False Then
    If adoPrimaryRS.RecordCount > 0 Then
        MaskEdBox1(0).Text = adoPrimaryRS("arrdate")
        gCode = adoPrimaryRS("godown")
        txtfields(22).Text = adoPrimaryRS("godown")
        txtfields(32).Text = IIf(IsNull(adoPrimaryRS("gincode")), "", adoPrimaryRS("gincode"))
        Set rsa = New Recordset
        rsa.Open "select gname from rm_god where gcode='" & adoPrimaryRS("godown") & "'", DB
        If rsa.RecordCount > 0 Then
            txtfields(23).Text = rsa(0)
        Else
            txtfields(23).Text = ""
        End If
        Set rsa = New Recordset
        rsa.Open "select carname from po_car where carcode='" & adoPrimaryRS("carcode") & "'", DB
        If rsa.RecordCount > 0 Then
            Text7.Text = rsa(0)
        Else
            Text7.Text = ""
            txtfields(9).Text = ""
        End If
            Call ArrivalDisplay
       End If
    End If
End If

End Sub

Public Sub bindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdate"

MaskEdBox1(3).DataField = "inwarddate"
txtfields(22).Text = adoPrimaryRS("godown")
txtfields(2).Text = adoPrimaryRS("SUPCD")
txtfields(32).Text = adoPrimaryRS("Gincode")

DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate

If Not IsNull(adoPrimaryRS("LR_InDt")) Then
    If Opt = "add" Then

       dtpLorryinDt.value = pdate
       dtpLorryinTime.value = Time
       dtpLorryOutDt.value = pdate
       dtpLorryOutTime.value = Time
    Else
        dtpLorryinDt.value = adoPrimaryRS("LR_InDt")
       dtpLorryinTime.value = adoPrimaryRS("LR_InTime")
       dtpLorryOutDt.value = adoPrimaryRS("LR_OutDt")
       dtpLorryOutTime.value = adoPrimaryRS("LR_OutTime")
    End If
Else
    dtpLorryinDt.value = pdate
    dtpLorryinTime.value = 0
    dtpLorryOutDt.value = pdate
    dtpLorryOutTime.value = 0
End If

If IsNull(adoPrimaryRS("inwardno")) = False Or adoPrimaryRS("inwardno") = "" Then
txtfields(30).Text = adoPrimaryRS("inwardno")
Else
txtfields(30).Text = ""
End If
If adoPrimaryRS.EOF = False Then
If IsNull(adoPrimaryRS("arrdate")) = False Or adoPrimaryRS("arrdate") = "" Then
    MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdate"), "dd/mm/yyyy")
End If


If IsNull(adoPrimaryRS("inwarddate")) = False Then
    MaskEdBox1(3).Text = Format(adoPrimaryRS("inwarddate"), "dd/mm/yyyy")
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
End If


Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
On Error GoTo ENABLCONTLS_Error

For I = 2 To 11
    If I <> 11 And I <> 5 And I <> 6 And I <> 7 And I <> 8 And I <> 10 Then txtfields(I).Locked = False
Next
For I = 14 To 14
    If I <> 21 And I <> 15 Then txtfields(I).Locked = False
Next
txtfields(30).Locked = False
txtfields(22).Locked = False
MaskEdBox1(0).Enabled = True
MaskEdBox1(3).Enabled = True
DTPicker1.Enabled = True


Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
On Error GoTo disablcontls_Error

On Error Resume Next
Dim I As Integer
For I = 0 To 19

    txtfields(I).Locked = True
Next
txtfields(30).Locked = True
txtfields(11).Locked = False
txtfields(21).Locked = False
MaskEdBox1(0).Enabled = False
MaskEdBox1(3).Enabled = False
DTPicker1.Enabled = False


Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub ListPO_BeforeLabelEdit(Cancel As Integer)
    ListPO.SelectedItem.EnsureVisible
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(0).BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Enter a Arrival Date"
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(0).BackColor = &HFFFFFF
    StatusBar1.Panels(2).Text = ""
End If

Select Case Index
Case 0
    If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_arrival WHERE arrNO= " & MaxNo & "  and divcode='" & Divcode & "' AND ARRDATE=" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & " ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            MsgBox " P.O. Number already defined. Please Change the Date", vbInformation, head
            MaskEdBox1(0).SetFocus
            Exit Sub
        End If
        spdVar.Row = spdVar.ActiveRow
        spdVar.Col = 2
        If MaskEdBox1(0).Text < spdVar.Text Then
            MsgBox "Arrival Date must be after the Order Date ", vbInformation, head
            MaskEdBox1(0).Text = pdate
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If

End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error

If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox ("Project date must be earlier or equal to Processing date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    End If
End If

Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Validate of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
Dim iRow As Integer
Dim dblTareWg As Double
Dim dblMoisWg As Double
Dim dblNetWg As Double
intervalMinutes = -1
On Error GoTo spdVar_Change_Error

dblTareWg = 0
dblMoisWg = 0
dblNetWg = 0

For iRow = 1 To spdVar.MaxRows
    dblTareWg = dblTareWg + val(GetText(spdVar, Itarewt, iRow))
    dblMoisWg = dblMoisWg + val(GetText(spdVar, iMoiturewt, iRow))
    dblNetWg = dblNetWg + val(GetText(spdVar, iNetwt, iRow))
        Next

txtfields(26).Text = Format(dblTareWg, "0.000")
txtfields(27).Text = Format(dblMoisWg, "0.000")

Set Rs = New Recordset
Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
If Rs(0) = "Y" Then
    txtfields(28).Text = Format(val(txtfields(25).Text) - (val(txtfields(26).Text)), "0.000")
Else
    txtfields(28).Text = Format(val(txtfields(25).Text) - (val(txtfields(26).Text) + val(txtfields(27).Text)), "0.000")
End If

Exit Sub
spdVar_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_Change of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_Click(ByVal Col As Long, ByVal Row As Long)
On Error GoTo spdVar_Click_Error

        a = IContno
        B = IContdt
        c = IVarcode
        gcontno = GetText(spdVar, a, spdVar.ActiveRow)
        Set rsbal = New Recordset
        If globalarrivalorder = "C" Then
            rsbal.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AS BALQTY,isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, B, spdVar.ActiveRow), "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL select rateunit,ordKGS-ISNULL(RCDKGS,0) AS BALQTY,0 AS CANCELBALES,ordKGS""ORDQTY"",rCDKGS""RECQTY"" from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, B, spdVar.ActiveRow), "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
        Else
            rsbal.Open "select rateunit,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AS BALQTY,isnull(cancelbales,0) as cancelbales,ordqty,recqty from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, B, spdVar.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL select rateunit,ordKGS-ISNULL(RCDKGS,0) AS BALQTY,0 AS CANCELBALES,ordKGS""ORDQTY"",rCDKGS""RECQTY"" from rm_cont where VARCODE='" & GetText(spdVar, c, spdVar.ActiveRow) & "' AND contno='" & GetText(spdVar, a, spdVar.ActiveRow) & "'  and contdt='" & Format(GetText(spdVar, B, spdVar.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
        End If
        If rsbal.RecordCount > 0 Then
            txtfields(89).Text = CStr(IIf(IsNull(rsbal("ordqty")) = True, 0, rsbal("ordqty")))
            txtfields(90).Text = CStr(IIf(IsNull(rsbal("RECQTY")) = True, 0, rsbal("RECQTY")))
            txtfields(91).Text = CStr(val(rsbal("BALQTY")))
            txtfields(95).Text = CStr(rsbal("cancelbales"))
        End If
Exit Sub
spdVar_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub spdVar_EditChange(ByVal Col As Long, ByVal Row As Long)
On Error GoTo spdVar_EditChange_Error
If Opt = "add" Or Opt = "mod" Then
    Select Case Col
        Case Iplotno
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 15 Then
                    .Text = Mid(.Text, 1, 15)
                End If
            End With
        Case Iprno
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 20 Then
                    .Text = Mid(.Text, 1, 20)
                End If
            End With
        Case Ipressmarkno
            With spdVar
                .Row = Row: .Col = Col
                If Len(.Text) > 15 Then
                    .Text = Mid(.Text, 1, 15)
                End If
            End With
    End Select
    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            If globalarrivalorder = "C" Then
                 rstSLOTNO.Open "Select SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                rstSLOTNO.Open "Select SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & gDivision & "'", DB, adOpenStatic
            End If
            If rstSLOTNO.EOF = False Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO(0) & " and " & rstSLOTNO(1)
            End If
            rstSLOTNO.Close
            Set rstSLOTNO = Nothing
            
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
    End If

End If

Exit Sub
spdVar_EditChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_EditChange of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub spdVar_EnterRow(ByVal Row As Long, ByVal RowIsLast As Long)
On Error GoTo spdVar_EnterRow_Error
    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            If globalarrivalorder = "C" Then
                rstSLOTNO.Open "Select * from rm_cont Where Contno = " & val(GetText(spdVar, IContno, Row)) & " and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                rstSLOTNO.Open "Select * from rm_cont Where Contno = " & val(GetText(spdVar, IContno, Row)) & " and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
            End If
            If rstSLOTNO.EOF Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SupplierFromLotNo & " and " & rstSLOTNO!SupplierFromLotNo
            
            End If
            rstSLOTNO.Close
            Set rstSLOTNO = Nothing
            
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
    End If
Exit Sub
spdVar_EnterRow_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_EnterRow of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo spdVar_KeyDown_Error

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
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
spdVar_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_KeyPress(KeyAscii As Integer)
On Error GoTo spdVar_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then '
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            
            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
            If rstSLOTNO.EOF = False Then
              If globalarrivalorder = "C" Then
                 If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
                End If
              Else
                If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, spdVar.Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, spdVar.Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
                End If
              End If
            End If
            If rstSLOTNO.EOF = False Then
                StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
            End If
            rstSLOTNO.Close
            Set rstSLOTNO = Nothing
                
        Else
            StatusBar1.Panels(2).Text = ""
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
Else
    KeyAscii = 0
End If

Exit Sub
spdVar_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyPress of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
On Error GoTo spdVar_LeaveCell_Error
intervalMinutes = -1
Dim dGrossWT As Double
Dim V_WtToleranceper As Integer
On Error GoTo spdVar_LeaveCell_Error
If (Opt = "add" Or Opt = "mod") And Row <> 0 Then

    Set rsa = New Recordset
    rsa.Open "select POWtTolerance from rm_param ", DB, adOpenStatic
    If Not rsa.EOF > 0 Then
        V_WtToleranceper = val(NULLCHECK(rsa("POWtTolerance")))
    Else
        V_WtToleranceper = 0
    End If
   If Opt = "mod" And val(GetText(spdVar, IFullTruckWt, Row)) <> 0 And val(GetText(spdVar, IEmptyTruckWt, Row)) <> 0 Then
    If Col = IFullTruckWt Then
        dGrossWT = val(GetText(spdVar, IFullTruckWt, Row)) - val(GetText(spdVar, IEmptyTruckWt, Row))
        spdVar.SetText Igrosswt, Row, dGrossWT
    End If
    End If
    If Col = IEmptyTruckWt Then
        If val(GetText(spdVar, IEmptyTruckWt, Row)) > val(GetText(spdVar, IFullTruckWt, Row)) Then
            spdVar.SetText IEmptyTruckWt, Row, 0#
            MsgBox "Empty Truck Weight must be less than Full Truck Weight", vbInformation, head
            Exit Sub
        End If
        If Opt = "mod" And val(GetText(spdVar, IFullTruckWt, Row)) <> 0 And val(GetText(spdVar, IEmptyTruckWt, Row)) <> 0 Then
            dGrossWT = val(GetText(spdVar, IFullTruckWt, Row)) - val(GetText(spdVar, IEmptyTruckWt, Row))
            spdVar.SetText Igrosswt, Row, dGrossWT
        End If
    End If
    
    If Col = Iplotno Then
        Set rstPARAM = New Recordset
        rstPARAM.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstPARAM!SuppLotNoReqArrival = "Y" Then
            Set rstSLOTNO = New Recordset
            rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
            If rstSLOTNO.EOF = False Then
                If rstSLOTNO!Prefix = "C" Then
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'and SUPPLIERLOTNOFROM < = " & val(GetText(spdVar, Iplotno, Row)) & " and SUPPLIERLOTNOTO >= " & val(GetText(spdVar, Iplotno, Row)), DB, adOpenStatic
                Else
                    Set rstSLOTNO = New Recordset
                    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & Divcode & "' and SUPPLIERLOTNOFROM < = " & val(GetText(spdVar, Iplotno, Row)) & " and SUPPLIERLOTNOTO >= " & val(GetText(spdVar, Iplotno, Row)), DB, adOpenStatic
                End If
            End If
            If rstSLOTNO.EOF = True Then
                    spdVar.SetActiveCell Col, Row
                    spdVar.SetText Iplotno, Row, ""
                    Exit Sub
            Else
                    StatusBar1.Panels(2).Text = ""
            End If
            rstSLOTNO.Close
            Set rstSLOTNO = Nothing
        End If
        rstSLOTNO.Close
        Set rstSLOTNO = Nothing
    End If
    Set rstSLOTNO = New Recordset
    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Trim(GetText(spdVar, IContno, Row)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, Row), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
    If rstSLOTNO.EOF = False Then
        If rstSLOTNO!Prefix = "C" Then
            Set RsH = New Recordset
            RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
            ARRIVALTYPE = "P"
            If RsH.RecordCount > 0 Then
                ARRIVALTYPE = RsH("ARRIVALTYPE")
            End If
        
            If Col = Ibalqty And ARRIVALTYPE = "P" Then
                    a = IContno
                    B = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
                    
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select quantity from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "'", DB, adOpenStatic
                        bal = rsbal("quantity")
                    End If
                    If rsg.RecordCount <> 0 Then
                    bal = bal + val(rsg(0))
                    End If
                    d = Ibalqty
                    If val(GetText(spdVar, d, Row)) > bal Then
                        spdVar.SetText Ibalqty, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                        Exit Sub
                    End If
            End If
            
            If Col = Igrosswt And ARRIVALTYPE = "K" Then
                    a = IContno
                    B = IContdt
                    c = IVarcode
                    Set rsg = New Recordset
                    If globalarrivalorder = "C" Then
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                    Else
                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                    End If
                    bal = 0
                    If Opt = "mod" Then
                        Set rsbal = New Recordset
                        rsbal.Open "select grosswt from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
                        bal = rsbal("grosswt")
                    End If
                    d = Igrosswt
                    bal = bal + rsg(0)
                    If val(GetText(spdVar, d, Row)) > bal Then
                        spdVar.SetText Igrosswt, Row, bal
                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                        Exit Sub
                    End If
            End If
        rstSLOTNO.Close
        Set rstSLOTNO = Nothing
    Else
    If globalarrivalorder = "C" Then
        Set RsH = New Recordset
        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
    Else
        Set RsH = New Recordset
        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where varcode='" & GetText(spdVar, IVarcode, Row) & "' and contno='" & GetText(spdVar, IContno, Row) & "' and contdt='" & Format(GetText(spdVar, IContdt, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    End If
    
    ARRIVALTYPE = "P"
    If RsH.RecordCount > 0 Then
        ARRIVALTYPE = RsH("ARRIVALTYPE")
    End If

       If Col = Ibalqty And ARRIVALTYPE = "P" Then
            a = IContno
            B = IContdt
            c = IVarcode
            Set rsg = New Recordset
            If globalarrivalorder = "C" Then
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal,isnull(cancelbales,0) cancelbales,ordqty  from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal,isnull(cancelbales,0) cancelbales,ordqty  from rm_cont where varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select quantity from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                bal = rsbal("quantity")
            End If
            If rsg.RecordCount <> 0 Then
            bal = bal + val(rsg(0))
            End If
            bal = bal + ((val(NULLCHECK(rsg("ordqty"))) - val(NULLCHECK(rsg("cancelbales")))) * V_WtToleranceper / 100)
            
            
            d = Ibalqty
            If val(GetText(spdVar, d, Row)) > bal Then
                spdVar.SetText Ibalqty, Row, bal
                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                Exit Sub
            End If
        End If
    
    If Col = Igrosswt And ARRIVALTYPE = "K" Then
            a = IContno
            B = IContdt
            c = IVarcode
            Set rsg = New Recordset
            If globalarrivalorder = "C" Then
                rsg.Open "select  (ordKGS -  isnull(rCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                     " from rm_cont " & _
                     " where varcode='" & GetText(spdVar, c, Row) & "'" & _
                     " and contno='" & GetText(spdVar, a, Row) & "'" & _
                     " and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                
                rsg.Open "select  (ordKGS -  isnull(rCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
                         " from rm_cont " & _
                         " where varcode='" & GetText(spdVar, c, Row) & "'" & _
                         " and contno='" & GetText(spdVar, a, Row) & "'" & _
                         " and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "'" & _
                         " and divcode='" & Divcode & "'", DB, adOpenStatic
            End If
            bal = 0
            If Opt = "mod" Then
                Set rsbal = New Recordset
                rsbal.Open "select grosswt from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  varcode='" & GetText(spdVar, c, Row) & "' and contno='" & GetText(spdVar, a, Row) & "' and contdt='" & Format(GetText(spdVar, B, Row), "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic
                bal = rsbal("grosswt")
            End If
            d = Igrosswt
            bal = bal + Round((val(NULLCHECK(rsg("ORDKGS"))) + ((val(NULLCHECK(rsg("ORDKGS"))) - val(NULLCHECK(rsg("Cancelkg")))) * V_WtToleranceper / 100)) - val(NULLCHECK(rsg("RcdKgs"))) - val(NULLCHECK(rsg("Cancelkg"))), 2)
            
            If val(GetText(spdVar, d, Row)) > bal Then
                spdVar.SetText Igrosswt, Row, bal
                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
                Exit Sub
            End If
    End If
    End If
    End If
    Set Rs = New Recordset
    Rs.Open "select SeasoncalcReq from rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
    If Col = Igrosswt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then

            spdVar.Col = 13
            spdVar.SetFocus
            Exit Sub
        Else
            If val(GetText(spdVar, Igrosswt, Row)) <= val(GetText(spdVar, Itarewt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                MsgBox "Gross weight must be greater than Tare weight", vbInformation, head
                spdVar.SetText iNetwt, Row, netwt
                Exit Sub
            End If
            
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iMoiturewt, Row, "0.000"
                spdVar.SetText Igrosswt, Row, "0.000"
                spdVar.SetText iNetwt, Row, "0.000"
                spdVar.SetActiveCell Col, Row
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                MsgBox "Nett Weight must be greater than zero"
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If


    If Col = Itarewt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            If val(GetText(spdVar, Itarewt, Row)) > val(GetText(spdVar, Igrosswt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Itarewt, Row
                MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
                Exit Sub
            End If
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row))
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iNetwt, Row, netwt
                MsgBox "Nett Weight must be greater than zero"
                spdVar.SetActiveCell Itarewt, Row
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
    
    
    If Col = iMoitureper Then
    
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            a = Igrosswt
            B = Itarewt
            c = iMoitureper
            te = iTrashPer
            d = iMoiturewt
            If Col = iMoitureper Or Col = iTrashPer Then
                gwt = val(GetText(spdVar, a, Row))
                If gwt > 0 Then
                    mwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row))
                    mwt = mwt * (val(GetText(spdVar, c, Row)) + val(GetText(spdVar, te, Row))) / 100
                    
                    spdVar.SetText iMoiturewt, Row, mwt
                End If
            End If
            netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row))
            If netwt <= 0 Then
                spdVar.SetText Col, Row, "0.000"
                netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Col, Row
                MsgBox "Nett Weight must be greater than zero", vbInformation, head
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
Else
If Col = Igrosswt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
            spdVar.Col = 13
            spdVar.SetFocus
            Exit Sub
        Else
            If val(GetText(spdVar, Igrosswt, Row)) <= val(GetText(spdVar, Itarewt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                MsgBox "Gross weight must be greater than Tare weight", vbInformation, head
                spdVar.SetText iNetwt, Row, netwt
                Exit Sub
            End If
            
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iMoiturewt, Row, "0.000"
                spdVar.SetText Igrosswt, Row, "0.000"
                spdVar.SetText iNetwt, Row, "0.000"
                spdVar.SetActiveCell Col, Row
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                MsgBox "Nett Weight must be greater than zero"
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If


    If Col = Itarewt Then
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            If val(GetText(spdVar, Itarewt, Row)) > val(GetText(spdVar, Igrosswt, Row)) Then
                spdVar.SetText Itarewt, Row, "0.000"
                netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Itarewt, Row
                MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
                Exit Sub
            End If
            netwt = val(GetText(spdVar, Igrosswt, Row)) - val(GetText(spdVar, Itarewt, Row)) - val(GetText(spdVar, iMoiturewt, Row))
            If netwt <= 0 Then
                spdVar.SetText Itarewt, Row, "0.000"
                spdVar.SetText iNetwt, Row, netwt
                MsgBox "Nett Weight must be greater than zero"
                spdVar.SetActiveCell Itarewt, Row
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
    
    
    If Col = iMoitureper Then
    
        If val(GetText(spdVar, Igrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 And val(GetText(spdVar, iMoiturewt, Row)) = 0 Then
        Else
            a = Igrosswt
            B = Itarewt
            c = iMoitureper
            d = iMoiturewt
            
            If Col = iMoitureper Then
                gwt = val(GetText(spdVar, a, Row))
                If gwt > 0 Then
                    mwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row))
                    mwt = mwt * val(GetText(spdVar, c, Row)) / 100
                    spdVar.SetText iMoiturewt, Row, mwt
                End If
            End If
            netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row)) - val(GetText(spdVar, d, Row))
            
            If netwt <= 0 Then
                spdVar.SetText Col, Row, "0.000"
                netwt = val(GetText(spdVar, a, Row)) - val(GetText(spdVar, B, Row)) - val(GetText(spdVar, d, Row))
                spdVar.SetText iNetwt, Row, netwt
                spdVar.SetActiveCell Col, Row
                MsgBox "Nett Weight must be greater than zero", vbInformation, head
                Exit Sub
            End If
            spdVar.SetText iNetwt, Row, netwt
        End If
    End If
End If
End If
If Opt = "add" Or Opt = "mod" Then
        If Row = spdVar.MaxRows And Col = 18 Then
            BUTTON(9).SetFocus
            Exit Sub
        Else
            spdVar.Col = 11
        End If
End If
Dim iRow As Integer
Dim dblTareWg As Double
Dim dblMoisWg As Double
Dim dblNetWg As Double
dblTareWg = 0
dblMoisWg = 0
dblNetWg = 0
For iRow = 1 To spdVar.MaxRows
    dblTareWg = dblTareWg + val(GetText(spdVar, Itarewt, iRow))
    dblMoisWg = dblMoisWg + val(GetText(spdVar, iMoiturewt, iRow))
    dblNetWg = dblNetWg + val(GetText(spdVar, Igrosswt, iRow))
Next
txtfields(25).Text = Format(dblNetWg, "0.000")
txtfields(26).Text = Format(dblTareWg, "0.000")
txtfields(27).Text = Format(dblMoisWg, "0.000")

Set Rs = New Recordset
Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
If Rs(0) = "Y" Then
    txtfields(28).Text = Format(val(txtfields(25).Text) - (val(txtfields(26).Text)), "0.000")
Else
    txtfields(28).Text = Format(val(txtfields(25).Text) - (val(txtfields(26).Text) + val(txtfields(27).Text)), "0.000")
End If
Exit Sub
spdVar_LeaveCell_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_LeaveCell of Form FrmArrival"

Exit Sub
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
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub StockClose_Click()
On Error GoTo StockClose_Click_Error
Frame14.Visible = False
Text3.Text = ""
Call BUTTON_Click(10)
Exit Sub
StockClose_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockClose_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub StockOk_Click()
On Error GoTo StockOk_Click_Error
intervalMinutes = -1
Dim dblGrWt As Double


    If ListPO.ListItems.Count = 0 Then
        MsgBox "Select Order from the list", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    totrow = 0
    For lRow = 1 To ListPO.ListItems.Count
        If ListPO.ListItems.Item(lRow).Checked = True Then
            totrow = totrow + 1
        End If
    Next
    gcontno = ""
    gcontdt = ""
    gvarcode = ""
    gVarName = ""
    Gbalqty = 0
    dblGrWt = 0
    
    If totrow = 0 Then
        MsgBox "Select Any Order from the list", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Frame14.Visible = False
    GG = 1
    Call SpreadAlign(CInt(totrow))
     For lRow = 1 To ListPO.ListItems.Count
        If ListPO.ListItems.Item(lRow).Checked = True Then
            sOrdNo = ListPO.ListItems.Item(lRow).Tag
            iLenght = Len(Trim(sOrdNo))
            gcontno = sOrdNo
            gcontdt = ListPO.ListItems.Item(lRow).SubItems(1)
            gvarcode = ListPO.ListItems.Item(lRow).SubItems(2)
            gVarName = ListPO.ListItems.Item(lRow).SubItems(3)
            Gbalqty = val(ListPO.ListItems.Item(lRow).SubItems(4))
            gDivision = ListPO.ListItems.Item(lRow).SubItems(7)
            If Arrdespatch_Flg = "Y" Then
            spdVar.SetText iDPlanNO, GG, ListPO.ListItems.Item(lRow).SubItems(8)
            spdVar.SetText iDPlanDT, GG, ListPO.ListItems.Item(lRow).SubItems(9)
            End If
            spdVar.SetText IContno, GG, gcontno
            spdVar.SetText IContdt, GG, gcontdt
            spdVar.SetText IVarcode, GG, gvarcode
            spdVar.SetText IVarName, GG, gVarName
            Set partyrs = New Recordset
            If globalarrivalorder = "C" Then
                partyrs.Open "select distinct supcd,brkcd,areacode,isnull(cntcode,'')as count,bbflag,weignment,COLORCODE,CARCODE,rateunit,dlytype,RATEUNIT,prno,pressmarkno,plotno,CANDYRATE,ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,ORDKGS,ISNULL(RCDKGS,0)RCDKGS,isnull(sno,'0') SNO,isnull(PLCode,'') PLCode,isnull(line_no,'') line_no from rm_cont where varcode='" & gvarcode & "' and contno='" & gcontno & "' and contdt='" & Format(gcontdt, "yyyy-mm-dd") & "'  and (DIVCODE='" & gDivision & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
            Else
                partyrs.Open "select distinct supcd,brkcd,areacode,isnull(cntcode,'')as count,bbflag,weignment,COLORCODE,CARCODE,rateunit,dlytype,RATEUNIT,prno,pressmarkno,plotno,CANDYRATE,ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,ORDKGS,ISNULL(RCDKGS,0)RCDKGS,isnull(sno,'0') SNO,isnull(PLCode,'') PLCode,isnull(line_no,'') line_no from rm_cont where varcode='" & gvarcode & "' and contno='" & gcontno & "' and contdt='" & Format(gcontdt, "yyyy-mm-dd") & "' and divcode='" & gDivision & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
            
            txtfields(33).Text = partyrs("Plcode")
            txtfields(34).Text = partyrs("line_no")
            If partyrs("ARRIVALTYPE") = "P" Then
                spdVar.SetText Ibalqty, GG, Gbalqty
            Else
                spdVar.SetText Igrosswt, GG, Gbalqty
                spdVar.SetText iNetwt, GG, Gbalqty
                dblGrWt = dblGrWt + Gbalqty
            End If
            Set RSV = New Recordset
            RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & partyrs("SNO") & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        
            If RSV.RecordCount > 0 Then
              spdVar.SetText Iplotno, GG, RSV("plotno")
            Else
                spdVar.SetText Iplotno, GG, partyrs("plotno")
            End If
            Set Rs = New Recordset
            Rs.Open "SELECT GMSINSTALL FROM rm_param", DB, adOpenStatic
            If Rs(0) = "Y" Then
                Set rsi = New Recordset
                rsi.Open " SELECT a.Sno, a.Date1,a.veh_code,a.lrno,a.veh_courier ,isnull(IO_INVOICEQTY ,0) IO_INVOICEQTY, isnull(Ordweight,0) Ordweight FROM IO_materialinward a, IO_materialinwarddt b " & _
                        " WHERE a.divcode=b.divcode AND a.sno= b.sno and  a.slcode LIKE 'C1%'" & _
                        " AND a.slcode ='" & Trim(txtfields(2).Text) & "'  and b.itemcode='" & gvarcode & "' AND pordno='" & gcontno & "' AND porddt ='" & Format(gcontdt, "YYYY-MM-DD") & "'  and a.sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)", DB, adOpenStatic
                        
                If rsi.EOF = False Then
                    txtfields(30).Text = IIf(IsNull(rsi(0)), "", rsi(0))
                    MaskEdBox1(3).Text = Format(rsi(1), "DD/MM/YYYY")
                    txtfields(11).Text = IIf(IsNull(rsi(2)), "", rsi(2))
                    txtfields(21).Text = IIf(IsNull(rsi(3)), "", rsi(3))
                    txtfields(9).Text = IIf(IsNull(rsi(4)), "", rsi(4))
                    spdVar.SetText Ibalqty, GG, IIf(IsNull(rsi("IO_INVOICEQTY")), "", rsi("IO_INVOICEQTY"))  'rsdpl("Qty")
                    spdVar.SetText Igrosswt, GG, IIf(IsNull(rsi("Ordweight")), "", rsi("Ordweight"))
                    WGBales = IIf(IsNull(rsi("IO_INVOICEQTY")), "", rsi("IO_INVOICEQTY"))
                    WGGrossWt = IIf(IsNull(rsi("Ordweight")), "", rsi("Ordweight"))
                    WGNetwt = IIf(IsNull(rsi("Ordweight")), "", rsi("Ordweight"))
                Else
                    txtfields(30).Text = ""
                    MaskEdBox1(3).Text = "__/__/____"
                    txtfields(11).Text = ""
                    txtfields(21).Text = ""
                    txtfields(9).Text = ""
                End If
            End If

            If IsNull(partyrs("bbflAg")) = False Then
                If partyrs("bbflAg") = "B" Then
                 spdVar.SetText Iunit, GG, "Bale"
                ElseIf partyrs("bbflAg") = "R" Then
                 spdVar.SetText Iunit, GG, "Borah"
                ElseIf partyrs("bbflAg") = "H" Then
                 spdVar.SetText Iunit, GG, "HalfPressBale"
                End If
            End If
            spdVar.SetText Iprno, GG, partyrs("prno")
            spdVar.SetText Ipressmarkno, GG, partyrs("pressmarkno")
            spdVar.SetText Imixcount, GG, partyrs("Count")
            spdVar.SetText Ibalqty, GG, WGBales
            spdVar.SetText Igrosswt, GG, WGGrossWt
            spdVar.SetText iNetwt, GG, WGNetwt
            
            If Arrdespatch_Flg = "Y" Then
                If IsDate(ListPO.ListItems.Item(lRow).SubItems(9)) = True Then
                    Set rsdpl = New Recordset
                    rsdpl.Open "select GrossWt,TareWt,QtyKGS,Qty,INV_QtyKGS from RM_DespatchDT where DocNo ='" & val(ListPO.ListItems.Item(lRow).SubItems(8)) & "' and docdate='" & Format(ListPO.ListItems.Item(lRow).SubItems(9), "yyyy-mm-dd") & "'  and varcode='" & ListPO.ListItems.Item(lRow).SubItems(2) & "' and ORDDivcode='" & Trim(ListPO.ListItems.Item(lRow).SubItems(7)) & "' ", DB, adOpenStatic
                    If Not rsdpl.EOF Then
                        spdVar.SetText Ibalqty, GG, rsdpl("Qty")
                        spdVar.SetText ICommr_Wt, GG, rsdpl("INV_QtyKGS")
                        
                        Set rsdpl1 = New Recordset
                        rsdpl1.Open "select isnull(Freight_Amt,0) Freight_Amt  from RM_TransportRate where docdate=(select MAX(docdate) from  RM_TransportRate where SUPCD='" & Trim(txtfields(2).Text) & "'   and   '" & val(rsdpl("INV_QtyKGS")) & "' between   MinQty and  VslCapacity) and SUPCD='" & Trim(txtfields(2).Text) & "' and   '" & val(rsdpl("INV_QtyKGS")) & "' between   MinQty and  VslCapacity   " & _
                                    " and docdate =(select max(aa.docdate) from RM_TransportRate aa where docdate=(select MAX(docdate) from  RM_TransportRate where SUPCD='" & Trim(txtfields(2).Text) & "'   and   '" & val(rsdpl("INV_QtyKGS")) & "' between   MinQty and  VslCapacity) and SUPCD='" & Trim(txtfields(2).Text) & "' and   '" & val(rsdpl("INV_QtyKGS")) & "' between   MinQty and  VslCapacity )", DB, adOpenStatic '' and plant=''
                        If Not rsdpl1.EOF Then
                          txtfields(14).Text = rsdpl1(0)
                          txtfields(14).Locked = True
                        End If
                        
                        
                    End If
                
                End If
            End If
    

            Set Rs = New Recordset
            Rs.Open "select * from rm_MIXGRP where MIXGRPCD = '" & partyrs("Count") & "'", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                spdVar.SetText Imixgrp, GG, Rs("mixgrpname")
            Else
                spdVar.SetText Imixcount, GG, ""
                spdVar.SetText Imixgrp, GG, ""
            End If
            spdVar.SetText Icandyrate, GG, partyrs("CANDYRATE")
            txtfields(3).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
            Set rsbrk = New Recordset
            rsbrk.Open "select * from fa_slmas where slcode='" & partyrs("brkcd") & "'", DB, adOpenStatic
            If rsbrk.RecordCount > 0 Then
                Text2.Text = rsbrk("slname")
            Else
                Text2.Text = ""
                
            End If
            txtfields(4).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
            txtfields(13).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
            Set Rs = New Recordset
            Rs.Open "select areaname from rm_area where areacode = '" & txtfields(4).Text & "'", DB, adOpenStatic
            If Rs.RecordCount <> 0 Then
              Text3.Text = Rs("areaname")
            Else
              Text3.Text = " "
            End If
            GG = GG + 1
        End If
    Next
    txtfields(3).Locked = True
    txtfields(25).Text = Format(dblGrWt, "0.000")
    txtfields(28).Text = Format(dblGrWt, "0.000")
    SSTab1.Enabled = True
    txtfields(4).Locked = False
    txtfields(4).SetFocus
Exit Sub
StockOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockOk_Click of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Or Opt = "" Or Opt = " " Or Opt = "fnd" Then
Select Case Index

 Case 33
    Set RS2 = New Recordset
    RS2.Open "select plname from rm_plant where plcode='" & txtfields(33).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If RS2.RecordCount = 0 Then
        Text10.Text = ""
        Exit Sub
    Else
        Text10.Text = RS2(0)
    End If

Case 32
       Set Rs = New Recordset
       Rs.Open "SELECT * FROM RM_Ginner WHERE GinCode='" & txtfields(32).Text & "'", DB, adOpenStatic
       If Rs.EOF = False Then
           txtfields(31).Text = Rs("GinNAME")
       Else
           txtfields(31).Text = ""
       End If

Case 29
        Set Rs = New Recordset
            Rs.Open "SELECT * FROM RM_CAT WHERE CATCD='" & txtfields(29).Text & "'", DB, adOpenStatic
            If Rs.RecordCount <> 0 Then
                Text9.Text = Rs("CATNAME")
            End If
Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
          Text1.Text = Rs("slname")
        Else
          Text1.Text = ""
        End If

Case 3
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(3).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
              Text2.Text = Rs("slname")
        Else
            Text2.Text = ""
        End If

Case 4
        Set Rs = New Recordset
        Rs.Open "select areaname from rm_area where areacode = '" & txtfields(4).Text & "' ", DB, adOpenStatic
     If Rs.RecordCount <> 0 Then
            Text3.Text = Rs("areaname")
        Else
            Text3.Text = ""
        End If


        
 Case 13
        Set Rs = New Recordset
        Rs.Open "select wname from rm_weighnment where code='" & txtfields(13).Text & "'", DB, adOpenDynamic, adLockOptimistic
        If Rs.RecordCount <> 0 Then
            Text8.Text = Rs("wname")
        Else
            Text8.Text = ""
        End If
Case 9
        Set Rs = New Recordset
        Rs.Open "select carname from po_car where carcode='" & txtfields(9).Text & "'", DB
        If Rs.RecordCount <> 0 Then
            Text7.Text = Rs("carname")
        Else
            Text7.Text = ""
        End If
        
Case 22
        Set rs1 = New Recordset
        If rs1.State = 1 Then
            rs1.Close
            Set rs1 = New Recordset
        End If
        rs1.Open "select gname from rm_god where gcode='" & txtfields(22).Text & "' AND Divcode = " & Divcode, DB
        If rs1.RecordCount <> 0 Then
            txtfields(23).Text = rs1("gname")
        Else
            txtfields(23).Text = ""
        End If
    
End Select
End If

If Opt = "" Or Opt = " " Then
    Select Case Index
    
    Case 14
            txtfields(14).Text = Format(txtfields(14).Text, "#0.00")

    End Select
End If

'Txtfields(11).Text = sLorryNo


Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmArrival", vbInformation, head

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
    If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
    txtfields(Index).BackColor = &HC0FFC0
    End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0
          StatusBar1.Panels(2).Text = "Enter Arrival Number"
     Case 1
          StatusBar1.Panels(2).Text = "Enter Purchase Order No. "
     Case 2
          StatusBar1.Panels(2).Text = "Enter Supplier Code"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Broker Code"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Station Code"
     Case 5
          StatusBar1.Panels(2).Text = "Enter The variety"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum of 20 Characters"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maximum of 4 Characters"
     Case 10
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 13
          StatusBar1.Panels(2).Text = "Enter ATL Number"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
     Case 14
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 2 Decimal Places"
     Case 16
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers "
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 3 Decimal Places"
    End Select
End If
Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmArrival", vbInformation, head
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 4
    ToUpCase txtfields(Index), KeyAscii
Case 7
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 20, KeyAscii
Case 8
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 15, KeyAscii
Case 9
    ToUpCase txtfields(Index), KeyAscii
Case 10
    ToUpCase txtfields(Index), KeyAscii
    ToAlphaNumber txtfields(Index), 10, KeyAscii
Case 11
    ToUpCase txtfields(Index), KeyAscii
    ToAlphanum txtfields(Index), 30, KeyAscii
Case 12
    ToUpCase txtfields(Index), KeyAscii
Case 13
    ToUpCase txtfields(Index), KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumbernew txtfields(Index), 9, KeyAscii, 9, 2
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber txtfields(Index), KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 7, KeyAscii, 0
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 5, KeyAscii, 0
Case 18
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 7, KeyAscii, 0
Case 21
    ToAlphanum txtfields(Index), 20, KeyAscii
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
    If Index <> 23 And Index <> 89 And Index <> 90 And Index <> 91 And Index <> 95 And Index <> 25 And Index <> 26 And Index <> 27 And Index <> 28 Then
        txtfields(Index).BackColor = &HFFFFFF
    End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 30
    Dim rstChk As Recordset
    Set frs = New Recordset
    frs.Open "select gmsinstall from rm_param", DB
    If frs(0) = "Y" Then
        If Opt = "add" Or Opt = "mod" Then
            Set Rs = New Recordset
            Rs.Open "SELECT sno,Date1 FROM io_materialinward WHERE sno='" & val(txtfields(30).Text) & "' AND DIVCODE='" & Divcode & "' and date1 between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
            Set rstChk = New Recordset
            rstChk.Open "SELECT sno""Inward No"",Date1""Inward Date"" from io_materialinward WHERE DIVCODE='" & Divcode & "'and date1 between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)", DB, adOpenStatic
            If Not rstChk.EOF Then
            If Rs.RecordCount = 0 Then
          
                StatusBar1.Panels(2).Text = "Select Material Inward No. From the List"
                LookUp.Clear = True
                
                Set frs = New Recordset
                frs.Open "select ptypeCotton from Masterlen", DB
                LookUp.query = " SELECT a.Sno , a.Date1 'Date',a.veh_code 'Vehicle No.',a.lrno 'LR No.',a.veh_courier 'Transporter Code' ,isnull(IO_INVOICEQTY ,0) Quantity, isnull(Ordweight,0) Weight FROM IO_materialinward a inner join IO_materialinwarddt b on a.divcode=b.divcode and a.sno=b.sno where a.slcode ='" & Trim(txtfields(2).Text) & "' AND  (a.slcode LIKE 'C1%' or  a.slcode LIKE 'C2%') and  a.sno not in(select inwardno from rm_arrival where divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and inwardno is not null)"
                LookUp.DefCol = "Inward No"
                LookUp.Caption = "Material Inward Listing"
                LookUp.ALIGN = "1200,1200,4000,1750"
               LookUp.Show vbModal
                If LookUp.Cancel = False Then
                   txtfields(30).Text = IIf(IsNull(LookUp.Fields(0)), "", LookUp.Fields(0))
                    MaskEdBox1(3).Text = Format(LookUp.Fields(1), "DD/MM/YYYY")
                    txtfields(11).Text = IIf(IsNull(LookUp.Fields(2)), "", LookUp.Fields(2))
                    txtfields(21).Text = IIf(IsNull(LookUp.Fields(3)), "", LookUp.Fields(3))
                    txtfields(9).Text = IIf(IsNull(LookUp.Fields(4)), "", LookUp.Fields(4))
                    
                    spdVar.SetText Ibalqty, spdVar.ActiveRow, CStr(IIf(IsNull(LookUp.Fields("Quantity")), "", LookUp.Fields("Quantity")))  'rsdpl("Qty")
                    spdVar.SetText Igrosswt, spdVar.ActiveRow, CStr(IIf(IsNull(LookUp.Fields("Weight")), "", LookUp.Fields("Weight")))
                    spdVar.SetText iNetwt, spdVar.ActiveRow, CStr(IIf(IsNull(LookUp.Fields("Weight")), "", LookUp.Fields("Weight")))
                    LookUp.Clear = True
                    txtfields(32).SetFocus
                Else
                    txtfields(30).Text = ""
                    txtfields(32).SetFocus
                End If
            Else
                txtfields(30).Text = Rs(0)
                MaskEdBox1(3).Text = Rs(1)
                txtfields(32).SetFocus
            End If
            Else
                MsgBox "No Details in List", vbInformation, head
                txtfields(32).SetFocus
            End If
        End If
    End If
    Exit Sub
Case 32
    
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM Rm_ginner WHERE GinCODE='" & Trim(txtfields(32).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = " select Gincode""Ginner Code"",GinName""Ginner Name"" from RM_Ginner"
            LookUp.Caption = "Ginner List"
            LookUp.DefCol = "Ginner Name"
            LookUp.ALIGN = "1600,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(32).Text = LookUp.Fields(0)
                txtfields(31).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(11).SetFocus
            Else
                txtfields(32).Text = ""
                txtfields(31).Text = ""
                txtfields(11).SetFocus
            End If
        Else
            txtfields(31).Text = Rs("ginname")
        End If
        Exit Sub

Case 22
    Set rstSLOTNO = New Recordset
    spdVar.Row = 2
    If globalarrivalorder = "C" Then
        rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  ", DB, adOpenStatic
    Else
        rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & val(GetText(spdVar, IContno, 1)) & "' and Contdt = '" & Format(GetText(spdVar, IContdt, 1), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(2).Text) & "' AND Divcode ='" & Divcode & "'", DB, adOpenStatic
    End If
    If rstSLOTNO.EOF = False Then StatusBar1.Panels(2).Text = "Enter Supplier Lot No. Between " & rstSLOTNO!SUPPLIERLOTNOFROM & " and " & rstSLOTNO!SUPPLIERLOTNOTO
    rstSLOTNO.Close
    Set rstSLOTNO = Nothing
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
    StatusBar1.Panels(2).Text = ""
Case 9
    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "select carcode,carname from po_car where carcode='" & txtfields(9).Text & "'", DB
        If Rs.RecordCount > 0 Then
            txtfields(9).Text = Rs(0)
            Text7.Text = Rs(1)
        Else
            StatusBar1.Panels(2).Text = "Select Carrier from the list"
            LookUp.Clear = True
            LookUp.query = "SELECT carcode""Transport Code"",Carname""Transport Name"" FROM PO_CAR"
            LookUp.DefCol = "Transport Name"
            LookUp.Caption = "Carrier Listing"
            LookUp.ALIGN = "1500,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(9).Text = LookUp.Fields(0)
                Text7.Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(21).SetFocus
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
    End If
     BUTTON(9).Enabled = True

Case 4
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select areacode,STATION from rm_area where areacode = '" & txtfields(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
            If Rs.RecordCount = 0 Then
                StatusBar1.Panels(2).Text = "Select Station Code From the List"
                LookUp.Clear = True
                LookUp.query = "SELECT areacode""Station Code"",Station""Station Name"" from RM_Area"
                LookUp.DefCol = "Station Name"
                LookUp.Caption = "Station List"
                LookUp.ALIGN = "2000,3000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(4).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    txtfields(13).SetFocus
                    Exit Sub
                Else
                    txtfields(4).Text = ""
                    Text3.Text = ""
                    txtfields(4).SetFocus
                    Exit Sub
                End If
            End If
    Else
        MsgBox "Please define the Station Name in Set Up!", vbInformation, head
        Exit Sub
    End If
    Exit Sub
Case 13
If Trim(txtfields(4).Text) <> "" And Trim(Text3.Text) <> "" Then
Set Rs = New Recordset
    Rs.Open "select * from rm_weighnment where divcode='" & Divcode & "' and code='" & Trim(txtfields(13).Text) & "' ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        Print "Hai"
        LookUp.Clear = True
        LookUp.query = "select code as ""Weighment Code"",wname as ""Weighment Name"" from rm_weighnment where divcode='" & Divcode & "' "
        LookUp.DefCol = "Weighment Name"
        LookUp.Caption = "Weighment Listing"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(13).Text = LookUp.Fields(0)
            Text8.Text = LookUp.Fields(1)
            LookUp.Clear = True
            If Arrdespatch_Flg = "N" Then
                txtfields(14).SetFocus
            End If
        Else
            txtfields(13).Text = ""
            Text8.Text = ""
        End If
        LookUp.Clear = True
    Else
        Text8.Text = Rs("wname")
    End If
    End If
    Exit Sub
Case 14
txtfields(14).Text = Format(txtfields(14).Text, "#0.00")
End Select
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmArrival", vbInformation, head
End Sub

Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error
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
Exit Sub
tonum1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tonum1 of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 22

    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "SELECT gcode,gname FROM rm_GOD WHERE GCODE='" & txtfields(22).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            
            StatusBar1.Panels(2).Text = "Select Godown Code From the List"
            LookUp.Clear = True
            LookUp.query = "SELECT gcode""Godown Code"",gname""Godown Name"" from rm_god WHERE DIVCODE='" & Divcode & "'"
            LookUp.DefCol = "Godown Name"
            LookUp.Caption = "Godown Listing"
            LookUp.ALIGN = "1500,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                gCode = LookUp.Fields(0)
                txtfields(22).Text = LookUp.Fields(0)
                txtfields(23).Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(21).SetFocus
                spdVar.Row = spdVar.ActiveRow
                spdVar.Col = 5
                spdVar.Action = ActionActiveCell
            Else
                txtfields(22).Text = ""
                txtfields(23).Text = ""
                txtfields(22).SetFocus
            End If
        Else
            txtfields(22).Text = Rs(0)
            txtfields(23).Text = Rs(1)
            txtfields(21).SetFocus
        End If
    End If
    BUTTON(9).Enabled = True

Case 2
If Arrdespatch_Flg = "N" Then

    Dim itmX As ListItem


    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton")
    Else
        sup = ""
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from FA_SLMAS WHERE left(slcode,2) in (select Items from dbo.split('" & sup & "',','))", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        If globalarrivalorder = "C" Then
            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  SLcode = '" & txtfields(2).Text & "'  and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(2).Text & "'  and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
        Else
            Rs.Open "select  slcode,isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  SLcode = '" & txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select  slcode,GROUPCODE from rm_cont a,fa_slmas b where  SLcode = '" & txtfields(2).Text & "' and divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rcDKGS,0)) and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
        End If
        
        If Rs.BOF Then
          
            StatusBar1.Panels(2).Text = "Select Supplier Code From the List"
            If globalarrivalorder = "C" Then
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and   a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))"
            Else
                qry = "select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & _
                  "UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'') GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and   A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'"
            End If
            
            Set rsnew = New Recordset
            If globalarrivalorder = "C" Then
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and   a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                rsnew.Open " select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & _
                           " UNION select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' UNION ALL  select DISTINCT isnull(GROUPCODE,'')GROUPCODE from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'", DB, adOpenStatic
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
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where " & _
                            " isnull(a.Fclosed,'N')<>'Y' and  a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' and  (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & StrAppQry & "" & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & StrAppQry & ""
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where " & _
                                " isnull(a.Fclosed,'N')<>'Y' and  (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")" & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  " & _
                           "   isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")"
            End If

            Else
            
            If grpcode = "" Then
                LookUp.query = " select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "" & _
                           " UNION select DISTINCT a.supcd""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO ,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and a.supcd=b.slcode and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " UNION ALL  select DISTINCT a.supcd""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and a.supcd=b.slcode and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K'" & StrAppQry & ""
            Else
                LookUp.query = " select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  isnull(a.Fclosed,'N')<>'Y' and  divcode='" & Divcode & "' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE ,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where  " & _
                                " isnull(a.Fclosed,'N')<>'Y' and divcode='" & Divcode & "' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")" & _
                           " UNION select DISTINCT B.SLCODE""Supplier Code"",b.Slname""Supplier Name"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  A.prefix='C' and (ordqty>isnull(cancelbales,0)+isnull(recqty,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ") UNION ALL  select DISTINCT B.SLCODE""Code"",Slname""Supplier"", b.City, b.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(B.GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype from rm_cont a,fa_slmas b where isnull(a.Fclosed,'N')<>'Y' and  a.Prefix='C' and (ordKGS>isnull(rCDKGS,0))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND B.GROUPCODE IN (" & grpcode & ")"
            End If
            
            End If
            
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,3800,2000,1500,0"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
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
            
                txtfields(2).Text = LookUp.Fields(0)
                sCode = LookUp.Fields(0)
                Sname = LookUp.Fields(1)
                Text1.Text = LookUp.Fields(1)
                custgrp = LookUp.Fields(4)
                If globalarrivalorder = "C" Then
                     If custgrp = "" Then
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,isnull(OCNo,'') OCNo " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' )X order by cast(contno as numeric) desc "
                    Else
                        qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,isnull(OCNo,'') OCNo " & _
                          " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0))  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0  AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))" & _
                          " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and   A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                          " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "' )X order by cast(contno as numeric) desc "
                    End If

                Else
                If custgrp = "" Then
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,isnull(OCNo,'') OCNo " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P'" & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0) ""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 and divcode='" & Divcode & "' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K' " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  AND ISNULL(ARRIVALTYPE,'P')='K')X order by cast(contno as numeric) desc"
                Else
                    qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,isnull(OCNo,'') OCNo " & _
                      " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(ARRIVALTYPE,'P')='P' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "'" & _
                      " UNION ALL select DISTINCT  DIVCODE,CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 and divcode='" & Divcode & "' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & " AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                      " union select DISTINCT  DIVCODE,CAST(Contno AS VARCHAR(10)) AS Contno,Contdt,a.Varcode,varname,ISNULL(Ordqty,0)-(ISNULL(RECQTY,0)+ISNULL(CANCELBALES,0))""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND ordqty>(isnull(recqty,0)+isnull(cancelbales,0)) and a.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & " AND ISNULL(ARRIVALTYPE,'P')='P' AND isnull(fs.GROUPCODE,'')='" & custgrp & "' " & _
                      " UNION ALL select DISTINCT DIVCODE,CAST(Contno AS VARCHAR(10)) AS CONTNO,Contdt,a.Varcode,varname,ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0)""balqty"",candyrate,rateunit,arrivaltype,OCNo from rm_cont a,RM_VAR C,FA_SLMAS fs where isnull(a.Fclosed,'N')<>'Y' and  A.VARCODE=C.VARCODE  AND (ISNULL(ORDKGS,0)-ISNULL(RCDKGS,0)+isnull(cancelkgs,0))>0 and A.PREFIX='C' AND a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'  AND ISNULL(ARRIVALTYPE,'P')='K' " & StrAppQry & "  AND isnull(fs.GROUPCODE,'')='" & custgrp & "')X order by cast(contno as numeric) desc "
                End If
                End If
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                LstPO.Clear
                ListPO.ListItems.Clear
                ListPO.ColumnHeaders.Clear
                 
                ListPO.ColumnHeaders.ADD , , "PO No.", 1300, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "PO Date", 1500, lvwColumnCenter
                ListPO.ColumnHeaders.ADD , , "Variety Code", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Variety Name", 2100, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Quantity", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Candy Rate", 1400, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Rate per Unit", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "DivCode", 1, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "OC.No.", 1400, lvwColumnLeft
                Do Until Lrs.EOF
                    Set itmX = ListPO.ListItems.ADD(, , Lrs("Contno"))
                    itmX.Tag = Lrs("Contno")
                    itmX.SubItems(1) = Format(Lrs("contdt"), "dd/mm/yyyy")
                    itmX.SubItems(2) = Lrs("Varcode")
                    itmX.SubItems(3) = Lrs("Varname")
                    itmX.SubItems(4) = Lrs("BalQty")
                    itmX.SubItems(5) = Lrs("candyrate")
                    itmX.SubItems(6) = Lrs("Rateunit")
                    itmX.SubItems(7) = Lrs!Divcode
                    itmX.SubItems(8) = Lrs("ocno")
                    Lrs.MoveNext
                Loop
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                ListPO.SetFocus
                Exit Sub
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select slname,isnull(GROUPCODE,'') as GROUPCODE from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            
            If rs1.BOF Then
               Text1.Text = ""
            Else
               Text1.Text = rs1(0)
            End If
            custgrp = rs1(1)
        End If
    Else
        MsgBox "Please define the Supplier in Master!", vbInformation, head
        Exit Sub
    End If
Else
             StrAppQry = ""
            If POApproval = True Then
                StrAppQry = " and isnull(a.Appflg,'N')='Y' "
            End If
            LookUp.Clear = True
            LookUp.query = " select DISTINCT a.supcd""Supplier Code"",a.Slname""Supplier Name"", a.City, a.brcode""Broker Code"",isnull(GROUPCODE,'')GROUPCODE,isnull(a.GSTSTATECODE,'0') GSTSTATECODE,isnull(a.GSTINNO,'') GSTINNO,isnull(a.supptype,'R') Supptype from Vw_RM_PendingDespatch a  where    (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "' " & StrAppQry & ""
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,3800,2000,1500,0"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then

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
            
                txtfields(2).Text = LookUp.Fields(0)
                sCode = LookUp.Fields(0)
                Sname = LookUp.Fields(1)
                Text1.Text = LookUp.Fields(1)
                custgrp = LookUp.Fields(4)
                qry = "select DIVCODE,cast(contno as VARCHAR(10)) as contno,contdt,varcode,varname,balqty,candyrate,rateunit,arrivaltype,docno,docdate,INV_QtyKGS,invNo,isnull(OCNo,'') OCNo " & _
                        " from(select DISTINCT  DIVCODE,Contno,Contdt,a.Varcode,a.varname,balqty ""balqty"",candyrate,rateunit,arrivaltype,a.docno,a.docdate,INV_QtyKGS,a.invNo,a.OCNo from Vw_RM_PendingDespatch a,RM_VAR C where A.VARCODE=C.VARCODE   AND supcd='" & LookUp.Fields(0) & "'  and a.contdt<='" & Format(pdate, "yyyy-mm-dd") & "'" & StrAppQry & "  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) " & _
                        " )X order by cast(contno as numeric) desc"
               
                Set Lrs = New Recordset
                Lrs.Open qry, DB, adOpenStatic
                LstPO.Clear
                ListPO.ListItems.Clear
                ListPO.ColumnHeaders.Clear
                ListPO.ColumnHeaders.ADD , , "PO No.", 900, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "PO Date", 1100, lvwColumnCenter
                ListPO.ColumnHeaders.ADD , , "Variety Code", 1100, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Variety Name", 2500, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Quantity", 1000, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Candy Rate", 1150, lvwColumnRight
                ListPO.ColumnHeaders.ADD , , "Rate per Unit", 1400, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "DivCode", 0, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Despatch Plan No", 1500, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Despatch Plan Date", 1, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Commercial Wt.", 1, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "Invoice No", 1200, lvwColumnLeft
                ListPO.ColumnHeaders.ADD , , "OC No", 1200, lvwColumnLeft
                
                Do Until Lrs.EOF
                    
                    Set itmX = ListPO.ListItems.ADD(, , Lrs("Contno"))
                    itmX.Tag = Lrs("Contno")
                    itmX.SubItems(1) = Format(Lrs("contdt"), "dd/mm/yyyy")
                    itmX.SubItems(2) = Lrs("Varcode")
                    itmX.SubItems(3) = Lrs("Varname")
                    itmX.SubItems(4) = Lrs("BalQty")
                    itmX.SubItems(5) = Lrs("candyrate")
                    itmX.SubItems(6) = Lrs("Rateunit")
                    itmX.SubItems(7) = Lrs!Divcode
                    itmX.SubItems(8) = Lrs("docno")
                    itmX.SubItems(9) = Format(Lrs("docdate"), "dd/mm/yyyy")
                    itmX.SubItems(10) = Lrs("INV_QtyKGS")
                    itmX.SubItems(11) = Lrs("invno")
                    itmX.SubItems(12) = Lrs("ocno")
                    Lrs.MoveNext
                Loop
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                ''LstPO.SetFocus
                ListPO.SetFocus
                Exit Sub
        
        
         Else
                Cancel = True
                txtfields(33).SetFocus
        
        End If
End If

Case 13
    If txtfields(13).Text = "" Then
        txtfields(13).Locked = False
        txtfields(13).SetFocus
    Else
        txtfields(14).SetFocus
    End If
    
 Case 33
         If Record_Exists("RM_Plant") = False Then Exit Sub
            If txtfields(33).Text = "" Then
               LookUp.Clear = True
               LookUp.query = "SELECT plcode ""Plant Code"",PLName ""Description"" FROM RM_Plant "
               LookUp.ALIGN = "900,3000"
               LookUp.Caption = "Plant Listing"
               LookUp.DefCol = "Plant Description"
               LookUp.Show vbModal
               If LookUp.Cancel = False Then
                       txtfields(33).Text = LookUp.Fields(0)
                       Text10.Text = LookUp.Fields(1)
               Else
                       Cancel = True
                       txtfields(33).SetFocus
               End If
          End If

End Select
End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmArrival", vbInformation, head
End Sub

Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    SetSpreadCol spdVar, IContno, "Order No.", CellTypeStaticText
    SetSpreadCol spdVar, IContdt, "Order Date", CellTypeStaticText
    SetSpreadCol spdVar, IVarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol spdVar, IVarName, "Variety Name", CellTypeStaticText
    SetSpreadCol spdVar, Iplotno, "Supplier Lot No.", CellTypeEdit, 8, False, False
    SetSpreadCol spdVar, Iprno, "PR No.", CellTypeEdit
    SetSpreadCol spdVar, Ipressmarkno, "PressMark No.", CellTypeEdit
    SetSpreadCol spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol spdVar, Imixcount, "Mixing Code", CellTypeStaticText
    SetSpreadCol spdVar, Imixgrp, "Mixing Group", CellTypeStaticText
    SetSpreadCol spdVar, Icandyrate, "               Rate", CellTypeNumber, 7, 0
    SetSpreadCol spdVar, Ibalqty, "Quantity", CellTypeNumber, 0, 0
    SetSpreadCol spdVar, IFullTruckWt, "Full Truck Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, IEmptyTruckWt, "Empty Truck Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, Igrosswt, "   Gross Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, Itarewt, " Tare Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iMoitureper, "Moisture %.", CellTypeNumber, 2, 0, 99.99
    SetSpreadCol spdVar, iMoiturewt, "Excess Moisture", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iNetwt, "       Nett Wt.", CellTypeNumber, 3, 0
    SetSpreadCol spdVar, iDPlanNO, "Despatch Plan No.", CellTypeStaticText
    SetSpreadCol spdVar, iDPlanDT, "Despatch Plan Date", CellTypeStaticText
    SetSpreadCol spdVar, ICommr_Wt, "Commercial Wt.", CellTypeNumber, 3, 0
    spdVar.Col = Icandyrate
    spdVar.Lock = True
    spdVar.Col = ICommr_Wt
    spdVar.Lock = True
    spdVar.Col = 3
    spdVar.ColHidden = True
    spdVar.ColWidth(4) = 20
    spdVar.ColWidth(Itarewt) = 7
    spdVar.ColWidth(iMoitureper) = 7
    spdVar.ColWidth(iMoiturewt) = 10
    spdVar.ColWidth(Iplotno) = 12
    spdVar.ColWidth(IFullTruckWt) = 10
    spdVar.ColWidth(IEmptyTruckWt) = 11
     spdVar.ColWidth(Icandyrate) = 11

    Set Rs = New Recordset
    Rs.Open "Select SeasonCalcReq from rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        SetSpreadCol spdVar, iTrashPer, "Trash %.", CellTypeNumber, 2, 0, 99.99
        With spdVar
            .MaxCols = 23
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 3, 1
        End With
    Else
        
        With spdVar
            .MaxCols = 22
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 3, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub

Private Sub ArrivalDisplay()

On Error GoTo ArrivalDisplay_Error

Set rsarr = New Recordset
rsarr.Open "select contno ,contdt, varcode, cntcode, PRNO, PRMARK, PlotNo,LORRYNOS,lrno, Quantity, GROSSWT, TAREWT, netwt, Ratecy, BBFLAG, isnull(moisture_per,0)moisture_per,isnull(moisture_et,0)moisture_et, isnull(catcd,''), freight,FullTruckWgt,EmptyTruckWgt,TRashper,GinCode,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt  from rm_arrival where arrno=" & adoPrimaryRS("arrno") & " and arrdate='" & Format(adoPrimaryRS("arrdate"), "yyyy-mm-dd") & "' and divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

txtfields(11).Text = ""
txtfields(21).Text = ""
txtfields(14).Text = ""
totgroswt = 0
TotTareWt = 0
totmoiwt = 0
TotNetWT = 0
Call SpreadAlign(rsarr.RecordCount)

For I = 1 To rsarr.RecordCount
    
    spdVar.SetText IContno, I, rsarr("contno")
    spdVar.SetText IContdt, I, rsarr("contdt")
    spdVar.SetText IVarcode, I, rsarr("varcode")

    spdVar.SetText iDPlanNO, I, rsarr("DPDocno")
    spdVar.SetText iDPlanDT, I, rsarr("DPDocDate")
    spdVar.SetText ICommr_Wt, I, rsarr("Commr_Wt")
    
    
    Set RSV = New Recordset
    RSV.Open "select * from rm_var where varcode='" & rsarr("varcode") & "'", DB, adOpenStatic
    
    spdVar.SetText IVarName, I, RSV("varname")
    spdVar.SetText Iplotno, I, rsarr("plotno")
    spdVar.SetText Iprno, I, rsarr("prno")
    spdVar.SetText Ipressmarkno, I, rsarr("prmark")
    spdVar.SetText Imixcount, I, rsarr("cntcode")
    
    spdVar.SetText iGinner, 1, getMasterName("Ginname", "RM_GInner", "Gincode", IIf(IsNull(rsarr("Gincode")), "", rsarr("Gincode")))
    
    Set RSV = New Recordset
    RSV.Open "select * from rm_mixgrp where mixgrpcd='" & CStr(rsarr("cntcode")) & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    If RSV.RecordCount > 0 Then
        grpname = RSV("mixgrpname")
    Else
        grpname = ""
    End If
    
    If Not rsarr.EOF Then
        txtfields(11).Text = rsarr("LORRYNOS")
        txtfields(21).Text = IIf(IsNull(rsarr("LRNO")), "", rsarr("LRNO"))
        txtfields(14).Text = rsarr!Freight
    End If
    
    spdVar.SetText Imixgrp, I, grpname
    spdVar.SetText Ibalqty, I, rsarr("quantity")
    spdVar.SetText Icandyrate, I, rsarr("ratecy")
    spdVar.SetText IFullTruckWt, I, rsarr("FullTruckWgt")
    spdVar.SetText IEmptyTruckWt, I, rsarr("EmptyTruckWgt")
    spdVar.SetText Igrosswt, I, rsarr("grosswt")
    spdVar.SetText iTrashPer, I, rsarr("Trashper")
    
    spdVar.SetText Itarewt, I, rsarr("tarewt")
    spdVar.SetText iMoitureper, I, rsarr("moisture_per")
    spdVar.SetText iMoiturewt, I, rsarr("moisture_et")
    spdVar.SetText iNetwt, I, rsarr("netwt")
    totgroswt = totgroswt + rsarr("grosswt")
    TotTareWt = TotTareWt + rsarr("tarewt")
    totmoiwt = totmoiwt + rsarr("moisture_et")
    TotNetWT = TotNetWT + rsarr("netwt")
    MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdate"), "dd/mm/yyyy")
    If IsNull(rsarr("bbflAg")) = False Then
        If rsarr("bbflAg") = "B" Then
         spdVar.SetText Iunit, I, "Bale"
        ElseIf rsarr("bbflAg") = "R" Then
         spdVar.SetText Iunit, I, "Borah"
        ElseIf rsarr("bbflAg") = "H" Then
         spdVar.SetText Iunit, I, "HalfPressBale"
        End If
    End If
    
    rsarr.MoveNext
Next
    txtfields(25).Text = Format(CStr(totgroswt), "######0.000")
    txtfields(26).Text = Format(CStr(TotTareWt), "#####0.000")
    txtfields(27).Text = Format(CStr(totmoiwt), "#####0.000")
    txtfields(28).Text = Format(CStr(TotNetWT), "#####0.000")
    Call spdVar_Click(1, 1)
Exit Sub


Exit Sub
ArrivalDisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ArrivalDisplay of Form FrmArrival", vbInformation, head

End Sub

Private Function MaxNo() As Integer
Dim rsMax As New ADODB.Recordset
Dim iMaxNo As Integer
On Error GoTo MaxNo_Error

Set rsMax = New Recordset
    
    rsMax.Open "SELECT ISNULL(MAX(ARRNO),0)+1 FROM rm_arrival WITH (UPDLOCK) WHERE  ARRdAtE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    
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

Public Sub Unbindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
For Each oText In Me.txtfields
    Set oText.DataSource = Nothing
Next

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub FreightAmtPosting(sOpt As String, Optional mode As String)

    If sOpt = "mod" Or sOpt = "del" Then
    
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(CarJV_TC,0) as CarJV_TC,isnull(CarJV_VocNo,0) as CarJV_VocNo " & _
                      " FROM RM_ARRIVAL  WHERE Divcode='" & Divcode & "' and ArrNo=" & val(txtfields(0).Text) & "" & _
                      " And ArrDate='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
                      
        If rstPARAM.RecordCount > 0 Then
            iJVTc = rstPARAM("CarJV_TC")
            iVocno = rstPARAM("CarJV_VocNo")
            iVocdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
        Else
            iJVTc = 0
            iVocno = 0
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
        
        If (mode = "mod" Or mode = "del") And iJVTc > 0 And iVocno > 0 Then
            
            Set rstPARAM = New Recordset
            rstPARAM.Open "SELECT ISNULL(App_userid,'') from Fa_Jvhead Where ISNULL(App_userid,'')='' AND Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
            If rstPARAM.EOF Then
                MsgBox "Transport Charge already approved, So do not change.", vbCritical, head
            End If
            rstPARAM.Close
            Set rstPARAM = Nothing
                
            Exit Sub
        ElseIf mode = "mod" Or mode = "del" Then
            Exit Sub
        End If
        
        If iJVTc > 0 And iVocno > 0 Then
            DB.Execute "Delete From Fa_Jvhead Where Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'"
            DB.Execute "Delete From FA_JVLINE Where Divcode='" & Divcode & "' AND Tc='" & val(iJVTc) & "' AND VocNo='" & val(iVocno) & "' AND VocDt='" & Format(iVocdt, "yyyy-MM-dd") & "'"
        End If
        
    End If
    
    If sOpt = "add" Or sOpt = "mod" Then
        
        If sOpt = "add" Or (iJVTc <= 0 And sOpt = "mod") Then
            Set rstPARAM = New Recordset
            rstPARAM.Open "SELECT isnull(FROMJVTC,0) as jvTc  FROM fa_param ", DB, adOpenDynamic, adLockOptimistic
            If rstPARAM.RecordCount > 0 Then
                iJVTc = rstPARAM(0)
            Else
                iJVTc = 0
            End If
            rstPARAM.Close
            Set rstPARAM = Nothing
        End If
        
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(a.slcode,'') as Slcode,b.slname ,isnull(a.ccode,'') as ccode FROM po_car a,fa_slmas b WHERE a.slcode=b.slcode and a.carcode = '" & Trim(txtfields(9).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If rstPARAM.RecordCount > 0 Then
            sSLcode = rstPARAM(0)
            sSLName = rstPARAM(1)
            Sccode = rstPARAM(2)
        Else
            sSLcode = ""
            sSLName = ""
              Sccode = ""
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
        
        Set rstPARAM = New Recordset
        rstPARAM.Open "SELECT isnull(CarrierGL,'') as Slcode FROM RM_PARAM ", DB, adOpenDynamic, adLockOptimistic
        If rstPARAM.RecordCount > 0 Then
            sGLCode = rstPARAM(0)
        Else
            sGLCode = ""
        End If
        rstPARAM.Close
        Set rstPARAM = Nothing
        
        If Trim(sSLcode) <> "" And Trim(sGLCode) <> "" And val(iJVTc) > 0 And val(txtfields(14).Text) > 0 Then
            
            If sOpt = "add" Or (iVocno <= 0 And sOpt = "mod") Then
                Set rstPARAM = New Recordset
                rstPARAM.Open "SELECT isnull(MAX(Vocno),0) FROM Fa_Jvhead WHERE Tc = '" & iJVTc & "' AND Divcode = '" & Divcode & "' and Vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockOptimistic
                If rstPARAM.RecordCount > 0 Then
                    iVocno = IIf(IsNull(rstPARAM(0)), 1, rstPARAM(0) + 1)
                Else
                    iVocno = 1
                End If
                rstPARAM.Close
                 Set rstPARAM = Nothing
            End If
            
            Narr = "Cotton Arrival Freight Amount for Arr. No. " & val(txtfields(0).Text) & " Dt. " & Format(MaskEdBox1(0).Text, "dd/MM/yy") & " and Transporter - " & sSLName & ""
            
            DB.Execute "INSERT INTO Fa_Jvhead " & _
            "(divcode,tc,vocno,vocdt) VALUES ('" & _
            Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "')"
            
            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,amtdue,cccode) VALUES ('" & _
                        Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "',1,'" & _
                        Trim(sGLCode) & "','" & Narr & "'," & Abs(val(txtfields(14).Text)) & "," & val(txtfields(14).Text) & ",'" & Sccode & "')"
            
            DB.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,cccode) VALUES ('" & _
                        Divcode & "','" & iJVTc & "'," & iVocno & ",'" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "',2,'" & _
                        sSLcode & "','" & Narr & "'," & Abs(val(txtfields(14).Text)) & ",'" & Sccode & "')"
            
            DB.Execute "UPDATE RM_ARRIVAL SET CarJV_TC=" & val(iJVTc) & ",CarJV_VocNo=" & val(iVocno) & "" & _
                       " WHERE Divcode='" & Divcode & "' and ArrNo=" & val(txtfields(0).Text) & " and ArrDate='" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & "'"
            
        End If
    End If
                     
                     
End Sub

Private Sub ArrPrint()
On Error GoTo MaxNo_Error

    With crr
    .Reset
    .Connect = connectstring
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = Cry_Arrival_Confirmation
    clsCryRpt.CrystalPrint
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "@divcode;" & Divcode & ""
    crr.ParameterFields(1) = "@Date;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd") & ""
    crr.ParameterFields(2) = "@FARRNno;" & txtfields(0).Text & ""
    crr.ParameterFields(3) = "@TARRNno;" & txtfields(0).Text & ""
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1

    End With
 Exit Sub
MaxNo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaxNo of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ArrivalDelLog()
On Error Resume Next

        

  
            For I = 1 To spdVar.MaxRows
                a = IContno
                B = IContdt
               
                d = IVarcode
                
                Set TrnLog = New Recordset
                 TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax,DelReason  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                 TrnLog.AddNew
                 TrnLog("DIVCODE") = Divcode
                 TrnLog("moduleNo") = ModuleNo
                 TrnLog("Trans_Name") = "Arrival"
                 TrnLog("Trans_Mod") = "del"
                 TrnLog("Trans_IPADD") = LocalIP
                 TrnLog("Trans_Host") = LocalHost
                 TrnLog("Trans_UserId") = usrid
                 Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                 TrnLog("plcode") = Trim(txtfields(33).Text)
                 TrnLog("Line_No") = Trim(txtfields(34).Text)
                 TrnLog("contno") = val(GetText(spdVar, IContno, I))
                 TrnLog("CONTDT") = Format(Trim(GetText(spdVar, IContdt, I)), "yyyy-mm-dd")
                 TrnLog("slcode") = txtfields(2).Text
                 TrnLog("areacode") = IIf(Trim(txtfields(4).Text) = "", Null, txtfields(4).Text)
                 TrnLog("Agent_code") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
                 TrnLog("godown") = Trim(txtfields(22).Text)
                 TrnLog("LorryNo") = Trim(txtfields(11).Text)
                 TrnLog("Frg_Amt") = val(txtfields(14).Text)
                 TrnLog("varcode") = GetText(spdVar, IVarcode, I)
                 TrnLog("catcd") = Trim(txtfields(29).Text)
                 TrnLog("ordqty") = val(GetText(spdVar, Ibalqty, I))
                 TrnLog("arrno") = Trim(txtfields(0).Text)
                TrnLog("arrdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")
                TrnLog("docno") = Trim(txtfields(0).Text)
                TrnLog("docdt") = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")

                 TrnLog("netwt") = val(GetText(spdVar, iNetwt, I))

                 TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, I))
                 TrnLog("DelReason") = Trim(DelReasonCode)
                 
                 TrnLog.UpdateBatch adAffectAllChapters
        Next

End Sub
Private Sub AddRecord()
On Error Resume Next
  If ToValidFinYear(Divcode) = False Then Exit Sub
    Set rsz = New Recordset
    rsz.Open "select max(arrdate) from rm_arrival where divcode='" & Divcode & "'", DB, adOpenStatic
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please enter valid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If
    


    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,lotno,lottype,lotdt,weignment,godown,LRNO,MOITURE,moisture_per,moisture_et,inwardno,inwarddate,FullTruckWgt,EmptyTruckWgt,LR_InDt,LR_InTime,LR_OutDt,LR_OutTime,Line_No,PlCode,DPDocno,DPDocDate,Commr_Wt FROM RM_ARRIVAL WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
    
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text10.Text = ""
    txtfields(22).Text = ""
    txtfields(14).Text = ""
    sCode = ""
    Sname = ""
    txtfields(2).Text = ""
    txtfields(25).Text = ""
    txtfields(11).Text = ""
    txtfields(21).Text = ""
    txtfields(26).Text = ""
    txtfields(22).Text = ""
    txtfields(27).Text = ""
    txtfields(28).Text = ""
    txtfields(89).Text = ""
    txtfields(90).Text = ""
    txtfields(95).Text = ""
    txtfields(91).Text = ""
    txtfields(23).Text = ""
    txtfields(30).Text = ""
    Text7.Text = ""
    MaskEdBox1(3).Text = "__/__/____"
    Call ENABLCONTLS
    Call bindcontls
    

    Call SpreadAlign(0)
    Call adddelmod(BUTTON)
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    MaskEdBox1(0).Text = pdate
    
    StatusBar1.Panels(2).Text = "Select Purchase Order Number from the List"
    txtfields(0).Locked = True
    txtfields(3).Locked = True
    txtfields(2).Locked = False

    SSTab1.Enabled = True
    txtfields(0).Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    txtfields(2).Text = ""
    txtfields(2).SetFocus
    'to generate separate lot no for waste
    Set Rs = New Recordset
    If globalarrivalorder = "C" Then
        Rs.Open "select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and isnull(Fclosed,'N')<>'Y'  UNION select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and isnull(Fclosed,'N')<>'Y'  and PREFIX='C' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
    Else
         Rs.Open "select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and divcode='" & Divcode & "' and isnull(Fclosed,'N')<>'Y'  UNION select DISTINCT CONTNO,CONTDT,isnull(Arrivaltype,'') from rm_cont a where ordqty >= isnull(recqty,0) and isnull(Fclosed,'N')<>'Y'  and PREFIX='C'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    
    If Rs.RecordCount = 0 Then
        MsgBox "No Pending Contract Details", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    Else
        LookUp.Clear = True
        LookUp.query = "select catcd""Category"",catname""Category Name"" from rm_cat"
        LookUp.Caption = "Category List"
        LookUp.DefCol = "Category Name"
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
          If globalarrivalorder = "C" Then
            If LookUp.Fields(0) <> "W" Then
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='' and isnull(Fclosed,'N')<>'Y' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) "
                Waste = "N"
            Else
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0))  and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')<>'' and isnull(Fclosed,'N')<>'Y' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) UNION select DISTINCT slcode""SupplierCode"",Slname""Supplier""  from rm_cont a,fa_slmas b where  a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='M' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))"
                Waste = "Y"
            End If
            Else
            If LookUp.Fields(0) <> "W" Then
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' and isnull(Fclosed,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')=''"
                Waste = "N"
            Else
                qry = "select DISTINCT slcode""Supplier Code"",Slname""Supplier""  from rm_cont a,fa_slmas b where ordqty>(isnull(recqty,0)+ISNULL(CANCELBALES,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y'  and isnull(Fclosed,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')<>'' UNION select DISTINCT slcode""SupplierCode"",Slname""Supplier""  from rm_cont a,fa_slmas b where divcode='" & Divcode & "' and a.supcd=b.slcode AND ISNULL(CLOSUREFLG,'N')<>'Y' and isnull(Fclosed,'N')<>'Y' AND ISNULL(ARRIVALTYPE,'')='M'"
                Waste = "Y"
            End If
         End If
            txtfields(29).Text = LookUp.Fields(0)
            Set rsc = New Recordset
            rsc.Open "SELECT * FROM RM_CAT WHERE CATCD='" & LookUp.Fields(0) & "'", DB, adOpenStatic
            If rsc.RecordCount > 0 Then
                Text9.Text = rsc("CATNAME")
            End If
        End If
    End If
    'end for separate lot no for waste
    Call Unbindcontls
End Sub
