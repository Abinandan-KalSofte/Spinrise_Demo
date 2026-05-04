VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{13592B48-653C-491D-ACB1-C3140AA12F33}#6.0#0"; "ubGrid.ocx"
Begin VB.Form SvspFrmissueKgs 
   Caption         =   "Issue"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8880
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6780
   ScaleWidth      =   8880
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   51
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
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
         Index           =   12
         Left            =   5760
         Picture         =   "svspRMIissueKilowise.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   63
         ToolTipText     =   "Print"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":0442
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "svspRMIissueKilowise.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   57
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":0BD9
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "svspRMIissueKilowise.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   52
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":1276
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "svspRMIissueKilowise.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   56
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":1A25
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
         Picture         =   "svspRMIissueKilowise.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   54
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":20CB
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "svspRMIissueKilowise.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   53
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "svspRMIissueKilowise.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   55
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":2AE6
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "svspRMIissueKilowise.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   58
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":3280
         Height          =   550
         Index           =   11
         Left            =   5295
         Picture         =   "svspRMIissueKilowise.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   62
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":3A5F
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "svspRMIissueKilowise.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   60
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":410B
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "svspRMIissueKilowise.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   61
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "svspRMIissueKilowise.frx":4791
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "svspRMIissueKilowise.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   59
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
         Left            =   10080
         TabIndex        =   65
         Top             =   240
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
         Left            =   7560
         TabIndex        =   64
         Top             =   240
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
      TabIndex        =   43
      Top             =   6480
      Width           =   8880
      _ExtentX        =   15663
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
            TextSave        =   "11/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:02 AM"
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
      Height          =   6570
      Left            =   120
      TabIndex        =   28
      Top             =   960
      Width           =   11640
      _ExtentX        =   20532
      _ExtentY        =   11589
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Lot"
      TabPicture(0)   =   "svspRMIissueKilowise.frx":4F3D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "grddatagrid"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame7"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      TabCaption(1)   =   "Bale"
      TabPicture(1)   =   "svspRMIissueKilowise.frx":4F59
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame11"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Option2"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Option1"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Frame8"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Frame4"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "Text11"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "Text10"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "Text9"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "Command7"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "Text4"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "Text3"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "Command1"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "Frame9"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "grid"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "Label34"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).Control(15)=   "Label30"
      Tab(1).Control(15).Enabled=   0   'False
      Tab(1).Control(16)=   "Label29"
      Tab(1).Control(16).Enabled=   0   'False
      Tab(1).Control(17)=   "Label26"
      Tab(1).Control(17).Enabled=   0   'False
      Tab(1).Control(18)=   "Label25"
      Tab(1).Control(18).Enabled=   0   'False
      Tab(1).Control(19)=   "Label24"
      Tab(1).Control(19).Enabled=   0   'False
      Tab(1).Control(20)=   "Label7"
      Tab(1).Control(20).Enabled=   0   'False
      Tab(1).Control(21)=   "Label6"
      Tab(1).Control(21).Enabled=   0   'False
      Tab(1).ControlCount=   22
      Begin VB.Frame Frame11 
         Caption         =   "Bale Wise Issue"
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   -74760
         TabIndex        =   101
         Top             =   720
         Visible         =   0   'False
         Width           =   3135
         Begin VB.TextBox Text14 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   2040
            TabIndex        =   103
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox Text13 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   720
            TabIndex        =   102
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "From"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   108
            Top             =   240
            Width           =   390
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "To"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   1680
            TabIndex        =   107
            Top             =   240
            Width           =   210
         End
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Kgswise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   255
         Left            =   -71280
         TabIndex        =   89
         Top             =   480
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.OptionButton Option1 
         Caption         =   "BaleWise Issue"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   255
         Left            =   -74760
         TabIndex        =   88
         Top             =   480
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Frame Frame8 
         Caption         =   "Bale Wise Issue"
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   -71280
         TabIndex        =   83
         Top             =   720
         Visible         =   0   'False
         Width           =   3615
         Begin VB.TextBox Text8 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   105
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox Text7 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   840
            Locked          =   -1  'True
            TabIndex        =   104
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Iss Kgs"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   1680
            TabIndex        =   85
            Top             =   240
            Width           =   540
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Bale No"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   84
            Top             =   240
            Width           =   585
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Available Bale Details"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5895
         Left            =   -66720
         TabIndex        =   81
         Top             =   480
         Width           =   3135
         Begin MSDataGridLib.DataGrid grdData 
            Height          =   5535
            Left            =   120
            TabIndex        =   82
            Top             =   240
            Width           =   2895
            _ExtentX        =   5106
            _ExtentY        =   9763
            _Version        =   393216
            BackColor       =   16777215
            HeadLines       =   1
            RowHeight       =   19
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
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
      Begin VB.TextBox Text11 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -70440
         Locked          =   -1  'True
         TabIndex        =   79
         TabStop         =   0   'False
         Top             =   6120
         Width           =   1215
      End
      Begin VB.TextBox Text10 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -71880
         Locked          =   -1  'True
         TabIndex        =   78
         TabStop         =   0   'False
         Top             =   6120
         Width           =   1455
      End
      Begin VB.TextBox Text9 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -73200
         Locked          =   -1  'True
         TabIndex        =   75
         TabStop         =   0   'False
         Top             =   6120
         Width           =   1335
      End
      Begin VB.CommandButton Command7 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Add"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -67560
         Style           =   1  'Graphical
         TabIndex        =   106
         Top             =   960
         Width           =   735
      End
      Begin VB.TextBox Text4 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -69240
         Locked          =   -1  'True
         TabIndex        =   41
         TabStop         =   0   'False
         Top             =   6120
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -74160
         Locked          =   -1  'True
         TabIndex        =   40
         TabStop         =   0   'False
         Top             =   6120
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   -67920
         TabIndex        =   87
         Top             =   6120
         Width           =   780
      End
      Begin VB.Frame Frame7 
         Height          =   1620
         Left            =   180
         TabIndex        =   33
         Top             =   315
         Width           =   10545
         Begin VB.OptionButton Option7 
            Caption         =   "None"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   8280
            TabIndex        =   15
            Top             =   1320
            Width           =   975
         End
         Begin VB.OptionButton Option6 
            Caption         =   "Form XXVII"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   8280
            TabIndex        =   14
            Top             =   1080
            Width           =   1455
         End
         Begin VB.OptionButton Option5 
            Caption         =   "Form XX"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   8280
            TabIndex        =   13
            Top             =   840
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Timeout"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   10
            Left            =   6480
            MaxLength       =   7
            TabIndex        =   12
            Top             =   1200
            Width           =   1725
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "InvoiceNo"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   9
            Left            =   3015
            MaxLength       =   100
            TabIndex        =   10
            Top             =   1215
            Width           =   1185
         End
         Begin VB.TextBox text2 
            DataField       =   "arrno"
            Height          =   330
            Left            =   3720
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   112
            Top             =   2160
            Visible         =   0   'False
            Width           =   1365
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   2
            Left            =   2520
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   111
            Top             =   2160
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.ComboBox Combo3 
            Enabled         =   0   'False
            Height          =   315
            ItemData        =   "svspRMIissueKilowise.frx":4F75
            Left            =   0
            List            =   "svspRMIissueKilowise.frx":4F77
            TabIndex        =   110
            Top             =   2220
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "mixgrp"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   8
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   7
            Top             =   840
            Width           =   1005
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   840
            Width           =   2685
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "vehicleno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   7
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   6
            Top             =   840
            Visible         =   0   'False
            Width           =   1005
         End
         Begin VB.TextBox Text6 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   320
            Left            =   9240
            Locked          =   -1  'True
            TabIndex        =   67
            Top             =   480
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ordno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   13
            Left            =   6480
            MaxLength       =   100
            TabIndex        =   9
            Top             =   840
            Width           =   1725
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   2400
            Locked          =   -1  'True
            TabIndex        =   5
            TabStop         =   0   'False
            Top             =   480
            Width           =   5805
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ISSTO"
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
            ItemData        =   "svspRMIissueKilowise.frx":4F79
            Left            =   9240
            List            =   "svspRMIissueKilowise.frx":4F80
            TabIndex        =   3
            Top             =   120
            Width           =   1155
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "docno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   0
            Left            =   4920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   1
            TabStop         =   0   'False
            Top             =   120
            Width           =   855
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "isstype"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   345
            ItemData        =   "svspRMIissueKilowise.frx":4F8E
            Left            =   1320
            List            =   "svspRMIissueKilowise.frx":4F90
            TabIndex        =   0
            Top             =   120
            Width           =   2355
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   285
            Index           =   0
            Left            =   6850
            TabIndex        =   2
            Top             =   150
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   503
            _Version        =   393216
            BorderStyle     =   0
            BackColor       =   16777215
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "docdt"
            Height          =   360
            Left            =   6840
            TabIndex        =   34
            Top             =   120
            Width           =   1380
            _ExtentX        =   2434
            _ExtentY        =   635
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   63569921
            CurrentDate     =   36831
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   1
            Left            =   1320
            MaxLength       =   100
            TabIndex        =   4
            Top             =   480
            Width           =   1005
         End
         Begin VB.TextBox Txtisstype 
            Height          =   285
            Left            =   2640
            TabIndex        =   99
            TabStop         =   0   'False
            Top             =   120
            Visible         =   0   'False
            Width           =   735
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "InvDate"
            Height          =   360
            Index           =   1
            Left            =   4230
            TabIndex        =   11
            Top             =   1215
            Width           =   1020
            _ExtentX        =   1799
            _ExtentY        =   635
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "invdate"
            Height          =   360
            Left            =   4230
            TabIndex        =   115
            Top             =   1200
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   635
            _Version        =   393216
            Format          =   63569921
            CurrentDate     =   36831
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "TimeOut"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   5640
            TabIndex        =   116
            Top             =   1200
            Width           =   660
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Inv. No"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   2430
            TabIndex        =   114
            Top             =   1260
            Width           =   555
         End
         Begin VB.Label Label10 
            Caption         =   "Category"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   113
            Top             =   2160
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   100
            Top             =   840
            Width           =   1035
         End
         Begin VB.Label Label14 
            Caption         =   "Vehicle No."
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   72
            Top             =   840
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.Label Label13 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Arr Date"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   8415
            TabIndex        =   98
            Top             =   480
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.Label Label21 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Mixing Lot No."
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   5280
            TabIndex        =   71
            Top             =   840
            Width           =   1125
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Iss. To"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   8400
            TabIndex        =   66
            Top             =   165
            Width           =   510
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   38
            Top             =   480
            Width           =   1005
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   6210
            TabIndex        =   37
            Top             =   120
            Width           =   345
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Type"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   36
            Top             =   165
            Width           =   405
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Issue No."
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   3840
            TabIndex        =   35
            Top             =   165
            Width           =   690
         End
      End
      Begin VB.Frame Frame1 
         Height          =   1155
         Left            =   120
         TabIndex        =   29
         Top             =   5280
         Visible         =   0   'False
         Width           =   10665
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TINT"
            Height          =   330
            Index           =   6
            Left            =   7560
            MaxLength       =   20
            TabIndex        =   117
            Top             =   600
            Width           =   1560
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
            Height          =   360
            Left            =   3030
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            Text            =   " "
            Top             =   160
            Width           =   6105
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "oilcode"
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
            Left            =   2235
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   17
            Top             =   160
            Width           =   750
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "OILWT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   2235
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   19
            Top             =   570
            Width           =   1410
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "wtrwt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   5055
            MaxLength       =   100
            TabIndex        =   20
            Top             =   570
            Width           =   1410
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TINT"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   6780
            TabIndex        =   47
            Top             =   645
            Width           =   435
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Oil Code"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   960
            TabIndex        =   32
            Top             =   180
            Width           =   720
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Water Weight"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   3870
            TabIndex        =   31
            Top             =   645
            Width           =   1095
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Oil Weight"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   960
            TabIndex        =   30
            Top             =   645
            Width           =   885
         End
      End
      Begin VB.Frame Frame9 
         Caption         =   "Kgs Wise"
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   -71160
         TabIndex        =   86
         Top             =   720
         Visible         =   0   'False
         Width           =   3015
         Begin VB.TextBox Txtissbale 
            BackColor       =   &H00FFFFC0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   1920
            Locked          =   -1  'True
            TabIndex        =   97
            TabStop         =   0   'False
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox TxtIsskgs 
            BackColor       =   &H00FFFFC0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   960
            TabIndex        =   91
            TabStop         =   0   'False
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Iss Kgs"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   120
            TabIndex        =   90
            Top             =   240
            Width           =   780
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   3225
         Left            =   150
         TabIndex        =   16
         Top             =   2040
         Width           =   10545
         _ExtentX        =   18600
         _ExtentY        =   5689
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   18
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
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
      Begin ubGridControl.ubGrid grid 
         Height          =   4410
         Left            =   -74820
         TabIndex        =   119
         Top             =   1485
         Width           =   7920
         _ExtentX        =   13970
         _ExtentY        =   7779
         Rows            =   0
         Cols            =   6
         Row             =   0
         Redraw          =   -1  'True
         ShowGrid        =   -1  'True
         GridSolid       =   -1  'True
         GridLineColor   =   12632256
         BackColorAlt    =   14737632
         BackColorFixed  =   12632256
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty FontEdit {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BackColorBkg    =   12632256
         FormatString    =   "Bale No.       |Gross Weight            |Tare Weight         |Nett Weight           |AIsskgs     |Issued  "
      End
      Begin VB.Label Label34 
         AutoSize        =   -1  'True
         Caption         =   "Total"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   -74880
         TabIndex        =   118
         Top             =   5880
         Width           =   450
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Party"
         Height          =   195
         Left            =   2880
         TabIndex        =   109
         Top             =   2700
         Visible         =   0   'False
         Width           =   360
      End
      Begin VB.Label Label30 
         Caption         =   "NetWt"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -70440
         TabIndex        =   80
         Top             =   5880
         Width           =   1095
      End
      Begin VB.Label Label29 
         Caption         =   "Tare Wt"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -71880
         TabIndex        =   77
         Top             =   5880
         Width           =   1335
      End
      Begin VB.Label Label26 
         Caption         =   "GrossWt"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -73200
         TabIndex        =   76
         Top             =   5880
         Width           =   1455
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C000C0&
         Height          =   300
         Left            =   -68040
         TabIndex        =   74
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label24 
         Caption         =   "Bale Net Wt  :"
         BeginProperty Font 
            Name            =   "Palatino Linotype"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -69480
         TabIndex        =   73
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "AissWt"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   -69240
         TabIndex        =   27
         Top             =   5880
         Width           =   570
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   " Bales"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   -74130
         TabIndex        =   39
         Top             =   5880
         Width           =   480
      End
   End
   Begin VB.Frame Frame3 
      Height          =   6525
      Left            =   240
      TabIndex        =   22
      Top             =   1080
      Visible         =   0   'False
      Width           =   10935
      Begin VB.Frame Frame5 
         Height          =   855
         Left            =   120
         TabIndex        =   68
         Top             =   5640
         Width           =   10695
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "svspRMIissueKilowise.frx":4F92
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
            Left            =   2760
            Picture         =   "svspRMIissueKilowise.frx":5378
            Style           =   1  'Graphical
            TabIndex        =   69
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "svspRMIissueKilowise.frx":573E
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
            Left            =   6240
            Picture         =   "svspRMIissueKilowise.frx":5B20
            Style           =   1  'Graphical
            TabIndex        =   70
            Top             =   240
            Width           =   1185
         End
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1095
         Left            =   480
         TabIndex        =   44
         Top             =   360
         Visible         =   0   'False
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   1931
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
         Left            =   240
         TabIndex        =   42
         Top             =   120
         Visible         =   0   'False
         Width           =   8730
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4740
      Left            =   600
      TabIndex        =   48
      Top             =   1320
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command4 
         Caption         =   "OK"
         Height          =   480
         Left            =   3420
         TabIndex        =   49
         Top             =   3840
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   3225
         Left            =   120
         TabIndex        =   50
         Top             =   240
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
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   1080
      TabIndex        =   23
      Top             =   2160
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "svspRMIissueKilowise.frx":5EF3
         Height          =   615
         Left            =   4020
         Picture         =   "svspRMIissueKilowise.frx":62D5
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "svspRMIissueKilowise.frx":66A8
         Height          =   615
         Left            =   2580
         Picture         =   "svspRMIissueKilowise.frx":6A8E
         Style           =   1  'Graphical
         TabIndex        =   45
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
         TabIndex        =   24
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
         TabIndex        =   26
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Issue  No."
         Height          =   195
         Left            =   2010
         TabIndex        =   25
         Top             =   930
         Width           =   720
      End
   End
   Begin VB.Frame Frame10 
      Caption         =   "Select the Issue Type"
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
      Height          =   2415
      Left            =   3720
      TabIndex        =   92
      Top             =   2160
      Width           =   4935
      Begin VB.CommandButton Command9 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Cancel"
         Height          =   495
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   96
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command8 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         Height          =   495
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   95
         Top             =   1680
         Width           =   1095
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Kgs Wise Issue"
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
         Height          =   735
         Left            =   960
         TabIndex        =   94
         Top             =   840
         Width           =   3375
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Bale Wise Issue"
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
         Height          =   615
         Left            =   960
         TabIndex        =   93
         Top             =   360
         Width           =   3015
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Issue Kgs wise"
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
      Left            =   120
      TabIndex        =   21
      Top             =   600
      Width           =   1845
   End
End
Attribute VB_Name = "SvspFrmissueKgs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim z As Integer
Dim updSECONDARYRS As Recordset
Dim UPDRS As Recordset
Dim WithEvents RS As Recordset
Attribute RS.VB_VarHelpID = -1
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
Dim tbno As Integer
Dim tgwt As Double
Dim ttwt As Double
Dim tnwt As Double
Dim taisswt As Double
Dim xx As New Recordset
Dim DYINGHEADRS As Recordset
Dim DYINGTAILRS As Recordset
Dim totv As Double
Dim avilbalers As Recordset
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Form Issue"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Visible = True
    Command1.Enabled = True
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,cntcd,tint,ISSTO,ordno,VEHICLENO,Mixgrp,Rdivcode,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  WHERE 1 = 2  order by docno", DB, adOpenStatic, adLockOptimistic
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2  ", DB, adOpenStatic, adLockBatchOptimistic
    Set updSECONDARYRS = New Recordset
    With updSECONDARYRS
           .Fields.Append "Lot.No.", adSmallInt, 5
           .Fields.Append "Date", adDate
           .Fields.Append "Lot Type", adChar, 1
           .Fields.Append "Variety", adVarChar, 10
           .Fields.Append "Variety Name", adVarChar, 20
           '.Fields.Append "Color", adVarChar, 4
           '.Fields.Append "Color Name", adVarChar, 20
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
           UPDRS.Fields.Append "Variety", adChar, 10
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
    'grdDataGrid.Columns(9).Width = 1154.835
    'grdDataGrid.Columns(10).Width = 915.0237
   grddatagrid.Columns(6).Alignment = dbgRight
   grddatagrid.Columns(7).Alignment = dbgRight
   grddatagrid.Columns(8).Alignment = dbgRight
    flg = ""
    Set grdData.DataSource = Nothing
    'Set grid.FormatString = rs
    Call clears
    Call GRIDALIGN
    Call ubgridalign
    Text1.Text = ""
    text2.Text = ""
    Text12.Text = ""
    Txtfields(1).Text = ""
    
    Call bindcontls
    Call ENABLCONTLS
'    DB.BeginTrans
    adoPrimaryRS.AddNew
    updSECONDARYRS.AddNew
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    'Combo1.SetFocus
    Text5.Text = ""
    Frame7.Enabled = True
    Frame7.Visible = True
    'txtfields(0).SetFocus
    
    grddatagrid.AllowUpdate = True
    str = ""
    Set issrs = New Recordset
    issrs.Open "select issue_code +'  --  '+issue_desc from rm_issuetype ", DB, adOpenStatic
    Combo1.Locked = False
    Combo1.clear
    Do While Not issrs.EOF
        Combo1.AddItem issrs(0)
        issrs.MoveNext
    Loop
    Combo1.ListIndex = 0
    Combo2.ListIndex = 0
    If Combo1.Enabled = True Then Combo1.SetFocus
     Set rsa = New Recordset
    rsa.Open "select catcd +'--'+catname from rm_cat WHERE CATCD NOT IN('D','W')", DB, adOpenStatic
    Combo3.clear
    Do While Not rsa.EOF
        Combo3.AddItem rsa(0)
        rsa.MoveNext
    Loop
    Combo3.ListIndex = 0
    MaskEdBox1(0).Mask = pdate
    MaskEdBox1(0).Text = pdate
    MaskEdBox1(0).Enabled = True
    MaskEdBox1(1).Mask = pdate
    MaskEdBox1(1).Text = pdate
    MaskEdBox1(1).Enabled = True
    SSTab1.Enabled = True
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = yldate
    DTPicker1.Value = pdate
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = False  'mixing lotno
    Label21.Visible = False

    Label5.Visible = False  'mixing count
    Txtfields(1).Visible = False 'code
    Text5.Visible = False  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = False
    Label14.Visible = False 'Vehicle
    Option1.Value = True
    Combo3.ListIndex = 0
    Option5.Visible = False 'Form
    Option6.Visible = False 'Form
    Option7.Visible = False 'Form
    Label31.Visible = False  'invno
    Txtfields(9).Visible = False
    DTPicker2.Visible = False 'InvDate
    MaskEdBox1(1).Visible = False
    Label33.Visible = False  'TimeOut
    Txtfields(10).Visible = False
    
    
    'Label35.Visible = False
    
Case 1
    'modification
    Opt = "mod"
    Combo1.Locked = False
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 2
    'Deletion
    Opt = "del"
    Combo1.Locked = False
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
Case 3
     'list
    Dim weigh As Double
    Dim qtyt As Double
    Dim amt As Double
    
    weigh = 0
    qtyt = 0
    amt = 0
    gamt = 0
    
    Set Rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Co = 0
    cnt = 0
    Close
    Open "c:\isskg.txt" For Output As #f
    
    Pg = 1
    Print #f,
    Print #f, Chr(27) & Chr(77)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
    Print #f, Chr(27) & Chr(205)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
    Print #f, Space(5) & String(110, "-")
    Print #f, Space(5) & "Docno       Docdt          Issue Type       Count     Party Name               Description "
    Print #f, Space(5) & String(110, "-")
    Co = 8
    'Call headn(CInt(pg))
    Set RS = New Recordset
    'cntcd like 'c1%' and
    RS.Open "select docno,docdt,cntcd,isstype,VEHICLENO,Mixgrp,Rdivcode,Driver,InvoiceNo,InvDate,TimeOut,Form from rm_issh where  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt,docno", DB, adOpenStatic
    
    Do While RS.EOF = False
        If RS("ISSTYPE") = "SA" Or RS("ISSTYPE") = "T2" Then
            Set rsa = New Recordset
            rsa.Open "select slname from fa_slmas where slcode='" & RS("cntcd") & "'", DB
            If rsa.RecordCount > 0 Then
                Slname = ""
                 Print #f, Space(5) & Padr(RS("docno"), 5, " ") & Space(7) & Padr(Format(RS("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(RS("isstype") & " Unit", 10, " ") & Space(7) & Padr(RS("cntcd"), 10, " ") & Space(0) & Padr(rsa("slname"), 25, " ")
                  Co = Co + 1
            Else
                Slname = ""
            End If
           'Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ") & Space(7) & Padl(slname, 25, " ")
        Else
            Set rsa = New Recordset
            rsa.Open "select description from ig_product where product_code='" & RS("cntcd") & "'", DB
            If rsa.RecordCount > 0 Then
                description = ""
                 Print #f, Space(5) & Padr(RS("docno"), 5, " ") & Space(7) & Padr(Format(RS("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(RS("isstype") & " Unit", 10, " ") & Space(7) & Padr(RS("cntcd"), 10, " ") + Space(25) + Padr(rsa("description"), 25, " ")
                  Co = Co + 1
            Else
                description = ""
            End If
           ' Print #f, Space(5) & Padr(rs("docno"), 5, " ") & Space(7) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(7) & Padr(rs("isstype") & " Unit", 10, " ") & Space(7) & Padr(rs("cntcd"), 10, " ")
        End If
        'co = co + 1
        If Co >= 57 Then
            Print #f, Space(5) & String(110, "-")
            Print #f, Chr(12)
            Co = 0
            Pg = Pg + 1
           ' Call headn(CInt(pg))
            
            Print #f,
            Print #f, Chr(27) & Chr(77)
            Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 60, " " + Chr(27) + "F")
            Print #f, Chr(27) & Chr(205)
            SR = Format(pdate, "dd/mm/yy")
            Pg = Pg + 1
            Print #f, Space(5) & "Issue List " & Space(40) + Space(39) + SR + Space(3) + "Pg. : " & Padl(Pg, 3, " ")
            'Print #f, Space(5) & "Issue List " & Space(40) + Space(40) + "Pg. : " & Padl(pg, 3, " ") + Chr(15)
            Print #f, Space(5) & String(110, "-")
            Print #f, Space(5) & "Docno       Docdt          Issue Type       Count     Party Name               Description "
            Print #f, Space(5) & String(110, "-")
            Co = 8
        End If
    RS.MoveNext
    Loop
    Print #f, Space(5) & String(110, "-")
    Print #f, Chr(12)
    Close #f
    Open "c:\isskg.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type isskg.txt > prn"
    Close #f
    Rep.txtfile = "c:\isskg.txt"
    Rep.Batfile = "c:\isskg.bat"
    Screen.MousePointer = 0

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
'lblctrl.Visible = False
If Opt = "add" Or Opt = "mod" Then
   If Combo1.Text = "PR" Then
    If Trim(Txtfields(1).Text) = "" Then
        MsgBox "Please enter Category", vbInformation, head
        Txtfields(1).SetFocus
        Exit Sub
    End If
    End If
