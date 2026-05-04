VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmTransaction 
   Caption         =   "Freight Bill Entry"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer2 
      Left            =   1455
      Top             =   4575
   End
   Begin VB.Frame UserFooterFrame 
      Height          =   4965
      Left            =   15360
      TabIndex        =   49
      Top             =   1680
      Visible         =   0   'False
      Width           =   4245
      Begin VB.PictureBox UserFooter1 
         Height          =   4215
         Left            =   240
         ScaleHeight     =   4155
         ScaleWidth      =   4035
         TabIndex        =   51
         Top             =   120
         Width           =   4095
      End
      Begin VB.CommandButton FooterCmd 
         Caption         =   "&OK"
         Height          =   450
         Left            =   1560
         TabIndex        =   50
         Top             =   4380
         Width           =   1320
      End
   End
   Begin VB.Frame Frame4 
      Height          =   1755
      Left            =   16320
      TabIndex        =   45
      Top             =   720
      Visible         =   0   'False
      Width           =   4215
      Begin VB.OptionButton Option1 
         Caption         =   "&Complete Deletion"
         Height          =   345
         Left            =   1140
         TabIndex        =   47
         Top             =   720
         Width           =   1905
      End
      Begin VB.OptionButton Option2 
         Caption         =   "&Line Deletion"
         Height          =   255
         Left            =   1140
         TabIndex        =   46
         Top             =   1260
         Width           =   1635
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Choose the  deletion type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   30
         TabIndex        =   48
         Top             =   120
         Width           =   4155
      End
   End
   Begin VB.Frame Buttonframe 
      ForeColor       =   &H8000000D&
      Height          =   645
      Left            =   0
      TabIndex        =   28
      Top             =   0
      Width           =   15210
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":0000
         Height          =   510
         Index           =   8
         Left            =   3690
         Picture         =   "FrmTransaction.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   4740
         Picture         =   "FrmTransaction.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   40
         ToolTipText     =   "Cancel (Ctrl+Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4215
         Picture         =   "FrmTransaction.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5790
         Picture         =   "FrmTransaction.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3165
         Picture         =   "FrmTransaction.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":2457
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmTransaction.frx":2761
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":2ADB
         Height          =   510
         Index           =   2
         Left            =   1095
         Picture         =   "FrmTransaction.frx":2DE5
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "Delete (Ctrl+D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":3181
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "FrmTransaction.frx":35CB
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":3930
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "FrmTransaction.frx":3D7A
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":40C7
         Height          =   510
         Index           =   3
         Left            =   1605
         Picture         =   "FrmTransaction.frx":43D1
         Style           =   1  'Graphical
         TabIndex        =   32
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   6720
         Picture         =   "FrmTransaction.frx":4766
         Style           =   1  'Graphical
         TabIndex        =   31
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmTransaction.frx":4BA8
         Height          =   510
         Index           =   0
         Left            =   60
         Picture         =   "FrmTransaction.frx":4EB2
         Style           =   1  'Graphical
         TabIndex        =   30
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5280
         Picture         =   "FrmTransaction.frx":5245
         Style           =   1  'Graphical
         TabIndex        =   29
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   270
         Left            =   7560
         TabIndex        =   43
         Top             =   240
         Width           =   600
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
            Name            =   "Tahoma"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   270
         Left            =   10080
         TabIndex        =   42
         Top             =   240
         Width           =   585
      End
   End
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   9255
      Top             =   930
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8325
      Left            =   120
      TabIndex        =   9
      Top             =   1560
      Width           =   14775
      _ExtentX        =   26061
      _ExtentY        =   14684
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmTransaction.frx":5687
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   2955
         Left            =   120
         TabIndex        =   13
         Top             =   120
         Width           =   14535
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Discount_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            Height          =   330
            Index           =   13
            Left            =   5880
            MaxLength       =   20
            TabIndex        =   84
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   2040
            Width           =   1575
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Total_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            Height          =   330
            Index           =   12
            Left            =   12360
            MaxLength       =   20
            TabIndex        =   82
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   2040
            Width           =   1575
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "GST_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            Height          =   330
            Index           =   10
            Left            =   9000
            MaxLength       =   20
            TabIndex        =   80
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   2040
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Net_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            Height          =   330
            Index           =   9
            Left            =   2160
            MaxLength       =   20
            TabIndex        =   78
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   2040
            Width           =   1335
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
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
            Left            =   9000
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   7
            Top             =   1680
            Width           =   1485
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
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
            Left            =   12360
            MaxLength       =   30
            TabIndex        =   8
            Top             =   1680
            Width           =   1965
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   8
            Left            =   2160
            MaxLength       =   20
            TabIndex        =   70
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFC0&
            DataField       =   "prno"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   7
            Left            =   2160
            TabIndex        =   3
            Top             =   1680
            Width           =   1365
         End
         Begin VB.TextBox Text2 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   3600
            TabIndex        =   63
            TabStop         =   0   'False
            Top             =   1680
            Width           =   3825
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   6
            Left            =   9000
            MaxLength       =   20
            TabIndex        =   4
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   960
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   5
            Left            =   12360
            MaxLength       =   20
            TabIndex        =   6
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   1320
            Width           =   1590
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Enabled         =   0   'False
            Height          =   330
            Index           =   2
            Left            =   9000
            MaxLength       =   20
            TabIndex        =   0
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   1320
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   0
            Left            =   9000
            MaxLength       =   20
            TabIndex        =   57
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   600
            Width           =   1455
         End
         Begin VB.TextBox Text1 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   3600
            TabIndex        =   55
            TabStop         =   0   'False
            Top             =   840
            Width           =   3825
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "refno"
            Height          =   330
            Index           =   4
            Left            =   2160
            MaxLength       =   20
            TabIndex        =   16
            ToolTipText     =   "Enter the Reference maximum with 20 characters"
            Top             =   2400
            Visible         =   0   'False
            Width           =   1710
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFC0&
            DataField       =   "prno"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   2160
            TabIndex        =   1
            Top             =   840
            Width           =   1365
         End
         Begin VB.TextBox Txtfields 
            Appearance      =   0  'Flat
            DataField       =   "REQNAME"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   2160
            TabIndex        =   2
            ToolTipText     =   "Select the Requester from list"
            Top             =   1245
            Width           =   1365
         End
         Begin VB.TextBox TxtRequester 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Left            =   3600
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   1245
            Width           =   3825
         End
         Begin VB.ComboBox CmbPrtype 
            Appearance      =   0  'Flat
            Height          =   315
            ItemData        =   "FrmTransaction.frx":56A3
            Left            =   10200
            List            =   "FrmTransaction.frx":56A5
            Style           =   2  'Dropdown List
            TabIndex        =   14
            ToolTipText     =   "Select the PR. Type"
            Top             =   3000
            Visible         =   0   'False
            Width           =   4245
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "prdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   285
            Index           =   0
            Left            =   12360
            TabIndex        =   17
            ToolTipText     =   "Select or Enter the Date"
            Top             =   660
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   503
            _Version        =   393216
            Appearance      =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
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
            Left            =   12360
            TabIndex        =   18
            Top             =   645
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483640
            Format          =   141164545
            CurrentDate     =   36218
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "prdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   285
            Index           =   1
            Left            =   12375
            TabIndex        =   5
            ToolTipText     =   "Select or Enter the Date"
            Top             =   975
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   503
            _Version        =   393216
            Appearance      =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
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
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   330
            Left            =   12360
            TabIndex        =   62
            Top             =   960
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483640
            Format          =   141164545
            CurrentDate     =   36218
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "prdate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   285
            Index           =   2
            Left            =   5040
            TabIndex        =   67
            ToolTipText     =   "Select or Enter the Date"
            Top             =   375
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   503
            _Version        =   393216
            Appearance      =   0
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
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
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   330
            Left            =   5025
            TabIndex        =   68
            Top             =   360
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483640
            Format          =   141950977
            CurrentDate     =   36218
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Discount Amount"
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
            Index           =   19
            Left            =   3840
            TabIndex        =   85
            Top             =   2160
            Width           =   1455
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Grand Total"
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
            Index           =   18
            Left            =   10680
            TabIndex        =   83
            Top             =   2160
            Width           =   1110
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "GST Amount"
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
            Index           =   17
            Left            =   7560
            TabIndex        =   81
            Top             =   2160
            Width           =   1050
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Net Amount"
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
            Index           =   14
            Left            =   600
            TabIndex        =   79
            Top             =   2160
            Width           =   1005
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "LR. No."
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
            Index           =   16
            Left            =   10680
            TabIndex        =   77
            Top             =   1800
            Width           =   555
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Lorry No."
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
            Index           =   15
            Left            =   7560
            TabIndex        =   76
            Top             =   1680
            Width           =   750
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Doc. Date"
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
            Index           =   13
            Left            =   3720
            TabIndex        =   69
            Top             =   420
            Width           =   810
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Doc No."
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
            Index           =   12
            Left            =   600
            TabIndex        =   66
            Top             =   480
            Width           =   615
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Carrier"
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
            Index           =   11
            Left            =   600
            TabIndex        =   64
            Top             =   1725
            Width           =   585
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Bill  Date"
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
            Index           =   10
            Left            =   10695
            TabIndex        =   61
            Top             =   1065
            Width           =   735
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
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
            Index           =   9
            Left            =   7560
            TabIndex        =   60
            Top             =   960
            Width           =   540
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Approved Amount"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   6
            Left            =   10680
            TabIndex        =   59
            Top             =   1440
            Width           =   1665
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Freight Amount"
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
            Index           =   5
            Left            =   7560
            TabIndex        =   58
            Top             =   1440
            Width           =   1320
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
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
            Index           =   0
            Left            =   7560
            TabIndex        =   56
            Top             =   600
            Width           =   870
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Reference"
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
            Index           =   8
            Left            =   480
            TabIndex        =   27
            Top             =   2520
            Visible         =   0   'False
            Width           =   870
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
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
            Index           =   3
            Left            =   10695
            TabIndex        =   26
            Top             =   705
            Width           =   1020
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Name"
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
            Index           =   2
            Left            =   600
            TabIndex        =   25
            Top             =   885
            Width           =   1215
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Contractor Name"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   570
            TabIndex        =   24
            Top             =   1320
            Width           =   1440
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Type"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   12840
            TabIndex        =   23
            Top             =   1440
            Visible         =   0   'False
            Width           =   1035
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Division"
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
            Index           =   4
            Left            =   4080
            TabIndex        =   22
            Top             =   120
            Visible         =   0   'False
            Width           =   660
         End
         Begin VB.Label LblLabels 
            AutoSize        =   -1  'True
            Caption         =   "User Name"
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
            Index           =   7
            Left            =   7845
            TabIndex        =   21
            Top             =   180
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label LblUser 
            AutoSize        =   -1  'True
            Caption         =   "LblUser"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00009F00&
            Height          =   195
            Left            =   9390
            TabIndex        =   20
            Top             =   180
            Visible         =   0   'False
            Width           =   630
         End
         Begin VB.Label LblDivision 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFD668&
            BorderStyle     =   1  'Fixed Single
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   240
            Left            =   4680
            TabIndex        =   19
            Top             =   120
            Visible         =   0   'False
            Width           =   1410
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   5040
         Left            =   120
         TabIndex        =   10
         Top             =   3120
         Width           =   14640
         _ExtentX        =   25823
         _ExtentY        =   8890
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Purchase Requisition Details"
         TabPicture(0)   =   "FrmTransaction.frx":56A7
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame2 
            Height          =   5010
            Left            =   0
            TabIndex        =   11
            Top             =   0
            Width           =   14550
            Begin VB.TextBox Text3 
               Appearance      =   0  'Flat
               BackColor       =   &H8000000F&
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00"
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
               ForeColor       =   &H80000006&
               Height          =   360
               Left            =   1545
               Locked          =   -1  'True
               TabIndex        =   88
               Top             =   4470
               Width           =   3495
            End
            Begin VB.CommandButton Command1 
               BackColor       =   &H80000003&
               Caption         =   "&Browse..."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   5040
               Style           =   1  'Graphical
               TabIndex        =   87
               Top             =   4440
               Width           =   1095
            End
            Begin VB.TextBox Txtfields 
               BackColor       =   &H00E0E0E0&
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000002&
               Height          =   330
               Index           =   14
               Left            =   7440
               TabIndex        =   86
               Top             =   4440
               Width           =   3855
            End
            Begin VB.TextBox Txtfields 
               BackColor       =   &H00E0E0E0&
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000002&
               Height          =   330
               Index           =   122
               Left            =   7440
               TabIndex        =   74
               Top             =   3960
               Width           =   3855
            End
            Begin VB.CommandButton btnBrowse 
               BackColor       =   &H80000003&
               Caption         =   "&Browse..."
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   390
               Left            =   5040
               Style           =   1  'Graphical
               TabIndex        =   72
               Top             =   3960
               Width           =   1095
            End
            Begin VB.TextBox txt_filename 
               Appearance      =   0  'Flat
               BackColor       =   &H8000000F&
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   "0.00"
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
               ForeColor       =   &H80000006&
               Height          =   360
               Left            =   1545
               Locked          =   -1  'True
               TabIndex        =   71
               Top             =   3990
               Width           =   3495
            End
            Begin FPSpreadADO.fpSpread SpdIndent 
               Height          =   4455
               Left            =   14160
               TabIndex        =   12
               Top             =   3840
               Visible         =   0   'False
               Width           =   14535
               _Version        =   524288
               _ExtentX        =   25638
               _ExtentY        =   7858
               _StockProps     =   64
               ArrowsExitEditMode=   -1  'True
               DAutoSizeCols   =   1
               DisplayRowHeaders=   0   'False
               EditEnterAction =   5
               EditModePermanent=   -1  'True
               EditModeReplace =   -1  'True
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               MaxCols         =   11
               MaxRows         =   10
               ProcessTab      =   -1  'True
               ScrollBarExtMode=   -1  'True
               SpreadDesigner  =   "FrmTransaction.frx":56C3
               Appearance      =   2
               ScrollBarStyle  =   3
            End
            Begin MSDataGridLib.DataGrid grddatagrid 
               Height          =   3420
               Left            =   120
               TabIndex        =   65
               Top             =   360
               Width           =   14475
               _ExtentX        =   25532
               _ExtentY        =   6033
               _Version        =   393216
               AllowUpdate     =   -1  'True
               AllowArrows     =   -1  'True
               BackColor       =   16777215
               ForeColor       =   0
               HeadLines       =   1
               RowHeight       =   15
               TabAction       =   1
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
               Caption         =   "Freight Entry  Details"
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
            Begin VB.Label Label3 
               Caption         =   "MD Approval Copy"
               Height          =   255
               Left            =   120
               TabIndex        =   90
               Top             =   4560
               Width           =   1455
            End
            Begin VB.Label Label2 
               Caption         =   "File Name"
               Height          =   255
               Left            =   6480
               TabIndex        =   89
               Top             =   4560
               Width           =   975
            End
            Begin VB.Label Label96 
               Caption         =   "File Name"
               Height          =   255
               Left            =   6480
               TabIndex        =   75
               Top             =   4080
               Width           =   975
            End
            Begin VB.Label Label93 
               Caption         =   "Supplier Bill"
               Height          =   255
               Left            =   120
               TabIndex        =   73
               Top             =   4080
               Width           =   975
            End
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   135
      Top             =   5730
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   44
      Top             =   2835
      Width           =   4680
      _ExtentX        =   8255
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
            AutoSize        =   1
            Object.Width           =   14993
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "24/04/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "23:41"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Freight Bill Entry"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   300
      TabIndex        =   54
      Top             =   840
      Width           =   2430
   End
   Begin VB.Label LblLineDel 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
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
      Left            =   525
      TabIndex        =   53
      Top             =   7575
      Width           =   1845
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   255
      TabIndex        =   52
      Top             =   9210
      Width           =   16620
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "FrmTransaction"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Bud As String

'---------------------------------------------------------------------------------------
' Module    : RMI RMI_PurchaseRequisition
' DateTime  : 22/08/2014 11:51
' Author    : KALSOFTE
' Purpose   :
'---------------------------------------------------------------------------------------
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim status As String
Dim rsg As Recordset
Dim itemrs As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim mvd As String
Dim rs1 As Recordset
Dim ITARY() As String
Dim Fnd As String
Dim FLG As String
Dim GRP As String
Dim RW As Long
Dim rpt As String
Dim chrs As Recordset
Dim find As Boolean
Dim rptv As Report.ReportView
Dim prano As Integer
Dim a
Dim tit As Recordset
Dim lno As Integer
Dim pgn As Integer
Dim tlno As Integer
Dim SNO As Integer
Dim BudgetPara As String
Dim Rs As Recordset
Dim Repeat As Boolean
Dim ItemMod, ManualIndNo As String
'Dim deltype As String
Private Enum E_SpdIndent
    SprdSno = 1
    Sprdvarcode
    sprdvarname
    SprdCurStk
    SprdCurBales
    Sprdpack
    SprdQtyInd
    SprdQtyIndkg
    SprdReqdDt
End Enum

