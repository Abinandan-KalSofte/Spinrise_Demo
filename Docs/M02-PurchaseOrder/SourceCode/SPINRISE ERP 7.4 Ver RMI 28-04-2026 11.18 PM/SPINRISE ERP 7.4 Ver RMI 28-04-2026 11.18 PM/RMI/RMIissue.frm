VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form Frmissue1 
   Caption         =   "Issue"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6780
   ScaleWidth      =   9195
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   47
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":0000
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "RMIissue.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   58
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":0797
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "RMIissue.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   57
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":0E34
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "RMIissue.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   56
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":15E3
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
         Left            =   1095
         Picture         =   "RMIissue.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   55
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":1C89
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "RMIissue.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   54
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "RMIissue.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   53
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":26A4
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "RMIissue.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   52
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":2E3E
         Height          =   550
         Index           =   11
         Left            =   5295
         Picture         =   "RMIissue.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   51
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":361D
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "RMIissue.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   50
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":3CC9
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "RMIissue.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIissue.frx":434F
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "RMIissue.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   48
         ToolTipText     =   "Last Record (Ctrl E)"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8085
         TabIndex        =   60
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6555
         TabIndex        =   59
         Top             =   255
         Width           =   840
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6795
      Top             =   60
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   36
      Top             =   6480
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
      Height          =   4770
      Left            =   360
      TabIndex        =   19
      Top             =   975
      Width           =   8760
      _ExtentX        =   15452
      _ExtentY        =   8414
      _Version        =   393216
      Tabs            =   2
      Tab             =   1
      TabsPerRow      =   2
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Lot"
      TabPicture(0)   =   "RMIissue.frx":4AFB
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(2)=   "Frame7"
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Bale"
      TabPicture(1)   =   "RMIissue.frx":4B17
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Label6"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Label7"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "DataGrid1"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Command1"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Text3"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "Text4"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).ControlCount=   6
      Begin VB.TextBox Text4 
         Alignment       =   1  'Right Justify
         Height          =   330
         Left            =   6615
         Locked          =   -1  'True
         TabIndex        =   34
         Top             =   4185
         Width           =   1815
      End
      Begin VB.TextBox Text3 
         Alignment       =   1  'Right Justify
         Height          =   330
         Left            =   1635
         Locked          =   -1  'True
         TabIndex        =   33
         Top             =   4185
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4035
         TabIndex        =   31
         Top             =   4170
         Width           =   780
      End
      Begin VB.Frame Frame7 
         Height          =   1155
         Left            =   -74820
         TabIndex        =   24
         Top             =   315
         Width           =   8385
         Begin VB.TextBox Txtfields 
            DataField       =   "cntcd"
            Height          =   330
            Index           =   1
            Left            =   1215
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   3
            Top             =   660
            Width           =   1245
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "docno"
            Height          =   330
            Index           =   0
            Left            =   3510
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   1
            Top             =   210
            Width           =   855
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   2
            Left            =   3495
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   4
            Top             =   660
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.ComboBox Combo1 
            DataField       =   "isstype"
            Height          =   315
            ItemData        =   "RMIissue.frx":4B33
            Left            =   1230
            List            =   "RMIissue.frx":4B40
            TabIndex        =   0
            Top             =   218
            Width           =   1275
         End
         Begin VB.TextBox text2 
            DataField       =   "arrno"
            Height          =   330
            Left            =   4680
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   5
            Top             =   660
            Visible         =   0   'False
            Width           =   3285
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   255
            Index           =   0
            Left            =   6120
            TabIndex        =   2
            Top             =   240
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   450
            _Version        =   393216
            BorderStyle     =   0
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   6075
            TabIndex        =   25
            Top             =   195
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   20840449
            CurrentDate     =   36831
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   120
            TabIndex        =   30
            Top             =   675
            Width           =   915
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   5355
            TabIndex        =   29
            Top             =   278
            Width           =   345
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Type"
            Height          =   195
            Left            =   150
            TabIndex        =   28
            Top             =   285
            Width           =   360
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Issue No."
            Height          =   195
            Left            =   2670
            TabIndex        =   27
            Top             =   285
            Width           =   675
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Party"
            Height          =   195
            Left            =   2730
            TabIndex        =   26
            Top             =   735
            Visible         =   0   'False
            Width           =   360
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1155
         Left            =   -74820
         TabIndex        =   20
         Top             =   3480
         Visible         =   0   'False
         Width           =   8385
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TINT"
            Height          =   330
            Index           =   6
            Left            =   6165
            MaxLength       =   20
            TabIndex        =   42
            Top             =   690
            Width           =   1560
         End
         Begin VB.TextBox Text1 
            Height          =   330
            Left            =   1950
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   8
            Text            =   " "
            Top             =   240
            Width           =   5745
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode"
            Height          =   330
            Index           =   3
            Left            =   1155
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   7
            Top             =   225
            Width           =   750
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT"
            Height          =   330
            Index           =   4
            Left            =   1155
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   9
            Top             =   690
            Width           =   1410
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "wtrwt"
            Height          =   330
            Index           =   5
            Left            =   3975
            MaxLength       =   100
            TabIndex        =   10
            Top             =   690
            Width           =   1410
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TINT"
            Height          =   195
            Left            =   5700
            TabIndex        =   43
            Top             =   765
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code"
            Height          =   195
            Left            =   240
            TabIndex        =   23
            Top             =   293
            Width           =   600
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Water Weight"
            Height          =   195
            Left            =   2790
            TabIndex        =   22
            Top             =   765
            Width           =   990
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight"
            Height          =   195
            Left            =   240
            TabIndex        =   21
            Top             =   758
            Width           =   735
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   1905
         Left            =   -74820
         TabIndex        =   6
         Top             =   1575
         Width           =   8385
         _ExtentX        =   14790
         _ExtentY        =   3360
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
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
         Caption         =   "Lotwise Issue  Details"
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
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3435
         Left            =   210
         TabIndex        =   11
         Top             =   495
         Width           =   8415
         _ExtentX        =   14843
         _ExtentY        =   6059
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
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
         Caption         =   "Balewise Issue  Details"
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
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Selected Weight"
         Height          =   195
         Left            =   5355
         TabIndex        =   18
         Top             =   4260
         Width           =   1185
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Selected Bales"
         Height          =   195
         Left            =   405
         TabIndex        =   32
         Top             =   4253
         Width           =   1065
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   990
      TabIndex        =   14
      Top             =   2340
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIissue.frx":4B67
         Height          =   615
         Left            =   4020
         Picture         =   "RMIissue.frx":4F49
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIissue.frx":531C
         Height          =   615
         Left            =   2580
         Picture         =   "RMIissue.frx":5702
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3060
         MaxLength       =   6
         TabIndex        =   15
         Top             =   855
         Width           =   1905
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
         TabIndex        =   17
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Issue  No."
         Height          =   195
         Left            =   2010
         TabIndex        =   16
         Top             =   930
         Width           =   720
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4740
      Left            =   600
      TabIndex        =   44
      Top             =   960
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command4 
         Caption         =   "OK"
         Height          =   480
         Left            =   3420
         TabIndex        =   45
         Top             =   3930
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   3225
         Left            =   300
         TabIndex        =   46
         Top             =   390
         Width           =   7545
         _ExtentX        =   13309
         _ExtentY        =   5689
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
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
         Caption         =   "Issue Details"
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
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   300
      TabIndex        =   13
      Top             =   690
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIissue.frx":5AC8
         Height          =   615
         Left            =   4740
         Picture         =   "RMIissue.frx":5EAA
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIissue.frx":627D
         Height          =   615
         Left            =   2985
         Picture         =   "RMIissue.frx":6663
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   37
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
         Left            =   45
         TabIndex        =   35
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label lblctrl 
      Caption         =   "Select Records using  CTRL key and then press OK"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   435
      Left            =   360
      TabIndex        =   61
      Top             =   6000
      Visible         =   0   'False
      Width           =   9195
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Issue"
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
      Left            =   420
      TabIndex        =   12
      Top             =   555
      Width           =   645
   End
