VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmContractoutsam 
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   840
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin RMI.UserFooter UserFooter1 
      Height          =   4395
      Left            =   10950
      TabIndex        =   174
      Top             =   870
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7752
   End
   Begin VB.Frame Frame11 
      Height          =   495
      Left            =   5220
      TabIndex        =   169
      Top             =   510
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton cmd_report 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   330
         Left            =   3990
         TabIndex        =   175
         Top             =   120
         Visible         =   0   'False
         Width           =   1290
      End
      Begin VB.OptionButton Option7 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1725
         TabIndex        =   170
         Top             =   135
         Width           =   975
      End
      Begin VB.OptionButton Option6 
         Caption         =   "No"
         Height          =   285
         Left            =   3030
         TabIndex        =   171
         Top             =   135
         Value           =   -1  'True
         Width           =   900
      End
      Begin VB.Label Label43 
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
         Height          =   285
         Left            =   165
         TabIndex        =   173
         Top             =   165
         Width           =   1425
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   60
      Top             =   7590
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame8 
      Caption         =   "Removed  components for Multiple variety concept"
      Height          =   2895
      Left            =   11400
      TabIndex        =   105
      Top             =   2160
      Visible         =   0   'False
      Width           =   8535
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "salcnfno"
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
         Index           =   9
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   130
         Top             =   2400
         Visible         =   0   'False
         Width           =   1050
      End
      Begin VB.Frame Frame3 
         Caption         =   "Rate Per"
         Height          =   495
         Left            =   210
         TabIndex        =   121
         Top             =   1800
         Visible         =   0   'False
         Width           =   3375
         Begin VB.OptionButton Optkgs 
            Caption         =   "Kgs"
            Height          =   255
            Left            =   2160
            TabIndex        =   123
            Top             =   120
            Width           =   735
         End
         Begin VB.OptionButton Optcandy 
            Caption         =   "Candy"
            Height          =   255
            Left            =   840
            TabIndex        =   122
            Top             =   120
            Width           =   855
         End
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "candyrate"
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
         Height          =   330
         Index           =   7
         Left            =   4920
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   115
         TabStop         =   0   'False
         Top             =   1080
         Width           =   1575
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "PTY_CONTNO"
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
         Height          =   330
         Index           =   17
         Left            =   2760
         MaxLength       =   10
         TabIndex        =   113
         Top             =   1560
         Width           =   1695
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "sno"
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
         Index           =   16
         Left            =   2160
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   111
         Top             =   1200
         Width           =   1755
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ordqty"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   ""
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
         Height          =   330
         Index           =   6
         Left            =   1920
         MaxLength       =   15
         TabIndex        =   109
         Top             =   720
         Width           =   1545
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "varcode"
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
         Index           =   4
         Left            =   1200
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   107
         Top             =   360
         Width           =   900
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
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
         Left            =   2160
         Locked          =   -1  'True
         MaxLength       =   25
         TabIndex        =   106
         TabStop         =   0   'False
         Top             =   360
         Width           =   6000
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Sales Conf.Number"
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
         Left            =   120
         TabIndex        =   131
         Top             =   2400
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Rate"
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
         Left            =   4320
         TabIndex        =   116
         Top             =   1080
         Width           =   435
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Party Sample Number"
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
         Left            =   480
         TabIndex        =   114
         Top             =   1560
         Width           =   1980
      End
      Begin VB.Label Label17 
         AutoSize        =   -1  'True
         Caption         =   "Mill Sample Number"
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
         Left            =   0
         TabIndex        =   112
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
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
         Left            =   120
         TabIndex        =   110
         Top             =   720
         Width           =   720
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
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
         Left            =   0
         TabIndex        =   108
         Top             =   360
         Width           =   630
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -75
      TabIndex        =   84
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   9270
         Picture         =   "RMIContractwithoutsample.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   172
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5745
         Picture         =   "RMIContractwithoutsample.frx":0397
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5220
         Picture         =   "RMIContractwithoutsample.frx":07D9
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "New Order Report Print (Ctrl P)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":0C1B
         Height          =   510
         Index           =   4
         Left            =   1605
         Picture         =   "RMIContractwithoutsample.frx":0F25
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":12BA
         Height          =   510
         Index           =   6
         Left            =   2655
         Picture         =   "RMIContractwithoutsample.frx":1704
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":1A51
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "RMIContractwithoutsample.frx":1D5B
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":20EE
         Height          =   510
         Index           =   5
         Left            =   2130
         Picture         =   "RMIContractwithoutsample.frx":2538
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":289D
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
         Picture         =   "RMIContractwithoutsample.frx":2BA7
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":2F43
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIContractwithoutsample.frx":324D
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":35C7
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "RMIContractwithoutsample.frx":3A11
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":3D61
         Height          =   510
         Index           =   11
         Left            =   6240
         Picture         =   "RMIContractwithoutsample.frx":41AB
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":4540
         Height          =   510
         Index           =   9
         Left            =   4170
         Picture         =   "RMIContractwithoutsample.frx":484A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "RMIContractwithoutsample.frx":4BEC
         Height          =   510
         Index           =   10
         Left            =   4695
         Picture         =   "RMIContractwithoutsample.frx":4EF6
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl BackSpace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIContractwithoutsample.frx":5272
         Height          =   510
         Index           =   8
         Left            =   3645
         Picture         =   "RMIContractwithoutsample.frx":56BC
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
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
         Left            =   10365
         TabIndex        =   86
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
         Left            =   7815
         TabIndex        =   85
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   83
      Top             =   8190
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   11571
            MinWidth        =   11571
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "06/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "10:48 AM"
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
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00FFFFFF&
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
      ItemData        =   "RMIContractwithoutsample.frx":5A1E
      Left            =   11340
      List            =   "RMIContractwithoutsample.frx":5A2B
      Style           =   2  'Dropdown List
      TabIndex        =   142
      Top             =   8040
      Visible         =   0   'False
      Width           =   1935
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6465
      Left            =   480
      TabIndex        =   87
      Top             =   1170
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   11404
      _Version        =   393216
      TabHeight       =   520
      BackColor       =   8421631
      TabCaption(0)   =   "&Order Details            "
      TabPicture(0)   =   "RMIContractwithoutsample.frx":5A41
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame9"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "&Payment Details"
      TabPicture(1)   =   "RMIContractwithoutsample.frx":5A5D
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame6"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "&Tax Details     "
      TabPicture(2)   =   "RMIContractwithoutsample.frx":5A79
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame10"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      Begin VB.Frame Frame10 
         Height          =   6000
         Left            =   -74850
         TabIndex        =   156
         Top             =   360
         Width           =   10095
         Begin VB.TextBox Txtfields 
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
            Height          =   330
            Index           =   37
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   73
            Top             =   1110
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   36
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   72
            Top             =   1110
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   8940
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   71
            Top             =   675
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   34
            Left            =   6435
            MaxLength       =   7
            TabIndex        =   70
            Top             =   690
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   33
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   69
            Top             =   690
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   32
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   68
            Top             =   660
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   31
            Left            =   8940
            MaxLength       =   7
            TabIndex        =   67
            Top             =   255
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   30
            Left            =   6450
            MaxLength       =   7
            TabIndex        =   66
            Top             =   270
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   29
            Left            =   4320
            MaxLength       =   7
            TabIndex        =   65
            Top             =   255
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   28
            Left            =   1680
            MaxLength       =   7
            TabIndex        =   64
            Top             =   240
            Width           =   885
         End
         Begin VB.Line Line1 
            X1              =   0
            X2              =   10365
            Y1              =   1560
            Y2              =   1560
         End
         Begin VB.Label Label42 
            AutoSize        =   -1  'True
            Caption         =   "Insurance %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   166
            Top             =   1140
            Width           =   1095
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Other Tax %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   165
            Top             =   1140
            Width           =   1095
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Tax%"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7830
            TabIndex        =   164
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label39 
            AutoSize        =   -1  'True
            Caption         =   "Tax Code"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5295
            TabIndex        =   163
            Top             =   735
            Width           =   825
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Cess %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   162
            Top             =   735
            Width           =   660
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "HS Cess %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   161
            Top             =   705
            Width           =   960
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "ED Cess %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   7830
            TabIndex        =   160
            Top             =   330
            Width           =   960
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "BED %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5295
            TabIndex        =   159
            Top             =   330
            Width           =   600
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Trade Discount %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   2745
            TabIndex        =   158
            Top             =   300
            Width           =   1530
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Cash Discount %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   135
            TabIndex        =   157
            Top             =   255
            Width           =   1470
         End
      End
      Begin VB.Frame Frame6 
         Height          =   3090
         Left            =   -74820
         TabIndex        =   134
         Top             =   3240
         Width           =   10065
         Begin VB.PictureBox FLEXG 
            Height          =   1590
            Left            =   1920
            ScaleHeight     =   1530
            ScaleWidth      =   7965
            TabIndex        =   154
            Top             =   1410
            Width           =   8025
            Begin MSFlexGridLib.MSFlexGrid Flexg1 
               Height          =   1860
               Left            =   -30
               TabIndex        =   63
               ToolTipText     =   "Double click in Grid To delete the row "
               Top             =   -30
               Width           =   8445
               _ExtentX        =   14896
               _ExtentY        =   3281
               _Version        =   393216
               Rows            =   1
               Cols            =   6
               FixedRows       =   0
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
         End
         Begin VB.ComboBox Combo8 
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
            ItemData        =   "RMIContractwithoutsample.frx":5A95
            Left            =   5250
            List            =   "RMIContractwithoutsample.frx":5AA5
            TabIndex        =   59
            Text            =   "Immediate"
            Top             =   630
            Width           =   4695
         End
         Begin VB.ComboBox Combo6 
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
            ItemData        =   "RMIContractwithoutsample.frx":5AE5
            Left            =   1920
            List            =   "RMIContractwithoutsample.frx":5AE7
            Style           =   2  'Dropdown List
            TabIndex        =   58
            Top             =   630
            Width           =   1695
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "deladd"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   22
            Left            =   1920
            MaxLength       =   7
            TabIndex        =   56
            Top             =   240
            Width           =   1695
         End
         Begin VB.TextBox Text6 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   3630
            Locked          =   -1  'True
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   240
            Width           =   6285
         End
         Begin VB.TextBox Text9 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Left            =   5235
            TabIndex        =   62
            Top             =   1020
            Width           =   1680
         End
         Begin VB.CommandButton deliveryadd 
            Caption         =   "Add"
            Height          =   375
            Left            =   9060
            TabIndex        =   78
            Top             =   1020
            Width           =   855
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   345
            Left            =   1905
            TabIndex        =   61
            Top             =   1020
            Visible         =   0   'False
            Width           =   1695
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   375
            Left            =   1920
            TabIndex        =   60
            Top             =   1020
            Width           =   1695
            _ExtentX        =   2990
            _ExtentY        =   661
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Instruction"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3705
            TabIndex        =   141
            Top             =   735
            Width           =   915
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   140
            Top             =   690
            Width           =   615
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Address"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   139
            Top             =   420
            Width           =   1470
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   138
            Top             =   1080
            Width           =   1185
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Quantity"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3660
            TabIndex        =   137
            Top             =   1125
            Width           =   1500
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Schedule View"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   105
            TabIndex        =   136
            Top             =   1440
            Width           =   1395
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Schedule"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   60
            TabIndex        =   135
            Top             =   150
            Width           =   1770
         End
      End
      Begin VB.Frame Frame9 
         Height          =   1725
         Left            =   90
         TabIndex        =   45
         Top             =   4680
         Width           =   10155
         Begin MSDataGridLib.DataGrid DataGrid1 
            Height          =   1695
            Left            =   0
            TabIndex        =   44
            Top             =   0
            Width           =   10140
            _ExtentX        =   17886
            _ExtentY        =   2990
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   1
            RowHeight       =   15
            TabAction       =   2
            RowDividerStyle =   6
            AllowAddNew     =   -1  'True
            AllowDelete     =   -1  'True
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
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
      End
      Begin VB.Frame Frame2 
         Height          =   2805
         Left            =   -74820
         TabIndex        =   117
         Top             =   420
         Width           =   10065
         Begin VB.TextBox Text15 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Transport"
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   1920
            MaxLength       =   50
            TabIndex        =   195
            Top             =   2355
            Width           =   3750
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms1"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   45
            Left            =   5940
            MaxLength       =   30
            TabIndex        =   190
            ToolTipText     =   "Enter maximun of 30 characters (ex: 80% Payment)"
            Top             =   1890
            Width           =   3045
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms1Days"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   46
            Left            =   9030
            MaxLength       =   3
            TabIndex        =   189
            ToolTipText     =   "Enter maximun of 3 Number (ex: 15)"
            Top             =   1890
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms2"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   47
            Left            =   5940
            MaxLength       =   30
            TabIndex        =   188
            ToolTipText     =   "Enter maximun of 30 characters (ex: 100% Payment)"
            Top             =   2280
            Width           =   3045
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Terms2Days"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   48
            Left            =   9030
            MaxLength       =   3
            TabIndex        =   187
            ToolTipText     =   "Enter maximun of 3 Number (ex: 30)"
            Top             =   2280
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "CreditDays"
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
            Height          =   330
            Index           =   38
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   46
            Top             =   165
            Width           =   1260
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "InterestPer"
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
            Height          =   330
            Index           =   39
            Left            =   4380
            MaxLength       =   5
            TabIndex        =   47
            Top             =   150
            Width           =   1830
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "deltype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   26
            Left            =   3180
            Locked          =   -1  'True
            MaxLength       =   25
            TabIndex        =   51
            TabStop         =   0   'False
            Top             =   870
            Width           =   6780
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "deltype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   20
            Left            =   1920
            MaxLength       =   1
            TabIndex        =   48
            Top             =   525
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "acceptance"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   18
            Left            =   1920
            MaxLength       =   20
            TabIndex        =   50
            Top             =   885
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Remarks"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   19
            Left            =   1920
            MaxLength       =   250
            TabIndex        =   52
            Top             =   1230
            Width           =   8040
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00FFFFFF&
            DataField       =   "contperson"
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   1920
            MaxLength       =   50
            TabIndex        =   55
            Top             =   1950
            Width           =   3750
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "billadd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   21
            Left            =   1920
            MaxLength       =   7
            TabIndex        =   53
            Top             =   1590
            Width           =   1215
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   54
            TabStop         =   0   'False
            Top             =   1590
            Width           =   2475
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00C0E0FF&
            DataField       =   "dlytype"
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
            ItemData        =   "RMIContractwithoutsample.frx":5AE9
            Left            =   10680
            List            =   "RMIContractwithoutsample.frx":5AEB
            Style           =   2  'Dropdown List
            TabIndex        =   129
            Top             =   600
            Visible         =   0   'False
            Width           =   1920
         End
         Begin VB.TextBox txtdeldesc 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   3180
            Locked          =   -1  'True
            TabIndex        =   49
            TabStop         =   0   'False
            Text            =   " "
            Top             =   510
            Width           =   6780
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Transport"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   196
            Top             =   2430
            Width           =   825
         End
         Begin VB.Line Line3 
            X1              =   5700
            X2              =   10080
            Y1              =   1620
            Y2              =   1620
         End
         Begin VB.Line Line2 
            X1              =   5700
            X2              =   5700
            Y1              =   1620
            Y2              =   2790
         End
         Begin VB.Label Label45 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5940
            TabIndex        =   194
            Top             =   1650
            Width           =   1350
         End
         Begin VB.Label Label46 
            AutoSize        =   -1  'True
            Caption         =   "No.of days"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   9060
            TabIndex        =   193
            Top             =   1620
            Width           =   915
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "1."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5760
            TabIndex        =   192
            Top             =   1920
            Width           =   165
         End
         Begin VB.Label Label49 
            AutoSize        =   -1  'True
            Caption         =   "2."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5760
            TabIndex        =   191
            Top             =   2310
            Width           =   165
         End
         Begin VB.Label lblcrdays 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   182
            Top             =   240
            Width           =   1020
         End
         Begin VB.Label lblinterest 
            AutoSize        =   -1  'True
            Caption         =   "Interest %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3330
            TabIndex        =   181
            Top             =   240
            Width           =   915
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Billing Address"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   133
            Top             =   1635
            Width           =   1260
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   132
            Top             =   2025
            Width           =   1305
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   90
            TabIndex        =   120
            Top             =   600
            Width           =   1200
         End
         Begin VB.Label Label21 
            Caption         =   "Authorized Signatory"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   315
            Left            =   90
            TabIndex        =   119
            Top             =   930
            Width           =   2040
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   90
            TabIndex        =   118
            Top             =   1245
            Width           =   765
         End
      End
      Begin VB.Frame Frame1 
         Height          =   4350
         Left            =   90
         TabIndex        =   88
         Top             =   330
         Width           =   10155
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "CommPer"
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
            Height          =   315
            Index           =   44
            Left            =   7410
            MaxLength       =   7
            TabIndex        =   18
            Top             =   840
            Width           =   885
         End
         Begin VB.ComboBox Combo9 
            BackColor       =   &H00FFFFFF&
            DataField       =   "RATEUNIT"
            Height          =   315
            ItemData        =   "RMIContractwithoutsample.frx":5AED
            Left            =   8370
            List            =   "RMIContractwithoutsample.frx":5AF7
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   34
            Top             =   2910
            Width           =   1575
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Season"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   43
            Left            =   4560
            MaxLength       =   25
            TabIndex        =   26
            Top             =   1875
            Width           =   1305
         End
         Begin VB.TextBox Text14 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   300
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   184
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1875
            Width           =   4065
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "purtype"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   42
            Left            =   4560
            MaxLength       =   2
            TabIndex        =   36
            Top             =   3255
            Width           =   1305
         End
         Begin VB.TextBox Text13 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   37
            TabStop         =   0   'False
            Text            =   " "
            Top             =   3255
            Width           =   4065
         End
         Begin VB.CheckBox ChkCentralized 
            Alignment       =   1  'Right Justify
            Caption         =   "Centralized Order"
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
            Left            =   6480
            TabIndex        =   180
            Top             =   150
            Value           =   1  'Checked
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SUPPLIERLOTNOTO"
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
            Height          =   315
            Index           =   41
            Left            =   8850
            MaxLength       =   7
            TabIndex        =   179
            Top             =   3960
            Width           =   1080
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SUPPLIERLOTNOFROM"
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
            Height          =   315
            Index           =   40
            Left            =   7410
            MaxLength       =   7
            TabIndex        =   43
            Top             =   3960
            Width           =   1080
         End
         Begin VB.Frame Frame12 
            Height          =   435
            Left            =   1380
            TabIndex        =   176
            Top             =   3840
            Width           =   3180
            Begin VB.OptionButton Option4 
               Caption         =   "Individual Item"
               Height          =   195
               Left            =   90
               TabIndex        =   41
               Top             =   150
               Value           =   -1  'True
               Width           =   1515
            End
            Begin VB.OptionButton Option5 
               Caption         =   "Common for All"
               Height          =   195
               Left            =   1620
               TabIndex        =   42
               Top             =   150
               Width           =   1395
            End
         End
         Begin VB.ComboBox Combo7 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "RMIContractwithoutsample.frx":5B0B
            Left            =   1380
            List            =   "RMIContractwithoutsample.frx":5B15
            Style           =   2  'Dropdown List
            TabIndex        =   38
            Top             =   3540
            Width           =   1575
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5895
            Locked          =   -1  'True
            TabIndex        =   23
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1530
            Width           =   4050
         End
         Begin VB.TextBox Text11 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   1380
            Locked          =   -1  'True
            TabIndex        =   22
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1515
            Width           =   3435
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "MILLREFNO"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   27
            Left            =   4560
            MaxLength       =   20
            TabIndex        =   33
            Top             =   2910
            Width           =   2190
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Season"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   25
            Left            =   4560
            MaxLength       =   50
            TabIndex        =   25
            Top             =   1875
            Width           =   5400
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Staple"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   23
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   32
            Top             =   2865
            Width           =   1545
         End
         Begin VB.TextBox Text10 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   40
            Text            =   " "
            Top             =   3600
            Width           =   4050
         End
         Begin VB.ComboBox Combo4 
            BackColor       =   &H00FFFFFF&
            DataSource      =   "weighment"
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
            ItemData        =   "RMIContractwithoutsample.frx":5B30
            Left            =   4560
            List            =   "RMIContractwithoutsample.frx":5B32
            TabIndex        =   80
            Top             =   4515
            Visible         =   0   'False
            Width           =   1935
         End
         Begin VB.ComboBox Combo5 
            BackColor       =   &H00FFFFFF&
            DataField       =   "RATEUNIT"
            Height          =   315
            ItemData        =   "RMIContractwithoutsample.frx":5B34
            Left            =   1380
            List            =   "RMIContractwithoutsample.frx":5B36
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   29
            Top             =   2550
            Width           =   1575
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   300
            Left            =   5880
            Locked          =   -1  'True
            TabIndex        =   31
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2580
            Width           =   4065
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "cntcode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   5
            Left            =   4560
            MaxLength       =   10
            TabIndex        =   39
            Top             =   3600
            Width           =   1320
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "paymode"
            ForeColor       =   &H80000012&
            Height          =   315
            Index           =   8
            Left            =   4560
            MaxLength       =   2
            TabIndex        =   30
            Top             =   2565
            Width           =   1305
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "PAYTERMS"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   12
            Left            =   4575
            MaxLength       =   60
            TabIndex        =   28
            Top             =   2220
            Width           =   5400
         End
         Begin VB.ComboBox Combo3 
            BackColor       =   &H00FFFFFF&
            DataField       =   "carcode"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "RMIContractwithoutsample.frx":5B38
            Left            =   1380
            List            =   "RMIContractwithoutsample.frx":5B48
            Style           =   2  'Dropdown List
            TabIndex        =   27
            Top             =   2220
            Width           =   1575
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CROPYEAR"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   13
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   24
            Top             =   1875
            Width           =   1560
         End
         Begin VB.Frame Frame4 
            Caption         =   "Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1410
            Left            =   8505
            TabIndex        =   81
            Top             =   120
            Width           =   1455
            Begin VB.OptionButton Option3 
               Caption         =   "&Inter-State"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   105
               TabIndex        =   75
               TabStop         =   0   'False
               Top             =   600
               Width           =   1275
            End
            Begin VB.OptionButton Option2 
               Caption         =   "&Local"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   120
               TabIndex        =   74
               TabStop         =   0   'False
               Top             =   315
               Value           =   -1  'True
               Width           =   1155
            End
            Begin VB.OptionButton Option1 
               Caption         =   "I&mport"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   315
               Left            =   120
               TabIndex        =   76
               TabStop         =   0   'False
               Top             =   975
               Width           =   1035
            End
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   21
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1185
            Width           =   6030
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   19
            TabStop         =   0   'False
            Text            =   " "
            Top             =   855
            Width           =   4080
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2280
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   510
            Width           =   6030
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "brkcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   2
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   17
            Top             =   855
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "areacode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   3
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   4
            TabIndex        =   20
            Top             =   1185
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   1
            Left            =   1380
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   15
            Top             =   510
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "contno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   1380
            MaxLength       =   10
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   150
            Width           =   1425
         End
         Begin MSMask.MaskEdBox MaskEdBox3 
            DataField       =   "contdt"
            Height          =   300
            Left            =   4590
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            BackColor       =   14737632
            ForeColor       =   0
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   4590
            TabIndex        =   79
            TabStop         =   0   'False
            Top             =   135
            Width           =   1395
            _ExtentX        =   2461
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   134676481
            CurrentDate     =   37257
            MinDate         =   36892
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "rateunit"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   6.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   270
            Index           =   24
            Left            =   1425
            Locked          =   -1  'True
            MaxLength       =   40
            TabIndex        =   77
            TabStop         =   0   'False
            Top             =   2580
            Width           =   1485
         End
         Begin MSMask.MaskEdBox MaskEdBox2 
            DataField       =   "DUEDATE"
            Height          =   315
            Left            =   1380
            TabIndex        =   35
            Top             =   3210
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "Comm.(%)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   6420
            TabIndex        =   186
            Top             =   870
            Width           =   960
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Final Weighment"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   3
            Left            =   6840
            TabIndex        =   185
            Top             =   2970
            Width           =   1410
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   3060
            TabIndex        =   183
            Top             =   3315
            Width           =   1260
         End
         Begin VB.Label lblSLNTo 
            Caption         =   "To"
            Height          =   195
            Left            =   8550
            TabIndex        =   178
            Top             =   4020
            Width           =   405
         End
         Begin VB.Label lblSLNFrom 
            Caption         =   "Supplier Lot No.   From "
            Height          =   195
            Left            =   5490
            TabIndex        =   177
            Top             =   4020
            Width           =   1875
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Delivery Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   165
            Index           =   11
            Left            =   120
            TabIndex        =   168
            Top             =   3255
            Width           =   1185
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Tax Choice"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   10
            Left            =   120
            TabIndex        =   167
            Top             =   3960
            Width           =   1230
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Type"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   9
            Left            =   120
            TabIndex        =   155
            Top             =   3585
            Width           =   1200
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Mill Ref No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   8
            Left            =   3060
            TabIndex        =   146
            Top             =   2985
            Width           =   1125
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Season"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   7
            Left            =   3060
            TabIndex        =   145
            Top             =   1965
            Width           =   630
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Staple Length"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   144
            Top             =   2910
            Width           =   1170
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Rate / Unit"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   128
            Top             =   2610
            Width           =   915
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3060
            TabIndex        =   127
            Top             =   3630
            Width           =   1125
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   3060
            TabIndex        =   125
            Top             =   2295
            Width           =   1350
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Payment Mode"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3060
            TabIndex        =   124
            Top             =   2640
            Width           =   1260
         End
         Begin VB.Label Label19 
            Appearance      =   0  'Flat
            Caption         =   "State"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   315
            Left            =   5010
            TabIndex        =   103
            Top             =   1560
            Width           =   1215
         End
         Begin VB.Label Label18 
            Appearance      =   0  'Flat
            Caption         =   "Station"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   315
            Left            =   120
            TabIndex        =   102
            Top             =   1560
            Width           =   855
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Crop Year"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   101
            Top             =   1890
            Width           =   870
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Mode of Transport"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   390
            Index           =   1
            Left            =   120
            TabIndex        =   100
            Top             =   2145
            Width           =   1500
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Order Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3000
            TabIndex        =   93
            Top             =   195
            Width           =   960
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area Name"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   92
            Top             =   1245
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Order No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   91
            Top             =   210
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   90
            Top             =   870
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   89
            Top             =   525
            Width           =   765
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Weighment"
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
            Left            =   3390
            TabIndex        =   126
            Top             =   4485
            Visible         =   0   'False
            Width           =   1020
         End
      End
   End
   Begin VB.Frame Frame7 
      Height          =   2430
      Left            =   1920
      TabIndex        =   94
      Top             =   2160
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIContractwithoutsample.frx":5B6F
         Height          =   615
         Left            =   4020
         Picture         =   "RMIContractwithoutsample.frx":5F51
         Style           =   1  'Graphical
         TabIndex        =   97
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "RMIContractwithoutsample.frx":6324
         Height          =   615
         Left            =   2580
         Picture         =   "RMIContractwithoutsample.frx":670A
         Style           =   1  'Graphical
         TabIndex        =   96
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtcontno 
         BackColor       =   &H80000009&
         Height          =   300
         Left            =   3510
         MaxLength       =   6
         TabIndex        =   95
         Top             =   900
         Width           =   1785
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
         Left            =   -15
         TabIndex        =   99
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Contract No."
         Height          =   195
         Left            =   2070
         TabIndex        =   98
         Top             =   930
         Width           =   900
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Removed Column"
      Height          =   1530
      Left            =   2400
      TabIndex        =   147
      Top             =   2400
      Visible         =   0   'False
      Width           =   6570
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   10
         Left            =   1260
         MaxLength       =   10
         TabIndex        =   150
         Top             =   345
         Width           =   1890
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   11
         Left            =   1260
         MaxLength       =   10
         TabIndex        =   149
         Top             =   705
         Width           =   1890
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   14
         Left            =   4740
         MaxLength       =   10
         TabIndex        =   148
         Top             =   705
         Width           =   1650
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   3
         Left            =   60
         TabIndex        =   153
         Top             =   345
         Width           =   1110
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "PR.No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   4
         Left            =   60
         TabIndex        =   152
         Top             =   705
         Width           =   570
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Press Mark No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   5
         Left            =   3180
         TabIndex        =   151
         Top             =   705
         Width           =   1290
      End
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Unit"
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
      Left            =   10230
      TabIndex        =   143
      Top             =   1680
      Visible         =   0   'False
      Width           =   345
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Area Name"
      Height          =   195
      Index           =   2
      Left            =   0
      TabIndex        =   104
      Top             =   0
      Width           =   795
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Order"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   330
      Left            =   390
      TabIndex        =   82
      Top             =   600
      Width           =   2100
   End