Private Sub btnBrowse_Click()
   On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If
    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMFreightSupplierBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMFreightSupplierBill" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    txt_filename.Text = CommonDialog1.FileName
    txtfields(122).Text = strNewFile
    If Len(Trim(txtfields(122).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
   
   
  
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMFreightSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("Supplier Bill Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, App.Path & "\RMFreightSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

'---------------------------------------------------------------------------------------
' Procedure : BUTTON_Click
' DateTime  : 01/08/2010 11:52
' Author    : KALSOFTE
'---------------------------------------------------------------------------------------
'
Private Sub BUTTON_Click(Index As Integer)
Dim adoitypers As Recordset
intervalMinutes = -1
Select Case Index
Case 0
'    If Record_Exists("rm_cat", "Please Define Category in Category Master") = False Then Exit Sub
'    If Record_Exists("rm_var", "Please Define Varity in Varity Master") = False Then Exit Sub
'    If Record_Exists("pr_emp where divcode='" & Divcode & "'", "Please Define Employee in Setup") = False Then Exit Sub
'    If Record_Exists("rmi_doc_para where tc = 'PURCHASE REQUISITION'", "Please Define Document No. for Requisition in Housekeeping") = False Then Exit Sub
    LblUser.Visible = True
    LblUser.Caption = UserName
    DTPicker1.Enabled = True
    ReDim ITARY(100, 0)
    Opt = "add"
    RW = 1
    Frame1.Enabled = True
    desc.Caption = "Addition"
    Screen.MousePointer = 11
    stbar.Panels(2).Text = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,carcode,frtsuppcopy,LORRYNOS,LRNo,createdby,createddt,trans_ipadd,createuserid ,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy from  rm_frtentryhd   where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select CONTNO,CONTDT,a.VARCODE,varname,CNTCODE,mixgrpname,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from rm_frtentrydt a INNER JOIN rm_var rm ON a.varcode=rm.varcode  INNER JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode    WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic

   ' adoSecondaryRS.Open "select B.DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""Item"",a.varname""Item Description"",b.curstock ""Current Stock"",b.curbale ""Current Stock Bales"",Packtype ""Pack Type"", QTYIND ""Quantity Required"", QTYINDKG ""Quantity Required"",REQDDATE ""Required Date"" from  rm_prl b inner join RM_VAR a on b.varcode = a.varcode WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
    
     Set grddatagrid.DataSource = adoSecondaryRS
      Call GridAllign

        txtfields(8).Enabled = False
        txtfields(1).SetFocus
          
        txtfields(1).Text = ""
        txtfields(3).Text = ""
        txtfields(7).Text = ""
        txtfields(2).Text = ""
        txtfields(5).Text = ""
        txtfields(0).Text = ""
        txtfields(6).Text = ""
        txtfields(8).Text = ""
        txtfields(11).Text = ""
        txtfields(21).Text = ""
        txtfields(122).Text = ""
        txtfields(14).Text = ""
        
        txtfields(9).Text = ""
        txtfields(13).Text = ""
        txtfields(10).Text = ""
        txtfields(12).Text = ""
        
        txtfields(6).Locked = False
        txtfields(2).Locked = False
        txtfields(5).Locked = False
        Text1.Text = ""
        Text2.Text = ""
        TxtRequester.Text = ""
          MaskEdBox1(0).Text = pdate
          MaskEdBox1(1).Text = pdate
          MaskEdBox1(2).Text = pdate
          
                       Set rsnew = New Recordset
             rsnew.Open " select max(isnull(docno,0)) from rm_frtentryhd where divcode='" & Divcode & "'", DB, adOpenDynamic
             If rsnew.RecordCount > 0 Then
                If rsnew(0) > 0 Then
                    txtfields(8).Text = rsnew(0) + 1
                Else
                    txtfields(8).Text = 1
                End If
             Else
                txtfields(8).Text = 1
             End If
             
    Call FillPrtypeCombo
   ' Call FillPrCategory
   ' CmbUnit.SetFocus
    adoPrimaryRS.AddNew
    adoSecondaryRS.AddNew
    Call SetGridHead
    With SpdIndent
        .Col = SprdSno
        .SetText SprdSno, .Row, 1
        .Col = Sprdvarcode
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        .TypeMaxEditLen = 7
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .MaxRows = 1
        .Col = Sprdvarcode
        .SetText Sprdpack, .MaxRows, "B-Bale"
    End With
    DB.BeginTrans
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    Screen.MousePointer = 0
    SSTab2.Tab = 0
    CmbPrtype.Text = "K - Kgswise"
    
 '   CmbUnit.SetFocus
    
Case 1      'Modification
     
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
'    If backend = "Sql Server" Then
'        If Record_Exists("rm_prL where divcode = '" & Divcode & "' and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' and (QTYIND- isnull(QTYREQD,0)) <> 0 ", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
'    Else
'        If Record_Exists("rm_prH where divcode = '" & Divcode & "'  AND prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub
'    End If
 If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "' and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ", "No Record found for Modification as Purchase Order is placed for all the Records") = False Then Exit Sub

    Set rsg = New Recordset
    rsg.Open "select max(docdt) from rm_frtentryhd where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max Freight entry Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
            txtfields(6).Locked = False
        txtfields(2).Locked = False
        txtfields(5).Locked = False
    Frame1.Enabled = True
    'txtFields(1).Locked = True
'      Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,carcode,frtsuppcopy,LORRYNOS,LRNo,createdby,createddt,trans_ipadd,createuserid,modifiedby,modifieddt,mod_ipadd,moidifyuserid from  rm_frtentryhd   where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
'    Set adoSecondaryRS = New Recordset
'    adoSecondaryRS.Open "select CONTNO,CONTDT,a.VARCODE,varname,CNTCODE,mixgrpname,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from rm_frtentrydt a INNER JOIN rm_var rm ON a.varcode=rm.varcode  INNER JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode    WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
'    Set grddatagrid.DataSource = adoSecondaryRS
   
    Dim qry As String
    Opt = "mod"
    desc.Caption = "Modification"
    DTPicker1.Enabled = True
    LookUp.Clear = True
    LookUp.query = " select a.docno ""Doc. No."" ,a.docdt ""Doc. Date."",a.arrno ""Arr. No."" ,a.arrdt ""Arr.Date."" ,a.slcode,slname from rm_frtentryhd a inner join  fa_slmas b on a.slcode=b.slcode left join fa_jvhead c on c.vocno=a.jvocno and c.divcode=a.divcode and c.vocdt=a.docdt and isnull(appflg,'N')='Y' WHERE  c.vocno is null and a.divcode = '" & Divcode & "' AND  a.docdt  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and  isnull(FirstFR_AppFlg,'N')<>'Y' order by a.docno desc"
    LookUp.Caption = "Freight Entry Listing"
    LookUp.DefCol = "Doc. No."
    LookUp.ALIGN = "700,1000,1500,1500,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        a = LookUp.Fields(0)    'date
        B = LookUp.Fields(1)    'Depart
        c = LookUp.Fields(4)    'Indent No
        
       ' Call modlook(CStr(a), CStr(B), CStr(c))
         Set adoSecondaryRS = New Recordset
                     adoSecondaryRS.Open " SELECT contno,contdt,a.varcode,rm.varname,CNTCODE,MIXGRPNAME,ratecy,quantity,grosswt,tarewt,netwt,commwt FROM rm_frtentrydt  a INNER JOIN rm_var rm ON a.varcode=rm.varcode " & _
                                       " left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.supcd='" & c & "' ", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoSecondaryRS
         Call GridAllign
         
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,carcode,frtsuppcopy,LORRYNOS,LRNo,createdby,createddt,trans_ipadd,createuserid,modifiedby,modifieddt,mod_ipadd,moidifyuserid ,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy from  rm_frtentryhd a  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.slcode='" & c & "'", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
        txtfields(1).Text = adoPrimaryRS("slcode")
        txtfields(3).Text = adoPrimaryRS("contcode")
        txtfields(7).Text = adoPrimaryRS("carcode")
        txtfields(2).Text = adoPrimaryRS("frtamt")
        txtfields(5).Text = adoPrimaryRS("apprfrtamt")
        txtfields(6).Text = adoPrimaryRS("fbillno")
        txtfields(8).Text = adoPrimaryRS("docno")
        txtfields(122).Text = adoPrimaryRS("docno")
        
        txtfields(9).Text = Format(IIf(IsNull(adoPrimaryRS("Net_amt")), "0", adoPrimaryRS("Net_amt")), "00.00")
        txtfields(13).Text = Format(IIf(IsNull(adoPrimaryRS("Discount_amt")), "0", adoPrimaryRS("Discount_amt")), "00.00")
        txtfields(10).Text = Format(IIf(IsNull(adoPrimaryRS("GST_amt")), "0", adoPrimaryRS("GST_amt")), "00.00")
        txtfields(12).Text = Format(IIf(IsNull(adoPrimaryRS("Total_amt")), "0", adoPrimaryRS("Total_amt")), "00.00")
        
        txtfields(2).Text = Format(adoPrimaryRS("frtamt"), "00.00")
        txtfields(5).Text = Format(adoPrimaryRS("apprfrtamt"), "00.00")
        txtfields(14).Text = IIf(IsNull(adoPrimaryRS("MDApp_copy")), "", adoPrimaryRS("MDApp_copy"))
         txtfields(122).Text = IIf(IsNull(adoPrimaryRS("frtsuppcopy")), "", adoPrimaryRS("frtsuppcopy"))
        
        
        txtfields(11).Text = IIf(IsNull(adoPrimaryRS("LORRYNOS")), 0, adoPrimaryRS("LORRYNOS"))
        txtfields(21).Text = IIf(IsNull(adoPrimaryRS("lrno")), 0, adoPrimaryRS("lrno"))
        txtfields(122).Text = adoPrimaryRS("frtsuppcopy")
        MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "DD/MM/YYYY")
        MaskEdBox1(1).Text = Format(adoPrimaryRS("fbilldt"), "DD/MM/YYYY")
        MaskEdBox1(2).Text = Format(adoPrimaryRS("docdt"), "DD/MM/YYYY")
        
        End If
                       
        If txtfields(1).Text <> "" Then
            Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text1.Text = rsslmas("slname")
            Else
                Text1.Text = ""
            End If
        End If
                    
        If txtfields(3).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(3).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 TxtRequester.Text = rsslmas("slname")
            Else
                TxtRequester.Text = ""
            End If
        
        End If
        
         If txtfields(7).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  po_car where slcode='" & txtfields(7).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text2.Text = rsslmas("carname")
            Else
               Text2.Text = ""
            End If
        End If
        
        LookUp.Clear = True
        SSTab2.Tab = 0
    Else
        Opt = "qry"
        Call QUERY_MODE(0, 1)
        Call cancl1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
    End If
    stbar.Panels(2).Text = "Select the Records to Modify"
    
 Case 2 'Deletion
    If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "'  and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record can be Deleted as Freight Entry is placed for all Records") = False Then Exit Sub
    Frame1.Enabled = False
    Set rsg = New Recordset
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    rsg.Open "select max(docdt) from rm_frtentryhd where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max Freight Entry Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
'          Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt from  rm_frtentryhd   where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
'    Set adoSecondaryRS = New Recordset
'    adoSecondaryRS.Open "select CONTNO,CONTDT,a.VARCODE,varname,CNTCODE,mixgrpname,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from rm_frtentrydt a INNER JOIN rm_var rm ON a.varcode=rm.varcode  INNER JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode    WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
'    Set grddatagrid.DataSource = adoSecondaryRS
'    Call GridAllign
    
    Opt = "del"
    desc.Caption = "Deletion"
    LookUp.Clear = True
   LookUp.Clear = True
   ' LookUp.query = " select a.docno ""Doc. No."" ,a.docdt ""Doc. Date."",a.arrno ""Arr. No."" ,a.arrdt ""Arr.Date."" ,a.slcode,slname from rm_frtentryhd a inner join  fa_slmas b on a.slcode=b.slcode WHERE  a.divcode = '" & Divcode & "' AND  a.docdt  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and  isnull(FirstFR_AppFlg,'N')<>'Y'order by a.docno desc"
    LookUp.query = " select a.docno ""Doc. No."" ,a.docdt ""Doc. Date."",a.arrno ""Arr. No."" ,a.arrdt ""Arr.Date."" ,a.slcode,slname from rm_frtentryhd a inner join  fa_slmas b on a.slcode=b.slcode left join fa_jvhead c on c.vocno=a.jvocno and c.divcode=a.divcode and c.vocdt=a.docdt and isnull(appflg,'N')='Y' WHERE  c.vocno is null and a.divcode = '" & Divcode & "' AND  a.docdt  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' and  isnull(FirstFR_AppFlg,'N')<>'Y' order by a.docno desc"
    
    LookUp.Caption = "Freight Entry Listing"
    LookUp.DefCol = "Doc. No."
    LookUp.ALIGN = "700,1000,1500,1500,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
 
        a = LookUp.Fields(0)    'date
        B = LookUp.Fields(1)    'Depart
        c = LookUp.Fields(4)    'Indent No
        
       ' Call modlook(CStr(a), CStr(B), CStr(c))
         Set adoSecondaryRS = New Recordset
                     adoSecondaryRS.Open " SELECT contno,contdt,a.varcode,rm.varname,MIXGRPCD,MIXGRPNAME,ratecy,quantity,grosswt,tarewt,netwt,commwt FROM rm_frtentrydt  a INNER JOIN rm_var rm ON a.varcode=rm.varcode " & _
                                       " left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.supcd='" & c & "' ", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoSecondaryRS
         Call GridAllign
         
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,isnull(carcode,'') carcode,isnull(frtsuppcopy,'') frtsuppcopy,LORRYNOS,LRNo,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy from  rm_frtentryhd a  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.slcode='" & c & "'", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
        txtfields(1).Text = adoPrimaryRS("slcode")
        txtfields(3).Text = adoPrimaryRS("contcode")
        txtfields(7).Text = adoPrimaryRS("carcode")
        txtfields(2).Text = adoPrimaryRS("frtamt")
        txtfields(5).Text = adoPrimaryRS("apprfrtamt")
        txtfields(6).Text = adoPrimaryRS("fbillno")
        txtfields(8).Text = adoPrimaryRS("docno")
        txtfields(122).Text = adoPrimaryRS("frtsuppcopy")
        txtfields(14).Text = IIf(IsNull(adoPrimaryRS("MDApp_copy")), "", adoPrimaryRS("MDApp_copy"))
        txtfields(122).Text = IIf(IsNull(adoPrimaryRS("frtsuppcopy")), "", adoPrimaryRS("frtsuppcopy"))
        txtfields(11).Text = IIf(IsNull(adoPrimaryRS("LORRYNOS")), "", adoPrimaryRS("LORRYNOS"))
        txtfields(21).Text = IIf(IsNull(adoPrimaryRS("lrno")), "", adoPrimaryRS("lrno"))
         txtfields(0).Text = adoPrimaryRS("arrno")
        MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "DD/MM/YYYY")
        MaskEdBox1(1).Text = Format(adoPrimaryRS("fbilldt"), "DD/MM/YYYY")
        MaskEdBox1(2).Text = Format(adoPrimaryRS("docdt"), "DD/MM/YYYY")
        
        txtfields(9).Text = Format(IIf(IsNull(adoPrimaryRS("Net_amt")), "0", adoPrimaryRS("Net_amt")), "00.00")
        txtfields(13).Text = Format(IIf(IsNull(adoPrimaryRS("Discount_amt")), "0", adoPrimaryRS("Discount_amt")), "00.00")
        txtfields(10).Text = Format(IIf(IsNull(adoPrimaryRS("GST_amt")), "0", adoPrimaryRS("GST_amt")), "00.00")
        txtfields(12).Text = Format(IIf(IsNull(adoPrimaryRS("Total_amt")), "0", adoPrimaryRS("Total_amt")), "00.00")
        
        txtfields(2).Text = Format(adoPrimaryRS("frtamt"), "00.00")
        txtfields(5).Text = Format(adoPrimaryRS("apprfrtamt"), "00.00")
        
        End If
                       
        If txtfields(1).Text <> "" Then
            Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text1.Text = rsslmas("slname")
            Else
                Text1.Text = ""
            End If
        End If
                    
        If txtfields(3).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(3).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 TxtRequester.Text = rsslmas("slname")
            Else
                TxtRequester.Text = ""
            End If
        End If
        
          If txtfields(7).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  po_car where carcode='" & txtfields(7).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text2.Text = rsslmas("carname")
            Else
               Text2.Text = ""
            End If
        End If
        
        LookUp.Clear = True
        SSTab2.Tab = 0
        
        
        
    Else
        Opt = "qry"
        Call QUERY_MODE(0, 1)
        Call cancl1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
    End If
    
    stbar.Panels(2).Text = "Select the Records to Delete"
Case 3 'Find
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    'BUTTON(12).Enabled = False
    desc.Caption = "Find"
        If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "'  and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "'", "No Record can be Deleted as Freight Entry is placed for all Records") = False Then Exit Sub
    Frame1.Enabled = False
    Set rsg = New Recordset
    Call adddelmod(BUTTON)
    BUTTON(12).Enabled = False
    rsg.Open "select max(docdt) from rm_frtentryhd where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max Freight Entry Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
