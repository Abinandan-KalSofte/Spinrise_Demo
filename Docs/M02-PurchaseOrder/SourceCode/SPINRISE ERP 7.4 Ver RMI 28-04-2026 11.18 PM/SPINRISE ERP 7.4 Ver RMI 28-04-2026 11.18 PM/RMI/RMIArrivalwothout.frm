VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form FrmArrivalwithout 
   Caption         =   "Arrival"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   ForeColor       =   &H80000009&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   9195
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   49
      Top             =   -120
      Width           =   9465
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":0000
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "RMIArrivalwothout.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":07DF
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "RMIArrivalwothout.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":0E65
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "RMIArrivalwothout.frx":116F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":1511
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "RMIArrivalwothout.frx":195B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "RMIArrivalwothout.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":2457
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "RMIArrivalwothout.frx":28A1
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":2BEE
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "RMIArrivalwothout.frx":3038
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMIArrivalwothout.frx":339D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":3734
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
         Picture         =   "RMIArrivalwothout.frx":3A3E
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":3DDA
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIArrivalwothout.frx":40E4
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArrivalwothout.frx":445E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIArrivalwothout.frx":4768
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8085
         TabIndex        =   51
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
         Left            =   6570
         TabIndex        =   50
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   48
      Top             =   6495
      Width           =   9195
      _ExtentX        =   16219
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "10/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "3:41 PM"
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
      Height          =   5775
      Left            =   240
      TabIndex        =   57
      Top             =   1050
      Width           =   9210
      _ExtentX        =   16245
      _ExtentY        =   10186
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "RMIArrivalwothout.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         Height          =   5580
         Left            =   105
         TabIndex        =   58
         Top             =   90
         Width           =   8895
         Begin VB.TextBox Txtfields 
            DataField       =   "GODOWN"
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
            Left            =   7440
            MaxLength       =   10
            TabIndex        =   37
            Top             =   4695
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "colorcode"
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
            Index           =   22
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   23
            Top             =   2805
            Width           =   1380
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   3060
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   2805
            Width           =   5445
         End
         Begin VB.ComboBox Combo3 
            Height          =   315
            ItemData        =   "RMIArrivalwothout.frx":4B17
            Left            =   7485
            List            =   "RMIArrivalwothout.frx":4B27
            TabIndex        =   41
            Top             =   4710
            Visible         =   0   'False
            Width           =   1080
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   20
            Left            =   3060
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   2430
            Width           =   5445
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "weignment"
            Height          =   330
            Index           =   13
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   19
            Top             =   1950
            Width           =   825
         End
         Begin VB.TextBox Text4 
            Height          =   345
            Left            =   2580
            TabIndex        =   20
            Top             =   1950
            Width           =   5985
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   11
            Top             =   300
            Width           =   825
         End
         Begin VB.TextBox Text3 
            Height          =   330
            Left            =   2580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            Text            =   " "
            Top             =   1620
            Width           =   6000
         End
         Begin VB.TextBox Text2 
            Height          =   330
            Left            =   2580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   16
            Text            =   " "
            Top             =   1290
            Width           =   6000
         End
         Begin VB.TextBox Text1 
            Height          =   330
            Left            =   2580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            Text            =   " "
            Top             =   960
            Width           =   6000
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            Height          =   330
            Index           =   2
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   13
            Top             =   960
            Width           =   825
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            Height          =   330
            Index           =   3
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            Top             =   1290
            Width           =   825
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacode"
            Height          =   330
            Index           =   4
            Left            =   1650
            MaxLength       =   100
            TabIndex        =   17
            Top             =   1620
            Width           =   825
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "freight"
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
            Left            =   7410
            MaxLength       =   10
            TabIndex        =   33
            Top             =   4260
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "plotno"
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
            Index           =   12
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   31
            Top             =   4260
            Width           =   2100
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
            Left            =   5520
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   30
            Top             =   3900
            Width           =   3000
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "gcno"
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
            Index           =   10
            Left            =   1650
            MaxLength       =   10
            TabIndex        =   29
            Top             =   3900
            Width           =   2100
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
            Left            =   1650
            MaxLength       =   4
            TabIndex        =   27
            Top             =   3540
            Width           =   2100
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "prmark"
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
            Index           =   8
            Left            =   5520
            MaxLength       =   15
            TabIndex        =   28
            Top             =   3540
            Width           =   3000
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "prno"
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
            Index           =   7
            Left            =   1650
            MaxLength       =   20
            TabIndex        =   25
            Top             =   3180
            Width           =   2100
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "cntcode"
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
            Index           =   6
            Left            =   5520
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   26
            Top             =   3180
            Width           =   3015
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "varcode"
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
            Index           =   5
            Left            =   1650
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            Top             =   2430
            Width           =   1380
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "ratecy"
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
            Index           =   19
            Left            =   5670
            MaxLength       =   10
            TabIndex        =   36
            Top             =   4710
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tarewt"
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
            Index           =   17
            Left            =   3810
            MaxLength       =   9
            TabIndex        =   39
            Top             =   5100
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "netwt"
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
            Index           =   18
            Left            =   5670
            MaxLength       =   11
            TabIndex        =   40
            Top             =   5100
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "grosswt"
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
            Index           =   16
            Left            =   1650
            MaxLength       =   11
            TabIndex        =   38
            Top             =   5100
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "quantity"
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
            Index           =   15
            Left            =   3810
            MaxLength       =   5
            TabIndex        =   35
            Top             =   4710
            Width           =   900
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "RMIArrivalwothout.frx":4B4E
            Left            =   1650
            List            =   "RMIArrivalwothout.frx":4B5B
            Style           =   2  'Dropdown List
            TabIndex        =   34
            Top             =   4725
            Width           =   1110
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   255
            Index           =   0
            Left            =   5595
            TabIndex        =   12
            Top             =   345
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
            Left            =   5535
            TabIndex        =   59
            Top             =   315
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   77463553
            CurrentDate     =   36831
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "PLOTDT"
            Height          =   330
            Index           =   2
            Left            =   5520
            TabIndex        =   32
            Top             =   4260
            Width           =   1110
            _ExtentX        =   1958
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
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   195
            TabIndex        =   83
            Top             =   2835
            Width           =   360
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            Height          =   195
            Left            =   6810
            TabIndex        =   82
            Top             =   4770
            Width           =   600
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Weighnment"
            Height          =   195
            Left            =   180
            TabIndex        =   81
            Top             =   2040
            Width           =   900
         End
         Begin VB.Line Line6 
            BorderColor     =   &H00FFFFFF&
            X1              =   15
            X2              =   8875
            Y1              =   4635
            Y2              =   4635
         End
         Begin VB.Line Line5 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   8875
            Y1              =   4635
            Y2              =   4635
         End
         Begin VB.Line Line4 
            BorderColor     =   &H00FFFFFF&
            X1              =   15
            X2              =   8875
            Y1              =   2385
            Y2              =   2385
         End
         Begin VB.Line Line3 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   8875
            Y1              =   2370
            Y2              =   2370
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00FFFFFF&
            X1              =   30
            X2              =   8890
            Y1              =   840
            Y2              =   840
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   15
            X2              =   8875
            Y1              =   870
            Y2              =   870
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   4455
            TabIndex        =   80
            Top             =   375
            Width           =   345
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival/Lot Number"
            Height          =   195
            Left            =   180
            TabIndex        =   79
            Top             =   390
            Width           =   1335
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   180
            TabIndex        =   78
            Top             =   1035
            Width           =   570
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Height          =   195
            Left            =   180
            TabIndex        =   77
            Top             =   1695
            Width           =   330
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
            Height          =   195
            Left            =   180
            TabIndex        =   76
            Top             =   1365
            Width           =   465
         End
         Begin VB.Label Label22 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Freight"
            Height          =   195
            Left            =   6675
            TabIndex        =   75
            Top             =   4335
            Width           =   480
         End
         Begin VB.Label Label6 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            Height          =   195
            Left            =   4440
            TabIndex        =   74
            Top             =   3255
            Width           =   930
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   180
            TabIndex        =   73
            Top             =   2505
            Width           =   480
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "PR Mark"
            Height          =   195
            Left            =   4455
            TabIndex        =   72
            Top             =   3615
            Width           =   630
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "PR Number"
            Height          =   195
            Left            =   180
            TabIndex        =   71
            Top             =   3255
            Width           =   825
         End
         Begin VB.Label Label20 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Lorry No."
            Height          =   195
            Left            =   4455
            TabIndex        =   70
            Top             =   3975
            Width           =   645
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Trans Name"
            Height          =   195
            Left            =   180
            TabIndex        =   69
            Top             =   3615
            Width           =   870
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "GC Number"
            Height          =   195
            Left            =   180
            TabIndex        =   68
            Top             =   3975
            Width           =   825
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Party Lot No."
            Height          =   195
            Left            =   180
            TabIndex        =   67
            Top             =   4335
            Width           =   930
         End
         Begin VB.Label Label26 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   4455
            TabIndex        =   66
            Top             =   4335
            Width           =   345
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   2880
            TabIndex        =   65
            Top             =   4785
            Width           =   585
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   2850
            TabIndex        =   64
            Top             =   5175
            Width           =   885
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   63
            Top             =   5175
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
            Height          =   195
            Left            =   4770
            TabIndex        =   62
            Top             =   5175
            Width           =   855
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Candy"
            Height          =   195
            Left            =   4740
            TabIndex        =   61
            Top             =   4785
            Width           =   870
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   180
            TabIndex        =   60
            Top             =   4785
            Width           =   285
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   270
      TabIndex        =   43
      Top             =   1110
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist ksllist1 
         Height          =   3495
         Left            =   870
         TabIndex        =   84
         Top             =   570
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   6165
         caption         =   ""
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIArrivalwothout.frx":4B71
         Height          =   615
         Left            =   3000
         Picture         =   "RMIArrivalwothout.frx":4F57
         Style           =   1  'Graphical
         TabIndex        =   54
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIArrivalwothout.frx":531D
         Height          =   615
         Left            =   4740
         Picture         =   "RMIArrivalwothout.frx":56FF
         Style           =   1  'Graphical
         TabIndex        =   53
         Top             =   4080
         Width           =   1185
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
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
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   52
         Top             =   120
         Width           =   8775
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H80000004&
      ForeColor       =   &H80000009&
      Height          =   2430
      Left            =   990
      TabIndex        =   44
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIArrivalwothout.frx":5AD2
         Height          =   615
         Left            =   4020
         Picture         =   "RMIArrivalwothout.frx":5EB4
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIArrivalwothout.frx":6287
         Height          =   615
         Left            =   2580
         Picture         =   "RMIArrivalwothout.frx":666D
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3705
         MaxLength       =   6
         TabIndex        =   45
         Top             =   870
         Width           =   2025
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
         Left            =   45
         TabIndex        =   47
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Arrival  No."
         Height          =   195
         Left            =   2565
         TabIndex        =   46
         Top             =   945
         Width           =   780
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Arrival Without Contract"
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
      Left            =   465
      TabIndex        =   42
      Top             =   585
      Width           =   3210
   End
