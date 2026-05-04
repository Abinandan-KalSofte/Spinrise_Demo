VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form FrmContract 
   Caption         =   "Contract"
   ClientHeight    =   7395
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9630
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7395
   ScaleWidth      =   9630
   WindowState     =   2  'Maximized
   Begin VB.TextBox Txtfields 
      DataField       =   "salcnfno"
      Height          =   330
      Index           =   32
      Left            =   8760
      MaxLength       =   10
      TabIndex        =   109
      Top             =   7275
      Width           =   1035
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   3
      Left            =   1590
      Picture         =   "RMIContract.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   72
      ToolTipText     =   "List"
      Top             =   0
      Width           =   520
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   37
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":0397
         Height          =   510
         Index           =   4
         Left            =   2100
         Picture         =   "RMIContract.frx":06A1
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":0A36
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMIContract.frx":0E80
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":11CD
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIContract.frx":14D7
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":186A
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMIContract.frx":1CB4
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":2019
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
         Picture         =   "RMIContract.frx":2323
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":26BF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIContract.frx":29C9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":2D43
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMIContract.frx":318D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":34DD
         Height          =   510
         Index           =   11
         Left            =   5775
         Picture         =   "RMIContract.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":3CBC
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMIContract.frx":3FC6
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "RMIContract.frx":4368
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMIContract.frx":4672
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BackColor       =   &H00C0E0FF&
         DownPicture     =   "RMIContract.frx":49EE
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMIContract.frx":4E38
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
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
         Left            =   8085
         TabIndex        =   39
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
         TabIndex        =   38
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   36
      Top             =   7095
      Width           =   9630
      _ExtentX        =   16986
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
      Height          =   7065
      Left            =   495
      TabIndex        =   40
      Top             =   780
      Width           =   8205
      _ExtentX        =   14473
      _ExtentY        =   12462
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "                   "
      TabPicture(0)   =   "RMIContract.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Caption         =   "  "
         Height          =   3405
         Left            =   225
         TabIndex        =   50
         Top             =   3555
         Width           =   7695
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   31
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   106
            Top             =   2925
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   30
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   105
            Top             =   2910
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   29
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   104
            Top             =   2925
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   28
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   100
            Top             =   2535
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   27
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   99
            Top             =   2535
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   26
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   98
            Top             =   2535
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   25
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   94
            Top             =   2205
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   24
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   93
            Top             =   2205
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   23
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   92
            Top             =   2160
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   22
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   88
            Top             =   1785
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   21
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   87
            Top             =   1785
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   20
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   86
            Top             =   1770
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   19
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   82
            Top             =   1365
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   18
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   81
            Top             =   1365
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   17
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   80
            Top             =   1335
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "bank"
            Height          =   330
            Index           =   16
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   76
            Top             =   975
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   13
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   75
            Top             =   975
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "cropyear"
            Height          =   330
            Index           =   12
            Left            =   1455
            MaxLength       =   10
            TabIndex        =   74
            Top             =   945
            Width           =   1170
         End
         Begin VB.ComboBox Combo2 
            Height          =   315
            ItemData        =   "RMIContract.frx":51B6
            Left            =   6435
            List            =   "RMIContract.frx":51C0
            Style           =   2  'Dropdown List
            TabIndex        =   31
            Top             =   600
            Width           =   1035
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "RMIContract.frx":51D0
            Left            =   1455
            List            =   "RMIContract.frx":51DD
            Style           =   2  'Dropdown List
            TabIndex        =   26
            Top             =   180
            Width           =   1170
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "salcnfno"
            Height          =   330
            Index           =   9
            Left            =   4140
            MaxLength       =   10
            TabIndex        =   30
            Top             =   585
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "ordqty"
            Height          =   330
            Index           =   6
            Left            =   4140
            MaxLength       =   4
            TabIndex        =   27
            Top             =   150
            Width           =   1050
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
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
            Height          =   330
            Index           =   7
            Left            =   6435
            MaxLength       =   10
            TabIndex        =   28
            Top             =   135
            Width           =   1035
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "paymode"
            Height          =   330
            Index           =   8
            Left            =   1455
            MaxLength       =   2
            TabIndex        =   29
            Top             =   540
            Width           =   1170
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Allowance(-)"
            Height          =   195
            Index           =   18
            Left            =   5400
            TabIndex        =   108
            Top             =   2985
            Width           =   870
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Wharpage"
            Height          =   195
            Index           =   17
            Left            =   2895
            TabIndex        =   107
            Top             =   2955
            Width           =   750
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Damarage"
            Height          =   195
            Index           =   16
            Left            =   225
            TabIndex        =   103
            Top             =   2955
            Width           =   735
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Charity"
            Height          =   195
            Index           =   15
            Left            =   5400
            TabIndex        =   102
            Top             =   2580
            Width           =   480
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bank Com"
            Height          =   195
            Index           =   14
            Left            =   2895
            TabIndex        =   101
            Top             =   2550
            Width           =   735
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Hundi. Int"
            Height          =   195
            Index           =   13
            Left            =   225
            TabIndex        =   97
            Top             =   2565
            Width           =   690
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "LC Int"
            Height          =   195
            Index           =   12
            Left            =   5400
            TabIndex        =   96
            Top             =   2250
            Width           =   420
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "DB Note"
            Height          =   195
            Index           =   11
            Left            =   2895
            TabIndex        =   95
            Top             =   2220
            Width           =   615
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Comm.Amt"
            Height          =   195
            Index           =   10
            Left            =   225
            TabIndex        =   91
            Top             =   2205
            Width           =   750
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Insu.Amt"
            Height          =   195
            Index           =   9
            Left            =   5400
            TabIndex        =   90
            Top             =   1830
            Width           =   615
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Frt."
            Height          =   195
            Index           =   8
            Left            =   2895
            TabIndex        =   89
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Rail Frt."
            Height          =   195
            Index           =   7
            Left            =   225
            TabIndex        =   85
            Top             =   1785
            Width           =   540
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "TNGST Amt."
            Height          =   195
            Index           =   6
            Left            =   5400
            TabIndex        =   84
            Top             =   1410
            Width           =   915
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "CST Amount"
            Height          =   195
            Index           =   5
            Left            =   2895
            TabIndex        =   83
            Top             =   1380
            Width           =   900
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            Height          =   195
            Index           =   3
            Left            =   225
            TabIndex        =   79
            Top             =   1365
            Width           =   405
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Refno"
            Height          =   195
            Index           =   4
            Left            =   5400
            TabIndex        =   78
            Top             =   1020
            Width           =   435
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bank"
            Height          =   195
            Index           =   2
            Left            =   2895
            TabIndex        =   77
            Top             =   990
            Width           =   375
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Crop Year"
            Height          =   195
            Index           =   1
            Left            =   225
            TabIndex        =   73
            Top             =   975
            Width           =   705
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   225
            TabIndex        =   67
            Top             =   270
            Width           =   285
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Payment Mode"
            Height          =   195
            Left            =   225
            TabIndex        =   55
            Top             =   630
            Width           =   1065
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Candy"
            Height          =   195
            Index           =   0
            Left            =   5400
            TabIndex        =   54
            Top             =   240
            Width           =   870
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Sales Conf.No"
            Height          =   195
            Index           =   0
            Left            =   2895
            TabIndex        =   53
            Top             =   660
            Width           =   1020
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Delivery"
            Height          =   195
            Index           =   0
            Left            =   5400
            TabIndex        =   52
            Top             =   675
            Width           =   570
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   2895
            TabIndex        =   51
            Top             =   225
            Width           =   585
         End
      End
      Begin VB.Frame Frame1 
         Height          =   3495
         Left            =   240
         TabIndex        =   41
         Top             =   60
         Width           =   7680
         Begin VB.TextBox Txtfields 
            Height          =   330
            Index           =   15
            Left            =   2790
            Locked          =   -1  'True
            MaxLength       =   25
            TabIndex        =   71
            TabStop         =   0   'False
            Top             =   3045
            Width           =   4590
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "indentno"
            Height          =   330
            Index           =   14
            Left            =   1740
            MaxLength       =   10
            TabIndex        =   21
            Top             =   2085
            Width           =   915
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "duedate"
            Height          =   315
            Left            =   1740
            TabIndex        =   23
            Top             =   2505
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   556
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Frame Frame4 
            Caption         =   "Party Type"
            Height          =   585
            Left            =   3810
            TabIndex        =   34
            Top             =   2010
            Width           =   3615
            Begin VB.OptionButton Option2 
               Caption         =   "Local"
               Height          =   345
               Left            =   2100
               TabIndex        =   32
               Top             =   210
               Width           =   1395
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Import"
               Height          =   195
               Left            =   240
               TabIndex        =   22
               Top             =   270
               Width           =   1365
            End
         End
         Begin VB.TextBox Txtfields 
            Height          =   330
            Index           =   11
            Left            =   2670
            TabIndex        =   20
            Top             =   1650
            Width           =   4755
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "carcode"
            Height          =   330
            Index           =   10
            Left            =   1740
            MaxLength       =   4
            TabIndex        =   19
            Top             =   1650
            Width           =   885
         End
         Begin VB.TextBox Text3 
            Height          =   330
            Left            =   2655
            TabIndex        =   18
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1290
            Width           =   4785
         End
         Begin VB.TextBox Text2 
            Height          =   330
            Left            =   2655
            TabIndex        =   16
            TabStop         =   0   'False
            Text            =   " "
            Top             =   930
            Width           =   4800
         End
         Begin VB.TextBox Text1 
            Height          =   330
            Left            =   2670
            TabIndex        =   14
            TabStop         =   0   'False
            Text            =   " "
            Top             =   555
            Width           =   4800
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
            Index           =   5
            Left            =   6420
            MaxLength       =   10
            TabIndex        =   25
            Top             =   2655
            Width           =   930
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            Height          =   330
            Index           =   2
            Left            =   1740
            MaxLength       =   7
            TabIndex        =   15
            Top             =   915
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacode"
            Height          =   330
            Index           =   3
            Left            =   1755
            MaxLength       =   4
            TabIndex        =   17
            Top             =   1290
            Width           =   885
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "varcode"
            Height          =   330
            Index           =   4
            Left            =   1740
            MaxLength       =   10
            TabIndex        =   24
            Top             =   3045
            Width           =   1020
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            Height          =   330
            Index           =   1
            Left            =   1740
            MaxLength       =   7
            TabIndex        =   13
            Top             =   555
            Width           =   900
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "contno"
            Height          =   330
            Index           =   0
            Left            =   1740
            MaxLength       =   10
            TabIndex        =   11
            Top             =   195
            Width           =   1755
         End
         Begin MSMask.MaskEdBox MaskEdBox3 
            DataField       =   "contdt"
            DataSource      =   "ADOPRIMARYRS"
            Height          =   330
            Left            =   5685
            TabIndex        =   12
            Top             =   195
            Width           =   1515
            _ExtentX        =   2672
            _ExtentY        =   582
            _Version        =   393216
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   5730
            TabIndex        =   42
            Top             =   195
            Width           =   1725
            _ExtentX        =   3043
            _ExtentY        =   582
            _Version        =   393216
            Format          =   64421889
            CurrentDate     =   37257
            MinDate         =   36892
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   315
            Left            =   1740
            TabIndex        =   33
            Top             =   2505
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   64421889
            CurrentDate     =   37453
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Due Date"
            Height          =   195
            Left            =   225
            TabIndex        =   70
            Top             =   2535
            Width           =   690
         End
         Begin VB.Label Label10 
            Caption         =   "Indent No."
            Height          =   195
            Left            =   225
            TabIndex        =   69
            Top             =   2145
            Width           =   945
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Carrier "
            Height          =   195
            Index           =   1
            Left            =   225
            TabIndex        =   68
            Top             =   1710
            Width           =   495
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Contract Date"
            Height          =   195
            Left            =   4320
            TabIndex        =   49
            Top             =   270
            Width           =   990
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            Height          =   195
            Left            =   5430
            TabIndex        =   48
            Top             =   2715
            Width           =   960
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   225
            TabIndex        =   47
            Top             =   3015
            Width           =   480
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area "
            Height          =   195
            Index           =   0
            Left            =   225
            TabIndex        =   46
            Top             =   1320
            Width           =   375
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Contract Number"
            Height          =   195
            Left            =   225
            TabIndex        =   45
            Top             =   240
            Width           =   1200
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
            Height          =   195
            Left            =   225
            TabIndex        =   44
            Top             =   960
            Width           =   510
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier "
            Height          =   195
            Left            =   225
            TabIndex        =   43
            Top             =   600
            Width           =   615
         End
      End
   End
   Begin VB.Frame Frame7 
      Height          =   2430
      Left            =   990
      TabIndex        =   61
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIContract.frx":51F3
         Height          =   615
         Left            =   4020
         Picture         =   "RMIContract.frx":55D5
         Style           =   1  'Graphical
         TabIndex        =   64
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "RMIContract.frx":59A8
         Height          =   615
         Left            =   2580
         Picture         =   "RMIContract.frx":5D8E
         Style           =   1  'Graphical
         TabIndex        =   63
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtcontno 
         BackColor       =   &H80000009&
         Height          =   300
         Left            =   3510
         MaxLength       =   6
         TabIndex        =   62
         Top             =   870
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
         TabIndex        =   66
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Contract No."
         Height          =   195
         Left            =   2070
         TabIndex        =   65
         Top             =   930
         Width           =   900
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5295
      Left            =   150
      TabIndex        =   56
      Top             =   840
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIContract.frx":6154
         Height          =   615
         Left            =   3330
         Picture         =   "RMIContract.frx":653A
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   3930
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIContract.frx":6900
         Height          =   615
         Left            =   5070
         Picture         =   "RMIContract.frx":6CE2
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   3915
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   59
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         Left            =   60
         TabIndex        =   60
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Total"
      Height          =   195
      Index           =   1
      Left            =   8955
      TabIndex        =   110
      Top             =   6930
      Width           =   360
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Contract Without Sample"
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
      TabIndex        =   35
      Top             =   495
      Width           =   3255
   End