'          Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt from  rm_frtentryhd   where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
'    Set adoSecondaryRS = New Recordset
'    adoSecondaryRS.Open "select CONTNO,CONTDT,a.VARCODE,varname,CNTCODE,mixgrpname,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from rm_frtentrydt a INNER JOIN rm_var rm ON a.varcode=rm.varcode  INNER JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode    WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
'    Set grddatagrid.DataSource = adoSecondaryRS
'    Call GridAllign
    
    Opt = "Find"
    desc.Caption = "Deletion"
    LookUp.Clear = True
   LookUp.Clear = True
    LookUp.query = " select a.docno ""Doc. No."" ,a.docdt ""Doc. Date."",a.arrno ""Arr. No."" ,a.arrdt ""Arr.Date."" ,a.slcode,slname from rm_frtentryhd a inner join  fa_slmas b on a.slcode=b.slcode WHERE  a.divcode = '" & Divcode & "' AND  a.docdt  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' order by a.docno desc"
    LookUp.Caption = "Freight Entry Listing"
    LookUp.DefCol = "Doc. No."
    LookUp.ALIGN = "700,1000,1500,1500,1500,4500"
    LookUp.Alignment = "dbgright,dbgcenter,dbgleft,dbgleft"
    Screen.MousePointer = 0
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
 
        a = LookUp.Fields(0)    'date
        B = LookUp.Fields(1)    'Depart
        c = LookUp.Fields(4)    'Indent No
        
       ' Call modlook(CStr(a), CStr(B), CStr(c))
         Set adoSecondaryRS = New Recordset
                     adoSecondaryRS.Open " SELECT contno,contdt,a.varcode,rm.varname,MIXGRPCD,MIXGRPNAME,ratecy,quantity,grosswt,tarewt,netwt,commwt FROM rm_frtentrydt  a INNER JOIN rm_var rm ON a.varcode=rm.varcode " & _
                                       " left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.supcd='" & c & "' ", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoSecondaryRS
         Call GridAllign
         
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,isnull(carcode,'') carcode,isnull(frtsuppcopy,'') frtsuppcopy,LORRYNOS,LRNo,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy from  rm_frtentryhd a  where a.divcode='" & Divcode & "' and a.docno='" & a & "'  and a.docdt='" & Format(B, "YYYY-MM-DD") & "' and a.slcode='" & c & "'", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
        txtfields(1).Text = adoPrimaryRS("slcode")
        txtfields(3).Text = adoPrimaryRS("contcode")
        txtfields(7).Text = adoPrimaryRS("carcode")
        txtfields(2).Text = adoPrimaryRS("frtamt")
        txtfields(5).Text = adoPrimaryRS("apprfrtamt")
        txtfields(6).Text = adoPrimaryRS("fbillno")
        txtfields(8).Text = adoPrimaryRS("docno")
         txtfields(122).Text = adoPrimaryRS("frtsuppcopy")
         txtfields(0).Text = adoPrimaryRS("arrno")
        txtfields(11).Text = IIf(IsNull(adoPrimaryRS("LORRYNOS")), "", adoPrimaryRS("LORRYNOS"))
        txtfields(21).Text = IIf(IsNull(adoPrimaryRS("lrno")), "", adoPrimaryRS("lrno"))
        MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "DD/MM/YYYY")
        MaskEdBox1(1).Text = Format(adoPrimaryRS("fbilldt"), "DD/MM/YYYY")
        MaskEdBox1(2).Text = Format(adoPrimaryRS("docdt"), "DD/MM/YYYY")
        txtfields(9).Text = Format(IIf(IsNull(adoPrimaryRS("Net_amt")), "0", adoPrimaryRS("Net_amt")), "00.00")
        txtfields(13).Text = Format(IIf(IsNull(adoPrimaryRS("Discount_amt")), "0", adoPrimaryRS("Discount_amt")), "00.00")
        txtfields(10).Text = Format(IIf(IsNull(adoPrimaryRS("GST_amt")), "0", adoPrimaryRS("GST_amt")), "00.00")
        txtfields(12).Text = Format(IIf(IsNull(adoPrimaryRS("Total_amt")), "0", adoPrimaryRS("Total_amt")), "00.00")
        txtfields(122).Text = IIf(IsNull(adoPrimaryRS("frtsuppcopy")), "", adoPrimaryRS("frtsuppcopy"))
        txtfields(2).Text = Format(adoPrimaryRS("frtamt"), "00.00")
        txtfields(5).Text = Format(adoPrimaryRS("apprfrtamt"), "00.00")
        txtfields(14).Text = IIf(IsNull(adoPrimaryRS("MDApp_copy")), "", adoPrimaryRS("MDApp_copy"))
        
        End If
                       
        If txtfields(1).Text <> "" Then
            Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text1.Text = rsslmas("slname")
            Else
                Text1.Text = ""
            End If
        End If
                    
        If txtfields(3).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(3).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 TxtRequester.Text = rsslmas("slname")
            Else
                TxtRequester.Text = ""
            End If
        End If
        
         If txtfields(7).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  po_car where carcode='" & txtfields(7).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text2.Text = rsslmas("carname")
            Else
               Text2.Text = ""
            End If
        End If
        
        LookUp.Clear = True
        SSTab2.Tab = 0
        
        
        
    Else
        Opt = "qry"
        Call QUERY_MODE(0, 1)
        Call cancl1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
    End If
    
Case 8
    'first
     desc.Caption = "Query"
     If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
     End If
     Opt = "qry"
     If Record_Exists("rm_prH where divcode = '" & Divcode & "'  and prdate between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     'calling fir procedure from module
     Call bindcontls
     Call FIR(BUTTON)
         BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
     stbar.Panels(2).Text = "First Record"
     Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
       
Case 7
        'next
    desc.Caption = "Query"
    If Opt = "add" Then
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,UserId,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
    End If

    Opt = "qry"
    If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "' and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(6).Enabled = True
        ' Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
    End If
'show the current record
    Call bindcontls
    Exit Sub
GoNextError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
  
Case 6
    'previous
    desc.Caption = "Query"
    If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
    End If
    Opt = "qry"
    If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "'  and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        'moved off the end so go back
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
    End If
    'Added Raja show the current record
    Call bindcontls
    Exit Sub
GoPrevError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
 
Case 5
        'last
        desc.Caption = "Query"
        If Opt = "add" Then
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  = D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "'   Order by PRNO", DB, adOpenStatic
        End If
        Opt = "qry"
        If Record_Exists("rm_frtentryhd where divcode = '" & Divcode & "'  and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' ") = False Then Exit Sub
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
        'calling las procedure from module
        
        Call las(BUTTON)
        
        'Added Raja show the current record
        Call bindcontls
        
        Exit Sub
GoLastError:
       If Err = 3021 Then
         MsgBox " No records Found", vbInformation, head
       End If

Case 9
       'Save
        Screen.MousePointer = 11
        
        
        
        If Opt = "add" Then

                         'Divcode , docNo, DOCDT, slcode, contcode, carrier, arrno, arrdt, fbillno, fbilldt, frtamt, apprfrtamt

             
            adoPrimaryRS("Divcode") = Divcode
            adoPrimaryRS("docNo") = val(txtfields(8).Text)
            adoPrimaryRS("DOCDT") = Format(MaskEdBox1(2).Text, "dd-mmm-yyyy")
            adoPrimaryRS("slcode") = txtfields(1).Text
            adoPrimaryRS("contcode") = txtfields(3).Text
             adoPrimaryRS("carcode") = txtfields(7).Text
            adoPrimaryRS("fbillno") = txtfields(6).Text
            adoPrimaryRS("LORRYNOS") = txtfields(11).Text
            adoPrimaryRS("LRNo") = txtfields(21).Text
            adoPrimaryRS("MDApp_copy") = Trim(txtfields(14).Text)
            
            
            adoPrimaryRS("Net_amt") = val(txtfields(9).Text)
            adoPrimaryRS("Discount_amt") = val(txtfields(13).Text)
            adoPrimaryRS("GST_amt") = val(txtfields(10).Text)
            adoPrimaryRS("Total_amt") = val(txtfields(12).Text)
        
            
            adoPrimaryRS("frtsuppcopy") = txtfields(122).Text
            If MaskEdBox1(1).Text <> "__/__/____" Then
             adoPrimaryRS("fbilldt") = Format(MaskEdBox1(1).Text, "dd-mmm-yyyy")
'            Else
'                 adoPrimaryRS("fbilldt") = ""
            End If
             adoPrimaryRS("frtamt") = val(txtfields(2).Text)
             adoPrimaryRS("apprfrtamt") = val(txtfields(5).Text)
             adoPrimaryRS("ARRNO") = txtfields(0).Text
             adoPrimaryRS("arrdt") = Format(MaskEdBox1(0), "yyyy-mm-dd")
              adoPrimaryRS("createdby") = UserName
             adoPrimaryRS("createddt") = Format(pdate, "yyyy-mm-dd") & " " & Format(Now, "HH:MM:SS")
            adoPrimaryRS("trans_ipadd") = LocalIPAdd
            adoPrimaryRS("createuserid") = usrid
            
        If txtfields(8).Text = "" Then Exit Sub
                Opt = ""
                Set TrnLog = New Recordset
                TrnLog.Open "select docno,docdt,DIVCODE,ARRNO,ARRDATE,CONTNO,CONTDT,SUPCD,VARCODE,CNTCODE,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from  rm_frtentrydt  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                 If adoSecondaryRS.RecordCount > 0 Then
                SNos = 1
            
'                    Set TrnLog = New Recordset
'                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("docno") = val(txtfields(8).Text)
                    TrnLog("docdt") = Format(MaskEdBox1(2).Text, "dd-mmm-yyyy")
                    'TrnLog("ARRNO") = adoSecondaryRS("arrno")
                    'TrnLog("ARRDATE") = Format(MaskEdBox1(0), "yyyy-mm-dd")
                    TrnLog("ARRNO") = txtfields(0).Text
                    TrnLog("ARRDATE") = Format(MaskEdBox1(0), "yyyy-mm-dd")
                    TrnLog("CONTNO") = adoSecondaryRS("contno")
                    TrnLog("CONTDT") = Format(adoSecondaryRS("contdt"), "yyyy-mm-dd")
                    TrnLog("SUPCD") = txtfields(1).Text
                    TrnLog("VARCODE") = adoSecondaryRS("VARCODE")
                    TrnLog("CNTCODE") = adoSecondaryRS("CNTCODE")
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("RATECY") = adoSecondaryRS("ratecy")
                    TrnLog("QUANTITY") = adoSecondaryRS("QUANTITY")
                    TrnLog("GROSSWT") = adoSecondaryRS("GROSSWT")
                    TrnLog("TAREWT") = adoSecondaryRS("TAREWT")
                    TrnLog("NETWT") = adoSecondaryRS("NETWT")
                    TrnLog("commwt") = adoSecondaryRS("commwt")
                                  
                  TrnLog.UpdateBatch adAffectAllChapters
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                DB.Execute "update rm_arrival set frtentrapp='Y' where arrno='" & txtfields(0).Text & "' and ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "' "
                        SNos = SNos + 1
                 End If
              '  Next
              '  End With
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                
              '  Rs.UpdateBatch adAffectAllChapters
                Screen.MousePointer = 0
                MsgBox "Record Saved Successfully", vbInformation, head
                BUTTON(12).Enabled = True
                DB.CommitTrans
              '  Call BUTTON_Click(13)
        End If
        
        If Opt = "del" And deltype = "1" Then
         
            If vbNo = MsgBox("Are you sure want to Delete the Record(s)?", vbQuestion + vbYesNo, head) Then
                Bud = "Y"
                Call BUTTON_Click(10)
                Exit Sub
            End If
            
        If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
         Dim DelReasonCode As String
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
            

            
        End If
        
        
        
        If Opt = "mod" Then
             docNo = val(adoPrimaryRS("docno"))
             DOCDT = Format(adoPrimaryRS("docdt"), "DD/MM/YYYY")
            createdby = adoPrimaryRS("createdby")
            createddt = adoPrimaryRS("createddt")
            trans_ipadd = adoPrimaryRS("trans_ipadd")
             
             DB.Execute ("Delete From rm_frtentryhd WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND docno = " & val(adoPrimaryRS("docno")) & " AND docdt = '" & Format(adoPrimaryRS("docdt"), "dd-mmm-yyyy") & "'")
            DB.Execute ("Delete From rm_frtentrydt WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND docno = " & val(adoPrimaryRS("docno")) & " AND docdt = '" & Format(adoPrimaryRS("docdt"), "dd-mmm-yyyy") & "'")

              Set adoPrimaryRS = New Recordset
             adoPrimaryRS.Open "Select divcode,docno,docdt,slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,carcode,frtsuppcopy,LORRYNOS,LRNo,createdby,createddt,trans_ipadd,createuserid,modifiedby,modifieddt,mod_ipadd,moidifyuserid,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy from  rm_frtentryhd   where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
                    adoPrimaryRS.AddNew
             adoPrimaryRS("Divcode") = Divcode
            adoPrimaryRS("docNo") = docNo
            adoPrimaryRS("DOCDT") = Format(DOCDT, "dd-mmm-yyyy")
            adoPrimaryRS("slcode") = txtfields(1).Text
            adoPrimaryRS("contcode") = txtfields(3).Text
            adoPrimaryRS("carcode") = txtfields(7).Text
            adoPrimaryRS("frtsuppcopy") = txtfields(122).Text
            adoPrimaryRS("LORRYNOS") = txtfields(11).Text
            adoPrimaryRS("LRNo") = txtfields(21).Text
            
            adoPrimaryRS("fbillno") = txtfields(6).Text
            If MaskEdBox1(1).Text <> "__/__/____" Then
             adoPrimaryRS("fbilldt") = Format(MaskEdBox1(1).Text, "dd-mmm-yyyy")
'            Else
'                 adoPrimaryRS("fbilldt") = ""
            End If
             adoPrimaryRS("frtamt") = val(txtfields(2).Text)
             adoPrimaryRS("apprfrtamt") = val(txtfields(5).Text)
             adoPrimaryRS("ARRNO") = txtfields(0).Text
             adoPrimaryRS("arrdt") = Format(MaskEdBox1(0), "yyyy-mm-dd")
            
            adoPrimaryRS("createdby") = createdby
            adoPrimaryRS("createddt") = Format(createddt, "yyyy-mm-dd HH:MM:SS")
            adoPrimaryRS("trans_ipadd") = trans_ipadd
            adoPrimaryRS("createuserid") = createuserid
            adoPrimaryRS("modifiedby") = UserName
            adoPrimaryRS("modifieddt") = Format(pdate, "yyyy-mm-dd") & " " & Format(Now, "HH:MM:SS")
            adoPrimaryRS("mod_ipadd") = LocalIPAdd
            adoPrimaryRS("moidifyuserid") = usrid
            
            adoPrimaryRS("Net_amt") = val(txtfields(9).Text)
            adoPrimaryRS("Discount_amt") = val(txtfields(13).Text)
            adoPrimaryRS("GST_amt") = val(txtfields(10).Text)
            adoPrimaryRS("Total_amt") = val(txtfields(12).Text)
            adoPrimaryRS("MDApp_copy") = Trim(txtfields(14).Text)
'            If docNo = "" Then Exit Sub
'                Opt = ""
                Set TrnLog = New Recordset
                TrnLog.Open "select docno,docdt,DIVCODE,ARRNO,ARRDATE,CONTNO,CONTDT,SUPCD,VARCODE,CNTCODE,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from  rm_frtentrydt  WHERE  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                 If adoSecondaryRS.RecordCount > 0 Then
                SNos = 1
            
'                    Set TrnLog = New Recordset
'                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("docno") = docNo
                    TrnLog("docdt") = Format(MaskEdBox1(2).Text, "dd-mmm-yyyy")
                    'TrnLog("ARRNO") = adoSecondaryRS("arrno")
                    'TrnLog("ARRDATE") = Format(MaskEdBox1(0), "yyyy-mm-dd")
                    TrnLog("ARRNO") = txtfields(0).Text
                    TrnLog("ARRDATE") = Format(MaskEdBox1(0), "yyyy-mm-dd")
                    TrnLog("CONTNO") = adoSecondaryRS("contno")
                    TrnLog("CONTDT") = Format(adoSecondaryRS("contdt"), "yyyy-mm-dd")
                    TrnLog("SUPCD") = txtfields(1).Text
                    TrnLog("VARCODE") = adoSecondaryRS("VARCODE")
                    TrnLog("CNTCODE") = adoSecondaryRS("CNTCODE")
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("RATECY") = adoSecondaryRS("ratecy")
                    TrnLog("QUANTITY") = adoSecondaryRS("QUANTITY")
                    TrnLog("GROSSWT") = adoSecondaryRS("GROSSWT")
                    TrnLog("TAREWT") = adoSecondaryRS("TAREWT")
                    TrnLog("NETWT") = adoSecondaryRS("NETWT")
                    TrnLog("commwt") = adoSecondaryRS("commwt")
                                  
                  TrnLog.UpdateBatch adAffectAllChapters
                adoPrimaryRS.UpdateBatch adAffectAllChapters
                DB.Execute "update rm_arrival set frtentrapp='Y' where arrno='" & txtfields(0).Text & "' and ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "' "

                       ' SNos = SNos + 1
                    End If
              '  Next
              '  End With
               ' adoPrimaryRS.UpdateBatch adAffectAllChapters
              '  Rs.UpdateBatch adAffectAllChapters
                Screen.MousePointer = 0
                MsgBox "Record Modified Successfully", vbInformation, head
                BUTTON(12).Enabled = True
               ' DB.CommitTrans
              '  Call BUTTON_Click(13)
        End If

'            Opt = tmp
'          '  If Opt = "del" Then MsgBox "Record(s) Deleted Successfully", vbInformation, head
'          '  If Opt = "mod" Then MsgBox "Record(s) Modified Successfully", vbInformation, head
'            Call BUTTON_Click(13)
'        End If
        If Opt = "del" Then
           If vbNo = MsgBox("Are you sure want to Delete the Record(s)?", vbQuestion + vbYesNo, head) Then
           Else
            DB.BeginTrans
            Screen.MousePointer = 11
             DB.Execute "update rm_arrival set frtentrapp='N' where arrno='" & txtfields(0).Text & "' and ARRDATE='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "' "

            DB.Execute ("Delete From rm_frtentryhd WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND docno = " & val(adoPrimaryRS("docno")) & " AND docdt = '" & Format(adoPrimaryRS("docdt"), "dd-mmm-yyyy") & "'")
            DB.Execute ("Delete From rm_frtentrydt WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' AND docno = " & val(adoPrimaryRS("docno")) & " AND docdt = '" & Format(adoPrimaryRS("docdt"), "dd-mmm-yyyy") & "'")
           

            ''db.Execute "UPDATE RMI_PAH SET PRNO=NULL WHERE prno = " & val(adoPrimaryRS("prno")) & ""
            DB.CommitTrans
          
            MsgBox "Record(s) Deleted Successfully", vbInformation + vbOKOnly, head
            End If
        End If
        Opt = "del"
        Buttonframe.Enabled = True
        Call QUERY_MODE(0, 1)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(12).Enabled = True
        Screen.MousePointer = 0
        Opt = "qry"
        
Case 10
    If Bud <> "Y" Then
        Bud = ""
        If MsgBox("Do you want to Cancel?", vbQuestion + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Bud = ""
    DTPicker1.Enabled = False
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
    End Select
    Screen.MousePointer = 0
    desc.Caption = "Query"
    Buttonframe.Enabled = True
    Call QUERY_MODE(0, 1)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(12).Enabled = True
    Screen.MousePointer = 0
    Opt = "qry"
Case 12
        
    If val(txtfields(1).Text) > 0 And MaskEdBox1(0).Text <> "__/__/____" Then
'        Call CryClear
'        FromPRNO = val(Txtfields(1).Text)
'        ToPRNO = val(Txtfields(1).Text)
'        DOCDT = Format(MaskEdBox1(0).Text, "DD/MM/YY")
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\" & "PO\RMI_Purchase Requisition.rpt"
'        CrySelectionFormula = "{rm_prH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {rm_prH.PRNO} >=" & FromPRNO & " and {rm_prH.PRNO} <=" & ToPRNO & "  and {rm_prH.DIVCODE}='" & Divcode & "' AND {IN_ReportISONO.R_ID}=" & 1 & ""
'        FrmRpt.Show
    Else
        MsgBox "NO RECORDS TO PRINT", vbInformation, vbhead
        Exit Sub
    End If
Case 13

  cno = txtfields(1).Text
        cdt = MaskEdBox1(0).Text
        
          
        Dim clsCryRpt As New clsCrystal
        'Set Rs = New Recordset
        'Rs.Open "exec KSP_RMIPurchaseReq '" & Divcode & "' ,'" & cno & "','" & Format(cdt, "yyyy-MM-dd") & "'", DB, adOpenStatic
        'If Rs.RecordCount > 3 Then
        Set clsCryRpt.cryRept = Cry_Freightbill_Pallavaa 'Cry_FreightBillEntry
       ' Else
        'Set clsCryRpt.cryRept = Cry_PR_TRN_Cutsheet
        'End If
        clsCryRpt.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@docno;" & txtfields(8).Text & ""
        CrystalReport1.ParameterFields(2) = "@docdt;" & Format(MaskEdBox1(2).Text, "yyyy-MM-dd") & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowPrintBtn = True
        CrystalReport1.WindowShowExportBtn = True
  
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
       ' Call ExportERPPOPDF

Case 11
    'EXIT
    Unload Me
   'Pordmain.Picture2.Visible = True
End Select

intervalMinutes = -1
Exit Sub
er1:
If Err = -2147467259 Then
MsgBox Err.Description, vbInformation, head
    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
    MsgBox Err.Description, vbInformation, head
End If
End Sub

Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error
Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
Else
    Call disablcontls
End If
If DataCombo1.Text <> Empty Then
    'To extract the transaction  code
    c = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "          ") - 1)
    'To extract the document number
    B = Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "          ") + 10, 10)
    a = Empty 'Trim(Right(DataCombo1.Text, 5))
    Call delmodproc(CStr(a), CStr(B), CStr(c))
    If Opt = "mod" Then
    BUTTON(9).Enabled = True
    End If