End
Attribute VB_Name = "FrmArrivalwithout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As String
Dim oldcontdt As Date
Dim qty As Integer
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Form Arrival"
End Sub
'---------------------------------------------------------------------------------------
' Procedure : BUTTON_Click
' DateTime  : 07/12/2008 14:44
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,lotno,lottype,lotdt,weignment,godown,COLORCODE FROM RM_ARRIVAL WHERE 1 = 2 and divcode = '" & Divcode & "' order by arrno", DB, adOpenStatic, adLockBatchOptimistic
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Call ENABLCONTLS
    Call bindcontls
    Set Rs = New Recordset
    Rs.Open "SELECT ISNULL(MAX(lotno),0)+1 FROM rm_arrival WHERE  lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
    DB.BeginTrans
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Add Record"
    TXTFIELDS(0).Locked = True
    MaskEdBox1(0).Text = pdate
    'BUTTON(9).Enabled = False
    'BUTTON(10).Enabled = False
    StatusBar1.Panels(2).Text = "Select Supplier Code from the List"
    TXTFIELDS(2).SetFocus
    TXTFIELDS(0).Text = Rs(0)
    Combo1.Locked = False
    TXTFIELDS(0).Locked = False
    TXTFIELDS(2).Locked = False
    'DTPicker1.MinDate = yfdate
    Combo3.Text = "General"
    
    