End
Attribute VB_Name = "FrmContractoutsam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim WithEvents adoPrimaryRS1 As Recordset
Attribute adoPrimaryRS1.VB_VarHelpID = -1
Dim rstParameter As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim iFlag As Integer
Dim RS2 As Recordset
Dim RS11 As Recordset
Dim prty As Recordset
Dim rstQry As Recordset
Dim rptv As Report.ReportView
Dim sCR As String
Dim co As Integer, pg As Integer, a As Integer
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim Opt As String
Dim opt1 As String ''For modification only
Dim supbrk As String
Dim DB As Connection
Dim nrs As Recordset
Dim g, U As Integer
Dim rss As Recordset  ''For multiple Variety
Dim RsMod As Recordset ''For adoprimaryrs Mod
Dim Varcode As String
Dim wosample As String
Dim sampNo As String ''For Grid  Validation (To avoid Sample no repeataion from rm_sample)
Dim Focus As String
Dim focus1 As String
Dim rsrate As Recordset
Dim MFLG As String
Dim rsa As New Recordset

Public Sub OpenConnection1()
On Error GoTo OpenConnection1_Error

Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open connectstring

Exit Sub
OpenConnection1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure OpenConnection1 of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error
iFlag = 0
Select Case Index

Case 0
If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rsz.RecordCount > 0 Then
            If IsDate(rsz(0)) = True Then
                If rsz(0) > pdate Then
                    MsgBox "Please enter the valid Processing Date", vbInformation, head
                    Exit Sub
                End If
            End If
        End If

    If Record_Exists("fa_slmas", "Please Define the Supplier!!") = False Then Exit Sub
    If Record_Exists("rm_area", "Please Define the Area in SetUp!!") = False Then Exit Sub
    If Record_Exists("po_car", "Please Define the Carrier in SetUp!!") = False Then Exit Sub
    If Record_Exists("rm_var", "Please Define the Variety in SetUp!!") = False Then Exit Sub
    If Record_Exists("RM_MIXGRP", "Please Define the Mixing Count in SetUp!!") = False Then Exit Sub
    If Record_Exists("rm_rateunit", "Please Enter the RateUnit details ") = False Then Exit Sub
       
        Call flexgalign
        
        sampNo = ""
        Combo5.clear
        Combo4.clear
        
        Set RSV = New Recordset
        RSV.Open "select DISTINCT isnull(Arrivaltype,'P')ARRIVALTYPE FROM RM_CONT WHERE CONTNO=(SELECT MAX(CONVERT(varchar(10),CONTNO)) FROM  RM_CONT WHERE CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND  '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')  AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND  '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        ARRIVALTYPE = "P"
        If RSV.RecordCount > 0 Then
            ARRIVALTYPE = RSV("ARRIVALTYPE")
        End If
        
        Combo7.clear
        Combo7.AddItem "P-PackWise"
        Combo7.AddItem "K-KgsWise"
        
        If ARRIVALTYPE = "P" Then
            Combo7.ListIndex = 0
        Else
            Combo7.ListIndex = 1
        End If
        
        Set rsrate = New Recordset
        rsrate.Open "select * from rm_rateunit", DB, adOpenStatic
        
        While Not rsrate.EOF
            Combo5.AddItem rsrate("unitname")
            rsrate.MoveNext
        Wend
        rsrate.MoveFirst
        Combo5.Text = rsrate("Unitname")
        
        Set rsweigh = New Recordset
        rsweigh.Open "select * from rm_WEIGHNMENT", DB, adOpenStatic
        
        While Not rsweigh.EOF
            Combo4.AddItem rsweigh("WNAME")
            rsweigh.MoveNext
        Wend
        
        If rsweigh.RecordCount > 0 Then
            rsweigh.MoveFirst
            Combo4.Text = rsweigh("wname")
        End If
        
        opt1 = "add"
        Set rss = New Recordset
        Set RS11 = New Recordset
        rss.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.OrdKgs,a.candyrate,a.pty_contno""Supplier SampleNo"",a.BBFLAG""Pack Type"",CashDisPer,TradeDisPer,BEDper,SEDPER""EDcessPer"",HSCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort  from rm_cont a,rm_var b   where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.BBFLAG""Pack Type"",a.OrdKgs,a.candyrate,a.pty_contno""Supplier SampleNo"",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %""  from rm_cont a,rm_var b   where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        headertaxdisplay (0)
        
        Set DataGrid1.DataSource = RS11
        Call vargridalign
        DataGrid1.AllowAddNew = True
        DataGrid1.Enabled = True
        DataGrid1.EditActive = True
        DataGrid1.AllowUpdate = True
        RS11.AddNew
                            
        Opt = "add"
        
        desc.Caption = "Addition"
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text5.Text = ""
        Text6.Text = ""
        Text7.Text = ""
        Text10.Text = ""
        Call ClearText
        MaskEdBox1.Text = "__/__/____"
        txtfields(8).Text = ""
        txtfields(26).Text = ""
        txtfields(22).Text = ""
        Text4.Text = ""
        MaskEdBox3.Enabled = True
        MaskEdBox3.Text = pdate
        DTPicker1.MinDate = yfdate
        txtfields(0).Locked = True
        Set rstParameter = New Recordset
        rstParameter.Open "Select CentralizedOrder from RM_PARAM", DB, adOpenStatic
        
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,carcode,varcode,cntcode,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,TAX_CHOICE,CreditDays,InterestPer ,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where 1 = 2 and divcode='" & Divcode & "' ANd  contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
        
        adoprimaryrs.AddNew
        
        Call ENABLCONTLS
        Call bindcontls
        Combo8.Locked = False
        Buttonframe.Enabled = True
        Frame10.Enabled = True
        Frame6.Enabled = True
        Frame1.Enabled = True
        Frame2.Enabled = True
        Frame9.Enabled = True
        Frame6.Enabled = True
        Frame10.Enabled = True
        SSTab1.Tab = 0
        
  If Opt = "add" Then
        Dim strType As String
        LookUp.clear = True
        Set rs1 = New Recordset
        Frame1.Visible = True
        Frame2.Visible = True
        txtfields(8).Text = ""
        g = 1
        wosample = ""
        If val(txtfields(16).Text) > 0 Then
            txtfields(0).Text = txtfields(16).Text
        End If
        DB.BeginTrans

        Call adddelmod(BUTTON)
        BUTTON(4).Enabled = False

        txtfields(0).Locked = True

        MaskEdBox3.Text = pdate

        Frame1.Enabled = True
        Frame2.Enabled = True
        Frame9.Enabled = True
        Frame6.Enabled = True
        Frame10.Enabled = True
        StatusBar1.Panels(2).Text = "Enter Order Date"
        Text1.Locked = True
        Text2.Locked = True
        Text3.Locked = True
        Frame4.Enabled = True
        Combo1.ListIndex = 0
        
        txtfields(4).Locked = True
        Flexg1.Rows = 1
        txtfields(0).Locked = True
        txtfields(0).SetFocus
        txtfields(24).Text = Combo5.Text
        
        txtfields(13).Text = Year(pdate)
        txtfields(20).Text = ""
        txtdeldesc.Text = ""
        
        U = MsgBox("Do you want to enter Purchase Order With Sample?", vbYesNo, head)
            
      
            If U = vbYes Then
            wosample = "Y"
            Set rsa = New Recordset
            rsa.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT where contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "')", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
           
               StatusBar1.Panels(2).Text = "Select Sample No From the List"
               LookUp.clear = True
               LookUp.query = "select SNO""Mill Sample No."" ,Date""Mill Sample Date"",slname""Supplier Name"",varname""Variety"",a.supcode from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' "
               LookUp.Caption = "Sample Listing"
               LookUp.DefCol = "Supplier"
               LookUp.ALIGN = "1400,1500,3800,2050,0"
               LookUp.Show vbModal
               
               
               If LookUp.Cancel = False Then
                    Dim strQry As String
                    Set rstQry = New Recordset
                    
                    
                    strQry = "SELECT SNo, DATE,SUPCODE,VARCODE,Prty_sampno,brokercode,Area_code, crop_year FROM RM_sample Where sno = " & val(LookUp.Fields(0)) & " and Date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' AND Divcode = '" & Divcode & "' and supcode='" & LookUp.Fields(4) & "'"
                    rstQry.Open strQry, DB, adOpenStatic
                    
                    txtfields(1).Text = rstQry!Supcode
                    txtfields(2).Text = IIf(IsNull(rstQry!Brokercode), "", rstQry!Brokercode)
                    txtfields(3).Text = IIf(IsNull(rstQry!Area_code), "", rstQry!Area_code)
                    txtfields(13).Text = IIf(IsNull(rstQry!Crop_year), "", rstQry!Crop_year)
                    
                    Text11.Text = getMasterName("station", "rm_area", "Areacode", rstQry!Area_code)
                    Text12.Text = getMasterName("State", "rm_area", "Areacode", rstQry!Area_code)
                    strType = getMasterName("L_OR_U", "rm_area", "Areacode", rstQry!Area_code)
                    If strType = "L" Then Option2 = True Else If strType = "U" Then Option1 = True Else If strType = "I" Then Option3 = True
                    
                    
                    DataGrid1.Columns(0).Text = rstQry!SNO
                    DataGrid1.Columns(1).Text = rstQry!Varcode
                    DataGrid1.Columns(2).Text = getMasterName("varname", "rm_var", "varcode", rstQry!Varcode)
                    DataGrid1.Columns(7).Text = IIf(IsNull(rstQry!prty_sampno), "", rstQry!prty_sampno)
                    
               End If
               LookUp.clear = True
            End If

        Else
            wosample = "N"
            txtfields(2).SetFocus
        End If
        
        Option4 = True
        If strType = "" Then Option3.value = True
        If strType = "" Then txtfields(1).SetFocus Else DataGrid1.Col = 3: DataGrid1.SetFocus
   End If
   
Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic

        Set rs4 = New Recordset
        rs4.Open "select distinct contno,contdt from rm_cont a where divcode='" & Divcode & "' and ordqty<>isnull(Cancelbales,0) and A.CONTNO IN (SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' AND ordqty<>isnull(Cancelbales,0) ) UNION select distinct contno,contdt  from rm_cont a where  divcode='" & Divcode & "' and ordkgs<>isnull(Cancelkgs,0) and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0)  AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0) ) ", DB, adOpenStatic
                
        If rs4.RecordCount = 0 Then
              MsgBox "No Record Found", vbInformation, head
              Opt = ""
              Exit Sub
        End If
        
        If Not rs4(0) = 0 Then
            Opt = "mod"
            opt1 = "mod"
            desc.Caption = "Modification"
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM," & _
                                " SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,Terms1,Terms1Days,Terms2,Terms2Days,TransPort  from rm_cont where divcode='" & Divcode & "' AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
            StatusBar1.Panels(2).Text = "Select a Order number from the list"
            Buttonframe.Enabled = False
            LookUp.clear = True
            LookUp.query = " select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier""   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0)  AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0) <> ISNULL(OrdQTY,0) AND ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0)  )" & _
                           " UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) AND A.contdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and A.CONTNO  IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>ISNULL(OrdKGS,0) AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0)  ) "
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Opt = ""
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,MILLREFNO,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,tax_code,taxper,othtaxper,cessper,hscessper,bedper,sedper,cashdisper,tradedisper,insper,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,commPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
    
                Set RsMod = New Recordset
                RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                SSTab1.Visible = True

                Frame1.Enabled = True
                Frame2.Enabled = True
                Frame9.Enabled = True
                Frame6.Enabled = True
                Frame10.Enabled = True
                SSTab1.Tab = 0
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Opt = "mod"
                Call ENABLCONTLS
                Call bindcontls
                SSTab1.Enabled = True
                txtfields(0).Locked = True
                txtfields(2).Locked = True
                txtfields(13).Locked = True
                
                wosample = "N"
                Text2.Locked = True

                Text11.Locked = True
                Text12.Locked = True
                Text3.Locked = True
                Frame9.Enabled = True
                DataGrid1.AllowUpdate = True
                DataGrid1.AllowArrows = True
                DataGrid1.Enabled = True
                DB.BeginTrans
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True
                'CANCEL
                Opt = " "
                Buttonframe.Enabled = True
                Call Query_mode

                Frame1.Enabled = False
                Frame2.Enabled = False
                Frame9.Enabled = False
                Frame6.Enabled = False
                Frame10.Enabled = False
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
                Frame9.Enabled = True
                DataGrid1.AllowUpdate = True
                DataGrid1.AllowArrows = True
                DataGrid1.Enabled = True
            End If
      End If
      If Opt = "mod" Then
       LookUp.clear = True

       Call adddelmod(BUTTON)
       txtfields(27).Locked = False
       BUTTON(9).Enabled = True
       BUTTON(10).Enabled = True

       txtfields(0).Locked = True
       Set rsweigh = New Recordset
       rsweigh.Open "select * from rm_WEIGHNMENT", DB, adOpenStatic
       While Not rsweigh.EOF
           Combo4.AddItem rsweigh("WNAME")
           rsweigh.MoveNext
       Wend
       Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
      Set Rs = New Recordset
    Rs.Open "select isnull(sum(isnull(rcdkgs,0)),0)rcdkgs from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and ISNULL(aRRIVALTYPE,'P')='K' union select sum(isnull(recqty,0))rcdkgs from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' and ISNULL(aRRIVALTYPE,'P')='P'", DB, adOpenStatic, adLockOptimistic
    If Rs(0) > 0 Then
        txtfields(1).Locked = True
        txtfields(2).Locked = True
        txtfields(13).Locked = True
    Else
        txtfields(1).Locked = False
        txtfields(2).Locked = False
        txtfields(13).Locked = False
    End If
'  End If
End If
Case 2
If ToValidFinYear(Divcode) = False Then Exit Sub
        Set rsz = New Recordset
        rsz.Open "select max(contdt) from rm_cont where divcode='" & Divcode & "'", DB, adOpenStatic
        

        Set rs4 = New Recordset
        rs4.Open "select distinct contno,contdt from rm_cont a where divcode ='" & Divcode & "' and contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND A.CONTNO NOT IN (SELECT DISTINCT CONTNO FROM RM_Arrival C WHERE  c.divcode='" & Divcode & "' and  c.Contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "')", DB, adOpenStatic
        
        If rs4.RecordCount = 0 Then
              MsgBox "No Record Found", vbInformation, head
              Opt = ""
              Exit Sub
        End If
        
        If Not rs4(0) = 0 Then
            Opt = "del"
            opt1 = "del"
            desc.Caption = "Deletion"
            Set adoprimaryrs = New Recordset
            
            'adoPrimaryRS.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer from rm_cont where divcode='" & Divcode & "' and  isnull(recqty,0)=0 and ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days  " & _
                              " from rm_cont where divcode='" & Divcode & "' and  ISNULL(RCDKGS,0)=0 AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
                              
            adoprimaryrs.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and  isnull(recqty,0)=0 and ISNULL(aRRIVALTYPE,'P')='P' and ordqty<>isnull(Cancelbales,0) UNION select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort  " & _
                              " from rm_cont where divcode='" & Divcode & "' and  ISNULL(RCDKGS,0)=0 AND ISNULL(aRRIVALTYPE,'P')='K' and  ordkgs<>isnull(Cancelkgs,0) order by contdt", DB, adOpenStatic, adLockOptimistic
                              
                              
                              
            If adoprimaryrs.RecordCount = 0 Then
                MsgBox "Arrival started, Deletion not Allowed", vbInformation, head
                Opt = ""
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Call Query_mode
                'SSTab1.Enabled = False
                Frame1.Enabled = False
                Frame2.Enabled = False
                Frame9.Enabled = False
                Frame6.Enabled = False
                Frame10.Enabled = False
                Exit Sub
            Else
            StatusBar1.Panels(2).Text = "Select a Order number from the list"
            Buttonframe.Enabled = False
            LookUp.clear = True

            LookUp.query = "select distinct cast(contno as varchar(10))""Order No"" ,contdt""Order Date"" ,slname""Supplier"" from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ordqty<>isnull(Cancelbales,0) and ISNULL(RECQTY,0)=0 and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RECQTY,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='P' AND ordqty<>isnull(Cancelbales,0) )AND ISNULL(aRRIVALTYPE,'P')='P' UNION select distinct cast(contno as varchar(10)) as ContractNumber ,contdt as Date ,slname as Supplier   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(RCdkgs,0)=0  and ordkgs<>isnull(Cancelkgs,0) and A.CONTNO NOT IN(SELECT DISTINCT CONTNO FROM RM_CONT C WHERE  c.divcode='" & Divcode & "' and A.CONTNO=c.CONTNO AND A.CONTDT=C.CONTDT AND ISNULL(RCDKGS,0)<>0 AND ISNULL(aRRIVALTYPE,'P')='K' and ordkgs<>isnull(Cancelkgs,0) ) AND ISNULL(aRRIVALTYPE,'P')='K'"
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Opt = ""
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd," & _
                                  " deladd,contperson,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
     
                Set RsMod = New Recordset
                RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                SSTab1.Visible = True

                Frame1.Enabled = True
                Frame2.Enabled = True
                Frame9.Enabled = True
                Frame6.Enabled = True
                Frame10.Enabled = True
                SSTab1.Tab = 0
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Opt = "del"
                Call ENABLCONTLS
                Call bindcontls
                SSTab1.Enabled = True
                txtfields(0).Locked = True
                txtfields(0).Locked = True
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True
                'CANCEL
                Opt = " "
                Buttonframe.Enabled = True
                Call Query_mode
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
            End If
      End If
      If Opt = "del" Then
       LookUp.clear = True
       DB.BeginTrans
       Call adddelmod(BUTTON)
       txtfields(27).Locked = False
       BUTTON(9).Enabled = True
       BUTTON(10).Enabled = True
       'BUTTON(9).ToolTipText = "deletion"
       txtfields(0).Locked = True
       BUTTON(9).SetFocus
  End If
End If
      Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
Case 3
        Dim f As New repform1
        Screen.MousePointer = 11
        Repindex = 228
        f.Show
        Screen.MousePointer = 0
        Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
        
Case 4
        desc.Caption = "Find"
        Opt = "fnd"
            LookUp.clear = True
            LookUp.query = "select distinct cast(contno as NUMERIC) as OrderNo ,contdt as OrderDate ,slname as Supplier   from rm_cont a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' "
            LookUp.Caption = "Purchase Order Listing"
            LookUp.DefCol = "OrderNo"
            LookUp.ALIGN = "1200,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Opt = ""
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select distinct divcode,contno,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment," & _
                                 " im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,MILLREFNO,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "' ", DB, adOpenStatic, adLockOptimistic
     
                Set RsMod = New Recordset
                RsMod.Open "select distinct divcode,contno,contdt,supcd,brkcd,ratekg,varcode,areacode,carcode,cntcode,bbflag,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,candyrate ,ordqty,ordkgs,PTY_CONTNO,sno,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & LookUp.Fields(0) & "' and contdt='" & Format(LookUp.Fields(1), "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
                SSTab1.Visible = True
                Combo8.Locked = False
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                Call ENABLCONTLS
                Call bindcontls
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = False
                txtfields(0).Locked = True
                txtfields(0).Locked = True
                BUTTON(10).Enabled = True
            Else
                desc.Caption = "Query"
                Screen.MousePointer = 11
                SSTab1.Visible = True

                Opt = " "
                Buttonframe.Enabled = True
                Call Query_mode
                Frame1.Visible = True
                Frame2.Visible = True
                Screen.MousePointer = 0
            End If
            Frame9.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.AllowArrows = True
      DataGrid1.Enabled = True
        StatusBar1.Panels(2).Text = "Enter Any Order Number to be Found out"
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoprimaryrs.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        Call navi(BUTTON)
        Call FIR(BUTTON)
        'Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        Beep
        Exit Sub
GoFirstError:

    If Err = 3021 Then
        MsgBox " No Record Found", vbInformation, head
    End If

Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoprimaryrs.EOF Then
        
        If adoprimaryrs.EOF = False Then adoprimaryrs.MoveNext
        Call bindcontls
        
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If
    If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        adoprimaryrs.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
        Beep
    End If
        ' show the current record
        Call navi(BUTTON)

        BUTTON(4).Enabled = True
    If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(4).Enabled = True
        Beep
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(4).Enabled = True
    End If
        Exit Sub
GoNextError:
        MsgBox Err.Description, vbInformation, head
Case 7
        'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
    If Not adoprimaryrs.BOF Then
        adoprimaryrs.MovePrevious
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If
    If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True

        adoprimaryrs.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)

        BUTTON(4).Enabled = True
    If adoprimaryrs.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(4).Enabled = True
        Beep
    Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
    End If
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoprimaryrs.MoveLast
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
        Screen.MousePointer = 11
        txtfields(24).Text = "Candy"
      ''  On Error Resume Next
      On Error GoTo Gk

        opt1 = Opt

    Set rscont = New Recordset
    If Opt = "add" Then
        
        rscont.Open "Select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,isnull(carcode,'') as carcode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,isnull(carcode,'') as carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CashDisPer,TradeDisPer,BedPer,SEDPER""EdcessPer"",HsCessPer,CessPer,Tax_Code,TaxPer,OthTaxPer,InsPer,tax_choice,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where 1 = 2 and divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
        
    End If
            
    If Opt = "add" Or Opt = "mod" Then
    
        Set rstParameter = New Recordset
        rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstParameter.EOF = False Then
            If rstParameter!SuppLotNoReqArrival = "Y" Then
                 If val(txtfields(40).Text) = 0 Then
                     MsgBox "Please enter Supplier From Lot No. ", vbInformation, head
                     txtfields(40).SetFocus
                     Exit Sub
                End If
            End If
        End If
        Set rstParameter = New Recordset
        rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
        If rstParameter.EOF = False Then
            If rstParameter!SuppLotNoReqArrival = "Y" Then
                 If val(txtfields(41).Text) = 0 Then
                     MsgBox "Please enter the Supplier To Lot No. ", vbInformation, head
                     txtfields(41).SetFocus
                     Exit Sub
                End If
            End If
        End If
        
        If Trim(txtfields(1).Text) = "" Then
            MsgBox "Please enter Supplier ", vbInformation, head
            txtfields(1).SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 0
            Exit Sub
        End If

        If Trim(txtfields(8).Text) = "" Then
            MsgBox "Please enter the Payment Mode ", vbInformation, head
            txtfields(8).SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 0
            Exit Sub
        End If
        
        If Trim(txtfields(20).Text) = Empty Then
            MsgBox "Please enter the Delivery Type ", vbInformation, head
            txtfields(20).SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 1
            Exit Sub
        End If
        
        If Trim(txtfields(18).Text) = "" Then
            MsgBox "Please enter the Accepted Person ", vbInformation, head
            txtfields(18).SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 1
            Exit Sub
        End If
        
        If Trim(Combo3.Text) = Empty Then
            MsgBox "Please enter the Mode of Transport ", vbInformation, head
            Combo3.SetFocus
            Screen.MousePointer = 0
            SSTab1.Tab = 1
             Exit Sub
        End If
        
       If Trim(txtfields(8).Text) = "" Then
            If Not Frame3.Visible = True Then
                MsgBox "Please enter the Paymode ", vbInformation, head
                txtfields(8).SetFocus
                SSTab1.Tab = 0
            End If
       End If
       
       
       Opt = ""
       If RS11.RecordCount > 0 Then
            RS11.MoveFirst
            While Not RS11.EOF
                    If Trim(DataGrid1.Columns(2).Text) = "" Then

                    End If
                    RS11.MoveNext
            Wend
       End If
     
       If RS11.RecordCount > 0 Then
           RS11.MoveFirst
           
           While Not RS11.EOF
                If Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the Vaierty ", vbInformatio, head
                    SSTab1 = 0
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 1
                    DataGrid1.SetFocus
                    Exit Sub
                End If

                If Trim(DataGrid1.Columns(3).Text) = "" And Left(Combo7.Text, 1) = "P" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the Order Quantity ", vbInformatio, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 3
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                If Trim(DataGrid1.Columns(5).Text) = "" And Left(Combo7.Text, 1) = "K" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the order Kgs ", vbInformatio, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 5
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                If Trim(DataGrid1.Columns(6).Text) = "" And Trim(DataGrid1.Columns(1).Text) = "" Then
                    MsgBox "Please enter the Rate ", vbInformation, head
                    DataGrid1.Row = DataGrid1.Row
                    DataGrid1.Col = 6
                    DataGrid1.SetFocus
                    Exit Sub
                End If
                
           RS11.MoveNext
        Wend
    Else
          MsgBox "Please enter all the Details for Variety", vbInformation, head
          DataGrid1.Row = 0
          DataGrid1.Col = 0
          DataGrid1.SetFocus
          Exit Sub
    End If
End If
    Opt = opt1