End
Attribute VB_Name = "Frmissue1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim updSECONDARYRS As Recordset
Dim UPDRS As Recordset
Dim WithEvents Rs As Recordset
Attribute Rs.VB_VarHelpID = -1
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldbales As Date
Dim balers As Recordset
Dim qty As Double
Dim tabflag As Boolean
Dim selbale As Integer
Dim selwt As Double
Dim a As String
Dim b As String
Dim wt As Double
Dim str, FLGISSH As String
Dim i As Integer
Dim flg As String
Dim RS2 As Recordset
Dim rx As Integer
Dim s As Double
Dim c As Integer
Dim ChkEx As Integer
Dim j As Integer
Dim ry As New Recordset
Dim xx1 As Integer
Dim xx As New Recordset

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Issue"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Command1.Enabled = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,cntcd,tint FROM RM_ISSH  WHERE 1 = 2  order by docno", DB, adOpenStatic, adLockOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"" FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2  ", DB, adOpenStatic, adLockBatchOptimistic
    Set updSECONDARYRS = New Recordset
    With updSECONDARYRS
           .Fields.Append "Lot.No.", adSmallInt, 5
           .Fields.Append "Date", adDate
           .Fields.Append "Lot Type", adChar, 1
           .Fields.Append "Variety", adVarChar, 10
           .Fields.Append "Variety Name", adVarChar, 20
           .Fields.Append "Color", adVarChar, 4
           .Fields.Append "Color Name", adVarChar, 20
           .Fields.Append "Category", adChar, 1
           .Fields.Append "Closing Bales", adSmallInt
           .Fields.Append "Closing Weights", adDouble
           .Fields.Append "Issued Bales", adSmallInt
    End With
    updSECONDARYRS.Open
    Set grddatagrid.DataSource = updSECONDARYRS
    Set UPDRS = New Recordset
           UPDRS.Fields.Append "Iss Kgs", adDouble, 10
           UPDRS.Fields.Append "Iss bales", adSmallInt, 10
           UPDRS.Fields.Append "Lot No.", adSmallInt, 5
           UPDRS.Fields.Append "Lot Dt.", adDate
           UPDRS.Fields.Append "Lot Type.", adChar, 1
    UPDRS.Open
    grddatagrid.Columns(0).Width = 705.2599
    grddatagrid.Columns(1).Width = 929.7639
    grddatagrid.Columns(2).Width = 840.189
    grddatagrid.Columns(3).Width = 929.7639
    grddatagrid.Columns(4).Width = 1484.787
    grddatagrid.Columns(5).Width = 929.7639
    grddatagrid.Columns(6).Width = 1484.787
    grddatagrid.Columns(7).Width = 1230.236
    grddatagrid.Columns(8).Width = 1335.118
    grddatagrid.Columns(9).Width = 1154.835
    grddatagrid.Columns(10).Width = 915.0237
   grddatagrid.Columns(8).Alignment = dbgRight
   grddatagrid.Columns(9).Alignment = dbgRight
   grddatagrid.Columns(10).Alignment = dbgRight
    flg = ""
    Set DataGrid1.DataSource = Rs
    Call GRIDALIGN
    Text1.Text = ""
    Text2.Text = ""
    Call bindcontls
    Call ENABLCONTLS
    DB.BeginTrans
    adoPrimaryRS.AddNew
    updSECONDARYRS.AddNew
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Combo1.SetFocus
    grddatagrid.AllowUpdate = True
    str = ""
    Combo1.ListIndex = 0
Case 1
    'modification
    Opt = "mod"
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 2
    'Deletion
    Opt = "del"
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
       
Case 5
     'first
     desc.Caption = "Query"
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     
     Call bindcontls
     
    'calling fir procedure from module
     Call navi1(BUTTON)
     Call FIR(BUTTON)
     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:
    'MsgBox Err.description, vbInformation, head

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
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
      BUTTON(8).Enabled = False
      BUTTON(6).Enabled = False
      Beep
      Else
      BUTTON(8).Enabled = True
      BUTTON(6).Enabled = True
      End If
      Exit Sub
GoNextError:

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
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

GoPrevError:
   

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     Call bindcontls
    
    'calling las procedure from module
     Call navi1(BUTTON)
     Call las(BUTTON)
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
   MsgBox err.description, vbInformation, head

Case 9
'     Save
lblctrl.Visible = False
If Opt = "add" Or Opt = "mod" Then
   If Combo1.Text = "P" Then
    If Trim(TXTFIELDS(1).Text) = "" Then
        MsgBox "Category should not be empty", vbInformation, head
        TXTFIELDS(1).SetFocus
        Exit Sub
    End If
    End If