End
Attribute VB_Name = "FrmContract"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoPrimaryRS1 As Recordset
Attribute adoPrimaryRS1.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim Opt As String
Dim supbrk As String
Dim DB As Connection
Public Sub OpenConnection1()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index

Case 0
    If Record_Exists("fa_slmas", "Please Define the Supplier!!") = False Then Exit Sub
    If Record_Exists("rm_area", "Please Define the Area in SetUp!!") = False Then Exit Sub
    If Record_Exists("po_car", "Please Define the Carrier in SetUp!!") = False Then Exit Sub
    If Record_Exists("rm_var", "Please Define the Variety in SetUp!!") = False Then Exit Sub
    If Record_Exists("RM_MIXGRP", "Please Define the Mixing Count in SetUp!!") = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        Frame1.Visible = True
        Frame2.Visible = True
        'Frame5.Visible = True
        'Frame6.Visible = True
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        TXTFIELDS(8).Text = ""
        TXTFIELDS(11).Text = Empty
        ' Txtfields(13).Text = Empty
'''        Combo1.Text = " "
'        Combo2.Text = " "
        MaskEdBox3.Enabled = True
        MaskEdBox3.Text = pdate
        DTPicker1.MinDate = yfdate
        TXTFIELDS(0).Locked = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,carcode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont where 1 = 2 and divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.AddNew
        Call ENABLCONTLS
        Call bindcontls
        Set Rs = New Recordset
        'RS.Open "SELECT ISNULL(MAX(contno),0)+1 FROM rm_cont WHERE divcode='" & divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic
        'rs.Open "SELECT ISNULL(MAX(contno),0)+1 FROM rm_cont ", Db, adOpenStatic, adLockOptimistic
        'RS.Open "SELECT ISNULL(MAX(contno),0)+1 FROM rm_cont WHERE divcode='" & divcode & "'", db, adOpenStatic
        DB.BeginTrans
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(4).Enabled = False
        BUTTON(9).ToolTipText = "Add Record"
        TXTFIELDS(0).Locked = True
        'Txtfields(0).Text = rs(0)
        MaskEdBox3.Text = pdate
        MaskEdBox3.SetFocus
        StatusBar1.Panels(2).Text = "Enter Order Date"
        Text1.Locked = True
        Text2.Locked = True
        Text3.Locked = True
        TXTFIELDS(0).Locked = False
        Combo1.ListIndex = 0
        TXTFIELDS(0).SetFocus
        
Case 1
        'Modification
        Set rs4 = New Recordset
        'Rs4.Open "select count(*) from rm_cont where divcode='" & Divcode & "' and (recqty is null or recqty =0 )", Db 'Ravi on 28-12-2002
        rs4.Open "select count(*) from rm_cont where divcode='" & Divcode & "' and (isnull(ORDQTY,0) -isnull(RECQTY,0))>0 ", DB
    If Not rs4(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
        'to fill datacombo1 with divcode and divname
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and (recqty is null  or recqty is not null) order by contno", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "Arrival started ,Correction not Allowed", vbInformation, head
        Opt = ""
        Frame3.Visible = False
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        Call QUERY_MODE
        
        Exit Sub
    Else
        SSTab1.Visible = False
        Label15.Caption = "Order List"
        StatusBar1.Panels(2).Text = "Select a Order number from the list"
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        ''Ravi on 28-12-2002 KslList1.table = "rm_cont where divcode='" & Divcode & "' and (recqty is null or recqty =0)"
        KslList1.Table = "rm_cont where divcode='" & Divcode & "' and (isnull(ORDQTY,0) -isnull(RECQTY,0))>0  and sno is null"
        KslList1.listfield1 = "cast(contno as varchar)"
        KslList1.listfield2 = "convert(varchar,contdt,103)"
        Frame3.Visible = True
        Buttonframe.Enabled = False
        Command6.SetFocus
        Frame3.ZOrder
    End If
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Call disablcontls
        BUTTON(9).ToolTipText = "Modify"
        TXTFIELDS(0).Locked = True
        Frame1.Visible = False
        Frame2.Visible = False
        BUTTON(4).Enabled = False
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set rs4 = New Recordset
'        rs4.Open "select count(*) from rm_cont where divcode='" & Divcode & "' and recqty is null", db
        rs4.Open "select count(*) from rm_cont ", DB
        If Not rs4(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select contno,divcode,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and recqty is null", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "Arrival Started,Correction Not Allowed", vbInformation, head
        Call QUERY_MODE
        Exit Sub
    Else
        Label15.Caption = "Order List"
        StatusBar1.Panels(2).Text = "Select Order From the List"
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_cont where divcode='" & Divcode & "' and (recqty is null or recqty=0)  and sno is null"
        KslList1.listfield1 = "cast(contno as varchar)"
        KslList1.listfield2 = "convert(varchar,contdt,103)"
        Frame3.Visible = True
        Buttonframe.Enabled = True
        Frame3.ZOrder
        SSTab1.Visible = False
    End If
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False
        Call disablcontls
        BUTTON(9).ToolTipText = "Delete"
        Frame1.Visible = False
        Frame2.Visible = False
        BUTTON(4).Enabled = False
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 3
        Dim f As New repform1
        Screen.MousePointer = 11
        Repindex = 228
        f.Show
        Screen.MousePointer = 0
             
        
Case 4
        desc.Caption = "Find"
        txtcontno.Text = ""
        'txtcontno.SetFocus
        Frame7.Visible = True
        Frame7.ZOrder
        txtcontno.SetFocus
        Buttonframe.Enabled = False
        StatusBar1.Panels(2).Text = "Enter Any Order Number to be Found out"
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        Call bindcontls
        Call navi(BUTTON)
        Call FIR(BUTTON)
        BUTTON(4).Enabled = True
        Beep
        Exit Sub
GoFirstError:
        'MsgBox Err.description, vbInformation, head
    If err = 3021 Then
        MsgBox " No Records Found", vbInformation, head
    End If

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
        BUTTON(4).Enabled = True
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
        BUTTON(4).Enabled = True
        Beep
    End If
        ' show the current record
        Call navi(BUTTON)
        BUTTON(4).Enabled = True
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
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
        MsgBox err.description, vbInformation, head
Case 7
        'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)
        BUTTON(4).Enabled = True
    If adoPrimaryRS.AbsolutePosition = 1 Then
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
        Screen.MousePointer = 11
        On Error Resume Next
    If Opt = "add" Or Opt = "mod" Then
        If Trim(TXTFIELDS(1).Text) = "" Then
            MsgBox "Supplier Code Cannot Be Empty", vbInformation, head
            TXTFIELDS(1).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
'        If Trim(Txtfields(3).Text) = "" Then
'            MsgBox "Area Code Cannot Be Empty", vbInformation, head
'            Txtfields(3).SetFocus
'            Screen.MousePointer = 0
'            Exit Sub
'        End If
'        If Trim(Txtfields(10).Text) = "" Then
'            MsgBox "Carrier Code Cannot Be Empty", vbInformation, head
'            Txtfields(10).SetFocus
'            Screen.MousePointer = 0
'            Exit Sub
'        End If
'        If Trim(Txtfields(12).Text) = "" Then
'            MsgBox "Weighnment Code Cannot Be Empty", vbInformation, head
'            Txtfields(12).SetFocus
'            Screen.MousePointer = 0
'            Exit Sub
'        End If
        If Trim(TXTFIELDS(8).Text) = "" Then
            MsgBox "Payment Mode Cannot Be Empty", vbInformation, head
            TXTFIELDS(8).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        If Trim(Combo2.Text) = Empty Then
            MsgBox "Delivery Not Empty", vbInformation, head
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If Trim(TXTFIELDS(5).Text) = "" Then
            MsgBox "Mixgroup Cannot Be Empty", vbInformation, head
            TXTFIELDS(5).SetFocus
            Screen.MousePointer = 0
            Exit Sub
         Else
            Set Rs = New Recordset
            Rs.Open "select MIXGRPCD from RM_MIXGRP where MIXGRPCD = '" & TXTFIELDS(5).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount = 0 Then
                    Label15.Caption = "Count List"
                    StatusBar1.Panels(2).Text = "Select a Count from the list"
                    Frame1.Visible = False
                    Frame2.Visible = False
                    Frame3.Visible = True
                    Buttonframe.Enabled = False
                    KslList1.conn = connectstring
                    KslList1.Table = "RM_MIXGRP"
                    KslList1.listfield1 = "mixgrpcd"
                    KslList1.listfield2 = "mixgrpname"
                    Screen.MousePointer = 0
                    Exit Sub
            End If
        End If
        If Trim(TXTFIELDS(4).Text) = "" Then
            If Not Frame3.Visible = True Then
            MsgBox "Varcode Cannot Be Empty", vbInformation, head
            TXTFIELDS(4).SetFocus
            Screen.MousePointer = 0
            Screen.MousePointer = 0
            Exit Sub
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select varname from rm_var where varcode='" & TXTFIELDS(4).Text & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            Label15.Caption = "Variety List"
            StatusBar1.Panels(2).Text = "Select a Variety from the list"
            Frame1.Visible = False
            Frame2.Visible = False
            Frame3.Visible = True
            Buttonframe.Enabled = False
            KslList1.conn = connectstring
            KslList1.Table = "rm_var"
            KslList1.listfield1 = "varcode"
            KslList1.listfield2 = "varname"
            KslList1.SetFocus
            Screen.MousePointer = 0
            Exit Sub
         End If
    End If
    If Trim(TXTFIELDS(6).Text) = "" Then
        If Not Frame3.Visible = True Then
            MsgBox "Order Quantity Cannot Be Empty", vbInformation, head
            TXTFIELDS(6).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
    If Trim(TXTFIELDS(8).Text) = "" Then
        If Not Frame3.Visible = True Then
            MsgBox "Paymode Cannot Be Empty", vbInformation, head
            TXTFIELDS(8).SetFocus
             If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_pmode", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select paymode from rm_pmode where paymode = '" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.BOF Then
            Label15.Caption = "paymode List"
            StatusBar1.Panels(2).Text = "Select a Paymode from the list"
            Frame1.Visible = False
            Frame2.Visible = False
            Frame3.Visible = True
            Buttonframe.Enabled = False
            KslList1.conn = connectstring
            KslList1.Table = "rm_pmode"
            KslList1.listfield1 = "paymode"
            KslList1.listfield2 = "paydesc"
            'Command3.SetFocus
            If KslList1.Code = "" Then
                MsgBox "Enter Values In RM_PMODE Table", vbInformation, head
                Call BUTTON_Click(9)
            Else
                Frame3.ZOrder
            End If
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    Screen.MousePointer = 0
    Exit Sub
    End If
    End If
    If MaskEdBox3.Text <> "__/__/____" Then
        adoPrimaryRS("contdt") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
    Else
        adoPrimaryRS("contdt") = Format(MaskEdBox3.Text, "yyyy-mm-dd")
    End If
        
        If MaskEdBox1.Text <> "__/__/____" Then
            adoPrimaryRS("duedate") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
        Else
            adoPrimaryRS("duedate") = Null
        End If
        
        If Option1.Value = True Then
            adoPrimaryRS("im_ind") = "i"
        ElseIf Option2.Value = True Then
            adoPrimaryRS("im_ind") = "g"
        End If
        
        If Combo2.Text = "Spot" Then
            adoPrimaryRS("dlytype") = "S"
        End If
        If Combo2.Text = "Mill" Then
            adoPrimaryRS("dlytype") = "M"
        End If
        If Combo1.Text = "Bale" Then
            adoPrimaryRS("BBFLAG") = "B"
        Else
            adoPrimaryRS("BBFLAG") = "R"
        End If
        
            adoPrimaryRS("contno") = TXTFIELDS(0).Text
            adoPrimaryRS("divcode") = Divcode
            adoPrimaryRS("paymode") = TXTFIELDS(8).Text
            'adoprimaryrs("carcode") = TXTFIELDS(10).Text
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
        End If
        If Opt = "add" Then
            StatusBar1.Panels(2).Text = "Records Added"
            MsgBox "Record(s) Saved ", vbInformation, head
        ElseIf Opt = "mod" Then
            StatusBar1.Panels(2).Text = "Records Modified"
            MsgBox "Record(s) Modified ", vbInformation, head
        
        End If
        If Opt = "del" Then
            DB.Execute ("delete from rm_cont where contno=" + "'" + Trim(TXTFIELDS(0).Text) + "' and divcode = '" & Divcode & "'")
            DB.CommitTrans
            StatusBar1.Panels(2).Text = "Record(s) Deleted"
            MsgBox "Record(s) Deleted", vbInformation, head
            BUTTON(9).ToolTipText = "Save"
        End If
'Select Case OPT
'    Case "mod"
'        db.RollbackTrans
'    Case "add"
'        db.RollbackTrans
'    Case "del"
'        db.RollbackTrans
'End Select

        Screen.MousePointer = 0
        Opt = ""
        Call QUERY_MODE
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        desc.Caption = "Query"


Case 10
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
    Call QUERY_MODE
    Frame1.Visible = True
    Frame2.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If

    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
    Unload Me
  
End Select
End Sub
Private Sub ksllist1_DblClick()
Call Command3_Click
End Sub

Private Sub Combo1_GotFocus()
If Opt = "add" And TXTFIELDS(5).Text <> "" Then
StatusBar1.Panels(2).Text = "Select any Unit From the List"
End If
End Sub

Private Sub Combo1_LostFocus()
If Opt = "add" Then
Set Rs = New Recordset
    Rs.Open "select mixgrpcd from RM_MIXGRP where mixgrpcd = '" & TXTFIELDS(5).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
If Combo1.Text = " " And TXTFIELDS(5).Text <> "" Then
StatusBar1.Panels(2).Text = "Select any Unit From the List"
MsgBox "Select any Unit from the List", vbInformation, head
Combo1.SetFocus
End If
End If
End If
End Sub

Private Sub Combo2_GotFocus()
If Opt = "add" Then
If Combo2.Text = " " Then
StatusBar1.Panels(2).Text = "Select any Delivery From the List"
End If
End If
End Sub

Private Sub Combo2_LostFocus()
If Opt = "add" Then
    Set Rs = New Recordset
    Rs.Open "select paymode from rm_pmode where paymode = '" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        If Combo2.Text = " " And TXTFIELDS(8).Text <> "" Then
            StatusBar1.Panels(2).Text = "Select any Delivery From the List"
            MsgBox "Select any Delivery from the List", vbInformation, head
            Combo2.SetFocus
        Else
            BUTTON(9).SetFocus
            Exit Sub
        End If
    End If
End If
End Sub

Private Sub Command1_Click()
    desc.Caption = "Query"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont WHERE divcode='" & Divcode & "' and contno = '" & Trim(txtcontno.Text) & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by contno", DB, adOpenStatic, adLockOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    If adoPrimaryRS.RecordCount = 0 Then
'        MsgBox "No Such Order No. Found", vbInformation, head
'        Exit Sub
     txtcontno.Text = ""
     txtcontno.SetFocus
     MsgBox "No Record Found", vbInformation, head

    Else
    Call bindcontls
    'calling query procedure from module
    Call Query1(BUTTON)
    Frame7.Visible = False
    Buttonframe.Enabled = True
    End If
End Sub

Private Sub Command3_Click()
If Opt = "mod" Or Opt = "add" Then
Select Case KslList1.listfield1
Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KslList1.Code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        TXTFIELDS(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
        TXTFIELDS(1).Text = KslList1.Code
        Text1.Text = Trim(KslList1.description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        TXTFIELDS(3).Text = ""
        Text3.Text = ""
     Else
        TXTFIELDS(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(2).SetFocus
Case "SLCODE"
     If KslList1.Code = TXTFIELDS(1).Text Then
        MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
        KslList1.SetFocus
     Else
        TXTFIELDS(2).Text = KslList1.Code
        Text2.Text = Trim(KslList1.description)
        Frame3.Visible = False
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
      
     End If
Case "areacode"
     TXTFIELDS(3).Text = KslList1.Code
     Text3.Text = Trim(KslList1.description)
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
  
Case "varcode"
     TXTFIELDS(4).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
Case "mixgrpcd"
     TXTFIELDS(5).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
Case "paymode"
     TXTFIELDS(8).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True

'   If opt = "mod" Or opt = "add" Then
Case "cast(contno as varchar)"
        Frame3.Visible = False
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        Opt = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "'", DB, adOpenStatic, adLockOptimistic
        Opt = "mod"
        Call ENABLCONTLS
        Call bindcontls
        TXTFIELDS(0).Locked = True
End Select
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
End If

        If Opt = "del" Then
            Frame3.Visible = False
            Buttonframe.Enabled = True
            Frame1.Visible = True
            Frame2.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "'", DB, adOpenStatic, adLockOptimistic
            Call ENABLCONTLS
            Call bindcontls
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
     
End Sub

Private Sub Command2_Click()
   Frame7.Visible = False
   Buttonframe.Enabled = True
   Call QUERY_MODE
End Sub

Private Sub Command5_Click()
If Opt = "add" And (Label15.Caption = "Broker List" Or Label15.Caption = "Area List" Or Label15.Caption = "Carrier List" Or Label15.Caption = "Weighnment List") Then
Buttonframe.Enabled = True
Frame3.Visible = False
Buttonframe.Enabled = True
SSTab1.Visible = True
Frame1.Visible = True
Frame2.Visible = True
'Frame5.Visible = True
'Frame6.Visible = True
If Label15.Caption = "Broker List" Then
    TXTFIELDS(2).Text = ""
    TXTFIELDS(3).SetFocus
    Exit Sub
End If
 If Label15.Caption = "Area List" Then
    TXTFIELDS(3).Text = ""
    TXTFIELDS(10).SetFocus
    Exit Sub
 End If
 If Label15.Caption = "Carrier List" Then
    TXTFIELDS(10).Text = ""
    TXTFIELDS(12).SetFocus
    Exit Sub
 End If
 If Label15.Caption = "Weighnment List" Then
    TXTFIELDS(12).Text = ""
    TXTFIELDS(14).SetFocus
    Exit Sub
 End If
Else
Call BUTTON_Click(10)
SSTab1.Visible = True


End If
Exit Sub


End Sub

Private Sub Command6_Click()
Buttonframe.Enabled = True
If Opt = "mod" Or Opt = "add" Then
Select Case KslList1.listfield1
Case "slcode"
     Set rs3 = New Recordset
     rs3.Open "select areacode,areaname,state from rm_area where areacode = (select areacode from fa_slmas where slcode = '" & KslList1.Code & "')", DB, adOpenStatic, adLockBatchOptimistic
     Set RS2 = New Recordset
     RS2.Open "select BRCODE from fa_slmas where slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
     If RS2.BOF Then
        TXTFIELDS(2).Text = ""
        Text2.Text = ""
     Else
        Set rs1 = New Recordset
        rs1.Open "select b.slname from fa_slmas a,fa_slmas b where a.slcode = b.BRCODE  and a.slcode = '" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
        TXTFIELDS(1).Text = KslList1.Code
        Text1.Text = Trim(KslList1.description)
        'TXTFIELDS(2).Text = rs2(0)
        If rs1.BOF Then
           Text2.Text = ""
        Else
          Text2.Text = rs1(0)
        End If
     End If
     If rs3.BOF Then
        TXTFIELDS(3).Text = ""
        Text3.Text = ""
     Else
        TXTFIELDS(3).Text = rs3(0)
        Text3.Text = rs3(1)
     End If
     
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(2).SetFocus
     StatusBar1.Panels(2).Text = "Enter Broker Code"
     
Case "SLCODE"
     If KslList1.Code = TXTFIELDS(1).Text Then
        MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
        KslList1.SetFocus
     Else
        TXTFIELDS(2).Text = KslList1.Code
        Text2.Text = Trim(KslList1.description)
        Frame3.Visible = False
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        TXTFIELDS(3).SetFocus
        StatusBar1.Panels(2).Text = "Enter Area Code"
   End If
Case "areacode"
     TXTFIELDS(3).Text = KslList1.Code
     Text3.Text = Trim(KslList1.description)
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(10).SetFocus
     StatusBar1.Panels(2).Text = "Enter Carrier Code"
Case "carcode"
     TXTFIELDS(10).Text = KslList1.Code
     TXTFIELDS(11).Text = KslList1.description
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
'     Txtfields(12).SetFocus
     StatusBar1.Panels(2).Text = "Enter Weighment Code"
Case "varcode"
     TXTFIELDS(4).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(5).SetFocus
Case "mixgrpcd"
     TXTFIELDS(5).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     Combo1.SetFocus
Case "paymode"
     TXTFIELDS(8).Text = KslList1.Code
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(9).SetFocus
'   If opt = "mod" Or opt = "add" Then
Case "cast(contno as varchar)"
        Frame3.Visible = False
        Buttonframe.Enabled = True
        Frame1.Visible = True
        Frame2.Visible = True
        Opt = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,divcode,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "' and contdt='" & Format(KslList1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
        Opt = "mod"
        Call ENABLCONTLS
        Call bindcontls
        TXTFIELDS(0).Locked = True
        TXTFIELDS(0).Locked = True
        
Case "code"
     TXTFIELDS(12).Text = KslList1.Code
     TXTFIELDS(13).Text = Trim(KslList1.description)
     Frame3.Visible = False
     Buttonframe.Enabled = True
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(14).SetFocus
     StatusBar1.Panels(2).Text = "Enter Indent Number"
End Select
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
End If

        If Opt = "del" Then
            Frame3.Visible = False
            Buttonframe.Enabled = True
            Frame1.Visible = True
            Frame2.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select contno,contdt,supcd,brkcd,areacode,varcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and contno = '" & KslList1.Code & "' and contdt='" & Format(KslList1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
            Call ENABLCONTLS
            Call bindcontls
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
        SSTab1.Visible = True
End Sub

Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.Value >= yfdate And DTPicker1.Value <= pdate) Then
MsgBox "Order date should fall within the processing date", vbInformation, head
Exit Sub
Else
MaskEdBox3.Text = DTPicker1.Value
TXTFIELDS(1).SetFocus
End If
End Sub

Private Sub DTPicker2_CloseUp()
If Not (DTPicker2.Value >= yfdate And DTPicker2.Value <= pdate) Then
MsgBox "Order date should fall within the processing date", vbInformation, head
Exit Sub
Else
MaskEdBox1.Text = DTPicker2.Value
TXTFIELDS(4).SetFocus
End If
End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
  Call OpenConnection1
  'TabStrip1.Tabs.Clear
  Frame1.ZOrder
  Frame2.ZOrder
  Call QUERY_MODE
  BUTTON(9).Enabled = False
  DTPicker1.MinDate = yfdate
  DTPicker1.MaxDate = pdate
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  On Error Resume Next
  If Opt = "" Or Opt = " " Then
    If adoPrimaryRS("bbflag") = "B" Then
      Combo1.Text = "Bale"
   '   txtfields(6).SetFocus
    ElseIf adoPrimaryRS("bbflag") = "R" Then
       Combo1.Text = "Borah"
    Else
    Combo1.Text = " "
   '    txtfields(6).SetFocus
    End If
    If adoPrimaryRS("dlytype") = "S" Then
    Combo2.Text = "Spot"
   '   txtfields(8).SetFocus
    ElseIf adoPrimaryRS("dlytype") = "M" Then
       Combo2.Text = "Mill"
    Else
    Combo2.Text = " "
   '    txtfields(8).SetFocus
    End If

  End If
  'If Not (adoprimaryrs.EOF Or adoprimaryrs.EOF) Then

  'End If
  
End Sub
 Public Sub QUERY_MODE()
  On Error GoTo ER1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select divcode,contno,contdt,supcd,brkcd,areacode,ratekg,varcode,carcode,cntcode,bbflag,ordqty,candyrate,dlytype,paymode,salcnfno,indentno,duedate,weignment,im_ind,godown from rm_cont where divcode='" & Divcode & "' and contdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by contno", DB, adOpenStatic, adLockOptimistic
  Call bindcontls
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call disablcontls
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
  
  Exit Sub
ER1:
  If err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub

'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
Dim TX As TextBox
For Each TX In Me.TXTFIELDS
   Set TX.DataSource = adoPrimaryRS
Next

If IsNull(adoPrimaryRS("DUEDATE")) = False Or adoPrimaryRS("DUEDATE") = "" Then
    MaskEdBox1.Text = Format(adoPrimaryRS("DUEDATE"), "dd/mm/yyyy")
Else
    MaskEdBox1.Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("contdt")) = False Or adoPrimaryRS("contdt") = "" Then
    MaskEdBox3.Text = Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If
If adoPrimaryRS("IM_IND") = "i" Then
    Option2.Value = False
    Option1.Value = True
ElseIf adoPrimaryRS("IM_IND") = "g" Then
    Option1.Value = False
    Option2.Value = True
End If
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 1 To 9
    TXTFIELDS(i).Locked = False
Next

DTPicker1.Enabled = True
'MaskEdBox3.DataField = "contdt"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("contdt")) = False Then
    MaskEdBox3.Text = pdate 'Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox3.Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("duedate")) = False Then
    MaskEdBox1.Text = pdate 'Format(adoPrimaryRS("contdt"), "dd/mm/yyyy")
Else
    MaskEdBox1.Text = "__/__/____"
End If
If Opt = "add" Then
      MaskEdBox3.Text = pdate
End If
Combo1.Locked = False
Combo2.Locked = False
DTPicker1.Enabled = True
TXTFIELDS(10).Locked = False
End Sub

Public Sub disablcontls()
Dim i As Integer
For i = 0 To 9
TXTFIELDS(i).Locked = True
Next
MaskEdBox3.Enabled = False
Combo1.Locked = True
Combo2.Locked = True
DTPicker1.Enabled = False
Text1.Locked = True
Text2.Locked = True
Text3.Locked = True
TXTFIELDS(10).Locked = True
TXTFIELDS(11).Locked = True
End Sub



Private Sub MaskEdBox3_LostFocus()
If (MaskEdBox3.Enabled) And Not (Opt = "qry" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox3.Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox3.SetFocus
'    ElseIf CDate(MaskEdBox3.Text) > pdate Then
'            MsgBox ("Project date should not be greater then processing date"), , head
'            MaskEdBox3.SetFocus
   
     End If
     
If MaskEdBox3.Text <> "__/__/____" Then
    If Not (CDate(MaskEdBox3.Text) >= yfdate And CDate(MaskEdBox3.Text) <= pdate) Then
    MsgBox "Order Date should fall within the processing date", vbInformation, head
    MaskEdBox3.Text = "__/__/____"
    MaskEdBox3.SetFocus
    Exit Sub
    Else
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= " & val(TXTFIELDS(0).Text) & "  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number and Date already Defined", vbInformation, head
         TXTFIELDS(0).Text = ""
         TXTFIELDS(0).SetFocus
         Exit Sub
        End If
        
    End If
    End If
End If
End Sub



Private Sub OptB_LostFocus()
' If OptB.Value = True Then
'       Txtfields(6).SetFocus
' End If
End Sub

Private Sub OptR_LostFocus()
' If OptR.Value = True Then
'       Txtfields(6).SetFocus
' End If
End Sub

Private Sub Option1_LostFocus()
     StatusBar1.Panels(2).Text = "Enter Due Date"
End Sub

Private Sub Option2_LostFocus()
     StatusBar1.Panels(2).Text = "Enter Due Date"
     MaskEdBox1.SetFocus
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 And Opt = "add" Then
        SendKeys ("{TAB}")
    End If

End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 And Opt = "add" Then
        SendKeys ("{TAB}")
    End If

End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 And Opt = "add" Then
        SendKeys ("{TAB}")
    End If

End Sub

'Private Sub Option1_LostFocus()
'    Txtfields(4).SetFocus
'End Sub
'
'Private Sub Option2_LostFocus()
'    Txtfields(4).SetFocus
'End Sub

Private Sub txtcontno_Change()
If Len(txtcontno.Text) = 0 Then
Command1.Enabled = False
StatusBar1.Panels(2).Text = ""
Else
Command1.Enabled = True
End If
End Sub

Private Sub txtcontno_KeyPress(KeyAscii As Integer)
Call tonum(txtcontno, 3, KeyAscii)
End Sub

Private Sub Txtfields_Change(Index As Integer)

Select Case Index
Case 1
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(1).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   Else
     Text1.Text = ""
   End If
 Case 2
    'Slname
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(2).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   Else
     Text2.Text = ""
   End If
 Case 3
    'Area
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(3).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   Else
     Text3.Text = ""
   End If
Case 4 'Ravi
    'Variety
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode = '" & TXTFIELDS(4).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     TXTFIELDS(15).Text = Rs(0)
   Else
     TXTFIELDS(15).Text = ""
   End If
Case 10
    Set Rs = New Recordset
    Rs.Open "select carcode,carname from po_car where carcode='" & TXTFIELDS(10).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    TXTFIELDS(10).Text = Rs(0)
    TXTFIELDS(11).Text = Rs(1)
    'Else
 '   Txtfields(10).Text = ""
'    Txtfields(11).Text = ""
    End If
 
Case 12
    Set Rs = New Recordset
    Rs.Open "select code,wname from rm_weighnment where code='" & TXTFIELDS(12).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(12).Text = Rs(0)
        TXTFIELDS(13).Text = Rs(1)
    Else
        TXTFIELDS(13).Text = ""
    End If
 
 Case 7
 If Opt = "" Or Opt = " " Or Opt = "qry" Then
 TXTFIELDS(7).Text = Format(TXTFIELDS(7).Text, "#0.00")
 End If
   End Select
   
   
   
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
If Frame3.Visible = fasle Then
Select Case Index
'     Case 0
'          StatusBar1.Panels(2).Text = "Select Order Number"
'     Case 1
'          StatusBar1.Panels(2).Text = "Enter Supplier Code"
'     Case 2
'          StatusBar1.Panels(2).Text = "Enter Broker Code"
'     Case 3
'          StatusBar1.Panels(2).Text = "Enter Area Code"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Veriety"
     Case 5
          StatusBar1.Panels(2).Text = "Enter Mixing Group"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Maxium of 4 Integers"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum 7 Integers with 2 Decimal Places"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Payment Mode"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maxium of 10 Characters"
End Select

End If
If Frame3.Visible = True Then
    KslList1.SetFocus
End If
End If
End Sub



Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 And Opt = "add" Then
        SendKeys ("{TAB}")
    End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "del" Or Opt = "" Or Opt = " " Then
    KeyAscii = 0
    Beep
End If
Select Case Index
Case 1
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 2
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 3
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 4
    ToUpCase TXTFIELDS(Index), KeyAscii
Case 7
    tonum TXTFIELDS(Index), 7, KeyAscii
Case 6
    ToNumber TXTFIELDS(Index), KeyAscii
End Select
End Sub

Private Sub txtFields_LostFocus(Index As Integer)

   


'End If
End Sub

Public Sub Query1(tol As Object)
    'This procedure for Query
     tol(0).Enabled = False  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     'tol(3).Enabled = True  'LIST
     tol(4).Enabled = False  'QUERY
     tol(5).Enabled = False   'FIRST
     tol(6).Enabled = False  'NEXT
     tol(7).Enabled = False   'PREVIOUS
     tol(8).Enabled = False   'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0

        If Opt = "add" Then
           If Trim(TXTFIELDS(0).Text) = "" Then
            MsgBox "Order Number cannot be Empty", vbInformation, head
            Screen.MousePointer = 0
            Cancel = True
            Exit Sub
            End If
        Set Rs = New Recordset
        'rs.Open "SELECT * FROM rm_cont WHERE CONTNO= " & Val(Txtfields(0).Text) & " ", DB, adOpenStatic
        Rs.Open "SELECT * FROM rm_cont WHERE CONTNO= " & val(TXTFIELDS(0).Text) & "  and contdt='" & Format(MaskEdBox3.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
         MsgBox " Order Number already Defined", vbInformation, head
         TXTFIELDS(0).Text = ""
         Cancel = True
         Exit Sub
        End If
        End If

Case 1
    If Trim(TXTFIELDS(1).Text) <> "" Then
    On Error GoTo X
    Set Rs = New Recordset
    Rs.Open "select slname from fa_slmas where slcode='" & TXTFIELDS(1).Text & "'", DB, adOpenStatic
    If Not Rs.EOF Then
        Text1.Text = Rs(0)
        Exit Sub
    End If
    End If
X:
        Label15.Caption = "Supplier List"
        StatusBar1.Panels(2).Text = "Select Sopplier From the List"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.Visible = True
        KslList1.conn = connectstring
        KslList1.Table = "fa_slmas where slcode like 'C2%'"
        KslList1.listfield1 = "slcode"
        KslList1.listfield2 = "SLNAME"
        KslList1.SetFocus
        Exit Sub
    
    
Case 2
    If Trim(TXTFIELDS(2).Text) <> "" Then
        If Frame3.Visible = True Then
            Exit Sub
        End If
        Set rs4 = New Recordset
        rs4.Open "select count(*) from fa_slmas", DB
    If Not rs4(0) = 0 Then

    Set Rs = New Recordset
    Rs.Open "select slcode from fa_slmas where slcode = '" & TXTFIELDS(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic

    If Rs.BOF Then
        Label15.Caption = "Broker List"
        StatusBar1.Panels(2).Text = "Select Brocker From the List"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "fa_slmas"
        KslList1.listfield1 = "SLCODE"
        KslList1.listfield2 = "SLNAME"
    Else
        Set rs1 = New Recordset
        rs1.Open "select slcode,slname from fa_slmas where slcode = '" & TXTFIELDS(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic

        If rs1.BOF Then
           Text2.Text = ""
        ElseIf rs1(0).Value = TXTFIELDS(1).Text Then
          MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
          TXTFIELDS(2).Text = ""
          Cancel = True
          Else
             Text2.Text = rs1(1)
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
End If
Case 3
If Trim(TXTFIELDS(3).Text) <> "" Then
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select areacode from rm_area where areacode = '" & TXTFIELDS(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs.BOF Then
        Label15.Caption = "Area List"
        StatusBar1.Panels(2).Text = "Select Area Code From the List"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_area"
        KslList1.listfield1 = "areacode"
        KslList1.listfield2 = "areaname"
        'Command3.SetFocus
        If KslList1.Code = "" Then
             MsgBox "Enter Values In RM_AREA Table", vbInformation, head
             Call BUTTON_Click(9)
        Else
            Frame3.ZOrder
        End If
        
    Else
        Set rs1 = New Recordset
        rs1.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(3).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
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
End If

Case 6
   If Trim(TXTFIELDS(6).Text) = "" And Trim(TXTFIELDS(5).Text) <> "" Then
            MsgBox "Order Quantity Cannot Be Empty", vbInformation, head

            Cancel = True
            TXTFIELDS(6).SetFocus
             Exit Sub
   End If

Case 10
If Trim(TXTFIELDS(10).Text) <> "" Then
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from po_car", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select carcode from po_car where carcode = '" & TXTFIELDS(10).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs.BOF Then
        Label15.Caption = "Carrier List"
        StatusBar1.Panels(2).Text = "Select Carrier Code From the List"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "po_car"
        KslList1.listfield1 = "carcode"
        KslList1.listfield2 = "carname"
        StatusBar1.Panels(2).Text = "Select Carrier Code From the List"
        If KslList1.Code = "" Then
             MsgBox "Enter Values In po_car Table", vbInformation, head
             Call BUTTON_Click(9)
        Else
            Frame3.ZOrder
        End If
        
    Else
        Set rs1 = New Recordset
        rs1.Open "select carname from po_car where carcode = '" & TXTFIELDS(10).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        If rs1.BOF Then
           TXTFIELDS(11).Text = ""
        Else
           TXTFIELDS(11).Text = rs1(0)
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
End If

'-----Vivek

Case 12
If Trim(TXTFIELDS(12).Text) <> "" Then
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_weighnment where 1=1  and DivCode = '" & Divcode & "'", DB
    If Not rs4(0) = 0 Then
        Set Rs = New Recordset
        Rs.Open "select code from rm_weighnment where code = '" & TXTFIELDS(12).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.BOF Then
            Label15.Caption = "Weighnment List"
            StatusBar1.Panels(2).Text = "Select Weighnment Code From the List"
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            KslList1.conn = connectstring
            KslList1.Table = "rm_weighnment"
            KslList1.listfield1 = "code"
            KslList1.listfield2 = "wname"
            StatusBar1.Panels(2).Text = "Select weighnment Code From the List"
            If KslList1.Code = "" Then
                MsgBox "Enter Values In po_car Table", vbInformation, head
                Call BUTTON_Click(9)
            Else
                Frame3.ZOrder
            End If
        Else
            Set rs1 = New Recordset
            rs1.Open "select wname from rm_weighnment where code = '" & TXTFIELDS(12).Text & "'  and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rs1.BOF Then
               TXTFIELDS(13).Text = ""
            Else
               TXTFIELDS(13).Text = rs1(0)
            End If
        End If
Else
   MsgBox "Please Define the Weighment in the Set up", vbInformation, head
   TXTFIELDS(12).Text = ""
  Exit Sub
End If
End If

Case 4
    If Frame3.Visible = True Then
        Exit Sub
    End If
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_var", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select varcode from rm_var where varcode = '" & TXTFIELDS(4).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
   
    If Rs.BOF Then
        Label15.Caption = "Variety List"
        StatusBar1.Panels(2).Text = "Select a Variety code from the list"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_var"
        KslList1.listfield1 = "varcode"
        KslList1.listfield2 = "varname"
        
        If KslList1.Code = "" Then
             MsgBox "Enter Values In RM_VAR Table", vbInformation, head
             Call BUTTON_Click(9)
        Else
            Frame3.ZOrder
        End If
    Else
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 5
    If Frame3.Visible = True Then
        Exit Sub
    End If
    
    Set rs4 = New Recordset
    'rs4.Open "select a.CNTCD ""Code"" ,a.CNTNAME ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_COUNT a,rm_mixgrp b  order by a.CNTCD", DB, adOpenStatic, adLockBatchOptimistic
    rs4.Open "select count(*) from rm_MIXGRP where 1=1 and DivCode = '" & Divcode & "'", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select MIXGRPCD from RM_MIXGRP where MIXGRPCD = '" & TXTFIELDS(5).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    
        If Rs.BOF Then
            Label15.Caption = "Count List"
            StatusBar1.Panels(2).Text = "Select a Count from the list"
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            KslList1.conn = connectstring
            KslList1.Table = "RM_MIXGRP"
            '"rm_COUNT a,rm_mixgrp b WHERE A.MIXGRPCD=B.MIXGRPCd "
            KslList1.listfield1 = "mixgrpcd"
            KslList1.listfield2 = "mixgrpname"
            KslList1.SetFocus
           ' Command3.SetFocus
            
        If KslList1.Code = "" Then
            MsgBox "Enter Values In RM_MIXGRP Table", vbInformation, head
            Call BUTTON_Click(9)
        Else
            Frame3.ZOrder
            KslList1.SetFocus
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 8
    If Frame3.Visible = True Then
        Exit Sub
    End If
    
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_pmode", DB
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select paymode from rm_pmode where paymode = '" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs.BOF Then
        Label15.Caption = "paymode List"
        StatusBar1.Panels(2).Text = "Select a Paymode from the list"
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        KslList1.conn = connectstring
        KslList1.Table = "rm_pmode"
        KslList1.listfield1 = "paymode"
        KslList1.listfield2 = "paydesc"
        'Command3.SetFocus
        If KslList1.Code = "" Then
            MsgBox "Enter Values In RM_PMODE Table", vbInformation, head
            'Call BUTTON_Click(9)
            Call BUTTON_Click(10)
        Else
            Frame3.ZOrder
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 14
     StatusBar1.Panels(2).Text = "Select Party type"
End Select
End If
End Sub