Else
   MsgBox "Select a value from the list", vbOKOnly, head
   Screen.MousePointer = 0
   BUTTON(10).Enabled = True
End If

If Opt = "mod" Or Opt = "del" Then
    On Error Resume Next
    stbar.Panels(2).Text = "Click Save or Cancel Button to Continue...."
    grddatagrid.Col = 7
    grddatagrid.SetFocus
End If
Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form tmpPOINDENT", vbInformation, head
End Sub

Private Sub CmbCategory_GotFocus()
CmbCategory.BackColor = SpdHlightClr
stbar.Panels(2).Text = CmbCategory.ToolTipText
End Sub

Private Sub CmbCategory_KeyPress(KeyAscii As Integer)
Call NextFocus(KeyAscii)
End Sub
Private Sub CmbCategory_LostFocus()
CmbCategory.BackColor = SpdOrdClr
End Sub

Private Sub CmbPrtype_GotFocus()
CmbPrtype.BackColor = SpdHlightClr
stbar.Panels(2).Text = CmbPrtype.ToolTipText
End Sub

Private Sub CmbPrtype_KeyPress(KeyAscii As Integer)
    Call NextFocus(KeyAscii)
End Sub
Private Sub CmbPrtype_LostFocus()
    CmbPrtype.BackColor = SpdOrdClr
End Sub

Private Sub Command1_Click()
 On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If
    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMFreightMD_Approval" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMFreightMD_Approval" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    Text3.Text = CommonDialog1.FileName
    txtfields(14).Text = strNewFile
    If Len(Trim(txtfields(14).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
    
   
  
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMFreightMD_Approval" & CustID & "\" & Divcode & "-" & Trim(txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("MD Scan Copy Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath ' App.Path & "\RMFreightMD_Approval" & CustID & "\" & Divcode & "-" & Trim(Txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub DTPicker1_CloseUp()
'If Opt = "add" Then
'    MaskEdBox1(0).Text = Format(DTPicker1.value, "DD/MM/YYYY")
'    MaskEdBox1(0).SetFocus
' End If
End Sub
Private Sub DTPicker1_GotFocus()
 stbar.Panels(2).Text = DTPicker1.ToolTipText
End Sub
Private Sub DTPicker1_LostFocus()
    On Error GoTo DTPicker1_LostFocus_Error
    If Index = 0 And (MaskEdBox1(0).Enabled) Then
        If Not (IsDate(MaskEdBox1(0).Text)) Then
            MsgBox ("Please enter valid date"), vbInformation, head
            MaskEdBox1(0).SetFocus
        ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Purchase Requisition Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
            MsgBox ("Purchase Requisition Date must be equal to processing date"), vbInformation, head
            MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        End If
    End If
    Exit Sub
DTPicker1_LostFocus_Error:
        MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_LostFocus of Form RMI_PurchaseRequisition", vbInformation, head
End Sub

Private Sub DTPicker3_CloseUp()
 MaskEdBox1(2).Text = Format(DTPicker3.value, "DD/MM/YYYY")
    MaskEdBox1(2).SetFocus
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
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        If BUTTON(3).Enabled = True Then
            Call BUTTON_Click(3)    ''Find
        End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(4).Enabled = True Then
            Call BUTTON_Click(4)    ''List
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
            If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''Exit
        End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        If BUTTON(12).Enabled = True Then
            Call BUTTON_Click(12)   ''Print Option
        End If
    'ElseIf KeyCode = vbKeyY And Shift = 2 Then
    '    If BUTTON(13).Enabled = True Then
    '        Call BUTTON_Click(13)   ''Crystal Report
    '    End If
    ElseIf KeyCode = vbKeyEscape Then '27
         'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbYes Then
            If BUTTON(10).Enabled = True Then
                Call BUTTON_Click(10)    ''Cancel
            Else
                If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
            End If
         'Else
        
         'End If
    End If
    
    Exit Sub
Form_KeyDown_Error:
        MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form tmpPOINDENT", vbInformation, head
    
End Sub

Private Sub Form_Load()
  On Error GoTo Form_Load_Error
       Call NEWFORM1(BUTTON, GSNO)
  stbar.Panels(1).Text = sbmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  Call SetGridHead
  Opt = "qry"
  'Call FillPrtypeCombo
  Dim ParaRs As New Recordset
  Dim YearChkRs As New Recordset
  Call QUERY_MODE(0, 1)
  LblDivision.Caption = divname
  Opt = "qry"
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  DATLAB.Caption = pdate
  DTPicker1.maxdate = yldate
  DTPicker1.MinDate = yfdate
  DTPicker1.value = pdate
  SpdIndent.AddCustomCellType "TextBox", True, False, False, True
  SSTab2.Tab = 0
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form tmpPOINDENT", vbInformation, head
    
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
Buttonframe.Width = Me.Width
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
'If Opt = "add" Or Opt = "mod" Then

'    If Opt = "del" Then
'        tmsg = MsgBox("Do you want to Delete this record?", vbQuestion + vbYesNo, head)
'    Else
'        tmsg = MsgBox("Do you want to save this record?", vbQuestion + vbYesNo, head)
'    End If
'    If tmsg = vbYes Then
'        If BUTTON(9).Enabled = True Then Call BUTTON_Click(9)
'    ElseIf tmsg = vbNo Then
'        Bud = "Y"
'        If BUTTON(10).Enabled = True Then Call BUTTON_Click(10)
'    End If
'End If
intervalMinutes = -1
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        'Me.Show False, Me
        'DoEvents
        Me.SetFocus
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            Cancel = True
            Exit Sub
        End If
    End If

    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
    Reset
    Exit Sub
    
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form tmpPOINDENT", vbInformation, head
  End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
If Opt <> "add" And Opt <> "mod" And Opt <> "del" And Opt <> "fnd" Then
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        Set adoSecondaryRS = New Recordset
'        adoSecondaryRS.Open "select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Varcode"",i.varname ""Vartity Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.Packtype as Packtype , t.QTYIND ""Quantity Required""" & _
'                                "  ,QTYINDKG ""Quantity Required in KG"", reqddate ""Required Date"" from  rm_prL t inner join  RM_VAR i on t.varcode = i.varcode inner join rm_prH h on t.divcode=h.divcode and t.prno=h.prno and t.prdate=h.prdate " & _
'                                " where  t.divcode='" & adoPrimaryRS("divcode") & "' and t.prno='" & adoPrimaryRS("prno") & "' and t.prdate='" & Format(adoPrimaryRS("prdate"), "yyyy-mm-dd") & "'   Order by t.prsno ", DB, adOpenStatic, adLockBatchOptimistic

                    adoSecondaryRS.Open " select CONTNO,CONTDT,a.VARCODE,varname,CNTCODE,mixgrpname,RATECY,QUANTITY,GROSSWT,TAREWT,NETWT,commwt from rm_frtentrydt a INNER JOIN rm_var rm ON a.varcode=rm.varcode  INNER JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode where a.divcode='" & adoPrimaryRS("divcode") & "' " & _
                     "  and a.docno='" & adoPrimaryRS("docno") & "' and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic

              Set grddatagrid.DataSource = adoSecondaryRS
        
          txtfields(1).Text = adoPrimaryRS("slcode")
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("carcode")), "", adoPrimaryRS("carcode"))
        txtfields(3).Text = adoPrimaryRS("contcode")
     
        txtfields(6).Text = adoPrimaryRS("fbillno")
        txtfields(8).Text = adoPrimaryRS("docno")
        txtfields(0).Text = adoPrimaryRS("arrno")
        MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "DD/MM/YYYY")
        MaskEdBox1(1).Text = Format(adoPrimaryRS("fbilldt"), "DD/MM/YYYY")
        MaskEdBox1(2).Text = Format(adoPrimaryRS("docdt"), "DD/MM/YYYY")
        txtfields(14).Text = IIf(IsNull(adoPrimaryRS("MDApp_copy")), "", adoPrimaryRS("MDApp_copy"))
        
        txtfields(9).Text = Format(IIf(IsNull(adoPrimaryRS("Net_amt")), "0", adoPrimaryRS("Net_amt")), "00.00")
        txtfields(13).Text = Format(IIf(IsNull(adoPrimaryRS("Discount_amt")), "0", adoPrimaryRS("Discount_amt")), "00.00")
        txtfields(10).Text = Format(IIf(IsNull(adoPrimaryRS("GST_amt")), "0", adoPrimaryRS("GST_amt")), "00.00")
        txtfields(12).Text = Format(IIf(IsNull(adoPrimaryRS("Total_amt")), "0", adoPrimaryRS("Total_amt")), "00.00")
        
        txtfields(2).Text = Format(adoPrimaryRS("frtamt"), "00.00")
        txtfields(5).Text = Format(adoPrimaryRS("apprfrtamt"), "00.00")
        
        txtfields(11).Text = IIf(IsNull(adoPrimaryRS("LORRYNOS")), "", adoPrimaryRS("LORRYNOS"))
        txtfields(21).Text = IIf(IsNull(adoPrimaryRS("lrno")), "", adoPrimaryRS("lrno"))
        txtfields(122).Text = IIf(IsNull(adoPrimaryRS("frtsuppcopy")), "", adoPrimaryRS("frtsuppcopy"))

        If txtfields(1).Text <> "" Then
            Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text1.Text = rsslmas("slname")
            Else
                Text1.Text = ""
            End If
        End If
                    
        If txtfields(3).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(3).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 TxtRequester.Text = rsslmas("slname")
            Else
                TxtRequester.Text = ""
            End If
        
        End If
        
         If txtfields(7).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  po_car where carcode='" & txtfields(7).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text2.Text = rsslmas("carname")
            Else
               Text2.Text = ""
            End If
        End If
        
        
    End If
End If
If Opt <> "qry" Then Exit Sub
If adoPrimaryRS.AbsolutePosition > 0 Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
Else
    stbar.Panels(2).Text = "No Record found"
End If


Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form tmpPOINDENT", vbInformation, head
End Sub


Public Sub bindcontls()
'Dim oText As TextBox
'Dim intyrs As New ADODB.Recordset
'
'  'Bind the text boxes to the recordset
'
'On Error GoTo bindcontls_Error
'  For Each oText In Me.Txtfields
'    Set oText.DataSource = adoPrimaryRS
'  Next
'
'If Opt = "add" Then
'    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
'Else
'    If Not adoPrimaryRS.EOF Then
'        MaskEdBox1(0).Text = Format(adoPrimaryRS("Prdate"), "dd/mm/yyyy")
'    Else
'        MaskEdBox1(0).Text = "__/__/____"
'    End If
'
'    If adoPrimaryRS("Itype") = "P" Then
'        CmbPrtype.Text = "P -Packwise"
'    Else
'        CmbPrtype.Text = "K - Kgswise"
'    End If
'End If
'
'
'On Error Resume Next
'
'Exit Sub
'bindcontls_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form tmpPOINDENT", vbInformation, head

End Sub

Public Sub disablcontls()
'    Dim oText As TextBox
'On Error GoTo disablcontls_Error
'    For Each oText In Me.Txtfields
'        oText.Locked = True
'    Next
'    MaskEdBox1(0).Enabled = False
'
'    TxtRequester.Locked = True
Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form tmpPOINDENT", vbInformation, head
End Sub

Public Sub ENABLCONTLS()
    Dim oText As TextBox
    On Error GoTo ENABLCONTLS_Error
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
    
    
    'FooterFrame.Enabled = True
    MaskEdBox1(0).Enabled = False ' True
    DTPicker1.Enabled = False 'True
    DTPicker1.maxdate = pdate
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    End If
   
    TxtRequester.Locked = True
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form tmpPOINDENT", vbInformation, head
    End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
MaskEdBox1(Index).BackColor = SpdHlightClr
stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
End Sub

