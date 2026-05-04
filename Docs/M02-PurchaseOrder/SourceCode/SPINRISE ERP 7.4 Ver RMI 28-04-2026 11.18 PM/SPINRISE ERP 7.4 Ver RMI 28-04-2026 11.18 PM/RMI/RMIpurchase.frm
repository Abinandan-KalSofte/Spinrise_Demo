VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "Mscomct2.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "ksllist.ocx"
Begin VB.Form FrmPurchase 
   Caption         =   "Purchase Order"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   ForeColor       =   &H80000009&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   63
      Top             =   -120
      Width           =   9465
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":0000
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "RMIpurchase.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":07DF
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "RMIpurchase.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":0E65
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "RMIpurchase.frx":116F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":1511
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "RMIpurchase.frx":195B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "RMIpurchase.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":2457
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "RMIpurchase.frx":28A1
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":2BEE
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "RMIpurchase.frx":3038
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
         Picture         =   "RMIpurchase.frx":339D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":3734
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
         Picture         =   "RMIpurchase.frx":3A3E
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":3DDA
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIpurchase.frx":40E4
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpurchase.frx":445E
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIpurchase.frx":4768
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
         TabIndex        =   65
         Top             =   255
         Width           =   630
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
         Left            =   6555
         TabIndex        =   64
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   62
      Top             =   6495
      Width           =   9480
      _ExtentX        =   16722
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
            TextSave        =   "27/11/2002"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "4:39 PM"
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
      Height          =   4785
      Left            =   60
      TabIndex        =   70
      Top             =   1080
      Width           =   9300
      _ExtentX        =   16404
      _ExtentY        =   8440
      _Version        =   393216
      Tabs            =   2
      Tab             =   1
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Purchase Details"
      TabPicture(0)   =   "RMIpurchase.frx":4AFB
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Accounts/Quality Details"
      TabPicture(1)   =   "RMIpurchase.frx":4B17
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame1"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      Begin VB.Frame Frame1 
         Caption         =   "Rate Include"
         Height          =   525
         Left            =   180
         TabIndex        =   117
         Top             =   570
         Width           =   8925
         Begin VB.CheckBox Check4 
            Caption         =   "Commision"
            Height          =   255
            Left            =   5880
            TabIndex        =   35
            Top             =   210
            Width           =   1065
         End
         Begin VB.CheckBox Check3 
            Caption         =   "Transportation"
            Height          =   195
            Left            =   4125
            TabIndex        =   34
            Top             =   240
            Width           =   1365
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Insurance"
            Height          =   195
            Left            =   2715
            TabIndex        =   33
            Top             =   240
            Width           =   1035
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Tax"
            Height          =   195
            Left            =   1740
            TabIndex        =   32
            Top             =   240
            Width           =   585
         End
      End
      Begin VB.Frame Frame2 
         Height          =   3255
         Left            =   180
         TabIndex        =   90
         Top             =   1050
         Width           =   8955
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "CATEGORY"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   34
            Left            =   7215
            MaxLength       =   1
            TabIndex        =   45
            Top             =   1560
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "PAYTERMS"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   33
            Left            =   7215
            MaxLength       =   20
            TabIndex        =   48
            Top             =   1867
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "SCI"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   32
            Left            =   7215
            MaxLength       =   5
            TabIndex        =   51
            Top             =   2167
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "CG"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   31
            Left            =   7215
            MaxLength       =   5
            TabIndex        =   54
            Top             =   2497
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "CANDYRATE"
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
            Left            =   7215
            MaxLength       =   10
            TabIndex        =   110
            Top             =   390
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TAREWT"
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
            Left            =   4935
            MaxLength       =   9
            TabIndex        =   39
            Top             =   630
            Visible         =   0   'False
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "NETTWT"
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
            Left            =   7215
            MaxLength       =   11
            TabIndex        =   109
            Top             =   630
            Visible         =   0   'False
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "GROSSWT"
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
            Left            =   1965
            MaxLength       =   11
            TabIndex        =   38
            Top             =   630
            Visible         =   0   'False
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "QTY"
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
            Left            =   4935
            MaxLength       =   5
            TabIndex        =   37
            Top             =   390
            Width           =   900
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "RMIpurchase.frx":4B33
            Left            =   1965
            List            =   "RMIpurchase.frx":4B3D
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   36
            Top             =   405
            Width           =   1110
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TRASH_PER"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   30
            Left            =   4935
            MaxLength       =   5
            TabIndex        =   56
            Top             =   2790
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "SFI"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   29
            Left            =   4935
            MaxLength       =   5
            TabIndex        =   53
            Top             =   2490
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "MICRONAIRE"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   28
            Left            =   4935
            MaxLength       =   5
            TabIndex        =   50
            Top             =   2160
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "STAPLEN"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   27
            Left            =   4935
            MaxLength       =   5
            TabIndex        =   47
            Top             =   1860
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "MOIS_PER"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   26
            Left            =   1965
            MaxLength       =   5
            TabIndex        =   55
            Top             =   2790
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "STRENGTH"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   25
            Left            =   1965
            MaxLength       =   5
            TabIndex        =   52
            Top             =   2490
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "UNIRATIO"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   24
            Left            =   1965
            MaxLength       =   5
            TabIndex        =   49
            Top             =   2160
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "DELVERYSCH"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   23
            Left            =   1965
            MaxLength       =   5
            TabIndex        =   46
            Top             =   1830
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "HVICODE"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   22
            Left            =   1965
            MaxLength       =   15
            TabIndex        =   43
            Top             =   1530
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "HVIREPORT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   21
            Left            =   4935
            MaxLength       =   15
            TabIndex        =   44
            Top             =   1560
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OTHRS"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   10
            Left            =   7215
            MaxLength       =   9
            TabIndex        =   42
            Top             =   1230
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "SPOTEXP"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   13
            Left            =   1965
            MaxLength       =   7
            TabIndex        =   40
            Top             =   1230
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "COMMPER"
            Height          =   300
            Index           =   20
            Left            =   4935
            MaxLength       =   10
            TabIndex        =   41
            Top             =   1230
            Width           =   990
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   3720
            TabIndex        =   116
            Top             =   465
            Width           =   585
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   3720
            TabIndex        =   115
            Top             =   705
            Visible         =   0   'False
            Width           =   885
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   780
            TabIndex        =   114
            Top             =   705
            Visible         =   0   'False
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
            Height          =   195
            Left            =   6330
            TabIndex        =   113
            Top             =   705
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Candy"
            Height          =   195
            Left            =   6330
            TabIndex        =   112
            Top             =   465
            Width           =   870
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   780
            TabIndex        =   111
            Top             =   465
            Width           =   285
         End
         Begin VB.Line Line8 
            BorderColor     =   &H00FFFFFF&
            X1              =   30
            X2              =   8890
            Y1              =   1095
            Y2              =   1095
         End
         Begin VB.Line Line7 
            BorderColor     =   &H00808080&
            X1              =   30
            X2              =   8890
            Y1              =   1110
            Y2              =   1110
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Trash%"
            Height          =   195
            Left            =   3720
            TabIndex        =   108
            Top             =   2850
            Width           =   525
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Mois.%"
            Height          =   195
            Left            =   780
            TabIndex        =   107
            Top             =   2850
            Width           =   495
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "CG"
            Height          =   195
            Left            =   6330
            TabIndex        =   106
            Top             =   2550
            Width           =   225
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "SFI"
            Height          =   195
            Left            =   3720
            TabIndex        =   105
            Top             =   2550
            Width           =   240
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Strenght"
            Height          =   195
            Left            =   780
            TabIndex        =   104
            Top             =   2550
            Width           =   600
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "SCI"
            Height          =   195
            Left            =   6330
            TabIndex        =   103
            Top             =   2220
            Width           =   255
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Micronaire"
            Height          =   195
            Left            =   3720
            TabIndex        =   102
            Top             =   2220
            Width           =   735
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Uni Ratio"
            Height          =   195
            Left            =   780
            TabIndex        =   101
            Top             =   2220
            Width           =   660
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Stap.Length"
            Height          =   195
            Left            =   3720
            TabIndex        =   100
            Top             =   1920
            Width           =   870
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Del. Sch."
            Height          =   195
            Left            =   780
            TabIndex        =   99
            Top             =   1920
            Width           =   660
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Pay Terms"
            Height          =   195
            Left            =   6330
            TabIndex        =   97
            Top             =   1920
            Width           =   750
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   6330
            TabIndex        =   96
            Top             =   1620
            Width           =   630
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "HVI Rpt"
            Height          =   195
            Left            =   3720
            TabIndex        =   95
            Top             =   1620
            Width           =   570
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "HVI Code"
            Height          =   195
            Left            =   780
            TabIndex        =   94
            Top             =   1620
            Width           =   690
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Others"
            Height          =   195
            Left            =   6330
            TabIndex        =   93
            Top             =   1290
            Width           =   465
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Spot Expenses"
            Height          =   195
            Left            =   780
            TabIndex        =   92
            Top             =   1290
            Width           =   1065
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Commission %"
            Height          =   195
            Left            =   3720
            TabIndex        =   91
            Top             =   1290
            Width           =   990
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   4290
         Left            =   -74910
         TabIndex        =   71
         Top             =   420
         Width           =   9120
         _ExtentX        =   16087
         _ExtentY        =   7567
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         ShowFocusRect   =   0   'False
         TabCaption(0)   =   "         "
         TabPicture(0)   =   "RMIpurchase.frx":4B4E
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame7"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame7 
            Height          =   4080
            Left            =   60
            TabIndex        =   72
            Top             =   30
            Width           =   8895
            Begin VB.TextBox Text4 
               DataField       =   "PAYMODE"
               Height          =   300
               Left            =   5520
               TabIndex        =   31
               Top             =   3660
               Width           =   1140
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "CROPYEAR"
               Height          =   330
               Index           =   11
               Left            =   5520
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   27
               Top             =   2940
               Width           =   1065
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "SBNO"
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
               Left            =   1650
               MaxLength       =   10
               TabIndex        =   30
               Top             =   3630
               Width           =   2100
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "VARCODE"
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
               TabIndex        =   22
               Top             =   2250
               Width           =   2100
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "PRNO"
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
               TabIndex        =   24
               Top             =   2610
               Width           =   2100
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "PRMARK"
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
               TabIndex        =   25
               Top             =   2610
               Width           =   2550
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "CARCODE"
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
               TabIndex        =   26
               Top             =   2970
               Width           =   2100
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "PLOTNO"
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
               TabIndex        =   28
               Top             =   3300
               Width           =   2100
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "AREACODE"
               Height          =   330
               Index           =   4
               Left            =   1650
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   20
               Top             =   1710
               Width           =   825
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "brkcd"
               Height          =   330
               Index           =   3
               Left            =   1650
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   18
               Top             =   1380
               Width           =   825
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "SUPCD"
               Height          =   330
               Index           =   2
               Left            =   1650
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   16
               Top             =   1050
               Width           =   825
            End
            Begin VB.TextBox Text1 
               Height          =   330
               Left            =   2580
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   17
               Text            =   " "
               Top             =   1050
               Width           =   6000
            End
            Begin VB.TextBox Text2 
               Height          =   330
               Left            =   2580
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   19
               Text            =   " "
               Top             =   1380
               Width           =   6000
            End
            Begin VB.TextBox Text3 
               Height          =   330
               Left            =   2580
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   21
               Text            =   " "
               Top             =   1710
               Width           =   6000
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "CONTNO"
               Height          =   330
               Index           =   1
               Left            =   1650
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   14
               Top             =   525
               Width           =   825
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "PONO"
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
               TabIndex        =   12
               Top             =   165
               Width           =   825
            End
            Begin VB.ComboBox Combo2 
               DataSource      =   "Adodc1"
               Height          =   315
               ItemData        =   "RMIpurchase.frx":4B6A
               Left            =   5520
               List            =   "RMIpurchase.frx":4B74
               Sorted          =   -1  'True
               Style           =   2  'Dropdown List
               TabIndex        =   23
               Top             =   2280
               Width           =   1110
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "PODATE"
               Height          =   255
               Index           =   0
               Left            =   5565
               TabIndex        =   13
               Top             =   210
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
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "CONTDT"
               Height          =   315
               Index           =   1
               Left            =   5520
               TabIndex        =   15
               Top             =   570
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   556
               _Version        =   393216
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
               Left            =   5520
               TabIndex        =   73
               Top             =   165
               Width           =   1320
               _ExtentX        =   2328
               _ExtentY        =   582
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   59179009
               CurrentDate     =   36831
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "PLOTDT"
               Height          =   330
               Index           =   3
               Left            =   5520
               TabIndex        =   29
               Top             =   3300
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
            Begin VB.Label Label32 
               AutoSize        =   -1  'True
               Caption         =   "Pay Mode"
               Height          =   195
               Left            =   4320
               TabIndex        =   98
               Top             =   3720
               Width           =   720
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "SB NO"
               Height          =   195
               Left            =   180
               TabIndex        =   89
               Top             =   3705
               Width           =   495
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Party Lot No."
               Height          =   195
               Left            =   180
               TabIndex        =   88
               Top             =   3375
               Width           =   930
            End
            Begin VB.Label Label21 
               AutoSize        =   -1  'True
               Caption         =   "Carr Code"
               Height          =   195
               Left            =   180
               TabIndex        =   87
               Top             =   3045
               Width           =   705
            End
            Begin VB.Label Label20 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Crop Year"
               Height          =   195
               Left            =   4320
               TabIndex        =   86
               Top             =   3045
               Width           =   705
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "PR Number"
               Height          =   195
               Left            =   180
               TabIndex        =   85
               Top             =   2685
               Width           =   825
            End
            Begin VB.Label Label2 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "PR Mark"
               Height          =   195
               Left            =   4320
               TabIndex        =   84
               Top             =   2685
               Width           =   630
            End
            Begin VB.Label Label5 
               AutoSize        =   -1  'True
               Caption         =   "Variety"
               Height          =   195
               Left            =   180
               TabIndex        =   83
               Top             =   2325
               Width           =   480
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Broker"
               Height          =   195
               Left            =   180
               TabIndex        =   82
               Top             =   1455
               Width           =   465
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "Area"
               Height          =   195
               Left            =   180
               TabIndex        =   81
               Top             =   1785
               Width           =   330
            End
            Begin VB.Label Label4 
               AutoSize        =   -1  'True
               Caption         =   "Supplier"
               Height          =   195
               Left            =   180
               TabIndex        =   80
               Top             =   1125
               Width           =   570
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "Contract No."
               Height          =   195
               Left            =   180
               TabIndex        =   79
               Top             =   600
               Width           =   900
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               Caption         =   "P.O. Number"
               Height          =   195
               Left            =   180
               TabIndex        =   78
               Top             =   240
               Width           =   915
            End
            Begin VB.Label Label18 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Left            =   4455
               TabIndex        =   77
               Top             =   225
               Width           =   345
            End
            Begin VB.Label Label16 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Left            =   4455
               TabIndex        =   76
               Top             =   600
               Width           =   345
            End
            Begin VB.Line Line1 
               BorderColor     =   &H00808080&
               X1              =   15
               X2              =   8875
               Y1              =   900
               Y2              =   900
            End
            Begin VB.Line Line2 
               BorderColor     =   &H00FFFFFF&
               X1              =   20
               X2              =   8880
               Y1              =   950
               Y2              =   950
            End
            Begin VB.Line Line3 
               BorderColor     =   &H00808080&
               X1              =   20
               X2              =   8880
               Y1              =   2130
               Y2              =   2130
            End
            Begin VB.Line Line4 
               BorderColor     =   &H00FFFFFF&
               X1              =   20
               X2              =   8880
               Y1              =   2150
               Y2              =   2150
            End
            Begin VB.Line Line5 
               BorderColor     =   &H00808080&
               X1              =   15
               X2              =   8875
               Y1              =   4050
               Y2              =   4050
            End
            Begin VB.Line Line6 
               BorderColor     =   &H00FFFFFF&
               X1              =   15
               X2              =   8875
               Y1              =   4065
               Y2              =   4065
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Del Type"
               Height          =   195
               Index           =   2
               Left            =   4320
               TabIndex        =   75
               Top             =   2340
               Width           =   645
            End
            Begin VB.Label Label6 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "Date"
               Height          =   195
               Left            =   4320
               TabIndex        =   74
               Top             =   3375
               Width           =   345
            End
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4770
      Left            =   240
      TabIndex        =   57
      Top             =   1050
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIpurchase.frx":4B84
         Height          =   615
         Left            =   4350
         Picture         =   "RMIpurchase.frx":4F66
         Style           =   1  'Graphical
         TabIndex        =   119
         Top             =   3930
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIpurchase.frx":5339
         Height          =   615
         Left            =   2610
         Picture         =   "RMIpurchase.frx":571F
         Style           =   1  'Graphical
         TabIndex        =   118
         Top             =   3930
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3195
         Left            =   840
         TabIndex        =   67
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5636
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
         TabIndex        =   66
         Top             =   120
         Width           =   8775
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H80000004&
      ForeColor       =   &H80000009&
      Height          =   2430
      Left            =   990
      TabIndex        =   58
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIpurchase.frx":5AE5
         Height          =   615
         Left            =   4020
         Picture         =   "RMIpurchase.frx":5EC7
         Style           =   1  'Graphical
         TabIndex        =   69
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIpurchase.frx":629A
         Height          =   615
         Left            =   2580
         Picture         =   "RMIpurchase.frx":6680
         Style           =   1  'Graphical
         TabIndex        =   68
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3705
         MaxLength       =   6
         TabIndex        =   59
         Top             =   870
         Width           =   2025
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Arrival  No."
         Height          =   195
         Left            =   2565
         TabIndex        =   60
         Top             =   945
         Width           =   780
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
         TabIndex        =   61
         Top             =   120
         Width           =   7620
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Order"
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
      Left            =   165
      TabIndex        =   11
      Top             =   600
      Width           =   2040
   End