End If
    If Opt = "add" Then
       DB.BeginTrans
       If adoPrimaryRS("ISSTYPE") = "T" Then
'            adoPrimaryRS("SLCODE") = txtFields(2).Text
'            scode = txtFields(2).Text
            adoPrimaryRS("cntcd") = Txtfields(1).Text
            cntcode = Txtfields(1).Text
       End If
      
           ' MaskEdBox1(0).Text = "01/09/2006"
                      
            adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            adoPrimaryRS("divcode") = Divcode

            adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
            adoPrimaryRS("issto") = Trim(Left(Combo2.Text, 1))
            adoPrimaryRS("docno") = Txtfields(0).Text
                        
            If Txtisstype.Text = "P" Then
                adoPrimaryRS("CNTCD") = Txtfields(1).Text
            ElseIf Txtisstype.Text = "S" Then
                adoPrimaryRS("slcode") = Txtfields(1).Text
            End If
            If Txtisstype.Text = "T" Then
                adoPrimaryRS("Rdivcode") = Txtfields(1).Text
            End If
            adoPrimaryRS("mixgrp") = Txtfields(8).Text
            
            adoPrimaryRS("oilcode") = Txtfields(3).Text
            adoPrimaryRS("oilwt") = val(Txtfields(4).Text)
            adoPrimaryRS("wtrwt") = val(Txtfields(5).Text)
            'adoprimaryrs("TINT") = Val(txtfields(6).Text)
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
      
       updSECONDARYRS.MoveFirst
       Do While Not updSECONDARYRS.EOF
            If (updSECONDARYRS("Lot.No.") = "") Then
                updSECONDARYRS.Delete adAffectCurrent
            End If
            updSECONDARYRS.MoveNext
       Loop
       updSECONDARYRS.MoveFirst
       
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
       
       Do While Not adoSecondaryRS.EOF
            adoSecondaryRS("docdT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            Set rsa = New Recordset
            rsa.Open "SELECT ARRDT FROM RM_LOT WHERE varcode='" & grddatagrid.Columns(3).Text & "' and LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
               adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
            End If
            adoSecondaryRS.MoveNext
       Loop
       adoSecondaryRS.MoveFirst
       
      If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
      adoSecondaryRS.UpdateBatch adAffectAllChapters
      ''updSECONDARYRS.UpdateBatch adAffectAllChapters
      If adoPrimaryRS("ISSTYPE") = "PR" Then
            DB.Execute "UPDATE RM_ISSH SET Mixgrp='" & Trim(Txtfields(8).Text) & "' ,VEHICLENO='" & Txtfields(7).Text & "',cntcd='" & Txtfields(1).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
      ElseIf adoPrimaryRS("isstype") = "BT" Then
            If Option5.Value = True Then
                Cap = "Form XX"
            ElseIf Option6.Value = True Then
                Cap = "Form XXVII"
            Else
                Cap = "No"
            End If
            DB.Execute "UPDATE RM_ISSH SET invoiceno='" & Txtfields(9).Text & "',invdate='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "',Driver='" & Txtfields(13).Text & "',TimeOut='" & Txtfields(10).Text & "',Form='" & Cap & "',VEHICLENO='" & Txtfields(7).Text & "',rdivcode='" & Txtfields(1).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
      ElseIf adoPrimaryRS("isstype") = "S" Then
            DB.Execute "UPDATE RM_ISSH SET VEHICLENO='" & Txtfields(7).Text & "',slcode='" & Txtfields(1).Text & "' WHERE DOCNO='" & adoPrimaryRS("DOCNO") & "' AND DOCDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "'"
      End If
       '*********************  BALE UPDATION **************************/
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
         
       Do While Not adoSecondaryRS.EOF
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno=" & adoSecondaryRS("BALENO") & " and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        Set rs1 = New Recordset
        rs1.Open "select ISNULL(isqty,0) from rm_bale  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.RecordCount > 0 Then
            If adoSecondaryRS!AIKgs <> Empty Then
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_bale set isqty= isnull(isqty,0)+" & val(adoSecondaryRS!AIKgs) & ",ActIssKgs=isnull(ActIssKgs,0) + " & val(adoSecondaryRS!AIKgs) & ",ISSUED= '" & adoSecondaryRS!issued & "'  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and isnull(rejflg,'N')='N'")
                Else
                    DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+ " & adoSecondaryRS!AIKgs & ",ActIssKgs= " & adoSecondaryRS!AIKgs & ",ISSUED= 'Y'  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and isnull(rejflg,'N')='N'")
                End If
                If adoSecondaryRS!issued = "N" Then
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS!AIKgs) & ",issbal=isnull(issbal,0) where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotyear='" & Year(yfdate) & "'")
                Else
                    DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS!AIKgs) & ",issbal=isnull(issbal,0)+ " & 1 & " where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotyear='" & Year(yfdate) & "'")
                End If
            Else
                DB.Execute ("update rm_bale set isqty=isnull(isqty,0)+" & val(adoSecondaryRS(11)) & ",ActIssKgs=" & val(adoSecondaryRS(11)) & ",ISSUED= 'Y'  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No.") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("BALENO") & "  and isnull(rejflg,'N')='N'")
                DB.Execute ("update rm_lot set isswt=isnull(isswt,0) + " & val(adoSecondaryRS(11)) & ",issbal=isnull(issbal,0)+ " & 1 & " where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  lotno='" & adoSecondaryRS("Lot No.") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotyear='" & Year(yfdate) & "'")
            End If
        End If
        adoSecondaryRS.MoveNext
       Loop
       UPDRS.MoveFirst
       
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
       ''This code is Reverse Updation in RM_BALE  DTAIL depend upon Actual issue Kgs
       rlotno = ""

       rlotdt = ""
       RCatcd = ""
       Rvarcode = ""
       SUM1 = 0
       diff = 0
       While Not adoSecondaryRS.EOF
           
            Set rsgb = New Recordset
            rsgb.Open "select * from rm_bale where lotno=" & adoSecondaryRS("Lot No.") & " and lotdt='" & Format(adoSecondaryRS("Date"), "YYYY-MM-DD") & "' and varcode='" & adoSecondaryRS("Variety") & "' and catcd='" & adoSecondaryRS("CATCD") & "' AND BALENO=" & adoSecondaryRS("Baleno") & "", DB, adOpenStatic
            'r for Reverse
            grwt = Round(rsgb("GRWT"), 3)
            netwt = Round(rsgb("netwt"), 3)
            rnetwt = Round(adoSecondaryRS("Issued Kgs"), 3)
            rgrwt = Round(rnetwt + rsgb("tarewt") + IIf(IsNull(rsgb("moisture_et")), 0, rsgb("moisture_et")), 3)

            DB.Execute "update rm_bale set grwt=" & rgrwt & ",netwt=" & rnetwt & " where lotno=" & adoSecondaryRS("Lot No.") & " and lotdt='" & Format(adoSecondaryRS("Date"), "YYYY-MM-DD") & "' and varcode='" & adoSecondaryRS("Variety") & "' and catcd='" & adoSecondaryRS("CATCD") & "' AND BALENO=" & adoSecondaryRS("Baleno") & ""
            
           
''            If Not adoSecondaryRS.EOF Then
''                If (rlotno <> adoSecondaryRS("Lot No.") And rlotdt <> adoSecondaryRS("Date") And Rvarcode <> adoSecondaryRS("Variety") And RCatcd = adoSecondaryRS("CATCD")) Then
''                    SUM2 = Round(SUM1, 3)
''                    SUM1 = 0
''                End If
''            End If
           
            
            rlotno = adoSecondaryRS("Lot No.")
            rlotdt = adoSecondaryRS("Date")
            Rvarcode = adoSecondaryRS("Variety")
            RCatcd = adoSecondaryRS("Catcd")
                        
            adoSecondaryRS.MoveNext
                        
            If rnetwt > netwt Then
                diff = Round(rnetwt - netwt, 3)
                SUM1 = Round(SUM1 + diff, 3)
            ElseIf rnetwt < netwt Then
                diff = Round(netwt - rnetwt, 3)
                SUM1 = Round(SUM1 - diff, 3)
            End If

            TOTREC = 0

            UPWT = 0
            If adoSecondaryRS.EOF = True Then
                Set RSGUP = New Recordset
                RSGUP.Open "select * from rm_bale where lotno=" & rlotno & " and lotdt='" & Format(rlotdt, "YYYY-MM-DD") & "' and varcode='" & Rvarcode & "' and catcd='" & RCatcd & "' and isnull(Issued,'N')='N'", DB, adOpenStatic
                TOTREC = RSGUP.RecordCount
                If TOTREC < Abs(Round(SUM1, 3)) And TOTREC <> 0 Then
                    UPWT = Round(Abs(SUM1) / TOTREC, 3)
                    While Not RSGUP.EOF
                        
                        If UPWT * TOTREC <> Abs(SUM1) Then
                            If RSGUP.AbsolutePosition = TOTREC Then
                                If UPWT * TOTREC > Abs(SUM1) Then
                                    UPWT = UPWT - ((UPWT * TOTREC) - Abs(SUM1))
                                Else
                                    UPWT = UPWT + (Abs(SUM1) - (UPWT * TOTREC))
                                End If
                            End If
                        End If

                        If SUM1 < 0 Then
                            DB.Execute "update rm_bale set grwt=(tarewt+isnull(moisture_et,0)+netwt) +" & Round(UPWT, 3) & ",netwt=netwt +" & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                           '' db.Execute "update rm_bale set grwt=(tarewt+moisture_et+netwt) +" & Round(UPWT, 3) & ",netwt=netwt +" & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        ElseIf SUM1 > 0 Then
                            DB.Execute "update rm_bale set grwt=(tarewt+isnull(moisture_et,0)+netwt) - " & Round(UPWT, 3) & ",netwt=netwt - " & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            ''db.Execute "update rm_bale set grwt=(tarewt+moisture_et+netwt) - " & Round(UPWT, 3) & ",netwt=netwt - " & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        End If

                        RSGUP.MoveNext
                    Wend
                End If
                If TOTREC >= Abs(SUM1) And TOTREC <> 0 Then
                    i = 1
                    Do While Not RSGUP.EOF
                      
                        If i = Mid(CStr(Abs(SUM1)), 1, IIf(InStr(Abs(SUM1), ".") = 0, (Len(SUM1) + 1), InStr(Abs(SUM1), ".")) - 1) Then
                            If SUM1 < 0 Then
                                GF = Abs(i + SUM1)
                                DB.Execute "update rm_bale set grwt=grwt +1+" & GF & ",netwt=netwt +1+" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            ElseIf SUM1 > 0 Then
                                GF = Abs(i - SUM1)
                                DB.Execute "update rm_bale set grwt=(grwt -1) -" & GF & ",netwt=(netwt-1) -" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            End If
                            Exit Do
                        ElseIf i > Mid(CStr(Abs(SUM1)), 1, IIf(InStr(Abs(SUM1), ".") = 0, (Len(SUM1) + 1), InStr(Abs(SUM1), ".")) - 1) Then
                            If SUM1 < 0 Then
                                GF = Abs(SUM1)
                                DB.Execute "update rm_bale set grwt=grwt +" & GF & ",netwt=netwt +" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            ElseIf SUM1 > 0 Then
                                GF = Abs(SUM1)
                                DB.Execute "update rm_bale set grwt=grwt -" & GF & ",netwt=netwt -" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            End If
                            Exit Do
                        End If

                        If SUM1 < 0 Then
                            DB.Execute "update rm_bale set grwt=grwt + 1,netwt=netwt + 1 where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        ElseIf SUM1 > 0 Then
                            DB.Execute "update rm_bale set grwt=grwt - 1,netwt=netwt - 1 where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        End If
                        i = i + 1
                        RSGUP.MoveNext
                    Loop
                End If
                SUM1 = 0
                diff = 0
                GoTo Gk:
            End If
           
            
            If rlotno <> adoSecondaryRS("Lot No.") Then
                Set RSGUP = New Recordset
                RSGUP.Open "select * from rm_bale where lotno=" & rlotno & " and lotdt='" & Format(rlotdt, "YYYY-MM-DD") & "' and varcode='" & Rvarcode & "' and catcd='" & RCatcd & "' and isnull(Issued,'N')='N'", DB, adOpenStatic
                TOTREC = RSGUP.RecordCount
                If TOTREC < Abs(SUM1) Then
                    UPWT = Round(Abs(SUM1) / TOTREC, 3)
                    While Not RSGUP.EOF
                        If UPWT * TOTREC <> Abs(SUM1) Then
                            If RSGUP.AbsolutePosition = TOTREC Then
                                If UPWT * TOTREC > Abs(SUM1) Then
                                    UPWT = UPWT - ((UPWT * TOTREC) - Abs(SUM1))
                                Else
                                UPWT = UPWT + (Abs(SUM1) - (UPWT * TOTREC))
                                End If
                            End If
                        End If
                        If SUM1 < 0 Then
                            DB.Execute "update rm_bale set grwt=grwt +" & Round(UPWT, 3) & ",netwt=netwt +" & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        ElseIf SUM1 > 0 Then
                            DB.Execute "update rm_bale set grwt=grwt - " & Round(UPWT, 3) & ",netwt=netwt - " & Round(UPWT, 3) & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        End If
                        RSGUP.MoveNext
                    Wend
                End If
                If TOTREC >= Abs(SUM1) Then
                    i = 1
                    Do While Not RSGUP.EOF
                    
                         If i = Mid(CStr(Abs(SUM1)), 1, IIf(InStr(Abs(SUM1), ".") = 0, (Len(SUM1) + 1), InStr(Abs(SUM1), ".")) - 1) Then
                            If SUM1 < 0 Then
                                GF = Abs(i + SUM1)
                             
                                DB.Execute "update rm_bale set grwt=grwt +1+" & GF & ",netwt=netwt +1+" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            ElseIf SUM1 > 0 Then
                                GF = Abs(i - SUM1)
                              
                                DB.Execute "update rm_bale set grwt=(grwt -1) -" & GF & ",netwt=(netwt-1) -" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            End If
                            Exit Do
                        ElseIf i > Mid(CStr(Abs(SUM1)), 1, IIf(InStr(Abs(SUM1), ".") = 0, (Len(SUM1) + 1), InStr(Abs(SUM1), ".")) - 1) Then
                            If SUM1 < 0 Then
                                GF = Abs(SUM1)
                                DB.Execute "update rm_bale set grwt=grwt +" & GF & ",netwt=netwt +" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                                
                            ElseIf SUM1 > 0 Then
                                GF = Abs(SUM1)
                                DB.Execute "update rm_bale set grwt=grwt  -" & GF & ",netwt=netwt -" & GF & " where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                            End If
                            Exit Do
                        End If
                        
                        If SUM1 < 0 Then
                            DB.Execute "update rm_bale set grwt=grwt + 1,netwt=netwt + 1 where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        ElseIf SUM1 > 0 Then
                            DB.Execute "update rm_bale set grwt=grwt - 1,netwt=netwt - 1 where lotno=" & RSGUP("lotno") & " and lotdt='" & Format(RSGUP("lotdt"), "YYYY-MM-DD") & "' and varcode='" & RSGUP("Varcode") & "' and catcd='" & RSGUP("CATCD") & "' and baleno=" & RSGUP("Baleno") & ""
                        End If
                        i = i + 1
                        RSGUP.MoveNext
                    Loop
                End If
                SUM1 = 0
                diff = 0
            End If
          
            
        Wend

Gk:
       ''Bale Press Stock Updation
          If adoPrimaryRS("ISSTYPE") = "BP" Then
               Set rsg = New Recordset
               rsg.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2 order by a.lotno,a.lotdt,a.varcode", DB, adOpenStatic
               lotnos = 0
               LOTDT = 0
               Sum = 0
               Set rsg.DataSource = adoSecondaryRS
               While Not rsg.EOF
                    Set RSKG = New Recordset
                    RSKG.Open "select ratekg  from rm_lot where lotno=" & rsg("Lot No.") & " AND lotdt='" & Format(adoSecondaryRS("DATE"), "YYYY-MM-DD") & "'", DB, adOpenStatic
        
                    If RSKG.RecordCount > 0 Then
                        ratekg = RSKG(0)
                    Else
                        ratekg = 0
                    End If
        
                    If lotnos <> rsg("Lot No.") Then
                        DB.Execute "INSERT INTO RM_BPSTOCK (issno,issdt,catcd,lotno,lotdt,varcode,ratekg,prodkgs,OPFLG) VALUES ( " & adoPrimaryRS("DOCNO") & ",'" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "','" & rsg(2) & "'," & rsg("Lot No.") & ",'" & Format(rsg("Date"), "YYYY-MM-DD") & "','" & rsg("Variety") & "'," & ratekg & ",0,'I')"
                    End If
                    Sum = Sum + rsg("aikgs")
                    lotnos = rsg("Lot No.")
                    LOTDT = rsg("Date")
                   
                    rsg.MoveNext
        
                    If Not rsg.EOF Then
                        If lotnos <> rsg("Lot No.") Then
                            DB.Execute "update rm_bpstOck set isskgs=" & Sum & " WHERE ISSNO=" & adoPrimaryRS("DOCNO") & "AND ISSDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "'"
                            Sum = 0
                        End If
                    Else
                        DB.Execute "update rm_bpstOck set isskgs=" & Sum & " WHERE ISSNO=" & adoPrimaryRS("DOCNO") & "AND ISSDT='" & Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD") & "' AND LOTNO=" & lotnos & " AND LOTDT='" & Format(LOTDT, "YYYY-MM-DD") & "'"
                    End If
               Wend
               Opt = opt1
       End If
       
       
       
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
            rs1.Open "select ISNULL(isqty,0) from rm_bale  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "'  and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockBatchOptimistic
            If rs1.RecordCount > 0 Then
                DB.Execute ("update rm_issb set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & " where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  lotno='" & adoSecondaryRS("Lot No") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and docno = " & Txtfields(0).Text & " and docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "")
                DB.Execute ("update rm_bale set ActIssKgs= " & val(adoSecondaryRS("Issued Kgs")) & "  where VARCODE='" & adoSecondaryRS("VARIETY") & "' AND  STATUS IN ('AC','AW') AND lotno='" & adoSecondaryRS("Lot No") & "' and lottype = '" & adoSecondaryRS("lottype") & "' and lotdt='" & Format(adoSecondaryRS("date"), "yyyy-mm-dd") & "' AND BALENO=" & adoSecondaryRS("Bale No.") & "  and isnull(rejflg,'N')='N'")
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
       If adoSecondaryRS.RecordCount > 0 Then
            adoSecondaryRS.MoveFirst
            Set rs1 = New Recordset
            rs1.Open "select distinct lotno,lotdt,divcode,catcd,varcode,lottype from rm_issb where docno='" & adoSecondaryRS("docno") & "' and docdt='" & Format(adoSecondaryRS("docdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            rs1.MoveFirst
            Do While Not rs1.EOF
                 Set RS = New Recordset
                 RS.Open "SELECT SUM(ACTISSKGS),count(baleno) FROM RM_ISSB B WHERE  DOCNO=" & Txtfields(0).Text & " AND docdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and   lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                 Set RS2 = New Recordset
                 RS2.Open "select isnull(isswt,0),isnull(issbal,0) from rm_lot where VARCODE='" & rs1("varcode") & "' AND  lottype = '" & grddatagrid.Columns(6).Text & "' and lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
                 If RS2.RecordCount > 0 Then
                     qty = RS2(0)
                     selbale = RS2(1)
                 Else
                     qty = 0
                     selbale = 0
                 End If
                 
                 DB.Execute ("update rm_lot set isswt = " & val(qty) & " - " & val(RS(0)) & ",issbal=" & val(selbale) & " - " & val(RS(1)) & " where lottype = '" & rs1("lottype") & "' and  DIVCODE='" & Divcode & "' AND lotno='" & rs1(0) & "' and lotdt='" & Format(rs1(1), "yyyy-mm-dd") & "' and catcd='" & rs1(3) & "' AND DIVCODE='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"), a
             rs1.MoveNext
            Loop
       '*********************  BALE TABLE UPDATION **************************
        Do While Not adoSecondaryRS.EOF
            Set RS = New Recordset
            RS.Open "Select distinct baleno,lotno,lotdt,varcode,lottype,catcd from rm_issb where DOCNO=" & adoSecondaryRS("DOCNO") & " and DOCDT='" & Format(adoSecondaryRS("DOCDT"), "yyyy-mm-dd") & "' and lottype = '" & grddatagrid.Columns(6).Text & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
            RS.MoveFirst
            Do While Not RS.EOF
                DB.Execute "update rm_bale set isqty =NULL,actisskgs=null,issued=null WHERE VARCODE='" & RS("VARcode") & "' AND  STATUS IN ('AC','AW') AND LOTNO=" & RS("LotNo") & " and lotdt='" & Format(RS("lotdt"), "yyyy-mm-dd") & "' and baleno=" & RS(0) & " and lottype = '" & RS("lottype") & "' and divcode='" & Divcode & "'  and isnull(rejflg,'N')='N'", a
                RS.MoveNext
            Loop
            adoSecondaryRS.MoveNext
        Loop
    End If
        DB.Execute ("delete from rm_issb where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
        DB.Execute ("delete from rm_issh where docno =" & Trim(Txtfields(0).Text) & " and docdt ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") + "' and divcode='" & Divcode & "' ")
       
        MsgBox "Issue Details Deleted!", vbOKOnly, head
        BUTTON(9).ToolTipText = "Save"
        On Error Resume Next
         DB.CommitTrans
s1:
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
    On Error Resume Next
    Select Case Opt
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call QUERY_MODE
    Call clears
    grid.clear
    Screen.MousePointer = 0
    Call disablcontls
    grddatagrid.Enabled = True
   ' lblctrl.Visible = False
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Frame3.Visible = False
    Frame1.Visible = True

Case 11
    'EXIT
    Unload Me
Case 12
       
     Dim F_Date As String
     F_Date = MaskEdBox1(0).Text
     Screen.MousePointer = 11
     typeflg = Left(Combo1.Text, 2)
     LtN = Txtfields(0).Text
     Set cnn = New Connection
     cnn.Open connectstring
     If typeflg = "BT" Then
        'Call enjoyful(CStr(F_Date), CStr(typeflg), CInt(LtN))
        Exit Sub
     End If
        
          
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct A.LotNo,A.LotDt,a.VARCODE from rm_issb A,RM_LOT B where a.varcode=b.varcode and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND docNo=" & LtN & _
                          " AND ISSTYPE='" & typeflg & "' AND DOCDT BETWEEN '" & _
                          Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & _
                          "' order by A.lotno", DB, adOpenStatic
            
            If ResultRs.EOF Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            Set RPTV = New Report.ReportView
            z = FreeFile
            Close #z
            'Close
            Open "C:\CotRecn.TXT" For Output As #z
            pg1 = 1
            Co = 0
            dt = ResultRs!LOTNO & " - " & ResultRs!LOTDT
            Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            Co = Co + 9
            tot = 0
            tot1 = 0
            tot2 = 0
            
            Print #z, Space(7) & "Doc No. :" & Padr(LtN, 5, " ") & Space(2) & "Doc Date:" & Format(MaskEdBox1(0).Text, "dd-mm-yy") & Space(2) & "Mixing Count : " & Chr(15) & Text5.Text & Chr(15)
            Print #z,
            Co = Co + 2
            Do While Not ResultRs.EOF
                
                
                Print #z, Space(5) & Chr(18) & "Lot :"; Padl(ResultRs("lotno"), 5, " ") & Space(13) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " "); Space(3) & Padr(ResultRs("VARCODE"), 10, " ")
                
                Print #z,
                Co = Co + 2
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                If typeflg <> "A" Then
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs  from rm_lot a,rm_bale b,rm_issb c where c.isstype ='" & typeflg & "' and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", DB, adOpenStatic
                Else
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess',c.Baleno,c.actisskgs from rm_lot a,rm_bale b,rm_issb c where c.isstype in ('P','Q') and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", DB, adOpenStatic
                End If
                'result.Open "select distinct LotNo,LotDt,isnull(ISSKGS,0)'IsQty',isnull(ActIssKgs,0) 'AIKgs',isnull(ActIssKgs,0)-isnull(IsSKGS,0) 'Excess',Baleno from rm_issb  where docno = " & LtN & "  and LotNo=" & ResultRs("lotno") & " and lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "'  AND '" & Format(yldate, "yyyy-mm-dd") & "'  order by baleno", DB, adOpenStatic
                Do While Not RESULT.EOF
                Print #z, Space(5) & Padl(RESULT!baleno, 10, " ") + Space(2) + Padl(INF(RESULT("grwt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("tarewt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("MOITURE"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("netwt"), 3), 8, " ") + Space(2) + Padl(INF(RESULT("actisskgs"), 3), 8, " ")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                If Not IsNull(RESULT!grwt) = True Then tot = tot + val(RESULT!grwt)
                If Not IsNull(RESULT!ActissKgs) = True Then tot1 = tot1 + val(RESULT!ActissKgs)
                If Not IsNull(RESULT("grwt")) = True Then GTot = GTot + val(RESULT("grwt"))
                If Not IsNull(RESULT("actisskgs")) = True Then gtot1 = gtot1 + val(RESULT("actisskgs"))
                    
                RESULT.MoveNext
                Loop
                
                Print #z,
                Co = Co + 1
                If RESULT.RecordCount > 1 Then
                    Print #z, Space(5); "Lot Total:" + Padl(INF(Format(tot, "##.000"), 3), 10, " ") + Space(25) + Padl(INF((Format(tot1, "##.000")), 3), 15, " ") '; Chr(27); "F"
                    Co = Co + 1
                End If
                If Co >= PageLen Then
                   Print #z, Space(5) & String(60, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                   Co = Co + 9
                End If
                tot = 0
                tot1 = 0
                ResultRs.MoveNext
                 
                    Print #z,
                    Co = Co + 1
                    If Co >= PageLen Then
                       Print #z, Space(5) & String(60, "-")
                       Print #z, Chr(12)
                       pg1 = pg1 + 1
                       Co = 0
                       Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
                       Co = Co + 9
                    End If
            Loop
            Print #z, Space(5) & String(60, "-")
            Co = Co + 1
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
               Co = Co + 9
            End If
            Print #z, Space(5); "** Grand Total **" + Space(4) + Padl(INF(Format(GTot, "##.000"), 3), 10, " ") + Space(14) + Padl(INF(Format(gtot1, "##.000"), 3), 15, " ") '; Chr(27); "F"
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(CStr(pg1), CStr(Co), CStr(dt))
            End If
            Print #z, Space(5) & String(60, "-")
        Close #z
        z = FreeFile
        Open "c:\CotRec.bat" For Output As #z
        Print #z, "cd\"
        Print #z, "c:"
        Print #z, "cd\"
        Print #z, "type CotRecn.TXT>prn"
        Close #z
        z = FreeFile
        RPTV.txtfile = "c:\CotRecn.TXT"
        RPTV.Batfile = "c:\CotRec.bat"
        

     If typeflg = "PR" Then
        Screen.MousePointer = 0
        Exit Sub
     End If
     Set Rep = New Report.ReportView
     a = FreeFile
     totqty = 0
     totkgs = 0
     pgn = 1
     lno = 7
      Close
        Open "C:\ind.txt" For Output As #a
        If Txtfields(0).Text = "" Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records found", vbInformation, head
            Exit Sub
        End If
        pg1 = 1
        sno = 1
        Call hdlist(CInt(pg1))
        totv = 0
        totqty = 0
        totkgs = 0
        Set rs1 = New Recordset
        
        rs1.Open "select a.varcode,sum(a.actisskgs) as kgs,count(baleno) as quantity,sum(a.actisskgs*b.rateKG) as value from rm_issb a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and docno='" & Txtfields(0).Text & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "' group by a.varcode", DB, adOpenStatic
        Do While Not rs1.EOF
            Set rsa = New Recordset
            rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB
            If rsa.RecordCount > 0 Then
                VarName = rsa(0)
            Else
                VarName = ""
            End If
                
            Print #a, Space(3) + Padr(sno, 10, " "); Space(2); Padr(VarName, 15, " "); Space(2); Padl(rs1("quantity"), 10, " ") + Space(7) + Padl(INF(Format(rs1("kgs"), "##.000"), 3), 10, " ") + Space(4) + Padl(INF(Format(rs1("value"), "##.00"), 2), 10, " ")
            totqty = totqty + rs1("quantity")
            totkgs = totkgs + rs1("kgs")
            totv = totv + rs1("value")
            
            sno = sno + 1
            lno = lno + 1
            Call pblist
            rs1.MoveNext
        Loop
        Do While Not lno > 30
            Print #a,
            lno = lno + 1
        Loop
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(3) + "TOTAL                      "; Space(2); Padl(totqty, 10, " ") + "Qty" + Padl(INF(Format(totkgs, "##.000"), 3), 10, " ") + "Kgs" + Space(3) & Padl(INF(Format(totv, "##.00"), 2), 10, " ")
        Print #a, Space(3) + String(85, "-")
        lno = 0
        sno = 1
        Call gatepass(CInt(pg1))
        Set rs1 = New Recordset
  '     rs2.Open "select VEHICLENO from rm_ISSH where slcode='" & txtfields(7).Text & "' and DoCDT='" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' ", DB, adOpenStatic
      ' RS1.Open "select * from  RM_ISSH where DOCNO = '" & txtfields(0).Text & "' AND DOCDT = '" & Format(x, "DD/MM/YY") & "' ", DB, adOpenStatic
      
        rs1.Open "select * from rm_issh where docno='" & Txtfields(0).Text & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
        Do While Not rs1.EOF
        totqty = 0
        totkgs = 0
                  Set rsa = New Recordset
                  
                  ''''RSA.Open "select sum(a.actISSKGS)as kgs,sum(a.actISSKGS)*RATEKG AS VALUE,VARCODE from rm_ISSB A,RM_LOT B,FA_SLMAS C where b.SUPCD=c.SLCODE and isstype='" & adoPrimaryRS("isstype") & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DOCNO='" & RS1("DOCNO") & "'AND  a.DoCDT='" & Format(F_DATE, "yyyy-mm-dd") & "' group by varcode,RATEKG", DB, adOpenStatic
                  rsa.Open "select a.varcode,sum(a.actisskgs) as kgs,count(baleno) as quantity,sum(a.actisskgs*b.rate) as value from rm_issb a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and docno='" & Txtfields(0).Text & "' AND  DoCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and isstype='" & adoPrimaryRS("isstype") & "' group by a.varcode", DB, adOpenStatic
                  Do While Not rsa.EOF
                        If rsa.RecordCount > 0 Then
                            docNo = rsa(0)
                        Else
                            docNo = ""
                        End If
                
                        Print #a, Space(3) + Padr(sno, 15, " ") + Space(7); Padr(rsa("VARCODE"), 15, " "); Space(2); Padl(INF(Format(rsa("quantity"), "##.000"), 3), 15, " ") + Padl(INF(Format(rsa("kgs"), "##.000"), 2), 16, " ") + Space(3)
                        totqty = totqty + rsa("quantity")
                        totkgs = totkgs + rsa("kgs")
                        sno = sno + 1
                        lno = lno + 1
                        Call pblist
                        rsa.MoveNext
                  Loop
            rs1.MoveNext
        Loop
        Do While Not lno > 20
            Print #a,
            lno = lno + 1
        Loop
        Print #a,
        Print #a, Space(3) + String(85, "-")
        'Print #a, Space(3) + "TOTAL                      "; Space(2) + Space(10); Padl(totqty, 10, " ") + Padl(INF(totkgs, 3), 16, " ") + Space(3)
        Print #a, Space(3) + Padr("TOTAL", 15, " ") + Space(7); Space(17); Padl(INF(totqty, 3), 15, " ") + Padl(INF(totkgs, 2), 16, " ") + Space(3)
     '   Print #a, Space(3) + Padr(slno, 15, " ") + Space(2); Padr(VarName, 15, " "); Space(2); Padl(RS1("quantity"), 10, " ") + "Qty" + " --- " + Padl(INF(RS1("kgs"), 3), 20, " ") + "Kgs" + Space(3)
        Print #a, Space(3) + String(85, "-")
        Print #a, Space(5); "Returnable"; Space(35); Chr(27) + "E" + "For"; CENTRE(DIVNAME, 40, " ") + Chr(27) + "F"
        Print #a,
        Print #a,
        Print #a, Space(5) + "Receiver Signature" + Space(25) + "Prepared by" + Space(20) + "FM"
        Close #a
        Open "C:\ind.bat" For Output As #a
        Print #a, "C:"
        Print #a, "cd\"
        Print #a, "type ind.txt>prn"
        Rep.txtfile = "C:\ind.txt"
        Rep.Batfile = "C:\ind.bat"
        Close #a
        Screen.MousePointer = 0


End Select
End Sub

Private Sub Combo1_Change()
ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))
End Sub

Private Sub Combo1_Click()
ISSTYPE = Trim(Left(Combo1.Text, 2))
Set rsa = New Recordset
rsa.Open "select ISNULL(isstype,'') from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Txtisstype.Text = rsa(0)
Else
    Txtisstype.Text = ""
End If
Call VisText(CStr(Txtisstype.Text))
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Combo1_LostFocus()
If Opt = "add" Or Opt = "mod" Then

If Combo1.Text = "" And Opt = "add" Then
   MsgBox "Please select Any Type From the Drop Down List", vbInformation, head
   Combo1.SetFocus
   Exit Sub
End If

If Left(Combo1.Text, 2) = "SA" Then
    Set RS = New Recordset
    RS.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic, adLockBatchOptimistic
    Txtfields(0).Text = RS(0)
Else
    Set RS = New Recordset
    RS.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
    Txtfields(0).Text = RS(0)
End If
End If
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    SSTab1.TabEnabled(1) = True
End If
End Sub

Private Sub Combo2_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "ADD" Then
Flag = "Y"
End If
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub Command1_Click()

If (Combo1.Text = "PR-Production") Then
   If Trim(Txtfields(1).Text) = "" Then
      MsgBox "Please Enter The mixing Count", vbInformation, head & "Message"
      Exit Sub
   End If
End If
If Option3.Value = True Then
        If s = val(grddatagrid.Columns(8).Value) Or ChkEx = val(grddatagrid.Columns(8).Value) Then
           adoPrimaryRS("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
           adoPrimaryRS("divcode") = Divcode
           adoPrimaryRS("isstype") = Left(Combo1.Text, 2)
           adoPrimaryRS("issto") = Left(Combo2.Text, 1)
           adoPrimaryRS("docno") = Txtfields(0).Text
           If (Combo1.Text = "T") Or (Combo1.Text = "SA") Then
               Set rst = New Recordset
               rst.Open "Select CNTCODE from rm_lot where lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(4).Text & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
               If Not rst.EOF Then
                  adoPrimaryRS("CNTCD") = rst(0)
               End If
           Else
               adoPrimaryRS("CNTCD") = Txtfields(1).Text
           End If
           adoPrimaryRS("oilcode") = Txtfields(3).Text
           adoPrimaryRS("oilwt") = val(Txtfields(4).Text)
           adoPrimaryRS("wtrwt") = val(Txtfields(5).Text)
           'adoprimaryrs("TINT") = Val(txtfields(6).Text)
           adoPrimaryRS.UpdateBatch adAffectAllChapters
                
           If grid.Rows - 1 > 0 Then
              For i = 1 To grid.Rows
                 Dim refrs As Recordset
        '         balers.Bookmark = grid.RowBookmark(I)
        '         balers.Bookmark = grid.RowBookmark(I)
                If grid.TextMatrix(i, 1) <> "" Then
                 adoSecondaryRS.AddNew
                 adoSecondaryRS("DIVCODE") = adoPrimaryRS("DIVCODE")
                 adoSecondaryRS("BALENO") = grid.TextMatrix(i, 1)
                 adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
                 adoSecondaryRS("Variety") = grddatagrid.Columns(3).Text
                 Set rsa = New Recordset
                 rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                 If rsa.RecordCount > 0 Then
                    adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                 End If
                 
                 adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                 adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
                 adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
                 adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                 adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                 'adoSecondaryRS("Issued Kgs") = DataGrid1.Columns(3).Text
                 adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(i, 4))
                 adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
                 If grid.TextMatrix(i, 5) = "" Then
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                    adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
                 Else
                    'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                    adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
                 End If
                 'If DataGrid1.Columns(5).Text = "" Then
                 'If Val(adoSecondaryRS("Issued Kgs")) = Val(adoSecondaryRS("AIKgs")) Then
                 If grid.TextMatrix(i, 6) = "Y" Then
                    'DataGrid1.Columns(5).Text = "Y"
                    grid.TextMatrix(i, 6) = "Y"
                    adoSecondaryRS("ISSUED") = "Y"
                    
                 Else
                   'DataGrid1.Columns(5).Text = "N"
                   grid.TextMatrix(i, 6) = "N"
                    'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
                    adoSecondaryRS("ISSUED") = grid.TextMatrix(i, 6)
                 End If
                 End If
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
                       Set rsa = New Recordset
                        rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                        If rsa.RecordCount > 0 Then
                           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
                        End If
                       adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
                       adoSecondaryRS("ISSTYPE") = adoPrimaryRS("ISSTYPE")
                       adoSecondaryRS("Lot No.") = grddatagrid.Columns(0).Text
                       adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
                       adoSecondaryRS("DOCDT") = Format(adoPrimaryRS("DOCDT"), "YYYY-MM-DD")
                       adoSecondaryRS("DOCNO") = val(adoPrimaryRS("DOCNO"))
                       adoSecondaryRS("Issued Kgs") = val(grid.TextMatrix(1, 4))
                       adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
                       adoSecondaryRS("variety") = grddatagrid.Columns(3).Text
                       
                      If grid.TextMatrix(1, 5) = "" Then
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
                           adoSecondaryRS("AIKgs") = val(grid.TextMatrix(1, 5))
                        Else
                           'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
                           adoSecondaryRS("AIKgs") = val(grid.TextMatrix(1, 5))
                        End If
                       
                        If val(adoSecondaryRS("Issued Kgs")) = val(adoSecondaryRS("AIKgs")) Then
                        'If DataGrid1.Columns(5).Text = "" Then
                           adoSecondaryRS("ISSUED") = "Y"
                        Else
                           adoSecondaryRS("ISSUED") = grid.TextMatrix(1, 6)
                        End If
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
Else
  
  
If vbYes = MsgBox("Any Corrections?", vbYesNo + vbDefaultButton2, head) Then
   'DataGrid1.Enabled = True
   grid.Enabled = True
   grid.SetFocus
   Text3.Text = ""
   Text4.Text = ""
   'Set adoSecondaryRS = New Recordset
  ' adoSecondaryRS.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",varcode ""Variety"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,B.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2  ", DB, adOpenStatic, adLockBatchOptimistic
   Command1.Enabled = True
   Exit Sub
Else
 
      For i = 1 To grid.Rows
        If grid.TextMatrix(i, 1) <> "" Then
         adoSecondaryRS.AddNew
         adoSecondaryRS("DIVCODE") = Divcode

         adoSecondaryRS("BALENO") = grid.TextMatrix(i, 1)
         adoSecondaryRS("CATCD") = grddatagrid.Columns(5).Text
         adoSecondaryRS("ISSTYPE") = Left(Combo1.Text, 2)
         Set rsa = New Recordset
         rsa.Open "SELECT ARRDT FROM RM_LOT WHERE LOTNO='" & grddatagrid.Columns(0).Text & "' AND LOTDT='" & Format(grddatagrid.Columns(1), "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
           adoSecondaryRS("ARRDT") = Format(rsa(0), "YYYY-MM-DD")
         End If
         adoSecondaryRS("Lot No.") = val(grddatagrid.Columns(0).Text)
         adoSecondaryRS("Date") = Format(grddatagrid.Columns(1), "yyyy-mm-dd")
         adoSecondaryRS("DOCDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-d")
         adoSecondaryRS("DOCNO") = Txtfields(0).Text
     
        ''Important Notes
        ''-----------------------------
        ''This customer askd Actual Issue Kgs  should be Issued Kgs and IN rm_bale table net wt ,grswt should be change depends upon This actual issue kgs
        ''-----------------------------
         adoSecondaryRS("Issued KGS") = val(grid.TextMatrix(i, 5))
         adoSecondaryRS("lottype") = grddatagrid.Columns(2).Text
         adoSecondaryRS("variety") = grddatagrid.Columns(3).Text
         If grid.TextMatrix(i, 5) = "" Then
            'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(3).Text)
            adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
         Else
            'adoSecondaryRS("AIKgs") = Val(DataGrid1.Columns(4).Text)
            adoSecondaryRS("AIKgs") = val(grid.TextMatrix(i, 5))
         End If
         'If DataGrid1.Columns(5).Text = "" Then
         'If Val(adoSecondaryRS("Issued Kgs")) = Val(adoSecondaryRS("AIKgs")) Then
         If grid.TextMatrix(i, 6) = "Y" Then
            'DataGrid1.Columns(5).Text = "Y"
            grid.TextMatrix(i, 6) = "Y"
            adoSecondaryRS("ISSUED") = "Y"
            
         Else
           'DataGrid1.Columns(5).Text = "N"
           grid.TextMatrix(i, 6) = "N"
            'adoSecondaryRS("ISSUED") = DataGrid1.Columns(5).Text
            adoSecondaryRS("ISSUED") = grid.TextMatrix(i, 6)
         End If
         End If
      Next
      Frame1.Enabled = True
      Frame7.Enabled = True
      If vbYes = MsgBox("Do you want to enter more Lot details?", vbYesNo + vbDefaultButton1, head) Then
          SSTab1.Tab = 0
          grddatagrid.Enabled = True
          Frame7.Visible = True
          Frame7.Enabled = True
          
          UPDRS.AddNew
          UPDRS("Iss Kgs") = val(Text4.Text)
          UPDRS("Iss bales") = val(Text3.Text)
          UPDRS("Lot No.") = grddatagrid.Columns(0).Text
          UPDRS("Lot Dt.") = grddatagrid.Columns(1).Text
          UPDRS("Lot Type.") = grddatagrid.Columns(2).Text
          UPDRS("variety") = Trim(grddatagrid.Columns(3).Text)
          updSECONDARYRS.AddNew
          grddatagrid.LeftCol = 0
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
          UPDRS("variety") = Trim(grddatagrid.Columns(3).Text)
          SSTab1.Tab = 0
          Frame1.Visible = True
          Frame7.Visible = True
          Frame7.Enabled = True
          'lblctrl.Enabled = False
          BUTTON(9).Enabled = True
          BUTTON(9).SetFocus
          grddatagrid.Enabled = False
          BUTTON(9).Enabled = True
          BUTTON(9).SetFocus
       End If
       i = 0: wt = 0
    End If
'---------------Entry Save
  
'---------------
End If


End Sub

Private Sub Command2_Click()    'Find Okay
desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE  arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   order by arrno", DB, adOpenStatic, adLockOptimistic
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   MsgBox "Please enter a valid Arrival Number", vbInformation, head
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
grddatagrid.Columns(1).Text = RS(0)
grddatagrid.Columns(2).Text = RS(1)
grddatagrid.Columns(3).Text = RS(2)
'Text6.Text = rs("arrdt")
Text6.Text = RS("date")
Set Namers = New Recordset
Namers.Open "Select varname from rm_var where varcode='" & RS(2) & "'", DB, adOpenStatic
If Not Namers.EOF Then
   grddatagrid.Columns(4).Value = Namers(0)
End If
grddatagrid.Columns(5).Value = RS(3)
grddatagrid.Columns(6).Value = RS(4)
grddatagrid.Columns(7).Value = RS(5)
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
   Txtfields(3).Text = ""
   Exit Sub
End If
Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Tab = 0
'Call BUTTON_Click(10)
End Sub



Private Sub Command6_Click()    'activex ok
Select Case KSLLIST1.listfield1
    Case "LOTNO" '"cast(a.lotno as varchar)"
         Txtfields(1).Text = KSLLIST1.Code
         MaskEdBox1(1).Text = Format(KSLLIST1.description, "dd/mm/yyyy")
         Dim partyrs As Recordset
         Set partyrs = New Recordset
         partyrs.Open "select catcd from rm_lot where lotno=" & Txtfields(1).Text & " and lotdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
         Txtfields(2).Text = partyrs(0)
         Combo1.SetFocus
    Case "slname as SupplierName,city as City" '"slcode"
         If Combo1.Text <> "T-Transfer" Then
'            txtFields(2).Text = KslList1.description
'            Text2.Text = Trim(KslList1.Code)
            Txtfields(1).Text = KSLLIST1.description
            Text5.Text = Trim(KSLLIST1.Code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         Else
            Txtfields(2).Text = Trim(KSLLIST1.description)
            text2.Text = Trim(KSLLIST1.Code)
            grddatagrid.Col = 0
            grddatagrid.Enabled = True
            grddatagrid.SetFocus
         End If
    Case "Product_Code" 'Or "cntcd as CountCode" '"cntcd"
         Txtfields(1).Text = KSLLIST1.Code
         Text5.Text = KSLLIST1.description
         grddatagrid.Col = 0
         grddatagrid.Enabled = True
         grddatagrid.SetFocus
    Case "oilcode"
         Txtfields(3).Text = KSLLIST1.Code
         Text1.Text = KSLLIST1.description
         Txtfields(4).SetFocus
    Case "docno"
         Txtfields(0).Text = KSLLIST1.Code
         MaskEdBox1(0).Text = Format(KSLLIST1.description, "dd/mm/yyyy")
         a = Txtfields(0).Text
         b = MaskEdBox1(0).Text
         Text1.Text = ""
         Call delmodproc(CStr(a), CStr(b))
End Select
Frame3.Visible = False
End Sub


Private Sub Command7_Click()

If Option1.Value = True Then

        If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Text7.Text = "" Then
            MsgBox "Please enter the Bale Number", vbInformation, head
            Text7.SetFocus
        Else
            
            grddatagrid.Enabled = False
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame7.Enabled = False
            Frame1.Enabled = False
        SSTab1.Tab = 1
        Text13.Text = ""
            Text14.Text = ""
        grid.RowHeader = True
        grid.Enabled = True
        SSTab1.Visible = True
        Set chrs = New Recordset
        chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If IsNull(chrs(0)) Then
        chrs(0) = ""
        End If
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        If balers.RecordCount = 0 Then
        Set issrs = New Recordset
        issrs.Open "select Baleno,docno,docdt from rm_issb where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and issued='Y' and baleno='" & Text7.Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issno document number is  " & issrs(1) & ""
        End If
        If balers.RecordCount > 0 Then
        For i = 1 To grid.Rows
        If balers(0) = grid.TextMatrix(i, 1) Then
            MsgBox "This Bale already Issued. Please enter a valid Bale Number", vbInformation, head
            flg = "y"
            Exit For
        Else
            flg = ""
        End If
        Next
        
        If grid.Rows <= s And Not flg = "y" Then
            flg = ""
            grid.RowHeight(grid.Rows) = 20
            grid.Rows = grid.Rows + 1
            
            tbno = tbno + 1
            Text3.Visible = True
            Text3.Text = val(tbno)
            grid.TextMatrix(grid.Rows, 0) = grid.Rows
            grid.TextMatrix(grid.Rows, 1) = Text7
            grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
            tgwt = tgwt + balers("gross weight")
            Text9.Text = val(tgwt)
            grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
            ttwt = ttwt + balers("Tare weight")
            Text10.Text = val(ttwt)
            grid.TextMatrix(grid.Rows, 4) = balers("net weight")
            tnwt = tnwt + balers("net weight")
            Text11.Text = val(tnwt)
            grid.TextMatrix(grid.Rows, 6) = "Y"
            grid.TextMatrix(grid.Rows, 5) = val(Text8.Text)
        
       ' If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
            'MsgBox "Issued KGS greater The Actual Stock KGS ", vbInformation, head
            grid.TextMatrix(grid.Rows, 5) = val(Text8.Text)
            'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
            'Text4.Text = val(taisswt)
        'End If
        If chrs(0) = "Y" Then
            grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
            taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
            Text4.Text = val(taisswt)
        End If
        If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
        'grid.TextMatrix(grid.Rows - 1, 5) = Text8
        grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
        taisswt = taisswt + grid.TextMatrix(grid.Rows, 5)
        Text4.Text = val(taisswt)
        End If
        If chrs(0) = "N" Then
        grid.TextMatrix(grid.Rows, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
        'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
        Text4.Text = val(taisswt)
        End If
        
            Text7 = ""
            Text8 = ""
            
        Else
            MsgBox "Closing Bales are Entered  ", vbInformation, head
            Text7 = ""
            Text8 = ""
            
            'Command7.Enabled = False
        End If
        Else
            'MsgBox "This Baleno Already Issued ", vbInformation, head
            Text7 = ""
            Text8 = ""
          
        End If
        Label25.Caption = ""
        If val(grddatagrid.Columns(8).Text) = val(tbno) Then
            Command7.Enabled = False
            Command1.Enabled = True
            Command1.SetFocus
        Else
            Text7.SetFocus
        End If
        End If
        End If
        ActissKgs = 0
        For i = 1 To grid.Rows
        If Trim(grid.TextMatrix(i, 4)) <> "" And Trim(grid.TextMatrix(i, 4)) <> "0" And Trim(grid.TextMatrix(i, 5)) <> "" Then
               ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
        End If
        Next
        Text4.Text = CStr(ActissKgs)
        If val(Text4.Text) > val(grddatagrid.Columns(7).Text) Then
            MsgBox "Total Actual Issue Kgs must be less than or equal to Closing Weight", vbInformation, head
            Command1.Enabled = False
        Else
            Command1.Enabled = True
        End If
        
        
End If
If Option2.Value = True Then
    If Opt = "add" Then
        Text7.Locked = False
        Text8.Locked = False
        If Trim(TxtIsskgs.Text) = "" Then
            MsgBox "Please enter the KGS", vbInformation, head
            TxtIsskgs.SetFocus
        Else
            grddatagrid.Enabled = False
            'Command1.Enabled = True
            'Frame1.Visible = True
           ' Frame7.Visible = False
            Frame1.Enabled = False
            Frame7.Enabled = False
            SSTab1.Tab = 1
        
            grid.RowHeader = True
            grid.Enabled = True
            SSTab1.Visible = True
            Set chrs = New Recordset
            chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
            If IsNull(chrs(0)) Then
                  chrs(0) = ""
            End If
            'Grid.clear
            'Call Format_Grid
            grid.Rows = 1
            grid.RowHeight(grid.Rows) = 20
            grid.Rows = grid.Rows + 1
           ' On Error Resume Next
            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(0).Text) & "' and Catcd = '" & grddatagrid.Columns(5).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and isnull(rejflg,'N')='N' order by 1"
            twt = 0
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
            If RS.RecordCount > 0 Then
                RS.MoveFirst
                TEMP = val(TxtIsskgs.Text)
                t1grwt = 0
                t1tarewt = 0
                t1netwt = 0
                t1actisskgs = 0
                t1bales = 0
                While Not RS.EOF And TEMP > 0 And balers.RecordCount > 0
                    
                    If balers(4) > TEMP Then
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = val(TEMP) 'actisskgs
                        grid.TextMatrix(grid.Rows - 1, 6) = "N" 'issued
                        TEMP = TEMP - val(TxtIsskgs.Text)
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 5))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    Else
                    
                        grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
                        grid.TextMatrix(grid.Rows - 1, 1) = balers("Baleno")
                        grid.TextMatrix(grid.Rows - 1, 2) = balers(1) 'grwt
                        grid.TextMatrix(grid.Rows - 1, 3) = balers(2) 'tarewt
                        grid.TextMatrix(grid.Rows - 1, 4) = balers(3) 'netwt
                        grid.TextMatrix(grid.Rows - 1, 5) = balers(4) 'actisskgs
                        TEMP = TEMP - balers(4)
                        
                        grid.TextMatrix(grid.Rows - 1, 6) = "Y"
                        twt = twt + val(grid.TextMatrix(grid.Rows - 1, 4))
                        t1bales = t1bales + 1
                        t1grwt = t1grwt + grid.TextMatrix(grid.Rows - 1, 2)
                        t1tarewt = t1tarewt + grid.TextMatrix(grid.Rows - 1, 3)
                        t1netwt = t1netwt + grid.TextMatrix(grid.Rows - 1, 4)
                        t1actisskgs = t1actisskgs + grid.TextMatrix(grid.Rows - 1, 5)
                        
                    End If
                   
                  
                    balers.MoveNext
                    
                    If balers.EOF = False Then
                        grid.Rows = grid.Rows + 1
                    Else
                        GoTo GG:
                    End If
                   
                    
                    
                Wend
GG:
                    Text3.Text = t1bales
                    Text9.Text = val(t1grwt)
                    Text10.Text = val(t1tarewt)
                    Text11.Text = val(t1netwt)
                    Text4.Text = t1actisskgs
    
            Else
                Text7 = ""
                Text8 = ""
                Text7.SetFocus
            End If
            Label25.Caption = ""
            'If val(grddatagrid.Columns(8).Text) = val(tbno) Then
                Command7.Enabled = True
                Command1.Enabled = True
                Command1.SetFocus
           ' End If
        
        End If
    End If
    On Error Resume Next
    CNT1 = grid.Rows
    For i = 2 To CNT1
        If grid.TextMatrix(i, 1) = "" Then
            grid.Rows = grid.Rows - 1
            CNT1 = CNT1 - 1
        End If
    Next
End If
'If Option1.Value = False And Option2.Value = False Then
'    MsgBox "Choose (Balewise/Kgswise) ", vbInformation, head
'    Exit Sub
'End If

End Sub



Private Sub Command8_Click()
If Option3.Value = False And Option4.Value = False Then
    MsgBox "Choose Any one from the List", vbInformation, head
    Exit Sub
End If

If Option3.Value = True Then
    Option1.Value = True
Else
    Option1.Value = False
End If
If Option4.Value = True Then
    Option2.Value = True
Else
    Option2.Value = False
End If
Frame10.Visible = False
SSTab1.Enabled = True
Combo1.SetFocus
Command8.Default = False
End Sub

Private Sub Command9_Click()
Call BUTTON_Click(10)
Frame10.Visible = False
End Sub

'Private Sub DataGrid1_AfterColEdit(ByVal ColIndex As Integer)
''If Opt = "add" Or Opt = "mod" Then
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text > DataGrid1.Columns(3).Text Then
''        MsgBox "Actisskgs cannot be Greater than Net Weight ", vbInformation, head
''        grdDataGrid.Columns(4).Text = DataGrid1.Columns(3).Text
''        grdDataGrid.Col = 4
''       ' grdDataGrid.SetFocus
''
''    End If
''End If
''If ColIndex = 5 Then
''    If DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text Then
''     '   adoSecondaryRS("issued") = "N"
''        grdDataGrid.Columns(5).Text = "N"
''    End If
''End If
''
''End If
'
'If Opt = "add" Or Opt = "mod" Then
'    If DataGrid1.Col = 4 Then
'        If SSTab1.Tab = 1 Then
'            If Val(DataGrid1.Columns(4).Text) > Val(DataGrid1.Columns(3).Text) Then
'                MsgBox "Actual Issue Kgs cannot be Greater than Net Weight", vbInformation
'                DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) = Val(DataGrid1.Columns(3).Text) Then
'                DataGrid1.Columns(5).Text = "Y"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            ElseIf Val(DataGrid1.Columns(4).Text) < Val(DataGrid1.Columns(3).Text) And Val(DataGrid1.Columns(4).Text) <> 0 Then
'                DataGrid1.Columns(5).Text = "N"
'                DataGrid1.Col = 4
'                DataGrid1.SetFocus
'            End If
'        End If
'    End If
'End If
'End Sub

'Private Sub DataGrid1_Click()
'If Opt = "add" Then
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   'DataGrid1.Columns(4).Locked = False
'   DataGrid1.Enabled = True
'   RX = balers.AbsolutePosition
'   If grddatagrid.Row >= 0 Then
'      If DataGrid1.SelBookmarks.Count > Val(grddatagrid.Columns(10).Text) Then
'         MsgBox "Select only " & grddatagrid.Columns(8).Text & " Records from Datagrid", , head
'         Command1.Enabled = False
'         Exit Sub
'      ElseIf DataGrid1.SelBookmarks.Count <= Val(grddatagrid.Columns(10).Text) Then
'         If DataGrid1.SelBookmarks.Count > 1 Then
'            Text4 = ""
'            Text3 = ""
'            For I = 0 To DataGrid1.SelBookmarks.Count - 1
'               balers.Bookmark = DataGrid1.SelBookmarks(I)
'               Text4 = Val(Text4) + balers(3)
'               Text3.Text = DataGrid1.SelBookmarks.Count
'               Text3.Visible = True
'            Next
'         Else
'            On Error Resume Next
'            Text3.Text = DataGrid1.SelBookmarks.Count
'            Text3.Visible = True
'
'         End If
'      End If
'      If DataGrid1.SelBookmarks.Count = Val(grddatagrid.Columns(10).Text) Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'End If
'
'
'
'End Sub



'Private Sub DataGrid1_DblClick()
''''''''''''''''''
'End Sub

'Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
''If KeyCode = vbKeyA And Shift = vbAltMask Then
'If KeyCode = vbKeyF1 Then
'  DataGrid1.Columns(4).Text = DataGrid1.Columns(3).Text
'
'End If
'If KeyCode = vbKeyD And Shift = vbAltMask Then
'  DataGrid1.Columns(4).Text = ""
'End If




'End Sub


'Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
'If Opt = "mod" Then Exit Sub
'   DataGrid1.AllowAddNew = True
'   DataGrid1.AllowUpdate = True
'   DataGrid1.Columns(3).Locked = False
'   DataGrid1.Columns(4).Locked = False
'   RX = balers.AbsolutePosition
'   DataGrid1.EditActive = True
'   DataGrid1.Enabled = True
'   On Error GoTo BBB
'   If KeyAscii = 9 Or KeyAscii = 13 Then
'      Text4 = ""
'      ChkEx = 0
'      balers.MoveFirst
'      While Not balers.EOF
'         If Not IsNull(balers(4)) = True Then
'            If Val(balers(4)) <> 0 Then Text4 = Val(Text4) + Val(balers(4)): ChkEx = ChkEx + 1
'         End If
'         If ChkEx > Val(grddatagrid.Columns(8).Text) Then
'            MsgBox "Only " & grddatagrid.Columns(8).Text & " Records can be Selected from Datagrid", vbOKOnly, head
'            Command1.Enabled = False
'            Exit Sub
'         ElseIf ChkEx < Val(grddatagrid.Columns(8).Text) Then
'         End If
'         balers.MoveNext
'      Wend
'      If ChkEx = grddatagrid.Columns(8).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'      balers.MoveFirst
'      For I = 0 To RX - 1
'         If balers.EOF <> True Then balers.MoveNext
'      Next
'      If balers.BOF <> True Then balers.MovePrevious
'      DataGrid1.Col = 4
'   End If
'
'
'
'
'
'   If KeyAscii = 19 Then
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      For I = 0 To DataGrid1.ApproxCount
'        If Val(DataGrid1.Columns(4).Text) > 0 Then
'           DataGrid1.SelBookmarks.Add (DataGrid1.Bookmark)
'        End If
'        DataGrid1.Row = DataGrid1.Row + 1
'        Call DataGrid1.Scroll(0, 1)
'      Next
'      If DataGrid1.SelBookmarks.Count = grddatagrid.Columns(7).Text Then
'         Command1.Enabled = True
'      Else
'         Command1.Enabled = False
'      End If
'   End If
'   Exit Sub
'BBB:
'MsgBox ""
'End Sub

'Private Sub DataGrid1_KeyUp(KeyCode As Integer, Shift As Integer)
'If DataGrid1.Col = 4 Then
'   Call ToNumber(DataGrid1, KeyCode)
'End If
'End Sub



Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.Value >= yfdate And DTPicker1.Value <= pdate) Then
   MsgBox "Issue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(0).Mask = DTPicker1.Value
   MaskEdBox1(0).Text = DTPicker1.Value
   Txtfields(1).SetFocus
End If
End Sub

Private Sub DTPicker2_CloseUp()
If Not (DTPicker2.Value >= yfdate And DTPicker2.Value <= pdate) Then
   MsgBox "Issue date must be earlier or equal to the Processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(1).Mask = DTPicker2.Value
   MaskEdBox1(1).Text = DTPicker2.Value
   Txtfields(10).SetFocus
End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "({Tab})"
End Sub
Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
SSTab1.Visible = True
DATLAB.Caption = pdate
Call QUERY_MODE
DTPicker1.MinDate = yfdate
DTPicker1.MaxDate = pdate
grid.clear
grid.Rows = 1
'grid.RowHeader = False
Text7.Locked = True
Text8.Locked = True
   grid.ColAllowEdit(1) = False
   grid.ColAllowEdit(1) = False
   grid.ColAllowEdit(2) = False
   grid.ColAllowEdit(3) = False
   grid.ColAllowEdit(4) = False
   grid.ColAllowEdit(5) = False
'grid.FormatString "Baleno       |gross weight           |Tare Weight            |Net Weight              |Aisskgs               |Issued"
'grid.AddLookup 6, "Y"
'grid.AddLookup 6, "N"


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
        'Call Command6_Click
    End If
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    If Opt <> "add" And Opt <> "mod" Then
        If adoPrimaryRS.RecordCount > 0 Then
            On Error Resume Next
            StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
                Call clears
'            If adoPrimaryRS("isstype") = "PR" Then
'                Combo1.Text = "PR-Production"
'                txtfields(1).Visible = True
'                txtfields(8).Visible = False
'                txtfields(1).ZOrder
'            ElseIf adoPrimaryRS("isstype") = "T2" Then
'                Combo1.Text = "T2-Transfer To unit2"
'                txtfields(1).Visible = True
'                txtfields(8).Visible = False
'
'                txtfields(1).ZOrder
'            ElseIf adoPrimaryRS("isstype") = "T3" Then
'                Combo1.Text = "T3-Transfer To Unit3"
'                txtfields(1).Visible = True
'                txtfields(8).Visible = False
'
'                txtfields(1).ZOrder
'            ElseIf adoPrimaryRS("isstype") = "SA" Then
'                txtfields(8).ZOrder
'                txtfields(1).Visible = False
'
'                txtfields(8).Visible = True
'
'                Combo1.Text = "SA-Sales"
'            End If
'            If Left(Combo1.Text, 2) <> "PR" Then
'                 Label14.Visible = True
'                 txtfields(7).Visible = True
'                 Label5.Caption = "Party"
'
'                ' BUTTON(12).Visible = True
'            ElseIf Left(Combo1.Text, 2) = "PR" Then
'               '  BUTTON(12).Visible = False
'                Label5.Caption = "Mixing Count"
'                 Label14.Visible = False
'                 txtfields(7).Visible = False
'
'            End If
            Set rsa = New Recordset
            rsa.Open "select isstype from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                Call VisText(CStr(rsa(0)))
            End If
            
            
            If adoPrimaryRS("ISSTO") = "D" Then
                Set CNTRS = New Recordset
                CNTRS.Open "select CNTNAME from RM_COUNT where CNTCD='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            ElseIf adoPrimaryRS("ISSTO") = "M" Then
                Set CNTRS = New Recordset
                CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If CNTRS.RecordCount > 0 Then
                    Text5.Text = CNTRS(0)
                Else
                    Text5.Text = ""
                End If
            End If
            Set CNTRS = New Recordset
            CNTRS.Open "select description from ig_product where product_code='" & adoPrimaryRS("cntcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(1).Text = adoPrimaryRS("cntcd")
                Text5.Text = CNTRS(0)
            End If
            
            Set CNTRS = New Recordset
            CNTRS.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("slcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(1).Text = adoPrimaryRS("slcode")
                Text5.Text = CNTRS(0)
            End If
            
            Set CNTRS = New Recordset
            CNTRS.Open "select mixgrpname from rm_mixgrp where mixgrpcd='" & adoPrimaryRS("mixgrp") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(8).Text = adoPrimaryRS("mixgrp")
                 Text12.Text = CNTRS(0)
            End If
            
            
            Set CNTRS = New Recordset
            CNTRS.Open "select divname from pp_divmas where divcode='" & adoPrimaryRS("rdivcode") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If CNTRS.RecordCount > 0 Then
                Txtfields(1).Text = adoPrimaryRS("rdivcode")
                 Text5.Text = CNTRS(0)
            End If
            
            
'            Set rs2.DataSource = adoPrimaryRS("childcmd").UnderlyingValue
'            If rs2.RecordCount > 0 Then
'                 rs2.MoveFirst
'                 Set rs1 = New Recordset
'                 rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ActIssKgs""AIKgs"" from rm_bale where 1=2", DB, adOpenStatic, adLockBatchOptimistic
'                 s = 0
'                 c = 0
'                 Do While Not rs2.EOF
'                 Set RS = New Recordset
'                 RS.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"",ISNULL(ActIssKgs,0) ""AIKgs"",issued from rm_bale where STATUS IN ('AC','AW') AND lotno=" & rs2(4) & " and lotdt='" & Format(rs2(5), "yyyy-mm-dd") & "' and baleno=" & rs2(11) & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockBatchOptimistic
'                 c = c + 1
'                 rs1.AddNew
'                 rs1("Baleno") = RS(0)
'                 rs1("Gross Weight") = Format(RS(1), "#0.000")
'                 rs1("Tare Weight") = Format(RS(2), "#0.000")
'                 rs1("Net Weight") = Format(RS(3), "#0.000")
'                 rs1!AIKgs = val(Format(RS(4), "#0.000"))
'                 's = s + rs(4)
''                 grid.Rows = grid.Rows + 1
''                 grid.RowHeight(grid.Rows) = 20
''                 grid.TextMatrix(grid.Rows - 1, 0) = grid.Rows - 1
''                 grid.TextMatrix(grid.Rows - 1, 1) = rs(0)
''                 grid.TextMatrix(grid.Rows - 1, 2) = Format(rs(1), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 3) = Format(rs(2), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 4) = Format(rs(3), "#0.000")
''                 grid.TextMatrix(grid.Rows - 1, 5) = Val(Format(rs(4), "#0.000"))
''                 grid.TextMatrix(grid.Rows - 1, 6) = rs(5)
''
'            rs2.MoveNext
'            Loop
            
            
'                Set DataGrid1.DataSource = rs1
'                Text3.Text = C
'                Text4.Text = Format(s, "#0.000")
'                DataGrid1.Columns(1).NumberFormat = "#0.000"
'                DataGrid1.Columns(2).NumberFormat = "#0.000"
'                DataGrid1.Columns(3).NumberFormat = "#0.000"
'                DataGrid1.Columns(4).NumberFormat = "#0.000"
'                DataGrid1.Columns(1).Alignment = dbgRight
'                DataGrid1.Columns(2).Alignment = dbgRight
'                DataGrid1.Columns(3).Alignment = dbgRight
'                DataGrid1.Columns(4).Alignment = dbgRight
'                DataGrid1.Columns(4).Width = 1980.284
'                DataGrid1.Columns(3).Width = 1980.284
'                DataGrid1.Columns(2).Width = 2085.166
'                DataGrid1.Columns(1).Width = 2250.142
'                DataGrid1.Columns(0).Width = 1544.882
'          If Opt = "" Then
'              'DataGrid1.AllowUpdate = False
'          End If
'        End If
    End If
End If
End Sub

'assigning values from adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next
Combo1.DataField = "isstype"
Set Combo1.DataSource = adoPrimaryRS
Set MaskEdBox1(0).DataSource = adoPrimaryRS
DTPicker1.MaxDate = pdate
DTPicker1.MinDate = yfdate
If IsNull(adoPrimaryRS("DOCDT")) = False Or adoPrimaryRS("DOCDT") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("DOCDT"), "dd/mm/yyyy")
        
End If
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 0 To 5
    Txtfields(i).Locked = False
Next
MaskEdBox1(0).Enabled = True
DTPicker1.Enabled = True
Combo1.Enabled = True
End Sub

Public Sub disablcontls()
Dim i As Integer
For i = 0 To 5
    Txtfields(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
DTPicker1.Enabled = False
Combo1.Enabled = False
End Sub
Private Sub grdData_DblClick()
    If Opt = "add" Then
        Call ubgridalign
        i = 1
        Text13.Text = ""
        Text14.Text = ""
        MOVEPOINT = avilbalers.AbsolutePosition - 1
        avilbalers.MoveFirst
        avilbalers.Move MOVEPOINT
         
        grid.RowHeader = True
        grid.Enabled = True
        SSTab1.Visible = True
        Set chrs = New Recordset
        chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
        If IsNull(chrs(0)) Then
            chrs(0) = ""
        End If
        Set balers = New Recordset
        balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (NETWT-isnull(actisskgs,0))>0 and baleno='" & grdData.Columns(0).Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        If balers.RecordCount = 0 Then
            Set issrs = New Recordset
            issrs.Open "select Baleno,docno,docdt from rm_issb where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "' and issued='Y' and baleno='" & Text7.Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
            MsgBox "This baleno " & issrs(0) & "  Already issued on  " & issrs(2) & "  and issue document number is  " & issrs(1) & ""
        End If
        If balers.RecordCount > 0 Then
            For i = 1 To grid.Rows
                If balers(0) = grid.TextMatrix(i, 1) Then
                    MsgBox "This Baleno Already Issued ", vbInformation, head
                    flg = "y"
                    Exit Sub
                Else
                    flg = ""
                End If
            Next
            
            If grid.Rows < s And Not flg = "y" Then
                flg = ""
                If grid.Rows = 0 Then
                ''    Grid.AddItem ""
                End If
                grid.Rows = grid.Rows + 1
                grid.RowHeight(grid.Rows) = 20
                'tbno = tbno + 1
                Text3.Visible = True
                Text3.Text = val(tbno)
                grid.TextMatrix(grid.Rows, 0) = grid.Rows
                grid.TextMatrix(grid.Rows, 1) = balers("Baleno")
                grid.TextMatrix(grid.Rows, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = val(tgwt)
                grid.TextMatrix(grid.Rows, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = val(ttwt)
                grid.TextMatrix(grid.Rows, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = val(tnwt)
                grid.TextMatrix(grid.Rows, 6) = "Y"
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                ' If val(Text8.Text) > val(balers("net weight")) And chrs(0) <> "Y" Then
                'MsgBox "Issued KGS greater The Actual Stock KGS ", vbInformation, head
                grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                                
                'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                'Text4.Text = val(taisswt)
                'End If
                ''If chrs(0) = "Y" Then
                  ''  Grid.TextMatrix(Grid.Rows - 1, 5) = balers("net weight")
                    taisswt = taisswt + val(grid.TextMatrix(grid.Rows, 5))
                    Text4.Text = val(taisswt)
                ''End If
''                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
''                    'grid.TextMatrix(grid.Rows - 1, 5) = Text8
''                    Grid.TextMatrix(Grid.Rows - 1, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
''                    taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
''                    Text4.Text = val(taisswt)
''                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(grid.Rows, 5) = balers("net weight")
                    'taisswt = taisswt + Grid.TextMatrix(Grid.Rows - 1, 5)
                    Text4.Text = val(taisswt)
                End If
                Text7 = ""
                Text8 = ""
                
           Else
                MsgBox "Closing Bales are Entered  ", vbInformation, head
                Text7 = ""
                Text8 = ""
                'Command7.Enabled = False
            End If
        Else
            'MsgBox "This Baleno Already Issued ", vbInformation, head
            Text7 = ""
            Text8 = ""
        End If
            Label25.Caption = ""
            
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 1) <> "" Then
                  tbno = tbno + 1
                  ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
                  netwt = netwt + val(grid.TextMatrix(i, 4))
                  groswt = groswt + val(grid.TextMatrix(i, 2))
                  tare = tare + val(grid.TextMatrix(i, 3))
                End If
            Next
            Text11.Text = netwt
            Text10.Text = tare
            Text9.Text = groswt
            Text4.Text = ActissKgs
            Text3.Text = tbno
            tbno = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 1) <> "" Then
                  tbno = tbno + 1
                End If
            Next
            Text3.Text = tbno
            If val(grddatagrid.Columns(8).Text) = val(tbno) Then
                Command7.Enabled = False
                Command1.Enabled = True
                Command1.SetFocus
            Else
                Text7.SetFocus
            End If
    End If
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If ColIndex = 0 Then
   If grddatagrid.Columns(0).Text <> "" Then
    Call Vardispaly(grddatagrid.Columns(0).Text)
   End If
ElseIf ColIndex = 8 Then
   If val(grddatagrid.Columns(8).Text) > val(grddatagrid.Columns(6).Text) Then
      MsgBox "Issued Bales must be less than or equal to Closing Bales", vbInformation, head
      grddatagrid.Columns(8).Value = grddatagrid.Columns(6).Value
      SSTab1.Tab = 0
      grddatagrid.Enabled = True
      grddatagrid.Columns(8).Text = 0
      grddatagrid.Col = 8
      grddatagrid.SetFocus
      
      Exit Sub
   Else
      'lblctrl.Visible = True
      SSTab1.Tab = 1
      Frame4.Visible = True
      grid.clear
      'Grid.Rows = 1
      Frame8.Visible = True
      Frame11.Visible = True
      
      'grid.RowHeader = False
      grid.ColAllowEdit(1) = False
      grid.ColAllowEdit(1) = False
      grid.ColAllowEdit(2) = False
      grid.ColAllowEdit(3) = False
      grid.ColAllowEdit(4) = False
      s = val(grddatagrid.Columns(8).Text)
      'Set balers = New Recordset
      
      'balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where 1=2 ", db, adOpenDynamic, adLockBatchOptimistic
      'Set DataGrid1.DataSource = balers
      Command7.Enabled = True
      Text7.Locked = False
      Text8.Locked = False
      Text7.Text = ""
      Text8.Text = ""
      Label25.Caption = ""
      tbno = 0
      tgwt = 0
      ttwt = 0
      tnwt = 0
      taisswt = 0
      Text3.Text = ""
      Text10.Text = ""
      Text11.Text = ""
      Text4.Text = ""
      Text14.Text = ""
      Text13.Text = ""
      grid.Enabled = True
      
      grddatagrid.Enabled = False
      Command1.Enabled = False
      Frame1.Visible = True
      Frame1.Enabled = True
      
      ''If Text7.Enabled = True And Text7.Visible = True Then Text7.SetFocus
      Text13.SetFocus
      
      
 
      Set avilbalers = New Recordset
        If adoSecondaryRS.RecordCount > 0 Then
            Set rslotcheck = New Recordset
            rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
            Set rslotcheck.DataSource = adoSecondaryRS
            
            baleno = ""
            rslotcheck.MoveFirst
             g = 1
            For i = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = grddatagrid.Columns(0).Text And rslotcheck("Date") = grddatagrid.Columns(1).Text And rslotcheck(2) = grddatagrid.Columns(5).Text And rslotcheck("Variety") = grddatagrid.Columns(3).Text Then
                   
                    If g = 1 Then
                        baleno = rslotcheck("baleno")
                    Else
                        baleno = baleno & "," & rslotcheck("baleno")
                    End If
                    g = g + 1
                End If
                
                rslotcheck.MoveNext
            Next
            g = 0
            If baleno = "" Then
                baleno = 0
            End If
            avilbalers.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        Else
            avilbalers.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
        End If
      Set grdData.DataSource = avilbalers
      
      ''For Automatic Loading while closing bales ar equal to Issue Bales
      
      If val(grddatagrid.Columns(8).Text) = val(grddatagrid.Columns(6).Text) Then
      
      ''Baleno|Gr|Net Wght|Issue Qty|Act Issue Kgs|Issued"
        If avilbalers.RecordCount > 0 Then
            ttwt = 0
            taisswt = 0
            tgwt = 0
            Text4.Text = ""
            Text9.Text = ""
            Text10.Text = ""
            Text11.Text = ""
            tgwt = 0
            tnwt = 0
            rec_cnt = 1
            Call ubgridalign
            grid.clear
            grid.AddItem ""
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            
            While Not avilbalers.EOF
                grid.TextMatrix(rec_cnt, 0) = rec_cnt
                grid.TextMatrix(rec_cnt, 1) = avilbalers("Baleno")
                Set balers = New Recordset
                balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where BALENO=" & avilbalers("Baleno") & " AND varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                grid.TextMatrix(rec_cnt, 2) = balers("gross weight")
                tgwt = tgwt + balers("gross weight")
                Text9.Text = val(tgwt)
                grid.TextMatrix(rec_cnt, 3) = balers("Tare weight")
                ttwt = ttwt + balers("Tare weight")
                Text10.Text = val(ttwt)
                grid.TextMatrix(rec_cnt, 4) = balers("net weight")
                tnwt = tnwt + balers("net weight")
                Text11.Text = val(tnwt)
                grid.TextMatrix(rec_cnt, 6) = "Y"
                grid.TextMatrix(rec_cnt, 5) = balers("net weight")
                
                Set chrs = New Recordset
                chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                If IsNull(chrs(0)) Then
                    chrs(0) = ""
                End If
                
                If chrs(0) = "Y" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
                    Text4.Text = val(taisswt)
                End If
                If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
                    Text4.Text = val(taisswt)
                End If
                If chrs(0) = "N" Then
                    grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                    Text4.Text = val(taisswt)
                End If
                ActissKgs = ActissKgs + val(grid.TextMatrix(rec_cnt, 5))
                netwt = netwt + val(grid.TextMatrix(rec_cnt, 4))
                groswt = groswt + val(grid.TextMatrix(rec_cnt, 2))
                tare = tare + val(grid.TextMatrix(rec_cnt, 3))
                
                avilbalers.MoveNext
                rec_cnt = rec_cnt + 1
                Command1.Enabled = True
                If Not avilbalers.EOF Then
                    grid.AddItem ""
                End If
                tbno = tbno + 1
              
            Wend
            Text11.Text = netwt
            Text10.Text = tare
            Text9.Text = groswt
            Text4.Text = ActissKgs
            Text3.Text = tbno
            Command7.Enabled = False
            Command1.SetFocus
End If
      
      End If
      
      
      'grid.SetFocus
      '-------10-05-06
'      Set balers = New Recordset
'      ''''
''''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'      Set DataGrid1.DataSource = balers

      '----------10-05-06
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
      
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      DataGrid1.Col = 4
'      DataGrid1.Enabled = True
'      DataGrid1.Enabled = True
'      DataGrid1.AllowUpdate = True
'      DataGrid1.EditActive = True
'      DataGrid1.Columns(2).Locked = True
'      DataGrid1.Columns(0).Locked = True
'      DataGrid1.Columns(1).Locked = True
'      DataGrid1.Columns(3).Locked = False
'      DataGrid1.Columns(4).Locked = False
'      DataGrid1.Columns(4).Text = Empty
'      DataGrid1.Columns(4).Width = 1980.284
'      DataGrid1.Columns(3).Width = 1980.284
'      DataGrid1.Columns(2).Width = 1085.166
'      DataGrid1.Columns(1).Width = 1250.142
'      DataGrid1.Columns(0).Width = 1544.882
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'      DataGrid1.Columns(4).Alignment = dbgRight
'      DataGrid1.Columns(4).NumberFormat = "######.000"
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      grdDataGrid.Enabled = False
'      Command1.Enabled = True
'      Frame1.Visible = True
'      Frame1.Enabled = True
'      'txtfields(3).SetFocus
'      SSTab1.SetFocus
   End If
End If

End Sub

Private Sub grddatagrid_Click()
If Opt = "" Or Opt = " " Then
'   If grddatagrid.row > 0 Then
'      Set RS1 = New Recordset
'      'rs1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' AND LOTDT='" & Format(Trim(grdDataGrid.Columns(0).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", db, adOpenStatic, adLockBatchOptimistic
'      RS1.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(4).Text) & "' AND LOTDT='" & Format(Trim(grddatagrid.Columns(5).Text), "yyyy-mm-dd") & "' and netwt-isnull(isqty,0) >0 ", DB, adOpenStatic, adLockBatchOptimistic
'      Set DataGrid1.DataSource = RS1
'      DataGrid1.Columns(0).Width = 1000
'      DataGrid1.Columns(1).Width = 2000
'      DataGrid1.Columns(2).Width = 2000
'      DataGrid1.Columns(3).Width = 3000
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'   End If
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
If Opt = "add" Then
    If (KeyAscii = 13 Or KeyAscii = 9) And grddatagrid.Col = 8 And Option4.Value = True Then
        Call grdDataGrid_AfterColEdit(8)
        TxtIsskgs.Text = ""
        Txtissbale.Text = ""
         MaskEdBox1(0).Enabled = False
        TxtIsskgs.SetFocus
    End If
End If
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

Private Sub Grid_AfterEdit(ByVal Row As Long, ByVal Col As Long, ByVal NewValue As String)
If Opt = "add" Or Opt = "mod" Then
    If Col = 5 Then
        If Trim(grid.TextMatrix(Row, 4)) = "" Or Trim(grid.TextMatrix(Row, 4)) = "0" Then
                MsgBox "Please enter the Actual Issue KGS", vbInformation, head
                grid.Row = Row
                grid.Col = 4
                Exit Sub
        End If
    End If
    ActissKgs = 0
    For i = 1 To grid.Rows
        If Trim(grid.TextMatrix(i, 4)) <> "" And Trim(grid.TextMatrix(i, 4)) <> "0" And Trim(grid.TextMatrix(i, 5)) <> "" Then
               ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
        End If
    Next
    Text4.Text = CStr(ActissKgs)
    If val(Text4.Text) > val(grddatagrid.Columns(7).Text) Then
        MsgBox "Total Actual Issue Kgs must be less than or equal to Closing Weight", vbInformation, head
        Command1.Enabled = False
    Else
        Command1.Enabled = True
    End If
    
End If
End Sub

Private Sub grid_DblClick()
''If Opt = "add" Then
''Grid.TextMatrix(Grid.row, 6) = "N"
''End If

If Opt = "add" Or Opt = "mod" Then

  If grid.Col = 1 Then
    If grid.Rows >= 1 Then
        GG = MsgBox("Do You Want to Delete this Record?", vbYesNo, head)
        If GG = vbYes Then
            Text13.Text = ""
            Text14.Text = ""
            grid.RemoveItem grid.Row
            netwt = 0
            ActissKgs = 0
            tbno = 0
            groswt = 0
            tare = 0
            For i = 1 To grid.Rows
                If (grid.TextMatrix(i, 5) <> "" And Trim(grid.TextMatrix(i, 5)) <> "0") Or grid.TextMatrix(i, 6) <> "" Then
                  tbno = tbno + 1
                  ActissKgs = ActissKgs + val(grid.TextMatrix(i, 5))
                  netwt = netwt + val(grid.TextMatrix(i, 4))
                  groswt = groswt + val(grid.TextMatrix(i, 2))
                  tare = tare + val(grid.TextMatrix(i, 3))
                  grid.TextMatrix(i, 0) = i
                End If
            Next
            Text11.Text = netwt
            Text10.Text = tare
            Text9.Text = groswt
            Text4.Text = ActissKgs
            Text3.Text = tbno
            Command1.Enabled = False
            Command7.Enabled = True
            BUTTON(9).Enabled = False
        End If
  End If
  End If
End If
''If val(grddatagrid.Columns(8).Text) = val(tbno) Then
''    Command1.Enabled = True
''Else
''    Command1.Enabled = False
''End If
End Sub

'''Private Sub MaskEdBox1_Change(Index As Integer)
'''If Opt = "add" Or Opt = "mod" Then
'''   Select Case Index
'''   Case 0
'''      If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'''         If Not (IsDate(MaskEdBox1(0).Text)) Then
'''            MsgBox ("invalid date")
'''            MaskEdBox1(0).Text = pdate
'''            MaskEdBox1(0).SetFocus
'''         ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
'''            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
'''            MaskEdBox1(0).SetFocus
'''         End If
'''      End If
'''   End Select
'''End If
'''End Sub

Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
  Case 2
     If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(2).Text)) Then
           MsgBox ("Please enter a valid date")
           MaskEdBox1(2).Text = pdate
           MaskEdBox1(2).SetFocus
        ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
           MsgBox "ATL Date must be before Arrival Date", vbInformation, head
           MaskEdBox1(2).Text = MaskEdBox1(0).Text
        End If
     End If
End Select
End Sub
'Private Sub Text7_LostFocus()
'Set balers = New Recordset
''balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
''If balers.RecordCount > 0 Then
''Label25.Caption = balers("net weight")
'''Else
'''MsgBox " This Baleno  Already issued", vbInformation, head
'''Text7.SetFocus
''End If
'End Sub




Private Sub Option1_Click()
Frame8.Visible = True
Frame9.Visible = False
Command7.Enabled = True
End Sub

Private Sub Option2_Click()
Frame8.Visible = False
Frame9.Visible = True
TxtIsskgs.Text = " "
If TxtIsskgs.Enabled = False Then TxtIsskgs.Enabled = True
If TxtIsskgs.Visible = False Then TxtIsskgs.Visible = True
If SSTab1.Tab = 1 Then TxtIsskgs.SetFocus
End Sub
Private Sub Text13_KeyPress(KeyAscii As Integer)
    Call tonum(Text7, 3, KeyAscii, 0)
End Sub
Private Sub Text14_KeyPress(KeyAscii As Integer)
    Call tonum(Text7, 3, KeyAscii, 0)
End Sub
Private Sub Text14_Validate(Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
    If val(Text14.Text) <> 0 And val(Text13.Text) <> 0 Then
        If val(Text14.Text) >= val(Text13.Text) Then
            CHFLG1 = "N"
            CHFLG2 = "N"
            TOTBALES = 0
            avilbalers.MoveFirst
            While Not avilbalers.EOF
                If avilbalers(0) = val(Text13.Text) Then
                    CHFLG1 = "Y"
                End If
                If avilbalers(0) = val(Text14.Text) Then
                    CHFLG2 = "Y"
                End If
                
                If val(Text13.Text) <= avilbalers(0) And avilbalers(0) <= val(Text14.Text) Then
                    TOTBALES = TOTBALES + 1
                End If
                avilbalers.MoveNext
            Wend
            avilbalers.MoveFirst
            
            If TOTBALES <> val(grddatagrid.Columns(8).Text) Then
                MsgBox "Issued Bales are not Matching", vbInformation, head
                Text14.SetFocus
                Exit Sub
            End If
            
            
            
            If CHFLG1 = "N" Then
                MsgBox "From Bale No. must be With in Available Bale No.", vbInformation, head
                Text13.SetFocus
                Exit Sub
            End If
            If CHFLG2 = "N" Then
                MsgBox "To Bale No. must be With in Available Bale No.", vbInformation, head
                Text14.SetFocus
                Exit Sub
            End If
            avilbalers.MoveFirst
            Set avilbalers1 = New Recordset
            If adoSecondaryRS.RecordCount > 0 Then
                Set rslotcheck = New Recordset
                rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
                Set rslotcheck.DataSource = adoSecondaryRS

                baleno = ""
                rslotcheck.MoveFirst
                g = 1
                For i = 1 To rslotcheck.RecordCount
                    If rslotcheck("Lot No.") = grddatagrid.Columns(0).Text And rslotcheck("Date") = grddatagrid.Columns(1).Text And rslotcheck(2) = grddatagrid.Columns(5).Text And rslotcheck("Variety") = grddatagrid.Columns(3).Text Then
                        If g = 1 Then
                           baleno = rslotcheck("baleno")
                        Else
                           baleno = baleno & "," & rslotcheck("baleno")
                        End If
                        g = g + 1
                    End If
                    rslotcheck.MoveNext
                Next
                g = 0
                If baleno = "" Then
                    baleno = 0
                End If
                avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' and baleno  not in (" & baleno & ") and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            Else
                avilbalers1.Open "select baleno ""Baleno"",NETWT-isnull(actisskgs,0) ""Balance Weight"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' and baleno between " & val(Text13.Text) & " and " & val(Text14.Text) & " order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
            End If
''            Set grdData.DataSource = avilbalers
            ''For Automatic Loading when give From bale  to To Bale

            ''Baleno|Gr|Net Wght|Issue Qty|Act Issue Kgs|Issued"
            totbale = val(Text14.Text) - val(Text13.Text)
            If avilbalers1.RecordCount > 0 Then
                
                ttwt = 0
                taisswt = 0
                tgwt = 0
                tnwt = 0
                rec_cnt = 1
                Text4.Text = ""
                Text9.Text = ""
                Text10.Text = ""
                Text11.Text = ""
                
                grid.clear
                grid.AddItem ""
                Do While Not avilbalers.EOF
                    grid.TextMatrix(rec_cnt, 0) = rec_cnt
                    grid.TextMatrix(rec_cnt, 1) = avilbalers1("Baleno")
                    Set balers = New Recordset
                    balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where BALENO=" & avilbalers1("Baleno") & " AND varcode='" & grddatagrid.Columns(3).Text & "'  and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(isqty,0)) > 0 and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
                    grid.TextMatrix(rec_cnt, 2) = balers("gross weight")
                    tgwt = tgwt + balers("gross weight")
                    Text9.Text = val(tgwt)
                    grid.TextMatrix(rec_cnt, 3) = balers("Tare weight")
                    ttwt = ttwt + balers("Tare weight")
                    Text10.Text = val(ttwt)
                    grid.TextMatrix(rec_cnt, 4) = balers("net weight")
                    tnwt = tnwt + balers("net weight")
                    Text11.Text = val(tnwt)
                    grid.TextMatrix(rec_cnt, 6) = "Y"
                    grid.TextMatrix(rec_cnt, 5) = balers("net weight")
                    
                    Set chrs = New Recordset
                    chrs.Open "select awt_flg from rm_lot where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                    If IsNull(chrs(0)) Then
                        chrs(0) = ""
                    End If
                    
                    If chrs(0) = "Y" Then
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                        taisswt = taisswt + val(grid.TextMatrix(rec_cnt, 5))
                        Text4.Text = val(taisswt)
                    End If
                    If val(Text8.Text) < val(balers("net weight")) And chrs(0) <> "Y" Then
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                        taisswt = taisswt + grid.TextMatrix(rec_cnt, 5)
                        Text4.Text = val(taisswt)
                    End If
                    If chrs(0) = "N" Then
                        grid.TextMatrix(rec_cnt, 5) = IIf(val(Text8) = 0, balers("net weight"), Text8)
                        Text4.Text = val(taisswt)
                    End If
                    avilbalers1.MoveNext
                    rec_cnt = rec_cnt + 1
                    If Not avilbalers1.EOF Then
                        grid.AddItem ""
                    End If
                    Command1.Enabled = True
                   
                    If rec_cnt > TOTBALES Then
                        Command7.Enabled = False
                        Exit Do
                    Else
                        Command1.Enabled = False
                        Command7.Enabled = True
                    End If
                Loop
                 Command1.SetFocus
          End If
        End If
    End If
End If
End Sub
Private Sub Text7_Click()
'Text7.SetFocus
End Sub
Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub
Private Sub Text7_KeyPress(KeyAscii As Integer)
Call tonum(Text7, 3, KeyAscii, 0)
If Opt = "add" Then
    Set balers = New Recordset
    balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N'  order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
    If balers.RecordCount > 0 Then
        Label25.Caption = balers("net weight")
    Else
        'MsgBox " This Baleno  Already issued", vbInformation, head
        'Text7.SetFocus
    End If
    'Text8.SetFocus
    If KeyAscii = 13 Then
        Text8.SetFocus
    End If
End If
End Sub

Private Sub Text7_LostFocus()
If Opt = "add" And Text7.Text <> "" Then
Text8.Locked = False
Text7.Locked = False
Set balers = New Recordset
balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "' AND STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lotdt = '" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
If balers.RecordCount > 0 Then
    Label25.Caption = balers("net weight")
Else
    'MsgBox " Invalid Bale No.", vbInformation, head
    Text7.SetFocus
    Exit Sub
End If
'Text8.SetFocus
End If
If Opt = "add" Then
Text8.Locked = False
Text7.Locked = False
Text8.SetFocus
End If
End Sub

Private Sub Text7_Validate(Cancel As Boolean)
If Opt = "add" And Text7.Text <> "" Then
Text8.Locked = False
Text7.Locked = False
Set balers = New Recordset
balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "' and STATUS IN ('AC','AW') AND lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lotdt = '" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(5).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  and isnull(rejflg,'N')='N' order by baleno ", DB, adOpenDynamic, adLockBatchOptimistic
If balers.RecordCount > 0 Then
    Label25.Caption = balers("net weight")
Else
    MsgBox "Please enter a valid Bale No.", vbInformation, head
    Text7.SetFocus
End If
'Text8.SetFocus
End If
End Sub

Private Sub Text8_KeyPress(KeyAscii As Integer)
If Opt = "add" Then
If KeyAscii = 13 Then
    If val(grddatagrid.Columns(8).Text) = val(tbno) Then
        Command7.Enabled = False
        Command1.Enabled = True
        Command1.SetFocus
    Else
        Command7.SetFocus
     End If
End If
End If
End Sub



Private Sub Text8_LostFocus()
If Opt = "add" Then
'If Text8.Text = "" Then
'MsgBox " Enter issue Kgs", vbInformation, head
'Else
If val(grddatagrid.Columns(8).Text) = val(tbno) Then
    Command7.Enabled = False
    Command1.Enabled = True
    Command1.SetFocus
Else
    If Command7.Visible = True And Command7.Enabled = True Then Command7.SetFocus
End If
End If
End Sub

Private Sub Text8_Validate(Cancel As Boolean)
If Opt = "add" Then
    grddatagrid.Enabled = False
    'Command1.Enabled = True
    Frame1.Visible = True
    Frame1.Enabled = True
    SSTab1.Tab = 1
    grid.Enabled = True
End If
End Sub

'Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
'If KeyCode = 13 Then
'Set balers = New Recordset
'      ''''
''''      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT ""Net Weight"",actisskgs ""AIssKgs"" from rm_bale where lotno='" & Trim(grddatagrid.Columns(0).Text) & "' and lottype ='" & Trim(grddatagrid.Columns(2).Text) & "' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grddatagrid.Columns(7).Text & "'  and isnull(actisskgs,0)=0   and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'      balers.Open "select baleno ""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT-isnull(actisskgs,0) ""Net Weight"",actisskgs ""AIssKgs"",issued ""Issued"" from rm_bale where lotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and arrdt = '" & Format(Trim(Text6.Text), "yyyy-mm-dd") & "' and lottype ='" & Trim(grdDataGrid.Columns(2).Text) & "' and lotdt='" & Format(grdDataGrid.Columns(1).Text, "yyyy-mm-dd") & "' and catcd='" & grdDataGrid.Columns(7).Text & "'  and (issued='N' or issued is null)  and (ltrim(rtrim(openkey))='' or openkey is null or openkey='N') and baleno='" & Text7.Text & "'  order by baleno ", db, adOpenDynamic, adLockBatchOptimistic
'
'      If balers.RecordCount > 0 Then
'
''      For I = 1 To s
'
'      DataGrid1.Columns(0).Text = balers("baleno")
'      DataGrid1.Columns(1).Text = balers("Gross weight")
'      DataGrid1.Columns(2).Text = balers("Tare weight")
'      DataGrid1.Columns(3).Locked=
'      DataGrid1.Columns(3).Text = balers("Net Weight")
'      balers.AddNew
''      Next
'      'Set DataGrid1.DataSource = balers
'      Call DataGrid1.Scroll(0, -1 * DataGrid1.ApproxCount)
'      DataGrid1.Row = 0
'      DataGrid1.Col = 4
'      DataGrid1.Enabled = True
'      DataGrid1.Enabled = True
'      DataGrid1.AllowUpdate = True
'      DataGrid1.EditActive = True
'      DataGrid1.Columns(2).Locked = True
'      DataGrid1.Columns(0).Locked = True
'      DataGrid1.Columns(1).Locked = True
'      'DataGrid1.Columns(3).Locked = False
'      DataGrid1.Columns(4).Locked = False
'      DataGrid1.Columns(4).Text = Empty
'      DataGrid1.Columns(4).Width = 1980.284
'      DataGrid1.Columns(3).Width = 1980.284
'      DataGrid1.Columns(2).Width = 1085.166
'      DataGrid1.Columns(1).Width = 1250.142
'      DataGrid1.Columns(0).Width = 1544.882
'      DataGrid1.Columns(1).Alignment = dbgRight
'      DataGrid1.Columns(2).Alignment = dbgRight
'      DataGrid1.Columns(3).Alignment = dbgRight
'      DataGrid1.Columns(4).Alignment = dbgRight
'      DataGrid1.Columns(4).NumberFormat = "######.000"
'      DataGrid1.Columns(3).NumberFormat = "######.000"
'      DataGrid1.Columns(2).NumberFormat = "######.000"
'      DataGrid1.Columns(1).NumberFormat = "######.000"
'      grdDataGrid.Enabled = False
'      Command1.Enabled = True
'      Frame1.Visible = True
'      Frame1.Enabled = True
'      'txtfields(3).SetFocus
'      SSTab1.SetFocus
'      'DataGrid1.AllowAddNew
'      Else
'      MsgBox " This Baleno  Already issued", vbInformation, head
'      Text7.SetFocus
'      End If
'Text7.Text = ""
'Text8.Text = ""
'End If
'End Sub

Private Sub Txtfields_Change(Index As Integer)
If Opt = "add" Or Opt = "" Or Opt = " " Then
   Select Case Index
     Case 2
        Set RS = New Recordset
        RS.Open "select slname from fa_slmas where slcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
        If RS.RecordCount <> 0 Then
           text2.Text = RS(0)
        End If
        RS.Close
     Case 3
        Set RS = New Recordset
        RS.Open "select oildesc from rm_oil where oilcode = '" & Txtfields(3).Text & "' ", DB, adOpenStatic
        If RS.RecordCount <> 0 Then
           Text1.Text = RS(0)
        Else
           Text1.Text = ""
        End If
        RS.Close
   End Select
End If
If Opt = "" Or Opt = " " Then
   Select Case Index
      Case 4
         Txtfields(4).Text = Format(Txtfields(4).Text, "#0.000")
      Case 5
         Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
   End Select
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Then
   Select Case Index
     Case 2
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            KslList1.Visible = True
'            KslList1.conn = connectstring
'            KslList1.listfield1width = 5500
'            KslList1.listfield1width = 3500
'
'            KslList1.table = "fa_slmas where slcode like 'C1%'"
'            KslList1.listfield1 = "slname as SupplierName,city as City"
'            KslList1.listfield2 = "slcode as SupplierCode"
'            KslList1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            KslList1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If



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
               Case 6
                    If Command7.Enabled = False Then
                        Command1.SetFocus
                    End If
                
          End Select
    End If
'------------------------------------From Lost Focus
     If Opt = "add" Then
        Select Case Index
        Case 1
                    
'        If Combo1.Text = "PR--PRODUCTION" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
'            LookUp.clear = True
'            If Combo2.Text = "D-Dying" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select cntcd,cntname from rm_count"
'            Flag = ""
'             LookUp.Caption = "Count Details"
'            LookUp.DefCol = "CNTNAME"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'                Exit Sub
'            Else
'            Exit Sub
'
'            End If
'            txtfields(13).SetFocus
'            ElseIf Combo2.Text = "M-Mixing" And txtfields(1).Text = "" Then
'            LookUp.Query = "Select product_code,long_desc1 FROM ig_product"
'            LookUp.Caption = "Count Details"
'            LookUp.DefCol = "long_desc1"
'            LookUp.ALIGN = "2500,5000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtfields(1).Text = LookUp.Fields(0)
'                Text5.Text = LookUp.Fields(1)
'                txtfields(13).SetFocus
'                LookUp.clear = True
'
'            Else
'            LookUp.clear = True
'            'lookup.
'            txtfields(1).SetFocus
'
'            End If
'            End If
'
'
'
'
'
'         Else
'         Set rs = New Recordset
'         rs.Open "select count(*) from fa_slmas", DB
'         If Not rs(0) = 0 Then
'
'            'Label15.Caption = "Party Details"
'            ksllist1.Visible = True
'            ksllist1.conn = connectstring
'            ksllist1.listfield1width = 5500
'            ksllist1.listfield1width = 3500
'
'            ksllist1.table = "fa_slmas where slcode like 'C1%'"
'            ksllist1.listfield1 = "slname as SupplierName,city as City"
'            ksllist1.listfield2 = "slcode as SupplierCode"
'            ksllist1.Caption = "Party Details"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            ksllist1.SetFocus
'            Else
'                MsgBox "No Record Found", vbInformation, head
'                Exit Sub
'            End If
'
'        End If
        
        Case 3
              If str <> "n" Then
                str = "n"
                Set RS = New Recordset
                RS.Open "select count(*) from rm_oil", DB
            If Not RS(0) = 0 Then
            Else
'                MsgBox "No record Found", vbInformation, head
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
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
If Index = 0 And Opt = "add" And KeyAscii = 13 Then
      If Combo1.Text = "P-Production" And Trim(Txtfields(0)) <> "" Then
         Txtfields(7).Text = UCase(Txtfields(7).Text)
         Set RS = New Recordset
         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
         RS.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "'", DB, adOpenStatic, adLockBatchOptimistic
         Txtfields(0).Text = RS(0)
         Call adddelmod(BUTTON)
         BUTTON(9).Enabled = False
         BUTTON(9).ToolTipText = "Add Record"
         Txtfields(0).Locked = True
         MaskEdBox1(0).Text = pdate
         Txtfields(0).SetFocus
         SSTab1.TabEnabled(1) = True
      End If
   End If

If Opt = "" Or Opt = " " Or Opt = "del" Then
   KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 1, 3
        ToUpCase Txtfields(Index), KeyAscii
   Case 4, 5
        Call tonum1(Txtfields(Index), 5, KeyAscii, 0)
   End Select
End If
End Sub
Private Sub txtFields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
   If Index = 5 Then
      Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
      Txtfields(6).SetFocus
   End If
   If Index = 13 Then
      Txtfields(5).Text = UCase(Txtfields(5).Text)
      If Left(Combo1.Text, 2) = "PR" Then
        If val(Txtfields(13).Text) = 0 Then
            Txtfields(13).SetFocus
            Exit Sub
        End If
      End If
   End If
   If Index = 4 Then
      Txtfields(4).Text = Format(Txtfields(4).Text, "#0.000")
   End If
   If Index = 6 Then
      SSTab1.Tab = 1
   End If
   If Index = 0 And Opt = "add" Then
      If Combo1.Text = "PR--PRODUCTION" And Trim(Txtfields(0)) = "" Then
         'txtFields(7).Text = UCase(txtFields(7).Text)
         Set RS = New Recordset
         'rs.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issh WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and isstype='" & Left(Combo1.Text, 1) & "' and prefix='" & txtFields(7).Text & "'", db, adOpenStatic, adLockBatchOptimistic
         RS.Open "SELECT ISNULL(MAX(docno),0)+1 FROM rm_issb WHERE  docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
         Txtfields(0).Text = RS(0)
         Call adddelmod(BUTTON)
         BUTTON(9).Enabled = False
         BUTTON(9).ToolTipText = "Add Record"
         Txtfields(0).Locked = True
         MaskEdBox1(0).Text = pdate
         Txtfields(0).SetFocus
         SSTab1.TabEnabled(1) = True
      End If
   End If
End If
StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 3
        If Trim(Txtfields(3).Text) <> "" Then
''           Set RS = New Recordset
''           RS.Open "select oilcode from rm_oil where oilcode='" & Trim(txtfields(3).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
''           If RS.RecordCount = 0 Then
''              Set RS = New Recordset
''              RS.Open "select count(*) from rm_oil", db
''              If Not RS(0) = 0 Then
''
''                 'Label15.Caption = "Oil Details"
''
''                     KslList1.Visible = True
''                 KslList1.conn = connectstring
''                 KslList1.listfield1width = 2500
''                 KslList1.listfield2width = 7500
''
''                 KslList1.table = "rm_oil"
''                 KslList1.listfield1 = "oilcode"
''                 KslList1.listfield2 = "oildesc"
''                 KslList1.Caption = "Oil Details"
''                 Frame3.Visible = True
''                 Frame3.ZOrder
''                 KslList1.SetFocus
''              Else
''                 MsgBox "No record Found"
''                 Screen.MousePointer = 0
''                 Exit Sub
''              End If
''           End If
        End If
If Index = 1 Then
    Txtfields(1).SetFocus
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
   grddatagrid.Columns(10).Locked = False
   grddatagrid.Columns(11).Locked = True
   'grdDataGrid.Columns(12).Locked = True
Else
   grddatagrid.Columns(1).Locked = True
   grddatagrid.Columns(2).Locked = True
   grddatagrid.Columns(3).Locked = True
   grddatagrid.Columns(4).Locked = True
   grddatagrid.Columns(5).Locked = True
   grddatagrid.Columns(6).Locked = True
   grddatagrid.Columns(7).Locked = True
   grddatagrid.Columns(2).Width = 1000
   grddatagrid.Columns(3).Width = 1000
   grddatagrid.Columns(4).Width = 2000
   grddatagrid.Columns(5).Width = 1000
   grddatagrid.Columns(6).Width = 1200
   grddatagrid.Columns(7).Width = 1200
   grddatagrid.Columns(8).Width = 1200
End If
End Sub

Public Sub QUERY_MODE()
If Opt = "" Or Opt = " " Or Opt = "query" Then
   Text1.Text = ""
   grddatagrid.Enabled = True
'   lblctrl.Visible = False
    Frame10.Visible = False
   Timer1.Enabled = False
   Command1.Enabled = False
   Set adoPrimaryRS = New Recordset
   If Opt <> "mod" Then
      adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,tint,ISSTO,ordno,VEHICLENO,Mixgrp,Rdivcode,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  " & _
                        "  where DIVCODE = '" & Divcode & "' and  DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,a.VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actISSkgs""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                        " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and  ISNULL(b.rejflg,'N')='N' and b.lotyear='" & Year(yfdate) & "' " & _
                        " order by docno } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
      If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MoveLast
        'Bind the text boxes,check boxes and option buttons to the data source
         Call bindcontls
'         If adoPrimaryRS("isstype") = "PR" Then
'            Combo1.Text = "PR-Production"
'         ElseIf adoPrimaryRS("isstype") = "T2" Then
'            Combo1.Text = "T2-Transfer"
'         ElseIf adoPrimaryRS("isstype") = "T3" Then
'            Combo1.Text = "T3-Transfer"
'         Else
'            Combo1.Text = "SA-Sales"
'         End If
        If adoPrimaryRS("isstype") = "BT" Then
            If IsNull(adoPrimaryRS("FORM")) = False Then
                If adoPrimaryRS("FORM") = "Form XX" Then
                    Option5.Value = True
                ElseIf adoPrimaryRS("FORM") = "Form XXVII" Then
                    Option6.Value = True
                Else
                    Option7.Value = True
                End If
            End If
        End If

         Set rsa = New Recordset
         rsa.Open "select Issue_code + ' - ' + issue_desc from rm_issuetype where issue_code='" & adoPrimaryRS("isstype") & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
                Combo1.Text = rsa(0)
         End If
         Call disablcontls
         grid.clear
         Set grdData.DataSource = Nothing
         Text3.Text = ""
         Text4.Text = ""
         Text9.Text = ""
         Text10.Text = ""
         Text11.Text = ""
         SSTab1.TabEnabled(1) = False
         Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
         Set grddatagrid.DataSource = adoSecondaryRS
         grddatagrid.Columns(0).Visible = False
         grddatagrid.Columns(1).Visible = False
         grddatagrid.Columns(2).Visible = False
         grddatagrid.Columns(3).Visible = False
         grddatagrid.Columns(4).Width = 1000
         grddatagrid.Columns(5).Width = 1300
         grddatagrid.Columns(6).Width = 1200
         grddatagrid.Columns(7).Width = 1500
         grddatagrid.Columns(8).Width = 1000
         grddatagrid.Columns(9).Width = 1200
         grddatagrid.Columns(10).Width = 1500
         grddatagrid.Columns(11).Width = 1214.929
         grddatagrid.Columns(9).NumberFormat = "#######.000"
         grddatagrid.Columns(9).Alignment = dbgRight
         grddatagrid.Columns(10).Alignment = dbgRight
         grddatagrid.Columns(11).Alignment = dbgRight
         SSTab1.Tab = 0
         Frame1.Visible = True
         Frame7.Visible = True
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
                     Set RS = New Recordset
                     RS.Open "select baleno""Baleno"",GRWT ""Gross Weight"",TAREWT""Tare Weight"",NETWT""Net Weight"" from rm_bale where varcode='" & grddatagrid.Columns(3).Text & "' AND STATUS IN ('AC','AW') AND lotno=" & RS2(4) & " and lotdt='" & Format(RS2(5), "yyyy-mm-dd") & "' and baleno=" & RS2(10) & "  and isnull(rejflg,'N')='N'", DB, adOpenStatic, adLockReadOnly
                     c = c + 1
                     rs1.AddNew
                     rs1("Baleno") = RS(0)
                     rs1("Gross Weight") = Format(RS(1), "#0.000")
                     rs1("Tare Weight") = Format(RS(2), "#0.000")
                     rs1("Net Weight") = Format(RS(3), "#0.000")
                     's = s + rs(3)
                     RS2.MoveNext
                  Loop
                  Set DataGrid1.DataSource = rs1
                  'Text3.Text = C
                  'Text4.Text = Format(s, "#0.000")
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
         'Set DataGrid1.DataSource = Nothing
         Set grddatagrid.DataSource = Nothing
         For i = 0 To 5
            Txtfields(i).Text = ""
         Next
         Combo1.Text = ""
         
      End If
   End If
End If
End Sub

Private Sub delmodok_Click()
Set RS = New Recordset
RS.Open "select a.docno,a.docdt from rm_issh a where    a.divcode='" & Divcode & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
If RS.RecordCount <> 0 Then
   
   StatusBar1.Panels(2).Text = "Select Any Document Number For Deletion"
   
         LookUp.clear = True
         LookUp.Query = "select distinct a.docno,a.docdt,lotno from rm_issh a,rm_issb b where a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt AND a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
         LookUp.Caption = "Issue Listing"
         LookUp.DefCol = "docno"
         LookUp.ALIGN = "1500,1500,1500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
             Txtfields(0).Text = LookUp.Fields(0)
             MaskEdBox1(0).Text = Format(LookUp.Fields(1), "dd/mm/yyyy")
             a = Txtfields(0).Text
             b = MaskEdBox1(0).Text
             Text1.Text = ""
             Call delmodproc(CStr(a), CStr(b))
         Else
         Opt = ""
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
   ' lblctrl.Visible = False
    Timer1.Enabled = False
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Frame3.Visible = False
    Frame1.Visible = True
         End If
'''   KslList1.Visible = True
'''   KslList1.conn = connectstring
'''
'''   KslList1.listfield1width = 2500
'''   KslList1.listfield2width = 5500
'''   KslList1.Caption = "Issue Details"
'''   Label15.Caption = "Issue Details"
'''   KslList1.table = "rm_issh"
'''   KslList1.listfield1 = "docno"
'''   KslList1.listfield2 = "docdt"
'''
'''   Frame3.Visible = True
'''   Frame3.ZOrder
'''   KslList1.SetFocus
Else
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
'If Opt = "add" Then DB.BeginTrans
End Sub

Public Sub delmodproc(a As String, b As String)
If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,tint,ISSTO,ordno,Mixgrp,Rdivcode,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({SELECT DISTINCT a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,a.VARCODE""Variety"",colorcode ""Color"",a.CATCD""Category"",a.actisskgs ""Issued Kgs"",a.baleno""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
                     " where  isnull(b.issbal,0) <> 0 and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and docno = '" & Trim(Txtfields(0).Text) & "' and DOCDT = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' order by a.lotno,a.baleno" & _
                     " } AS ChildCMD RELATE DOCNO TO DOCNO,DOCDT TO DOCDT,DIVCODE TO DIVCODE,ISSTYPE TO ISSTYPE ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   If Not adoPrimaryRS.EOF Then
      Call bindcontls
      If adoPrimaryRS("isstype") = "PR" Then
         Combo1.Text = "PR-Production"
      ElseIf adoPrimaryRS("isstype") = "T2" Then
         Combo1.Text = "T2-Transfer To unit2"
         ElseIf adoPrimaryRS("isstype") = "T3" Then
         Combo1.Text = "T3-Transfer To unit3"
      ElseIf adoPrimaryRS("isstype") = "SA" Then
         Combo1.Text = "SA-Sales"
      End If
      
        If adoPrimaryRS("ISSTO") = "M" Then
           Combo2.Text = "M-Mixing"
        ElseIf adoPrimaryRS("ISSTO") = "D" Then
           Combo2.Text = "D-Dying"
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
      Txtfields(3).Locked = False
      Txtfields(4).Locked = False
      Txtfields(6).Locked = False
'      Frame2.Visible = True
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
   adoPrimaryRS.Open "SHAPE {SELECT DIVCODE,ISSTYPE,DOCNO,DOCDT,SLCODE,OILCODE,OILWT,WTRWT,CNTCD,TINT,ISSTO,ordno,VEHICLENO,Mixgrp,Rdivcode,Driver,InvoiceNo,InvDate,TimeOut,Form FROM RM_ISSH  " & _
                     "  where DIVCODE = '" & Divcode & "' and docno='" & a & "' and  DOCDT ='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' " & _
                     " Order by A.DOCNO} AS ParentCMD APPEND ({(SELECT distinct a.DIVCODE,ISSTYPE,DOCNO,DOCDT,a.LOTNO""Lot No"",a.LOTDT""Date"",b.LotType,a.VARCODE""Variety"",a.CATCD""Category"",b.ISSwt""Issued Kgs"",b.issbal""Bale No.""  FROM RM_ISSb a,rm_lot b " & _
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
   Txtfields(3).Locked = False
   Txtfields(4).Locked = False
   Txtfields(6).Locked = False
'   Frame2.Visible = True
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
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 8
    Call MixgrpLookup
Case 1
Set RS = New Recordset
RS.Open "select isstype from rm_issuetype where issue_code='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic
If RS.RecordCount > 0 Then
    ISSTYPE = RS(0)
Else
    ISSTYPE = ""
End If
    
If ISSTYPE = "T" Then
    Set rsa = New Recordset
    rsa.Open "Select Divcode,Divname from pp_divmas where divcode ='" & Txtfields(1).Text & "' and divcode not in ('" & Divcode & "')", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Query = "Select Divcode,Divname from pp_divmas where divcode not in ('" & Divcode & "')"
        Flag = ""
         LookUp.Caption = "Division Listing"
        LookUp.DefCol = "Divname"
        LookUp.ALIGN = "2500,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            
            Txtfields(1).Text = LookUp.Fields(0)
            Text5.Text = LookUp.Fields(1)
            
           
            LookUp.clear = True
             Txtfields(7).SetFocus
            Exit Sub
        Else
        Exit Sub
            
        End If
    Else
            Txtfields(1).Text = rsa(0)
            Text5.Text = rsa(1)
    End If
End If
 If Left(Combo1.Text, 2) = "PR" Or Trim(Left(Combo1.Text, 2)) = "T2" Or Trim(Left(Combo1.Text, 2)) = "T3" Then
           
        LookUp.clear = True
        If Combo2.Text = "D-Dying" Then
            Set rsa = New Recordset
            rsa.Open "Select cntcd,cntname from rm_count where cntcd='" & Txtfields(1).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Query = "Select cntcd,cntname from rm_count"
                Flag = ""
                 LookUp.Caption = "Count Listing"
                LookUp.DefCol = "CNTNAME"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    
                    Txtfields(1).Text = LookUp.Fields(0)
                    Text5.Text = LookUp.Fields(1)
                    Txtfields(13).SetFocus
                    LookUp.clear = True
                    Exit Sub
                Else
                Exit Sub
                    
                End If
            Else
                    Txtfields(1).Text = rsa(0)
                    Text5.Text = rsa(1)
            End If
                
            Txtfields(13).SetFocus
        ElseIf Combo2.Text = "M-Mixing" Then
            Set rsd = New Recordset
            rsd.Open "select description from ig_product where product_code='" & Txtfields(1).Text & "'", DB
            If rsd.RecordCount > 0 Then
                Text5.Text = rsd(0)
            Else
            'LookUp.query = "Select Distinct Product_code,Description FROM ig_product"
            LookUp.Query = "Select Distinct CntCD As Count, CntName As Description FROM Rm_Count"
            LookUp.Caption = "Count Listing"
            LookUp.DefCol = "description"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(1).Text = LookUp.Fields(0)
                Text5.Text = LookUp.Fields(1)
                LookUp.clear = True
                Call MixgrpLookup
            Else
                LookUp.clear = True
                Txtfields(1).SetFocus
                Exit Sub
            End If
            End If
            End If
            
        End If
Case 8
         
             Set RS = New Recordset
             RS.Open "select * from fa_slmas where slcode='" & Trim(Txtfields(8).Text) & "' and slcode like 'c1%'", DB, adOpenStatic
             
             If RS.RecordCount = 0 Then
                LookUp.clear = True
                LookUp.Query = "Select Slcode as Code,slname as Name FROM fa_slmas where slcode like 'c1%'"
                LookUp.Caption = "Party Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "2500,5000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                        Txtfields(8).Text = LookUp.Fields(0)
                        Txtfields(8).Locked = False
                        Text5.Text = LookUp.Fields(1)
                        grddatagrid.Col = 0
                        LookUp.clear = True
                        grddatagrid.Enabled = True
                        grddatagrid.SetFocus
                Else
                    Txtfields(1).SetFocus
                End If
            Else
                Text5.Text = RS("slname")
            End If
Case 13
    Txtfields(13).Text = UCase(Txtfields(13).Text)
If Trim(Txtfields(3).Text) <> "" Then
   Dim os As New Recordset
   Set os = New Recordset
   os.Open "select * from rm_oil where oilcode = '" & Trim(Txtfields(3).Text) & "'", DB
   If os.RecordCount > 0 Then
      Txtfields(3).Text = os(0)
      Text1.Text = os(1)
   Else
   
      'Label15.Caption = "oil Details"
      KSLLIST1.Visible = True
      KSLLIST1.conn = connectstring
      KSLLIST1.Table = "rm_oil"
      KSLLIST1.listfield1width = 2500
      KSLLIST1.listfield2width = 7500
      KSLLIST1.listfield1 = "oilcode"
      KSLLIST1.listfield2 = "oildesc"
      KSLLIST1.Caption = "oil Details"
      Frame3.Visible = True
      Frame3.ZOrder
      KSLLIST1.SetFocus
   End If
End If
End Select
End If
End Sub



Private Sub Format_Grid()
grid.clear
grid.Rows = 2
grid.FormatString = "^Baleno       |^Gr|^Net Wght                    |^Issue Qty        |^Act Issue Kgs         |^Issued    "
End Sub

Private Sub TxtIsskgs_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    SendKeys "{tab}"
End If
End Sub

Private Sub TxtIsskgs_LostFocus()
On Error Resume Next

            DB.Execute "Delete FROM Tmp_Wt"
            'Con.Execute "INSERT INTO Tmp_Wt Select Baleno, NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where Lotno = '" & List1.Text & "' and Catcd = '" & catcode & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(lotdt, "yyyy-mm-dd") & "' order by 1"
            DB.Execute "INSERT INTO Tmp_Wt Select Baleno,Grwt,Tarewt,Netwt,NETWT-ISNULL(ActIssKgs,0) From Rm_Bale Where varcode='" & grddatagrid.Columns(3).Text & "' AND STATUS IN ('AC','AW') AND Lotno = '" & Trim(grddatagrid.Columns(0).Text) & "' and Catcd = '" & grddatagrid.Columns(5).Text & "' and ISNULL(Issued,'N') = 'N' and lotdt='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N' order by 1"
            twt = 0
            TEMP = val(TxtIsskgs.Text)
            Set balers = New Recordset
            balers.Open "Select * from Tmp_wt order by cast(baleno as decimal(5))", DB, adOpenStatic
            If RS.RecordCount > 0 Then
                RS.MoveFirst
                t1bales = 0
                While Not RS.EOF And TEMP > 0
                    If balers(4) > TEMP Then
                        t1bales = t1bales + 1
                         TEMP = TEMP - val(TxtIsskgs.Text)
                    Else
                        t1bales = t1bales + 1
                        TEMP = TEMP - balers(4)
                    End If
                    balers.MoveNext
                Wend
            End If
            
            
        Txtissbale.Text = t1bales
        Command7.SetFocus
End Sub
Public Sub gatepass(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set RS = New Recordset
    RS.Open "select distinct slname,add3,a.isstype from rm_issb a,rm_lot c,fa_slmas b where a.lotno=c.lotno and a.lotdt=c.lotdt and  c.supcd=b.slcode and c.divcode = '" & Divcode & "'   AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  docno = " & Trim(val(Txtfields(0).Text)) & "  Order by slname ", DB, adOpenStatic
    Print #a, Space(3) + Padr("DC for Gatepass List ", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    
    Print #a, Space(3) + "        Please Allow The Following Materials Through         "
    
    If RS(2) = "T3" Then
        g = "UNIT-III"
    ElseIf RS(2) = "T2" Then
        g = "UNIT-II"
    ElseIf RS(2) = "S" Then
         g = "SALES"
    End If
    Print #a, Space(14) + Padl(UCase(Txtfields(7).Text), 10, " ") + Space(1) + "For transfer to " + Space(5) + Padr(g, 10, " ")
    Print #a, Space(3) + "                                     " + Padr(RS("add3"), 40, " ") + Space(12)
    Print #a,
    Print #a, Space(3) + "S.No                  Description             Quantity             Kgs"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub pblist()
    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    pg1 = pg1 + 1
    Call gatepass(CInt(pg1))
    End If
End Sub

Public Sub hdlist(pg1 As Integer)
    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
    Print #a,
    Set RS = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
     RS.Open "select slname,add3 from fa_slmas where slcode='" & Txtfields(1).Text & "'", DB
    Print #a, Space(3) + Padr("DC for Issue List", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "Doc No         :" + Padr(Txtfields(0).Text, 10, " ") + Space(45) + "Date :" + Padr(Format(MaskEdBox1(0).Text, "dd/mm/yy"), 10, " ")
    If RS.RecordCount > 0 Then
    Print #a, Space(3) + "Supplier       :" + Padr(RS("slname"), 40, " ") + Space(12) + "Remarks :" + Padr(" ", 10, " ")
    
     Print #a, Space(3) + "                           " + Padr(RS("add3"), 40, " ") + Space(12)
     End If
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + "S.No        VarityDescription       Quntity          Kgs        values    Remarks"
    Print #a, Space(3) + String(85, "-")
End Sub

Public Sub CottRecnHeader(pg1 As Integer, Co As Integer, LDT As String)
    Print #z, Chr(18)
    Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 60, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(5) & "Issue Weight Report " + Space(16) + Space(2) + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
    'Print #z, Space(5) & Chr(27) + "E" + "Lot No./Dt. : " & LDT + Chr(27) + "F"
    Print #z, Space(5) & String(60, "-")
    Print #z, Space(5) & "   Lot No.             LotDate      Variety"
    Print #z, Space(5) & "  Bale No.   Gross Wt.  Tare Wt. Moist.Wt. Net Wt.  Actiss Kgs."
    Print #z, Space(5) & String(60, "-")
    Co = Co + 9
End Sub

Sub VisText(IType As String)
Select Case IType
Case "P"  'production
    Label9.Visible = True  'issto
    Combo2.Visible = True
    Label21.Caption = "MixLotNo"
    Txtfields(13).Visible = True  'mixing lotno
    Label21.Visible = True
    Label5.Visible = True  'mixing count
    Label5.Caption = "Mixing Count"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = True
    Label14.Visible = False 'Vehicle

    Label16.Visible = True 'mix grp label
    Txtfields(8).Visible = True 'mix grp code
    Text12.Visible = True 'mixing Grp Name
      
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    'Label32.Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    
    
    
Case "T" 'Transfer
    
    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = True  'Driver
    Label21.Visible = True  'Driver
    Label21.Caption = "Driver"
    Txtfields(9).Visible = True  'InvnO
    Label31.Visible = True  '
    
    DTPicker2.Visible = True 'Invdate
    MaskEdBox1(1).Visible = True
    'Label32.Visible = True
    Txtfields(10).Visible = True  'TimeOut
    Label33.Visible = True
    
    Option5.Visible = True
    Option6.Visible = True
    Option7.Visible = True
    
    Label5.Visible = True  'mixing count
    Label5.Caption = "Division"
    Txtfields(1).Visible = True 'code
    Text5.Visible = True  'mix desc
    Txtfields(7).Visible = True  'Vehicle
    Frame1.Visible = False
    Label14.Visible = True 'Vehicle
    
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name

    
    'Label35.Visible = False

Case "B"

    Label9.Visible = False  'issto
    Combo2.Visible = False
    Txtfields(13).Visible = False  'mixing lotno
    Label21.Visible = False
    
    Label5.Visible = False  'mixing count
    Txtfields(1).Visible = False 'code
    Text5.Visible = False  'mix desc
    Txtfields(7).Visible = False  'Vehicle
    Frame1.Visible = False
    Label14.Visible = False 'Vehicle
    'Label32.Visible = False
    Label16.Visible = False 'mix grp label
    Txtfields(8).Visible = False 'mix grp code
    Text12.Visible = False 'mixing Grp Name
    
    
    Txtfields(9).Visible = False  'InvnO
    Label31.Visible = False  '
    
    DTPicker2.Visible = False 'Invdate
    MaskEdBox1(1).Visible = False
    
    Txtfields(10).Visible = False 'TimeOut
    Label33.Visible = False
    
    Option5.Visible = False
    Option6.Visible = False
    Option7.Visible = False
    
    
    'Label35.Visible = False

End Select
End Sub

Sub Lotdisplay(varcode As String, LOTDT As String, catcd As String)
    
    baleno = 0
    issKgs = 0
    Set rslotcheck = New Recordset
    If adoSecondaryRS.RecordCount > 0 Then
           rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
           Set rslotcheck.DataSource = adoSecondaryRS
            
            rslotcheck.MoveFirst
            For i = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = grddatagrid.Columns(0).Text And rslotcheck("Date") = CDate(LOTDT) And rslotcheck(2) = catcd And rslotcheck("Variety") = varcode Then
                    baleno = baleno + 1
                    issKgs = issKgs + rslotcheck("Issued Kgs")
                End If
                rslotcheck.MoveNext
            Next
    Else
        baleno = 0
    End If
    
    If Left(Combo2.Text, 1) = "M" Or Left(Combo2.Text, 3) = "D" Then
        Set rsa = New Recordset
        rsa.Open "SELECT OPFLG FROM RM_LOT WHERE VARCODE='" & varcode & "' AND divcode='" & Divcode & "' and lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            If rsa(0) = "N" Then
                Set RS = New Recordset
                RS.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",a.netwt - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(0).Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.lotno = b.lotno and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            Else
                Set RS = New Recordset
                RS.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0)-" & baleno & ",a.netwt - isnull(isswt,0)-" & issKgs & ",a.colorcode from rm_lot A where A.VARCODE='" & varcode & "' AND a.divcode='" & Divcode & "' and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
        Else
            GoTo 10
        End If
    Else
      Set RS = New Recordset
      RS.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),a.netwt - (SELECT isnull(sum(actisskgs),0) FROM RM_issb B WHERE lotno=" & grddatagrid.Columns(0).Text & " ),a.colorcode,a.arrdt from rm_lot A,RM_BALE B where A. VARCODE='" & varcode & "' AND  STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(grddatagrid.Columns(0).Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  isnull(b.rejflg,'N')='N'", DB, adOpenStatic
    End If
    
      If RS.RecordCount = 0 Then
         Set xx = New Recordset
         xx.Open "select rejflg from rm_lot where  VARCODE='" & varcode & "' AND lotno='" & grddatagrid.Columns(0).Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
         If xx.RecordCount > 0 Then
            If xx("rejflg") = "Y" Then
               MsgBox "This Lot is Rejected. Please Select the another Lot", vbInformation, head
               Exit Sub
            Else
               GoTo 10
            End If
         End If
10:      MsgBox "The Lot was issued. Not available for the selected Count.", vbInformation, head
         On Error Resume Next
         grddatagrid.Columns(0).Text = ""
         grddatagrid.Col = 0
         grddatagrid.SetFocus
''      ElseIf RS.RecordCount > 1 Then
''         Set DataGrid2.DataSource = RS
''  '       SSTab1.Visible = False
''
'''         Frame2.Visible = True
''         'Frame2.ZOrder
'''         Command4.Enabled = True
'' '        Command4.SetFocus
      Else
         xx1 = 0
         Set ry = New Recordset
         ry.Open "select * from rm_bale where  VARCODE='" & varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & grddatagrid.Columns(0).Text & "'  and lotdt='" & Format(RS("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
         If ry.EOF = False Then
            Text6.Text = IIf(IsNull(ry("ARRDT")), " ", ry("arrdt"))
         End If
         Do While Not ry.EOF
            xx1 = xx1 + 1
            ry.MoveNext
         Loop
            
         'Text6.Text = ry("ARRDT")
         grddatagrid.Columns(1).Text = RS(0)
         grddatagrid.Columns(2).Text = RS(1)
         grddatagrid.Columns(3).Text = RS(2)
         Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & RS(2) & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grddatagrid.Columns(4).Value = Namers(0)
         End If
         Set Namers = New Recordset
         Namers.Open "Select colorname from rm_color where colorcode='" & RS("colorcode") & "'", DB, adOpenStatic
         If Not Namers.EOF Then
            grddatagrid.Columns(6).Value = Namers(0)
         End If
         'grdDataGrid.Columns(5).Value = IIf(IsNull(rs("colorcode")), "  ", rs("colorcode"))
         'grdDataGrid.Columns(5).Value = IIf((rs("colorcode") = "Null"), Null, rs("colorcode"))
         grddatagrid.Columns(5).Value = RS(3)
         'grddatagrid.Columns(6).Value = Rs(4)
         grddatagrid.Columns(6).Value = xx1 - baleno
         grddatagrid.Columns(7).Value = RS(5)
         grddatagrid.Col = 8
         grddatagrid.SetFocus
         flg = ""
      End If

End Sub
Sub Vardispaly(LOTNO As Double)

''    Set rsclotcheck = New Recordset
''    rslotccheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
''
''    Set rslotccheck.DataSource = adoSecondaryRS
    templot = grddatagrid.Columns(0).Text
''    cntl = 0
''    If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
''    For i = 1 To updSECONDARYRS.RecordCount - 1
''        If updSECONDARYRS(0) = val(templot) Then
''            cntl = cntl + 1
''        End If
''        updSECONDARYRS.MoveNext
''    Next
''    tmpordno = ""
''    If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
''    For i = 1 To updSECONDARYRS.RecordCount - 1
''        If updSECONDARYRS(0) = val(templot) Then
''            If cntl = 1 Then
''                 tmpordno = "'" + grddatagrid.Columns(3).Text + "'"
''            Else
''                If tmpordno = "" Then
''                    tmpordno = "'" & grddatagrid.Columns(3).Text & "'"
''                Else
''                    tmpordno = tmpordno + ",'" + grddatagrid.Columns(3).Text + "'"
''                End If
''            End If
''
''        End If
''        updSECONDARYRS.MoveNext
''    Next

'    If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveLast
'    If grddatagrid.row = 0 Then
'         tmpordno = "'" + grddatagrid.Columns(4).Text + "'"
'    Else
'         tmpordno = tmpordno + ",'" + grddatagrid.Columns(4).Text + "'"
'    End If
    Set rsa = New Recordset
''If tmpordno <> "" Then
''    If Left(Combo1.Text, 2) = "BP" Then
''        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date from rm_lot a,rm_var b ,RM_BALE C where bblflg<>'B' and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & lotno & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
''    ElseIf Left(Combo1.Text, 2) = "PR" Then
''        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date from rm_lot a,rm_var b ,RM_BALE C where  bblflg='B' and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & lotno & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
''    Else
''        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date from rm_lot a,rm_var b ,RM_BALE C where a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & lotno & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
''    End If
''Else
    If Left(Combo1.Text, 2) = "BP" Then
        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date,a.catcd AS Category  from rm_lot a,rm_var b ,RM_BALE C where bblflg<>'B' and a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
    ElseIf Left(Combo1.Text, 2) = "PR" Then
        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date,a.catcd AS Category  from rm_lot a,rm_var b ,RM_BALE C where a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
    Else
        rsa.Open "select DISTINCT A.varcode,varname,a.Lotdt as Date,a.catcd AS Category  from rm_lot a,rm_var b ,RM_BALE C where a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
    End If
''End If

If rsa.RecordCount > 1 Then
    LookUp.clear = True
    If tmpordno <> "" Then
         If Left(Combo1.Text, 2) = "BP" Then
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd AS Category,slname as SupplierName from rm_lot a,rm_var b ,RM_BALE C,fa_slmas d where a.supcd=d.slcode and bblflg<>'B' and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        ElseIf Left(Combo1.Text, 2) = "PR" Then
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd AS Category,slname as SupplierName from rm_lot a,rm_var b ,RM_BALE C ,fa_slmas d where a.supcd=d.slcode and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        Else
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd AS Category,slname as SupplierName   from rm_lot a,rm_var b ,RM_BALE C ,fa_slmas d where  a.supcd=d.slcode and a.lotno='" & grddatagrid.Columns(0).Text & "' and a.varcode not in (" & tmpordno & ") and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        End If
    Else
        If Left(Combo1.Text, 2) = "BP" Then
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd AS Category,slname as SupplierName  from rm_lot a,rm_var b ,RM_BALE C ,fa_slmas d where  a.supcd=d.slcode and bblflg<>'B' and  a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        ElseIf Left(Combo1.Text, 2) = "PR" Then
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd as category,slname as SupplierName from rm_lot a,rm_var b ,RM_BALE C ,fa_slmas d where  a.supcd=d.slcode and  a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        Else
            LookUp.Query = "select DISTINCT A.varcode as VarietyCode,varname as VarietyName,a.Lotdt as Date,a.catcd as category,slname as SupplierName from rm_lot a,rm_var b ,RM_BALE C ,fa_slmas d where  a.supcd=d.slcode and a.lotno='" & grddatagrid.Columns(0).Text & "'  and STATUS IN ('AC','AW') AND A.LOTNO=C.LOTNO AND A.LOTDT=C.LOTDT AND A.VARCODE=C.VARCODE AND A.DIVCODE=C.DIVCODE AND ISNULL(ISSUED,'N')='N' AND ISNULL(C.REJFLG,'N')='N' AND A.LOTNO='" & LOTNO & "' AND a.varcode=b.varcode and lotyear='" & Year(yfdate) & "'"
        End If
    End If
    LookUp.Caption = "Variety Listing"
    LookUp.DefCol = "VarietyName"
    LookUp.ALIGN = "1,2000,1000,800,3500"
    
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
            templot = grddatagrid.Columns(0).Text
             TEMPVAR = LookUp.Fields(0) 'VARIETY
     
''            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
''            For i = 1 To updSECONDARYRS.RecordCount - 1
''
''                 If updSECONDARYRS(0) = val(templot) And updSECONDARYRS("VARIETY") = TEMPVAR Then
''                     MsgBox "The Lot No. " & templot & " already entered  ", vbInformation, head
''                     updSECONDARYRS.MoveLast
''                     grddatagrid.Col = 0
''                     grddatagrid.SetFocus
''                     Exit Sub
''                 End If
''                 updSECONDARYRS.MoveNext
''            Next
''            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveLast
            Call Lotdisplay(CStr(LookUp.Fields(0)), CStr(LookUp.Fields(2)), LookUp.Fields(3))
            LookUp.clear = True
    Else
        LookUp.clear = True
    End If
            ElseIf rsa.RecordCount = 1 Then
             templot = grddatagrid.Columns(0).Text
             TEMPVAR = rsa("varcode") 'VARIETY
            
''            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveFirst
''            For i = 1 To updSECONDARYRS.RecordCount - 1
''
''                 If updSECONDARYRS(0) = val(templot) And updSECONDARYRS("VARIETY") = TEMPVAR Then
''                     MsgBox "The Lot No. " & templot & " already entered  ", vbInformation, head
''                     updSECONDARYRS.MoveLast
''                     grddatagrid.Col = 0
''                     grddatagrid.SetFocus
''                     Exit Sub
''                 End If
''                 updSECONDARYRS.MoveNext
''            Next
''            If updSECONDARYRS.RecordCount > 0 Then updSECONDARYRS.MoveLast
            Call Lotdisplay(CStr(rsa(0)), CStr(rsa(2)), CStr(rsa(3)))
            ''Call Lotdisplay(CStr(rsa("varcode")))
Else
     MsgBox "The Lot was issued. Not available for the selected Count.", vbInformation, head
    grddatagrid.Col = 0
    grddatagrid.SetFocus
End If

End Sub
Sub MixgrpLookup()
Set rsd = New Recordset
rsd.Open "select Mixgrpname from rm_mixgrp where mixgrpcd='" & Txtfields(8).Text & "'", DB
If rsd.RecordCount > 0 Then
    text2.Text = rsd(0)
Else
LookUp.Query = "Select Distinct MixgrpCd,MixGrpName FROM rm_mixgrp"
LookUp.Caption = "Mixing Group Listing"
LookUp.DefCol = "MixGrpName"
LookUp.ALIGN = "2500,5000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    Txtfields(8).Text = LookUp.Fields(0)
    Text12.Text = LookUp.Fields(1)
    Txtfields(13).SetFocus
    LookUp.clear = True
    Exit Sub
Else
    LookUp.clear = True
    Txtfields(8).SetFocus
    Exit Sub
End If
End If
End Sub
Private Sub ubgridalign()
    If Opt = "add" Or Opt = "mod" Then
        grid.ColAllowEdit(5) = True
        grid.ColAllowEdit(6) = True
    End If
End Sub
Private Sub clears()
    Txtfields(1).Text = ""
    Txtfields(8).Text = ""
    Txtfields(13).Text = ""
    Text5.Text = ""
    Text12.Text = ""
    Txtfields(7).Text = ""
    Txtfields(10).Text = ""
    Txtfields(9).Text = ""
   '' MaskEdBox1(1).Text = "__/__/____"
    Option5.Value = False
    Option6.Value = False
    Option7.Value = True
End Sub