Private Sub MaskEdBox1_KeyPress(Index As Integer, KeyAscii As Integer)
    Call NextFocus(KeyAscii)
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" Then
    If ManualIndNo = "Y" Then
        Set Rs = New Recordset
        Rs.Open "select MAX(PRDATE) from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' and Prno = '" & val(txtfields(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
        If CDate(MaskEdBox1(0).Text) < Rs(0) Then
            MsgBox ("Date should be Equal to Current Date Or Max Purchase Requisition Date"), vbInformation, head
            MaskEdBox1(0).Text = Format(Rs(0), "DD/MM/YYYY")
            MaskEdBox1(0).SetFocus
        End If
    Else
        If Index = 0 And (MaskEdBox1(0).Enabled) And Not (Opt = "qry" Or Opt = "  " Or Opt = "") Then
            If Not (IsDate(MaskEdBox1(0).Text)) Then
                MsgBox ("Please enter valid Date"), vbInformation, head
                MaskEdBox1(0).SetFocus
            ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                    MsgBox ("Purchase Requisition date must be equal to processing date"), vbInformation, head
                    MaskEdBox1(0).Text = Format(pdate, "DD/MM/YYYY") 'pdate
                    MaskEdBox1(0).SetFocus
             ElseIf CDate(MaskEdBox1(0).Text) < pdate Then
                    MsgBox ("Purchase Requisition date must be equal to processing date"), vbInformation, head
                    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
                    MaskEdBox1(0).SetFocus
            End If
        End If
            
    End If
    
End If
MaskEdBox1(Index).BackColor = vbWhite
Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form tmpPOINDENT", vbInformation, head
End Sub



 Private Sub SpdIndent_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)
With SpdIndent
    If .ActiveCol = SprdReqdDt And Trim(GetText(SpdIndent, Sprdvarcode, .MaxRows)) <> "" And val(Replace(GetText(SpdIndent, SprdQtyInd, .MaxRows), ",", "")) > 0 Then
        .MaxRows = .MaxRows + 1
        RW = .MaxRows
        .Col = SprdSno
        .SetText SprdSno, .MaxRows, .MaxRows
    End If
    
    If .ActiveCol = SprdQtyInd Then
        Set TmpRs = New Recordset
       
    End If
    If .ActiveCol = E_SpdIndent.SprdReqdDt Then
        .TypeDateMin = Format(MaskEdBox1(0).Text, "DDMMyyYY")
    End If
End With
End Sub

Private Sub SpdIndent_Change(ByVal Col As Long, ByVal Row As Long)
If Opt = "add" Or Opt = "mod" Then
    With SpdIndent
        If Col = SprdSno Then
            .Col = SprdSno
            .SetText SprdSno, Row, .MaxRows
        ElseIf Col = Sprdvarcode Then
            Call itemlookup
       End If
       
    End With
End If
End Sub

Private Sub SpdIndent_Click(ByVal Col As Long, ByVal Row As Long)
With SpdIndent
If Col = SprdSno Then
    If Opt = "add" Or Opt = "mod" Or (Opt = "del" And deltype = "2") Then
        If SpdIndent.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbQuestion + vbYesNo, head) = vbYes Then
                SpdIndent.DeleteRows SpdIndent.ActiveRow, 1
                SpdIndent.MaxRows = SpdIndent.MaxRows - 1
                For nRow = 1 To .MaxRows
                    .Row = nRow
                    .SetText SprdSno, .Row, nRow
                Next
            End If
        Else
            MsgBox "You cannot delete this record - Detail can have atleast one record", vbInformation, head
        End If
    ElseIf Opt = "del" Then
        MsgBox "Line deletion not possible now", vbOKOnly, head
    End If
End If
End With
End Sub

Private Sub SpdIndent_GotFocus()
    SpdIndent.Row = SpdIndent.ActiveRow
    SpdIndent.Col = SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdHlightClr
End Sub

Private Sub SpdIndent_KeyDown(KeyCode As Integer, Shift As Integer)
With SpdIndent
    Select Case .ActiveCol
     Case Sprdpack
            If KeyCode = 13 Or KeyCode = 9 Then
                If CStr(GetText(SpdIndent, Sprdpack, .ActiveRow)) = "" Or (Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "B" And Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "H" And Left(CStr(Trim(GetText(SpdIndent, Sprdpack, .ActiveRow))), 1) <> "R") Then
                    MsgBox "Please Enter the unit B-Bale(or)H-Halfpress bale(or)R-Borah", vbInformation, head
                    
                    SpdSetFocus SpdIndent, Sprdpack1 - 1, .ActiveRow
                End If
            End If
        Case Sprdvarcode
            If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
                 Call itemlookup
            End If
            
            
        Case SprdQtyInd
            If KeyCode = 13 Or KeyCode = 9 Then
                If val(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) = 0 Then
                    MsgBox "Please enter the valid Quantity", vbInformation, head
                    SpdSetFocus SpdIndent, SprdQtyInd, .ActiveRow
                End If
            End If
        Case SprdReqdDt
            If KeyCode = 13 Or KeyCode = 9 Then
                If Trim(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) <> "" Then
                    If IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = False Then
                        MsgBox "Required Date must be equal or greater than PR.Date", vbInformation, head
                        SpdSetFocus SpdIndent, SprdReqdDt, .ActiveRow
                    ElseIf IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = True And (GetText(SpdIndent, SprdReqdDt, .ActiveRow)) < CDate(Format(MaskEdBox1(0).Text, "dd/mm/yyyy")) Then
                        MsgBox "Required Date must be equal or greater than PR.Date", vbInformation, head
                        SpdSetFocus SpdIndent, SprdReqdDt, .ActiveRow
                    End If
                End If
            End If
            
    End Select
End With
If Opt = "del" Then
    If KeyCode = 8 Or KeyCode = vbKeyDelete Then KeyCode = 0
End If

End Sub

Private Sub SpdIndent_KeyPress(KeyAscii As Integer)
With SpdIndent
    Select Case .ActiveCol
        Case E_SpdIndent.Sprdvarcode
            stbar.Panels(2).Text = "Select valid item from the Item List"
        Case E_SpdIndent.Sprdpack
            stbar.Panels(2).Text = "Select  the unit B-Bale(or)H-Halfpress bale(or)R-Borah"
            If Not (KeyAscii = vbKeyB Or KeyAscii = vbKeyH Or KeyAscii = vbKeyR Or KeyAscii = vbKeyTab Or KeyAscii = vbKeyReturn) Then
                    KeyAscii = 0
            ElseIf Len(GetText(SpdIndent, Sprdpack, .ActiveRow)) > 0 Then
                KeyAscii = 0
            End If
        Case E_SpdIndent.SprdQtyInd
            stbar.Panels(2).Text = "Enter the Required Quantity"
            
        Case E_SpdIndent.SprdReqdDt
            stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
        'Case E_SpdIndent.Sprdmachine
        '    stbar.Panels(2).Text = "Select valid Machine Name from the Machine List"
       ' Case E_SpdIndent.SprdRemarks
       '     stbar.Panels(2).Text = "Enter the Remarks maximum with 30 characters"
    End Select
End With
If Opt = "del" Then
    If KeyAscii <> 9 Then KeyAscii = 0
End If
End Sub

Private Sub SpdIndent_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
If Opt = "del" And Row > 0 And NewRow > 0 Then
    SpdIndent.Row = Row
    SpdIndent.Col = 1
    SpdIndent.BackColor = SpdOrdClr

    SpdIndent.Row = NewRow 'SpdIndent.ActiveRow
    SpdIndent.Col = 1 'SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdHlightClr
End If
If Opt = "add" Or Opt = "mod" Then
    With SpdIndent
        If .ActiveCol = SprdQtyInd Then
            If val(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) = 0 And Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) <> "" Then
                NewCol = .ActiveCol
                Cancel = True
            End If
            If Trim(Replace(GetText(SpdIndent, SprdQtyInd, .ActiveRow), ",", "")) <> "" Then
                Set rsa = New Recordset
'                rsa.Open " SELECT TOP 1 H.PORDNO,H.PORDDT,T.RATE,H.SLCODE,S.slname,H.CurrCode,G.DOCNO,G.DOCDT FROM RMI_ORDH H,RMI_ORDL T,FA_SLMAS S ,IN_TRNTAIL G " & _
'                         " Where h.divcode = t.divcode And h.pordno = t.pordno And h.porddt = t.porddt AND H.POGRP=T.POGRP  AND H.SLCODE=S.slcode " & _
'                         " AND  T.varcode='" & Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) & "' AND T.PORDDT*=G.porddt AND T.PORDNO*=G.pordno AND T.varcode*=G.varcode AND G.TC=1 ORDER BY T.PORDDT DESC ", DB
'                If rsa.RecordCount > 0 Then
'                    .SetText SprdLpoRate, .ActiveRow, rsa("rate")
'                    .SetText SprdLpoNo, .ActiveRow, rsa("PORDNO")
'                    .SetText SprdLpoDate, .ActiveRow, IIf(IsNull(rsa("porddt")), Null, Format(rsa("porddt"), "dd/mm/yy"))
'                    .SetText SprdLPoSlcode, .ActiveRow, rsa("slcode")
'                    .SetText SprdLpoName, .ActiveRow, rsa("slname")
'                    .SetText SprdLGRNNo, .ActiveRow, rsa("DocNo")
'                    .SetText SprdLGRNDt, .ActiveRow, IIf(IsNull(rsa("DocDt")), Null, Format(rsa("DocDt"), "dd/mm/yy"))
'                    .SetText SprdCurr, .ActiveRow, rsa("CurrCode")
'                End If
            End If
        End If
        
        
        
        If .ActiveCol = Sprdvarcode Then
            Set TmpRs = New Recordset
            TmpRs.Open "Select * from RM_VAR where varcode = '" & Trim(GetText(SpdIndent, Sprdvarcode, .ActiveRow)) & "'", DB
            If TmpRs.EOF Then
           '     Call ItemLookup
                stbar.Panels(2).Text = "Select valid item from the Item List"
                Cancel = True
                NewCol = .ActiveCol
            Else
                If Opt = "add" Then
                    'stbar.Panels(2).Text = "Addition"
                ElseIf Opt = "mod" Then
                    'stbar.Panels(2).Text = "Modification"
                End If
            End If
        End If
        
'        SpdIndent.TypeDateCentury = True
'        SpdIndent.TypeDateFormat = TypeDateFormatDDMMYY
'        SpdIndent.TypeDateMin = Format(pdate, "ddmmyyyy")
        If .ActiveCol = SprdReqdDt Then
            If Trim(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) <> "" Then
                If IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = False Then
                    stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
                    NewCol = .ActiveCol
                    Cancel = True
                ElseIf IsDate(GetText(SpdIndent, SprdReqdDt, .ActiveRow)) = True And (GetText(SpdIndent, SprdReqdDt, .ActiveRow)) < CDate(Format(MaskEdBox1(0).Text, "dd/mm/yyyy")) Then
                    'SpdIndent.SetText SprdReqdDt, .ActiveRow, Format(pdate, "dd/mm/yyyy")
                    stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
                    NewCol = .ActiveCol
                    Cancel = True
                End If
            End If
        Else
            If Opt = "add" Then
                'stbar.Panels(2).Text = "Addition"
            ElseIf Opt = "mod" Then
                'stbar.Panels(2).Text = "Modification"
            End If
        End If
        
        With SpdIndent
            If .ActiveCol = SprdQtyInd Then
                .Col = SprdQtyInd
                .TypeNumberDecPlaces = 3
            End If
        End With
    End With
    Call SpdHighlight_RMI(SpdIndent, NewRow, NewCol, Row, Col)
    With SpdIndent
        Select Case NewCol
            Case E_SpdIndent.Sprdvarcode
                stbar.Panels(2).Text = "Select valid item from the Item List"
            Case E_SpdIndent.Sprdpack
                stbar.Panels(2).Text = "Select the unit B-Bale(or)H-Halfpress bale(or)R-Borah"
            Case E_SpdIndent.SprdQtyInd
                stbar.Panels(2).Text = "Enter the Required Quantity"
            Case E_SpdIndent.SprdQtyIndkg
                stbar.Panels(2).Text = "Enter the Required Quantity in KG"
            Case E_SpdIndent.SprdReqdDt
                stbar.Panels(2).Text = "Required Date must be equal or greater than PR.Date"
            'Case E_SpdIndent.Sprdmachine
            '    stbar.Panels(2).Text = "Select valid Machine Name from the Machine List"
            'Case E_SpdIndent.SprdRemarks
            '  stbar.Panels(2).Text = "Enter the Remarks maximum with 30 characters"
        End Select
    End With
    
End If
End Sub

Private Sub SpdIndent_LostFocus()
    SpdIndent.Row = SpdIndent.ActiveRow
    SpdIndent.Col = SpdIndent.ActiveCol
    SpdIndent.BackColor = SpdOrdClr
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
If Index = 1 Then
        If txtfields(1).Text <> "" Then
            Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text1.Text = rsslmas("slname")
            Else
                Text1.Text = ""
            End If
        End If
End If

If Index = 3 Then
        If txtfields(3).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  fa_slmas where slcode='" & txtfields(3).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 TxtRequester.Text = rsslmas("slname")
            Else
                TxtRequester.Text = ""
            End If
        
        End If
End If
If Index = 7 Then
         If txtfields(7).Text <> "" Then
                Set rsslmas = New Recordset
            rsslmas.Open "Select * from  po_car where carcode='" & txtfields(7).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If rsslmas.RecordCount > 0 Then
                 Text2.Text = rsslmas("carname")
            Else
               Text2.Text = ""
            End If
        End If
 End If

'Select Case Index
'Case 3
'    Set rs1 = New Recordset
'    rs1.Open "select Empno,ename from pr_emp where dor is null and divcode='" & Divcode & "' and Empno = " & val(Txtfields(3).Text) & "", DB, adOpenStatic
'    If rs1.RecordCount > 0 Then
'        TxtRequester.Text = rs1!ename
'    Else
'        TxtRequester.Text = ""
'    End If
'
'    If Txtfields(3).Text = "AG" Then
'        TxtRequester.Text = "AUTO GENERATED PR"
'    End If
'
'Case 2
'    Set rs1 = New Recordset
'    rs1.Open "select depcode,depname from in_dep where divcode='" & Divcode & "' and depcode = '" & Trim(Txtfields(2).Text) & "' Order by 1", DB, adOpenStatic
'    If rs1.RecordCount > 0 Then
'        TxtDepartment.Text = Trim(rs1("depname"))
'    Else
'        TxtDepartment.Text = ""
'    End If
'End Select
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Change of Form tmpPOINDENT", vbInformation, head
End Sub


Private Sub txtFields_GotFocus(Index As Integer)

Select Case Index
   Case 2, 3, 4, 5, 6
     stbar.Panels(2).Text = txtfields(Index).ToolTipText
     txtfields(Index).BackColor = SpdHlightClr
End Select
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
'Call NextFocus(KeyAscii)



End Sub

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
'On Error GoTo TXTFIELDS_KeyPress_Error
'    Call NextFocus(KeyAscii)
'
'    If Opt = "add" Or Opt = "mod" Then
'        Select Case Index
'        Case 3
'            Call ToAlphanumNoSp(Txtfields(Index), 10, KeyAscii)
'        Case 4
'            'Call ToUpCase(txtFields(Index), KeyAscii)
'            Call ToAlphanumNoSp(Txtfields(Index), 20, KeyAscii)
'        Case 5
'            Call ToAlphanumNoSp(Txtfields(Index), 30, KeyAscii)
'        Case 6
'            Call ToAlphanumNoSp(Txtfields(Index), 20, KeyAscii)
'        End Select
'    End If
'Exit Sub
'TXTFIELDS_KeyPress_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form tmpPOINDENT", vbInformation, head
End Sub
Public Sub QUERY_MODE(MDOC As Long, blcode As String)
On Error GoTo query_mode_Error
intervalMinutes = -1
SSTab1.ZOrder
Buttonframe.Enabled = True
Frame1.Enabled = False
Call SetGridHead
Call NEWFORM1(BUTTON, GSNO)
Label1.Caption = ""
If Not Opt = "  " Then
    On Error GoTo er1
    If Opt = "add" Or Opt = "mod" Then
        Call disablcontls
    End If
    If MDOC = 0 Then
        Set adoPrimaryRS = New Recordset
        Call qry1
        Opt = "qry"
       ' If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
    Else
        If Trim(adoPrimaryRS("prno")) = Trim(Text1) Then
            find = True
            'Exit Do
        End If
        If adoPrimaryRS.EOF Then
            stbar.Panels(2).Text = "No Record found"
            Screen.MousePointer = 0
            find = False
            Exit Sub
        End If
        Call bindcontls
        Exit Sub
    End If
 
   ' Call bindcontls
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    desc.Caption = "Query"

  
End If
intervalMinutes = -1
Screen.MousePointer = 0
Call disablcontls
Exit Sub


er1:
If Err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Screen.MousePointer = 0
    Set grddatagrid.DataSource = Nothing
    Call BUTTON_Click(10)
    stbar.Panels(2).Text = "No records Found"
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form tmpPOINDENT", vbInformation, head
End Sub


Public Sub delmodproc(a As String, B As String, c As String)
On Error GoTo delmodproc_Error
    RW = 1000
    BUTTON(9).Enabled = True
    On Error GoTo Er
    Call ENABLCONTLS
    Set adoPrimaryRS = New Recordset
    If backend = "Sql Server" Then
        adoPrimaryRS.Open "SHAPE {select H.DIVCODE,H.PRNO,H.PRDATE,H.REFNO,H.ITYPE,H.reqname,d.ename,userId  from rm_prH H inner join  pr_emp D on h.divcode= d.divcode and h.reqname =d.empno where H.DIVCODE = '" & Divcode & "' AND  H.PRNO = " & val(c) & " and H.PRDATE = '" & Format(B, "dd-mmm-yyyy") & "'} AS ParentCMD APPEND ({select DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""varcode"",a.varname""Vartity Description"",b.curstock ""Current Stock"",b.curbale ""Current Stock Bales"",QTYIND ""Quantity Required"",QTYINDkg ""Quantity Required in KG"",REQDDATE ""Required Date"",packtype  from  rm_prl b inner join RM_VAR a on  " & _
        "  a.varcode=b.varcode  WHERE  b.DIVCODE = '" & Divcode & "' AND  b.PRNO = " & val(c) & " and b.PRDATE = '" & Format(B, "dd-mmm-yyyy") & "'  Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