If Opt = "add" Then
    rscont.AddNew
    Opt = ""
    RS11.MoveFirst
    Set Rs = New Recordset
    If ChkCentralized.value = 1 Then
        Rs.Open "SELECT max(convert(numeric,contno))+1 FROM RM_CONT WHERE CONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If IsNull(Rs(0)) Then
            txtfields(0).Text = 1
        Else
            txtfields(0).Text = Rs(0)
        End If
    Else
        Rs.Open "SELECT MAX(convert(numeric,contno))+1 FROM RM_CONT WHERE divcode='" & Divcode & "' and CONTDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND prefix IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
        If IsNull(Rs(0)) Then
            txtfields(0).Text = 1
        Else
            txtfields(0).Text = Rs(0)
        End If
    End If
    
    For GG = 1 To RS11.RecordCount
        If GG <> 1 Then
            rscont.AddNew
        End If
        
        rscont("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
        
        If Option1.value = True Then
             rscont("im_ind") = "I"
        ElseIf Option2.value = True Then
             rscont("im_ind") = "L"
        ElseIf Option3.value = True Then
             rscont("im_ind") = "U"
        End If
        
'        If optSupplier.value = True Then
'            rscont!Finalweighment = "S"
'        Else
'            rscont!Finalweighment = "M"
'        End If

        If Trim(Combo9.Text) = "MILL" Then
            rscont!Finalweighment = "M"
        Else
            rscont!Finalweighment = "S"
        End If
       
        
        If ChkCentralized.value = 1 Then
            rscont!Prefix = "C"
        End If
        
        rscont("dlytype") = Trim(txtfields(20).Text)
        rscont("divcode") = Divcode
        rscont("supcd") = txtfields(1).Text
        rscont("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
        rscont("brkcd") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
        
        rscont("CommPer") = val(txtfields(44).Text)
        rscont("weignment") = ""

        rscont("contno") = txtfields(0).Text
        
        rscont("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
        rscont("divcode") = Divcode
        rscont("paymode") = txtfields(8).Text
        rscont("arrivaltype") = Left(Combo7.Text, 1)
        rscont("payterms") = IIf(Trim(txtfields(12).Text) = "", Null, txtfields(12).Text)
        rscont("rateunit") = Trim(Combo5.Text)
        rscont("candyrate") = val(DataGrid1.Columns(6).Text)
        rscont("MILLREFNO") = txtfields(27)
        rscont("purtype") = Trim(txtfields(42).Text)
        Set rsg = New Recordset
        rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
                rscont("ratekg") = Round(val(rscont("candyrate") / rsg("value")), 3)
        End If
        rscont("CROPYEAR") = txtfields(13).Text
        rscont("acceptance") = txtfields(18).Text
        
        Set RSV = New Recordset
        RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text) & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yfdate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        
        If RSV.RecordCount > 0 Then
         rscont("plotno") = RSV("plotno")
         rscont("prno") = RSV("prno")
         rscont("pressmarkno") = RSV("pressmarkno")
        Else
         rscont("plotno") = ""
         rscont("prno") = ""
         rscont("pressmarkno") = ""
        End If
        
        rscont("REMARKS") = txtfields(19).Text
        rscont("billadd") = txtfields(21).Text
        rscont("deladd") = txtfields(22).Text
        rscont("contperson") = Text7.Text
        rscont("varcode") = DataGrid1.Columns(1).Text
        rscont("ordqty") = val(DataGrid1.Columns(3).Text)
        rscont("ordkgs") = val(DataGrid1.Columns(5).Text)
        rscont("PTY_CONTNO") = IIf(DataGrid1.Columns(7).Text = "", "0", DataGrid1.Columns(7).Text)
        rscont("sno") = IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text)
        rscont("STAPLE") = Trim(txtfields(23).Text)
        rscont("season") = txtfields(25).Text
        rscont("CreditDays") = val(txtfields(38).Text)
        rscont("InterestPer") = val(txtfields(39).Text)
        rscont("SUPPLIERLOTNOFROM") = val(txtfields(40).Text)
        rscont("SUPPLIERLOTNOTO") = val(txtfields(41).Text)
        rscont("CashDisPer") = val(DataGrid1.Columns(8).Text)
        rscont("TradeDisPer") = val(DataGrid1.Columns(9).Text)
        rscont("BedPer") = val(DataGrid1.Columns(10).Text)
        rscont("EdcessPer") = val(DataGrid1.Columns(11).Text)
        rscont("HsCessPer") = val(DataGrid1.Columns(12).Text)
        rscont("CessPer") = val(DataGrid1.Columns(13).Text)
        If Option4.value = True Then
            rscont("Tax_Code") = DataGrid1.Columns(14).Text
        ElseIf Option5.value = True Then
            rscont("Tax_Code") = txtfields(34).Text
        End If
        rscont("TaxPer") = val(DataGrid1.Columns(15).Text)
        rscont("OthTaxPer") = val(DataGrid1.Columns(16).Text)
        rscont("InsPer") = val(DataGrid1.Columns(17).Text)
        If IsDate(MaskEdBox2.Text) = True Then
            rscont("duedate") = Format(MaskEdBox2.Text, "YYYY-MM-DD")
        Else
            rscont("duedate") = Null
        End If
        
        rscont("Terms1") = txtfields(45).Text
        rscont("Terms1Days") = val(txtfields(46).Text)
        rscont("Terms2") = txtfields(47).Text
        rscont("Terms2Days") = val(txtfields(48).Text)
        rscont("Transport") = Trim(Text15.Text)
        
        
        If Option4.value = True Then
            rscont("tax_choice") = "SINGLE"
        Else
            rscont("tax_choice") = "COMMON"
        End If
        
        If Mid(DataGrid1.Columns(4).Text, 1, 1) = "B" Then
             rscont("BBFLAG") = "B"
        ElseIf Mid(DataGrid1.Columns(4).Text, 1, 1) = "R" Then
             rscont("BBFLAG") = "R"
        ElseIf Mid(DataGrid1.Columns(4).Text, 1, 1) = "H" Then
            rscont("BBFLAG") = "H"
        Else
             rscont("BBFLAG") = "B"
        End If
        RS11.MoveNext
     rscont.UpdateBatch adAffectAllChapters
     Next
        Set Rs = New Recordset
        Rs.Open "select contno,contdate,deldate,qty,varcode,deladd,instruction from rm_delsched", DB, adOpenStatic, adLockBatchOptimistic
        For i = 1 To Flexg1.Rows - 1
            If Flexg1.TextMatrix(i, 1) <> "" And Flexg1.TextMatrix(i, 2) <> "" And Flexg1.TextMatrix(i, 3) <> "" And Flexg1.TextMatrix(i, 4) <> "" Then
                Set rsn = New Recordset
                rsn.Open "SELECT * FROM FA_SLMAS WHERE SLNAME='" & Flexg1.TextMatrix(i, 3) & "'", DB, adOpenStatic
            
                If rsn.RecordCount > 0 Then
                    del = rsn("SLCODE")
                Else
                    del = txtfields(22).Text
                End If
                Rs.AddNew
                Rs("contno") = txtfields(0).Text
                Rs("contdate") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
                Rs("deldate") = Flexg1.TextMatrix(i, 1)
                Rs("qty") = Flexg1.TextMatrix(i, 2)
                Rs("varcode") = Flexg1.TextMatrix(i, 4)
                Rs("deladd") = del
                Rs("instruction") = Flexg1.TextMatrix(i, 5)
            End If
        Next
        Rs.UpdateBatch adAffectAllChapters
        DB.CommitTrans
    End If
    
        Dim N As Integer
        Dim iLOT As Integer
        Dim STRlOT As String
        
        strSQL = "delete from rm_cont_SLOTNO where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'"
        
        DB.Execute strSQL
        strSQL = "UPDATE RM_CONT SET Carcode ='" & Trim(Combo3.Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        DB.Execute "UPDATE RM_CONT SET Carcode ='" & Trim(Combo3.Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        
        
        
        If val(txtfields(40).Text) = val(txtfields(41).Text) Then
            DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & val(txtfields(40).Text) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
            DB.Execute "INSERT INTO RM_CONT_SLOTNO VALUES ('" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "'," & val(txtfields(40).Text) & ",'N')"
        Else
            iLOT = val(txtfields(40).Text)
            For N = val(txtfields(40).Text) To val(txtfields(41).Text) Step 1
                STRlOT = STRlOT & "," & iLOT
                
                DB.Execute "INSERT INTO RM_CONT_SLOTNO VALUES('" & Divcode & "','" & Trim(txtfields(0).Text) & "','" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "'," & val(iLOT) & ",'N')"
                iLOT = iLOT + 1
            Next
            DB.Execute "UPDATE RM_CONT SET NONRECIEVELOT ='" & Right(STRlOT, Len(STRlOT) - 1) & "' WHERE CONTDT='" & Format(MaskEdBox3.Text, "yyyy-mm-dd") & "' AND CONTNO='" & Trim(txtfields(0).Text) & "' AND dIVCODE ='" & Divcode & "'"
        End If
    
    
    Opt = opt1
    If Opt = "mod" Then
        Opt = ""
        RS11.MoveFirst
        For GG = 1 To RS11.RecordCount
            RsMod("CONTDT") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
    
            If Option3.value = True Then
               RsMod("im_ind") = "I"
            ElseIf Option2.value = True Then
               RsMod("im_ind") = "L"
            ElseIf Option1.value = True Then
               RsMod("im_ind") = "U"
            End If
        
            
            If Trim(Combo9.Text) = "MILL" Then
                RsMod!Finalweighment = "M"
            Else
                RsMod!Finalweighment = "S"
            End If
       
        
        
        RsMod("dlytype") = Trim(txtfields(20).Text)
      
           RsMod("divcode") = Divcode
           RsMod("supcd") = txtfields(1).Text
           RsMod("areacode") = IIf(Trim(txtfields(3).Text) = "", Null, txtfields(3).Text)
           RsMod("brkcd") = IIf(Trim(txtfields(2).Text) = "", Null, txtfields(2).Text)
           RsMod("CommPer") = val(txtfields(44).Text)
           RsMod("weignment") = ""
           RsMod("carcode") = Combo3.Text
           RsMod("contno") = txtfields(0).Text
           RsMod("cntcode") = IIf(Trim(txtfields(5).Text) = "", Null, txtfields(5).Text)
           RsMod("divcode") = Divcode
           RsMod("paymode") = txtfields(8).Text
           RsMod("arrivaltype") = Left(Combo7.Text, 1)
           RsMod("payterms") = IIf(Trim(txtfields(12).Text) = "", Null, txtfields(12).Text)
           RsMod("rateunit") = Trim(Combo5.Text)
           RsMod("purtype") = Trim(txtfields(42).Text)
           If Option4.value = True Then
                RsMod("tax_choice") = "SINGLE"
           Else
                RsMod("tax_choice") = "COMMON"
           End If
           
           Set rsg = New Recordset
           rsg.Open "select value from rm_rateunit where unitname='" & Combo5.Text & "'", DB, adOpenStatic
           
           If rsg.RecordCount > 0 Then
                   RsMod("ratekg") = Round(val(RsMod("candyrate") / rsg("value")), 3)
           End If
           
           RsMod("CROPYEAR") = txtfields(13).Text
           RsMod("acceptance") = txtfields(18).Text
           
           Set RSV = New Recordset
           RSV.Open "select isnull(plotno,'')plotno,isnull(prno,'')prno,isnull(pressmarkno,'')pressmarkno FROM rm_sample where sno=" & IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text) & " and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yfdate, "yyyy-mm-dd") & "'", DB, adOpenStatic
           
           If RSV.RecordCount > 0 Then
            RsMod("plotno") = RSV("plotno")
            RsMod("prno") = RSV("prno")
            RsMod("pressmarkno") = RSV("pressmarkno")
           Else
            RsMod("plotno") = ""
            RsMod("prno") = ""
            RsMod("pressmarkno") = ""
           End If
           
           RsMod("REMARKS") = txtfields(19).Text
           RsMod("billadd") = txtfields(21).Text
           RsMod("deladd") = txtfields(22).Text
           RsMod("contperson") = Text7.Text
           RsMod("varcode") = DataGrid1.Columns(1).Text
           RsMod("MILLREFNO") = txtfields(27).Text
           RsMod("candyrate") = val(DataGrid1.Columns(6).Text)
           RsMod("ordqty") = val(DataGrid1.Columns(3).Text)
           RsMod("ordkgs") = val(DataGrid1.Columns(5).Text)
           RsMod("PTY_CONTNO") = IIf(DataGrid1.Columns(7).Text = "", "0", DataGrid1.Columns(6).Text)
           RsMod("sno") = IIf(DataGrid1.Columns(0).Text = "", "0", DataGrid1.Columns(0).Text)
           RsMod("STAPLE") = Trim(txtfields(23).Text)
           RsMod("season") = txtfields(25).Text
           RsMod("CashDisPer") = val(DataGrid1.Columns(8).Text)
           RsMod("TradeDisPer") = val(DataGrid1.Columns(9).Text)
           RsMod("BedPer") = val(DataGrid1.Columns(10).Text)
           RsMod("EdcessPer") = val(DataGrid1.Columns(11).Text)
           RsMod("HsCessPer") = val(DataGrid1.Columns(12).Text)
           RsMod("CessPer") = val(DataGrid1.Columns(13).Text)
           'RsMod("Tax_Code") = val(DataGrid1.Columns(14).Text)
           
           RsMod("CreditDays") = val(txtfields(38).Text)
           RsMod("InterestPer") = val(txtfields(39).Text)
           RsMod("SUPPLIERLOTNOFROM") = val(txtfields(40).Text)
           RsMod("SUPPLIERLOTNOTO") = val(txtfields(41).Text)

           If Option4.value = True Then
               RsMod("Tax_Code") = DataGrid1.Columns(14).Text
           ElseIf Option5.value = True Then
               RsMod("Tax_Code") = txtfields(34).Text
           End If
           RsMod("TaxPer") = val(DataGrid1.Columns(15).Text)
           RsMod("OthTaxPer") = val(DataGrid1.Columns(16).Text)
           RsMod("InsPer") = val(DataGrid1.Columns(17).Text)
           If Mid(DataGrid1.Columns(4).Text, 1, 2) = "B" Then
                RsMod("BBFLAG") = "B"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "R" Then
                RsMod("BBFLAG") = "R"
           ElseIf Mid(DataGrid1.Columns(4).Text, 1, 2) = "H" Then
               RsMod("BBFLAG") = "H"
           Else
               RsMod("BBFLAG") = "B"
           End If
           
           If IsDate(MaskEdBox2.Text) = True Then
                RsMod("dUEDATE") = Format(MaskEdBox2.Text, "YYYY-MM-DD")
           Else
                RsMod("dUEDATE") = Null
           End If
           
            RsMod("Terms1") = txtfields(45).Text
            RsMod("Terms1Days") = txtfields(46).Text
            RsMod("Terms2") = txtfields(47).Text
            RsMod("Terms2Days") = txtfields(48).Text
            RsMod("Transport") = Trim(Text15.Text)
           
'--------ANBU-----------------
           Dim ChkRs As Recordset
           Set ChkRs = New Recordset
           Mod_Qty = 0
           Mod_Kgs = 0
           ChkRs.Open " Select * from RM_Arrival where ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & RsMod("varcode") & "'", DB
           If Not ChkRs.EOF Then
                Set ChkRs = New Recordset
                ChkRs.Open " Select OrdQty,OrdKgs from RM_Cont where ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & RsMod("varcode") & "'", DB
                If Not ChkRs.EOF Then
                    Mod_Qty = ChkRs!ordqty
                    Mod_Kgs = ChkRs!ordkgs
                End If
                DB.Execute "Update RM_Cont set Org_OrdQty='" & val(Mod_Qty) & "',Org_OrdKgs='" & val(Mod_Kgs) & "',Mod_UserId='" & usrid & "',Mod_dt='" & Format(Now, "yyyy-MM-dd HH:mm") & "' where ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & RsMod("varcode") & "' and Mod_UserId is Null "
                DB.Execute "Update RM_Cont set Mod_UserId='" & usrid & "',Mod_dt='" & Format(Now, "yyyy-MM-dd HH:mm") & "' where ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & RsMod("varcode") & "'"
           End If
           ChkRs.Close
           Set ChkRs = Nothing
'------------------------------
           
           
           RsMod.MoveNext
           RS11.MoveNext
        Next
        
        
        
        RsMod.UpdateBatch adAffectAllChapters
        DB.Execute "DELETE RM_DELSCHED WHERE CONTNO='" & adoprimaryrs("CONTNO") & "' AND CONTDATE='" & Format(adoprimaryrs("CONTDT"), "YYYY-MM-DD") & "'"
        On Error Resume Next
        For i = 1 To Flexg1.Rows - 1
           If Flexg1.TextMatrix(i, 1) <> "" And Flexg1.TextMatrix(i, 2) <> "" Then
                Set rsn = New Recordset
                rsn.Open "SELECT * FROM FA_SLMAS WHERE SLNAME='" & Flexg1.TextMatrix(i, 3) & "'", DB, adOpenStatic
                If rsn.RecordCount > 0 Then
                    del = rsn("SLCODE")
                Else
                    del = txtfields(22).Text
                End If
                DB.Execute "INSERT INTO RM_DELSCHED (contno,contdate,deldate,qty,deladd,varcode,instruction) VALUES('" & adoprimaryrs("CONTNO") & "','" & Format(adoprimaryrs("CONTDT"), "YYYY-MM-DD") & "','" & Format(Flexg1.TextMatrix(i, 1), "YYYY-MM-DD") & "'," & Flexg1.TextMatrix(i, 2) & ",'" & del & "','" & Flexg1.TextMatrix(i, 4) & "' ,'" & Flexg1.TextMatrix(i, 5) & "')"
            End If
         Next
         DB.CommitTrans
     End If
        Opt = opt1
       If Opt = "add" Then
            StatusBar1.Panels(2).Text = "Record(s) Saved"
            MsgBox "Record(s) Saved ", vbInformation, head
            MsgBox "Order No. is " & txtfields(0).Text, vbInformation, head
        ElseIf Opt = "mod" Then
            StatusBar1.Panels(2).Text = "Record(s) Modified"
            MsgBox "Record(s) Modified ", vbInformation, head
        
        End If
        If Opt = "del" Then
            Dim msg As String
            msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
            If msg = vbYes Then
                DB.Execute ("delete from rm_cont where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'")
                DB.Execute ("delete from rm_cont_SLOTNO where contno=" + "'" + Trim(txtfields(0).Text) + "' and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "' and divcode = '" & Divcode & "'")
                DB.Execute ("delete from rm_delsched where contno=" + "'" + Trim(txtfields(0).Text) + "'")
                DB.CommitTrans
                StatusBar1.Panels(2).Text = "Record(s) Deleted"
                MsgBox "Record(s) Deleted", vbInformation, head
            'BUTTON(9).ToolTipText = "Save"
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If

        Screen.MousePointer = 0
        Opt = ""
        Call Query_mode
        'SSTab1.Enabled = False
        Frame1.Enabled = False
        Frame2.Enabled = False
        Frame9.Enabled = False
        Frame6.Enabled = False
        Frame10.Enabled = False
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        desc.Caption = "Query"
       g = 0
       wosample = ""
       Exit Sub
Gk:
    If Err.Description <> "" Then
        MsgBox Err.Description
    End If
Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
End Select
    BUTTON(4).Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
    g = 0
    Call Query_mode
    'SSTab1.Enabled = False
    Frame1.Enabled = False
    Frame2.Enabled = False
    Frame9.Enabled = False
    Frame6.Enabled = False
    Frame10.Enabled = False
    'Call cancl(BUTTON)
    Frame1.Visible = True
    Frame2.Visible = True
    
    Buttonframe.Enabled = True
    If adoprimaryrs.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(12).Enabled = True
    BUTTON(13).Enabled = True
    Screen.MousePointer = 0
    Frame9.Enabled = True
    DataGrid1.AllowUpdate = True
    DataGrid1.AllowArrows = True
    DataGrid1.Enabled = True
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Reset
    Unload Me
    
Case 12
        Frame11.Visible = True
        Frame11.ZOrder 0
        Option6.value = True
        'Option5.SetFocus
        SSTab1.Enabled = False
        UserFooter1.ClearFooter
        cmd_report.Visible = True
        Buttonframe.Enabled = False

Case 13
'    Set Rs = New Recordset
'    Rs.Open "select cust_id from pp_divmas where divcode='" & Divcode & "'", db, adOpenStatic
'    If UCase(Rs("cust_id")) = "BANNARI" Then
'        cno = TXTFIELDS(0).Text
'        cdt = MaskEdBox3.Text
'        SNO = TXTFIELDS(1).Text
'        badd = TXTFIELDS(21).Text
'        dadd = TXTFIELDS(22).Text
'        arn = TXTFIELDS(3).Text
'        brocker = Text2.Text
'        trans = Combo3.Text
'        Set rs3 = New Recordset
'        rs3.Open "select * from pp_divmas", db, adOpenDynamic, adLockOptimistic
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rm_OrderCONFIRMATION.rpt"
'        FrmRpt.RptHead = 5
'        parameter1 = CStr(Format(yfdate, "yyyy") & "-" & Format(yldate, "yy"))
'        parameter2 = Divcode
'        parameter3 = cno
'        parameter4 = Format(cdt, "yyyy-MM-dd")
'        parameter5 = DataGrid1.Columns(1).Text
'
'        FrmRpt.Show
'    Else
        cno = txtfields(0).Text
        cdt = MaskEdBox3.Text
          
        Dim clsCryRpt As New clsCrystal
        If UCase(CustID) = "SKY" Then
            Set clsCryRpt.cryRept = Sky_RM_Transaction_Order 'Sky_RM_Trans_Order
        Else
            Set clsCryRpt.cryRept = RM_Trans_Order
        End If
        clsCryRpt.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@OrdDate;" & Format(cdt, "yyyy-MM-dd") & ""
        CrystalReport1.ParameterFields(2) = "@OrdNo;" & cno & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    'End If
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub ChkCentralized_Click()
'    If wosample = "Y" Then Txtfields(25).SetFocus
End Sub

Private Sub ChkCentralized_LostFocus()
    If wosample = "Y" Then txtfields(25).SetFocus
End Sub

Private Sub cmd_report_Click()

If UCase(CustID) = "LMW" Then
 POPRINTLMW
 'POPRINT
Else
  POPRINT
End If

'SSTab1.Enabled = True
'Buttonframe.Enabled = True
'Frame11.Visible = False
'
' Dim s1, s2, s3, s4, s5 As String
'Dim s6, s7, s8, s9, s10 As String
'
'Dim p6, p7, p8, p9, p10, cott As String
'Dim sno1 As Integer
'Dim rsb As Recordset
'Dim rsd As Recordset
'Dim rsstat As Recordset
'Dim strstat As String
'Dim rsc As Recordset
'On Error GoTo cmd_report_Click_Error
'
'On Error GoTo cmd_report_Click_Error
'
'If TXTFIELDS(0).Text <> "" Then
'     Set Rs = New Recordset
'     txt = MaskEdBox3.Text
'
'    Rs.Open "select a.*,slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc from rm_cont a,fa_slmas b,po_car c,rm_pmode d where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & TXTFIELDS(1).Text & "'", DB
'
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
'    Set rs1 = New Recordset
'
'    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest from rm_cont a,rm_sample b where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & TXTFIELDS(1).Text & "'", DB
'        If rs1.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
'    Set rsb = New Recordset
'    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
'              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & TXTFIELDS(21).Text & "' and b.SLCODE=a.billadd", DB
'
'    Set rsa = New Recordset
'    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
'              " where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & TXTFIELDS(22).Text & "' and b.SLCODE=a.deladd", DB
'
'    Set rsstat = New Recordset
'    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(TXTFIELDS(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    If rsstat.RecordCount > 0 Then
'       strstat = rsstat!Station
'    Else
'       strstat = ""
'    End If
'    Set rsc = New Recordset
'    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate", DB, adOpenStatic
'
'    If rsc.RecordCount > 0 Then
'        INSTRUCTION = rsc("INSTRUCTION")
'    Else
'        INSTRUCTION = ""
'    End If
'
'    Set rsJ = New Recordset
'    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoPrimaryRS("contno") & "'  and A.contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
'
'
'    Set RS11 = New Recordset
'    RS11.Open "select a.sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season""  from rm_cont a,rm_var b,rm_cat c   where contno='" & adoPrimaryRS("contno") & "'  and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd", DB, adOpenStatic, adLockBatchOptimistic
'     rema = RS11("remarks")
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
'    Set rsd = New Recordset
'    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & TXTFIELDS(21).Text & "'and c.billadd=b.slcode", DB
'    Set RPTV = New Report.ReportView
'    a = FreeFile
'    Close
'    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
'    pg1 = 0
'    Co = 0
'
'    Print #a,
'    Print #a,
'    Print #a, Space(3) & Chr(27) & "E" + CENTRE(DIVNAME, 85, " ") & Chr(27) & "F"
'    Print #a,
'    Print #a,
'    Print #a, Space(3) & Chr(27) & "E" & CENTRE("RAW MATERIAL - PURCHASE ORDER ", 85, " ") & Chr(27) & "F"
'    Print #a,
'    Dim I1 As Integer
'    I1 = 0
'    Print #a, Space(3) + "REF: CON" & Padr(Rs("contNO") & "/C-" & rsJ("MILLREFNO") & "/" & Year(yfdate) & "/" & Year(yldate), 28, " ") + Space(12) + "DATE" + Space(2) + Padr(Format(Rs("contdt"), "DD/MM/YY"), 8, "")
'    Print #a,
'    Print #a, Space(3) & "TO,"
'    Print #a, Space(3) + Space(1) & Rs("slname") & ""
'    If Rs("add1") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add1") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If Rs("add2") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add2") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If Rs("add3") <> "" Then
'    Print #a, Space(3) + Space(1) & Rs("add3") & ""
'    I1 = I1 + 1
'    Else
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    If I1 >= 3 Then
'    Print #a, Space(3) + Space(1) & Rs("city")
'    End If
'    Print #a,
'    Print #a, Space(3) & "Dear Sirs"
'    Print #a,
'    Print #a, Space(3) & "Sub: Purchase of Raw Material"
'    Print #a,
'    Print #a, Space(3) & "We are pleased to confirm our purchase of the following Raw Material from you"
'    Print #a, Space(3) & "as per the details stated below:-"
'    Print #a,
'    RS11.MoveFirst
'    Print #a, Space(3) & String(80, "-")
'    Print #a, Space(3) & "|Sl.|Variety | Quan|Station           | Rate / " + Padl(RS11("rateunit"), 8, " ") + "  |Staple    |Season    |"
'    Print #a, Space(3) & "|No.|        |-tity|                  |        per bale  |          |          |"
'    Print #a, Space(3) & "|   |        |     |                  |   spot expenses  |          |          |"
'    sno1 = 1
'    Print #a, Space(3) & String(80, "-")
'    Do While Not RS11.EOF
'    Staple = RS11("STAPLE")
'    season = RS11("SEASON")
'    Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
'    Print #a, Space(3) & String(80, "-")
'    sno1 = sno1 + 1
'    RS11.MoveNext
'    Loop
'    Print #a,
'    Print #a, Space(3) & "Agent                :" + Space(3) + "Through " & Text2.Text
'    Print #a, Space(3) & "Payment              :" + Space(3) + Rs("payterms") + " .Please inform us in which name we will"
'    Print #a, Space(3) & Space(21) + Space(3) + " have to take" + Space(1) + Rs("paydesc") + Space(1) + "and payable station."
'    Print #a, Space(3) & "Delivery Schedule    :" + Space(3) + INSTRUCTION
'    Print #a,
'
'    If rsb.RecordCount = 0 Then
'        s1 = ""
'        s2 = ""
'        s3 = ""
'        s4 = ""
'        s5 = ""
'        s6 = ""
'        s7 = ""
'        s8 = ""
'        s9 = ""
'        s10 = ""
'    Else
'        s1 = rsb("slname")
'        s2 = rsb("add1")
'        s3 = rsb("add2")
'        s4 = rsb("add3")
'
'        s5 = rsb("city")
'        If rsd.EOF = False Then
'            s6 = IIf(IsNull(rsd("tinno")), 0, rsd("tinno"))
'            s7 = IIf(IsNull(rsd("tindt")), "", rsd("tindt"))
'            s8 = IIf(IsNull(rsd("cgst")), 0, rsd("cgst"))
'            s9 = IIf(IsNull(rsd("cgstdt")), "", rsd("cgstdt"))
'        End If
'        s10 = Rs("rc_no")
'    End If
'
'    If rsa.RecordCount = 0 Then
'        p6 = ""
'        p7 = ""
'        p8 = ""
'        p9 = ""
'        p10 = ""
'    Else
'        p6 = rsa("slname")
'        p7 = rsa("add1")
'        p8 = rsa("add2")
'        p10 = rsa("city")
'    End If
'    Print #a, Space(3) & "Billing Address" + Space(32) + "Delivery Address"
'    Print #a, Space(3) + Space(2) & Padr(s1, 30, "") + Space(17) & Padr(p6, 30, "")
'    Print #a, Space(3) + Space(2) & Padr(s2, 30, "") + Space(17) & Padr(p7, 30, "")
'    Print #a, Space(3) + Space(2) & Padr(s5, 30, "") + Space(17) & Padr(p10, 30, "")
'    Print #a, Space(3) + Space(2) & "TIN No. " + Padr(s6, 15, "") & "DT." + Padr(Format(s7, "DD/MM/YY"), 8, "") + Space(13) & "Contact Person:" & Trim(Text7.Text)
'    Print #a, Space(3) + Space(2) & "CST No. " + Padr(s8, 15, "") & "DT." + Padr(Format(s9, "DD/MM/YY"), 8, "") + Space(13) & "Phone No."
'    Print #a, Space(3) + Space(2) & "Central Exercise RC No. " + Padr(s10, 20, "")
'    Print #a,
'    Print #a, Space(3) & "Kindly sign a copy of this contract and return to us as a token of your acceptance."
'    Print #a,
'    Print #a, Space(3) & "Thanks & Regards"
'    Print #a,
'    Print #a,
'    Print #a, Space(3)
'    Print #a, Space(3) & "GENERAL MANAGER - ADMIN & MKTG" & Chr(27)
'    Print #a, Space(3)
'    Print #a,
'    Print #a, Space(3) & "   Please send us the samples immediately on receipt of the"
'    Print #a, Space(3) & "   load for quality checking"
'    Print #a, Space(3) & String(80, "-")
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
'    Print #a, Chr(12)
'    Close #a
'    Call KALBATPROCESS("PURORDER")
'End If
'
'Exit Sub
'cmd_report_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmd_report_Click of Form FrmContractoutsam", vbInformation, head
'Screen.MousePointer = 0

End Sub

Private Sub cmd_report_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo cmd_report_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    SSTab1.Enabled = True
    Buttonframe.Enabled = True
    cmd_report.Visible = False
    UserFooter1.Visible = False
ElseIf KeyCode = vbKeyLeft Then
    Option6.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option6.SetFocus
End If

Exit Sub
cmd_report_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmd_report_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    txtfields(7).SetFocus
End If
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo2_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo2_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo3_GotFocus()
On Error GoTo Combo3_GotFocus_Error

Combo3.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a mode of transport from the list"

Exit Sub
Combo3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Combo3_KeyPress(KeyAscii As Integer)
On Error GoTo Combo3_KeyPress_Error

If KeyAscii = 13 And (Opt = "add" Or Opt = "mod") Then
    'Txtfields(6).SetFocus
End If

Exit Sub
Combo3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo3_LostFocus()
On Error GoTo Combo3_LostFocus_Error

Combo3.BackColor = " &H80000005"      ''white
If Combo3.Text = "" Then
MsgBox "Select The Mode Of Transport", vbInformation, head
Combo3.SetFocus
Screen.MousePointer = 0
Cancel = True
Exit Sub
Else
txtfields(12).SetFocus
End If

Exit Sub
Combo3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo4_GotFocus()
Combo4.BackColor = "&HC0FFC0"  '' green
End Sub

Private Sub Combo4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo4_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo4_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo4_LostFocus()
Combo4.BackColor = " &H80000005  "   '' white
End Sub

Private Sub Combo5_Click()
'txtfields(24).Text = "Candy" ' Trim(Combo5.Text)
On Error GoTo Combo5_Click_Error

txtfields(24).Text = Combo5.Text

Exit Sub
Combo5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo5_GotFocus()
On Error GoTo Combo5_GotFocus_Error

Combo5.BackColor = " &HC0FFC0"  '' green
StatusBar1.Panels(2).Text = "Select a Rate unit from the list"

Exit Sub
Combo5_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Combo5_LostFocus()
On Error GoTo Combo5_LostFocus_Error

Combo5.BackColor = " &H80000005 "     '' white"
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo5_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo5_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo6_GotFocus()
On Error GoTo Combo6_GotFocus_Error

Combo6.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Variety from the list"

Exit Sub
Combo6_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo6_LostFocus()
On Error GoTo Combo6_LostFocus_Error

    If Opt = "add" Or Opt = "mod" Then
        'MaskEdBox1.SetFocus
        'Exit Sub
    End If
Combo6.BackColor = "&HffFFff"              ''white
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo6_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo6_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo7_Change()
On Error GoTo Combo7_Change_Error

If Left(Combo7.Text, 1) = "P" Then
'    DataGrid1.Columns(3).Locked = True
    DataGrid1.Columns(5).Locked = False
ElseIf Left(Combo7.Text, 1) = "K" Then
    DataGrid1.Columns(3).Locked = False
    DataGrid1.Columns(5).Locked = True
End If

Exit Sub
Combo7_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo7_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo7_GotFocus()
Combo7.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Arrival Type from the list"
End Sub

Private Sub Combo7_LostFocus()
On Error GoTo Combo7_LostFocus_Error

Combo7.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo7_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo7_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_GotFocus()
On Error GoTo Combo8_GotFocus_Error

Combo8.BackColor = "&HC0FFC0"              ''green
StatusBar1.Panels(2).Text = "Select a Instruction from the list"

Exit Sub
Combo8_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_KeyPress(KeyAscii As Integer)
'If KeyAscii = 13 Then
On Error GoTo Combo8_KeyPress_Error

    

Exit Sub
Combo8_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo8_LostFocus()
On Error GoTo Combo8_LostFocus_Error

Combo8.BackColor = &HFFFFFF              ''white
StatusBar1.Panels(2).Text = ""

Exit Sub
Combo8_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo8_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo DataGrid1_KeyDown_Error

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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
DataGrid1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub DataGrid1_KeyPress(KeyAscii As Integer)

On Error GoTo DataGrid1_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    
    If DataGrid1.Col = 4 Then
        If KeyAscii <> 8 And KeyAscii <> 66 And KeyAscii <> 98 And KeyAscii <> 72 And KeyAscii <> 104 And KeyAscii <> 82 And KeyAscii <> 114 And KeyAscii <> 9 Then
            KeyAscii = 0
        End If
    End If
    

    If DataGrid1.Col = 3 Then
        StatusBar1.Panels(2).Text = "Enter The Order Qty, Maximum 8 Integers"
        tonum DataGrid1, 8, KeyAscii
    End If
    If DataGrid1.Col = 5 Then
        StatusBar1.Panels(2).Text = "Enter The Order Kgs, Maximum 8 Integers with 3 Decimals"
        ToNumberAssign DataGrid1, 15, KeyAscii, 15, 3
    End If
    If DataGrid1.Col = 6 Then
        StatusBar1.Panels(2).Text = "Enter The Order Kgs, Maximum 5 Integers with 4 Decimals"
        ToNumberAssign DataGrid1, 5, KeyAscii, 5, 4
    End If
    If DataGrid1.Col = 4 Then
            StatusBar1.Panels(2).Text = "Enter The Unit B-Bale (OR) H-HalfpressBale (OR) R-Borah"
            ToUpCase DataGrid1, KeyAscii
            ToAlphaNumber DataGrid1, 1, KeyAscii
            ToUpCase DataGrid1, KeyAscii
    End If
    
    If DataGrid1.Col <> 4 Then
'        StatusBar1.Panels(2).Text = ""
    End If
    
    If DataGrid1.Col >= 8 And DataGrid1.Col <= 16 Then
        StatusBar1.Panels(2).Text = "Enter The Maximum 2 Integers with 2 Decimals"
        ''tonum DataGrid1, 5, KeyAscii
        If DataGrid1.Col <> 14 Then
            ToNumberAssign DataGrid1, 2, KeyAscii, 2, 2
        End If
    End If
    
    If DataGrid1.Col = 17 Then
        StatusBar1.Panels(2).Text = "Enter The Maximum 2 Integers with 3 Decimals"
        ToNumberAssign DataGrid1, 2, KeyAscii, 2, 3
    End If
    
    If (DataGrid1.Col = 11 Or DataGrid1.Col = 12) And KeyAscii <> 9 Then
        If val(DataGrid1.Columns(10).Text) = "0" Then
            KeyAscii = 0
            DataGrid1.Columns(11).Text = "0"
            DataGrid1.Columns(12).Text = "0"
        End If
    End If
    If wosample = "Y" Then
        If DataGrid1.Col = 17 Then
            If RS11.RecordCount = RS11.AbsolutePosition Then
                MFLG = "Y"
            Else
                MFLG = "N"
            End If
        Else
           MFLG = "N"
        End If
    End If
    If wosample = "N" Then
        If DataGrid1.Col = 17 Then
'            If RS11.RecordCount = RS11.AbsolutePosition Then
                MFLG = "Y"
'            Else
'                MFLG = "N"
'            End If
        Else
           MFLG = "N"
        End If
    End If
End If


Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmContractoutsam", vbInformation, head
End Sub
Private Sub DataGrid1_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo DataGrid1_RowColChange_Error

    If Opt = "add" Or Opt = "mod" Then
    
        If LastCol = 0 And wosample <> "N" Then
   
            Set rsa = New Recordset
            rsa.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic     ' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT where contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'and supcode='" & txtFields(1).Text & "' ) AND supcode='" & txtFields(1).Text & "' ", db, adOpenStatic

                        
           
           If rsa.RecordCount > 0 Then
           
               StatusBar1.Panels(2).Text = "Select Sample No From the List"
               LookUp.clear = True

               LookUp.query = "select SNO""Mill Sample No"" ,Date""Mill Sample Date"" ,slname as Supplier ,varname as Variety from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and supcode='" & txtfields(1).Text & "'" ' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT WHERE supcode='" & txtFields(1).Text & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "')"
               LookUp.Caption = "Sample Listing"
               LookUp.DefCol = "Supplier"
               LookUp.ALIGN = "1200,1500,4000,2000"
               LookUp.Show vbModal
               
               If LookUp.Cancel = False Then
                    
                   Set rsn = New Recordset
                   rsn.DataSource = RS11
                   If rsn.RecordCount > 0 Then rsn.MoveFirst
                   For i = 1 To rsn.RecordCount - 1
                       If LookUp.Fields(0) = rsn("Mill Sample No.") Then
                           MsgBox "Already Exists in Grid", vbInformation, head
                           rsn.MoveLast
                           DataGrid1.Col = 1
                           DataGrid1.SetFocus
                           
                           Exit Sub
                       End If
                       rsn.MoveNext
                   Next
                  If rsn.RecordCount > 0 Then rsn.MoveLast
                    
               
               
               
                   txtfields(16).Text = LookUp.Fields(0)
                   DataGrid1.Columns(0).Text = LookUp.Fields(0)
                   If sampNo = "" Then
                        sampNo = LookUp.Fields(0)
                   Else
                        sampNo = sampNo + "," + LookUp.Fields(0)
                   End If
                   
                   Set rs3 = New Recordset
                   rs3.Open "select distinct sno,a.supcode,a.varcode,b.varname,c.slname,AREA_CODE,AREANAME,CROP_YEAR,a.prty_sampno,a.brokercode from rm_sample a,rm_var b,fa_slmas c,RM_AREA D where  a.supcode=c.slcode and a.varcode=b.varcode AND A.AREA_CODE=D.AREACODE and sno='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
                   If rs3.RecordCount > 0 Then
                       txtfields(1).Text = rs3("supcode")
                       Text1.Text = rs3("slname")
                       txtfields(4).Text = rs3("varcode") 'HIDE DUE TO MULTIPLE VARIETY
                       txtfields(15).Text = rs3("varname") 'HIDE
                       txtfields(17).Text = rs3("prty_sampno") 'HIDE
                       txtfields(3).Text = rs3("AREA_CODE")
                       Text3.Text = rs3("AREANAME")
                       
                       If IsNull(rs3("CROP_YEAR")) = True Or rs3("CROP_YEAR") = "" Then
                            txtfields(13).Text = Year(yfdate)
                       Else
                            txtfields(13).Text = rs3("CROP_YEAR")
                       End If
                       
                       
                       txtfields(2).Text = rs3("brokercode")
                       DataGrid1.Columns(1).Text = rs3("varcode")
                       DataGrid1.Columns(2).Text = rs3("varname")
                       DataGrid1.Columns(7).Text = rs3("prty_sampno")
                       DataGrid1.Columns(1).Locked = True
                       DataGrid1.Columns(2).Locked = True
                   End If
                   Set LABRS = New Recordset
                   LABRS.Open "SELECT a.areaname,a.station,a.areacode,a.state FROM RM_area a ,rm_sample as b WHERE a.areacode=b.area_code ", DB, adOpenStatic, adLockBatchOptimistic
                   Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                   Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
        
                   Set rsa = New Recordset
                   rsa.Open "select l_or_u  from rm_area where areacode='" & txtfields(3).Text & "'", DB, adOpenStatic
                   If rsa.RecordCount > 0 Then
                       If rsa(0) = "L" Then
                           Option1.value = False
                          Option2.value = True
                          Option3.value = False
                        ElseIf rsa(0) = "U" Then
                          Option1.value = True
                          Option2.value = False
                          Option3.value = False
                        ElseIf rsa(0) = "I" Then
                          Option1.value = False
                          Option2.value = False
                          Option3.value = True
                       End If
                    End If
               End If
                LookUp.clear = True
                DataGrid1.Columns(1).Locked = True
                DataGrid1.Columns(2).Locked = True
                LookUp.clear = True
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                Exit Sub
            End If
     End If
     
     If LastCol = 1 And wosample = "N" Then
    
        Set Rs = New Recordset
        Rs.Open "select *  from rm_var where varcode='" & DataGrid1.Columns(1).Text & "'", DB, adOpenStatic
        
        If Rs.RecordCount > 0 Then
            DataGrid1.Columns(1).Text = Rs("varcode")
            DataGrid1.Columns(2).Text = Rs("varname")
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 3
            DataGrid1.SetFocus
        Else
            LookUp.clear = True
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name""  from rm_var"
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "Variety Name"
            LookUp.ALIGN = "1200,4500"
            
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
                Set rsn = New Recordset
                rsn.DataSource = RS11
                If rsn.RecordCount > 0 Then rsn.MoveFirst
                For i = 1 To rsn.RecordCount - 1
                       If LookUp.Fields(0) = rsn("VARiety CODE") Then
                           MsgBox "Already Exists in Grid", vbInformation, head
                           rsn.MoveLast
                           DataGrid1.Col = 1
                           DataGrid1.SetFocus
                           Exit Sub
                       End If
                       rsn.MoveNext
                Next
                If rsn.RecordCount > 0 Then rsn.MoveLast
                
                DataGrid1.Columns(1).Text = LookUp.Fields(0)
                DataGrid1.Columns(2).Text = LookUp.Fields(1)
                DataGrid1.Columns(4).Text = "B"
                DataGrid1.Columns(2).Locked = True
                If Option4.value = True Then
                    DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
                    DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
                    txtfields(34).Text = ""
                    txtfields(35).Text = ""
                    
                Else
                    DataGrid1.Columns(14).Text = ""
                    DataGrid1.Columns(15).Text = ""
                    txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
                    txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
                End If
                LookUp.clear = True
                DataGrid1.Row = DataGrid1.Row
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                
            Else
                LookUp.clear = True
                DataGrid1.Row = DataGrid1.Row
                DataGrid1.Col = 1
                DataGrid1.SetFocus
            End If
        End If
     End If
        
     If LastCol = 3 And Left(Combo7.Text, 1) = "P" Then
                If val(DataGrid1.Columns(3).Text) = 0 Then
                       MsgBox "Order Quantity cannot be Zero Or Empty", vbInformation, head
                       DataGrid1.Col = 3
                       DataGrid1.SetFocus
                       Exit Sub
                End If
     End If
     
     If LastCol = 5 And Left(Combo7.Text, 1) = "K" Then
                If val(DataGrid1.Columns(5).Text) = 0 Then
                       MsgBox "Order Kgs cannot be Zero Or Empty", vbInformation, head
                       DataGrid1.Col = 5
                       DataGrid1.SetFocus
                       Exit Sub
                End If
     End If
     
     If LastCol = 3 And Left(Combo7.Text, 1) = "P" Then
        Dim ChkRs As Recordset
        Set ChkRs = New Recordset
        ChkRs.Open "Select SUM(ISNULL(Quantity,0)) as Quantity from RM_Arrival where Divcode='" & Divcode & "' and ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & DataGrid1.Columns(1).Text & "' ", DB
        If Not ChkRs.EOF Then
            If val(DataGrid1.Columns(3).Text) < ChkRs!Quantity Then
                MsgBox " Order Qty must be greater than Arrival Qty (" & Format(ChkRs!Quantity, "0.00") & " )"
                DataGrid1.Col = 3
                DataGrid1.SetFocus
                Exit Sub
            Else
                DataGrid1.Col = 4
                DataGrid1.SetFocus
            End If
        End If
    End If
    
    If LastCol = 5 And Left(Combo7.Text, 1) = "K" Then
        Set ChkRs = New Recordset
        ChkRs.Open "Select SUM(ISNULL(NetWt,0)) as NetWt from RM_Arrival where Divcode='" & Divcode & "' and ContNo='" & txtfields(0).Text & "' and ContDt='" & Format(MaskEdBox3.Text, "yyyy-MM-dd") & "' and Varcode='" & DataGrid1.Columns(1).Text & "' ", DB
        If Not ChkRs.EOF Then
            If DataGrid1.Columns(5).Text < ChkRs!netwt Then
                MsgBox " Order Qty must be greater than Arrival Qty (" & Format(ChkRs!netwt, "0.000") & " )"
                DataGrid1.Col = 5
                DataGrid1.SetFocus
                Exit Sub
            End If
        End If
    End If
   
     
     If LastCol = 6 Then
        If DataGrid1.Columns(6).Text = "" Then
            MsgBox "Rate cannot be empty", vbInformation, head
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 6
            DataGrid1.SetFocus
            Exit Sub
        Else
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 8
            DataGrid1.SetFocus
            Exit Sub
        End If
     End If
     
     If LastCol = 4 Then
      If DataGrid1.Row >= 0 Then
        If Trim(DataGrid1.Columns(4).Text) = "" Then
            MsgBox "Unit cannot be empty", vbInformation
            DataGrid1.Row = DataGrid1.Row
            DataGrid1.Col = 4
            DataGrid1.SetFocus
            Exit Sub
        Else
           StatusBar1.Panels(2).Text = ""
                If DataGrid1.Col = 8 Then
                    If Option5.value = True Then
                        DataGrid1.LeftCol = 15
                        DataGrid1.Columns(8).Locked = True
                        DataGrid1.Columns(9).Locked = True
                        DataGrid1.Columns(10).Locked = True
                        DataGrid1.Columns(11).Locked = True
                        DataGrid1.Columns(12).Locked = True
                        DataGrid1.Columns(13).Locked = True
                        DataGrid1.Columns(14).Locked = True
                        DataGrid1.Columns(15).Locked = True
                        DataGrid1.Columns(16).Locked = True
                        DataGrid1.Col = 17
                        DataGrid1.SetFocus
                    End If
                End If
           
        End If
       End If
     End If
     
     If LastCol >= 8 And LastCol <= 17 Then
        
        If LastCol = 14 Then
            If Option5.value = True Then
                        DataGrid1.LeftCol = 15
                        DataGrid1.Col = 17
                        DataGrid1.SetFocus
            Else
                Set RSV = New Recordset
                RSV.Open "SELECT * FROM IG_TAX WHERE TAXSTATUS='Y' AND TAX_CODE='" & DataGrid1.Columns(14).Text & "'", DB, adOpenStatic
                
                If RSV.RecordCount > 0 Then
                    DataGrid1.Columns(15).Text = RSV("ST_PER")
                Else
                    LookUp.clear = True
                    LookUp.query = "select Tax_Code""Tax Code"",Description""Tax Description"",ST_Per""ST %"",ITCper""ITC %"",ITCTaxStatus""ITC Tax Status"" from ig_tax"
                    LookUp.DefCol = "Tax Description"
                    LookUp.Caption = "Tax Listing"
                    LookUp.ALIGN = "1425,3000,1425,1425, 1425"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        
                        DataGrid1.Columns(14).Text = LookUp.Fields(0)
                        DataGrid1.Columns(15).Text = LookUp.Fields(2)
                        LookUp.clear = True
                        DataGrid1.Col = 16
                        DataGrid1.SetFocus
                        Exit Sub
                    Else
                        DataGrid1.Columns(14) = ""
                        DataGrid1.Columns(15) = 0
                        LookUp.clear = True
                        DataGrid1.Col = 16
                        DataGrid1.SetFocus
                    End If
                End If
            End If
        Else
            
            If val(DataGrid1.Columns(LastCol)) = 0 Then
                DataGrid1.Columns(LastCol) = 0
            End If
        End If
     End If
     
     
     If DataGrid1.Col = 17 And MFLG = "Y" Then
        If wosample = "Y" Then
           ''If rsg.RecordCount > 0 Then
            U = MsgBox("Do You Want Add One More Sample?", vbYesNo, head)
            If U = vbYes Then
                RS11.AddNew
                DataGrid1.LeftCol = 0
                DataGrid1.Col = 0
                DataGrid1.SetFocus
                Exit Sub
           Else
                Set rstParameter = New Recordset
                rstParameter.Open "SELECT SEASONCALCREQ FROM RM_PARAM", DB, adOpenStatic
                If rstParameter(0) = "Y" Then
                    txtfields(43).SetFocus
                Else
                    txtfields(25).SetFocus
                End If
                Exit Sub
           End If
           
        End If
        
            If wosample = "N" Then
          If Opt = "add" Then
                g = 1
                If val(DataGrid1.Columns(3).Text) = 0 And val(DataGrid1.Columns(4).Text) = 0 Then
                    g = 0
                End If
          
                If DataGrid1.Columns(1).Text <> "" And DataGrid1.Columns(2).Text <> "" And g <> 0 And DataGrid1.Columns(4).Text <> "" Then
                   
                   U = MsgBox("Do You Want To Select One More Variety?", vbYesNo, head)
                    
                   If U = vbYes Then
                        RS11.AddNew
                        DataGrid1.LeftCol = 0
                        DataGrid1.Col = 1
                        DataGrid1.SetFocus
                        Exit Sub
                   Else
                        SSTab1.Tab = 1
                        If sCR = "Y" Then
                            txtfields(38).SetFocus
                        Else
                            txtfields(20).SetFocus
                        End If
                        Exit Sub
                   End If
                End If
           End If
           
        End If

     End If
     
     
     
End If


Exit Sub
DataGrid1_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_RowColChange of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub deliveryadd_Click()
On Error GoTo deliveryadd_Click_Error

Text8.Text = MaskEdBox1.Text

'If Text8.Text <> "" And Text9.Text <> "" Then
If Text8.Text <> "" Then


If Opt = "add" Or Opt = "mod" Then
    If IsDate(MaskEdBox1.Text) = False Then
        MsgBox "Please enter valid date", vbInformation, head
        MaskEdBox1.SetFocus
        Exit Sub
    End If
    If CDate(MaskEdBox1.Text) < CDate(MaskEdBox3.Text) Then
        MsgBox "Delivery Date must be after or equal to Contract date", vbInformation, head
        MaskEdBox1.SetFocus
        MaskEdBox1.Text = "__/__/____"
        Exit Sub
    End If
    If val(Text9.Text) = 0 Then
        MsgBox "Delivery Quantity must be greater than zero", vbInformation, head
        Text9.Text = ""
        Text9.SetFocus
        Exit Sub
    End If
End If
    
    ARRFLG = Left(Combo7.Text, 1)
    Variety = Combo6.Text
    totqty = 0
    VarQty = 0
    ''DataGrid1.COL = 2  '' to avoid loop goes to row col change
    If RS11.RecordCount > 0 Then
        opt1 = Opt
        Opt = ""
        RS11.MoveFirst
        While Not RS11.EOF
                gqty = 0
                If ARRFLG = "P" Then
                    gqty = val(DataGrid1.Columns(3).Text)
                ElseIf ARRFLG = "K" Then
                    gqty = val(DataGrid1.Columns(5).Text)
                End If
                If Trim(DataGrid1.Columns(1).Text) <> "" And val(gqty) <> 0 Then
                    totqty = totqty + val(gqty)
                    If DataGrid1.Columns(1).Text = Variety Then
                        VarQty = val(gqty)
                    End If
                End If
                RS11.MoveNext
        Wend
    End If
    Opt = opt1
    vartotal = 0
    totvarqty = 0
    VarietyCheck = 0
    For i = 1 To Flexg1.Rows - 1
        If Trim(Flexg1.TextMatrix(i, 1)) <> "" And Trim(Flexg1.TextMatrix(i, 2)) <> "" And Trim(Flexg1.TextMatrix(i, 4)) <> "" Then
            totvarqty = totvarqty + val(Flexg1.TextMatrix(i, 2))
            If Variety = Flexg1.TextMatrix(i, 4) Then
                vartotal = vartotal + val(Flexg1.TextMatrix(i, 2))
            End If
        End If
        If Trim(Flexg1.TextMatrix(i, 1)) = Trim(Text8.Text) And Trim(Flexg1.TextMatrix(i, 3)) = Trim(Text6.Text) And Trim(Flexg1.TextMatrix(i, 4)) = Combo6.Text Then
            VarietyCheck = 1
        End If
    Next
    
    vartotal = vartotal + val(Text9.Text)
    If vartotal > VarQty Then
        MsgBox "Schedule Quantity total must be equal to Order Quantity", vbInformation, head
        Text9.Text = ""
        Text9.SetFocus
        Exit Sub
    End If
    If VarietyCheck = 1 Then
        MsgBox "Schedule already exists for this Date ", vbInformation, head
        deliveryadd.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    totvarqty = totvarqty + val(Text9.Text)
     
    Flexg1.AddItem ""
    Flexg1.TextMatrix(Flexg1.Rows - 1, 1) = Text8.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 2) = Text9.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 3) = Text6.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 4) = Combo6.Text
    Flexg1.TextMatrix(Flexg1.Rows - 1, 5) = Combo8.Text
    'flexg.AddItem ""
    Text9.Text = ""
    If VarQty > vartotal Then
        MaskEdBox1.SetFocus
    ElseIf totqty > totvarqty Then
        Combo6.SetFocus
    Else
        
        If Option5.value = True Then
            SSTab1.Tab = 2
            txtfields(28).SetFocus
        Else
            BUTTON(9).SetFocus
        End If
        Exit Sub
    End If
         If Option5.value = True Then
            SSTab1.Tab = 2
            txtfields(28).SetFocus
        Else
            BUTTON(9).SetFocus
        End If
        Exit Sub
    