End If
    If Opt = "add" Then
       
       If adoPrimaryRS("ISSTYPE") = "T" Then
            adoPrimaryRS("SLCODE") = TXTFIELDS(2).Text
            sCode = TXTFIELDS(2).Text
       End If
       
       updSECONDARYRS.MoveFirst
       Do While Not updSECONDARYRS.EOF
            If (updSECONDARYRS("Lot.No.") = "") Then
                updSECONDARYRS.Delete adAffectCurrent
            End If
            updSECONDARYRS.MoveNext
       Loop
       updSECONDARYRS.MoveFirst
    
      adoSecondaryRS.MoveFirst
      Set rsa = New Recordset
      rsa.Open "SELECT * FROM RM_ISSB WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
      Do While Not adoSecondaryRS.EOF
      rsa.AddNew
      rsa("DIVCODE") = Divcode
      rsa("ISSTYPE") = adoSecondaryRS("ISSTYPE")
      rsa("DOCNO") = adoSecondaryRS("DOCNO")
      rsa("DOCDT") = adoSecondaryRS("DOCDT")
      rsa("LOTNO") = adoSecondaryRS("LOT NO.")
      rsa("CATCD") = grddatagrid.Columns(7).Text
      rsa("LOTDT") = adoSecondaryRS("DATE")
      rsa("BALENO") = adoSecondaryRS("BALENO")
      rsa("ISSKGS") = adoSecondaryRS("ISSUED KGS")
      rsa("LOTTYPE") = adoSecondaryRS("LOTTYPE")
      rsa("ACTISSKGS") = adoSecondaryRS("AIKGS")
      
      adoSecondaryRS.MoveNext
      
        Loop
     rsa.UpdateBatch adAffectAllChapters
      updSECONDARYRS.UpdateBatch adAffectAllChapters
           
      If adoPrimaryRS("ISSTYPE") = "T" Then
            DB.Execute "UPDATE RM_ISSH SET SLCODE='" & TXTFIELDS(2).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
       End If
       '*********************  BALE UPDATION **************************/
       adoSecondaryRS.MoveFirst
       Do While Not adoSecondaryRS.EOF
        Set rs1 = New Recordset
        rs1.Open "select ISNULL(isqty,0) from rm_bale  where lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.RecordCount > 0 Then
        DB.Execute ("update rm_bale set isqty= " & rs1(0) + val(adoSecondaryRS(10).Value) & ",ActIssKgs= " & val(adoSecondaryRS!AIKgs) & "  where lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "")
        DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS!AIKgs) & ",issbal=isnull(issbal,0)+ " & 1 & " where lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotyear='" & Year(yfdate) & "'")
        End If
        adoSecondaryRS.MoveNext
       Loop
       UPDRS.MoveFirst
       
       '**********************LOT TABLE UPDATION **********************************/
       DB.CommitTrans
       MsgBox "Issue Details Saved!", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
      End If
   
   If Opt = "mod" Then
        DB.BeginTrans
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            Set rs1 = New Recordset
            rs1.Open "select ISNULL(isqty,0) from rm_bale  where lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "", DB, adOpenStatic, adLockBatchOptimistic
            If rs1.RecordCount > 0 Then
                DB.Execute ("update rm_issb set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & " where lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and docno = " & TXTFIELDS(0).Text & " and docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "")
                DB.Execute ("update rm_bale set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & "  where lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "")
            End If
            adoSecondaryRS.MoveNext
        Loop
        DB.CommitTrans
        MsgBox "Issue Detail Modified", vbInformation, head
        Screen.MousePointer = 0
        Opt = ""
    End If
 
 If Opt = "del" Then
       On Error GoTo del
        '*********************  LOT TABLE UPDATION **************************/
       adoSecondaryRS.MoveFirst
       Set rs1 = New Recordset
       rs1.Open "select distinct lotno,lotdt,divcode,catcd from rm_issb where docno='" & adoSecondaryRS("docno") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       rs1.MoveFirst
       Do While Not rs1.EOF
            Set Rs = New Recordset
            Rs.Open "SELECT SUM(ACTISSKGS),count(baleno) FROM RM_ISSB B WHERE  DOCNO=" & TXTFIELDS(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set RS2 = New Recordset
            RS2.Open "select isnull(isswt,0),isnull(issbal,0) from rm_lot where lottype = '" & grddatagrid.Columns(6).Text & "' and lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            qty = RS2(0)
            selbale = RS2(1)
            DB.Execute ("update rm_lot set isswt = " & val(qty) & " - " & val(Rs(0)) & ",issbal=" & val(selbale) & " - " & val(Rs(1)) & " where lottype = '" & grddatagrid.Columns(6).Text & "' and  DIVCODE='" & Divcode & "' AND lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"), a
        rs1.MoveNext
       Loop
       '*********************  BALE TABLE UPDATION **************************
        Do While Not adoSecondaryRS.EOF
            Set Rs = New Recordset
            Rs.Open "Select distinct baleno from rm_issb where DOCNO=" & adoSecondaryRS("DOCNO") & " and DOCDT='" & Format(adoSecondaryRS("DOCDT"), "yyyy-mm-dd") & "' and lottype = '" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
            Rs.MoveFirst
            Do While Not Rs.EOF
                DB.Execute "update rm_bale set isqty =NULL,actisskgs=null WHERE LOTNO=" & adoSecondaryRS("Lot No") & " and lotdt='" & Format(adoSecondaryRS("Date"), "yyyy-mm-dd") & "' and baleno=" & Rs(0) & " and lottype = '" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "'", a
                Rs.MoveNext
            Loop
            adoSecondaryRS.MoveNext
        Loop
        DB.Execute ("delete from rm_issb where docno =" & Trim(TXTFIELDS(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        DB.Execute ("delete from rm_issh where docno =" & Trim(TXTFIELDS(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        DB.CommitTrans
        MsgBox "Issue Details Deleted!", vbOKOnly, head
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
 End If
    'Return to query mode
    Call QUERY_MODE
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
    MsgBox "This Division code cannot be deleted as dependencies exist", , head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If

Case 10
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call QUERY_MODE
    Screen.MousePointer = 0
    Call disablcontls
    grddatagrid.Enabled = True
    lblctrl.Visible = False
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Frame3.Visible = False
    Frame1.Visible = True

Case 11
    'EXIT
    Unload Me
  
End Select
End Sub

Private Sub Combo1_Change()
If Opt = "" Or Opt = " " Then
On Error Resume Next
   If adoPrimaryRS("isstype") <> "P" Then
      TXTFIELDS(2).Visible = True
      Text2.Visible = True
      Label2.Visible = True
   Else
      TXTFIELDS(2).Visible = False
      Text2.Visible = False
      Label2.Visible = False
   End If
   If adoPrimaryRS("isstype") = "P" Then
      Combo1.Text = "P-Production"
   ElseIf adoPrimaryRS("isstype") = "T" Then
      Combo1.Text = "T-Transfer"
   Else
      Combo1.Text = "S-Sales"
   End If
End If
End Sub

Private Sub Combo1_Click()
If Combo1.Text = "P-Production" Then
    TXTFIELDS(2).Visible = False
    Text2.Visible = False
    TXTFIELDS(1).Visible = True
    TXTFIELDS(4).Visible = True
    TXTFIELDS(5).Visible = True
    TXTFIELDS(6).Visible = False
    TXTFIELDS(3).Visible = True
    Text1.Visible = True
    Text3.Visible = True
    Label3.Visible = True
    Label1.Visible = True
    Label4.Visible = True
    Label8.Visible = False
    Label5.Visible = True
ElseIf Combo1.Text = "S-Sales" Then
    TXTFIELDS(2).Visible = True
    Text2.Visible = True
    TXTFIELDS(1).Visible = False
    TXTFIELDS(4).Visible = False
    TXTFIELDS(5).Visible = False
    TXTFIELDS(6).Visible = False
    TXTFIELDS(3).Visible = False
    Text1.Visible = False
    Text3.Visible = False
    Label3.Visible = False
    Label1.Visible = False
    Label4.Visible = False
    Label8.Visible = False
    Label5.Visible = False
ElseIf Combo1.Text = "T-Transfer" Then
    TXTFIELDS(2).Visible = True
    Text2.Visible = True
    TXTFIELDS(1).Visible = False
    TXTFIELDS(4).Visible = False
    TXTFIELDS(5).Visible = False
    TXTFIELDS(6).Visible = False
    TXTFIELDS(3).Visible = False
    Label2.Visible = True
    Text1.Visible = False
    Text3.Visible = False
    Label3.Visible = False
    Label1.Visible = False
    Label4.Visible = False
    Label8.Visible = False
    Label5.Visible = False
End If
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub Combo1_LostFocus()
If Combo1.Text = "" And Opt = "add" Then
   MsgBox "Select Any Type From the Drop Down List", vbInformation, head
   Combo1.SetFocus
   Exit Sub
End If
Set Rs = New Recordset
Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "'", DB, adOpenStatic, adLockBatchOptimistic
TXTFIELDS(0).Text = Rs(0)
Call adddelmod(BUTTON)
BUTTON(9).Enabled = False
BUTTON(9).ToolTipText = "Add Record"
TXTFIELDS(0).Locked = True
MaskEdBox1(0).Text = pdate
SSTab1.TabEnabled(1) = True
End Sub

Private Sub Command1_Click()
If (Combo1.Text = "P-Production") Then
   If Trim(TXTFIELDS(1).Text) = "" Then
      MsgBox "Please Enter The mixing Count", vbInformation, head & "Message"
      Exit Sub
   End If
End If
If DataGrid1.SelBookmarks.Count = 0 And ChkEx = 0 Then
   MsgBox "Select the records using the Ctrl(control) key and then press OK ", vbInformation, head & "Message"
   Exit Sub
ElseIf val(DataGrid1.SelBookmarks.Count) = val(grddatagrid.Columns(10).Value) Or ChkEx = val(grddatagrid.Columns(10).Value) Then
   adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
   adoPrimaryRS("divcode") = Divcode
   adoPrimaryRS("isstype") = Left(Combo1.Text, 1)
   adoPrimaryRS("docno") = TXTFIELDS(0).Text
   If (Combo1.Text = "T") Or (Combo1.Text = "S") Then
       Set rst = New Recordset
       rst.Open "Select CNTCODE from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(4).Text & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
       If Not rst.EOF Then
          adoPrimaryRS("CNTCD") = rst(0)
       End If
   Else
       adoPrimaryRS("CNTCD") = TXTFIELDS(1).Text
   End If
   adoPrimaryRS("oilcode") = TXTFIELDS(3).Text
   adoPrimaryRS("oilwt") = val(TXTFIELDS(4).Text)
   adoPrimaryRS("wtrwt") = val(TXTFIELDS(5).Text)
   'adoprimaryrs("TINT") = Val(txtfields(6).Text)
   adoPrimaryRS.UpdateBatch adAffectAllChapters
        
   If DataGrid1.SelBookmarks.Count - 1 > 0 Then
      For i = 0 To DataGrid1.SelBookmarks.Count - 1
         Dim refrs As Recordset
         balers.Bookmark = DataGrid1.SelBookmarks(i)
         balers.Bookmark = DataGrid1.SelBookmarks(i)
         adoSecondaryRS.AddNew
         adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
         adoSecondaryRS("BALENO") = balers("baleno")
         adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
         adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
         adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
         adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
         adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
         adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
         adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
         adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
         adoSecondaryRS("AIKgs") = val(DataGrid1.Columns(4).Text)
      Next
'---------------Entry Save
   Else
      balers.MoveFirst
      While Not balers.EOF
         If Not IsNull(balers(4)) = True Then
            If val(balers(4)) > 0 Then
               adoSecondaryRS.AddNew
               adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
               adoSecondaryRS("BALENO") = balers("baleno")
               adoSecondaryRS("CATCD") = grddatagrid.Columns(7).Text
               adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
               adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
               adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
               adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
               adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
               adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
               adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
               adoSecondaryRS("AIKgs") = val(DataGrid1.Columns(4).Text)
             End If
         End If
         balers.MoveNext
      Wend
   End If
'---------------
Else
   MsgBox "Select only " & grddatagrid.Columns(10).Text & " Records from Datagrid", , head
   Command1.Enabled = False
   Exit Sub
End If
If vbYes = MsgBox("Any Corrections?", vbYesNo, head) Then
   DataGrid1.Enabled = True
   Text3.Text = ""
   Text4.Text = ""
   Set adoSecondaryRS = New Recordset
   adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",varcode ""Variety"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,B.ACTISSKGS ""AIKgs"" FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2  ", DB, adOpenStatic, adLockBatchOptimistic
   Command1.Enabled = False
Else
   If vbYes = MsgBox("Do you want enter more Lot details?", vbYesNo, head) Then
      SSTab1.Tab = 0
      grddatagrid.Enabled = True
      UPDRS.AddNew
      UPDRS("Iss Kgs") = val(Text4.Text)
      UPDRS("Iss bales") = val(Text3.Text)
      UPDRS("Lot No.") = grddatagrid.Columns(0).Text
      UPDRS("Lot Dt.") = grddatagrid.Columns(1).Text
      UPDRS("Lot Type.") = grddatagrid.Columns(2).Text
      updSECONDARYRS.AddNew
      grddatagrid.Col = 0
      grddatagrid.SetFocus
      BUTTON(9).Enabled = True
   Else
      UPDRS.AddNew
      UPDRS("Iss Kgs") = val(Text4.Text)
      UPDRS("Iss bales") = val(Text3.Text)
      UPDRS("Lot No.") = grddatagrid.Columns(0).Text
      UPDRS("Lot Dt.") = grddatagrid.Columns(1).Text
      UPDRS("Lot Type.") = grddatagrid.Columns(2).Text
      SSTab1.Tab = 0
      Frame1.Visible = True
      lblctrl.Enabled = False
      BUTTON(9).Enabled = True
      BUTTON(9).SetFocus
      grddatagrid.Enabled = False
   End If
   i = 0: wt = 0
End If
End Sub

Private Sub Command2_Click()    'Find Okay
desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by arrno", DB, adOpenStatic, adLockOptimistic
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   MsgBox "No Such Arrival No. Found", vbInformation, head
   Exit Sub
End If
Call bindcontls
'calling query procedure from module
Call Query(BUTTON)
Frame6.Visible = False
End Sub

Private Sub Command3_Click()    'Find Cancel
Frame6.Visible = False
End Sub

Private Sub Command4_Click()
grddatagrid.Columns(1).Text = Rs(0)
grddatagrid.Columns(2).Text = Rs(1)
grddatagrid.Columns(3).Text = Rs(2)
Set Namers = New Recordset
Namers.Open "Select varname from rm_var where varcode='" & Rs(2) & "'", DB, adOpenStatic
If Not Namers.EOF Then
   grddatagrid.Columns(4).Value = Namers(0)
End If
grddatagrid.Columns(7).Value = Rs(3)
grddatagrid.Columns(8).Value = Rs(4)
grddatagrid.Columns(9).Value = Rs(5)
Frame2.Visible = False
SSTab1.Visible = True
SSTab1.ZOrder
grddatagrid.Col = 8
grddatagrid.SetFocus
SendKeys ("{right}")
End Sub

Private Sub Command5_Click()    'activex cancel
If Label15.Caption = "Oil Details" Then
   Frame3.Visible = False
   SSTab1.Tab = 0
   TXTFIELDS(3).Text = ""
   Exit Sub
End If
Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Tab = 0
Call BUTTON_Click(10)
End Sub

Private Sub Command6_Click()    'activex ok
Select Case KslList1.listfield1
    Case "cast(a.lotno as varchar)"
         TXTFIELDS(1).Text = KslList1.Code
         MaskEdBox1(1).Text = Format(KslList1.description, "dd/mm/yyyy")
         Dim partyrs As Recordset
         Set partyrs = New Recordset
         partyrs.Open "select catcd from rm_lot where lotno=" & TXTFIELDS(1).Text & " and lotdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
         TXTFIELDS(2).Text = partyrs(0)
         Combo1.SetFocus
    Case "slcode"
         If Combo1.Text <> "T-Transfer" Then
            TXTFIELDS(2).Text = KslList1.Code
            Text2.Text = Trim(KslList1.description)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         Else
            TXTFIELDS(2).Text = KslList1.Code
            Text2.Text = Trim(KslList1.description)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         End If
    Case "cntcd"
         TXTFIELDS(1).Text = KslList1.Code
         grddatagrid.Col = 0
         grddatagrid.Enabled = True
         grddatagrid.SetFocus
    Case "oilcode"
         TXTFIELDS(3).Text = KslList1.Code
         Text1.Text = KslList1.description
         TXTFIELDS(4).SetFocus
    Case "cast(docno as varchar)"
         TXTFIELDS(0).Text = KslList1.Code
         MaskEdBox1(0).Text = Format(KslList1.description, "dd/mm/yyyy")
         a = TXTFIELDS(0).Text
         b = MaskEdBox1(0).Text
         Text1.Text = ""
         Call delmodproc(CStr(a), CStr(b))
End Select
Frame3.Visible = False
End Sub

Private Sub DataGrid1_Click()
If Opt = "add" Then
   DataGrid1.AllowAddNew = True
   DataGrid1.AllowUpdate = True
   DataGrid1.Columns(3).Locked = False
   DataGrid1.Columns(4).Locked = False
   DataGrid1.Enabled = True
   rx = balers.AbsolutePosition
   If grddatagrid.Row >= 0 Then
      If DataGrid1.SelBookmarks.Count > val(grddatagrid.Columns(10).Text) Then
         MsgBox "Select only " & grddatagrid.Columns(8).Text & " Records from Datagrid", , head
         Command1.Enabled = False
         Exit Sub
      ElseIf DataGrid1.SelBookmarks.Count <= val(grddatagrid.Columns(10).Text) Then
         If DataGrid1.SelBookmarks.Count > 1 Then
            Text4 = ""
            Text3 = ""
            For i = 0 To DataGrid1.SelBookmarks.Count - 1
               balers.Bookmark = DataGrid1.SelBookmarks(i)
               Text4 = val(Text4) + balers(3)
               Text3.Text = DataGrid1.SelBookmarks.Count
               Text3.Visible = True
            Next
         Else
            On Error Resume Next
            Text3.Text = DataGrid1.SelBookmarks.Count
            Text3.Visible = True
         End If
      End If
      If DataGrid1.SelBookmarks.Count = val(grddatagrid.Columns(10).Text) Then
         Command1.Enabled = True
      Else
         Command1.Enabled = False
      End If
   End If
End If
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
If Opt = "mod" Then Exit Sub
   DataGrid1.AllowAddNew = True
   DataGrid1.AllowUpdate = True
   DataGrid1.Columns(3).Locked = False
   DataGrid1.Columns(4).Locked = False
   rx = balers.AbsolutePosition
   DataGrid1.EditActive = True
   DataGrid1.Enabled = True
   On Error GoTo BBB
   If KeyAscii = 9 Or KeyAscii = 13 Then
      Text4 = ""
      ChkEx = 0
      balers.MoveFirst
      While Not balers.EOF
         If Not IsNull(balers(4)) = True Then
            If val(balers(4)) <> 0 Then Text4 = val(Text4) + val(balers(4)): ChkEx = ChkEx + 1
         End If
         If ChkEx > val(grddatagrid.Columns(8).Text) Then
            MsgBox "Only " & grddatagrid.Columns(8).Text & " Records can be Selected from Datagrid", vbOKOnly, head
            Command1.Enabled = False
            Exit Sub
         ElseIf ChkEx < val(grddatagrid.Columns(8).Text) Then
         End If
         balers.MoveNext
      Wend
      If ChkEx = grddatagrid.Columns(8).Text Then
         Command1.Enabled = True
      Else
         Command1.Enabled = False
      End If
      balers.MoveFirst
      For i = 0 To rx - 1
         If balers.EOF <> True Then balers.MoveNext
      Next
      DataGrid1.Col = 4
   End If
   If KeyAscii = 19 Then
      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
      DataGrid1.Row = 0
      For i = 0 To DataGrid1.ApproxCount
        If val(DataGrid1.Columns(4).Text) > 0 Then
           DataGrid1.SelBookmarks.ADD (DataGrid1.Bookmark)
        End If
        DataGrid1.Row = DataGrid1.Row + 1
        Call DataGrid1.Scroll(0, 1)
      Next
      If DataGrid1.SelBookmarks.Count = grddatagrid.Columns(7).Text Then
         Command1.Enabled = True
      Else
         Command1.Enabled = False
      End If
   End If
   Exit Sub
BBB:
MsgBox ""
End Sub

Private Sub DataGrid1_KeyUp(KeyCode As Integer, Shift As Integer)
If DataGrid1.Col = 4 Then
   Call ToNumber(DataGrid1, KeyCode)
End If
End Sub

Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.Value >= yfdate And DTPicker1.Value <= pdate) Then
   MsgBox "Adjustment date should fall within the processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(0).Text = DTPicker1.Value
End If
End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
SSTab1.Visible = True
DATLAB.Caption = pdate
Call QUERY_MODE
DTPicker1.MinDate = yfdate
DTPicker1.MaxDate = pdate
End Sub

Private Sub Form_Unload(Cancel As Integer)
Opt = ""
Screen.MousePointer = vbDefault
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
     '   Call Command6_Click
    End If
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    If Opt <> "add" And Opt <> "mod" Then
        If adoPrimaryRS.RecordCount > 0 Then
            On Error Resume Next
            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
            If adoPrimaryRS("isstype") = "P" Then
            Combo1.Text = "P-Production"
            ElseIf adoPrimaryRS("isstype") = "T" Then
                Combo1.Text = "T-Transfer"
            Else
                Combo1.Text = "S-Sales"
            End If
            Set RS2 = adoPrimaryRS("childcmd").UnderlyingValue
            If RS2.RecordCount > 0 Then
                 RS2.MoveFirst
                 Set rs1 = New Recordset
                 rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ActIssKgs""AIKgs"" from rm_bale where 1=2", DB, adOpenStatic, adLockReadOnly
                 s = 0
                 c = 0
                 Do While Not RS2.EOF
                 Set Rs = New Recordset
                 Rs.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ISNULL(ActIssKgs,0) ""AIKgs"" from rm_bale where lotno=" & RS2(4) & " and lotdt='" & Format(RS2(5), "yyyy-mm-dd") & "' and baleno=" & RS2(10) & " ", DB, adOpenStatic, adLockReadOnly
                 c = c + 1
                 rs1.AddNew
                 rs1("Baleno") = Rs(0)
                 rs1("Gross Weight") = Format(Rs(1), "#0.000")
                 rs1("Tare Weight") = Format(Rs(2), "#0.000")
                 rs1("Net Weight") = Format(Rs(3), "#0.000")
                 rs1!AIKgs = val(Format(Rs(4), "#0.000"))
                 s = s + Rs(4)
            RS2.MoveNext
            Loop
                Set DataGrid1.DataSource = rs1
                Text3.Text = c
                Text4.Text = Format(s, "#0.000")
                DataGrid1.Columns(1).NumberFormat = "#0.000"
                DataGrid1.Columns(2).NumberFormat = "#0.000"
                DataGrid1.Columns(3).NumberFormat = "#0.000"
                DataGrid1.Columns(4).NumberFormat = "#0.000"
                DataGrid1.Columns(1).Alignment = dbgRight
                DataGrid1.Columns(2).Alignment = dbgRight
                DataGrid1.Columns(3).Alignment = dbgRight
                DataGrid1.Columns(4).Alignment = dbgRight
                DataGrid1.Columns(4).Width = 1980.284
                DataGrid1.Columns(3).Width = 1980.284
                DataGrid1.Columns(2).Width = 2085.166
                DataGrid1.Columns(1).Width = 2250.142
                DataGrid1.Columns(0).Width = 1544.882
          If Opt = "" Then
              DataGrid1.AllowUpdate = False
          End If
        End If
    End If
End If
End Sub

'assigning values from adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
Next
Combo1.DataField = "isstype"
Set Combo1.DataSource = adoPrimaryRS
MaskEdBox1(0).DataField = "DOCDT"
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("DOCDT"), "dd/mm/yyyy")
End If
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 0 To 5
    TXTFIELDS(i).Locked = False
Next
MaskEdBox1(0).Enabled = True
DTPicker1.Enabled = True
Combo1.Enabled = True
End Sub

Public Sub disablcontls()
Dim i As Integer
For i = 0 To 5
    TXTFIELDS(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
DTPicker1.Enabled = False
Combo1.Enabled = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If ColIndex = 0 Then
   If grddatagrid.Columns(0).Text <> "" Then
      Set Rs = New Recordset
      'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_BALE B,RM_LOT A WHERE ISNULL(B.ISQTY,0)> 0 and B.lotno=" & grddatagrid.Columns(0).Text & " and A.lotno=B.lotno and A.lotdt=B.lotdt and A.BALES-isnull(A.issBAL,0)>0),A.netwt-isnull(A.isswt,0) from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & Val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
      Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_ISSB B WHERE lotno=" & grddatagrid.Columns(0).Text & " ),A.netwt-isnull(A.isswt,0),a.colorcode from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
       
      'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_BALE B WHERE ISNULL(B.ISQTY,0)= 0 and lotno=" & grddatagrid.Columns(0).Text & " ),A.netwt-isnull(sum(isnull(b.actisskgs,0)),0) from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & Val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD group by a.lotdt,a.lottype,a.varcode,a.catcd,a.bales,a.netwt", DB, adOpenStatic
      'Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-(SELECT COUNT(*)FROM RM_BALE B WHERE ISNULL(B.ISQTY,0)= 0 and lotno=" & grddatagrid.Columns(0).Text & " ),A.netwt-isnull(A.isswt,0) from rm_lot A,RM_BALE B where a.divcode='" & Divcode & "' and a.lotno='" & Val(grddatagrid.Columns(0).Text) & "' and A.BALES-isnull(A.issBAL,0)>0 and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD group by a.lotdt,a.lottype,a.varcode,a.catcd,a.bales,a.netwt,a.isswt", DB, adOpenStatic
       
      If Rs.RecordCount = 0 Then
         Set xx = New Recordset
         xx.Open "select rejflg from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
         If xx.RecordCount > 0 Then
            If xx("rejflg") = "Y" Then
               MsgBox "This Lot is Rejected,Please Select the another Lot", vbInformation, head
               Exit Sub
            Else
               GoTo 10
            End If
         End If
10:      MsgBox "The Lot was issued / not available for the selected Count. ", vbInformation, head
         On Error Resume Next
         grddatagrid.Columns(0).Text = ""
         grddatagrid.Col = 0
         grddatagrid.SetFocus
      ElseIf Rs.RecordCount > 1 Then
         Set DataGrid2.DataSource = Rs
         SSTab1.Visible = False
         Frame2.Visible = True
         Frame2.ZOrder
      Else
         xx1 = 0
         Set ry = New Recordset
         ry.Open "select * from rm_bale where isqty is null and lotno='" & grddatagrid.Columns(0).Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'", DB, adOpenStatic
         Do While Not ry.EOF
            xx1 = xx1 + 1
            ry.MoveNext
         Loop
            
            
         grddatagrid.Columns(1).Text = Rs(0)
         grddatagrid.Columns(2).Text = Rs(1)
         grddatagrid.Columns(3).Text = Rs(2)
         Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & Rs(2) & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grddatagrid.Columns(4).Value = Namers(0)
         End If
         Set Namers = New Recordset
         Namers.Open "Select colorname from rm_color where colorcode='" & Rs("colorcode") & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grddatagrid.Columns(6).Value = Namers(0)
         End If
         grddatagrid.Columns(5).Value = IIf(IsNull(Rs("colorcode")), 0, Rs("COLORCODE"))
         grddatagrid.Columns(7).Value = Rs(3)
         'grddatagrid.Columns(6).Value = Rs(4)
         grddatagrid.Columns(8).Value = xx1
         grddatagrid.Columns(9).Value = Rs(5)
         grddatagrid.Col = 10
         grddatagrid.SetFocus
      End If
   End If
ElseIf ColIndex = 10 Then
   If val(grddatagrid.Columns(10).Text) > val(grddatagrid.Columns(8).Text) Then
      MsgBox "Issued Bales should not be greater than Closing Bales", vbInformation, head
      grddatagrid.Columns(10).Value = grddatagrid.Columns(8).Value
      grddatagrid.Col = 10
      grddatagrid.SetFocus
      Exit Sub
   Else
      'SSTab1.Tab = 1
      lblctrl.Visible = True
      Timer1.Enabled = True
      Set DataGrid1.DataSource = Nothing
      Set balers = New Recordset
      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
      Set DataGrid1.DataSource = balers
'    'Set rs1 = New Recordset
'    'rs1.Open "select (NETWT-ISNULL(ISQTY,0))""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and netwt-isnull(isqty,0) >0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenStatic, adLockBatchOptimistic
'    ' rs1.MoveFirst
'     DataGrid1.Row = 0
'     row1 = rs1.AbsolutePosition - 1
'     On Error Resume Next
'     Do While Not rs1.EOF
'     DataGrid1.Columns(3).Value = rs1(0)
'     'DataGrid1.Columns(4).Value = rs1(1)
'     DataGrid1.Row = DataGrid1.Row + 1
'     rs1.MoveNext
'     Loop
      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
     ' DataGrid1.Row = 0
      DataGrid1.Col = 4
      DataGrid1.Enabled = True
      DataGrid1.Enabled = True
      DataGrid1.AllowUpdate = True
      DataGrid1.EditActive = True
      DataGrid1.Columns(2).Locked = True
      DataGrid1.Columns(0).Locked = True
      DataGrid1.Columns(1).Locked = True
      DataGrid1.Columns(3).Locked = False
      DataGrid1.Columns(4).Locked = False
      DataGrid1.Columns(4).Width = 1980.284
      DataGrid1.Columns(3).Width = 1980.284
      DataGrid1.Columns(2).Width = 1085.166
      DataGrid1.Columns(1).Width = 1250.142
      DataGrid1.Columns(0).Width = 1544.882
      DataGrid1.Columns(1).Alignment = dbgRight
      DataGrid1.Columns(2).Alignment = dbgRight
      DataGrid1.Columns(3).Alignment = dbgRight
      DataGrid1.Columns(4).Alignment = dbgRight
      DataGrid1.Columns(4).NumberFormat = "######.000"
      DataGrid1.Columns(3).NumberFormat = "######.000"
      DataGrid1.Columns(2).NumberFormat = "######.000"
      DataGrid1.Columns(1).NumberFormat = "######.000"
      grddatagrid.Enabled = False
      Command1.Enabled = True
      Frame1.Visible = True
      Frame1.Enabled = True
      'txtfields(3).SetFocus
      SSTab1.SetFocus
   End If
End If
End Sub

Private Sub grddatagrid_Click()
If Opt = "" Or Opt = " " Then
   If grddatagrid.Row >= 0 Then
      Set rs1 = New Recordset
      rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' AND LOTDT='" & Format(Trim(grddatagrid.Columns(0).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", DB, adOpenStatic, adLockBatchOptimistic
      Set DataGrid1.DataSource = rs1
      DataGrid1.Columns(0).Width = 1000
      DataGrid1.Columns(1).Width = 2000
      DataGrid1.Columns(2).Width = 2000
      DataGrid1.Columns(3).Width = 3000
      DataGrid1.Columns(3).NumberFormat = "######.000"
      DataGrid1.Columns(2).NumberFormat = "######.000"
      DataGrid1.Columns(1).NumberFormat = "######.000"
      DataGrid1.Columns(1).Alignment = dbgRight
      DataGrid1.Columns(2).Alignment = dbgRight
      DataGrid1.Columns(3).Alignment = dbgRight
   End If
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If Opt = "add" Or Opt = "mod" Then
   If grddatagrid.Col = 0 Then
      StatusBar1.Panels(2).Text = "Enter Lot Number"
   End If
   If grddatagrid.Col = 1 Then
      StatusBar1.Panels(2).Text = "Enter Valid Date"
   End If
   If grddatagrid.Col = 2 Then
      StatusBar1.Panels(2).Text = "Enter Lot Type"
   End If
   If grddatagrid.Col = 3 Then
      StatusBar1.Panels(2).Text = "Enter Variety"
   End If
   If grddatagrid.Col = 6 Then
      StatusBar1.Panels(2).Text = "Enter Category"
   End If
   If grddatagrid.Col = 7 Then
      StatusBar1.Panels(2).Text = "Enter Closing Bales"
   End If
   If grddatagrid.Col = 8 Then
      StatusBar1.Panels(2).Text = "Enter Closing Weights"
   End If
   If grddatagrid.Col = 9 Then
      StatusBar1.Panels(2).Text = "Enter Issued Bales"
   End If
End If
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 0
      If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
         If Not (IsDate(MaskEdBox1(0).Text)) Then
            MsgBox ("invalid date")
            MaskEdBox1(0).Text = pdate
            MaskEdBox1(0).SetFocus
         ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
            MaskEdBox1(0).SetFocus
         End If
      End If
   End Select
End If
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
    MaskEdBox1(Index).BackColor = &HC0FFC0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
  Case 2
     If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(2).Text)) Then
           MsgBox ("invalid date")
           MaskEdBox1(2).Text = pdate
           MaskEdBox1(2).SetFocus
        ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
           MsgBox "ATL Date should be before Arrival Date", vbInformation, head
           MaskEdBox1(2).Text = MaskEdBox1(0).Text
        End If
     End If
End Select
MaskEdBox1(0).BackColor = &HFFFFFF
End Sub

Private Sub Txtfields_Change(Index As Integer)
If Opt = "add" Or Opt = "" Or Opt = " " Then
   Select Case Index
     Case 2
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(2).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text2.Text = Rs(0)
        End If
        Rs.Close
     Case 3
        Set Rs = New Recordset
        Rs.Open "select oildesc from rm_oil where oilcode = '" & TXTFIELDS(3).Text & "' ", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
           Text1.Text = Rs(0)
        Else
           Text1.Text = ""
        End If
        Rs.Close
   End Select
End If
If Opt = "" Or Opt = " " Then
   Select Case Index
      Case 4
         TXTFIELDS(4).Text = Format(TXTFIELDS(4).Text, "#0.000")
      Case 5
         TXTFIELDS(5).Text = Format(TXTFIELDS(5).Text, "#0.000")
   End Select
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Then
   Select Case Index
     Case 2
         Set Rs = New Recordset
         Rs.Open "select count(*) from fa_slmas", DB
         If Not Rs(0) = 0 Then
            Label15.Caption = "Party Details"
            KslList1.conn = connectstring
            KslList1.Table = "fa_slmas"
            KslList1.listfield1 = "slcode"
            KslList1.listfield2 = "slname"
            Frame3.Visible = True
                Frame3.ZOrder
                KslList1.SetFocus
            Else
                MsgBox "No Record Found", vbInformation, head
                Exit Sub
            End If
        End Select
    End If
    If Opt = "add" Or Opt = "mod" Then
          Select Case Index
               Case 0
                    StatusBar1.Panels(2).Text = "Enter Issue Number"
               Case 1
                    StatusBar1.Panels(2).Text = "Enter Count"
               Case 2
                    StatusBar1.Panels(2).Text = "Enter Party Name"
               Case 3
                    StatusBar1.Panels(2).Text = "Enter oil Code"
               Case 4
                    StatusBar1.Panels(2).Text = "Enter oil Weight"
               Case 5
                    StatusBar1.Panels(2).Text = "Enter water weight"
          End Select
    End If
'------------------------------------From Lost Focus
     If Opt = "add" Then
        Select Case Index
        Case 1
                    Set Rs = New Recordset
                    Rs.Open "select count(*) from rm_count", DB
                If Not Rs(0) = 0 Then
                    Label15.Caption = "Count Details"
                    KslList1.conn = connectstring
                    KslList1.Table = "rm_count"
                    KslList1.listfield1 = "cntcd"
                    KslList1.listfield2 = "cntname"
                    Frame3.Visible = True
                    KslList1.SetFocus
                    Frame3.ZOrder
                Else
                    MsgBox "No Record Found", vbInformation, head
                    Exit Sub
               End If
        Case 3
              If str <> "n" Then
                str = "n"
                Set Rs = New Recordset
                Rs.Open "select count(*) from rm_oil", DB
            If Not Rs(0) = 0 Then
            Else
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
            End If
        Case 2
            On Error Resume Next
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End Select
End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "" Or Opt = " " Or Opt = "del" Then
   KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 1, 3
        ToUpCase TXTFIELDS(Index), KeyAscii
   Case 4, 5
        Call tonum1(TXTFIELDS(Index), 5, KeyAscii, 0)
   End Select
End If
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
   If Index = 5 Then
      TXTFIELDS(5).Text = Format(TXTFIELDS(5).Text, "#0.000")
   End If
   If Index = 4 Then
      TXTFIELDS(4).Text = Format(TXTFIELDS(4).Text, "#0.000")
   End If
   If Index = 6 Then
      SSTab1.Tab = 1
   End If
   If Index = 7 And Opt = "add" Then
      If Trim(TXTFIELDS(7).Text) <> "" And Combo1.Text = "P-Production" And Trim(TXTFIELDS(0)) = "" Then
         TXTFIELDS(7).Text = UCase(TXTFIELDS(7).Text)
         Set Rs = New Recordset
         Rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & TXTFIELDS(7).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
         TXTFIELDS(0).Text = Rs(0)
         Call adddelmod(BUTTON)
         BUTTON(9).Enabled = False
         BUTTON(9).ToolTipText = "Add Record"
         TXTFIELDS(0).Locked = True
         MaskEdBox1(0).Text = pdate
         TXTFIELDS(0).SetFocus
         SSTab1.TabEnabled(1) = True
      End If
   End If
End If
StatusBar1.Panels(2).Text = ""
If Opt = "add" Then
   Select Case Index
   Case 3
        If Trim(TXTFIELDS(3).Text) <> "" Then
           Set Rs = New Recordset
           Rs.Open "select oilcode from rm_oil where oilcode='" & Trim(TXTFIELDS(3).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
           If Rs.RecordCount = 0 Then
              Set Rs = New Recordset
              Rs.Open "select count(*) from rm_oil", DB
              If Not Rs(0) = 0 Then
                 Label15.Caption = "Oil Details"
                 KslList1.conn = connectstring
                 KslList1.Table = "rm_oil"
                 KslList1.listfield1 = "oilcode"
                 KslList1.listfield2 = "oildesc"
                 Frame3.Visible = True
                 Frame3.ZOrder
                 KslList1.SetFocus
              Else
                 MsgBox "No record Found"
                 Screen.MousePointer = 0
                 Exit Sub
              End If
           End If
        End If
   End Select
End If
End Sub

Public Sub GRIDALIGN()
If Opt = "mod" Then
   grddatagrid.Columns(1).Locked = True
   grddatagrid.Columns(2).Locked = True
   grddatagrid.Columns(3).Locked = True
   grddatagrid.Columns(4).Locked = True
   grddatagrid.Columns(5).Locked = True
   grddatagrid.Columns(6).Locked = True
   grddatagrid.Columns(7).Locked = True
   grddatagrid.Columns(8).Locked = True
   grddatagrid.Columns(9).Locked = True
   grddatagrid.Columns(10).Locked = True
   grddatagrid.Columns(11).Locked = False
   'grdDataGrid.Columns(12).Locked = True
Else
   grddatagrid.Columns(1).Locked = True
   grddatagrid.Columns(2).Locked = True
   grddatagrid.Columns(3).Locked = True
   grddatagrid.Columns(4).Locked = True
   grddatagrid.Columns(5).Locked = True
   grddatagrid.Columns(6).Locked = True
   grddatagrid.Columns(7).Locked = True
End If
End Sub

Public Sub QUERY_MODE()
If Opt = "" Or Opt = " " Or Opt = "query" Then
   Text1.Text = ""
   grddatagrid.Enabled = True
   lblctrl.Visible = False
   Timer1.Enabled = False
   Command1.Enabled = False
   Set adoPrimaryRS = New Recordset
   If Opt <> "mod" Then
      adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,tint FROM RM_ISSH  " & _
                        "  where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actISSkgs""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                        " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' " & _
                        " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
      If Not adoPrimaryRS.BOF Then
        'Bind the text boxes,check boxes and option buttons to the data source
         Call bindcontls
         If adoPrimaryRS("isstype") = "P" Then
            Combo1.Text = "P-Production"
         ElseIf adoPrimaryRS("isstype") = "T" Then
            Combo1.Text = "T-Transfer"
         Else
            Combo1.Text = "S-Sales"
         End If
         Call disablcontls
         SSTab1.TabEnabled(1) = False
         Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
         Set grddatagrid.DataSource = adoSecondaryRS
         grddatagrid.Columns(0).Visible = False
         grddatagrid.Columns(1).Visible = False
         grddatagrid.Columns(2).Visible = False
         grddatagrid.Columns(3).Visible = False
         grddatagrid.Columns(4).Width = 1000
         grddatagrid.Columns(5).Width = 1300
         grddatagrid.Columns(6).Width = 1000
         grddatagrid.Columns(7).Width = 1000
         grddatagrid.Columns(8).Width = 1000
         grddatagrid.Columns(9).Width = 1000
         grddatagrid.Columns(10).Width = 1500
         grddatagrid.Columns(11).Width = 1214.929
         grddatagrid.Columns(9).NumberFormat = "#######.000"
         grddatagrid.Columns(9).Alignment = dbgRight
         grddatagrid.Columns(10).Alignment = dbgRight
         grddatagrid.Columns(11).Alignment = dbgRight
         SSTab1.Tab = 0
         Frame1.Visible = True
         grddatagrid.AllowUpdate = False
         desc.Caption = "Query"
         'This variable is declared as global to show the date
         DATLAB.Caption = pdate
         'Calling newform procedure from Module to disable buttons
         '----
         If Opt <> "add" Then
            If adoPrimaryRS.RecordCount > 0 Then
               On Error Resume Next
               Set RS2 = adoPrimaryRS("childcmd").UnderlyingValue
               If RS2.RecordCount > 0 Then
                  RS2.MoveFirst
                  Set rs1 = New Recordset
                  rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where 1=2", DB, adOpenStatic, adLockBatchOptimistic
                  s = 0: c = 0
                  Do While Not RS2.EOF
                     Set Rs = New Recordset
                     Rs.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno=" & RS2(4) & " and lotdt='" & Format(RS2(5), "yyyy-mm-dd") & "' and baleno=" & RS2(10) & "", DB, adOpenStatic, adLockReadOnly
                     c = c + 1
                     rs1.AddNew
                     rs1("Baleno") = Rs(0)
                     rs1("Gross Weight") = Format(Rs(1), "#0.000")
                     rs1("Tare Weight") = Format(Rs(2), "#0.000")
                     rs1("Net Weight") = Format(Rs(3), "#0.000")
                     s = s + Rs(3)
                     RS2.MoveNext
                  Loop
                  Set DataGrid1.DataSource = rs1
                  Text3.Text = c
                  Text4.Text = Format(s, "#0.000")
                  DataGrid1.Columns(0).Alignment = dbgRight
                  DataGrid1.Columns(1).Alignment = dbgRight
                  DataGrid1.Columns(2).Alignment = dbgRight
                  DataGrid1.Columns(3).Alignment = dbgRight
                  DataGrid1.Columns(1).NumberFormat = "#0.000"
                  DataGrid1.Columns(2).NumberFormat = "#0.000"
                  DataGrid1.Columns(3).NumberFormat = "#0.000"
                  DataGrid1.Columns(3).Width = 1980.284
                  DataGrid1.Columns(2).Width = 2085.166
                  DataGrid1.Columns(1).Width = 2250.142
                  DataGrid1.Columns(0).Width = 1544.882
                  If Opt = "" Then
                     DataGrid1.AllowUpdate = False
                  End If
               End If
            End If
         End If
        '-----
         Call NEWFORM1(BUTTON, GSNO)
         Call disablcontls
         SSTab1.TabEnabled(1) = True
         Exit Sub
      Else
         MsgBox "No Records Found", vbInformation, head
         Call Norecfound(BUTTON)
         SSTab1.Visible = True
         SSTab1.Tab = 0
         Set DataGrid1.DataSource = Nothing
         Set grddatagrid.DataSource = Nothing
         For i = 0 To 5
            TXTFIELDS(i).Text = ""
         Next
         Combo1.Text = ""
      End If
   End If
End If
End Sub

Private Sub delmodok_Click()
Set Rs = New Recordset
Rs.Open "select a.docno,a.docdt from rm_issh a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
   Label15.Caption = "Issue Details"
   StatusBar1.Panels(2).Text = "Select Any Document Number For Deletion"
   KslList1.conn = connectstring
   KslList1.Table = "rm_issh"
   KslList1.listfield1 = "cast(docno as varchar)"
   KslList1.listfield2 = "convert(varchar,docdt,103)"
   Frame3.Visible = True
   Frame3.ZOrder
   KslList1.SetFocus
Else
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
If Opt <> "mod" Then DB.BeginTrans
End Sub

Public Sub delmodproc(a As String, b As String)
If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,tint FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(TXTFIELDS(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(TXTFIELDS(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   If Not adoPrimaryRS.EOF Then
      Call bindcontls
      If adoPrimaryRS("isstype") = "P" Then
         Combo1.Text = "P-Production"
      ElseIf adoPrimaryRS("isstype") = "T" Then
         Combo1.Text = "T-Transfer"
      Else
         Combo1.Text = "S-Sales"
      End If
      Call disablcontls
      SSTab1.TabEnabled(1) = False
      Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
      Set grddatagrid.DataSource = adoSecondaryRS
      grddatagrid.Columns(0).Visible = False
      grddatagrid.Columns(1).Visible = False
      grddatagrid.Columns(2).Visible = False
      grddatagrid.Columns(3).Visible = False
      grddatagrid.Columns(4).Width = 1000
      grddatagrid.Columns(5).Width = 1300
      grddatagrid.Columns(6).Width = 1000
      grddatagrid.Columns(7).Width = 1000
      grddatagrid.Columns(8).Width = 1000
      grddatagrid.Columns(9).Width = 1000
      grddatagrid.Columns(10).Width = 1500
      grddatagrid.Columns(11).Width = 1214.929
      grddatagrid.Columns(10).NumberFormat = "#######.000"
      grddatagrid.Columns(9).Alignment = dbgRight
      grddatagrid.Columns(10).Alignment = dbgRight
      grddatagrid.Columns(11).Alignment = dbgRight
      SSTab1.Tab = 0
      Frame1.Visible = True
      grddatagrid.AllowUpdate = False
      TXTFIELDS(3).Locked = False
      TXTFIELDS(4).Locked = False
      TXTFIELDS(6).Locked = False
      Frame2.Visible = True
      Text4.Visible = True
      grddatagrid.AllowUpdate = True
      grddatagrid.AllowAddNew = True
      Screen.MousePointer = 0
      Call GRIDALIGN
   Else
      Set grddatagrid.DataSource = Nothing
   End If
Else
   BUTTON(9).Enabled = True
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,TINT FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({(SELECT distinct a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,VARCODE""Variety"",a.CATCD""Category"",b.ISSwt""Issued Kgs"",b.issbal""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and  docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "') Order by A.LOTno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
   Set grddatagrid.DataSource = adoSecondaryRS
   Call GRIDALIGN
   Call bindcontls
   SSTab1.Visible = True
   grddatagrid.Visible = True
   grddatagrid.AllowAddNew = False
   SSTab1.TabEnabled(1) = False
   Call GRIDALIGN
End If
If Opt = "mod" Then
   TXTFIELDS(3).Locked = False
   TXTFIELDS(4).Locked = False
   TXTFIELDS(6).Locked = False
   Frame2.Visible = True
   Text4.Visible = True
   grddatagrid.AllowUpdate = True
   grddatagrid.AllowAddNew = True
   Screen.MousePointer = 0
   Call GRIDALIGN
End If
Screen.MousePointer = 0
End Sub

Public Sub navi1(tol As Object)
tol(0).Enabled = True 'ADD
'tol(1).Enabled = True 'MOD
tol(2).Enabled = True 'DEL
On Error Resume Next
'  tol(3).Enabled = True 'LIST
tol(4).Enabled = False 'QUERY
tol(9).Enabled = False 'SAVE
tol(10).Enabled = False 'CANCEL
tol(11).Enabled = True  'EXIT
End Sub

Public Sub tonum1(Obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
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
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
If Trim(TXTFIELDS(3).Text) <> "" Then
   Dim os As New Recordset
   Set os = New Recordset
   os.Open "select * from rm_oil where oilcode = '" & Trim(TXTFIELDS(3).Text) & "'", DB
   If os.RecordCount > 0 Then
      TXTFIELDS(3).Text = os(0)
      Text1.Text = os(1)
   Else
      Label15.Caption = "oil Details"
      KslList1.conn = connectstring
      KslList1.Table = "rm_oil"
      KslList1.listfield1 = "oilcode"
      KslList1.listfield2 = "oildesc"
      Frame3.Visible = True
      Frame3.ZOrder
      KslList1.SetFocus
   End If
End If
End Sub