'SELECT h.prno 'PR.No.',h.prdate 'Date',h.reqname 'Requester Code',d.ename 'Requester Name' from rm_prl l inner join  rm_prH h on h.divcode=l.divcode and h.prno=l.prno and h.prdate=l.prdate inner join  pr_emp D on d.divcode = h.divcode  AND H.reqname = D.empno WHERE  h.divcode = '" & Divcode & "' AND  H.PRDATE  between '" & Format(yfdate, "yyyy/mm/dd") & "' And '" & Format(yldate, "yyyy/mm/dd") & "' group by  h.prno,h.prdate,h.REQNAME,d.ename"
    Else
      '  adoPrimaryRS.Open "SHAPE {select H.DIVCODE,H.PRNO,H.PRDATE,H.DEPCODE,H.REFNO,D.DEPNAME,h.blcode,reqname,scopecode,UserId,H.SubCost from  rm_prH H, IN_DEP D where d.divcode='" & Divcode & "' and H.DIVCODE = '" & Divcode & "' and  h.blcode ='" & C & "' and  H.PRNO = " & val(b) & " and H.PRDATE = '" & Format(Trim(a), "dd-mmm-yyyy") & "' and h.depcode (+)= d.depcode} AS ParentCMD APPEND ({select DIVCODE,PRNO,PRDATE,PRSNO,a.varcode ""Item"",b.varname ""Description"",b.uom ""Unit"",b.curstock ""Current Stock"",QTYIND ""Quantity Required"",a.CATCODE ""Category"",CCCODE ""Cost Centre"", BGRPCODE ""Budget Group"",a.MACNO ""Machine Code"",REQDDATE ""Required date"",REMARKS ""Remarks"",a.blcode ""blcode"" from  rm_prl a,RM_VAR b where  a.varcode=b.varcode and PRNO = " & val(b) & " Order by PRSNO } AS ChildCMD RELATE DIVCODE TO DIVCODE, blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
    End If
    Call bindcontls

    Set adoSecondaryRS = New Recordset
    Set adoSecondaryRS.DataSource = adoPrimaryRS("childcmd").UnderlyingValue
    If Opt = "mod" Then
        If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveFirst
    End If
    Call SpdLoad
    txtfields(1).Locked = True 'False
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    Screen.MousePointer = 0
Exit Sub
Er:
    MsgBox "Select a valid value from the list", vbOKOnly, head
    BUTTON(9).Enabled = False
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form tmpPOINDENT", vbInformation, head
End Sub
Public Function newdocno()
Dim v_stdate As String, v_endate As String
Dim Rs As Recordset
Dim tcrs As Recordset
'This following  coding is used to get the document number from the parameter

On Error GoTo newdocno_Error

Set tcrs = New Recordset
tcrs.Open "select tc,stdocno From  RMI_DOC_PARA where tc = 'PURCHASE REQUISITION' ", DB, adOpenStatic, adLockBatchOptimistic
If tcrs.BOF Then
    MsgBox "No such transaction in the parameter table , Consult your DBA ", vbInformation, head
    newdocno = ""
    Screen.MousePointer = 0
Else
    v_stdate = Format(yfdate, "dd-mmm-yyyy")
    v_endate = Format(yldate, "dd-mmm-yyyy")
    
    Set Rs = New Recordset
    Rs.Open "select max(prno) from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & v_stdate & "'  and  '" & v_endate & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        newdocno = Rs(0) + 1
    Else
        newdocno = val(tcrs(1))
    End If
    
End If

Exit Function
newdocno_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure newdocno of Form RMI_PurchaseRequisition", vbInformation, head
End Function

Public Sub qry1()
On Error GoTo qry1_Error

If backend = "Sql Server" Then
''''    adoprimaryrs.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,reqname,scopecode,AppFlg,APP1,App2,App3,isNull(userid,'')userId,Th.SubCost,th.Prtype,Note,PurPose,th.Unitcode,Category,Createdby from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  AND CANCELFLAG IS NULL and isnull(th.DelFlg,'N')<>'Y' " & _
''''                    " Order by PRNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Description"",i.Cuom ""Unit"",I.RATE ""Rate"",t.macno""Machine Code"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'Indent Status' = (case WHEN ISNULL(CLOSEDQTY,0)>0  THEN 'ORDER CLOSED' WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'INDENT'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'INDENT CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
''''                    " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED' END ),FinalLevel_Remarks ,place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"",LRMI_RATE,LRMI_DATE,PUR_FROM,Sample,LRMI_CURRCODE from  rm_prL t, RM_VAR i, mm_MACmas S ,rm_prH h where t.divcode=h.divcode " & _
''''                    " and t.divcode ='" & Divcode & "' and s.divcode='" & Divcode & "'  and isnull(t.DelFlg,'N')<>'Y' and t.prno=h.prno and t.prdate=h.prdate and h.depcode*=s.depcode and t.macno *= s.mac_no and t.varcode = i.varcode and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
'MsqlStr = " SHAPE { Select distinct top 10 th.DIVCODE,th.prno,th.PRDATE,AppFlg,isNull(userid,'')userId,"
'MsqlStr = MsqlStr + " th.IType , refno, appflg,th.reqname "
'MsqlStr = MsqlStr + " from  rm_prH th INNER JOIN  pr_emp d ON th.REQNAME = d.empno   and  th.divcode = d.divcode"
'MsqlStr = MsqlStr + " where TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by prno desc "
'MsqlStr = MsqlStr + "} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""VarityCode"",i.Varname ""Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.QTYIND ""Quantity Required"",t.QTYINDKG ""Quantity Required"",reqddate ""Required Date"" "
'MsqlStr = MsqlStr + "  from  rm_prL t inner join   rm_Var i on  t.varcode = i.varcode   inner join rm_prH h on t.divcode=h.divcode and  t.prno=h.prno and t.prdate=h.prdate    where "
'MsqlStr = MsqlStr + " t.divcode ='" & Divcode & "' and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD"
'
                    
MsqlStr = " SHAPE { Select distinct  divcode,docno,docdt,th.slcode,contcode,carrier,arrno,arrdt,fbillno,fbilldt,frtamt,apprfrtamt,th.carcode ,Net_amt,GST_amt,Total_amt,Discount_amt,MDApp_copy,LORRYNOS,lrno,frtsuppcopy "
MsqlStr = MsqlStr + " from  rm_frtentryhd th INNER JOIN  fa_slmas d ON th.slcode=d.slcode"
MsqlStr = MsqlStr + " where TH.docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by docno desc "
MsqlStr = MsqlStr + "} AS ParentCMD APPEND ({select DIVCODE,docno,docdt,CONTNO,CONTDT,SUPCD,VARCODE,CNTCODE,RATECY,QUANTITY,FullTruckWgt,EmptyTruckWgt,GROSSWT,TAREWT,NETWT from rm_frtentrydt where divcode='" & Divcode & "' "
MsqlStr = MsqlStr + " and docdt between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by docno } AS ChildCMD RELATE DIVCODE TO DIVCODE,docno TO docno,docdt TO docdt) AS ChildCMD"

       
       
adoPrimaryRS.Open MsqlStr, DB, adOpenStatic, adLockBatchOptimistic
                    
'MsqlStr = select DIVCODE,CONTNO,CONTDT,SUPCD,AREACODE,BRKCD,VARCODE,CNTCODE,RATECY,QUANTITY,FullTruckWgt,EmptyTruckWgt,GROSSWT,TAREWT,NETWT,GODOWN,docno,docdt from rm_frtentrydt where divcode='" & divcode & "'"

'Else
'    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.blcode,th.itype,th.section,reqname,scopecode from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  (+)= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' " & _
'    " Order by PRNO} AS ParentCMD  APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Item Description"",i.Cuom ""Unit"",s.macdes ""Machine Code"",t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",decode(PRSTATUS,'O','ORDERED','E','ENQUIRED','R','RECEIVED','C','RECEIVED','INDENT') ""Indent Status"" ,remarks ""Remarks"",t.blcode ""blcode"",remark1 ""REMARKS1"" from  rm_prL t, RM_VAR i, IN_MAC S  where    t.macno = s.macno(+) and t.varcode = i.varcode Order by t.varcode,t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE , blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
End If

Exit Sub
qry1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form tmpPOINDENT", vbInformation, head
End Sub
Public Sub fnd1(MDOC)
On Error GoTo fnd1_Error
If backend = "Sql Server" Then

MsqlStr = " SHAPE { Select distinct th.DIVCODE,th.prno,th.PRDATE,AppFlg,isNull(userid,'')userId,"
MsqlStr = MsqlStr + " th.IType , refno, appflg,th.reqname "
MsqlStr = MsqlStr + " from  rm_prH th INNER JOIN  pr_emp d ON th.REQNAME = d.empno   and  th.divcode = d.divcode"
MsqlStr = MsqlStr + " where TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND  TH.DIVCODE = '" & Divcode & "'  Order by PRNO"
MsqlStr = MsqlStr + "} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""VarityCode"",i.Varname ""Description"",t.curstock ""Current Stock"",t.curbale ""Current Stock Bales"",t.QTYIND ""Quantity Required"",t.QTYINDKG ""Quantity Required"",reqddate ""Required Date"" "
MsqlStr = MsqlStr + "  from  rm_prL t inner join   rm_Var i on  t.varcode = i.varcode   inner join rm_prH h on t.divcode=h.divcode and  t.prno=h.prno and t.prdate=h.prdate    where "
MsqlStr = MsqlStr + " t.divcode ='" & Divcode & "' and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD"
adoPrimaryRS.Open MsqlStr, DB, adOpenStatic, adLockBatchOptimistic


'    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId,Th.SubCost from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  *= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' AND CANCELFLAG IS NULL " & _
'                      " Order by PRNO} AS ParentCMD APPEND ({select t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Description"",i.Cuom ""Unit"",I.RATE ""Rate"",t.macno ""Machine Code"",S.Model,t.curstock ""Current Stock"",t.QTYIND ""Quantity Required"",QTYREQD ""Quantity Approved"",QTYord ""Quantity Ordered"",qtyrec ""Quantity Received"",reqddate ""Required Date"",'Indent Status' = (case WHEN ISNULL(CLOSEDQTY,0)>0  THEN 'ORDER CLOSED' WHEN PRSTATUS IS NULL AND FirstApp IS NULL OR FirstApp = '' THEN 'INDENT'  WHEN PRSTATUS IS NULL AND QTYREQD=0   THEN 'INDENT CANCELLED'  WHEN PRSTATUS IS NULL AND DIRECTAPP='Y' THEN 'FINAL LEVEL APPROVED' WHEN PRSTATUS IS NULL AND ThirdApp='Y' THEN 'THIRD LEVEL APPROVED' WHEN PRSTATUS IS NULL AND SecondApp='Y' THEN 'SECOND LEVEL APPROVED'  WHEN PRSTATUS IS NULL AND FirstApp='Y' THEN 'FIRST LEVEL APPROVED' " & _
'                      " WHEN PRSTATUS = 'O' AND QTYORD > 0  THEN 'ORDERED' WHEN PRSTATUS = 'O' AND QTYORD = 0  THEN 'ORDER CANCELLED'  WHEN PRSTATUS = 'E' THEN 'ENQUIRED' WHEN PRSTATUS = 'C' THEN 'RECEIVED'  END ),place ""Place Of Issue"" ,appcost ""Approx. Cost"",remarks ""Remarks"",LRMI_CURRCODE from  rm_prL t, RM_VAR i, mm_MACmas S ,rm_prH h where t.divcode=h.divcode and t.divcode='" & Divcode & "' and s.divcode='" & Divcode & "' and t.prno=h.prno and t.prdate=h.prdate and h.depcode*=s.depcode and t.macno *= s.mac_no and t.varcode = i.varcode and t.Prdate Between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' Order by t.prsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
Else
    adoPrimaryRS.Open "SHAPE {select distinct th.DIVCODE,th.prno,th.PRDATE,TH.DEPCODE,D.DEPNAME,th.REFNO,th.blcode,th.itype,th.section,reqname,scopecode,isnull(userid,'')UserId from  rm_prH th, IN_DEP D  where d.divcode='" & Divcode & "' and th.DEPCODE  (+)= D.DEPCODE and TH.PRDATE between '" & Format(yfdate, "dd-mmm-yyyy") & "' and '" & Format(yldate, "dd-mmm-yyyy") & "' AND TH.DIVCODE = '" & Divcode & "' and th.blcode ='" & DataCombo3 & "'  and th.prno = " & MDOC & _
                      " Order by PRNO} AS ParentCMD APPEND ({select distinct t.DIVCODE,t.PRNO,t.PRDATE,t.PRSNO ,t.varcode ""Item"",i.varname ""Item Description"",i.Cuom ""Unit"",s.macdes ""Machine Code"",t.QTYIND ""Qty Required"",QTYREQD ""Qty Ordered"",qtyrec ""Qty Received"",reqddate ""Required Date"",decode(PRSTATUS,'O','ORDERED','E','ENQUIRED','R','RECEIVED','C','RECEIVED','INDENT') ""Indent Status"" ,remarks ""Remarks"",t.blcode ""blcode"" from  rm_prL t, RM_VAR i, IN_MAC S  where   t.macno = s.macno(+) and t.varcode = i.varcode Order by t.varcode } AS ChildCMD RELATE DIVCODE TO DIVCODE ,blcode TO blcode ,PRNO TO PRNO,PRDATE TO PRDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
End If
Exit Sub
fnd1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form tmpPOINDENT", vbInformation, head
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
    ITARY(t + 1, 0) = grddatagrid.Columns(G_varcode)
    For I = 0 To t
        If ITARY(t + 1, 0) = ITARY(I, 0) Then
            Fnd = "y"
            Exit For
        End If
    Next
    End If
Exit Sub
chkrepeat_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkrepeat of Form tmpPOINDENT", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 1
    If Opt = "add" Then
       ' On Error GoTo DepLookup_Error
        LookUp.Clear = True
        LookUp.query = "select  distinct slcode 'Supplier Code',slname 'Supplier Name',City, isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(supptype,'R') Supptype from fa_slmas a inner join rm_arrival b on a.slcode=b.supcd where b.divcode='" & Divcode & "' and isnull(frtentrapp,'N')<>'Y' and isnull(b.FREIGHT,0) >0 order by 1"
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier"
        LookUp.ALIGN = "1000,2000"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(1).Text = LookUp.Fields(0)
            Text1.Text = LookUp.Fields(1)
            LookUp.Clear = True
            Call arrselect
            txtfields(3).SetFocus
        Else
            LookUp.Clear = True
            txtfields(1).SetFocus
            Exit Sub
        End If
    End If

            
    
    Case 3
      ' On Error GoTo DepLookup_Error
        LookUp.Clear = True
        LookUp.query = "select slcode 'Contractor Code',slname 'Contractor' from fa_slmas order by 1"
        LookUp.Caption = "Contractor Listing"
        LookUp.DefCol = "Contractor"
        LookUp.ALIGN = "1300,5000"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(3).Text = LookUp.Fields(0)
           TxtRequester.Text = LookUp.Fields(1)
            LookUp.Clear = True
             txtfields(7).SetFocus
        Else
            LookUp.Clear = True
            txtfields(3).SetFocus
            Exit Sub
        End If
        
        
    Case 7
     '  On Error GoTo DepLookup_Error
     Set rst = New Recordset
     rst.Open "select carcode,carname from po_car where carcode='" & txtfields(7).Text & "'", DB, adOpenStatic
     If rst.EOF Then
     
        LookUp.Clear = True
        LookUp.query = "select carcode,carname from po_car order by 1"
        LookUp.Caption = "Carrier Listing"
        LookUp.DefCol = "Carrier"
        LookUp.ALIGN = "1000,2000"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(7).Text = LookUp.Fields(0)
            Text2.Text = LookUp.Fields(1)
            LookUp.Clear = True
             txtfields(6).SetFocus
        Else
            LookUp.Clear = True
            txtfields(3).SetFocus
            Exit Sub
        End If
     Else
        txtfields(7).Text = rst(0)
        Text2.Text = rst(1)
     End If
        
'    Case 9
'         ' StatusBar1.Panels(2).Text = "Select Carrier from the list"
'            LookUp.Clear = True
'            LookUp.query = "SELECT carcode""Transport Code"",Carname""Transport Name"" FROM PO_CAR"
'            LookUp.DefCol = "Transport Name"
'            LookUp.Caption = "Carrier Listing"
'            LookUp.ALIGN = "1500,3500"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                Txtfields(9).Text = LookUp.Fields(0)
'                Text7.Text = LookUp.Fields(1)
'                LookUp.Clear = True
'                Txtfields(5).SetFocus
'            Else
''                txtfields(9).Text = ""
''                Text7.Text = ""
''                txtfields(9).SetFocus
'                Call BUTTON_Click(10)
'                Exit Sub
'            End If
    End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form tmpPOINDENT", vbInformation, head
    