Else
    MsgBox "Please enter Delivery Date / Please enter Delivery Quantity", vbInformation, head
    If Text8.Text = "" Then
        MaskEdBox1.SetFocus
    Else
        txtfields(22).SetFocus
    End If
    
End If


Exit Sub
deliveryadd_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure deliveryadd_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Flexg1_Click()
If Opt = "add" Or Opt = "mod" Then
    If Flexg1.RowSel <> 0 Then
        MaskEdBox1.Text = Flexg1.TextMatrix(Flexg1.RowSel, 1)
        Text8.Text = Flexg1.TextMatrix(Flexg1.RowSel, 1)
        Text9.Text = Flexg1.TextMatrix(Flexg1.RowSel, 2)
        Text6.Text = Flexg1.TextMatrix(Flexg1.RowSel, 3)
        Combo6.Text = Flexg1.TextMatrix(Flexg1.RowSel, 4)
        Combo8.Text = Flexg1.TextMatrix(Flexg1.RowSel, 5)
    End If
End If
End Sub

Private Sub Flexg1_DblClick()
If Opt = "add" Or Opt = "mod" Then
        If Flexg1.Rows > 1 Then
            ''If Flexg1.TextMatrix(Flexg1.row, 1) <> "" Then
                g = MsgBox("Do you want to delete this Row?", vbYesNo, head)
                If g = vbYes And Flexg1.RowSel <> 0 Then
                    Flexg1.RemoveItem Flexg1.Row
                    If Flexg1.Row > 1 Then
                        Flexg1.RowSel = 1
                        Call Flexg1_Click
                    End If
                End If
            ''End If
        End If