Case 1
        'Modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_arrival where divcode='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
        'to fill datacombo1 with divcode and divname
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE  divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
'        Set rs = New Recordset
'    If adoPrimaryRS.RecordCount = 0 Then
'        MsgBox "No Records Found", vbInformation, head
'        Call BUTTON_Click(10)
'        Exit Sub
'    Else
        Label15.Caption = "Arrival Details"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for modification"
        SSTab1.Visible = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_arrival where divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(arrno as varchar)"
        'KslList1.listfield2 = "convert(varchar,arrdate,103)"
        KslList1.listfield2 = "arrdate"
        Frame3.Visible = True
        Command6.SetFocus
        Frame3.ZOrder
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Call disablcontls
        BUTTON(9).ToolTipText = "Modify"
        TXTFIELDS(0).Locked = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
         Combo1.Locked = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_arrival where divcode='" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
        'to fill datacombo1 with divcode and divname
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE  divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
        Else
        Label15.Caption = "Arrival List"
        StatusBar1.Panels(2).Text = "Select a Arrival Number from the List for Deletion"
        SSTab1.Visible = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_arrival where divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(arrno as varchar)"
        'KslList1.listfield2 = "convert(varchar,arrdate,103)"
        KslList1.listfield2 = "arrdate"
        Frame3.Visible = True
        Command6.SetFocus
        Frame3.ZOrder
        End If
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Call disablcontls
        BUTTON(9).ToolTipText = "Modify"
        TXTFIELDS(0).Locked = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 3
        'Query
        If Record_Exists("rm_arrival") = False Then Exit Sub
        Dim f As New repform
        Screen.MousePointer = 11
        Repindex = 13
        f.Show
        Screen.MousePointer = 0
       
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
        Call navi(BUTTON)
        Call FIR(BUTTON)
        Beep
        Exit Sub