End Sub
'Sub DepLookup()
'On Error GoTo DepLookup_Error
'LookUp.clear = True
'LookUp.query = "select Depname 'Department',Depcode 'Code' from In_dep where divcode='" & Divcode & "' order by 1"
'LookUp.Caption = "Department Listing"
'LookUp.DefCol = "Department"
'LookUp.ALIGN = "6000,1000"
'Screen.MousePointer = 0
'LookUp.Show vbModal
'If LookUp.Cancel = False Then
'    Txtfields(2).Text = LookUp.Fields(1)
'    TxtDepartment.Text = LookUp.Fields(0)
'    LookUp.clear = True
'    CmbCategory.SetFocus
'Else
'    LookUp.clear = True
'    Txtfields(5).SetFocus
'    Exit Sub
'End If
'Exit Sub
'DepLookup_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DepLookup of Form tmpPOINDENT", vbInformation, head
'End Sub

'Sub MacLookup()
'On Error GoTo MacLookup_Error
'Set rsa = New Recordset
'rsa.Open "select Mac_no,Description from mm_macmas where divcode='" & Divcode & "' and depcode='" & Trim(Txtfields(2).Text) & "'", DB, adOpenStatic
'If rsa.RecordCount > 0 Then
'    LookUp.clear = True
'    LookUp.query = "select Mac_no 'Machine No',Description 'Machine Name', MacMake 'Make', Model, MacSerialNo 'SerialNo.'  from mm_macmas where MACFLAG='M' AND divcode='" & Divcode & "' and depcode='" & Trim(Txtfields(2).Text) & "'"
'    LookUp.Caption = "Machine Listing"
'    LookUp.DefCol = "Machine Name"
'    LookUp.ALIGN = "1200,3500,1300,1300,1300"
'    Screen.MousePointer = 0
'    LookUp.Show vbModal
'    If LookUp.Cancel = False Then
'        SpdIndent.SetText Sprdmachine, SpdIndent.ActiveRow, LookUp.Fields(0)
'        LookUp.clear = True
'    End If
'End If
'Exit Sub
'
'MacLookup_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MacLookup of Form tmpPOINDENT", vbInformation, head
'
'End Sub
Sub itemlookup()
On Error GoTo itemlookup_Error
Dim CurrStk As Double, TItem As String
LookUp.Clear = True
LookUp.query = "select  varname as [Varity Name],varcode as [Varity Code],VARTYPE 'Variety Type',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'Variety Desc.',SHADENO 'Shade',Denier,Length from RM_VAR "
LookUp.DefCol = "Item Description"
LookUp.Caption = "Item Listing"
LookUp.ALIGN = "3000,1200,1200,1000,900,1000,1000"
LookUp.Alignment = "dbgleft,dbgleft"
Screen.MousePointer = 0
LookUp.Show vbModal
If LookUp.Cancel = False Then
    
    Set itemrs = New Recordset
    itemrs.Open "Select varname from RM_VAR where varcode='" & LookUp.Fields(1) & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not itemrs.EOF Then
        Call RepeatCheck(LookUp.Fields(1))
        With SpdIndent
            If Repeat = False Then
                .SetText Sprdvarcode, .ActiveRow, CStr(LookUp.Fields(1))
                .SetText sprdvarname, .ActiveRow, CStr(LookUp.Fields(0))
                
                TItem = CStr(LookUp.Fields(1))
                Set RSStk = New Recordset
                RSStk.Open "exec KSP_VARIETYSTOCK '" & Divcode & "','" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & TItem & "'", DB, adOpenStatic
                If Not RSStk.EOF Then
                Label1.Caption = CStr(RSStk(0))
                End If
                
                CurrStk = val(CurrentStock(TItem, pdate))
              '  CurrStk = 0
                .SetText SprdCurStk, .ActiveRow, CurrStk
                .Col = E_SpdIndent.SprdCurStk
                .SetFocus
                .Action = 0
                Currbales = val(CurrentStockBales(TItem, pdate))
              '  CurrStk = 0
                .SetText SprdCurBales, .ActiveRow, Currbales
                .Col = E_SpdIndent.SprdCurBales
                .SetFocus
                .Action = 0
            Else
                .SetText E_SpdIndent.Sprdvarcode, RW, " "
                .SetText E_SpdIndent.sprdvarname, RW, " "
                .Col = E_SpdIndent.Sprdvarcode
                .SetFocus
            End If
        End With
        LookUp.Clear = True
        LookUp.Clear = True
    Else
    
        SpdIndent.Col = Sprdvarcode
        On Error Resume Next
        SpdIndent.SetFocus
    End If
End If

Exit Sub
itemlookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ItemLookup of Form RMI_PurchaseRequisition", vbInformation, head
    Resume
End Sub

Sub ScopeLookup()
On Error GoTo ScopeLookup_Error
LookUp.Clear = True
LookUp.query = "select ename 'Employee Name',Empno 'Employee No' from pr_emp where dor is null and divcode='" & Divcode & "'"
LookUp.Caption = "Requester Listing"
LookUp.DefCol = "Employee Name"
LookUp.ALIGN = "5500,1500"
Screen.MousePointer = 0
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(3).Text = LookUp.Fields(1)
    TxtRequester.Text = LookUp.Fields(0)
    LookUp.Clear = True
    txtfields(4).SetFocus
Else
    txtfields(3).SetFocus
    Exit Sub
End If

Exit Sub
ScopeLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ScopeLookup of Form tmpPOINDENT", vbInformation, head