End
Attribute VB_Name = "FrmPurchase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldcontdt As Date
Dim qty As Integer
Public Sub openconnection()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo errhand:
Dim str, tax, ins, trans, comm, deltype As String
            
            
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord WHERE 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    'Debug.Print DB.Properties(0)
    DB.BeginTrans
    adoprimaryrs.AddNew
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY")
    BUTTON(9).Enabled = False
    Txtfields(19).Locked = False
    BUTTON(10).Enabled = False
    Combo1.Locked = True
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Set rs = New Recordset
    str = ""
    str = "SELECT ISNULL(MAX(pono),0)+1 FROM rm_pord WHERE  podate BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'"
    rs.Open str, DB, adOpenStatic
    Txtfields(0).Text = rs(0)
    Txtfields(0).Enabled = False
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    MaskEdBox1(1).Text = "__/__/____"
    MaskEdBox1(3).Text = "__/__/____"
    MaskEdBox1(1).SetFocus
    
    
Case 1
        'Modification
        Set rs = New Recordset
        rs.Open "select count(*) from rm_pord where divcode='" & Divcode & "'", DB
    If Not rs(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
        'to fill datacombo1 with divcode and divname
        Set adoprimaryrs = New Recordset
        str = ""
        
        'str = "select  PONO, PODATE, CONTNO, CONTDT, SUPCD, BRKCD, AREACODE, VARCODE, cntcode, BBFLAG, qty, DELQTY, CANDYRATE, RATEKG, PAYMODE, DLYTYPE, CARCODE, PLOTNO, PLOTDT, PRNO, PRMARK, SBNO, CROPYEAR, COMMPER, SPOTEXP, OTHRS, tax, INSUR, trans, COMMISSION, HVICODE, HVIREPORT, Category, DELVERYSCH, PAYTERMS, STAPLEN, UNIRATIO, MICRONAIRE, SCI, STRENGTH, SFI, cg, MOIS_PER, TRASH_PER, GROSSWT, TAREWT, NETTWT FROM RM_PORD WHERE  divcode='" & Divcode & "' order by pono"
        adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
        'QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,
'        Set rs = New Recordset
'    If adoPrimaryRS.RecordCount = 0 Then
'        MsgBox "No Records Found", vbInformation, head
'        Call BUTTON_Click(10)
'        Exit Sub
'    Else
'tax , INSUR, DLYTYPE, COMMISSION, trans
        
        Label15.Caption = "Purchase Details"
        StatusBar1.Panels(2).Text = "Select a Purchase Number from the List for modification"
        KslList1.conn = connectstring
        KslList1.table = "rm_pord where divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(pono as varchar)"
        KslList1.listfield2 = "convert(varchar,podate,103)"
        Frame3.Visible = True
        Command6.SetFocus
        Frame3.ZOrder
        
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Call disablcontls
        BUTTON(9).ToolTipText = "Modify"
        DTPicker1.Enabled = False
        Txtfields(0).Locked = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        Combo1.Locked = True
        
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set rs = New Recordset
        rs.Open "select count(*) from rm_pord where divcode='" & Divcode & "'", DB
    If Not rs(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
        'to fill datacombo1 with divcode and divname
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
        If adoprimaryrs.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
        Else
        Label15.Caption = "Purchase List"
        StatusBar1.Panels(2).Text = "Select a Purchase Order from the List for Deletion"
        KslList1.conn = connectstring
        KslList1.table = "rm_pord where divcode='" & Divcode & "'"
        KslList1.listfield1 = "cast(pono as varchar)"
        KslList1.listfield2 = "convert(varchar,podate,103)"
        Frame3.Visible = True
        Command6.SetFocus
        Frame3.ZOrder
        End If
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Call disablcontls
        BUTTON(9).ToolTipText = "Modify"
        Txtfields(0).Locked = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 3
        'Query
        If Record_Exists("rm_pord") = False Then Exit Sub
        'Dim f As New repform
        Screen.MousePointer = 11
        REPINDEX = 159
        rmireports.Show
        Screen.MousePointer = 0
       
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoprimaryrs.MoveFirst
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
    If Not adoprimaryrs.EOF Then
        adoprimaryrs.MoveNext
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        adoprimaryrs.MoveLast
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
    If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
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
    If Not adoprimaryrs.BOF Then
        adoprimaryrs.MovePrevious
        
        If adoprimaryrs.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
            Call bindcontls
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
    End If

    If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoprimaryrs.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)
    If adoprimaryrs.AbsolutePosition = 1 Then
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
        adoprimaryrs.MoveLast
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
                If Check1.Value = 1 Then
                    adoprimaryrs("tax") = "Y"
                Else
                    adoprimaryrs("tax") = "N"
                End If
                If Check2.Value = 1 Then
                    adoprimaryrs("insUR") = "Y"
                Else
                    adoprimaryrs("insUR") = "N"
                End If
                If Check3.Value = 1 Then
                    adoprimaryrs("TRANS") = "Y"
                Else
                    adoprimaryrs("TRANS") = "N"
                End If
                If Check4.Value = 1 Then
                    adoprimaryrs("COMMISSION") = "Y"
                Else
                    adoprimaryrs("COMMISSION") = "N"
                End If
                
            If Combo2.Text = "Mill" Then
                adoprimaryrs("dlYtype") = "M"
            ElseIf Combo2.Text = "Spot" Then
                adoprimaryrs("dlYtype") = "S"
            End If
            If Txtfields(3).Text <> "" Then
                adoprimaryrs("BRKCD") = Txtfields(3).Text
            Else
                adoprimaryrs("BRKCD") = Null
            End If
            adoprimaryrs("CANDYRATE") = Val(Txtfields(19).Text)
            
            
            If Combo1.Text = "Bale" Then
                adoprimaryrs("BBflAg") = "B"
            ElseIf Combo1.Text = "Borah" Then
                adoprimaryrs("BBflAg") = "R"
            End If
        If Trim(Txtfields(15).Text) = "" Then
            MsgBox "Quantity should not be empty", vbInformation, head
            SSTab1.Tab = 1
            Txtfields(15).SetFocus
            Exit Sub
        End If
        If Trim(Txtfields(12).Text) = "" Then
            MsgBox "Party Lotno can not be empty", vbInformation, head
            SSTab1.Tab = 0
            Txtfields(12).SetFocus
            Exit Sub
        End If
        
        If Trim(Combo2.Text) = "" Then
            MsgBox "Delivery Type can not be empty", vbInformation, head
            SSTab1.Tab = 0
            Combo2.SetFocus
            Exit Sub
        End If
        If Trim(Txtfields(4).Text) = "" Then
            MsgBox "AreaCode should not be empty", vbInformation, head
            SSTab1.Tab = 0
            Txtfields(4).SetFocus
            Exit Sub
        End If
        If Trim(Text4.Text) = "" Then
          MsgBox "Mode of Payment should not be empty", vbInformation, head
          SSTab1.Tab = 0
          Text4.SetFocus
         Exit Sub
        End If
        If MaskEdBox1(0).Text = "__/__/____" Then
          MsgBox "Purchase Order date cannot  be empty", vbInformation, head
          SSTab1.Tab = 0
          MaskEdBox1(0).SetFocus
          Exit Sub
        End If
        
        If (MaskEdBox1(3).Text = "__/__/____") Or IsDate(MaskEdBox1(3).Text) = False Then
          MsgBox "Party Lot date cannot  be empty", vbInformation, head
          MaskEdBox1(3).Text = "__/__/____"
          MaskEdBox1(3).SetFocus
          SSTab1.Tab = 0
         Exit Sub
        End If
        
    End If
    If Opt = "add" Then
            adoprimaryrs("divcode") = Divcode
            adoprimaryrs("PODATE") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            If (MaskEdBox1(1).Text = "__/__/____") Or IsDate(MaskEdBox1(1).Text) = False Then
                adoprimaryrs("CONTDT") = Null
            Else
                adoprimaryrs("CONTDT") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            End If
            adoprimaryrs("plotdt") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
'            adoprimaryrs("COMMPER") = Val(adoprimaryrs("COMMPER"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
'            adoprimaryrs("plotdt") = Val(adoprimaryrs("plotdt"))
            
            
            adoprimaryrs.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Purchase Order Saved!", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
            
        End If
    
    If Opt = "mod" Then
        adoprimaryrs("podate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
        adoprimaryrs("contdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
        If IsNull(MaskEdBox1(3).Text) = False Then
            adoprimaryrs("plotdt") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
        Else
            adoprimaryrs("plotdt") = Null
        End If

            adoprimaryrs.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Purchase Modified!", vbInformation, head
            Screen.MousePointer = 0
            Opt = ""
    End If

    If Opt = "del" Then
        On Error GoTo del
        Set rs = New Recordset
        DB.Execute ("delete from rm_pord where pono =" + "'" + Trim(Txtfields(0).Text) + "'")
        DB.CommitTrans
        MsgBox "Purchase Deleted!", vbInformation, head
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
    End If
    
        'Return to query mode
        Set adoprimaryrs = New Recordset
adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Call disablcontls
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
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
    Screen.MousePointer = 0
        Opt = ""
        Set adoprimaryrs = New Recordset
adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
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
errhand:
Select Case err.Number
Case -2147217833
    MsgBox "Arithmatic Overflow please re enter", vbInformation, head
End Select
End Sub

Private Sub Command1_Click()
        desc.Caption = "Query"
        Set adoprimaryrs = New Recordset
adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
        'Bind the text boxes,check boxes and option buttons  to the data source
        If adoprimaryrs.RecordCount = 0 Then
            MsgBox "No Such Arrival No. Found", vbInformation, head
            Exit Sub
        End If
        Call bindcontls
        'calling query procedure from module
        Call Query(BUTTON)
        Frame6.Visible = False
End Sub
Private Sub Command2_Click()
Frame6.Visible = False
End Sub

Private Sub Command5_Click()    'activex cancel
        
        Frame3.Visible = False
        SSTab1.Visible = True
        'Frame1.Visible = True
       ' Frame2.Visible = True
        Frame7.Visible = True
       ' Frame8.Visible = True
        Txtfields(2).SetFocus
       Exit Sub
        Call BUTTON_Click(10)
        'Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  divcode='" & divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
        'Call bindcontls
        'OPT = ""
        Screen.MousePointer = 0
        'Call disablcontls
        'Call cancl(BUTTON)
End Sub

Private Sub Command6_Click()        'activex okay
Select Case KslList1.listfield1
    Case "cast(pono as varchar)"
        BUTTON(9).Enabled = True
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord where pono='" & KslList1.Code & "' and podate='" & Format(KslList1.description, "yyyy-mm-dd") & "'order by pono", DB, adOpenStatic, adLockBatchOptimistic
        If adoprimaryrs.RecordCount <> 0 Then
            If adoprimaryrs.RecordCount = 0 Then
                MsgBox "Modification Not allowed!", vbInformation, head
                Exit Sub
            End If
        Else
            'MsgBox "Inspection Over!Modification not allowed!", vbInformation, head
            Exit Sub
        End If
        oldcontno = adoprimaryrs("contno")
        oldcontdt = adoprimaryrs("contdt")
        oldqty = adoprimaryrs("qty")
        If adoprimaryrs("tax") = "Y" Then
         Check1.Value = 1
        Else
         Check1.Value = 0
        End If
        If adoprimaryrs("INSUR") = "Y" Then
         Check2.Value = 1
        Else
         Check2.Value = 0
        End If
        If adoprimaryrs("COMMISSION") = "Y" Then
         Check3.Value = 1
        Else
         Check3.Value = 0
        End If
        If adoprimaryrs("trans") = "Y" Then
         Check4.Value = 1
        Else
         Check4.Value = 0
        End If
        If adoprimaryrs("DLYTYPE") = "S" Then
            Combo2.ListIndex = 1
        Else
            Combo2.ListIndex = 0
        End If
        
        If adoprimaryrs("BBFLAG") = "B" Then
            Combo1.ListIndex = 1
        Else
            Combo1.ListIndex = 0
        End If
        
        Call bindcontls
        Call ENABLCONTLS
        If Opt = "del" Then
          Call disablcontls
        End If
        Txtfields(0).Locked = True
        Frame3.Visible = False
Case "carcode"
Txtfields(9).Text = KslList1.Code
Txtfields(11).SetFocus
Case "cast(a.contno as varchar)"
     Txtfields(1).Text = KslList1.Code
     MaskEdBox1(1).Text = Format(KslList1.description, "dd/mm/yyyy")
     Dim partyrs As Recordset
     Set partyrs = New Recordset
     partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,''),candyrate,bbflag,ordqty from rm_cont where contno='" & Txtfields(1).Text & "' and contdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
     Txtfields(2).Text = partyrs(0)
     Txtfields(3).Text = IIf(IsNull(partyrs(1)), "", partyrs(1))
     Txtfields(4).Text = IIf(IsNull(partyrs(2)), "", partyrs(2))
     Txtfields(5).Text = partyrs(3)
     'Txtfields(6).Text = partyrs(4)
     Txtfields(15).Text = partyrs(7)
     Txtfields(19).Text = Format(partyrs(5), "#######.000")
     'If partyrs(6) = "B" Then
     'Combo1.Text = "Bale"
     'ElseIf partyrs(6) = "R" Then
      '  Combo1.Text = "Borah"
     'End If
     
     For i = 0 To 6
     Txtfields(i).Locked = True
     Next
     Txtfields(19).Locked = False
     Txtfields(7).SetFocus
     SSTab1.Tab = 0
     Combo1.SetFocus
Case "slcode"
       Txtfields(2).Text = KslList1.Code
       Text1.Text = KslList1.description
       Txtfields(3).SetFocus
Case "sLcode"
       Txtfields(3).Text = KslList1.Code
       Text2.Text = KslList1.description
       Txtfields(4).SetFocus
Case "varcode"
       Txtfields(5).Text = KslList1.Code
       Combo2.SetFocus
       
Case "AREACODE"
       Txtfields(4).Text = KslList1.Code
       Text3.Text = KslList1.description
       Txtfields(5).SetFocus
     
Case "paymode"
  'KslList1.listfield1 = "modeofpayment"
  'Txtfields(14).Text = KslList1.Code
  Text4.Text = KslList1.Code
  SSTab1.Tab = 1
End Select
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    Frame3.Visible = False
End Sub

Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = DTPicker1.Value
End Sub


Private Sub Form_Load()
On Error Resume Next
  StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  SSTab1.Visible = True
  SSTab1.Tab = 0
  DATLAB.Caption = pdate
  'TabStrip1.Tabs.Clear
  Set adoprimaryrs = New Recordset
  adoprimaryrs.Open "select DIVCODE,PONO,CONTNO,DLYTYPE,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,PLOTNO,TAX,INSUR,DLYTYPE,COMMISSION,TRANS,QTY,GROSSWT,TAREWT,NETtWT,CANDYRATE,BBFLAG,PODATE,CONTDT,PLOTDT,SBNO,OTHRS,CROPYEAR,SPOTEXP,COMMPER,HVIREPORT,HVICODE,DELVERYSCH,UNIRATIO,STRENGTH,MOIS_PER,STAPLEN,MICRONAIRE,SFI,TRASH_PER,CG,SCI,PAYTERMS,CATEGORY FROM RM_pord order by pono", DB, adOpenStatic, adLockBatchOptimistic
  If adoprimaryrs.RecordCount <> 0 Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM(BUTTON)
     Call disablcontls
     'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       'TabStrip1.Visible = True
  End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
  StatusBar1.Panels(2).Text = "Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
If adoprimaryrs("bbflag") = "B" Then
    Combo1.Text = "Bale"
ElseIf adoprimaryrs("bbflag") = "R" Then
    Combo1.Text = "Borah"
    Else
    Combo1.Text = " "
End If
If adoprimaryrs("dlyType") = "S" Then
    Combo2.ListIndex = 1
Else
    Combo2.ListIndex = 0
End If
If adoprimaryrs("tax") = "Y" Then
    Check1.Value = 1
Else
    Check1.Value = 0
End If
If adoprimaryrs("Commission") = "Y" Then
    Check4.Value = 1
Else
    Check4.Value = 0
End If
If adoprimaryrs("insur") = "Y" Then
    Check2.Value = 1
Else
    Check2.Value = 0
End If
If adoprimaryrs("trans") = "Y" Then
    Check3.Value = 1
Else
    Check3.Value = 0
End If



If IsNull(adoprimaryrs("POdate")) = False Or adoprimaryrs("POdate") = "" Then
    MaskEdBox1(0).Text = Format(adoprimaryrs("POdate"), "dd/mm/yyyy")
End If
If IsNull(adoprimaryrs("contdt")) = False Or adoprimaryrs("contdt") = "" Then
    MaskEdBox1(1).Text = Format(adoprimaryrs("contdt"), "dd/mm/yyyy")
End If
If IsNull(adoprimaryrs("plotdt")) = False Then
    MaskEdBox1(3).Text = Format(adoprimaryrs("plotdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(3).Text = "__/__/____"
End If

End If
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoprimaryrs
Next
MaskEdBox1(0).DataField = "POdate"
MaskEdBox1(1).DataField = "contdt"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoprimaryrs("POdate")) = False Or adoprimaryrs("POdate") = "" Then
    MaskEdBox1(0).Text = Format(adoprimaryrs("POdate"), "dd/mm/yyyy")
End If
If IsNull(adoprimaryrs("contdt")) = False Or adoprimaryrs("contdt") = "" Then
    MaskEdBox1(1).Text = Format(adoprimaryrs("contdt"), "dd/mm/yyyy")
End If
If IsNull(adoprimaryrs("plotdt")) = False Then
    MaskEdBox1(3).Text = Format(adoprimaryrs("plotdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(3).Text = "__/__/____"
End If

End Sub

Public Sub ENABLCONTLS()
For Each c In Me.Txtfields
        c.Locked = False
Next
MaskEdBox1(0).Enabled = True
'MaskEdBox1(2).Enabled = True
If Opt = "add" Then
    DTPicker1.Enabled = True
End If
Combo1.Locked = False
End Sub

Public Sub disablcontls()
On Error Resume Next
'Dim i As Integer
For Each c In Me.Txtfields
        c.Locked = True
Next
        
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
DTPicker1.Enabled = False
Combo1.Locked = True
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" Then
'If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(0).Text) < CDate(MaskEdBox1(1).Text) Then
    'MsgBox "Arrival date Should not be less then Contract date", vbInformation, head
    'MaskEdBox1(0).Text = MaskEdBox1(1).Text
'End If
End If
End If
Select Case Index
Case 0
If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
'        MsgBox ("invalid date"), vbInformation, head
 '       MaskEdBox1(0).Text = pdate
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
            MaskEdBox1(0).SetFocus
    End If
End If
Case 2
If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(2).Text = MaskEdBox1(0).Text
        MaskEdBox1(2).SetFocus
    End If
End If
End Select
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
    ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
            MsgBox "ATL Date should be before Arrival Date", vbInformation, head
            MaskEdBox1(2).Text = MaskEdBox1(0).Text
    End If
End If
End Select
End Sub
Private Sub Text4_GotFocus()
If Opt = "add" Or Opt = "mod" Then
    


   'Set rs = New Recordset
   'rs.Open "select * from rm_cont a where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
   'RS.Open "select * from rm_cont a where ordqty>isnull(recqty,0) and divcode='" & divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
   'If rs.RecordCount = 0 Then
    '    MsgBox "First enter Details in Contract Transaction", vbInformation, head
     '   Call BUTTON_Click(10)
   'Else
      Label15.Caption = "Mode of Payment"
      StatusBar1.Panels(2).Text = "Select Payment mode from the list"
      KslList1.conn = connectstring
      'KslList1.table = "rm_cont a where ordqty>isnull(recqty,0) and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
      KslList1.table = "rm_pmode"
      KslList1.listfield1 = "paymode"
      KslList1.listfield2 = "paydesc"
'      Ksldesc1.listfield1 = "paymode"
 '     Ksldesc1.listfield2 = "paydesc"
'      Command6.SetFocus
      Frame3.ZOrder
  End If


End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)

   Set rs = New Recordset
    rs.Open "select count(*) from rm_pmode", DB
If rs(0) = 0 Then
MsgBox "No Record Exists", vbInformation, head
Else
 'Label15.Caption = "Carrier List"
        'Frame1.Visible = False
        'Frame2.Visible = False
        Frame3.Visible = True
        KslList1.conn = connectstring
        KslList1.table = "rm_pmode"
        KslList1.listfield1 = "paymode"
        KslList1.listfield2 = "paydesc"
        KslList1.SetFocus
        'Command3.SetFocus
        If KslList1.Code = "" Then
             MsgBox "Enter Values In rm_pmode Table", vbInformation, head
             'Call BUTTON_Click(9)
         Exit Sub
         End If
 End If

End Sub
Private Sub Text4_LostFocus()
If Text4.Text = Empty Then
    MsgBox "Paymode should not be empty", vbInformation, head
Exit Sub
End If
End Sub

Private Sub txtFields_Change(Index As Integer)
If Opt = "add" Or Opt = "" Or Opt = " " Then
Select Case Index
Case 2
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text1.Text = rs(0)
   Else
     Text1.Text = ""
   End If
   
   rs.Close
Case 3
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(3).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text2.Text = rs(0)
   Else
     Text2.Text = ""
   End If
   rs.Close
Case 4
   Set rs = New Recordset
   rs.Open "select areaname from rm_area where areacode = '" & Txtfields(4).Text & "' ", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text3.Text = rs(0)
    Else
     Text3.Text = ""
   End If
   rs.Close
 End Select
End If
If Opt = "" Or Opt = " " Then
Select Case Index
Case 13
Txtfields(13).Text = Format(Txtfields(13).Text, "#000000.00")
Case 14
Txtfields(14).Text = Format(Txtfields(14).Text, "#0.00")
Case 19
Txtfields(19).Text = Format(Txtfields(19).Text, "#0.00")
Case 16
'Txtfields(16).Text = Format(Txtfields(16).Text, "#0.000")
Case 17
'Txtfields(17).Text = Format(Txtfields(17).Text, "#0.000")
Case 18
'Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
End Select
End If
End Sub

Private Sub txtfields_GotFocus(Index As Integer)
If Opt = "add" Then
Select Case Index
Case 2
    If Txtfields(2).Text = "" Then
    Label15.Caption = "Supplier Details"
    StatusBar1.Panels(2).Text = "Select a Supplier from the List "
    KslList1.conn = connectstring
    KslList1.table = "fa_slmas"
    KslList1.listfield1 = "slcode"
    KslList1.listfield2 = "slname"
    Frame3.Visible = True
    Command6.SetFocus
    Frame3.ZOrder
    End If
Case 3
If Txtfields(3).Text = "" Then
    Label15.Caption = "Broker Details"
    StatusBar1.Panels(2).Text = "Select a Broker from the List "
    KslList1.conn = connectstring
    KslList1.table = "fa_slmas"
    KslList1.listfield1 = "sLcode"
    KslList1.listfield2 = "slname"
    Frame3.Visible = True
    Command6.SetFocus
    Frame3.ZOrder
End If
Case 4
If Txtfields(4).Text = "" Then
    Label15.Caption = "Area Details"
    StatusBar1.Panels(2).Text = "Select a Area from the List "
    KslList1.conn = connectstring
    KslList1.table = "rm_area"
    KslList1.listfield1 = "AREACODE"
    KslList1.listfield2 = "AREANAME"
    Frame3.Visible = True
    Command6.SetFocus
    Frame3.ZOrder
End If
Case 5
If Txtfields(5).Text = "" Then
    Label15.Caption = "Variety Details"
    StatusBar1.Panels(2).Text = "Select a Variety from the List "
    KslList1.conn = connectstring
    KslList1.table = "rm_var"
    KslList1.listfield1 = "varcode"
    KslList1.listfield2 = "varname"
    Frame3.Visible = True
    Command6.SetFocus
    Frame3.ZOrder
End If
End Select
End If





















If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0
          StatusBar1.Panels(2).Text = "Enter Purchase Number"
     Case 1
          StatusBar1.Panels(2).Text = "Enter Contract "
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
     Case 11
          StatusBar1.Panels(2).Text = "Enter Year"

     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 13
          StatusBar1.Panels(2).Text = "Enter spot expences"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
     'Case 11
      '    StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
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
          End Select

End If
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'    Case 0
'        statusbar1.Panels(2).Text = "Enter Three Charecter Division Code "
'    Case 1
'        statusbar1.Panels(2).Text = "Enter 4 Digit Arrival Number"
'    Case 2
'       statusbar1.Panels(2).Text = "Enter a Valid Date"
'    Case 3
'        statusbar1.Panels(2).Text = "Enter 4 Digit Contract Number"
'End Select
'End If

Select Case Index
Case 1
If Opt = "add" Then
   Set rs = New Recordset
   rs.Open "select * from rm_cont a where divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
   'RS.Open "select * from rm_cont a where ordqty>isnull(recqty,0) and divcode='" & divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
   If rs.RecordCount = 0 Then
        MsgBox "First enter Details in Contract Transaction", vbInformation, head
        Call BUTTON_Click(10)
   Else
      Label15.Caption = "Contract Details"
      StatusBar1.Panels(2).Text = "Select contract number from the list"
      KslList1.conn = connectstring
      KslList1.table = "rm_cont a where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
      KslList1.listfield1 = "cast(a.contno as varchar)"
      KslList1.listfield2 = "convert(varchar,contdt,103)"
      Frame3.Visible = True
      Command6.SetFocus
      Frame3.ZOrder
  End If
End If
If Opt = "mod" Then
      Label15.Caption = "Contract Details"
      KslList1.conn = connectstring
      KslList1.table = "rm_cont a where divcode='" & Divcode & "' "
      KslList1.listfield1 = "cast(a.contno as varchar)"
      KslList1.listfield2 = "convert(varchar,contdt,103)"
      Frame3.Visible = True
      Frame3.ZOrder
End If
End Select
End Sub

Private Sub TXTFIELDS_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 9
   Set rs = New Recordset
    rs.Open "select count(*) from po_car", DB
If rs(0) = 0 Then
MsgBox "No Record Exists", vbInformation, head
Else
 Label15.Caption = "Carrier List"
        'Frame1.Visible = False
        'Frame2.Visible = False
        Frame3.Visible = True
        KslList1.conn = connectstring
        KslList1.table = "po_car"
        KslList1.listfield1 = "carcode"
        KslList1.listfield2 = "carname"
        KslList1.SetFocus
        'Command3.SetFocus
        If KslList1.Code = "" Then
             MsgBox "Enter Values In po_car Table", vbInformation, head
             'Call BUTTON_Click(9)
         Exit Sub
         End If
 End If

End Select
End If

End Sub
Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "" Or Opt = " " Or Opt = "del" Then

End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 7
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 20, KeyAscii
Case 8
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 15, KeyAscii
Case 9
    ToUpCase Txtfields(Index), KeyAscii
Case 10
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 6, KeyAscii, 0
Case 11
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 15, KeyAscii
Case 12
    ToUpCase Txtfields(Index), KeyAscii
Case 13
  If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 6, KeyAscii, 0
Case 14
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 7, KeyAscii, 0
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 5, KeyAscii, 0
 Case 18
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 7, KeyAscii, 0
 Case 19
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 7, KeyAscii, 0
 Case 20
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 Txtfields(Index), 3, KeyAscii, 0
 Case 21
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii
 Case 22
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii
 Case 23
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii
Case 24
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 25
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 26
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 27
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 28
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 29
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 30
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 31
    If KeyAscii = 45 Then KeyAscii = 0
    ToNumber Txtfields(Index), KeyAscii
Case 33
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii

Case 34
    ToUpCase Txtfields(Index), KeyAscii
    ToAlphaNumber Txtfields(Index), 10, KeyAscii

End Select
End If
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'     Case 0
'          statusbar1.Panels(2).Text = "Enter Arrival Number"
'     Case 1
'          statusbar1.Panels(2).Text = "Enter Contract "
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
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 15
If Opt = "add" Then
    Dim CNTRS As Recordset
    If Trim(Txtfields(15).Text) = "" Then
      MsgBox "Quantity Should not be empty", vbInformation, head
      Txtfields(15).SetFocus
      Exit Sub
    End If
    
'    Set CNTRS = New Recordset
'    CNTRS.Open "select ordqty-isnull(recqty,0) from rm_cont where contno='" & Txtfields(1).Text & "'  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
'    If Val(Txtfields(15).Text) > CNTRS(0) Then
'    Txtfields(15).Text = CNTRS(0)
'    MsgBox "Arrived Quantity Should not be Greater than Qrdered Quantity" & -CNTRS(0), vbInformation, head
'    Txtfields(15).SetFocus
'    Exit Sub
'    End If
ElseIf Opt = "mod" Then
'    Dim modrs As Recordset
'    Set modrs = New Recordset
'    modrs.Open "select ordqty,recqty,ordqty-isnull(recqty,0) from rm_cont  where contno=" & Txtfields(1).Text & "  and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
'    Dim arrs As Recordset
''    If modrs(2) <> 0 Then
'    If Val(Txtfields(15).Text) > modrs(2) + oldqty Then
'        Txtfields(15).Text = modrs(2) + oldqty
'        MsgBox "Arrived Quantity Should not be Greater than Qrdered Quantity" & modrs(2) + oldqty, vbInformation, head
'        Txtfields(15).SetFocus
'        Exit Sub
'    End If
'    ElseIf modrs(2) = 0 Then
'        OLDQTY1 = modrs(1)
'        If Val(Txtfields(15).Text) > OLDQTY1 Then
'        Txtfields(15).Text = OLDQTY1
'        MsgBox "Arrived Quantity Should not be Greater than Qrdered Quantity  " & OLDQTY1, vbInformation, head
'        Txtfields(15).SetFocus
'        Exit Sub
'    End If
'
        
    'End If
End If
'Case 17
'If Format(Trim(Txtfields(17).Text), "#####.000") = "" Then
'        MsgBox "Tare Weight should not be empty", vbInformation, head
'
'        Txtfields(17).SetFocus
'
'        Exit Sub
'End If
'If Txtfields(16).Text <> "" Then
'If Val(Txtfields(17).Text) >= Val(Txtfields(16).Text) Then
'
'    MsgBox "Tare Weight should be Less than Gross Weight ", vbInformation, head
'    Txtfields(17).Text = ""
'    Txtfields(17).SetFocus
'ElseIf Trim(Txtfields(16).Text) <> "" And Txtfields(17).Text <> "" Then
'    Txtfields(18).Text = Val(Txtfields(16).Text) - Val(Txtfields(17).Text)
'    Txtfields(18).Locked = True
'    Txtfields(19).Locked = False
'End If
'End If
'Case 16
'     If Trim(Txtfields(16).Text) = "" Then
'        MsgBox "Gross Weight should not be empty", vbInformation, head
'        Txtfields(16).SetFocus
'        SSTab1.Tab = 1
'        Exit Sub
'     End If
Case 6
     If Trim(Txtfields(6).Text) = "" Then
       MsgBox "SBNO. should not  be empty", vbInformation, head
       Txtfields(6).Locked = False
        Txtfields(6).SetFocus
        Exit Sub
     End If
      
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 13
Txtfields(13).Text = Format(Txtfields(13).Text, "#0000.00")
Case 14
Txtfields(14).Text = Format(Txtfields(14).Text, "#0.00")
Case 19
Txtfields(19).Text = Format(Txtfields(19).Text, "#0.00")
Case 16
Txtfields(16).Text = Format(Txtfields(16).Text, "#0.000")
Case 17
Txtfields(17).Text = Format(Txtfields(17).Text, "#0.000")
Case 18
Txtfields(18).Text = Format(Txtfields(18).Text, "#0.000")
Case 1
    Combo2.SetFocus
End Select
End If
End Sub

Public Sub tonum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
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

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 17
If Format(Trim(Txtfields(17).Text), "#####.000") = "" Then
        MsgBox "Tare Weight should not be empty", vbInformation, head

        Cancel = True

        Exit Sub
End If
End Select
End If
End Sub