GoFirstError:
        MsgBox err.description, vbInformation, head
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
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
        'Call NEX(BUTTON)
        'moved off the end so go back
        'adoPrimaryRS.MoveLast
        'Call bindcontls
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
        MsgBox err.description, vbInformation, head

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
        'Call PREV(BUTTON)
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
        MsgBox err.description, vbInformation, head

Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call navi(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub

GoLastError:
        MsgBox err.description, vbInformation, head

Case 9
        'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(TXTFIELDS(15).Text) = "" Then
            MsgBox "Quantity should not be empty", vbInformation, head
            TXTFIELDS(16).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(16).Text) = "" Then
            MsgBox "Gross Weight should not be empty", vbInformation, head
            TXTFIELDS(16).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(17).Text) = "" Then
            MsgBox "Gross Weight should not be empty", vbInformation, head
            TXTFIELDS(17).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(18).Text) = "" Then
            MsgBox "Gross Weight should not be empty", vbInformation, head
            TXTFIELDS(18).SetFocus
            Exit Sub
        End If
        If Trim(TXTFIELDS(6).Text) = "" Then
            MsgBox "Mixing Group should not be empty", vbInformation, head
            TXTFIELDS(6).SetFocus
            Exit Sub
        End If
    End If
    If Opt = "add" Then
        'If Combo3.Text <> "" Then
        '    If Combo3.Text = "General" Then
        '        adoprimaryrs("godown") = "L"
        '    Else
        '        adoprimaryrs("godown") = Mid$(Trim(Combo3.Text), 1, 1)
        '    End If
        'End If
        adoPrimaryRS("godown") = TXTFIELDS(23).Text
        adoPrimaryRS("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
        'adoprimaryrs("contdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-d")
        adoPrimaryRS("lotno") = TXTFIELDS(0)
        adoPrimaryRS("lotdt") = Format(MaskEdBox1(0), "yyyy-mm-dd")
        adoPrimaryRS("lottype") = "a"
        If (IsNull(MaskEdBox1(2).Text) = False) And (MaskEdBox1(2).Text <> "__/__/____") Then
            adoPrimaryRS("plotdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
        Else
            adoPrimaryRS("plotdt") = Null
        End If
        If Combo1.Text = "Bale" Then
        adoPrimaryRS("bbflag") = "B"
        Else
            adoPrimaryRS("bbflag") = "R"
        End If
            adoPrimaryRS("divcode") = Divcode
            adoPrimaryRS("varcode") = Trim(TXTFIELDS(5).Text)
            adoPrimaryRS("COLORCODE") = Trim(TXTFIELDS(22).Text)
            adoPrimaryRS("CONTDT").Value = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
            adoPrimaryRS("CONTNO") = 0
            'Set rs = New Recordset
            'rs.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db
            'db.Execute ("update rm_cont set recqty =" & rs(0) & " + " & Val(Txtfields(15).Text) & " where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Arrival Saved!", vbInformation, head
            
            Screen.MousePointer = 0
            Opt = ""
        End If
    
    If Opt = "mod" Then
        'If Combo3.Text <> "" Then
        '    If Combo3.Text = "General" Then
        '        adoprimaryrs("godown") = "L"
        '    Else
        '        adoprimaryrs("godown") = Mid$(Trim(Combo3.Text), 1, 1)
        '    End If
        'End If
        adoPrimaryRS("godown") = TXTFIELDS(23).Text
        adoPrimaryRS("arrdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        'adoprimaryrs("contdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
        If IsNull(MaskEdBox1(2).Text) = False Then
            adoPrimaryRS("plotdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        Else
            adoPrimaryRS("plotdt") = Null
        End If
        If Combo1.Text = "Bale" Then
            adoPrimaryRS("bbflag") = "B"
        Else
            adoPrimaryRS("bbflag") = "R"
        End If
'        If oldcontno = Txtfields(1).Text And oldcontdt = Format(MaskEdBox1(1).Text, "yyyy-mm-dd") Then
'            Set rs = New Recordset
'            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db
'            db.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= '" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
'            QTY1 = rs(0) - oldqty
'            db.Execute ("update rm_cont set recqty =" & QTY1 & " + " & Val(Txtfields(15).Text) & "  where contno= '" & Txtfields(1).Text & "' and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
'        Else
'            Set rs = New Recordset
'            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db
'            db.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= '" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
'            Set RS1 = New Recordset
'            RS1.Open "select isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db
'            db.Execute ("update rm_cont set recqty =" & RS1(0) & " + " & Val(Txtfields(15).Text) & "  where contno= '" & Txtfields(1).Text & "' and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ")
'        End If
      
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Arrival Modified!", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
    End If

    If Opt = "del" Then
        On Error GoTo del
        Set Rs = New Recordset
        Rs.Open "select isnull(recqty,0) from rm_cont where contno='" & TXTFIELDS(1).Text & "' and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB
        DB.Execute ("update rm_cont set recqty = " & Rs(0) & " - " & oldqty & " where contno= '" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'")
        DB.Execute ("delete from rm_arrival where arrno =" + "'" + Trim(TXTFIELDS(0).Text) + "'")
        DB.CommitTrans
        MsgBox "Arrival Deleted!", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
    End If
    
        'Return to query mode
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, GSNO)
        Exit Sub
GOPRIMERROR:
    If err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:
    If err.Number = -2147217900 Then
        MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        GoTo gocancel
        Exit Sub
    End If

Case 10
gocancel:
        desc.Caption = "Query"
        Screen.MousePointer = 11
Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
        Opt = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,weignment,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE  divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Screen.MousePointer = 0
        Call disablcontls
        'procedure unique to this form  to set grid headings
        'calling cancl procedure from module
        Call cancl(BUTTON)
        Frame3.Visible = False
       ' Frame1.Visible = True
       ' Frame2.Visible = True
Case 11
        'EXIT
        Unload Me
    End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BUTTON_Click of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by arrno", DB, adOpenStatic, adLockOptimistic
        'Bind the text boxes,check boxes and option buttons  to the data source
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Such Arrival No. Found", vbInformation, head
            Exit Sub
        End If
        Call bindcontls
        'calling query procedure from module
        Call Query(BUTTON)
        Frame6.Visible = False

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame6.Visible = False

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If KslList1.listfield1 = "carcode" Then
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame7.Visible = True
        TXTFIELDS(9).Text = ""
        Exit Sub
End If

        Frame3.Visible = False
        SSTab1.Visible = True
        'Frame1.Visible = True
       ' Frame2.Visible = True
        Frame7.Visible = True
       ' Frame8.Visible = True
        Call BUTTON_Click(10)
        'Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  divcode='" & divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
        'Call bindcontls
        'OPT = ""
        Screen.MousePointer = 0
        'Call disablcontls
        'Call cancl(BUTTON)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command5_Click of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()        'activex okay
On Error GoTo Command6_Click_Error

SSTab1.Visible = True
If Buttonframe.Enabled = False Then Buttonframe.Enabled = True
Select Case KslList1.listfield1
Case "Slcode"
     TXTFIELDS(2).Text = KslList1.Code
     Text1.Text = KslList1.description
     TXTFIELDS(3).SetFocus
Case "Slcode "
     TXTFIELDS(3).Text = KslList1.Code
     Text2.Text = KslList1.description
     TXTFIELDS(4).SetFocus
Case "Code"
     TXTFIELDS(13).Text = KslList1.Code
     Text4.Text = KslList1.description
     TXTFIELDS(5).SetFocus
Case "Varcode"
     TXTFIELDS(5).Text = KslList1.Code
     TXTFIELDS(20).Text = KslList1.description
     If TXTFIELDS(22).Locked = True Then TXTFIELDS(22).Locked = False
     TXTFIELDS(22).SetFocus
Case "Colorcode"
     TXTFIELDS(22).Text = KslList1.Code
     TXTFIELDS(21).Text = KslList1.description
     TXTFIELDS(7).SetFocus
Case "MIXGRPCD"
     TXTFIELDS(6).Text = KslList1.Code
     TXTFIELDS(9).SetFocus
Case "GCODE"
     TXTFIELDS(23).Text = KslList1.Code
Case "Areacode"
     TXTFIELDS(4).Text = KslList1.Code
     Text3.Text = KslList1.description
     If TXTFIELDS(13).Locked = True Then TXTFIELDS(13).Locked = False
     TXTFIELDS(13).SetFocus
Case "cast(arrno as varchar)"
     BUTTON(9).Enabled = True
     Set adoPrimaryRS = New Recordset
     adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,COLORCODE FROM RM_ARRIVAL WHERE ARRNO='" & KslList1.Code & "' AND ARRDATE='" & Format(KslList1.description, "yyyy-mm-dd") & "'  and (passed is null or passdt is null) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
     If adoPrimaryRS.RecordCount <> 0 Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,godown,COLORCODE FROM RM_ARRIVAL WHERE ARRNO='" & KslList1.Code & "' AND ARRDATE='" & Format(KslList1.description, "yyyy-mm-dd") & "'  and (lotno is  null or lotdt is  null or catcd is  null ) and  divcode='" & Divcode & "' order by arrno ", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
           MsgBox "Lot/Bale Details Entered!Modification Not allowed!", vbInformation, head
           Exit Sub
        End If
     Else
        MsgBox "Inspection Over!Modification not allowed!", vbInformation, head
        Exit Sub
     End If
     oldcontno = adoPrimaryRS("contno")
     oldcontdt = adoPrimaryRS("contdt")
     oldqty = adoPrimaryRS("quantity")
     Call bindcontls
     Call ENABLCONTLS
     If Opt = "del" Then
        Call disablcontls
     End If
     TXTFIELDS(0).Locked = True
     For i = 2 To 6
        TXTFIELDS(i).Locked = True
     Next
     TXTFIELDS(22).Locked = True
     TXTFIELDS(13).Locked = True
     Text4.Locked = True
     'Txtfields(19).Locked = True
     TXTFIELDS(7).SetFocus
     TXTFIELDS(0).Locked = True
     Frame3.Visible = False
Case "carcode"
     TXTFIELDS(9).Text = KslList1.Code
     TXTFIELDS(8).SetFocus
     StatusBar1.Panels(2).Text = "Enter Lorry Number"
Case "cast(a.contno as varchar)"
     TXTFIELDS(1).Text = KslList1.Code
     MaskEdBox1(1).Text = Format(KslList1.description, "dd/mm/yyyy")
     Dim partyrs As Recordset
     Set partyrs = New Recordset
     partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,''),candyrate,bbflag,ordqty-ISNULL(RECQTY,0),weignment,COLORCODE from rm_cont where contno='" & TXTFIELDS(1).Text & "' and contdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
     TXTFIELDS(2).Text = partyrs(0)
     TXTFIELDS(3).Text = IIf(IsNull(partyrs(1)), "", partyrs(1))
     TXTFIELDS(4).Text = IIf(IsNull(partyrs(2)), "", partyrs(2))
     TXTFIELDS(5).Text = partyrs(3)
     TXTFIELDS(22).Text = partyrs("COLORCODE")
     TXTFIELDS(6).Text = partyrs(4)
     TXTFIELDS(13).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
     TXTFIELDS(15).Text = partyrs(7)
     TXTFIELDS(19).Text = Format(partyrs(5), "#######.000")
     If partyrs(6) = "B" Then
        Combo1.Text = "Bale"
     ElseIf partyrs(6) = "R" Then
        Combo1.Text = "Borah"
     End If
     For i = 0 To 6
        If i <> 4 Then TXTFIELDS(i).Locked = True
     Next
     TXTFIELDS(13).Locked = True
     Text4.Locked = True
     'Txtfields(19).Locked = True
     TXTFIELDS(0).Locked = True
     TXTFIELDS(0).Locked = False
     TXTFIELDS(0).SetFocus
Case "areacode"
     TXTFIELDS(4).Text = KslList1.Code
     Text3.Text = KslList1.description
     Buttonframe.Enabled = True
     TXTFIELDS(13).SetFocus
Case "Gcode"
     TXTFIELDS(23).Text = KslList1.Code
     TXTFIELDS(16).SetFocus
End Select
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
Frame3.Visible = False

Exit Sub
Command6_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command6_Click of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(0).Text = DTPicker1.Value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DTPicker1_CloseUp of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  SSTab1.Visible = True
  DATLAB.Caption = pdate
  'TabStrip1.Tabs.Clear
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,weignment,COLORCODE,GODOWN FROM RM_ARRIVAL WHERE  arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
  'adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE divcode='" & divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
  'If Not adoPrimaryRS.BOF Then
  If adoPrimaryRS.RecordCount <> 0 Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
     'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       'TabStrip1.Visible = True
  End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Unload of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
   If adoPrimaryRS("bbflag") = "B" Then
      Combo1.Text = "Bale"
   ElseIf adoPrimaryRS("bbflag") = "R" Then
      Combo1.Text = "Borah"
   Else
      Combo1.Text = " "
   End If
End If
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdate"
MaskEdBox1(2).DataField = "plotdt"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("arrdate")) = False Or adoPrimaryRS("arrdate") = "" Then
   MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdate"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("plotdt")) = False Then
   MaskEdBox1(2).Text = Format(adoPrimaryRS("plotdt"), "dd/mm/yyyy")
Else
   MaskEdBox1(2).Text = "__/__/____"
End If
'Option1.Enabled = False
'Option2.Enabled = False
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
TXTFIELDS(0).Locked = False
For i = 2 To 12
    TXTFIELDS(i).Locked = False
Next
For i = 14 To 19
    TXTFIELDS(i).Locked = False
Next
MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
DTPicker1.Enabled = True
Combo1.Locked = False
End Sub

Public Sub disablcontls()
On Error Resume Next
Dim i As Integer
TXTFIELDS(0).Locked = True
For i = 2 To 19
    TXTFIELDS(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
MaskEdBox1(2).Enabled = False
DTPicker1.Enabled = False
Combo1.Locked = True
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
On Error GoTo MaskEdBox1_Change_Error

If Opt = "add" Or Opt = "mod" Then
'If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" Then
'If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(0).Text) < CDate(MaskEdBox1(1).Text) Then
''    MsgBox "Arrival date Should not be less then Contract date", vbInformation, head
' '   MaskEdBox1(0).Text = MaskEdBox1(1).Text
'End If
'End If
End If
Select Case Index
Case 0
    
'If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'    If Not (IsDate(MaskEdBox1(0).Text)) Then
'        MsgBox ("invalid date"), vbInformation, head
'        MaskEdBox1(0).Text = pdate
'        MaskEdBox1(0).SetFocus
'    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
'            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
'            MaskEdBox1(0).SetFocus
'    End If
'End If
Case 2
'If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'    If Not (IsDate(MaskEdBox1(2).Text)) Then
'        MsgBox ("invalid date"), vbInformation, head
'        MaskEdBox1(2).Text = MaskEdBox1(0).Text
'        MaskEdBox1(2).SetFocus
'    End If
'End If
End Select

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_Change of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

Select Case Index
Case 0
              
        If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_arrival WHERE arrNO= " & val(TXTFIELDS(0).Text) & "  and divcode='" & Divcode & "' AND ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number already Defined Please Change the Date", vbInformation, head
         MaskEdBox1(0).SetFocus
         Exit Sub
        End If
        End If

  
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        'MsgBox "Enter the date", vbInformation, head
        'MaskEdBox1(2).Text = pdate
        'MaskEdBox1(2).SetFocus
        MaskEdBox1(2).Text = "__/__/____"
    ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
        MsgBox "ATL Date should be before Arrival Date", vbInformation, head
        MaskEdBox1(2).Text = MaskEdBox1(0).Text
        MaskEdBox1(2).SetFocus
    End If
End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_LostFocus of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error

If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
        Cancel = True
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox ("Project date should not be greater then processing date"), vbInformation, head
        MaskEdBox1(0).SetFocus
        Cancel = True
    End If
End If

Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MaskEdBox1_Validate of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Then
Select Case Index

Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
          Text1.Text = Rs("slname")
        Else
          Text1.Text = ""
        End If

Case 3
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(3).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
              Text2.Text = Rs("slname")
        Else
            Text2.Text = ""
        End If

Case 4
        Set Rs = New Recordset
        Rs.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(4).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            Text3.Text = Rs("areaname")
        Else
            Text3.Text = ""
        End If

Case 5
        Set Rs = New Recordset
        Rs.Open "Select varname from rm_var where varcode='" & TXTFIELDS(5).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            TXTFIELDS(20).Text = Rs("varname")
        Else
           TXTFIELDS(20).Text = ""
        End If
        
Case 22
     
        Set Rs = New Recordset
        Rs.Open "Select COLORname from rm_COLOR where COLORcode='" & TXTFIELDS(22).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            TXTFIELDS(21).Text = Rs("COLORname")
        Else
           TXTFIELDS(21).Text = ""
        End If
 
Case 13
        Set Rs = New Recordset
        Rs.Open "select wname from rm_weighnment where code='" & TXTFIELDS(13).Text & "'  and DivCode = '" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
        If Rs.RecordCount <> 0 Then
            Text4.Text = Rs("wname")
        Else
            Text4.Text = ""
        End If

End Select
End If

If Opt = "" Or Opt = " " Then
    Select Case Index
    
    Case 14
            TXTFIELDS(14).Text = Format(TXTFIELDS(14).Text, "#0.00")
    Case 19
            TXTFIELDS(19).Text = Format(TXTFIELDS(19).Text, "#0.00")
    Case 16
            TXTFIELDS(16).Text = Format(TXTFIELDS(16).Text, "#0.000")
    Case 17
            TXTFIELDS(17).Text = Format(TXTFIELDS(17).Text, "#0.000")
    Case 18
            TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.000")
    End Select
End If

Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Txtfields_Change of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0
          StatusBar1.Panels(2).Text = "Enter Arrival Number"
     Case 1
          StatusBar1.Panels(2).Text = "Enter Order "
     Case 2
          StatusBar1.Panels(2).Text = "Enter Party Code"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Broker Code"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Area Code"
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
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 16
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 18
          'StatusBar1.Panels(2).Text = "Enter Net Weight"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers "
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 3 Decimal Places"
     Case 19
          'StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 22
          StatusBar1.Panels(2).Text = "Enter The Color"
     End Select

End If

Select Case Index
Case 2
If Opt = "add" Then
   If TXTFIELDS(2).Text = "" Then
      Label15.Caption = "Suppliet Details"
      StatusBar1.Panels(2).Text = "Select supplier code from the list"
      SSTab1.Visible = False
      KslList1.conn = connectstring
      KslList1.Table = "fa_slmas"
      KslList1.listfield1 = "Slcode"
      KslList1.listfield2 = "Slname"
      Frame3.Visible = True
      Command6.SetFocus
      Frame3.ZOrder
   End If
End If

If Opt = "mod" Then
   Label15.Caption = "Order Details"
   SSTab1.Visible = False
   KslList1.conn = connectstring
   KslList1.Table = "rm_cont a where divcode='" & Divcode & "' "
   KslList1.listfield1 = "cast(a.contno as varchar)"
   KslList1.listfield2 = "convert(varchar,contdt,103)"
   Frame3.Visible = True
   Frame3.ZOrder
End If
End Select

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_GotFocus of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 9
     Set Rs = New Recordset
     Rs.Open "select count(*) from po_car", DB
     If Rs(0) = 0 Then
        MsgBox "No Record Exists", vbInformation, head
     Else
        Label15.Caption = "Carrier List"
        'Frame1.Visible = False
        'Frame2.Visible = False
        Frame3.Visible = True
        SSTab1.Visible = False
        KslList1.conn = connectstring
        KslList1.Table = "po_car"
        KslList1.listfield1 = "carcode"
        KslList1.listfield2 = "carname"
        KslList1.SetFocus
        StatusBar1.Panels(2).Text = "Select Carrier from the list"
        'Command3.SetFocus
        If KslList1.Code = "" Then
           MsgBox "Enter Values In po_car Table", vbInformation, head
           'Call BUTTON_Click(9)
           Exit Sub
        End If
     End If
   Case 23
     Set Rs = New Recordset
     Rs.Open "select count(*) from RM_GOD where 1=1 and DivCode = '" & Divcode & "'", DB
     If Rs(0) = 0 Then
        MsgBox "No Record Exists", vbInformation, head
     Else
        Label15.Caption = "Godown List"
        Frame3.Visible = True
        SSTab1.Visible = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_god"
        KslList1.listfield1 = "Gcode"
        KslList1.listfield2 = "Gname"
        KslList1.SetFocus
        StatusBar1.Panels(2).Text = "Select Godown from the list"
        If KslList1.Code = "" Then
           MsgBox "Enter Values In rm_god Table", vbInformation, head
           'Call BUTTON_Click(9)
           Exit Sub
        End If
     End If
   End Select
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtfields_KeyDown of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 4
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 7
    ToUpCase TXTFIELDS(Index), KeyAscii
    ToAlphaNumber TXTFIELDS(Index), 20, KeyAscii
Case 8
    ToUpCase TXTFIELDS(Index), KeyAscii
    ToAlphaNumber TXTFIELDS(Index), 15, KeyAscii
Case 9
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 10
    ToUpCase TXTFIELDS(Index), KeyAscii
    ToAlphaNumber TXTFIELDS(Index), 10, KeyAscii
Case 11
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 12
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 13
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 5, KeyAscii
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber TXTFIELDS(Index), KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 TXTFIELDS(Index), 7, KeyAscii, 0
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 TXTFIELDS(Index), 5, KeyAscii, 0
 Case 18
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 TXTFIELDS(Index), 7, KeyAscii, 0
End Select
End If
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'     Case 0
'          statusbar1.Panels(2).Text = "Enter Arrival Number"
'     Case 1
'          statusbar1.Panels(2).Text = "Enter Order "
'     Case 2
'          statusbar1.Panels(2).Text = "Enter Party Code"
'     Case 3
'          statusbar1.Panels(2).Text = "Enter Broker Code"
'     Case 4
'          statusbar1.Panels(2).Text = "Enter Area Code"
'     Case 5
'          statusbar1.Panels(2).Text = "Enter The variety"
'     Case 7
'          statusbar1.Panels(2).Text = "Enter PR Number"
'     Case 9
'          statusbar1.Panels(2).Text = "Enter Transaction Name"
'     Case 10
'          statusbar1.Panels(2).Text = "Enter GC Number"
'     Case 12
'          statusbar1.Panels(2).Text = "Enter Party Lot Number"
'     Case 13
'          statusbar1.Panels(2).Text = "Enter ATL Number"
'     Case 6
'          statusbar1.Panels(2).Text = "Enter Count Type"
'     Case 8
'          statusbar1.Panels(2).Text = "Enter PR Mark"
'     Case 11
'          statusbar1.Panels(2).Text = "Enter Lorry Number"
'     Case 14
'          statusbar1.Panels(2).Text = "Enter Freight"
'     Case 16
'          statusbar1.Panels(2).Text = "Enter Gross Weight"
'     Case 18
'          statusbar1.Panels(2).Text = "Enter Net Weight"
'     Case 15
'          statusbar1.Panels(2).Text = "Enter Number of Bales"
'     Case 17
'          statusbar1.Panels(2).Text = "Enter Tare Weight"
'     Case 19
'          statusbar1.Panels(2).Text = "Enter Rate/Candy"
'          End Select
'
'End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_KeyPress of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
On Error GoTo txtFields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 15
If Opt = "add" Then
    Dim CNTRS As Recordset
    If Trim(TXTFIELDS(15).Text) = "" Then
      MsgBox "Arrived Quantity Should not be empty", vbInformation, head
      TXTFIELDS(15).SetFocus
      Exit Sub
    End If
    
    'Set CNTRS = New Recordset
    'CNTRS.Open "select ordqty-isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
    'If Val(Txtfields(15).Text) > CNTRS(0) Then
    'Txtfields(15).Text = CNTRS(0)
    'MsgBox "Arrived Quantity Should not be Greater than Ordered Quantity" & -CNTRS(0), vbInformation, head
    'Txtfields(15).SetFocus
    Exit Sub
    'End If
ElseIf Opt = "mod" Then
    Dim modrs As Recordset
    Set modrs = New Recordset
    modrs.Open "select ordqty,recqty,ordqty-isnull(recqty,0) from rm_cont  where contno='" & TXTFIELDS(1).Text & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
    Dim arrs As Recordset
    If modrs(2) <> 0 Then
    If val(TXTFIELDS(15).Text) > modrs(2) + oldqty Then
        TXTFIELDS(15).Text = modrs(2) + oldqty
        MsgBox "Arrived Quantity Should not be Greater than Qrdered Quantity" & modrs(2) + oldqty, vbInformation, head
        TXTFIELDS(15).SetFocus
        Exit Sub
    End If
    ElseIf modrs(2) = 0 Then
        OLDQTY1 = modrs(1)
        If val(TXTFIELDS(15).Text) > OLDQTY1 Then
        TXTFIELDS(15).Text = OLDQTY1
        MsgBox "Arrived Quantity Should not be Greater than Qrdered Quantity  " & OLDQTY1, vbInformation, head
        TXTFIELDS(15).SetFocus
        Exit Sub
    End If
    
        
    End If
End If
Case 17
'If Format(Trim(Txtfields(17).Text), "#####.000") = "" Then
'        MsgBox "Tare Weight should not be empty", vbInformation, head
'
'        Txtfields(17).SetFocus
'
'        Exit Sub
'End If
If TXTFIELDS(16).Text <> "" Then
If val(TXTFIELDS(17).Text) >= val(TXTFIELDS(16).Text) Then
    
    MsgBox "Tare Weight should be Less than Gross Weight ", vbInformation, head
    TXTFIELDS(17).Text = ""
    TXTFIELDS(17).SetFocus
ElseIf Trim(TXTFIELDS(16).Text) <> "" And TXTFIELDS(17).Text <> "" Then
    TXTFIELDS(18).Text = val(TXTFIELDS(16).Text) - val(TXTFIELDS(17).Text)
    'Txtfields(18).Locked = True
    'Txtfields(19).Locked = True
End If
End If
Case 16

Case 6
     If Trim(TXTFIELDS(6).Text) = "" Then
       MsgBox "count code should not  be empty", vbInformation, head
        TXTFIELDS(16).SetFocus
        Exit Sub
     End If
      
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 14
TXTFIELDS(14).Text = Format(TXTFIELDS(14).Text, "#0.00")
Case 19
TXTFIELDS(19).Text = Format(TXTFIELDS(19).Text, "#0.00")
Case 16
TXTFIELDS(16).Text = Format(TXTFIELDS(16).Text, "#0.000")
Case 17
TXTFIELDS(17).Text = Format(TXTFIELDS(17).Text, "#0.000")
Case 18
TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.000")
End Select
End If

Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure txtFields_LostFocus of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub tonum1(Obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error

     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(Obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (Obj.SelLength = Len(Obj)) Then
         KeyAscii = 0
    End If
    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

Exit Sub
tonum1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure tonum1 of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
  Select Case Index
  Case 3
    If Trim(TXTFIELDS(3).Text) = "" Then Exit Sub
    Label15.Caption = "Supplier List"
    StatusBar1.Panels(2).Text = "Select Supplier From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "fa_slmas where slcode like 'C2%'"
    KslList1.listfield1 = "Slcode "
    KslList1.listfield2 = "Slname"
    KslList1.SetFocus
    Exit Sub
    
  Case 4
    If Trim(TXTFIELDS(4).Text) = "" Then Exit Sub
    Label15.Caption = "Area List"
    StatusBar1.Panels(2).Text = "Select Area From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "rm_area"
    KslList1.listfield1 = "Areacode"
    KslList1.listfield2 = "Areaname"
    KslList1.SetFocus
    Exit Sub
    
  Case 5
    If Trim(TXTFIELDS(5).Text) = "" Then Exit Sub
    Label15.Caption = "Area List"
    StatusBar1.Panels(2).Text = "Select Variety From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "rm_var"
    KslList1.listfield1 = "Varcode"
    KslList1.listfield2 = "Varname"
    KslList1.SetFocus
    Exit Sub
    
  Case 6
    If Trim(TXTFIELDS(6).Text) = "" Then Exit Sub
    Label15.Caption = "Mix group List"
    StatusBar1.Panels(2).Text = "Select Mixgroup From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "rm_MIXGRP"
    KslList1.listfield1 = "MIXGRPCD"
    KslList1.listfield2 = "MIXGRPNAME"
    KslList1.SetFocus
    Exit Sub
    
  Case 13
    If Trim(TXTFIELDS(13).Text) = "" Then Exit Sub
    Label15.Caption = "Weighnment List"
    StatusBar1.Panels(2).Text = "Select Weighnment From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "rm_weighnment"
    KslList1.listfield1 = "Code"
    KslList1.listfield2 = "Wname"
    KslList1.SetFocus
    Exit Sub
  
  Case 22
    If Trim(TXTFIELDS(22).Text) = "" Then Exit Sub
    Label15.Caption = "Color List"
    StatusBar1.Panels(2).Text = "Select Color From the List"
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    KslList1.Visible = True
    KslList1.conn = connectstring
    KslList1.Table = "rm_color"
    KslList1.listfield1 = "Colorcode"
    KslList1.listfield2 = "Colorname"
    KslList1.SetFocus
    Exit Sub
  End Select
End If

Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Txtfields_Validate of Form FrmArrivalwithout", vbInformation, head
Screen.MousePointer = 0

Exit Sub
End Sub