End If
End Sub

Private Sub Flexg1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Flexg1_KeyDown_Error

On Error GoTo Flexg1_KeyDown_Error

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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
Flexg1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Flexg1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ksllist1_DblClick()
On Error GoTo ksllist1_DblClick_Error

Call Command3_Click

Exit Sub
ksllist1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ksllist1_DblClick of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

Combo1.BackColor = "&HC0FFC0"        ''green
If Opt = "add" And txtfields(5).Text <> "" Then
StatusBar1.Panels(2).Text = "Select any Unit From the List"
End If

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

Combo1.BackColor = "&H80000005"   '' white
If Opt = "add" Then
Set Rs = New Recordset
    Rs.Open "select mixgrpcd from RM_MIXGRP where mixgrpcd = '" & txtfields(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
End If
End If

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_GotFocus()
On Error GoTo Combo2_GotFocus_Error

If Opt = "add" Then
If Combo2.Text = " " Then
StatusBar1.Panels(2).Text = "Select any Delivery From the List"
End If
End If

Exit Sub
Combo2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_LostFocus()
On Error GoTo Combo2_LostFocus_Error

If Opt = "add" Then
    Set Rs = New Recordset
    Rs.Open "select paymode from rm_pmode where paymode = '" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        If Combo2.Text = " " And txtfields(8).Text <> "" Then
            StatusBar1.Panels(2).Text = "Select any Delivery From the List"
            MsgBox "Select any Delivery from the List", vbInformation, head
            Combo2.SetFocus
        Else
            'SSTab1.Tab = 1
            'BUTTON(9).SetFocus
            Exit Sub
        End If
    End If
End If


Exit Sub
Combo2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_LostFocus of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    desc.Caption = "Query"
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont WHERE divcode='" & Divcode & "' and contno = '" & Trim(txtcontno.Text) & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    If adoprimaryrs.RecordCount = 0 Then
     txtcontno.Text = ""
     txtcontno.SetFocus
     MsgBox "No Record Found", vbInformation, head

    Else
    Call bindcontls
    Frame7.Visible = False
    Buttonframe.Enabled = True
    End If


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "mod" Or Opt = "add" Then
   Select Case KslList1.listfield1
   Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KslList1.Code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        txtfields(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
        txtfields(1).Text = KslList1.Code
        Text1.Text = Trim(KslList1.Description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        txtfields(3).Text = ""
        Text3.Text = ""
     Else
        txtfields(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(2).SetFocus
   
   Case "SLCODE"
     If KslList1.Code = txtfields(1).Text Then
        MsgBox "Agent Code must not be same as Supplier Code", vbInformation, head
        KslList1.SetFocus
     Else
        txtfields(2).Text = KslList1.Code
        Text2.Text = Trim(KslList1.Description)
        
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
      
     End If
   
   Case "areacode"
     txtfields(3).Text = KslList1.Code
     Text3.Text = Trim(KslList1.Description)
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
  
   Case "varcode"
     txtfields(4).Text = KslList1.Code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True

   Case "Colorcode"
     txtfields(25).Text = KslList1.Code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     
   Case "mixgrpcd"
     txtfields(5).Text = KslList1.Code
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
   
   Case "paymode"
     txtfields(8).Text = KslList1.Code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True

   Case "cast(contno as varchar)"
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Opt = ""
     Set adoprimaryrs = New Recordset
     adoprimaryrs.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "'", DB, adOpenStatic, adLockOptimistic
     Opt = "mod"
     Call ENABLCONTLS
     Call bindcontls
     txtfields(0).Locked = True
   End Select
   BUTTON(9).Enabled = True
   BUTTON(10).Enabled = True
End If

If Opt = "del" Then
   
   Buttonframe.Enabled = True
   Frame1.Visible = True
   Frame2.Visible = True
   Set adoprimaryrs = New Recordset
   adoprimaryrs.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "'", DB, adOpenStatic, adLockOptimistic
   Call ENABLCONTLS
   Call bindcontls
   BUTTON(9).Enabled = True
   BUTTON(9).SetFocus
End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command2_Click()
Frame7.Visible = False
Buttonframe.Enabled = True
'Call QUERY_MODE
End Sub

Private Sub Command5_Click()
On Error GoTo Command5_Click_Error

If Opt = "add" And (KslList1.Caption = "Supplier List" Or KslList1.Caption = "Agent List" Or KslList1.Caption = "Area List" Or KslList1.Caption = "Carrier List" Or KslList1.Caption = "Weighnment List") Then
   Buttonframe.Enabled = True
   
   Buttonframe.Enabled = True
   SSTab1.Visible = True
   Frame1.Visible = True
   Frame2.Visible = True
   If KslList1.Caption = "Supplier List" Then
      txtfields(1).Text = ""
      txtfields(1).SetFocus
      Exit Sub
   End If
   
   If KslList1.Caption = "Agent List" Then
      txtfields(2).Text = ""
      txtfields(3).SetFocus
      Exit Sub
   End If
   If KslList1.Caption = "Area List" Then
      txtfields(3).Text = ""
     ' txtFields(10).SetFocus
     Combo3.SetFocus
      Exit Sub
   End If
   If KslList1.Caption = "Carrier List" Then
      txtfields(10).Text = ""
      txtfields(12).SetFocus
      Exit Sub
   End If
   If KslList1.Caption = "Weighnment List" Then
      txtfields(12).Text = ""
      txtfields(14).SetFocus
      Exit Sub
   End If
Else
   Call BUTTON_Click(10)
   SSTab1.Visible = True
End If
Exit Sub


Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form FrmContractoutsam", vbInformation, head
End Sub

Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

Buttonframe.Enabled = True
If Opt = "mod" Or Opt = "add" Then
Select Case KslList1.listfield1
Case "Sno"
     txtfields(16).Text = KslList1.Code
     Set rs3 = New Recordset
     rs3.Open "select distinct sno,a.supcode,a.varcode,b.varname,c.slname,AREA_CODE,AREANAME,CROP_YEAR,a.prty_sampno,a.brokercode from rm_sample a,rm_var b,fa_slmas c,RM_AREA D where a.supcode=c.slcode and a.varcode=b.varcode AND A.AREA_CODE=D.AREACODE and sno='" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If rs3.RecordCount > 0 Then
        txtfields(1).Text = rs3("supcode")
        Text1.Text = rs3("slname")
        txtfields(4).Text = rs3("varcode")
        txtfields(15).Text = rs3("varname")
        txtfields(3).Text = rs3("AREA_CODE")
        Text3.Text = rs3("AREANAME")
        txtfields(13).Text = rs3("CROP_YEAR")
        txtfields(17).Text = rs3("prty_sampno")
        txtfields(2).Text = rs3("brokercode")
        
     End If
     Set LABRS = New Recordset
     
     'LABRS.Open "SELECT STATION_NAME,A.STATE_CODE,NAME FROM RM_SAMPLE A,IG_STATE B WHERE A.STATE_CODE*=B.STATE_CODE AND SNO='" & ksllist1.Code & "'", db, adOpenStatic, adLockBatchOptimistic
     LABRS.Open "SELECT a.areaname,a.station,a.areacode,a.state FROM RM_area a ,rm_sample as b WHERE a.areacode=b.area_code ", DB, adOpenStatic, adLockBatchOptimistic
     Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
     Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
     
     Set rsa = New Recordset
     rsa.Open "select l_or_u  from rm_area where areacode='" & txtfields(3).Text & "'", DB, adOpenStatic
     If rsa.RecordCount > 0 Then
     If rsa(0) = "L" Then
        Option1.value = False
        Option2.value = True
        Option3.value = False
      ElseIf rsa(0) = "U" Then
        Option1.value = False
        Option2.value = False
        Option3.value = True
     ElseIf rsa(0) = "I" Then
        Option1.value = True
        Option2.value = False
        Option3.value = False
     End If
     End If
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(8).Text = ""
     'txtFields(0).SetFocus
     Combo3.SetFocus
     StatusBar1.Panels(2).Text = "Enter Order No"
     
Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KslList1.Code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        txtfields(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
        txtfields(1).Text = KslList1.Code
        Text1.Text = Trim(KslList1.Description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        txtfields(3).Text = ""
        Text3.Text = ""
     Else
        txtfields(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
     
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(2).SetFocus
     StatusBar1.Panels(2).Text = "Enter Agent Code"
     
Case "SLCODE"
     If KslList1.Code = txtfields(1).Text Then
        MsgBox "Agent Code must not be same as Supplier Code", vbInformation, head
        KslList1.SetFocus
     Else
        txtfields(2).Text = KslList1.Code
        Text2.Text = Trim(KslList1.Description)
        
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        txtfields(4).SetFocus
        StatusBar1.Panels(2).Text = "Enter Area Code"
   End If
Case "areacode"
     txtfields(3).Text = KslList1.Code
     Text3.Text = Trim(KslList1.Description)
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Set rsa = New Recordset
     rsa.Open "select station,state,L_or_U from rm_area where areacode='" & KslList1.Code & "'", DB, adOpenStatic
     If rsa.RecordCount > 0 Then
        Text11.Text = rsa(0)
        Text12.Text = rsa(1)
     End If
     
     If rsa("L_or_U") = "L" Then
        Option1.value = False
        Option2.value = True
        Option3.value = False
      ElseIf rsa("L_or_U") = "U" Then
        Option1.value = False
        Option2.value = False
        Option3.value = True
     ElseIf rsa("L_or_U") = "I" Then
        Option1.value = True
        Option2.value = False
        Option3.value = False
     End If
     
     
     
     
     Combo3.SetFocus
     StatusBar1.Panels(2).Text = "Enter Carrier Code"
Case "Code"
     
     txtfields(18).Text = KslList1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(19).SetFocus

Case "carcode"
     txtfields(10).Text = KslList1.Code
     txtfields(11).Text = KslList1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     StatusBar1.Panels(2).Text = "Enter Weighment Code"
    ' txtFields(14).SetFocus
     
Case "varcode"
     txtfields(4).Text = KslList1.Code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(3).SetFocus
Case "Colorcode"
     txtfields(25).Text = KslList1.Code
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
    txtfields(12).SetFocus
Case "mixgrpcd"
     txtfields(5).Text = KslList1.Code
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(18).SetFocus
     
     'BUTTON(9).SetFocus
     
Case "paymode"
     txtfields(8).Text = KslList1.Code
     Text4.Text = KslList1.Description
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(5).SetFocus
'   If opt = "mod" Or opt = "add" Then
Case "contno" '"cast(contno as varchar)"
     
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Opt = ""
     Set adoprimaryrs = New Recordset
     adoprimaryrs.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "' and contdt='" & Format(KslList1.Description, "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
     Opt = "mod"
     Call ENABLCONTLS
     Call bindcontls
     txtfields(0).Locked = True
     txtfields(0).Locked = True
        
Case "code"
    
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     txtfields(19).SetFocus
     StatusBar1.Panels(2).Text = "Enter Remarks Details"
 
    End Select
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True

End If

If Opt = "del" Then
   
   Buttonframe.Enabled = True
   Frame1.Visible = True
   Frame2.Visible = True
   Set adoprimaryrs = New Recordset
   adoprimaryrs.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,ordkgs,candyrate,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,sno,COLORCODE,PAYTERMS,CROPYEAR,PTY_CONTNO,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "' and contdt='" & Format(KslList1.Description, "yyyy/mm/dd") & "'", DB, adOpenStatic, adLockOptimistic
   Call ENABLCONTLS
   Call bindcontls
   BUTTON(9).Enabled = True
   BUTTON(9).SetFocus
End If
SSTab1.Visible = True



Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
MsgBox "Order Date must be earlier or equal to Processing date", vbInformation, head
Exit Sub
Else
MaskEdBox3.Text = DTPicker1.value
'txtFields(1).SetFocus
End If
End Sub

Private Sub Form_Load()

On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg

Call OpenConnection1
SSTab1.Tab = 0
iFlag = 0
Frame1.ZOrder
Frame2.ZOrder
BUTTON(9).Enabled = False


Set rstParameter = New Recordset

rstParameter.Open "Select SuppLotNoReqArrival,CentralizedOrder,SeasoncalcReq  from RM_PARAM", DB, adOpenStatic
If rstParameter!SuppLotNoReqArrival = "Y" Then
    lblSLNFrom.Visible = True
    lblSLNTo.Visible = True
    txtfields(40).Visible = True
    txtfields(41).Visible = True
Else
    lblSLNFrom.Visible = False
    lblSLNTo.Visible = False
    txtfields(40).Visible = False
    txtfields(41).Visible = False
End If

If rstParameter!SeasoncalcReq = "Y" Then
    txtfields(25).Visible = False
    txtfields(43).Visible = True
    Text14.Visible = True
Else
    txtfields(25).Visible = True
    txtfields(43).Visible = False
    Text14.Visible = False
End If

If rstParameter!CentralizedOrder = "Y" Then ChkCentralized.value = 1 Else ChkCentralized.value = 0

Combo9.ListIndex = 0


Call Query_mode
Call NEWFORM1(BUTTON, GSNO)
DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
DTPicker1.value = pdate
Frame1.Enabled = False
Frame2.Enabled = False
Frame6.Enabled = False
Frame10.Enabled = False
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim LABRS As Recordset

On Error GoTo adoPrimaryRS_MoveComplete_Error

On Error GoTo adoPrimaryRS_MoveComplete_Error

  StatusBar1.Panels(2).Text = "Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
''  On Error Resume Next
  
  If iFlag = 1 Then
     Exit Sub
    Else
  
  If adoprimaryrs.AbsolutePosition > 0 Then
  
    If Opt = "" Or Opt = " " Then
    
        Set RS11 = New Recordset
        If opt1 <> "mod" Then
            
            RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,(CASE WHEN  a.bbflag='B' THEN 'B'  ELSE ( CASE  WHEN  a.bbflag= 'H' THEN 'H'  ELSE (CASE  WHEN a. bbflag= 'R' THEN 'R'  END)  END)  END)""Pack Type"",a.ordkgs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"" ,Terms1,Terms1Days,Terms2,Terms2Days,Transport " & _
            " from rm_cont a,rm_var b   where contno='" & adoprimaryrs("contno") & "'  and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' and a.varcode=b.varcode ", DB, adOpenStatic, adLockBatchOptimistic
                        
            If RS11.RecordCount > 0 And adoprimaryrs("Tax_choice") = "COMMON" Then
                Call headertaxdisplay(1)
            Else
                Call headertaxdisplay(0)
            End If

        Else
            RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty, (CASE WHEN  a.bbflag='B' THEN 'B'  ELSE ( CASE  WHEN  a.bbflag= 'H' THEN 'H'  ELSE (CASE  WHEN a. bbflag= 'R' THEN 'R'  END)  END)  END)""Pack Type"", a.ordkgs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BEDper""BED %"",SEDPER""ED Cess %"",HSCessPer""HS Cess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"",Terms1,Terms1Days,Terms2,Terms2Days,TransPort " & _
            " from rm_cont a,rm_var b where contno='" & adoprimaryrs("contno") & "'  and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "' and a.varcode=b.varcode", DB, adOpenStatic, adLockBatchOptimistic

        End If
        
        If adoprimaryrs("TAX_CHOICE") = "COMMON" Then
            Option5.value = True
            SSTab1.TabEnabled(2) = True
        Else
            Option4.value = True
            SSTab1.TabEnabled(2) = False
        End If

        If adoprimaryrs("Finalweighment") = "S" Then
            Combo9.ListIndex = 1
        Else
            Combo9.ListIndex = 0
        End If
        
        If IsNull(adoprimaryrs("duedate")) = True Then
            MaskEdBox2.Mask = "##/##/####"
            MaskEdBox2.Text = "__/__/____"
        End If
        
        Set LABRS = New Recordset
        LABRS.Open "SELECT isnull(station,'')station,isnull(State,'')state FROM RM_area WHERE areacode= '" & adoprimaryrs("areacode") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If LABRS.RecordCount > 0 Then
            Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
            Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
        Else
            Text11.Text = ""
            Text12.Text = ""
        End If
        
        Set DataGrid1.DataSource = RS11
        If opt1 = "mod" Then
            If RS11.RecordCount > 0 Then
                RS11.MoveFirst
            End If

            For i = 1 To RS11.RecordCount
                If DataGrid1.Columns(1).Text = "" Then
                    RS11.Delete adAffectCurrent
                End If
                
                RS11.MoveNext
            Next
        End If
        
        If opt1 = "mod" Then
              If RS11.RecordCount > 0 Then
                   RS11.MoveFirst
                   Combo6.clear
                 While Not RS11.EOF
                    Combo6.AddItem RS11("Variety Code")
                    RS11.MoveNext
                 Wend
                   RS11.MoveFirst
                  Combo6.Text = RS11("Variety Code")
               End If
        End If
        
        Call vargridalign
       
        If IsNull(adoprimaryrs("contperson")) = False Then
            Text7.Text = adoprimaryrs("contperson")
        Else
            Text7.Text = ""
        End If
        
        If IsNull(adoprimaryrs("rateunit")) = False Then
            Combo5.clear
            Combo5.AddItem adoprimaryrs("rateunit")
            Combo5.ListIndex = 0
               
        End If
        
        
        If IsNull(adoprimaryrs("arrivaltype")) = False Then
                If adoprimaryrs("arrivaltype") = "K" Then
                    atype = "K-KgsWise"
                Else
                    atype = "P-PackWise"
                End If
            
        Else
                 atype = "P-PackWise"
        End If
        
        Combo7.clear
        Combo7.AddItem atype
        Combo7.Text = atype
        
        
               
        Set rsa = New Recordset
        rsa.Open "select aname from rm_acceptance where code='" & adoprimaryrs("acceptance") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(18).Text = adoprimaryrs("acceptance")
            txtfields(26).Text = rsa("aname")
        Else
            txtfields(18).Text = ""
            txtfields(26).Text = ""
        End If
         
        Set rsa = New Recordset
        rsa.Open "select * from rm_mixgrp where mixgrpcd='" & adoprimaryrs("cntcode") & "'", DB, adOpenStatic
         
        If rsa.RecordCount > 0 Then
            txtfields(5).Text = rsa("mixgrpcd")
            Text10.Text = rsa("mixgrpname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd where slcode='" & adoprimaryrs("deladd") & "'", DB, adOpenStatic
        
        If rsa.RecordCount > 0 Then
            txtfields(22).Text = rsa("slcode")
            Text6.Text = rsa("slname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_delivery where delcode='" & adoprimaryrs("dlytype") & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(20).Text = rsa(0)
            txtdeldesc.Text = rsa(1)
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from fa_slmas where slcode='" & adoprimaryrs("brkcd") & "'", DB, adOpenStatic
        
        If rsa.RecordCount > 0 Then
            txtfields(2).Text = rsa("slcode")
            Text2.Text = rsa("slname")
        End If
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_billadd where slcode='" & IIf(IsNull(adoprimaryrs("billadd")), " ", adoprimaryrs("billadd")) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(21).Text = rsa(0)
            Text5.Text = rsa(1)
        Else
            Text5.Text = ""
        End If
        
        If adoprimaryrs("im_ind") = "I" Then
           Option3.value = True
        ElseIf adoprimaryrs("im_ind") = "L" Then
           Option2.value = True
        ElseIf adoprimaryrs("im_ind") = "U" Then
           Option1.value = True
        End If
            
        
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd where slcode='" & IIf(IsNull(adoprimaryrs("DELadd")), "", adoprimaryrs("DELadd")) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            txtfields(22).Text = rsa(0)
            Text6.Text = rsa(1)
        Else
            Text6.Text = ""
        End If
        Call flexgalign
        Set Rs = New Recordset
        Rs.Open "select deldate,qty,varcode,slname,instruction from rm_delsched a,rm_deladd b WHERE a.deladd=b.slcode and CONTNO='" & adoprimaryrs("CONTNO") & "' and contdate='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        i = 1
        
        For K = Flexg1.Rows To 1 Step -1
            'On Error Resume Next
            If K <> 1 Then
                Flexg1.RemoveItem K
            End If
        Next
        
        While Not Rs.EOF
            
            Flexg1.AddItem ""
            Flexg1.TextMatrix(i, 1) = Rs("deldate")
            Flexg1.TextMatrix(i, 2) = Rs("qty")
            Flexg1.TextMatrix(i, 3) = Rs("slname")
            Flexg1.TextMatrix(i, 4) = Rs("varcode")
            Flexg1.TextMatrix(i, 5) = Rs("instruction")
            i = i + 1
            Rs.MoveNext
            Text7.Text = "'"
            
        Wend
                
      End If
      
  End If
  iFlag = 1
End If
  

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmContractoutsam", vbInformation, head

End Sub
Public Sub Query_mode()
On Error GoTo query_mode_Error

On Error GoTo er1

Call flexgalign
Combo6.clear
Text8.Text = ""
Text9.Text = ""
Set adoprimaryrs = New Recordset
adoprimaryrs.Open "select divcode,CONVERT(varchar(10),contno)AS CONTNO,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer,Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont where divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt asc,CONVERT(varchar(10),contno) asc ", DB, adOpenStatic, adLockBatchOptimistic
'adoPrimaryRS.Open "select  divcode,CONVERT(varchar(10),contno)AS CONTNO,contdt,supcd,brkcd,areacode,carcode,cntcode,dlytype,paymode,arrivaltype,salcnfno,indentno,duedate,weignment,im_ind,godown,COLORCODE,PAYTERMS,CROPYEAR,acceptance,carcode,plotno,prno,pressmarkno,rateunit,remarks,billadd,deladd,contperson,STAPLE,season,MILLREFNO,isnull(tax_choice,'SINGLE')TAX_CHOICE,CreditDays,InterestPer,SUPPLIERLOTNOFROM,SUPPLIERLOTNOTO,Finalweighment,Prefix,purtype,CommPer from rm_cont where divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt DESC,CONVERT(varchar(10),contno) dESC", db, adOpenStatic, adLockBatchOptimistic
If adoprimaryrs.RecordCount = 0 Then
    MsgBox " No Records Found", vbInformation, head
    Dim TX As TextBox
    For Each TX In Me.txtfields
       TX.Text = ""
    Next

    Set RS11 = New Recordset
    RS11.Open "select a.sno""Mill Sample No."",a.varcode""Variety Code"",b.varname,a.ordqty,a.BBFLAG""Pack Type"",a.OrdkGs,a.candyrate,a.pty_contno""Supplier Sample No."",CashDisPer""Cash Dis %"",TradeDisPer""Trade Dis %"",BedPer""BED %"",SEDPER""Edcess %"",HsCessPer""HSCess %"",CessPer""Cess %"",Tax_Code""Tax Code"",TaxPer""Tax %"",OthTaxPer""Other Tax %"",InsPer""Ins %"",Terms1,Terms1Days,Terms2,Terms2Days,TransPort from rm_cont a,rm_var b   where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Set DataGrid1.DataSource = RS11
        
    Call Norecfound(BUTTON)
    Exit Sub
Else
    iFlag = 0
    adoprimaryrs.MoveLast
   
    Combo8.Locked = True
    Call bindcontls
End If



If adoprimaryrs.BOF Then
   MsgBox " No Records Found", vbInformation, head
End If

Call disablcontls

desc.Caption = "Query"
DATLAB.Caption = pdate
DataGrid1.Enabled = True
SSTab1.Tab = 0
 
  Opt = " "
  Screen.MousePointer = 0
  If adoprimaryrs.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
     Call NEWFORM1(BUTTON, GSNO)
  End If
  
  StatusBar1.Panels(2).Text = "Records : " & CStr(adoprimaryrs.RecordCount)
  Combo2.clear
  Set rs1 = New Recordset
  rs1.Open "select Deldesc from rm_delivery ", DB, adOpenStatic
  Do While rs1.EOF = False
    Combo2.AddItem rs1(0)
    rs1.MoveNext
  Loop
  
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
DataGrid1.AllowUpdate = True
DataGrid1.AllowArrows = True
DataGrid1.Enabled = True
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmContractoutsam", vbInformation, head

Screen.MousePointer = 0
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error GoTo bindcontls_Error
                
On Error Resume Next
Dim TX As TextBox
For Each TX In Me.txtfields
Set TX.DataSource = adoprimaryrs
Next
Set Combo3.DataSource = adoprimaryrs
Combo3.Text = adoprimaryrs("carcode")
Set Combo4.DataSource = adoprimaryrs
Combo4.Text = adoprimaryrs("weignment")
txtfields(34).Text = adoprimaryrs("Tax Code")
txtfields(28).Text = adoprimaryrs("Cash Dis %")
txtfields(29).Text = adoprimaryrs("Trade Dis %")
txtfields(30).Text = adoprimaryrs("BED %")
txtfields(31).Text = adoprimaryrs("SED %")
txtfields(32).Text = adoprimaryrs("HSCess %")
txtfields(33).Text = adoprimaryrs("Cess %")
txtfields(35).Text = adoprimaryrs("Tax %")
txtfields(36).Text = adoprimaryrs("Other Tax %")
txtfields(37).Text = adoprimaryrs("Ins %")
txtfields(37).Text = adoprimaryrs("commper")
Combo5.clear
Set rsrate = New Recordset
Set MaskEdBox2.DataSource = adoprimaryrs
rsrate.Open "select * from rm_rateunit", DB, adOpenStatic
While Not rsrate.EOF
    Combo5.AddItem rsrate("unitname")
    rsrate.MoveNext
Wend

Combo5.ListIndex = 0
Combo5.Text = adoprimaryrs("rateunit")


Set Text7.DataSource = adoprimaryrs

If IsNull(adoprimaryrs("contdt")) = False Or adoprimaryrs("contdt") = "" Then
    MaskEdBox3.Text = Format(adoprimaryrs("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If
If adoprimaryrs("IM_IND") = "I" Then
    Option2.value = False
    Option1.value = False
    Option3.value = True
ElseIf adoprimaryrs("IM_IND") = "L" Then
    Option1.value = False
    Option2.value = True
    Option3.value = False
ElseIf adoprimaryrs("IM_IND") = "U" Then
    Option1.value = True
    Option2.value = False
    Option3.value = False
ElseIf adoprimaryrs("IM_IND") = "g" Then
    Option1.value = False
    Option2.value = True
    Option3.value = False
Else
    Option1.value = False
    Option2.value = False
    Option3.value = True
End If
DataGrid1.Enabled = True
DataGrid1.AllowRowSizing = True
DataGrid1.AllowUpdate = True


Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
On Error GoTo ENABLCONTLS_Error

For i = 1 To 9
    txtfields(i).Locked = False
Next

DTPicker1.Enabled = True
DTPicker1.maxdate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoprimaryrs("contdt")) = False Then
    MaskEdBox3.Text = pdate 'Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If
txtfields(1).Locked = False
If Opt = "add" Then
    MaskEdBox3.Text = pdate
ElseIf Opt = "mod" Then
    txtfields(1).Locked = True
End If

Option4.Enabled = True
Option5.Enabled = True

Combo1.Locked = False
Combo2.Locked = False
Combo3.Locked = False
Combo4.Locked = False
Combo9.Locked = False
DTPicker1.Enabled = True
MaskEdBox1.Enabled = True
Text9.Enabled = True
deliveryadd.Enabled = True
Frame4.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
Dim i As Integer
On Error GoTo disablcontls_Error

For i = 0 To 9
txtfields(i).Locked = True
Next
MaskEdBox3.Enabled = False
Combo1.Locked = True
Combo2.Locked = True
DTPicker1.Enabled = False
Text1.Locked = True
Text2.Locked = True
Text3.Locked = True
Combo3.Locked = True
Combo4.Locked = True
Combo9.Locked = True
MaskEdBox1.Enabled = False

Option4.Enabled = False
Option5.Enabled = False
Text9.Enabled = False
deliveryadd.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Change()
On Error GoTo MaskEdBox1_Change_Error

Text8.Text = MaskEdBox1.Text

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox1_GotFocus()
On Error GoTo MaskEdBox1_GotFocus_Error

MaskEdBox1.BackColor = "&HC0FFC0"     'green
StatusBar1.Panels(2).Text = "Enter a Delivery Date"

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox2_GotFocus()
On Error GoTo MaskEdBox2_GotFocus_Error

MaskEdBox2.BackColor = "&HC0FFC0"
StatusBar1.Panels(2).Text = "Enter a Due Date"

Exit Sub
MaskEdBox2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox2_LostFocus()
On Error GoTo MaskEdBox2_LostFocus_Error

StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
        If IsDate(MaskEdBox2.Text) = False And MaskEdBox2.Text <> "__/__/____" Then
            MsgBox "Please enter valid date", vbInformation, head
            MaskEdBox2.Mask = "##/##/####"
            MaskEdBox2.Text = "__/__/____"
            MaskEdBox2.SetFocus
            Exit Sub
        End If
        If MaskEdBox2.Text <> "__/__/____" Then
            If CDate(MaskEdBox2.Text) < CDate(MaskEdBox3.Text) Then
                MsgBox "Due Date must be after or equal to Order Date", vbInformation, head
                MaskEdBox2.Mask = "##/##/####"
                MaskEdBox2.Text = "__/__/____"
                MaskEdBox2.SetFocus
                Exit Sub
            End If
        End If
    End If
    MaskEdBox2.BackColor = "&HffFFff"
    StatusBar1.Panels(2).Text = "Enter a Due Date"

Exit Sub
MaskEdBox2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_GotFocus()
On Error GoTo MaskEdBox3_GotFocus_Error

MaskEdBox3.BackColor = "&HC0FFC0"     'green
StatusBar1.Panels(2).Text = "Enter a Date"

Exit Sub
MaskEdBox3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox3_KeyDown_Error

If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
    End If

Exit Sub
MaskEdBox3_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_LostFocus()
On Error GoTo MaskEdBox3_LostFocus_Error

MaskEdBox3.BackColor = "&H80000005"        'white
 If (MaskEdBox3.Enabled) And Not (Opt = "qry" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox3.Text)) Then
        MsgBox ("Please enter valid date"), vbInformation, head
        MaskEdBox3.SetFocus
   
     End If
     
If MaskEdBox3.Text <> "__/__/____" Then
    If Not (CDate(MaskEdBox3.Text) >= yfdate And CDate(MaskEdBox3.Text) <= pdate) Then
    MsgBox "Order Date must be earlier or equal to Processing date", vbInformation, head
    MaskEdBox3.Text = "__/__/____"
    MaskEdBox3.SetFocus
    Exit Sub
    Else
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= '" & val(txtfields(0).Text) & "'  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number and Date already Defined", vbInformation, head
         txtfields(0).Text = ""
         txtfields(0).SetFocus
         Exit Sub
        End If
        
    End If
    End If
End If

Exit Sub
MaskEdBox3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Option1_LostFocus()
'Option1.BackColor = " &H80000005 " '' white
On Error GoTo Option1_LostFocus_Error

     StatusBar1.Panels(2).Text = "Enter Due Date"

Exit Sub
Option1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option2_LostFocus()

On Error GoTo Option2_LostFocus_Error

     StatusBar1.Panels(2).Text = "Enter Due Date"

Exit Sub
Option2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

Frame10.Enabled = False
If Option4.value = True Then SSTab1.TabEnabled(2) = False Else SSTab1.TabEnabled(2) = True
     If Opt = "add" Or Opt = "mod" Then
          If Option4.value = True Then
              DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
              txtfields(34).Text = ""
              txtfields(35).Text = ""
              
          Else
              DataGrid1.Columns(14).Text = ""
              DataGrid1.Columns(15).Text = ""
              txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
          End If
     End If
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

Frame10.Enabled = True
If Option4.value = True Then SSTab1.TabEnabled(2) = False Else SSTab1.TabEnabled(2) = True
     If Opt = "add" Or Opt = "mod" Then
          If Option4.value = True Then
              DataGrid1.Columns(14).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              DataGrid1.Columns(15).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
              txtfields(34).Text = ""
              txtfields(35).Text = ""
          Else
              DataGrid1.Columns(14).Text = ""
              DataGrid1.Columns(15).Text = ""
              txtfields(34).Text = getMasterName("Tax_code", "FA_Slmas", "Slcode", txtfields(1).Text)
              txtfields(35).Text = getMasterName("ST_per", "IG_Tax", "tax_Code", DataGrid1.Columns(14).Text)
          End If
     End If
Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option6_Click()
On Error GoTo Option6_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command1.Visible = False

Exit Sub
Option6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option6_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option6_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option6_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    cmd_report.Visible = False
    SSTab1.Enabled = True
    UserFooter1.Visible = False
    Buttonframe.Enabled = True
End If

Exit Sub
Option6_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option6_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_Click()
On Error GoTo Option7_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    cmd_report.Visible = True

Exit Sub
Option7_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_Click of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option7_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option7_KeyDown_Error

If KeyCode = vbKeyEscape Then
    Frame11.Visible = False
    UserFooter1.Visible = False
    cmd_report.Visible = True
    SSTab1.Enabled = True
    Buttonframe.Enabled = True
End If

Exit Sub
Option7_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option7_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
    Frame6.Enabled = True
End Sub

Private Sub SSTab1_GotFocus()
On Error GoTo SSTab1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Option4.value = True Then
    End If
End If

Exit Sub
SSTab1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
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
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error

Text1.BackColor = "&HC0FFC0"     ''green

Exit Sub
Text1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_LostFocus()
On Error GoTo Text1_LostFocus_Error

Text1.BackColor = " &H80000005"      ''white

Exit Sub
Text1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub text2_GotFocus()
On Error GoTo text2_GotFocus_Error

Text2.BackColor = "&HC0FFC0"        ''green

Exit Sub
text2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure text2_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text2_LostFocus()
On Error GoTo Text2_LostFocus_Error

Text2.BackColor = " &H80000005"        ''white

Exit Sub
Text2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text3_GotFocus()
On Error GoTo Text3_GotFocus_Error

Text3.BackColor = "&HC0FFC0"     ''green

Exit Sub
Text3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_LostFocus()
On Error GoTo Text3_LostFocus_Error

Text3.BackColor = " &H80000005"      ''white

Exit Sub
Text3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text4_GotFocus()
On Error GoTo Text4_GotFocus_Error

Text4.BackColor = "&HE0E0E0"      'grey

Exit Sub
Text4_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text4_LostFocus()
On Error GoTo Text4_LostFocus_Error

Text4.BackColor = "&HE0E0E0"     'grey

Exit Sub
Text4_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

    If Opt = "add" Or Opt = "mod" Then
        If MaskEdBox1.Enabled = False Then Exit Sub
        If IsDate(MaskEdBox1.Text) = False Then
            MaskEdBox1.Text = "__/__/____"
            MsgBox "Please enter valid date"
            MaskEdBox1.Text = pdate
            Exit Sub
        End If
        If CDate(MaskEdBox1.Text) < CDate(MaskEdBox3.Text) Then
            MsgBox "Delivery date should be greater than Contract Date", vbInformation, head
            MaskEdBox1.SetFocus
            Exit Sub
        End If
        Text9.SetFocus
        StatusBar1.Panels(2).Text = ""
    End If
    MaskEdBox1.BackColor = &HFFFFFF

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_GotFocus()
On Error GoTo Text7_GotFocus_Error

Text7.BackColor = &HC0FFC0
StatusBar1.Panels(2).Text = "Enter a contact person, Maximum 50 Characters"

Exit Sub
Text7_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_LostFocus()
On Error GoTo Text7_LostFocus_Error

Text7.BackColor = &HFFFFFF

Exit Sub
Text7_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text8_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
Text8_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text8_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text9_GotFocus()
On Error GoTo Text9_GotFocus_Error

Text9.BackColor = &HC0FFC0
StatusBar1.Panels(2).Text = "Enter Maximum of 10 Integers"
'deliveryadd.SetFocus

Exit Sub
Text9_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text9_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Text9_KeyDown_Error

If Opt = "mod" Or Opt = "add" Or Opt = "del" Then
 If KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    End If
End If

Exit Sub
Text9_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text9_KeyPress(KeyAscii As Integer)
On Error GoTo Text9_KeyPress_Error

tonum Text9, 10, KeyAscii
ToNumberAssign Text9, 8, KeyAscii, 8, 0

Exit Sub
Text9_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text9_LostFocus()
On Error GoTo Text9_LostFocus_Error

Text9.BackColor = &HFFFFFF
StatusBar1.Panels(2).Text = ""
deliveryadd.SetFocus
Exit Sub
Text9_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text9_LostFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtcontno_Change()
On Error GoTo txtcontno_Change_Error

If Len(txtcontno.Text) = 0 Then
Command1.Enabled = False
StatusBar1.Panels(2).Text = ""
Else
Command1.Enabled = True
End If

Exit Sub
txtcontno_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtcontno_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtcontno_KeyPress(KeyAscii As Integer)
Call tonum(txtcontno, 4, KeyAscii)
End Sub

Private Sub txtfields_Change(Index As Integer)

On Error GoTo txtfields_Change_Error

Select Case Index
 Case 43
    'Slname
   Set Rs = New Recordset
   Rs.Open "select seaname from rm_season where seacode = '" & txtfields(43).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text14.Text = Rs(0)
   Else
     Text14.Text = ""
   End If

Case 1
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(1).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   Else
     Text1.Text = ""
     txtfields(2).Text = ""
    Text2.Text = ""
    txtfields(13).Text = ""
    txtfields(3).Text = ""
    Text11.Text = ""
    Text12.Text = ""
    Text3.Text = ""
   End If
 Case 2
    'Slname
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   Else
     Text2.Text = ""
   End If
 Case 3
    'Area
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & txtfields(3).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   Else
     Text3.Text = ""
   End If
Case 4 'Ravi
    'Variety
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode = '" & txtfields(4).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     txtfields(15).Text = Rs(0)
   Else
     txtfields(15).Text = ""
   End If
Case 25
   'Color
   Set Rs = New Recordset
   Rs.Open "select colorname from rm_color where colorcode = '" & txtfields(25).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     txtfields(24).Text = Rs(0)
   Else
     txtfields(24).Text = ""
   End If

Case 10
    Set Rs = New Recordset
    Rs.Open "select carcode,carname from po_car where carcode='" & txtfields(10).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    txtfields(10).Text = Rs(0)
    txtfields(11).Text = Rs(1)
    End If
 
 Case 7
 If Opt = "" Or Opt = " " Or Opt = "qry" Then
 txtfields(7).Text = Format(txtfields(7).Text, "#0.00")
 End If
 
Case 8
    
    
    Set Rs = New Recordset
    Rs.Open "select paymode,paydesc from rm_pmode where paymode='" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        Text4.Text = Rs(1)
    Else
        Text4.Text = ""
    End If
   End Select
   
    If Opt <> "mod" And Opt <> "add" Then
        Select Case Index
            Case 36, 32, 28, 29, 33, 37, 30, 34, 35, 31
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.00")
            Case 37
                txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.000")
            Case 42
                Text13.Text = getMasterName("Purdesc", "rm_purtype", "purtype", Trim(txtfields(42).Text))
        End Select
    End If
    
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
   
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtFields_GotFocus_Error

For Each oText In Me.txtfields
oText.BackColor = "&H80000005"   'white
Next
txtfields(Index).BackColor = "&HC0FFC0"   'green
'txtfields(1).BackColor = "&H00E0E0E0 "  'grey
'txtfields(2).BackColor = "&H00E0E0E0"  'grey
'txtfields(4).BackColor = "&H00E0E0E0"  'grey
'Txtfields(13).BackColor = "&H00E0E0E0"  'grey
'Txtfields(15).BackColor = "&H00E0E0E0"  'grey
'Txtfields(3).BackColor = "&H00E0E0E0"  'grey
If Opt = "add" Or Opt = "mod" Then
'If Frame3.Visible = fasle Then
    If Index = 0 Then
        StatusBar1.Panels(2).Text = "Enter a Order No."
    ElseIf Index = 1 Then
        StatusBar1.Panels(2).Text = "Enter a Supplier Code"
    ElseIf Index = 2 Then
        StatusBar1.Panels(2).Text = "Enter a Agent Code"
    ElseIf Index = 3 Then
        StatusBar1.Panels(2).Text = "Enter a Area Code"
    ElseIf Index = 4 Then
        StatusBar1.Panels(2).Text = "Enter Veriety"
    ElseIf Index = 5 Then
        StatusBar1.Panels(2).Text = "Enter Mixing Group"
    ElseIf Index = 6 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 4 Integers"
    ElseIf Index = 7 Then
        StatusBar1.Panels(2).Text = "Enter Maximum 7 Integers with 2 Decimal Places"
    ElseIf Index = 8 Then
        StatusBar1.Panels(2).Text = "Enter Payment Mode"
    ElseIf Index = 9 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
    ElseIf Index = 12 Then
        StatusBar1.Panels(2).Text = "Enter a Payment Terms"
    ElseIf Index = 13 Then
        StatusBar1.Panels(2).Text = "Enter a Crop year"
    ElseIf Index = 18 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 35 Characters"
    ElseIf Index = 19 Then
        StatusBar1.Panels(2).Text = "Enter a Remarks, Maximum of 250 Characters"
    ElseIf Index = 20 Then
        StatusBar1.Panels(2).Text = "Enter a Delivery Code"
    ElseIf Index = 21 Then
        StatusBar1.Panels(2).Text = "Enter a Bill Address"
    ElseIf Index = 22 Then
        StatusBar1.Panels(2).Text = "Enter a Delivery Address"
    ElseIf Index = 23 Then
        StatusBar1.Panels(2).Text = "Enter a Staple"
    ElseIf Index = 25 Then
        StatusBar1.Panels(2).Text = "Enter a Season"
    ElseIf Index = 27 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
    ElseIf Index = 28 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 29 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 30 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 31 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 32 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 33 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 34 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 35 Then
        StatusBar1.Panels(2).Text = "Enter a Tax code"
    ElseIf Index = 36 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 37 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 2 Integers with 4 Decimals"
    ElseIf Index = 40 Then
        StatusBar1.Panels(2).Text = "Enter Supplier Lot Number, Maximum 7 Integers"
    ElseIf Index = 41 Then
        StatusBar1.Panels(2).Text = "Enter Supplier Lot Number, Maximum 7 Integers"
    End If

If Index = 13 And wosample <> "N" Then
        If DataGrid1.Columns(1).Text = "" Then
                DataGrid1.Row = 0
                DataGrid1.Col = 0
                DataGrid1.SetFocus
                Exit Sub
        End If
End If
If Index = 28 Then
    SSTab1.Tab = 2
End If




End If


'End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
    End If
    If Index = 24 Then
        Combo5.SetFocus
    End If
    
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

    If Opt = "del" Or Opt = "" Or Opt = " " Then
        KeyAscii = 0
        Beep
    End If

    Select Case Index
    Case 13
       Call ToNumberYear(txtfields(Index), 9, KeyAscii)
    Case 1
        ToUpCase txtfields(Index), KeyAscii
    Case 2
        ToUpCase txtfields(Index), KeyAscii
    Case 3
        ToUpCase txtfields(Index), KeyAscii
    Case 4
        ToUpCase txtfields(Index), KeyAscii
    Case 7, 40, 41
        tonum txtfields(Index), 7, KeyAscii
    Case 16, 17, 21, 22, 26
        tonum txtfields(Index), 5, KeyAscii
    Case 6
        ToNumber txtfields(Index), KeyAscii
    Case 37
        Call ToNumberAssign(txtfields(37), 3, KeyAscii, 3, 3)
    Case 28, 29, 30, 31, 32, 33, 36, 39, 44
        tonum txtfields(Index), 2, KeyAscii, 2
    Case 20
        ToAlphaNumber txtfields(Index), 1, KeyAscii
        Call ToUpCase(txtfields(Index), KeyAscii)
    Case 38
        Call ToNumber1(txtfields(Index), 3, KeyAscii)
    Case 23
        ToAlphaNumberOnly txtfields(Index), 10, KeyAscii
    End Select

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub Query1(tol As Object)
    'This procedure for Query
On Error GoTo Query1_Error

     tol(0).Enabled = False  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     
     tol(4).Enabled = False  'QUERY
     tol(5).Enabled = False   'FIRST
     tol(6).Enabled = False  'NEXT
     tol(7).Enabled = False   'PREVIOUS
     tol(8).Enabled = False   'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT

Exit Sub
Query1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Query1 of Form FrmContractoutsam", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
Dim oText As TextBox

On Error GoTo txtfields_LostFocus_Error

On Error GoTo txtfields_LostFocus_Error

For Each oText In Me.txtfields
oText.BackColor = "&H80000005"  'white
Next


txtfields(Index).BackColor = "&HFFFFFF"   'green
txtfields(1).BackColor = "&H00E0E0E0"  'grey
txtfields(2).BackColor = "&H00E0E0E0"  'grey
txtfields(4).BackColor = "&H00E0E0E0"  'grey
txtfields(13).BackColor = "&H00E0E0E0"  'grey
txtfields(15).BackColor = "&H00E0E0E0"  'grey
txtfields(3).BackColor = "&H00E0E0E0"  'grey
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 40
           Set rstParameter = New Recordset
           rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
           If rstParameter!SuppLotNoReqArrival = "Y" Then
                If val(txtfields(40).Text) = 0 Then
                    MsgBox "Supplier Lot No. Should not be empty", vbInformation, head
                    txtfields(40).SetFocus
                    Exit Sub
                Else
                    If val(txtfields(41).Text) > 0 Then
                        If val(txtfields(40).Text) > val(txtfields(41).Text) Then
                            MsgBox "Supplier From Lot No. should not be greater than To Lot No.", vbInformation, head
                            txtfields(40).SetFocus
                            Exit Sub
                        Else
                            txtfields(41).SetFocus
                            Exit Sub
                        End If
                    End If
                    txtfields(41).SetFocus
                    Exit Sub
               End If
                
                
           End If
     Case 41
           Set rstParameter = New Recordset
           rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
           If rstParameter!SuppLotNoReqArrival = "Y" Then
                If val(txtfields(41).Text) = 0 Then
                    MsgBox "Supplier Lot No. Should not be empty", vbInformation, head
                    txtfields(41).SetFocus
                    Exit Sub
                    
                Else
                    If val(txtfields(40).Text) > val(txtfields(41).Text) Then
                        MsgBox "Supplier To Lot No. should be greater than From Lot No..", vbInformation, head
                        txtfields(41).SetFocus
                        Exit Sub
                    Else
                    If wosample <> "N" Then
                        LookUp.clear = True
                        Frame1.Visible = True
                        Frame2.Visible = True
                        SSTab1.Tab = 1
                        Focus = ""
                        If sCR = "Y" Then
                            txtfields(38).SetFocus
                        Else
                            txtfields(20).SetFocus
                        End If
                        Exit Sub
                    Else
                        LookUp.clear = True
                        
                        DataGrid1.Col = 1
                        DataGrid1.Row = 0
                        DataGrid1.SetFocus
                        Exit Sub
                    End If

                    End If
                End If
                
           End If
          


        Case 19
                SSTab1.Tab = 1
                txtfields(21).SetFocus
                Exit Sub
        Case 21
            'If Record_Exists("rm_billadd") = False Then Exit Sub
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_billadd ", DB, adOpenStatic
            If rsa.RecordCount = 0 Then Exit Sub
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_billadd WHERE slcode='" & Trim(txtfields(21).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                Set Rs = New Recordset
                Rs.Open "Select ptypecotton from masterlen", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                    sup = Rs("ptypecotton")
                Else
                    sup = ""
                End If
                LookUp.clear = True
                LookUp.query = "select slcode""Code"",slname""Name"" from rm_billadd "
                LookUp.DefCol = "Name"
                LookUp.Caption = "Billing Address Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(21).Text = LookUp.Fields(0)
                    Text5.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                    Exit Sub
                End If
                LookUp.clear = True
         End If
        
        Case 7
          If Trim(txtfields(6).Text) = "" Then
                    MsgBox "Please enter Order Quantity", vbInformation, head
        
                    Cancel = True
                    txtfields(6).SetFocus
                     Exit Sub
           End If
           
        Case 20
        
            SSTab1.Tab = 1
            If Focus <> "Y" Then
                SSTab1.Tab = 1
                txtfields(20).SetFocus
            End If
            
            Exit Sub
        Case 0
            If txtfields(0).Text <> "" Then
                txtfields(1).SetFocus
            End If
        Case 13
            If Opt = "add" Or Opt = "mod" Then
            If val(txtfields(13).Text) > Year(pdate) Then
                MsgBox "Crop year must be earlier or equal to Processing year", vbInformation, head
                txtfields(13).Text = Year(pdate)
            End If
            If val(txtfields(13).Text) < 2000 Then    '2000 is hard coded
                MsgBox "Crop year must be after 2000 or equal to Processing year", vbInformation, head
                txtfields(13).Text = Year(pdate)
            End If
        End If
       Case 37
           BUTTON(9).Enabled = True
           BUTTON(9).SetFocus
 End Select
End If

If Index = 5 Then
            Set Rs = New Recordset
            Rs.Open "select MIXGRPCD,mixgrpname from RM_MIXGRP where MIXGRPCD = '" & Replace(txtfields(5).Text, "'", "''") & "'", DB, adOpenStatic, adLockBatchOptimistic
         
            If Rs.RecordCount > 0 Then
               txtfields(5).Text = Rs(0)
               Text10.Text = Rs(1)
            Else
                LookUp.clear = True
                LookUp.query = "select mixgrpcd""Mix Group Code"",mixgrpname""Mix Group Name"" from RM_MIXGRP "
                LookUp.DefCol = "Mix Group Name"
                LookUp.Caption = "MixGroup Listing"
                LookUp.ALIGN = "1800,4000"
        '        LookUp.Show vbModal
                focus1 = "Y"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(5).Text = LookUp.Fields(0)
                    Text10.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                Else
                    txtfields(5).Text = ""
                    Text10.Text = ""
                    txtfields(5).SetFocus
                End If
            End If
            Set rstParameter = New Recordset
            rstParameter.Open "Select SuppLotNoReqArrival from RM_PARAM", DB, adOpenStatic
            If rstParameter!SuppLotNoReqArrival <> "Y" Then
            If wosample <> "N" Then
                LookUp.clear = True
                Frame1.Visible = True
                Frame2.Visible = True
                SSTab1.Tab = 1
                Focus = ""
                If txtfields(38).Enabled = True Then txtfields(38).SetFocus
                Exit Sub
            Else
                LookUp.clear = True
                
                DataGrid1.Col = 1
                DataGrid1.Row = 0
                DataGrid1.SetFocus
                Exit Sub
            End If
            
            End If
           
           

End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmContractoutsam", vbInformation, head

End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then

Select Case Index

Case 28, 29, 30, 31, 32, 33, 34, 35, 36, 37

        If Index = 34 Then
                Set RSV = New Recordset
                RSV.Open "SELECT * FROM IG_TAX WHERE TAXSTATUS='Y' AND TAX_CODE='" & txtfields(34).Text & "'", DB, adOpenStatic
                
                If RSV.RecordCount > 0 Then
                    txtfields(35).Text = RSV("ST_PER")
                Else
                    LookUp.clear = True
                    LookUp.query = "select Tax_Code""Tax Code"",Description""Tax Description"",ST_Per""ST %"",ITCper""ITC %"",ItcTaxStatus""ITC Tax Status"" from ig_tax where TAXSTATUS='Y'"
                    LookUp.DefCol = "Tax Description"
                    LookUp.Caption = "Tax Listing"
                    LookUp.ALIGN = "1500,3000,1500,1500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then

                        txtfields(34).Text = LookUp.Fields(0)
                        txtfields(35).Text = LookUp.Fields(2)
                        LookUp.clear = True
                        txtfields(36).SetFocus
                        
                    Else
                        txtfields(34).Text = ""
                        txtfields(35).Text = "0"
                        LookUp.clear = True
                        txtfields(36).SetFocus
                    End If
                End If
        End If
        Call HeaderTaxLoad
        
        If Index = 37 Then
            BUTTON(9).SetFocus
        End If
Case 42
        If Record_Exists("rm_purtype") = True Then
        Set RSV = New Recordset
        RSV.Open "SELECT * FROM rm_purtype WHERE purtype='" & Trim(txtfields(41).Text) & "'", DB, adOpenStatic
      
        If RSV.RecordCount > 0 Then
            Text13.Text = RSV("purdesc")
        Else
            LookUp.clear = True
            LookUp.query = "select purtype""Code"",purDesc""Description"",isnull(CRdays,'Y') as CRDays from RM_purtype"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Purchase Type Listing"
            LookUp.ALIGN = "2000,3000,0"
            
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(42).Text = LookUp.Fields(0)
                Text13.Text = LookUp.Fields(1)
                sCR = LookUp.Fields(2)
                If sCR <> "Y" Then
                    txtfields(39).Enabled = False
                    txtfields(38).Enabled = False
                    txtfields(38).Text = ""
                    txtfields(39).Text = ""
                    lblcrdays.Enabled = False
                    lblinterest.Enabled = False
                Else
                    txtfields(39).Enabled = True
                    txtfields(38).Enabled = True
                    lblcrdays.Enabled = True
                    lblinterest.Enabled = True
                End If
                LookUp.clear = True
                Combo7.SetFocus
            Else
                txtfields(41).Text = ""
                Text13.Text = ""
                LookUp.clear = True
                Combo7.SetFocus
            End If
        End If
        End If
Case 43

        If Record_Exists("rm_Season") = True Then
        Set RSV = New Recordset
        RSV.Open "SELECT * FROM rm_season WHERE seacode='" & Trim(txtfields(43).Text) & "'", DB, adOpenStatic
      
        If RSV.RecordCount > 0 Then
            Text13.Text = RSV("seaname")
        Else
            LookUp.clear = True
            LookUp.query = "select seacode""Season Code"",seaname""Season Name"" from RM_season"
            LookUp.DefCol = "season code"
            LookUp.Caption = "Season Listing"
            LookUp.ALIGN = "2000,3000"
            
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(43).Text = LookUp.Fields(0)
                Text14.Text = LookUp.Fields(1)
                LookUp.clear = True
                Combo3.SetFocus
            Else
                txtfields(43).Text = ""
                Text14.Text = ""
                LookUp.clear = True
                Combo3.SetFocus
            End If
        End If
        End If


Case 20
        If Record_Exists("rm_delivery") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select deldesc from rm_delivery WHERE delcode='" & Trim(txtfields(20).Text) & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            
            LookUp.clear = True
            LookUp.query = "select delcode""Delivery Type Code"",deldesc""Delivery Type Description"" from rm_delivery"
            LookUp.DefCol = "Delivery Type Description"
            LookUp.Caption = "Delivery Listing"
            LookUp.ALIGN = "2000,4000"
            Focus = "Y"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(20).Text = LookUp.Fields(0)
                txtdeldesc.Text = LookUp.Fields(1)
                LookUp.clear = True
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                SSTab1.Tab = 1
                txtfields(18).SetFocus

        Else
            txtfields(20).SetFocus
            Cancel = True
            Exit Sub
        End If
        LookUp.clear = True
        Else
            txtdeldesc.Text = rsa(0)
            SSTab1.Tab = 1
            Focus = "Y"
            txtfields(18).SetFocus
        End If
Case 22

        If Opt = "add" Then
        If RS11.RecordCount > 0 Then
            DataGrid1.Col = 2  'To avoid row col change validation
               RS11.MoveFirst
               Combo6.clear
             While Not RS11.EOF
                Combo6.AddItem RS11("variety code")
                RS11.MoveNext
            Wend
                RS11.MoveFirst
                Combo6.Text = RS11("variety code")
         End If
        End If

        Frame6.Enabled = True
        Combo6.Enabled = True
        Combo8.Enabled = True
        Text8.Enabled = True
        Text9.Enabled = True
        MaskEdBox1.Enabled = True
        deliveryadd.Enabled = True
        ''If Record_Exists("rm_deladd") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select * from rm_deladd ", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Combo6.Enabled = False
            Combo8.Enabled = False
            Text8.Enabled = False
            Text9.Enabled = False
            deliveryadd.Enabled = False
            MaskEdBox1.Enabled = False
            If Option4.value = True Then
                SSTab1.Enabled = False
                Buttonframe.Enabled = True
                BUTTON(9).SetFocus
                SSTab1.Enabled = True
                Exit Sub
            ElseIf Option5.value = True Then
                SSTab1.Tab = 2
                txtfields(28).SetFocus
                Exit Sub
            End If
            Exit Sub
        End If
            Set rsa = New Recordset
            rsa.Open "select SLNAME from rm_deladd WHERE slcode='" & Trim(txtfields(22).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                deliveryadd.Enabled = True
                LookUp.clear = True
                LookUp.query = "select slcode""Code"",slname""Supplier"" from rm_deladd where Slcode='" & Trim(txtfields(1).Text) & "'"
                LookUp.DefCol = "Supplier"
                LookUp.Caption = "Delivery Address Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(22).Text = LookUp.Fields(0)
                    Text6.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    Text7.SetFocus
                    Exit Sub
                Else
                    txtfields(22).Text = ""
                    Text6.Text = ""
                    Frame6.Enabled = False
                    'Txtfields(22).SetFocus
                    deliveryadd.Enabled = False
                    Combo6.Enabled = False
                    Combo8.Enabled = False
                    Text8.Enabled = False
                    Text9.Enabled = False
                    deliveryadd.Enabled = False
                    MaskEdBox1.Enabled = False
                    If Option4.value = True Then
                        SSTab1.Enabled = False
                        Buttonframe.Enabled = True
                        BUTTON(9).SetFocus
                        SSTab1.Enabled = True
                        Exit Sub
                    ElseIf Option5.value = True Then
                        SSTab1.Tab = 2
                        txtfields(28).SetFocus
                        Exit Sub
                    End If
                    Exit Sub
                End If
                LookUp.clear = True
            Else
                Text6.Text = rsa(0)
                Text7.SetFocus
            End If
Case 1

        If Opt = "add" Or Opt = "mod" Then
            'rsa.Open "select SLNAME from fa_slmas WHERE slcode ='" & Trim(txtfields(1).Text) & "'", DB, adOpenStatic
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sup = rs1("ptypecotton") & "%"
            Else
                sup = ""
            End If
            Set rsa = New Recordset
            rsa.Open "select SLNAME from fa_slmas WHERE slcode like '" & sup & "'", DB, adOpenStatic
            
            If rsa.RecordCount <> 0 Then
                LookUp.clear = True
                LookUp.query = "select slcode""Supplier Code"",slname""Supplier Name"", city""City"", BrCode""Agent Code"" from fa_slmas where slcode like '" & sup & "'"
                LookUp.DefCol = "Supplier Name"
                LookUp.Caption = "Supplier Listing"
                LookUp.ALIGN = "1450,4000,1800,1450"
                LookUp.Show vbModal
                
                If LookUp.Cancel = False Then
                    txtfields(1).Text = LookUp.Fields(0)
                    Text1.Text = LookUp.Fields(1)
                    txtfields(2).Text = IIf(IsNull(LookUp.Fields(3)) = True, "", LookUp.Fields(3))
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    
                    Set rsg = New Recordset
                    rsg.Open "select sno ,date ,slname ,varname  from rm_sample a,fa_slmas b,rm_var c where a.supcode=b.slcode and a.varcode=c.varcode and divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and SNO NOT IN(SELECT DISTINCT ISNULL(SNO,0) FROM RM_CONT) and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
                       
                    Exit Sub
                Else
                    
                    txtfields(1).Text = ""
                    Call BUTTON_Click(10)
                    txtfields(1).SetFocus
                    Exit Sub
                End If
                LookUp.clear = True
            End If
            End If
Case 0

        If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= '" & val(txtfields(0).Text) & "'  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number already Defined", vbInformation, head
         txtfields(0).Text = ""
         Cancel = True
         Exit Sub
        End If
        End If
Case 18
        If Record_Exists("rm_acceptance") = False Then Exit Sub
        Set rsa = New Recordset
        rsa.Open "select aname from rm_acceptance WHERE code='" & txtfields(18).Text & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            LookUp.clear = True
            LookUp.query = "select code""Authorized signatory Code"",aname""Authorized signatory Name"" from rm_acceptance where   divcode='" & Divcode & "'"
            LookUp.DefCol = "Authorized Signatory Code"
            LookUp.Caption = "Authorized Signatory Name Listing"
            LookUp.ALIGN = "2500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(18).Text = LookUp.Fields(0)
                txtfields(26).Text = LookUp.Fields(1)
                LookUp.clear = True
                Buttonframe.Enabled = True
                Frame1.Visible = True
                Frame2.Visible = True
                txtfields(19).TabStop = True
           Else
                txtfields(18).SetFocus
                Cancel = True
                Exit Sub
            End If
            LookUp.clear = True
        Else
            txtfields(26).Text = rsa(0)
            txtfields(19).SetFocus
        End If

Case 12
    
Case 6
   txtfields(6).SetFocus
Case 1
    If Trim(txtfields(1).Text) <> "" Then
    On Error GoTo X
    Set Rs = New Recordset
    Rs.Open "select slname from fa_slmas where slcode='" & txtfields(1).Text & "'", DB, adOpenStatic
    If Not Rs.EOF Then
        Text1.Text = Rs(0)
        Exit Sub
    End If
    End If
X:
            Set rs1 = New Recordset
            rs1.Open "SELECT PT_COTTON FROM PP_DIVMAS", DB, adOpenStatic
            'Label15.Caption = "Supplier List"
            StatusBar1.Panels(2).Text = "Select Sopplier From the List"
        
        
            KslList1.Visible = True
            KslList1.Caption = "Supplier List"
            KslList1.listfield1width = 5500
            KslList1.listfield2width = 3500
            KslList1.conn = connectstring
            KslList1.Table = "fa_slmas where slcode like 'C1%'"
            KslList1.listfield1 = "slname as SupplierName,city as City"
            KslList1.listfield2 = "slcode as SupplierCode"
                   
   
            Buttonframe.Enabled = False
           
            Exit Sub
    
    
Case 2
        StatusBar1.Panels(2).Text = "Select Brocker From the List"
    If Opt = "add" Or Opt = "mod" Then
        If wosample = "N" Then
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
            
            Set rsa = New Recordset
            rsa.Open "select SLNAME from fa_slmas WHERE slname = '" & txtfields(2).Text & "'", DB, adOpenStatic
            If rsa.RecordCount >= 0 Then
            
                LookUp.clear = True
                LookUp.query = "select slcode""Agent Code"",slname""Agent Name"", City from fa_slmas where slcode like '" & bro & "'"
                LookUp.DefCol = "Agent Name"
                LookUp.Caption = "Agent Listing"
                LookUp.ALIGN = "1500,4000, 2000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(2).Text = LookUp.Fields(0)
                    Text2.Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    txtfields(3).SetFocus
                    Exit Sub
                Else

                      txtfields(2).Text = ""
                      txtfields(3).SetFocus
                    Exit Sub
                End If
                LookUp.clear = True

            End If
        Else
        Set rsa = New Recordset
        rsa.Open "select brokercode,slname,a.state_code,area_code,station_name,crop_year from rm_sample a,fa_slmas b where a.brokercode=b.slcode and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
            If rsa.RecordCount > 1 Then
            
                LookUp.clear = True
                LookUp.query = "select brokercode""Agent Code"",slname ""Agent Name"" from rm_sample a,fa_slmas b where a.brokercode=b.slcode and supcode='" & txtfields(1).Text & "'"
                LookUp.DefCol = "Supplier"
                LookUp.Caption = "Agent Listing"
                LookUp.ALIGN = "1500,4000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(2).Text = LookUp.Fields(0)
                    Text2.Text = LookUp.Fields(1)
                    Set RS2 = New Recordset
                    RS2.Open "select brokercode,slname,area_code,a.state_code,station_name,crop_year from rm_sample a,fa_slmas b where a.brokercode=b.slcode and a.brokercode='" & LookUp.Fields(0) & "' and supcode='" & txtfields(1).Text & "'", DB, adOpenStatic
                    txtfields(13).Text = RS2("crop_year")
                    txtfields(3).Text = RS2("area_code")
                    Text11.Text = RS2("state_code")
                    Text12.Text = RS2("station_name")
                    LookUp.clear = True
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    txtfields(12).SetFocus
                    Exit Sub
                Else
                    Exit Sub
                End If
                LookUp.clear = True
            ElseIf rsa.RecordCount = 1 Then
                txtfields(2).Text = rsa("brokercode")
                Text2.Text = rsa("slname")
                txtfields(13).Text = rsa("crop_year")
                txtfields(3).Text = rsa("area_code")
                Text11.Text = rsa("state_code")
                Text12.Text = rsa("station_name")
                Text3.Text = rsa("station_name")
                txtfields(2).Locked = True
                Text2.Locked = True
                txtfields(13).Locked = True
                txtfields(3).Locked = True
                Text11.Locked = True
                Text12.Locked = True
                Text3.Locked = True
            End If
        End If
   End If

Case 3
 
 If Opt = "add" Then
    If wosample <> "N" Then
        Exit Sub
    End If
 End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select areacode from rm_area where areacode = '" & txtfields(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        If Rs.BOF Then
            StatusBar1.Panels(2).Text = "Select Area Code From the List"
            LookUp.clear = True
                LookUp.query = "select areacode""Area Code"",areaname""Area Name"", Station, State from rm_area"
                LookUp.DefCol = "Area Name"
                LookUp.Caption = "Area Listing"
                LookUp.ALIGN = "1400,3000,2000,2000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(3).Text = LookUp.Fields(0)
                    Text3.Text = LookUp.Fields(1)
                    Buttonframe.Enabled = True
                    Frame1.Visible = True
                    Frame2.Visible = True
                    
                    Set LABRS = New Recordset
                    LABRS.Open "SELECT * FROM RM_area WHERE areacode= '" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Text11.Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    Text12.Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    LookUp.clear = True
                    Exit Sub
                Else
                    txtfields(3).Text = ""
                    txtfields(3).SetFocus
                    Exit Sub
                End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select areaname from rm_area where areacode = '" & txtfields(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
            If rs1.BOF Then
                Text3.Text = ""
            Else
                Text3.Text = rs1(0)
            End If
        End If
    Else
        MsgBox "Please define the Area in Set Up!", vbInformation, head
        Exit Sub
    End If


Case 4
   
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_var", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select varcode from rm_var where varcode = '" & txtfields(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
   
    If Rs.BOF Then
        Label15.Caption = "Variety List"
        StatusBar1.Panels(2).Text = "Select a Variety code from the list"
        
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_var"
        KslList1.listfield1 = "varcode"
        KslList1.listfield2 = "varname"
        
        If KslList1.Code = "" Then
             MsgBox "Enter Values In RM_VAR Table", vbInformation, head
             Call BUTTON_Click(9)
        Else
           
        End If
    Else
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If

    
Case 8
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_pmode", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select paymode,paydesc from rm_pmode where paymode = '" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        Text4.Text = Rs(1)
    Else
    LookUp.clear = True
    LookUp.query = "SELECT paymode""Payment Mode"",paydesc""Payment Description"" FROM RM_PMODE"
    LookUp.Caption = "Payment Mode Listing"
    LookUp.DefCol = "Payment Description"
    LookUp.ALIGN = "1500,4000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    txtfields(8).Text = LookUp.Fields(0)
    Text4.Text = LookUp.Fields(1)
    
    Buttonframe.Enabled = True
    Frame1.Visible = True
    Frame2.Visible = True

    
    Else
        txtfields(8).Text = ""
        Exit Sub
    End If
    LookUp.clear = True
        'End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 14
     StatusBar1.Panels(2).Text = "Select Supplier type"
Case 23
     BUTTON(9).SetFocus: Exit Sub
End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form FrmContractoutsam", vbInformation, head
End Sub
Private Sub flexgalign()
    Flexg1.clear
    Flexg1.ColWidth(0) = 0
    Flexg1.ColWidth(1) = 1150
    Flexg1.ColWidth(2) = 800
    Flexg1.ColWidth(3) = 3000
    Flexg1.ColWidth(4) = 1500
    Flexg1.ColWidth(5) = 1500
     
    Flexg1.TextMatrix(0, 1) = "Delivery Date"
    Flexg1.TextMatrix(0, 2) = "Quantity"
    Flexg1.TextMatrix(0, 3) = "Address"
    Flexg1.TextMatrix(0, 4) = "Variety"
    Flexg1.TextMatrix(0, 5) = "Instruction"
    
    Flexg1.ColAlignment(2) = 7
End Sub
Private Sub vargridalign()
    DataGrid1.Columns(0).Caption = "Mill Sample No."
    DataGrid1.Columns(1).Caption = "Variety Code"
    DataGrid1.Columns(2).Caption = "Variety"
    DataGrid1.Columns(3).Caption = "Quantity"
    DataGrid1.Columns(4).Caption = "Pack Type"
    DataGrid1.Columns(5).Caption = "       Order Kgs"
    DataGrid1.Columns(6).Caption = "    Rate/Unit"
    DataGrid1.Columns(7).Caption = "Supplier Sample No."
    'Added
    
      

    DataGrid1.Columns(0).Width = 1100   'sno   ''sample no
    DataGrid1.Columns(1).Width = 1100   'varcode
    DataGrid1.Columns(2).Width = 1500   'varname
    DataGrid1.Columns(3).Width = 800   'OrdQty
    DataGrid1.Columns(4).Width = 800   'Pack Type
    DataGrid1.Columns(5).Width = 1200  'CandyRatre
    DataGrid1.Columns(6).Width = 1000   'PtyContno
    DataGrid1.Columns(7).Width = 1000  'Order Kgs
    DataGrid1.Columns(8).Width = 700   'cash Dis %
    DataGrid1.Columns(9).Width = 700   'Trade dis per
    DataGrid1.Columns(13).Width = 700   'Cess Per
    DataGrid1.Columns(14).Width = 700   'Tax code
    DataGrid1.Columns(15).Width = 700   'Tax Per
    DataGrid1.Columns(17).Width = 700   'Ins Per
   
    
    DataGrid1.Columns(0).Alignment = dbgRight
    DataGrid1.Columns(3).Alignment = dbgRight
    DataGrid1.Columns(4).Alignment = dbgLeft
    DataGrid1.Columns(5).Alignment = dbgRight
    DataGrid1.Columns(6).Alignment = dbgRight
    DataGrid1.Columns(7).Alignment = dbgRight
    
    For i = 8 To 13
        DataGrid1.Columns(i).Alignment = dbgRight
        DataGrid1.Columns(i).NumberFormat = "#0.00"
    Next
    For i = 15 To 16
        DataGrid1.Columns(i).Alignment = dbgRight
        DataGrid1.Columns(i).NumberFormat = "#0.00"
    Next
    
    If i = 17 Then DataGrid1.Columns(i).Alignment = dbgRight: DataGrid1.Columns(i).NumberFormat = "#0.000"
    
    DataGrid1.Columns(5).NumberFormat = "#0.000"
    DataGrid1.Columns(6).NumberFormat = "#0.0000"
    
    DataGrid1.Columns(7).Locked = True
    DataGrid1.Columns(15).Locked = True
    DataGrid1.Columns(3).Locked = False

       
    If opt1 = "mod" Then
        On Error Resume Next
    End If
   
End Sub


Private Sub HeaderTaxLoad()
If RS11.RecordCount > 0 Then

    opt1 = Opt
    Opt = ""
    RS11.MoveFirst
    
    While Not RS11.EOF
        If RS11(1) <> "" Then
              RS11("cash dis %") = val(txtfields(28).Text)
              RS11("trade dis %") = val(txtfields(29).Text)
              RS11("bed %") = val(txtfields(30).Text)
              RS11("ed cess %") = val(txtfields(31).Text)
              RS11("hs cess %") = val(txtfields(32).Text)
              RS11("cess %") = val(txtfields(33).Text)
              RS11("tax code") = txtfields(34).Text
              RS11("tax %") = val(txtfields(35).Text)
              RS11("other tax %") = val(txtfields(36).Text)
              RS11("ins %") = Format(val(txtfields(37).Text), "0.000")
        End If
        RS11.MoveNext
    Wend

    Opt = opt1
End If
End Sub
Private Sub headertaxdisplay(i As Integer)
    If RS11.RecordCount > 0 Then RS11.MoveFirst
    If i = 1 Then
        txtfields(28).Text = RS11("Cash dis %")
        txtfields(29).Text = RS11("Trade dis %")
        txtfields(30).Text = RS11("BED %")
        txtfields(31).Text = RS11("ED Cess %")
        txtfields(32).Text = RS11("HS Cess %")
        txtfields(33).Text = RS11("Cess %")
        txtfields(34).Text = RS11("Tax Code")
        txtfields(35).Text = RS11("Tax %")
        txtfields(36).Text = RS11("Other tax %")
        txtfields(37).Text = Format(RS11("Ins %"), "0.000")

    Else
        txtfields(28).Text = ""
        txtfields(29).Text = ""
        txtfields(30).Text = ""
        txtfields(31).Text = ""
        txtfields(32).Text = ""
        txtfields(33).Text = ""
        txtfields(34).Text = ""
        txtfields(35).Text = ""
        txtfields(36).Text = ""
        txtfields(37).Text = ""

    End If
End Sub

Private Sub ClearText()
txtfields(2).Text = ""
txtfields(13).Text = ""
txtfields(3).Text = ""
Text11.Text = ""
Text12.Text = ""
End Sub

Private Sub POPRINT()

SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False

Dim s1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
     Set Rs = New Recordset
     txt = MaskEdBox3.Text

    Rs.Open "select a.*,slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc from rm_cont a,fa_slmas b,po_car c,rm_pmode d where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "'", DB

        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rs1 = New Recordset

    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest from rm_cont a,rm_sample b where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & txtfields(1).Text & "'", DB
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic


    Set RS11 = New Recordset
    RS11.Open "select a.sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season""  from rm_cont a,rm_var b,rm_cat c   where contno='" & adoprimaryrs("contno") & "'  and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd", DB, adOpenStatic, adLockBatchOptimistic
     rema = RS11("remarks")
    Do While Not RS11.EOF
    RS11.MoveNext
    Loop
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

    Print #a,
    Print #a,
    Print #a, Space(3) & Chr(27) & "E" + CENTRE(divname, 85, " ") & Chr(27) & "F"
    Print #a,
    Print #a,
    Print #a, Space(3) & Chr(27) & "E" & CENTRE("RAW MATERIAL - PURCHASE ORDER ", 85, " ") & Chr(27) & "F"
    Print #a,
    Dim i1 As Integer
    i1 = 0
    Print #a, Space(3) + "REF: CON" & Padr(Rs("contNO") & "/C-" & rsJ("MILLREFNO") & "/" & Year(yfdate) & "/" & Year(yldate), 28, " ") + Space(12) + "DATE" + Space(2) + Padr(Format(Rs("contdt"), "DD/MM/YY"), 8, "")
    Print #a,
    Print #a, Space(3) & "TO,"
    Print #a, Space(3) + Space(1) & Rs("slname") & ""
    If Rs("add1") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add1") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If Rs("add2") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add2") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If Rs("add3") <> "" Then
    Print #a, Space(3) + Space(1) & Rs("add3") & ""
    i1 = i1 + 1
    Else
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    If i1 >= 3 Then
    Print #a, Space(3) + Space(1) & Rs("city")
    End If
    Print #a,
    Print #a, Space(3) & "Dear Sirs"
    Print #a,
    Print #a, Space(3) & "Sub: Purchase of Raw Material"
    Print #a,
    Print #a, Space(3) & "We are pleased to confirm our purchase of the following Raw Material from you"
    Print #a, Space(3) & "as per the details stated below:-"
    Print #a,
    RS11.MoveFirst
    Print #a, Space(3) & String(80, "-")
    Print #a, Space(3) & "|Sl.|Variety | Quan|Station           | Rate / " + Padl(RS11("rateunit"), 8, " ") + "  |Staple    |Season    |"
    Print #a, Space(3) & "|No.|        |-tity|                  |        per bale  |          |          |"
    Print #a, Space(3) & "|   |        |     |                  |   spot expenses  |          |          |"
    sno1 = 1
    Print #a, Space(3) & String(80, "-")
    Do While Not RS11.EOF
    Staple = RS11("STAPLE")
    season = RS11("SEASON")
    Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
    Print #a, Space(3) & String(80, "-")
    sno1 = sno1 + 1
    RS11.MoveNext
    Loop
    Print #a,
    Print #a, Space(3) & "Agent                :" + Space(3) + "Through " & Text2.Text
    Print #a, Space(3) & "Payment              :" + Space(3) + Rs("payterms") + " .Please inform us in which name we will"
    Print #a, Space(3) & Space(21) + Space(3) + " have to take" + Space(1) + Rs("paydesc") + Space(1) + "and payable station."
    Print #a, Space(3) & "Delivery Schedule    :" + Space(3) + INSTRUCTION
    Print #a,

    If rsb.RecordCount = 0 Then
        s1 = ""
        s2 = ""
        s3 = ""
        s4 = ""
        s5 = ""
        s6 = ""
        s7 = ""
        s8 = ""
        s9 = ""
        s10 = ""
    Else
        s1 = rsb("slname")
        s2 = rsb("add1")
        s3 = rsb("add2")
        s4 = rsb("add3")

        s5 = rsb("city")
        If rsd.EOF = False Then
            s6 = IIf(IsNull(rsd("tinno")), 0, rsd("tinno"))
            s7 = IIf(IsNull(rsd("tindt")), "", rsd("tindt"))
            s8 = IIf(IsNull(rsd("cgst")), 0, rsd("cgst"))
            s9 = IIf(IsNull(rsd("cgstdt")), "", rsd("cgstdt"))
        End If
        s10 = Rs("rc_no")
    End If

    If rsa.RecordCount = 0 Then
        p6 = ""
        p7 = ""
        p8 = ""
        p9 = ""
        p10 = ""
    Else
        p6 = rsa("slname")
        p7 = rsa("add1")
        p8 = rsa("add2")
        p10 = rsa("city")
    End If
    Print #a, Space(3) & "Billing Address" + Space(32) + "Delivery Address"
    Print #a, Space(3) + Space(2) & Padr(s1, 30, "") + Space(17) & Padr(p6, 30, "")
    Print #a, Space(3) + Space(2) & Padr(s2, 30, "") + Space(17) & Padr(p7, 30, "")
    Print #a, Space(3) + Space(2) & Padr(s5, 30, "") + Space(17) & Padr(p10, 30, "")
    Print #a, Space(3) + Space(2) & "TIN No. " + Padr(s6, 15, "") & "DT." + Padr(Format(s7, "DD/MM/YY"), 8, "") + Space(13) & "Contact Person:" & Trim(Text7.Text)
    Print #a, Space(3) + Space(2) & "CST No. " + Padr(s8, 15, "") & "DT." + Padr(Format(s9, "DD/MM/YY"), 8, "") + Space(13) & "Phone No."
    Print #a, Space(3) + Space(2) & "Central Exercise RC No. " + Padr(s10, 20, "")
    Print #a,
    Print #a, Space(3) & "Kindly sign a copy of this contract and return to us as a token of your acceptance."
    Print #a,
    Print #a, Space(3) & "Thanks & Regards"
    Print #a,
    Print #a,
    Print #a, Space(3)
    Print #a, Space(3) & "GENERAL MANAGER - ADMIN & MKTG" & Chr(27)
    Print #a, Space(3)
    Print #a,
    Print #a, Space(3) & "   Please send us the samples immediately on receipt of the"
    Print #a, Space(3) & "   load for quality checking"
    Print #a, Space(3) & String(80, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0


End Sub

Private Sub POPRINTLMW_old()
SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False
Dim Str As String
Dim s1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
    Set RsDiv = New Recordset
    RsDiv.Open "select CIN from pp_divmas where divcode='" & Divcode & "'", DB


     Set Rs = New Recordset
     txt = MaskEdBox3.Text

     Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas from rm_cont a,fa_slmas b,po_car c,rm_pmode d,rm_delivery e where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "' and a.dlytype=e.delcode AND a.CARCODE*=c.CARCODE ", DB
     
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

     
    If Rs("city") <> "" Then
        Str = CStr(Rs("city")) + " - "
    End If
    
    If Rs("pin") <> "" Then
        Str = Str + CStr(Rs("pin"))
    ElseIf Str <> "" Then
        Str = Mid(Str, 1, InStr(Str, "-") - 2)
    End If
    

    Set rs1 = New Recordset
    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a,rm_sample b where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & txtfields(1).Text & "'", DB
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic

    Set RS11 = New Recordset
    RS11.Open "select isnull(a.sno,0) as sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season"",isnull(b.drawno,'') as drawno,isnull(b.oldvarcode,'') as oldvarcode,a.duedate,payterms,ratekg  from rm_cont a,rm_var b,rm_cat c,rm_delivery d   where contno='" & adoprimaryrs("contno") & "'  and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd and a.dlytype=d.delcode", DB, adOpenStatic, adLockBatchOptimistic
    rema = RS11("remarks")
    
    rcount = RS11.RecordCount
    
    tot = Rs("ratekg") * Rs("ordkgs")
    
    
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
    
    
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

   ''04/04/14
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   
   Print #a,
   Print #a,
   Print #a,
   
    sinv = Right(Year(yfdate), 2)
    
    If Len(Rs("CONTNO")) = 1 Then
      sinv = sinv & "0000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 2 Then
     sinv = sinv & "000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 3 Then
     sinv = sinv & "00" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 4 Then
     sinv = sinv & "0" & Rs("CONTNO")
    End If
       
    Print #a,
      
    Print #a, Space(15 - 5) & Chr(27) + "E" + "CIN :" & Padr(RsDiv("CIN"), 21, " ") + Chr(27) + "F" & Space(19) & "19RM/" & Padr(sinv, 8, " ")
    Print #a, Space(55) & Padr(Format(Rs("contdt"), "dd-mmm-yyyy"), 11, " ")
    co = co + 2
    
    Print #a, Space(14) + Chr(18) & Chr(27) & "E" & Padr(Rs("oldslcode"), 10, " ") & Chr(27) & "F" & Chr(18)
    slcode1 = Rs("oldslcode")
    co = co + 1
    If Len(Rs(0)) > 40 Then
        N1 = Trim(Mid$(Mid(Rs(0), 1, 40), 1, InStrRev(Mid(Rs(0), 1, 40), " ")))
        N2 = Mid$(Rs(0), Len(N1) + 1, Len(Rs(0)))
    Else
        N1 = Rs(0)
    End If
        
        If N1 <> "" Then
        Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N1, 40, " ") & Chr(27) & "F" & Chr(18)
        Else
        Print #a, Space(3) & Padr(" ", 40, " ")
        End If
        co = co + 1
        
        If N2 <> "" Then
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N2, 40, " ") & Chr(27) & "F" & Chr(18)
            co = co + 1
        Else
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(" ", 40, " ") & Chr(27) & "F" & Chr(18)
        End If
    
    If IsNull(rs1(1)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(1)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    If IsNull(rs1(2)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(2)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    Set rstA = New Recordset
    Set rstA = DB.Execute("SELECT * FROM RM_DELADD")
    If rstA.RecordCount <> "" Then
        DSLNAME = rstA("SLNAME")
        DADD1 = rstA("ADD1")
        DADD2 = rstA("ADD2")
        DADD3 = rstA("ADD3")
        DCITY = rstA("CITY")
        dpin = rstA("PIN")
    End If

        
    If Str <> "" Then
        Print #a, Space(3) & Padr(Trim(Str), 37, " ") '& Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
    Else
        Print #a,
    End If
    
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD1) ', 7 + 18, " ") '& Padl(DADD2, 15, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD2) ', 7 + 18, " ")
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DCITY) & "-" & Trim(dpin)
        
    co = 0
    SNO = 0
    co = co + 5
    
    
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        EduCessAmt = 0
        SU = 0
    
    Print #a,
    
    RS11.MoveFirst
    sno1 = 1 ' 0 ' 1
    
    Do While Not RS11.EOF
        Staple = RS11("STAPLE")
        season = RS11("SEASON")
        '''Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
        
        
        If Len(RS11("varname")) > 26 Then
            s1 = Trim(Mid$(Mid(RS11("varname"), 1, 26), 1, InStrRev(Mid(RS11("varname"), 1, 26), " ")))
            s2 = Mid$(RS11("varname"), Len(s1) + 1, Len(RS11("varname")))
        Else
            s1 = RS11("varname")
        End If
                
        '1
         'Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordqty"), 3), 12, " ") & Space(3) & Padr("CANDY", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         '21/06/14
         Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordkgs"), 3), 12, " ") & Space(3) & Padr("KGS  ", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         
         sno1 = sno1 + 1
         '2
         Print #a,
         sno1 = sno1 + 1
'
'       '  '3,4
'        If IsNull(RS11("duedate")) <> True Then
'                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 2
'       Else
'                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 1
'       End If
              

       '  '3,4
        If IsNull(RS11("duedate")) <> True Then
                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 2
       Else
                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 1
       End If
         
         '5
         Print #a, Space(5) & "Station  :" & strstat
         sno1 = sno1 + 1
         '6
         Print #a, Space(5) & "Staple   :" & Staple
         sno1 = sno1 + 1
                  
        If val(RS11("sno")) >= 1 Then
         Set Rssample = New Recordset
         Rssample.Open "select isnull(micronaire,0) as mic,isnull(strength,0) as strn from rm_sample  WHERE sno=" & RS11("sno") & "", DB
         '7
         Print #a, Space(5) & "MIC      :" & Rssample("mic")
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :" & Rssample("strn")
         sno1 = sno1 + 1
       Else
       '7
         Print #a, Space(5) & "MIC      :"
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :"
         sno1 = sno1 + 1
       End If
         
         Set rscndy = New Recordset
         rscndy.Open "select ISNULL(value,0) AS VALUE from rm_rateunit where unitcode='CA'", DB
         '9
         'Print #a, Space(5) & "Period   :" & RS11("payterms")
         Print #a, Space(5) & "Rate/Candy:" & rscndy("value")
         
         sno1 = sno1 + 1
                  
        RS11.MoveNext
    Loop
    
    PgNo = 1
    
    If sno1 < 10 Then
            s = 10 - sno1
            If s > 0 Then
                For i = 1 To s
                    Print #a,
                Next i
            End If
    End If
    Print #a,
    
      
    
    Print #a,
    '14/04/14
    Print #a,
    '21/04/14
    Print #a,
    'Print #a,
    Print #a, Space(10) & Padr(rcount, 3, " ") & Space(12) & Padl(PgNo, 3, " ")
    PRICEBAS = Rs("deldesc")
    Print #a, Space(15) & Padr(PRICEBAS, 37, " ") & Space(10) & Padl(INF(tot, 2), 14, " ")
      
    
    Print #a, Space(15) & Padr(Rs("Carname"), 37, " ")
    'Print #a, Space(15) & Padr(Rs("paydesc"), 28, " ");
    Print #a, Space(15) & Padr(Rs("pymas"), 28, " ");
    
    co = co + 1
    Print #a,
    Print #a,
     
        
    
     
        Set rstax = New Recordset
        rstax.Open "select abbr from ig_tax where tax_code='" & Rs("tax_code") & "'", DB
                
        If Rs("Taxper") > 0 Then
            Print #a, Space(4) & Padr(rstax("abbr") & ":", 5, " ") '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("othtaxper") > 0 Then
            Print #a, Space(1 + 1) & Padr("OTHER :", 5, " ") & Padr(Rs("othtaxper") & "%", 3, " ")
        Else
            Print #a, Space(1 + 1) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
        End If
    
    
    
    Print #a,
    Print #a,
    'Print #a,
    
            If Rs("Taxper") > 0 Then
                Print #a, Space(4) & Padr(Rs("Taxper") & "%", 3, " ");   ' Padl(INF(Taxamt, 2), 10, " ");
            Else
                Print #a, Space(4) & Padl(" ", 10, " ")
            End If

        If Rs("LORRYFRT") > 0 Then
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        Else
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        End If
      
    
For i = 1 To 7
    Print #a,
Next i

'Print #a,
   
    
If Rs("REMARKS") <> "" Then
    Print #a, Space(9) & Padr(Rs("REMARKS"), 50, " ")
Else
    Print #a, Space(9) & Padr(" ", 50, " ")
End If
    
    
Print #a,
Print #a,
Print #a,
Print #a,

Set RSTP = New Recordset
Set RSTP = DB.Execute("SELECT PREPRINT FROM PP_DIVMAS")
If RSTP.RecordCount <> 0 Then
    pname = RSTP(0)
End If
    
Print #a, Space(11) & Padl(pname, 15, " ")
Print #a,
Print #a, Space(9) & Padl(na, 15, " ")
Print #a,
Print #a,
    
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0



End Sub


Private Sub POPRINTLMW()
SSTab1.Enabled = True
Buttonframe.Enabled = True
Frame11.Visible = False
Dim Str As String
Dim s1, s2, s3, s4, s5 As String
Dim s6, s7, s8, s9, s10 As String

Dim p6, p7, p8, p9, p10, cott As String
Dim sno1 As Integer
Dim rsb As Recordset
Dim rsd As Recordset
Dim rsstat As Recordset
Dim strstat As String
Dim rsc As Recordset


If txtfields(0).Text <> "" Then
    Set RsDiv = New Recordset
    RsDiv.Open "select CIN from pp_divmas where divcode='" & Divcode & "'", DB


     Set Rs = New Recordset
     txt = MaskEdBox3.Text

     Rs.Open "select slname,add1,add2,add3,isnull(city,'') as city,isnull(pin,'')as pin,isnull(rc_no,'') as rc_no,c.carname,d.paydesc,A.CONTNO,A.CONTDT,B.SLCODE,ISNULL(B.OLDSLCODE,'') AS OLDSLCODE,e.deldesc,a.tax_code,a.taxper,a.othtaxper,A.REMARKS,A.LORRYFRT,ratekg,ordqty,ordkgs,isnull(b.pay_terms,'') as pymas,ISNULL(a.bedper,0) AS bed,ISNULL(a.sedper,0) AS edu,ISNULL(a.hscessper,0) AS hs,ISNULL(a.cessper,0) AS cess,ISNULL(A.CARCODE,'') AS CARCODE from rm_cont a,fa_slmas b,po_car c,rm_pmode d,rm_delivery e where b.slcode=a.supcd and a.paymode=d.paymode and A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND  a.supcd='" & txtfields(1).Text & "' and a.dlytype=e.delcode AND a.CARCODE*=c.CARCODE ", DB
     
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

     
    If Rs("city") <> "" Then
        Str = CStr(Rs("city")) + " - "
    End If
    
    If Rs("pin") <> "" Then
        Str = Str + CStr(Rs("pin"))
    ElseIf Str <> "" Then
        Str = Mid(Str, 1, InStr(Str, "-") - 2)
    End If
    

    Set rs1 = New Recordset
    rs1.Open "select a.sno,a.supcd,b.supcode,b.sno,b.tpi,b.staplen25,b.staplen50,b.hvitest,b.micronaire,b.yarnapp,b.prno,b.staphandtest,a.contno from rm_cont a,rm_sample b where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.sno*=b.sno and a.supcd='" & txtfields(1).Text & "'", DB
        If rs1.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

    Set rsb = New Recordset
    rsb.Open "select b.slname,b.add1,b.add2,b.add3,isnull(b.city,'')as city,b.pin,isnull(STAPLE,'') as STAPLE,isnull(season,'') as season from rm_cont a,rm_billadd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.billadd='" & txtfields(21).Text & "' and b.SLCODE=a.billadd", DB

    Set rsa = New Recordset
    rsa.Open "select b.slname,b.add1,b.add2,b.add3,b.city,b.pin from rm_cont a,rm_deladd b" & _
              " where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND a.deladd ='" & txtfields(22).Text & "' and b.SLCODE=a.deladd", DB

    Set rsstat = New Recordset
    rsstat.Open "SELECT a.areaname,isnull(a.station,'') as station,a.areacode,a.state FROM RM_area a WHERE A.areacode = '" & Trim(txtfields(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic

    If rsstat.RecordCount > 0 Then
       strstat = rsstat!Station
    Else
       strstat = ""
    End If
    Set rsc = New Recordset
    rsc.Open "select b.instruction, b.contno,b.contdate,a.contdt from rm_cont a, rm_delsched b   where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' AND A.CONTNO=B.CONTNO AND a.contdt=b.contdate", DB, adOpenStatic

    If rsc.RecordCount > 0 Then
        INSTRUCTION = rsc("INSTRUCTION")
    Else
        INSTRUCTION = ""
    End If

    Set rsJ = New Recordset
    rsJ.Open "select ISNULL(a.MILLREFNO,'')AS MILLREFNO from rm_cont a  where A.contno='" & adoprimaryrs("contno") & "'  and A.contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic

    Set RS11 = New Recordset
    RS11.Open "select isnull(a.sno,0) as sno,a.varcode,b.varname,c.catcd,c.catname,a.ordqty,a.ordkgs,a.candyrate,a.rateunit,pty_contno,contno,contdt,divcode,a.remarks,isnull(STAPLE,'')""STAPLE"",isnull(season,'')""season"",isnull(b.drawno,'') as drawno,isnull(b.oldvarcode,'') as oldvarcode,a.duedate,payterms,ratekg  from rm_cont a,rm_var b,rm_cat c,rm_delivery d   where contno='" & adoprimaryrs("contno") & "'  and contdt='" & Format(adoprimaryrs("contdt"), "yyyy-mm-dd") & "' and a.varcode=b.varcode and c.catcd = b.catcd and a.dlytype=d.delcode", DB, adOpenStatic, adLockBatchOptimistic
    rema = RS11("remarks")
    
    rcount = RS11.RecordCount
    
    tot = Rs("ratekg") * Rs("ordkgs")
    
    
'    Do While Not RS11.EOF
'    RS11.MoveNext
'    Loop
    
    
    Set rsd = New Recordset
    rsd.Open "select a.tinno,a.tindt,a.cgst,a.cgstdt,a.slcode,b.slcode from fa_slmas a,rm_billadd b,rm_cont c where c.billadd='" & txtfields(21).Text & "'and c.billadd=b.slcode", DB
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    Open KALFOLDERDATA + "PURORDER.TXT" For Output As #a
    pg1 = 0
    co = 0

   ''04/04/14
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   Print #a,
   
   Print #a,
   Print #a,
   Print #a,
   
    sinv = Right(Year(yfdate), 2)
    
    If Len(Rs("CONTNO")) = 1 Then
      sinv = sinv & "0000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 2 Then
     sinv = sinv & "000" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 3 Then
     sinv = sinv & "00" & Rs("CONTNO")
    ElseIf Len(Rs("CONTNO")) = 4 Then
     sinv = sinv & "0" & Rs("CONTNO")
    End If
       
    Print #a,
      
    Print #a, Space(15 - 5) & Chr(27) + "E" + "CIN :" & Padr(RsDiv("CIN"), 21, " ") + Chr(27) + "F" & Space(19) & "19RM/" & Padr(sinv, 8, " ")
    Print #a, Space(55) & Padr(Format(Rs("contdt"), "dd-mmm-yyyy"), 11, " ")
    co = co + 2
    
    Print #a, Space(14) + Chr(18) & Chr(27) & "E" & Padr(Rs("oldslcode"), 10, " ") & Chr(27) & "F" & Chr(18)
    slcode1 = Rs("oldslcode")
    co = co + 1
    If Len(Rs(0)) > 40 Then
        N1 = Trim(Mid$(Mid(Rs(0), 1, 40), 1, InStrRev(Mid(Rs(0), 1, 40), " ")))
        N2 = Mid$(Rs(0), Len(N1) + 1, Len(Rs(0)))
    Else
        N1 = Rs(0)
    End If
        
        If N1 <> "" Then
        Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N1, 40, " ") & Chr(27) & "F" & Chr(18)
        Else
        Print #a, Space(3) & Padr(" ", 40, " ")
        End If
        co = co + 1
        
        If N2 <> "" Then
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(N2, 40, " ") & Chr(27) & "F" & Chr(18)
            co = co + 1
        Else
            Print #a, Space(3) & Chr(18) & Chr(27) & "E" & Padr(" ", 40, " ") & Chr(27) & "F" & Chr(18)
        End If
    
    If IsNull(rs1(1)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(1)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    If IsNull(rs1(2)) <> True Then
        Print #a, Space(3) & Padr(Trim(Rs(2)), 45, " ")
    Else
        Print #a, Space(3) & Padr(" ", 45, " ")
    End If
    co = co + 1
    
    Set rstA = New Recordset
    Set rstA = DB.Execute("SELECT * FROM RM_DELADD")
    If rstA.RecordCount <> "" Then
        DSLNAME = rstA("SLNAME")
        DADD1 = rstA("ADD1")
        DADD2 = rstA("ADD2")
        DADD3 = rstA("ADD3")
        DCITY = rstA("CITY")
        dpin = rstA("PIN")
    End If

        
    If Str <> "" Then
        Print #a, Space(3) & Padr(Trim(Str), 37, " ") '& Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
    Else
        Print #a,
    End If
    
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DSLNAME) 'Padl(DSLNAME, 20, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD1) ', 7 + 18, " ") '& Padl(DADD2, 15, " ")
        Print #a, Space(3) & Padr(" ", 37, " "); Space(2 + 5) & Trim(DADD2) ', 7 + 18, " ")
        Print #a, Space(3) & Padr(" ", 37, " ") & Space(2 + 5) & Trim(DCITY) & "-" & Trim(dpin)
        
    co = 0
    SNO = 0
    co = co + 5
    
    
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        EduCessAmt = 0
        SU = 0
    
    Print #a,
    
    RS11.MoveFirst
    sno1 = 1 ' 0 ' 1
    
    Do While Not RS11.EOF
        Staple = RS11("STAPLE")
        season = RS11("SEASON")
        '''Print #a, Space(3) & "|" & Padl(sno1, 3, " ") & "|" & Padr(RS11("varname"), 8, " ") & "|" & Padl(RS11("ordqty"), 5, " ") & "|" & Padr(strstat, 18, " ") & "|" & Padl(INF(RS11("candyrate"), 4), 16, " ") & Space(2) & "|" + Padr(Staple, 10, " ") & "|" & Padr(season, 10, " ") & "|"
        
        
        If Len(RS11("varname")) > 26 Then
            s1 = Trim(Mid$(Mid(RS11("varname"), 1, 26), 1, InStrRev(Mid(RS11("varname"), 1, 26), " ")))
            s2 = Mid$(RS11("varname"), Len(s1) + 1, Len(RS11("varname")))
        Else
            s1 = RS11("varname")
        End If
                
        '1
         'Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordqty"), 3), 12, " ") & Space(3) & Padr("CANDY", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         '21/06/14
         Print #a, Space(1) & Padl(sno1, 2, " ") & Space(3) & Padr(RS11("drawno"), 12, " ") & Space(2) & Padr(s1, 26, " ") & Space(2); Padl(INF(RS11("ordkgs"), 3), 12, " ") & Space(3) & Padr("KGS  ", 6, " ") & Space(1) & Padl(INF(RS11("ratekg"), 2), 8, " ")
         
         sno1 = sno1 + 1
         '2
         Print #a,
         sno1 = sno1 + 1
'
'       '  '3,4
'        If IsNull(RS11("duedate")) <> True Then
'                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 2
'       Else
'                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordkgs"), 3), 12, " ")
'                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Kgs."
'                sno1 = sno1 + 1
'       End If
              

       '  '3,4
        If IsNull(RS11("duedate")) <> True Then
                Print #a, Padl(" ", 15 - 2, " ") & Padl("Need By Date", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                DueDate = Format(RS11("duedate"), "dd-mmm-yyyy")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(DueDate, 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 2
       Else
                Print #a, Padl(" ", 15 - 2, " ") & Padl(" ", 26, " "); Space(10) & Padl(INF(RS11("ordqty"), 3), 12, " ")
                Print #a, Padl(" ", 13 - 2, " ") & Padl(" ", 26, " "); Space(15) & "Bales"
                sno1 = sno1 + 1
       End If
         
         '5
         Print #a, Space(5) & "Station  :" & strstat
         sno1 = sno1 + 1
         '6
         Print #a, Space(5) & "Staple   :" & Staple
         sno1 = sno1 + 1
                  
        If val(RS11("sno")) >= 1 Then
         Set Rssample = New Recordset
         Rssample.Open "select isnull(micronaire,0) as mic,isnull(strength,0) as strn ,ISNULL(GTEX,0) AS  gTEX from rm_sample  WHERE sno=" & RS11("sno") & "", DB
         '7
         Print #a, Space(5) & "MIC      :" & Rssample("mic")
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :" & Rssample("gTEX")
         sno1 = sno1 + 1
       Else
       '7
         Print #a, Space(5) & "MIC      :"
         sno1 = sno1 + 1
         '8
         Print #a, Space(5) & "Strength :"
         sno1 = sno1 + 1
       End If
         
         Set rscndy = New Recordset
         rscndy.Open "select ISNULL(value,0) AS VALUE from rm_rateunit where unitcode='CA'", DB
         '9
         Print #a, Space(5) & "Rate/Candy:" & IIf(IsNull(RS11("candyrate")), 0, Padr(INF(RS11("candyrate"), 2), 12, " "))
         sno1 = sno1 + 1
                  'Padl(INF(RS11("ordqty"), 3), 12, " ")
         '9--10
         'Print #a, Space(5) & "Period   :" & RS11("payterms")
         Print #a, Space(5) & "Candy     :" & rscndy("value")
         sno1 = sno1 + 1
                  
        RS11.MoveNext
    Loop
    
    PgNo = 1
    
    If sno1 < 9 Then  '10
            s = 9 - sno1 '10
            If s > 0 Then
                For i = 1 To s
                    Print #a,
                Next i
            End If
    End If
    
    Print #a,
    Print #a,
    '14/04/14
    Print #a,
    '21/04/14
    Print #a, Space(10) & Padr(rcount, 3, " ") & Space(12) & Padl(PgNo, 3, " ")
    
    Print #a,
    'Print #a,
   
    PRICEBAS = Rs("deldesc")
    Print #a, Space(15) & Padr(PRICEBAS, 37, " ") & Space(10) & Padl(INF(tot, 2), 14, " ")
    Print #a, Space(15) & Padr(Rs("Carcode"), 37, " ") 'Padr(Rs("Carname"), 37, " ")
    
    '''Print #a, Space(15) & Padr(Rs("paydesc"), 28, " ");
    
    Print #a, Space(15) & Padr(Rs("pymas"), 28, " ");
    co = co + 1
    Print #a,
    Print #a,
    
        Set rstax = New Recordset
        rstax.Open "select abbr from ig_tax where tax_code='" & Rs("tax_code") & "'", DB
        
        If Rs("cess") > 0 Then
            Print #a, Space(4 + 2) & Padr("CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
                
        If Rs("Taxper") >= 0 Then
            Print #a, Space(4) & Padr(rstax("abbr") & ":", 5, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("bed") > 0 Then
            Print #a, Space(4 + 2) & Padr("BED" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("edu") > 0 Then
            Print #a, Space(4 + 2) & Padr("EDU.CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("hS") > 0 Then
            Print #a, Space(4 + 2) & Padr("HS CESS" & ":", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
      
    
        If Rs("othtaxper") > 0 Then
            Print #a, Space(4 + 2) & Padr("OTHER :", 8, " ") '& Padr(Rs("othtaxper") & "%", 3, " ")
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
        End If
    
    Print #a,
    Print #a,
    ''Print #a,
    
        If Rs("cess") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("cess") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
         If Rs("Taxper") >= 0 Then
                Print #a, Space(4 + 2) & Padr(Rs("Taxper") & "%", 3, " "); ' Padl(INF(Taxamt, 2), 10, " ");
            Else
                Print #a, Space(4 + 2) & Padl(" ", 10, " ");
            End If
                       
            
        If Rs("bed") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("bed") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
    
    
        If Rs("edu") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("edu") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        
        If Rs("hS") > 0 Then
            Print #a, Space(4 + 2) & Padr(Rs("hs") & "%", 8, " "); '& Padr(Rs("Taxper") & "%", 3, " ");
        Else
            Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " "); '8
        End If
        

     
            
            
            ''21/06/14
            If Rs("othtaxper") > 0 Then
                Print #a, Space(4 + 2) & Padr(Rs("othtaxper") & "%", 3, " ")
                '1+1
            Else
                Print #a, Space(4 + 2) & Padr(" ", 5, " ") & Padr(" ", 3, " ") '8
            End If
            

        If Rs("LORRYFRT") > 0 Then
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        Else
            Print #a, Space(1 + 1) & Rs("LORRYFRT")
        End If
      
    
For i = 1 To 7
    Print #a,
Next i

'''Print #a,
  
    
If Rs("REMARKS") <> "" Then
    Print #a, Space(9) & Padr(Rs("REMARKS"), 50, " ")
Else
    Print #a, Space(9) & Padr(" ", 50, " ")
End If
    
    
Print #a,
Print #a,
Print #a,
Print #a,

Set RSTP = New Recordset
Set RSTP = DB.Execute("SELECT PREPRINT FROM PP_DIVMAS")
If RSTP.RecordCount <> 0 Then
    pname = RSTP(0)
End If
    
Print #a, Space(11) & Padl(pname, 15, " ")
Print #a,
Print #a, Space(9) & Padl(na, 15, " ")
Print #a,
Print #a,
    
    Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Print #a, Chr(12)
    Close #a
    Call KALBATPROCESS("PURORDER")
End If

Screen.MousePointer = 0



End Sub