End Sub
Private Sub txtfields_LostFocus(Index As Integer)
'    Select Case Index
'
'Case 1
'    Call IndentNoChk
'Case 4
'    SpdSetFocus SpdIndent, Sprdvarcode, SpdIndent.ActiveRow
'End Select
'Select Case Index
'   Case 2, 3, 4, 5, 6
'     Txtfields(Index).BackColor = vbWhite
'End Select
'End Sub
'Private Sub IndentNoChk()
'    If ManualIndNo = "Y" Then
'          Set Rs = New Recordset
'          Rs.Open "select count(*) Rec from  rm_prH where divcode = '" & Divcode & "' AND prdate between '" & Format(yfdate, "yyyy-mm-dd") & "'  and  '" & Format(yldate, "yyyy-mm-dd") & "' and Prno = '" & val(Txtfields(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
'          If Rs(0) <> 0 Then
'              MsgBox "'PR.No.' already Exist ", vbInformation, head
'              Txtfields(1).Text = ""
'              Txtfields(1).SetFocus
'              Exit Sub
'          End If
'          If val(Txtfields(1)) = 0 Then
'              MsgBox "Please Enter PR.No.", vbInformation, head
'              Txtfields(1).SetFocus
'              Exit Sub
'          End If
'    End If
End Sub
'''Private Sub stock_find()
'''On Error GoTo stock_find_Error
'''            Call stkchk1(Trim(GetText(SpdIndent, Sprdvarcode, RW)), DB, "")
'''            Call stkchk2(Trim(GetText(SpdIndent, Sprdvarcode, RW)), DB, "")
'''            If curstk < curstk1 Then
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk)
'''            Else
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk1)
'''            End If
'''            If curstk = curstk1 Then
'''                SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, val(curstk)
'''            End If
'''            SpdIndent.SetText SprdCurStk, SpdIndent.ActiveRow, Format(val(curstk), "#.000")
'''Exit Sub
'''stock_find_Error:
'''    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure stock_find of Form tmpPOINDENT", vbInformation, head
'''End Sub

Private Sub SetGridHead()
On Error GoTo SetGridHead_Error
With SpdIndent
    .ClearSelection
    .MaxRows = 0
    If Opt = "add" Or Opt = "mod" Then
        .ColHeadersAutoText = DispBlank
        .ClearSelection
        .MaxCols = SprdReqdDt
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdSno, "S.No.", CellTypeNumber, 5, , False, True
         .Col = E_SpdIndent.Sprdvarcode
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdvarcode, "Variety Code", CellTypeEdit, 8, , , False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.sprdvarname, "Variety Name", CellTypeStaticText, 35, , False, False
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurStk, "Current Stock Quantity", CellTypeNumber, 11, 3, False, True
        
        .Col = SprdCurBales
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        .TypeHAlign = TypeHAlignRight
        .TypeEditCharSet = TypeEditCharSetNumeric
        'SetSpreadCol SpdIndent, E_SpdIndent.SprdItemcode, "Item Code", CellTypeEdit, 8, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurBales, "Current Stock Bales", CellTypeNumber, 11, 0, False, True
        
        .Col = E_SpdIndent.Sprdpack
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        
        'SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type", CellTypeEdit, 10, , False, False
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type ", CellTypeComboBox, 12, , , False
        SpdIndent.TypeComboBoxList = "B-Bale" & vbTab & "H-Half Press" & vbTab & "R-Broach"
        .Col = SprdQtyInd
        
        .TypeNumberMin = 0.001
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyInd, "Required Quantity ", CellTypeNumber, 10, 0, False, False
        
        .Col = SprdQtyIndkg
        .TypeNumberMin = 0.001
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyIndkg, "Required Quantity in KG", CellTypeNumber, 14, 3, False, False
        
        .Col = E_SpdIndent.SprdReqdDt
        .TypeDateCentury = False
        .TypeDateFormat = TypeDateFormatDDMMYY
        .TypeDateMin = Format(pdate, "DDMMYYYY")
        .TypeSpin = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdReqdDt, "Required Date", CellTypeDate, 12, , False, False
        .Col = SprdReqdDt
        .TypeHAlign = TypeHAlignCenter
        
    ElseIf Opt = "" Or Opt = " " Or Opt = "qry" Then
        .ColHeadersAutoText = DispBlank
        .MaxCols = SprdReqdDt
        .Row = 0
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdSno, "S.No.", CellTypeNumber, 5, , False, True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdvarcode, "Variety Code", CellTypeEdit, 8, , False, True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.sprdvarname, "Variety Name", CellTypeStaticText, 35
        .Col = SprdCurStk
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurStk, "Current Stock Quantity", CellTypeNumber, 11, 3, False, True
        
        .Col = SprdCurBales
        .FontBold = True
        .ForeColor = RGB(0, 130, 0)
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdCurBales, "Current Stock Bales", CellTypeNumber, 11, 0, False, True
        
        .Col = E_SpdIndent.Sprdpack
        .TypeEditCharCase = TypeEditCharCaseSetUpper
        .TypeEditCharSet = TypeEditCharSetAlphanumeric
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.Sprdpack, "Pack Type", CellTypeEdit, 10, , False, False
        .Col = SprdQtyInd
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyInd, "Required Quantity", CellTypeNumber, 10, 0, False, True
        .Col = SprdQtyIndkg
        .TypeNumberSeparator = ","
        .TypeNumberShowSep = True
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdQtyIndkg, "Required Quantity in KG", CellTypeNumber, 14, 3, False, True
        .Col = SprdReqdDt
        .TypeDateCentury = False
       ' .TypeDateFormat = TypeDateFormatDDMMYYYY
        SetSpreadCol_RMI SpdIndent, E_SpdIndent.SprdReqdDt, "Required Date", CellTypeStaticText, 11, , False, True
        .Col = SprdReqdDt
        .TypeHAlign = TypeHAlignCenter
        
    End If
End With


Exit Sub
SetGridHead_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmIndentDirectorAppr"
End Sub
Private Sub SpdLoad()

On Error GoTo SpdLoad_Error

    Call SetGridHead
        SpdIndent.MaxRows = 0
        
        If Opt = "qry" Or Opt = "" Then
           SpdIndent.MaxCols = SprdReqdDt

        Else
            SpdIndent.MaxCols = SprdReqdDt
        End If
        SpdIndent.CursorStyle = CursorStyleArrow
        RW = 1
        Do While Not adoSecondaryRS.EOF
            SpdIndent.MaxRows = SpdIndent.MaxRows + 1
            
            SpdIndent.SetText E_SpdIndent.SprdSno, RW, adoSecondaryRS("prsno")
            SpdIndent.SetText E_SpdIndent.Sprdvarcode, RW, adoSecondaryRS("varcode")
            SpdIndent.SetText E_SpdIndent.sprdvarname, RW, adoSecondaryRS("Vartity Description")
            SpdIndent.SetText E_SpdIndent.SprdCurStk, RW, adoSecondaryRS("Current Stock")
            SpdIndent.SetText E_SpdIndent.SprdCurBales, RW, adoSecondaryRS("Current Stock Bales")
            If adoSecondaryRS("Packtype") = "H" Then
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "H-Half Press"
            ElseIf adoSecondaryRS("Packtype") = "R" Then
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "R-Broach"
            Else
            SpdIndent.SetText E_SpdIndent.Sprdpack, RW, "B-Bale"
            End If
            SpdIndent.SetText E_SpdIndent.SprdQtyInd, RW, adoSecondaryRS("Quantity Required")
            SpdIndent.SetText E_SpdIndent.SprdQtyIndkg, RW, adoSecondaryRS("Quantity Required in KG")
            SpdIndent.SetText E_SpdIndent.SprdReqdDt, RW, Format(adoSecondaryRS("Required Date"), "dd/MM/yy")
            adoSecondaryRS.MoveNext
            RW = RW + 1
        Loop
    
    If adoPrimaryRS("Itype") = "P" Then
        CmbPrtype.Text = "P -Packwise"
    Else
        CmbPrtype.Text = "K - Kgswise"
    End If
Exit Sub
SpdLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdLoad of Form RMI_PurchaseRequisition", vbInformation, head
End Sub

Private Sub RepeatCheck(Item)
On Error GoTo RepeatCheck_Error

Repeat = False
With SpdIndent
    .Row = RW
    For I = 1 To .MaxRows - 1
        If (GetText(SpdIndent, E_SpdIndent.Sprdvarcode, I)) <> "" Then
            If (GetText(SpdIndent, E_SpdIndent.Sprdvarcode, I)) = Item Then
                Repeat = True
                GoTo msg:
            Else
                Repeat = False
            End If
        End If
    Next
msg:
    If Repeat = True Then
        MsgBox "Item Code must be unique", vbInformation, head
        Exit Sub
    End If
End With

Exit Sub
RepeatCheck_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RepeatCheck of Form RMI_PurchaseRequisition", vbInformation, head
End Sub
Sub FillPrtypeCombo()
    CmbPrtype.Clear
    CmbPrtype.AddItem "P -Packwise"
    CmbPrtype.AddItem "K - Kgswise"
    CmbPrtype.ListIndex = 0
End Sub
Sub FillPrCategory()
    CmbCategory.Clear
    Set CMBRS = New Recordset
    CMBRS.Open "SELECT Idesc  FROM  RMI_IndentType ORDER BY def DESC ", DB, adOpenStatic
    If CMBRS.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    CMBRS.MoveFirst
    Do While Not (CMBRS.EOF)
       CmbCategory.AddItem CStr(CMBRS(0))
       CMBRS.MoveNext
    Loop
    CmbCategory.ListIndex = 0
End Sub


Public Function CurrentStock(Varcode As String, STR As String) As Double
'''    Dim CurrRs As Recordset
'''    Set CurrRs = New Recordset
'''    CurrRs.Open " SELECT X.varcode,SUM(isnull(X.REC,0))-SUM(Isnull(X.ISS,0))BalanceQty FROM (" & _
'''                " SELECT T.TC,A.varcode,SUM(Isnull(A.QUANTITY,0))REC, 0 ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "' " & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (1,3,5,7) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC " & _
'''                " Union All " & _
'''                " SELECT T.TC,A.varcode,0 REC,SUM(isnull(A.QUANTITY,0))ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "'" & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (2,4,6,8) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC )X " & _
'''                " GROUP BY X.varcode ", DB, adOpenDynamic, adLockReadOnly
'''    If Not CurrRs.EOF Then
'''        CurrentStock = CurrRs("BalanceQty")
'''    Else
'''        CurrentStock = 0
'''    End If


Dim F_Date As String
Dim T_Date As String


Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim totRejBales, totRejBoras, totRejKgs, totRejValue As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000

F_Date = STR
T_Date = STR
catcd = "ALL"
FVar = Varcode
TVar = Varcode
pRecType = "ALL"
 
SR = catcd
SR = catcd
vrectype = Trim(Left(pRecType, 3))
pg1 = 1
co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
totRejBales = 0: totRejBoras = 0: totRejKgs = 0: totRejValue = 0

vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0


Set rs1 = New Recordset


  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
            End If
        End If

'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
Do While Not RSV.EOF

            
   'Print #a,
   co = co + 1
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
      '   vtotRejValue = RSV!REJVALUE
        
        
        totRejBales = val(totRejBales) + val(RSV!rejBales)
        totRejBoras = totRejBoras
        totRejKgs = val(totRejKgs) + val(RSV!rejkgs)
        totRejValue = val(totRejValue) + val(RSV!REJVALUE)
   
        
        VTOT9 = VTOT9 + RSV("clobales")
        VTOT10 = VTOT10 + RSV("cloboras")
        VTOT11 = VTOT11 + RSV("clokgs")
        
        VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))

         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
         vtotRejValue = vtotRejValue + RSV!REJVALUE
      
    VarName = RSV!VarName
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   'Print #a, Space(4) + Padr((CStr(VarName)), 14, " ") & Padl(INF(VTOT, 0), 7, " ") + Padl(INF(vtot1, 0), 6, " ") + Padl(INF(vtot2, 3), 14, " ") + Padl(INF(VTOT12, 2), 16, " ") + Padl(INF(vtot3, 0), 7, " ") + Padl(INF(VTOT4, 0), 6, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 7, " ") + Padl(INF(VTOT7, 0), 6, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(vtotRejBales, 0), 7, " ") + Padl(INF(vtotRejBoras, 0), 6, " ") + Padl(INF(vtotRejKgs, 3), 14, " ") + Padl(INF(vtotRejValue, 2), 16, " ") + Padl(INF(VTOT9, 0), 7, " ") + Padl(INF(VTOT10, 0), 6, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   

   
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
   vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0
30:
   RSV.MoveNext
Loop
   If tot12 <> Empty Then
        CurrentStock = INF(val(tot12), 3)
            Else
            CurrentStock = 0
            End If


End Function
Public Function CurrentStockBales(Varcode As String, STR As String) As Double
'''    Dim CurrRs As Recordset
'''    Set CurrRs = New Recordset
'''    CurrRs.Open " SELECT X.varcode,SUM(isnull(X.REC,0))-SUM(Isnull(X.ISS,0))BalanceQty FROM (" & _
'''                " SELECT T.TC,A.varcode,SUM(Isnull(A.QUANTITY,0))REC, 0 ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "' " & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (1,3,5,7) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC " & _
'''                " Union All " & _
'''                " SELECT T.TC,A.varcode,0 REC,SUM(isnull(A.QUANTITY,0))ISS FROM in_trntail A,IN_TC t WHERE a.TC=t.TC and DIVCODE='" & Divcode & "'" & _
'''                " AND varcode='" & Varcode & "' AND t.tctype IN (2,4,6,8) " & _
'''                " AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY A.varcode,t.TC )X " & _
'''                " GROUP BY X.varcode ", DB, adOpenDynamic, adLockReadOnly
'''    If Not CurrRs.EOF Then
'''        CurrentStock = CurrRs("BalanceQty")
'''    Else
'''        CurrentStock = 0
'''    End If


Dim F_Date As String
Dim T_Date As String


Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim totRejBales, totRejBoras, totRejKgs, totRejValue As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000

F_Date = STR
T_Date = STR
catcd = "ALL"
FVar = Varcode
TVar = Varcode
pRecType = "ALL"
 
SR = catcd
SR = catcd
vrectype = Trim(Left(pRecType, 3))
pg1 = 1
co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
totRejBales = 0: totRejBoras = 0: totRejKgs = 0: totRejValue = 0

vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0


Set rs1 = New Recordset


  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
            End If
        End If

'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
Do While Not RSV.EOF

            
   'Print #a,
   co = co + 1
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
      '   vtotRejValue = RSV!REJVALUE
        
        
        totRejBales = val(totRejBales) + val(RSV!rejBales)
        totRejBoras = totRejBoras
        totRejKgs = val(totRejKgs) + val(RSV!rejkgs)
        totRejValue = val(totRejValue) + val(RSV!REJVALUE)
   
        
        VTOT9 = VTOT9 + RSV("clobales")
        VTOT10 = VTOT10 + RSV("cloboras")
        VTOT11 = VTOT11 + RSV("clokgs")
        
        VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))

         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
         vtotRejValue = vtotRejValue + RSV!REJVALUE
      
    VarName = RSV!VarName
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   'Print #a, Space(4) + Padr((CStr(VarName)), 14, " ") & Padl(INF(VTOT, 0), 7, " ") + Padl(INF(vtot1, 0), 6, " ") + Padl(INF(vtot2, 3), 14, " ") + Padl(INF(VTOT12, 2), 16, " ") + Padl(INF(vtot3, 0), 7, " ") + Padl(INF(VTOT4, 0), 6, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 7, " ") + Padl(INF(VTOT7, 0), 6, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(vtotRejBales, 0), 7, " ") + Padl(INF(vtotRejBoras, 0), 6, " ") + Padl(INF(vtotRejKgs, 3), 14, " ") + Padl(INF(vtotRejValue, 2), 16, " ") + Padl(INF(VTOT9, 0), 7, " ") + Padl(INF(VTOT10, 0), 6, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   

   
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
   vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0
30:
   RSV.MoveNext
Loop
   If tot10 <> Empty Then
        'CurrentStock = INF(val(tot12), 3)
       CurrentStockBales = INF(val(tot10), 3)
    Else
       CurrentStockBales = 0
    End If


End Function


'Private Sub ExportERPPOPDF()
'If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
'Dim strNewFile As String
''If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
''    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
''    End
''End If
'
'
'    strNewFile = ""
'    Dim fso As New FileSystemObject
'    If Not (fso.FolderExists(App.Path & "\RMERPPR" & CustID)) Then
'        fso.CreateFolder (App.Path & "\RMERPPR" & CustID)
'
'    End If
'
'    ' display Common Dialog and choose a file
''    CommonDialog1.ShowOpen
''    strNewFile = CommonDialog1.FileTitle
'
''  strNewFile
'    Dim sFilePath As String
'' MsgBox Right$(CommonDialog1.FileName, 4)
'    Set fso = New FileSystemObject
' ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
'    sFilePath = App.Path & "\RMERPPR" & CustID & "\" & Divcode & "-PRNO-" & Trim(txtfields(1).Text) + " DT-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(TxtRequester.Text), 15) & ".pdf"
'    If fso.FileExists(sFilePath) Then
'       ' MsgBox "File Exist."
'       If Opt <> "add" And Opt <> "mod" Then
'        If MsgBox("PR Report Already Exists!!! Do you want to override in Server?", vbYesNo, head) = vbNo Then Exit Sub
'       End If
'
'    End If
'
''  If strNewFile <> "" Then
''
''    Dim myPath As String
''    myPath = strNewFile
''    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
''    FileCopy strNewFile, App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "-" & Right$(CommonDialog1.FileName, 4)
''   End If
'
'           Dim CrApp As Craxdrt.Application
'           Dim oRpt As Craxdrt.Report
'            Set CrApp = New Craxdrt.Application
'            Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepRMI.rpt", 1)
'            'oRpt.RecordSelectionFormula = "{PO_ORDH.PORDDT} = DATE(" & Val(Year(SPoDT)) & "," & Val(Month(SPoDT)) & "," & Val(Day(SPoDT)) & ")  and {PO_ORDH.PORDNO}=" & Val(sPono) & "  and {PO_ORDH.POGRP}='" & sPOGrp & "'  and {PO_ORDH.DivCode}='" & divcode & "'"
'
'         '   oRpt.RecordSelectionFormula = "{sp_yarninvy_sort.sortno}='" & Trim(txtfields(37).Text) & "'  and {sp_yarninvy_sort.divcode}='" & Divcode & "'"
'            '{sp_yarninvy_sort.sortno}={?@Sortcode} and {sp_yarninvy_sort.divcode}={?@divcode}
''
'            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
'            oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
'            oRpt.ParameterFields.Item(2).AddCurrentValue txtfields(1).Text
'            oRpt.ParameterFields.Item(3).AddCurrentValue (Format(MaskEdBox1(0), "yyyy-mm-dd"))
'
''            oRpt.ParameterFields.Item(4).AddCurrentValue (Format(MaskEdBox3, "yyyy-mm-dd"))
''            oRpt.ParameterFields.Item(5).AddCurrentValue Trim(TXTFIELDS(0).Text)
''             oRpt.ParameterFields.Item(6).AddCurrentValue cid
'
''            oRpt.RecordSelectionFormula = "{RM_ARRIVAL.DIVCODE}='" & Divcode & "' AND {RM_ARRIVAL.ARRDATE} = cdate('" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "') AND {RM_ARRIVAL.ARRNO}>= " & val(Txtfields(96).Text) & " AND  {RM_ARRIVAL.ARRNO}<=  " & val(Txtfields(96).Text) & ""
''            oRpt.ParameterFields(1).AddCurrentValue Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
''            oRpt.ParameterFields(2).AddCurrentValue CStr(Txtfields(96).Text)
''            oRpt.ParameterFields(3).AddCurrentValue CStr(Txtfields(96).Text)
''            oRpt.ParameterFields(4).AddCurrentValue val(1)
'
'
''            If UCase(CustID) = "PALLAVA" Then
''                cid = ""
''                cid = "PALLAVAA"
''                oRpt.ParameterFields.Item(6).AddCurrentValue cid
''            ElseIf UCase(CustID) = "SHRIGIRI" Then
''                cid = ""
''                cid = "SRICHERAN "
''                oRpt.ParameterFields.Item(6).AddCurrentValue cid
''            End If
''
'
'            oRpt.ExportOptions.DiskFileName = sFilePath
'            oRpt.ExportOptions.DestinationType = crEDTDiskFile
'            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
'            oRpt.ExportOptions.PDFExportAllPages = True
'            oRpt.Export False
'
'
'
'
'End If
'Exit Sub
'openconnection_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
'End Sub


Private Sub GridAllign()

    grddatagrid.Columns(0).Caption = "Order No"
    grddatagrid.Columns(1).Caption = "Order Date"
     grddatagrid.Columns(2).Caption = "Variety Code"
    grddatagrid.Columns(3).Caption = "Variety Name"
    grddatagrid.Columns(4).Caption = "Mixing Code"
    grddatagrid.Columns(5).Caption = "Mixing Group"
    grddatagrid.Columns(6).Caption = "Rate"
    grddatagrid.Columns(7).Caption = "Quantity"
    grddatagrid.Columns(8).Caption = "Gross weight."
    grddatagrid.Columns(9).Caption = "Tare weight."
    grddatagrid.Columns(10).Caption = "Nett weight."
    grddatagrid.Columns(11).Caption = "Commercial. weight."

    grddatagrid.Columns(2).Alignment = dbgRight
    grddatagrid.Columns(2).NumberFormat = "#0.00"
    grddatagrid.Columns(3).Alignment = dbgRight
    grddatagrid.Columns(3).NumberFormat = "#0.00"
    

End Sub

Private Sub arrselect()
    
     LookUp.Clear = True
        LookUp.query = "SELECT arrno 'Arrival No.',arrdate 'Arrival Date',a.varcode 'Variety Code',rm.varname 'Variety Name' FROM rm_arrival  a INNER JOIN rm_var rm ON a.varcode=rm.varcode left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and isnull(a.FREIGHT,0) >0 and a.supcd='" & txtfields(1).Text & "' and isnull(frtentrapp,'N')<>'Y'"
        LookUp.Caption = "Arrival Listing"
        LookUp.DefCol = "Arrival Details"
        LookUp.ALIGN = "1200,1100,1500,3500"
        Screen.MousePointer = 0
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
                    Set arrrs = New Recordset
                     arrrs.Open " SELECT contno,contdt,a.varcode,rm.varname,a.carcode,carname,* FROM rm_arrival  a INNER JOIN rm_var rm ON a.varcode=rm.varcode left join po_car p on p.carcode=a.carcode" & _
                                       " left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and a.arrno='" & LookUp.Fields(0) & "'  and arrdate='" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "' and a.supcd='" & txtfields(1).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    If arrrs.RecordCount > 0 Then
                       grddatagrid.Columns(0).Text = arrrs("contno")
                       grddatagrid.Columns(1).Text = arrrs("contdt")
                       grddatagrid.Columns(2).Text = arrrs("varcode")
                       grddatagrid.Columns(3).Text = arrrs("varname")
                       grddatagrid.Columns(4).Text = arrrs("MIXGRPCD")
                       grddatagrid.Columns(5).Text = arrrs("MIXGRPNAME")
                       grddatagrid.Columns(6).Text = arrrs("ratecy")
                       grddatagrid.Columns(7).Text = arrrs("quantity")
                       grddatagrid.Columns(8).Text = IIf(IsNull(arrrs("grosswt")), 0, arrrs("grosswt"))
                       grddatagrid.Columns(9).Text = IIf(IsNull(arrrs("tarewt")), 0, arrrs("tarewt"))
                       grddatagrid.Columns(10).Text = IIf(IsNull(arrrs("netwt")), 0, arrrs("netwt"))
                       grddatagrid.Columns(11).Text = IIf(IsNull(arrrs("commr_wt")), 0, arrrs("commr_wt"))
                       
                       txtfields(0).Text = arrrs("arrno")
                       txtfields(11).Text = arrrs("LORRYNOS")
                       txtfields(21).Text = arrrs("LRNO")
                       MaskEdBox1(0).Text = Format(arrrs("arrdate"), "DD/MM/YYYY")
                       txtfields(7).Text = arrrs("carcode")
                       Text2.Text = arrrs("carname")
                       txtfields(2).Text = Format(arrrs("freight"), "00.00")
                         
                        Dim netwtc As Double
                        netwtc = IIf(IsNull(arrrs("commr_wt")), 0, arrrs("commr_wt"))
                        If netwtc = 0 Then
                            netwtc = IIf(IsNull(arrrs("netwt")), 0, arrrs("netwt"))
                        End If
                    Dim gstper As Double
                    Set rsF = New Recordset
                    rsF.Open "select DLYTYPE,rateunit, cgstper+sgstper+igstper gstper from rm_cont where supcd='" & Trim(txtfields(1).Text) & "'  and contno='" & arrrs("contno") & "' and contdt='" & Format(arrrs("contdt"), "yyyy-mm-dd") & "' and varcode='" & Trim(arrrs("varcode")) & "'", DB, adOpenStatic
       
                    If rsF.RecordCount > 0 Then
                        deltype = rsF("DLYTYPE")
                        gstper = rsF(2)
                    Else
                        deltype = ""
                    End If
                
                   Set rsr = New Recordset
                   rsr.Open "select value from rm_rateunit where unitname='" & rsF("rateunit") & "'", DB, adOpenStatic
                        
                   If rsr.EOF = False Then Assvalue = KSLRound((val(arrrs("ratecy")) * (val(netwtc) / rsr("value"))), 4)
                 
                        txtfields(9).Text = Format(val(Assvalue), "00.00")
                        Set rsbk = New Recordset
                        rsbk.Open "select isnull(sum(isnull(DRate,0)),0) DRate from RM_ContDiscntRate where supcd='" & Trim(txtfields(1).Text) & "'  and  contno='" & arrrs("contno") & "' AND contdt='" & Format(Trim(arrrs("contdt")), "YYYY-MM-DD") & "' and varcode='" & Trim(arrrs("varcode")) & "'", DB, adOpenStatic
                        If Not rsbk.EOF Then
                             txtfields(13).Text = Format(val(netwtc) * rsbk(0), "00.00")
                        End If
                        
                        txtfields(10).Text = Format(val(Assvalue - val(txtfields(13).Text)) * gstper / 100, "00.00")
                        
                        txtfields(12).Text = Format(val(Assvalue - val(txtfields(13).Text) + val(txtfields(10).Text)), "00.00")
                         
                        LookUp.Clear = True
                        txtfields(6).SetFocus
                    Else
                        MsgBox "No arrival Details", vbInformation, head
                        LookUp.Clear = True
                        txtfields(1).SetFocus
                        Exit Sub
                    End If
        
    
   
      
   End If
End Sub

Private Sub modlook(frdocno As Integer, frdocdt As String, frslcode As String)

 Set arrrs = New Recordset
                     arrrs.Open " SELECT contno,contdt,a.varcode,rm.varname,* FROM rm_frtentrydt  a INNER JOIN rm_var rm ON a.varcode=rm.varcode " & _
                                       " left JOIN rm_mixgrp m on a.cntcode=m.MIXGRPCD AND a.divcode=m.divcode  where a.divcode='" & Divcode & "' and a.docno='" & frdocno & "'  and a.docdt='" & Format(frdocdt, "YYYY-MM-DD") & "' and a.supcd='" & frslcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    If arrrs.RecordCount > 0 Then
                       grddatagrid.Columns(0).Text = arrrs("contno")
                       grddatagrid.Columns(1).Text = arrrs("contdt")
                       grddatagrid.Columns(2).Text = arrrs("varcode")
                       grddatagrid.Columns(3).Text = arrrs("varname")
                       grddatagrid.Columns(4).Text = arrrs("MIXGRPCD")
                       grddatagrid.Columns(5).Text = arrrs("MIXGRPNAME")
                       grddatagrid.Columns(6).Text = arrrs("ratecy")
                       grddatagrid.Columns(7).Text = arrrs("quantity")
                       grddatagrid.Columns(8).Text = IIf(IsNull(arrrs("grosswt")), 0, arrrs("grosswt"))
                       grddatagrid.Columns(9).Text = IIf(IsNull(arrrs("tarewt")), 0, arrrs("tarewt"))
                       grddatagrid.Columns(10).Text = IIf(IsNull(arrrs("netwt")), 0, arrrs("netwt"))
                       grddatagrid.Columns(11).Text = IIf(IsNull(arrrs("commwt")), 0, arrrs("commwt"))
                       
                       txtfields(0).Text = arrrs("arrno")
                       MaskEdBox1(0).Text = Format(arrrs("arrdate"), "DD/MM/YYYY")
                        LookUp.Clear = True
                        txtfields(3).SetFocus
                    Else
                        MsgBox "No arrival Details", vbInformation, head
                        LookUp.Clear = True
                        txtfields(1).Enabled = True
                        txtfields(1).Locked = False
                        txtfields(1).SetFocus
                        Exit Sub
                    End If
End Sub
